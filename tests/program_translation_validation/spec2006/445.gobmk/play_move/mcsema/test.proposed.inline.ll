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
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb38cb0_type = type <{ [4 x i8] }>
%G_0xb4bce0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
%G_0xb8af18_type = type <{ [4 x i8] }>
%G_0xb8af20_type = type <{ [4 x i8] }>
%G_0xb8b85c_type = type <{ [4 x i8] }>
%G_0xb8c040_type = type <{ [4 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a466_type = type <{ [8 x i8] }>
%G__0x57a487_type = type <{ [8 x i8] }>
%G__0x57a4aa_type = type <{ [8 x i8] }>
%G__0xb06700_type = type <{ [8 x i8] }>
%G__0xb89e60_type = type <{ [8 x i8] }>
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
@G_0xafdfb0 = global %G_0xafdfb0_type zeroinitializer
@G_0xb38cb0 = global %G_0xb38cb0_type zeroinitializer
@G_0xb4bce0 = global %G_0xb4bce0_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xb6eec4 = global %G_0xb6eec4_type zeroinitializer
@G_0xb8af18 = global %G_0xb8af18_type zeroinitializer
@G_0xb8af20 = global %G_0xb8af20_type zeroinitializer
@G_0xb8b85c = global %G_0xb8b85c_type zeroinitializer
@G_0xb8c040 = global %G_0xb8c040_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a466 = global %G__0x57a466_type zeroinitializer
@G__0x57a487 = global %G__0x57a487_type zeroinitializer
@G__0x57a4aa = global %G__0x57a4aa_type zeroinitializer
@G__0xb06700 = global %G__0xb06700_type zeroinitializer
@G__0xb89e60 = global %G__0xb89e60_type zeroinitializer

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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40e720.replay_move_history(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40e7c0.play_move_no_history(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @play_move(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_40e310 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40e310, %struct.Memory** %MEMORY
  %loadMem_40e311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i51 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i51
  %27 = load i64, i64* %PC.i50
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i50
  store i64 %26, i64* %RBP.i52, align 8
  store %struct.Memory* %loadMem_40e311, %struct.Memory** %MEMORY
  %loadMem_40e314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i141 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i141
  %36 = load i64, i64* %PC.i140
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i140
  %38 = sub i64 %35, 560
  store i64 %38, i64* %RSP.i141, align 8
  %39 = icmp ult i64 %35, 560
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
  %49 = xor i64 560, %35
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
  store %struct.Memory* %loadMem_40e314, %struct.Memory** %MEMORY
  %loadMem_40e31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i157
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i156
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i156
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_40e31b, %struct.Memory** %MEMORY
  %loadMem_40e31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i207
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i206
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i206
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_40e31e, %struct.Memory** %MEMORY
  %loadMem_40e321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %PC.i223
  %103 = add i64 %102, 8
  store i64 %103, i64* %PC.i223
  %104 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %105, align 1
  %106 = and i32 %104, 255
  %107 = call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %110, i8* %111, align 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %112, align 1
  %113 = icmp eq i32 %104, 0
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %114, i8* %115, align 1
  %116 = lshr i32 %104, 31
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %117, i8* %118, align 1
  %119 = lshr i32 %104, 31
  %120 = xor i32 %116, %119
  %121 = add i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %123, i8* %124, align 1
  store %struct.Memory* %loadMem_40e321, %struct.Memory** %MEMORY
  %loadMem_40e329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 33
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %PC.i282
  %129 = add i64 %128, 11
  %130 = load i64, i64* %PC.i282
  %131 = add i64 %130, 6
  %132 = load i64, i64* %PC.i282
  %133 = add i64 %132, 6
  store i64 %133, i64* %PC.i282
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %135 = load i8, i8* %134, align 1
  %136 = icmp eq i8 %135, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %BRANCH_TAKEN, align 1
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %139 = select i1 %136, i64 %129, i64 %131
  store i64 %139, i64* %138, align 8
  store %struct.Memory* %loadMem_40e329, %struct.Memory** %MEMORY
  %loadBr_40e329 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e329 = icmp eq i8 %loadBr_40e329, 1
  br i1 %cmpBr_40e329, label %block_.L_40e334, label %block_40e32f

block_40e32f:                                     ; preds = %entry
  %loadMem_40e32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %PC.i298
  %144 = add i64 %143, 118
  %145 = load i64, i64* %PC.i298
  %146 = add i64 %145, 5
  store i64 %146, i64* %PC.i298
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  store %struct.Memory* %loadMem_40e32f, %struct.Memory** %MEMORY
  br label %block_.L_40e3a5

block_.L_40e334:                                  ; preds = %entry
  %loadMem_40e334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RDI.i361 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %PC.i360
  %155 = add i64 %154, 10
  store i64 %155, i64* %PC.i360
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i361, align 8
  store %struct.Memory* %loadMem_40e334, %struct.Memory** %MEMORY
  %loadMem_40e33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %PC.i377
  %163 = add i64 %162, 5
  store i64 %163, i64* %PC.i377
  store i64 924, i64* %RSI.i378, align 8
  store %struct.Memory* %loadMem_40e33e, %struct.Memory** %MEMORY
  %loadMem_40e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %PC.i431
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC.i431
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i432, align 8
  store %struct.Memory* %loadMem_40e343, %struct.Memory** %MEMORY
  %loadMem_40e34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %PC.i448
  %179 = add i64 %178, 5
  store i64 %179, i64* %PC.i448
  store i64 20, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_40e34d, %struct.Memory** %MEMORY
  %loadMem_40e352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i465
  %190 = sub i64 %189, 4
  %191 = load i64, i64* %PC.i463
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC.i463
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RCX.i464, align 8
  store %struct.Memory* %loadMem_40e352, %struct.Memory** %MEMORY
  %loadMem_40e355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %EAX.i461 = bitcast %union.anon* %201 to i32*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i462
  %206 = sub i64 %205, 464
  %207 = load i32, i32* %EAX.i461
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC.i460
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC.i460
  %211 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %211
  store %struct.Memory* %loadMem_40e355, %struct.Memory** %MEMORY
  %loadMem_40e35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %ECX.i458 = bitcast %union.anon* %217 to i32*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %220 to i64*
  %221 = load i32, i32* %ECX.i458
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %PC.i457
  %224 = add i64 %223, 2
  store i64 %224, i64* %PC.i457
  %225 = and i64 %222, 4294967295
  store i64 %225, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_40e35b, %struct.Memory** %MEMORY
  %loadMem_40e35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RDX.i455 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i456
  %236 = sub i64 %235, 472
  %237 = load i64, i64* %RDX.i455
  %238 = load i64, i64* %PC.i454
  %239 = add i64 %238, 7
  store i64 %239, i64* %PC.i454
  %240 = inttoptr i64 %236 to i64*
  store i64 %237, i64* %240
  store %struct.Memory* %loadMem_40e35d, %struct.Memory** %MEMORY
  %loadMem_40e364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %PC.i453
  %245 = add i64 %244, 1
  store i64 %245, i64* %PC.i453
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %248 = bitcast %union.anon* %247 to i32*
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = lshr i64 %250, 32
  store i64 %251, i64* %246, align 8
  store %struct.Memory* %loadMem_40e364, %struct.Memory** %MEMORY
  %loadMem_40e365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i452
  %262 = sub i64 %261, 464
  %263 = load i64, i64* %PC.i450
  %264 = add i64 %263, 6
  store i64 %264, i64* %PC.i450
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_40e365, %struct.Memory** %MEMORY
  %loadMem_40e36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %ECX.i446 = bitcast %union.anon* %273 to i32*
  %274 = load i32, i32* %ECX.i446
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC.i445
  %277 = add i64 %276, 2
  store i64 %277, i64* %PC.i445
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %279 = bitcast %union.anon* %278 to i32*
  %280 = load i32, i32* %279, align 8
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %283 = bitcast %union.anon* %282 to i32*
  %284 = load i32, i32* %283, align 8
  %285 = zext i32 %284 to i64
  %286 = shl i64 %275, 32
  %287 = ashr exact i64 %286, 32
  %288 = shl i64 %285, 32
  %289 = or i64 %288, %281
  %290 = sdiv i64 %289, %287
  %291 = shl i64 %290, 32
  %292 = ashr exact i64 %291, 32
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %298, label %294

; <label>:294:                                    ; preds = %block_.L_40e334
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %296, %struct.Memory* %loadMem_40e36b)
  br label %routine_idivl__ecx.exit447

; <label>:298:                                    ; preds = %block_.L_40e334
  %299 = srem i64 %289, %287
  %300 = getelementptr inbounds %union.anon, %union.anon* %278, i64 0, i32 0
  %301 = and i64 %290, 4294967295
  store i64 %301, i64* %300, align 8
  %302 = getelementptr inbounds %union.anon, %union.anon* %282, i64 0, i32 0
  %303 = and i64 %299, 4294967295
  store i64 %303, i64* %302, align 8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %304, align 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %305, align 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %306, align 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %307, align 1
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %308, align 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %309, align 1
  br label %routine_idivl__ecx.exit447

routine_idivl__ecx.exit447:                       ; preds = %294, %298
  %310 = phi %struct.Memory* [ %297, %294 ], [ %loadMem_40e36b, %298 ]
  store %struct.Memory* %310, %struct.Memory** %MEMORY
  %loadMem_40e36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %RAX.i444
  %318 = load i64, i64* %PC.i443
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i443
  %320 = trunc i64 %317 to i32
  %321 = sub i32 %320, 1
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX.i444, align 8
  %323 = icmp ult i32 %320, 1
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %324, i8* %325, align 1
  %326 = and i32 %321, 255
  %327 = call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %330, i8* %331, align 1
  %332 = xor i64 1, %317
  %333 = trunc i64 %332 to i32
  %334 = xor i32 %333, %321
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %337, i8* %338, align 1
  %339 = icmp eq i32 %321, 0
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %340, i8* %341, align 1
  %342 = lshr i32 %321, 31
  %343 = trunc i32 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %343, i8* %344, align 1
  %345 = lshr i32 %320, 31
  %346 = xor i32 %342, %345
  %347 = add i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %349, i8* %350, align 1
  store %struct.Memory* %loadMem_40e36d, %struct.Memory** %MEMORY
  %loadMem_40e370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 17
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %R8D.i441 = bitcast %union.anon* %356 to i32*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 15
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %359 to i64*
  %360 = bitcast i32* %R8D.i441 to i64*
  %361 = load i64, i64* %RBP.i442
  %362 = sub i64 %361, 4
  %363 = load i64, i64* %PC.i440
  %364 = add i64 %363, 4
  store i64 %364, i64* %PC.i440
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %360, align 8
  store %struct.Memory* %loadMem_40e370, %struct.Memory** %MEMORY
  %loadMem_40e374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %EAX.i438 = bitcast %union.anon* %373 to i32*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i439
  %378 = sub i64 %377, 476
  %379 = load i32, i32* %EAX.i438
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %PC.i437
  %382 = add i64 %381, 6
  store i64 %382, i64* %PC.i437
  %383 = inttoptr i64 %378 to i32*
  store i32 %379, i32* %383
  store %struct.Memory* %loadMem_40e374, %struct.Memory** %MEMORY
  %loadMem_40e37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 17
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %R8D.i435 = bitcast %union.anon* %389 to i32*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %392 to i64*
  %393 = load i32, i32* %R8D.i435
  %394 = zext i32 %393 to i64
  %395 = load i64, i64* %PC.i434
  %396 = add i64 %395, 3
  store i64 %396, i64* %PC.i434
  %397 = and i64 %394, 4294967295
  store i64 %397, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_40e37a, %struct.Memory** %MEMORY
  %loadMem_40e37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %400 to i64*
  %401 = load i64, i64* %PC.i433
  %402 = add i64 %401, 1
  store i64 %402, i64* %PC.i433
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %405 = bitcast %union.anon* %404 to i32*
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = lshr i64 %407, 32
  store i64 %408, i64* %403, align 8
  store %struct.Memory* %loadMem_40e37d, %struct.Memory** %MEMORY
  %loadMem_40e37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %ECX.i429 = bitcast %union.anon* %414 to i32*
  %415 = load i32, i32* %ECX.i429
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %PC.i428
  %418 = add i64 %417, 2
  store i64 %418, i64* %PC.i428
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %420 = bitcast %union.anon* %419 to i32*
  %421 = load i32, i32* %420, align 8
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %424 = bitcast %union.anon* %423 to i32*
  %425 = load i32, i32* %424, align 8
  %426 = zext i32 %425 to i64
  %427 = shl i64 %416, 32
  %428 = ashr exact i64 %427, 32
  %429 = shl i64 %426, 32
  %430 = or i64 %429, %422
  %431 = sdiv i64 %430, %428
  %432 = shl i64 %431, 32
  %433 = ashr exact i64 %432, 32
  %434 = icmp eq i64 %431, %433
  br i1 %434, label %439, label %435

; <label>:435:                                    ; preds = %routine_idivl__ecx.exit447
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %437, %struct.Memory* %loadMem_40e37e)
  br label %routine_idivl__ecx.exit430

; <label>:439:                                    ; preds = %routine_idivl__ecx.exit447
  %440 = srem i64 %430, %428
  %441 = getelementptr inbounds %union.anon, %union.anon* %419, i64 0, i32 0
  %442 = and i64 %431, 4294967295
  store i64 %442, i64* %441, align 8
  %443 = getelementptr inbounds %union.anon, %union.anon* %423, i64 0, i32 0
  %444 = and i64 %440, 4294967295
  store i64 %444, i64* %443, align 8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %445, align 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %446, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %447, align 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %448, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %449, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %450, align 1
  br label %routine_idivl__ecx.exit430

routine_idivl__ecx.exit430:                       ; preds = %435, %439
  %451 = phi %struct.Memory* [ %438, %435 ], [ %loadMem_40e37e, %439 ]
  store %struct.Memory* %451, %struct.Memory** %MEMORY
  %loadMem_40e380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 7
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RDX.i427
  %459 = load i64, i64* %PC.i426
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i426
  %461 = trunc i64 %458 to i32
  %462 = sub i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RDX.i427, align 8
  %464 = icmp ult i32 %461, 1
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %465, i8* %466, align 1
  %467 = and i32 %462, 255
  %468 = call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %471, i8* %472, align 1
  %473 = xor i64 1, %458
  %474 = trunc i64 %473 to i32
  %475 = xor i32 %474, %462
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %478, i8* %479, align 1
  %480 = icmp eq i32 %462, 0
  %481 = zext i1 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %481, i8* %482, align 1
  %483 = lshr i32 %462, 31
  %484 = trunc i32 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %484, i8* %485, align 1
  %486 = lshr i32 %461, 31
  %487 = xor i32 %483, %486
  %488 = add i32 %487, %486
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %490, i8* %491, align 1
  store %struct.Memory* %loadMem_40e380, %struct.Memory** %MEMORY
  %loadMem_40e383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 15
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 19
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %R9.i425 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i424
  %502 = sub i64 %501, 472
  %503 = load i64, i64* %PC.i423
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC.i423
  %505 = inttoptr i64 %502 to i64*
  %506 = load i64, i64* %505
  store i64 %506, i64* %R9.i425, align 8
  store %struct.Memory* %loadMem_40e383, %struct.Memory** %MEMORY
  %loadMem_40e38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 7
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %EDX.i421 = bitcast %union.anon* %512 to i32*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RBP.i422
  %517 = sub i64 %516, 480
  %518 = load i32, i32* %EDX.i421
  %519 = zext i32 %518 to i64
  %520 = load i64, i64* %PC.i420
  %521 = add i64 %520, 6
  store i64 %521, i64* %PC.i420
  %522 = inttoptr i64 %517 to i32*
  store i32 %518, i32* %522
  store %struct.Memory* %loadMem_40e38a, %struct.Memory** %MEMORY
  %loadMem_40e390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 7
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RDX.i418 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 19
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %R9.i419 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %R9.i419
  %533 = load i64, i64* %PC.i417
  %534 = add i64 %533, 3
  store i64 %534, i64* %PC.i417
  store i64 %532, i64* %RDX.i418, align 8
  store %struct.Memory* %loadMem_40e390, %struct.Memory** %MEMORY
  %loadMem_40e393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 15
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RBP.i416
  %545 = sub i64 %544, 476
  %546 = load i64, i64* %PC.i414
  %547 = add i64 %546, 6
  store i64 %547, i64* %PC.i414
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_40e393, %struct.Memory** %MEMORY
  %loadMem_40e399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 17
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %R8D.i412 = bitcast %union.anon* %556 to i32*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 15
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %559 to i64*
  %560 = bitcast i32* %R8D.i412 to i64*
  %561 = load i64, i64* %RBP.i413
  %562 = sub i64 %561, 480
  %563 = load i64, i64* %PC.i411
  %564 = add i64 %563, 7
  store i64 %564, i64* %PC.i411
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %560, align 8
  store %struct.Memory* %loadMem_40e399, %struct.Memory** %MEMORY
  %loadMem1_40e3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %PC.i410
  %572 = add i64 %571, 277744
  %573 = load i64, i64* %PC.i410
  %574 = add i64 %573, 5
  %575 = load i64, i64* %PC.i410
  %576 = add i64 %575, 5
  store i64 %576, i64* %PC.i410
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = add i64 %578, -8
  %580 = inttoptr i64 %579 to i64*
  store i64 %574, i64* %580
  store i64 %579, i64* %577, align 8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %572, i64* %581, align 8
  store %struct.Memory* %loadMem1_40e3a0, %struct.Memory** %MEMORY
  %loadMem2_40e3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e3a0 = load i64, i64* %3
  %call2_40e3a0 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40e3a0, %struct.Memory* %loadMem2_40e3a0)
  store %struct.Memory* %call2_40e3a0, %struct.Memory** %MEMORY
  br label %block_.L_40e3a5

block_.L_40e3a5:                                  ; preds = %routine_idivl__ecx.exit430, %block_40e32f
  %loadMem_40e3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 15
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %587 to i64*
  %588 = load i64, i64* %RBP.i409
  %589 = sub i64 %588, 8
  %590 = load i64, i64* %PC.i408
  %591 = add i64 %590, 4
  store i64 %591, i64* %PC.i408
  %592 = inttoptr i64 %589 to i32*
  %593 = load i32, i32* %592
  %594 = sub i32 %593, 1
  %595 = icmp ult i32 %593, 1
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %596, i8* %597, align 1
  %598 = and i32 %594, 255
  %599 = call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %602, i8* %603, align 1
  %604 = xor i32 %593, 1
  %605 = xor i32 %604, %594
  %606 = lshr i32 %605, 4
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %608, i8* %609, align 1
  %610 = icmp eq i32 %594, 0
  %611 = zext i1 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %611, i8* %612, align 1
  %613 = lshr i32 %594, 31
  %614 = trunc i32 %613 to i8
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %614, i8* %615, align 1
  %616 = lshr i32 %593, 31
  %617 = xor i32 %613, %616
  %618 = add i32 %617, %616
  %619 = icmp eq i32 %618, 2
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %620, i8* %621, align 1
  store %struct.Memory* %loadMem_40e3a5, %struct.Memory** %MEMORY
  %loadMem_40e3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %PC.i407
  %626 = add i64 %625, 16
  %627 = load i64, i64* %PC.i407
  %628 = add i64 %627, 6
  %629 = load i64, i64* %PC.i407
  %630 = add i64 %629, 6
  store i64 %630, i64* %PC.i407
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %632 = load i8, i8* %631, align 1
  store i8 %632, i8* %BRANCH_TAKEN, align 1
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %634 = icmp ne i8 %632, 0
  %635 = select i1 %634, i64 %626, i64 %628
  store i64 %635, i64* %633, align 8
  store %struct.Memory* %loadMem_40e3a9, %struct.Memory** %MEMORY
  %loadBr_40e3a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e3a9 = icmp eq i8 %loadBr_40e3a9, 1
  br i1 %cmpBr_40e3a9, label %block_.L_40e3b9, label %block_40e3af

block_40e3af:                                     ; preds = %block_.L_40e3a5
  %loadMem_40e3af = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i406
  %643 = sub i64 %642, 8
  %644 = load i64, i64* %PC.i405
  %645 = add i64 %644, 4
  store i64 %645, i64* %PC.i405
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = sub i32 %647, 2
  %649 = icmp ult i32 %647, 2
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %650, i8* %651, align 1
  %652 = and i32 %648, 255
  %653 = call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %656, i8* %657, align 1
  %658 = xor i32 %647, 2
  %659 = xor i32 %658, %648
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %662, i8* %663, align 1
  %664 = icmp eq i32 %648, 0
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %665, i8* %666, align 1
  %667 = lshr i32 %648, 31
  %668 = trunc i32 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %668, i8* %669, align 1
  %670 = lshr i32 %647, 31
  %671 = xor i32 %667, %670
  %672 = add i32 %671, %670
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %674, i8* %675, align 1
  store %struct.Memory* %loadMem_40e3af, %struct.Memory** %MEMORY
  %loadMem_40e3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %PC.i404
  %680 = add i64 %679, 11
  %681 = load i64, i64* %PC.i404
  %682 = add i64 %681, 6
  %683 = load i64, i64* %PC.i404
  %684 = add i64 %683, 6
  store i64 %684, i64* %PC.i404
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %686 = load i8, i8* %685, align 1
  %687 = icmp eq i8 %686, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %BRANCH_TAKEN, align 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %690 = select i1 %687, i64 %680, i64 %682
  store i64 %690, i64* %689, align 8
  store %struct.Memory* %loadMem_40e3b3, %struct.Memory** %MEMORY
  %loadBr_40e3b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e3b3 = icmp eq i8 %loadBr_40e3b3, 1
  br i1 %cmpBr_40e3b3, label %block_.L_40e3be, label %block_.L_40e3b9

block_.L_40e3b9:                                  ; preds = %block_40e3af, %block_.L_40e3a5
  %loadMem_40e3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %PC.i403
  %695 = add i64 %694, 118
  %696 = load i64, i64* %PC.i403
  %697 = add i64 %696, 5
  store i64 %697, i64* %PC.i403
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %695, i64* %698, align 8
  store %struct.Memory* %loadMem_40e3b9, %struct.Memory** %MEMORY
  br label %block_.L_40e42f

block_.L_40e3be:                                  ; preds = %block_40e3af
  %loadMem_40e3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 11
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RDI.i402 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %PC.i401
  %706 = add i64 %705, 10
  store i64 %706, i64* %PC.i401
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i402, align 8
  store %struct.Memory* %loadMem_40e3be, %struct.Memory** %MEMORY
  %loadMem_40e3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 9
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RSI.i400 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %PC.i399
  %714 = add i64 %713, 5
  store i64 %714, i64* %PC.i399
  store i64 925, i64* %RSI.i400, align 8
  store %struct.Memory* %loadMem_40e3c8, %struct.Memory** %MEMORY
  %loadMem_40e3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 7
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %PC.i397
  %722 = add i64 %721, 10
  store i64 %722, i64* %PC.i397
  store i64 ptrtoint (%G__0x57a466_type* @G__0x57a466 to i64), i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_40e3cd, %struct.Memory** %MEMORY
  %loadMem_40e3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 1
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %PC.i395
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC.i395
  store i64 20, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_40e3d7, %struct.Memory** %MEMORY
  %loadMem_40e3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 5
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 15
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RBP.i394
  %741 = sub i64 %740, 4
  %742 = load i64, i64* %PC.i392
  %743 = add i64 %742, 3
  store i64 %743, i64* %PC.i392
  %744 = inttoptr i64 %741 to i32*
  %745 = load i32, i32* %744
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_40e3dc, %struct.Memory** %MEMORY
  %loadMem_40e3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 33
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 1
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %752 to i32*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 15
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %RBP.i391
  %757 = sub i64 %756, 484
  %758 = load i32, i32* %EAX.i390
  %759 = zext i32 %758 to i64
  %760 = load i64, i64* %PC.i389
  %761 = add i64 %760, 6
  store i64 %761, i64* %PC.i389
  %762 = inttoptr i64 %757 to i32*
  store i32 %758, i32* %762
  store %struct.Memory* %loadMem_40e3df, %struct.Memory** %MEMORY
  %loadMem_40e3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 5
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %ECX.i387 = bitcast %union.anon* %768 to i32*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %771 to i64*
  %772 = load i32, i32* %ECX.i387
  %773 = zext i32 %772 to i64
  %774 = load i64, i64* %PC.i386
  %775 = add i64 %774, 2
  store i64 %775, i64* %PC.i386
  %776 = and i64 %773, 4294967295
  store i64 %776, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_40e3e5, %struct.Memory** %MEMORY
  %loadMem_40e3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 7
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 15
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %RBP.i385
  %787 = sub i64 %786, 496
  %788 = load i64, i64* %RDX.i384
  %789 = load i64, i64* %PC.i383
  %790 = add i64 %789, 7
  store i64 %790, i64* %PC.i383
  %791 = inttoptr i64 %787 to i64*
  store i64 %788, i64* %791
  store %struct.Memory* %loadMem_40e3e7, %struct.Memory** %MEMORY
  %loadMem_40e3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %PC.i382
  %796 = add i64 %795, 1
  store i64 %796, i64* %PC.i382
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %799 = bitcast %union.anon* %798 to i32*
  %800 = load i32, i32* %799, align 8
  %801 = sext i32 %800 to i64
  %802 = lshr i64 %801, 32
  store i64 %802, i64* %797, align 8
  store %struct.Memory* %loadMem_40e3ee, %struct.Memory** %MEMORY
  %loadMem_40e3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 5
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 15
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %811 to i64*
  %812 = load i64, i64* %RBP.i381
  %813 = sub i64 %812, 484
  %814 = load i64, i64* %PC.i379
  %815 = add i64 %814, 6
  store i64 %815, i64* %PC.i379
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_40e3ef, %struct.Memory** %MEMORY
  %loadMem_40e3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %ECX.i375 = bitcast %union.anon* %824 to i32*
  %825 = load i32, i32* %ECX.i375
  %826 = zext i32 %825 to i64
  %827 = load i64, i64* %PC.i374
  %828 = add i64 %827, 2
  store i64 %828, i64* %PC.i374
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %830 = bitcast %union.anon* %829 to i32*
  %831 = load i32, i32* %830, align 8
  %832 = zext i32 %831 to i64
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %834 = bitcast %union.anon* %833 to i32*
  %835 = load i32, i32* %834, align 8
  %836 = zext i32 %835 to i64
  %837 = shl i64 %826, 32
  %838 = ashr exact i64 %837, 32
  %839 = shl i64 %836, 32
  %840 = or i64 %839, %832
  %841 = sdiv i64 %840, %838
  %842 = shl i64 %841, 32
  %843 = ashr exact i64 %842, 32
  %844 = icmp eq i64 %841, %843
  br i1 %844, label %849, label %845

; <label>:845:                                    ; preds = %block_.L_40e3be
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %847 = load i64, i64* %846, align 8
  %848 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %847, %struct.Memory* %loadMem_40e3f5)
  br label %routine_idivl__ecx.exit376

; <label>:849:                                    ; preds = %block_.L_40e3be
  %850 = srem i64 %840, %838
  %851 = getelementptr inbounds %union.anon, %union.anon* %829, i64 0, i32 0
  %852 = and i64 %841, 4294967295
  store i64 %852, i64* %851, align 8
  %853 = getelementptr inbounds %union.anon, %union.anon* %833, i64 0, i32 0
  %854 = and i64 %850, 4294967295
  store i64 %854, i64* %853, align 8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %855, align 1
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %856, align 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %857, align 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %858, align 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %859, align 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %860, align 1
  br label %routine_idivl__ecx.exit376

routine_idivl__ecx.exit376:                       ; preds = %845, %849
  %861 = phi %struct.Memory* [ %848, %845 ], [ %loadMem_40e3f5, %849 ]
  store %struct.Memory* %861, %struct.Memory** %MEMORY
  %loadMem_40e3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RAX.i373
  %869 = load i64, i64* %PC.i372
  %870 = add i64 %869, 3
  store i64 %870, i64* %PC.i372
  %871 = trunc i64 %868 to i32
  %872 = sub i32 %871, 1
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i373, align 8
  %874 = icmp ult i32 %871, 1
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %875, i8* %876, align 1
  %877 = and i32 %872, 255
  %878 = call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %881, i8* %882, align 1
  %883 = xor i64 1, %868
  %884 = trunc i64 %883 to i32
  %885 = xor i32 %884, %872
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %888, i8* %889, align 1
  %890 = icmp eq i32 %872, 0
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %891, i8* %892, align 1
  %893 = lshr i32 %872, 31
  %894 = trunc i32 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %894, i8* %895, align 1
  %896 = lshr i32 %871, 31
  %897 = xor i32 %893, %896
  %898 = add i32 %897, %896
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %900, i8* %901, align 1
  store %struct.Memory* %loadMem_40e3f7, %struct.Memory** %MEMORY
  %loadMem_40e3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 17
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %R8D.i370 = bitcast %union.anon* %907 to i32*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 15
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %910 to i64*
  %911 = bitcast i32* %R8D.i370 to i64*
  %912 = load i64, i64* %RBP.i371
  %913 = sub i64 %912, 4
  %914 = load i64, i64* %PC.i369
  %915 = add i64 %914, 4
  store i64 %915, i64* %PC.i369
  %916 = inttoptr i64 %913 to i32*
  %917 = load i32, i32* %916
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %911, align 8
  store %struct.Memory* %loadMem_40e3fa, %struct.Memory** %MEMORY
  %loadMem_40e3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %924 to i32*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 15
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %RBP.i368
  %929 = sub i64 %928, 500
  %930 = load i32, i32* %EAX.i367
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i366
  %933 = add i64 %932, 6
  store i64 %933, i64* %PC.i366
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  store %struct.Memory* %loadMem_40e3fe, %struct.Memory** %MEMORY
  %loadMem_40e404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 17
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %R8D.i364 = bitcast %union.anon* %940 to i32*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %943 to i64*
  %944 = load i32, i32* %R8D.i364
  %945 = zext i32 %944 to i64
  %946 = load i64, i64* %PC.i363
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i363
  %948 = and i64 %945, 4294967295
  store i64 %948, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_40e404, %struct.Memory** %MEMORY
  %loadMem_40e407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %PC.i362
  %953 = add i64 %952, 1
  store i64 %953, i64* %PC.i362
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %956 = bitcast %union.anon* %955 to i32*
  %957 = load i32, i32* %956, align 8
  %958 = sext i32 %957 to i64
  %959 = lshr i64 %958, 32
  store i64 %959, i64* %954, align 8
  store %struct.Memory* %loadMem_40e407, %struct.Memory** %MEMORY
  %loadMem_40e408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 5
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %ECX.i358 = bitcast %union.anon* %965 to i32*
  %966 = load i32, i32* %ECX.i358
  %967 = zext i32 %966 to i64
  %968 = load i64, i64* %PC.i357
  %969 = add i64 %968, 2
  store i64 %969, i64* %PC.i357
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %971 = bitcast %union.anon* %970 to i32*
  %972 = load i32, i32* %971, align 8
  %973 = zext i32 %972 to i64
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %975 = bitcast %union.anon* %974 to i32*
  %976 = load i32, i32* %975, align 8
  %977 = zext i32 %976 to i64
  %978 = shl i64 %967, 32
  %979 = ashr exact i64 %978, 32
  %980 = shl i64 %977, 32
  %981 = or i64 %980, %973
  %982 = sdiv i64 %981, %979
  %983 = shl i64 %982, 32
  %984 = ashr exact i64 %983, 32
  %985 = icmp eq i64 %982, %984
  br i1 %985, label %990, label %986

; <label>:986:                                    ; preds = %routine_idivl__ecx.exit376
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %988 = load i64, i64* %987, align 8
  %989 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %988, %struct.Memory* %loadMem_40e408)
  br label %routine_idivl__ecx.exit359

; <label>:990:                                    ; preds = %routine_idivl__ecx.exit376
  %991 = srem i64 %981, %979
  %992 = getelementptr inbounds %union.anon, %union.anon* %970, i64 0, i32 0
  %993 = and i64 %982, 4294967295
  store i64 %993, i64* %992, align 8
  %994 = getelementptr inbounds %union.anon, %union.anon* %974, i64 0, i32 0
  %995 = and i64 %991, 4294967295
  store i64 %995, i64* %994, align 8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %996, align 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %997, align 1
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %998, align 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %999, align 1
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1000, align 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1001, align 1
  br label %routine_idivl__ecx.exit359

routine_idivl__ecx.exit359:                       ; preds = %986, %990
  %1002 = phi %struct.Memory* [ %989, %986 ], [ %loadMem_40e408, %990 ]
  store %struct.Memory* %1002, %struct.Memory** %MEMORY
  %loadMem_40e40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 7
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RDX.i356
  %1010 = load i64, i64* %PC.i355
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC.i355
  %1012 = trunc i64 %1009 to i32
  %1013 = sub i32 %1012, 1
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RDX.i356, align 8
  %1015 = icmp ult i32 %1012, 1
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1016, i8* %1017, align 1
  %1018 = and i32 %1013, 255
  %1019 = call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1022, i8* %1023, align 1
  %1024 = xor i64 1, %1009
  %1025 = trunc i64 %1024 to i32
  %1026 = xor i32 %1025, %1013
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1029, i8* %1030, align 1
  %1031 = icmp eq i32 %1013, 0
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1032, i8* %1033, align 1
  %1034 = lshr i32 %1013, 31
  %1035 = trunc i32 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i32 %1012, 31
  %1038 = xor i32 %1034, %1037
  %1039 = add i32 %1038, %1037
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1041, i8* %1042, align 1
  store %struct.Memory* %loadMem_40e40a, %struct.Memory** %MEMORY
  %loadMem_40e40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 15
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 19
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %R9.i354 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RBP.i353
  %1053 = sub i64 %1052, 496
  %1054 = load i64, i64* %PC.i352
  %1055 = add i64 %1054, 7
  store i64 %1055, i64* %PC.i352
  %1056 = inttoptr i64 %1053 to i64*
  %1057 = load i64, i64* %1056
  store i64 %1057, i64* %R9.i354, align 8
  store %struct.Memory* %loadMem_40e40d, %struct.Memory** %MEMORY
  %loadMem_40e414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 7
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %EDX.i350 = bitcast %union.anon* %1063 to i32*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 15
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RBP.i351
  %1068 = sub i64 %1067, 504
  %1069 = load i32, i32* %EDX.i350
  %1070 = zext i32 %1069 to i64
  %1071 = load i64, i64* %PC.i349
  %1072 = add i64 %1071, 6
  store i64 %1072, i64* %PC.i349
  %1073 = inttoptr i64 %1068 to i32*
  store i32 %1069, i32* %1073
  store %struct.Memory* %loadMem_40e414, %struct.Memory** %MEMORY
  %loadMem_40e41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 7
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RDX.i347 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 19
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %R9.i348 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %R9.i348
  %1084 = load i64, i64* %PC.i346
  %1085 = add i64 %1084, 3
  store i64 %1085, i64* %PC.i346
  store i64 %1083, i64* %RDX.i347, align 8
  store %struct.Memory* %loadMem_40e41a, %struct.Memory** %MEMORY
  %loadMem_40e41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 5
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 15
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RBP.i345
  %1096 = sub i64 %1095, 500
  %1097 = load i64, i64* %PC.i343
  %1098 = add i64 %1097, 6
  store i64 %1098, i64* %PC.i343
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RCX.i344, align 8
  store %struct.Memory* %loadMem_40e41d, %struct.Memory** %MEMORY
  %loadMem_40e423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 17
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %R8D.i341 = bitcast %union.anon* %1107 to i32*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 15
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %1110 to i64*
  %1111 = bitcast i32* %R8D.i341 to i64*
  %1112 = load i64, i64* %RBP.i342
  %1113 = sub i64 %1112, 504
  %1114 = load i64, i64* %PC.i340
  %1115 = add i64 %1114, 7
  store i64 %1115, i64* %PC.i340
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %1111, align 8
  store %struct.Memory* %loadMem_40e423, %struct.Memory** %MEMORY
  %loadMem1_40e42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %PC.i339
  %1123 = add i64 %1122, 277606
  %1124 = load i64, i64* %PC.i339
  %1125 = add i64 %1124, 5
  %1126 = load i64, i64* %PC.i339
  %1127 = add i64 %1126, 5
  store i64 %1127, i64* %PC.i339
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1129 = load i64, i64* %1128, align 8
  %1130 = add i64 %1129, -8
  %1131 = inttoptr i64 %1130 to i64*
  store i64 %1125, i64* %1131
  store i64 %1130, i64* %1128, align 8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1123, i64* %1132, align 8
  store %struct.Memory* %loadMem1_40e42a, %struct.Memory** %MEMORY
  %loadMem2_40e42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e42a = load i64, i64* %3
  %call2_40e42a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40e42a, %struct.Memory* %loadMem2_40e42a)
  store %struct.Memory* %call2_40e42a, %struct.Memory** %MEMORY
  br label %block_.L_40e42f

block_.L_40e42f:                                  ; preds = %routine_idivl__ecx.exit359, %block_.L_40e3b9
  %loadMem_40e42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 15
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %RBP.i338
  %1140 = sub i64 %1139, 4
  %1141 = load i64, i64* %PC.i337
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %PC.i337
  %1143 = inttoptr i64 %1140 to i32*
  %1144 = load i32, i32* %1143
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1145, align 1
  %1146 = and i32 %1144, 255
  %1147 = call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1150, i8* %1151, align 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1152, align 1
  %1153 = icmp eq i32 %1144, 0
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1154, i8* %1155, align 1
  %1156 = lshr i32 %1144, 31
  %1157 = trunc i32 %1156 to i8
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1157, i8* %1158, align 1
  %1159 = lshr i32 %1144, 31
  %1160 = xor i32 %1156, %1159
  %1161 = add i32 %1160, %1159
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1163, i8* %1164, align 1
  store %struct.Memory* %loadMem_40e42f, %struct.Memory** %MEMORY
  %loadMem_40e433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %PC.i336
  %1169 = add i64 %1168, 40
  %1170 = load i64, i64* %PC.i336
  %1171 = add i64 %1170, 6
  %1172 = load i64, i64* %PC.i336
  %1173 = add i64 %1172, 6
  store i64 %1173, i64* %PC.i336
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1175 = load i8, i8* %1174, align 1
  store i8 %1175, i8* %BRANCH_TAKEN, align 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1177 = icmp ne i8 %1175, 0
  %1178 = select i1 %1177, i64 %1169, i64 %1171
  store i64 %1178, i64* %1176, align 8
  store %struct.Memory* %loadMem_40e433, %struct.Memory** %MEMORY
  %loadBr_40e433 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e433 = icmp eq i8 %loadBr_40e433, 1
  br i1 %cmpBr_40e433, label %block_.L_40e45b, label %block_40e439

block_40e439:                                     ; preds = %block_.L_40e42f
  %loadMem_40e439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RBP.i335
  %1186 = sub i64 %1185, 4
  %1187 = load i64, i64* %PC.i334
  %1188 = add i64 %1187, 7
  store i64 %1188, i64* %PC.i334
  %1189 = inttoptr i64 %1186 to i32*
  %1190 = load i32, i32* %1189
  %1191 = sub i32 %1190, 421
  %1192 = icmp ult i32 %1190, 421
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1193, i8* %1194, align 1
  %1195 = and i32 %1191, 255
  %1196 = call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1199, i8* %1200, align 1
  %1201 = xor i32 %1190, 421
  %1202 = xor i32 %1201, %1191
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1205, i8* %1206, align 1
  %1207 = icmp eq i32 %1191, 0
  %1208 = zext i1 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1208, i8* %1209, align 1
  %1210 = lshr i32 %1191, 31
  %1211 = trunc i32 %1210 to i8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1211, i8* %1212, align 1
  %1213 = lshr i32 %1190, 31
  %1214 = xor i32 %1210, %1213
  %1215 = add i32 %1214, %1213
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1217, i8* %1218, align 1
  store %struct.Memory* %loadMem_40e439, %struct.Memory** %MEMORY
  %loadMem_40e440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %PC.i333
  %1223 = add i64 %1222, 32
  %1224 = load i64, i64* %PC.i333
  %1225 = add i64 %1224, 6
  %1226 = load i64, i64* %PC.i333
  %1227 = add i64 %1226, 6
  store i64 %1227, i64* %PC.i333
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1229 = load i8, i8* %1228, align 1
  %1230 = icmp eq i8 %1229, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %BRANCH_TAKEN, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1233 = select i1 %1230, i64 %1223, i64 %1225
  store i64 %1233, i64* %1232, align 8
  store %struct.Memory* %loadMem_40e440, %struct.Memory** %MEMORY
  %loadBr_40e440 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e440 = icmp eq i8 %loadBr_40e440, 1
  br i1 %cmpBr_40e440, label %block_.L_40e460, label %block_40e446

block_40e446:                                     ; preds = %block_40e439
  %loadMem_40e446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 1
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i332
  %1244 = sub i64 %1243, 4
  %1245 = load i64, i64* %PC.i330
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i330
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = sext i32 %1248 to i64
  store i64 %1249, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_40e446, %struct.Memory** %MEMORY
  %loadMem_40e44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 5
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %RAX.i328
  %1260 = add i64 %1259, 12099168
  %1261 = load i64, i64* %PC.i327
  %1262 = add i64 %1261, 8
  store i64 %1262, i64* %PC.i327
  %1263 = inttoptr i64 %1260 to i8*
  %1264 = load i8, i8* %1263
  %1265 = zext i8 %1264 to i64
  store i64 %1265, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_40e44a, %struct.Memory** %MEMORY
  %loadMem_40e452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 5
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %ECX.i326 = bitcast %union.anon* %1271 to i32*
  %1272 = load i32, i32* %ECX.i326
  %1273 = zext i32 %1272 to i64
  %1274 = load i64, i64* %PC.i325
  %1275 = add i64 %1274, 3
  store i64 %1275, i64* %PC.i325
  %1276 = sub i32 %1272, 3
  %1277 = icmp ult i32 %1272, 3
  %1278 = zext i1 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1278, i8* %1279, align 1
  %1280 = and i32 %1276, 255
  %1281 = call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1284, i8* %1285, align 1
  %1286 = xor i64 3, %1273
  %1287 = trunc i64 %1286 to i32
  %1288 = xor i32 %1287, %1276
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1291, i8* %1292, align 1
  %1293 = icmp eq i32 %1276, 0
  %1294 = zext i1 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1294, i8* %1295, align 1
  %1296 = lshr i32 %1276, 31
  %1297 = trunc i32 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1297, i8* %1298, align 1
  %1299 = lshr i32 %1272, 31
  %1300 = xor i32 %1296, %1299
  %1301 = add i32 %1300, %1299
  %1302 = icmp eq i32 %1301, 2
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1303, i8* %1304, align 1
  store %struct.Memory* %loadMem_40e452, %struct.Memory** %MEMORY
  %loadMem_40e455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1307 to i64*
  %1308 = load i64, i64* %PC.i324
  %1309 = add i64 %1308, 11
  %1310 = load i64, i64* %PC.i324
  %1311 = add i64 %1310, 6
  %1312 = load i64, i64* %PC.i324
  %1313 = add i64 %1312, 6
  store i64 %1313, i64* %PC.i324
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1315 = load i8, i8* %1314, align 1
  store i8 %1315, i8* %BRANCH_TAKEN, align 1
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1317 = icmp ne i8 %1315, 0
  %1318 = select i1 %1317, i64 %1309, i64 %1311
  store i64 %1318, i64* %1316, align 8
  store %struct.Memory* %loadMem_40e455, %struct.Memory** %MEMORY
  %loadBr_40e455 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e455 = icmp eq i8 %loadBr_40e455, 1
  br i1 %cmpBr_40e455, label %block_.L_40e460, label %block_.L_40e45b

block_.L_40e45b:                                  ; preds = %block_40e446, %block_.L_40e42f
  %loadMem_40e45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 33
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1321 to i64*
  %1322 = load i64, i64* %PC.i323
  %1323 = add i64 %1322, 118
  %1324 = load i64, i64* %PC.i323
  %1325 = add i64 %1324, 5
  store i64 %1325, i64* %PC.i323
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1323, i64* %1326, align 8
  store %struct.Memory* %loadMem_40e45b, %struct.Memory** %MEMORY
  br label %block_.L_40e4d1

block_.L_40e460:                                  ; preds = %block_40e446, %block_40e439
  %loadMem_40e460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 11
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %PC.i321
  %1334 = add i64 %1333, 10
  store i64 %1334, i64* %PC.i321
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_40e460, %struct.Memory** %MEMORY
  %loadMem_40e46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 9
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RSI.i320 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %PC.i319
  %1342 = add i64 %1341, 5
  store i64 %1342, i64* %PC.i319
  store i64 926, i64* %RSI.i320, align 8
  store %struct.Memory* %loadMem_40e46a, %struct.Memory** %MEMORY
  %loadMem_40e46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 7
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i317
  %1350 = add i64 %1349, 10
  store i64 %1350, i64* %PC.i317
  store i64 ptrtoint (%G__0x57a487_type* @G__0x57a487 to i64), i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_40e46f, %struct.Memory** %MEMORY
  %loadMem_40e479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 1
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %PC.i315
  %1358 = add i64 %1357, 5
  store i64 %1358, i64* %PC.i315
  store i64 20, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_40e479, %struct.Memory** %MEMORY
  %loadMem_40e47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 5
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i314
  %1369 = sub i64 %1368, 4
  %1370 = load i64, i64* %PC.i312
  %1371 = add i64 %1370, 3
  store i64 %1371, i64* %PC.i312
  %1372 = inttoptr i64 %1369 to i32*
  %1373 = load i32, i32* %1372
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_40e47e, %struct.Memory** %MEMORY
  %loadMem_40e481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 1
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %EAX.i310 = bitcast %union.anon* %1380 to i32*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 15
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1383 to i64*
  %1384 = load i64, i64* %RBP.i311
  %1385 = sub i64 %1384, 508
  %1386 = load i32, i32* %EAX.i310
  %1387 = zext i32 %1386 to i64
  %1388 = load i64, i64* %PC.i309
  %1389 = add i64 %1388, 6
  store i64 %1389, i64* %PC.i309
  %1390 = inttoptr i64 %1385 to i32*
  store i32 %1386, i32* %1390
  store %struct.Memory* %loadMem_40e481, %struct.Memory** %MEMORY
  %loadMem_40e487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 5
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %ECX.i307 = bitcast %union.anon* %1396 to i32*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %1399 to i64*
  %1400 = load i32, i32* %ECX.i307
  %1401 = zext i32 %1400 to i64
  %1402 = load i64, i64* %PC.i306
  %1403 = add i64 %1402, 2
  store i64 %1403, i64* %PC.i306
  %1404 = and i64 %1401, 4294967295
  store i64 %1404, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_40e487, %struct.Memory** %MEMORY
  %loadMem_40e489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 7
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i305
  %1415 = sub i64 %1414, 520
  %1416 = load i64, i64* %RDX.i304
  %1417 = load i64, i64* %PC.i303
  %1418 = add i64 %1417, 7
  store i64 %1418, i64* %PC.i303
  %1419 = inttoptr i64 %1415 to i64*
  store i64 %1416, i64* %1419
  store %struct.Memory* %loadMem_40e489, %struct.Memory** %MEMORY
  %loadMem_40e490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %PC.i302
  %1424 = add i64 %1423, 1
  store i64 %1424, i64* %PC.i302
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1427 = bitcast %union.anon* %1426 to i32*
  %1428 = load i32, i32* %1427, align 8
  %1429 = sext i32 %1428 to i64
  %1430 = lshr i64 %1429, 32
  store i64 %1430, i64* %1425, align 8
  store %struct.Memory* %loadMem_40e490, %struct.Memory** %MEMORY
  %loadMem_40e491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 5
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RBP.i301
  %1441 = sub i64 %1440, 508
  %1442 = load i64, i64* %PC.i299
  %1443 = add i64 %1442, 6
  store i64 %1443, i64* %PC.i299
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_40e491, %struct.Memory** %MEMORY
  %loadMem_40e497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 5
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %ECX.i296 = bitcast %union.anon* %1452 to i32*
  %1453 = load i32, i32* %ECX.i296
  %1454 = zext i32 %1453 to i64
  %1455 = load i64, i64* %PC.i295
  %1456 = add i64 %1455, 2
  store i64 %1456, i64* %PC.i295
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1458 = bitcast %union.anon* %1457 to i32*
  %1459 = load i32, i32* %1458, align 8
  %1460 = zext i32 %1459 to i64
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1462 = bitcast %union.anon* %1461 to i32*
  %1463 = load i32, i32* %1462, align 8
  %1464 = zext i32 %1463 to i64
  %1465 = shl i64 %1454, 32
  %1466 = ashr exact i64 %1465, 32
  %1467 = shl i64 %1464, 32
  %1468 = or i64 %1467, %1460
  %1469 = sdiv i64 %1468, %1466
  %1470 = shl i64 %1469, 32
  %1471 = ashr exact i64 %1470, 32
  %1472 = icmp eq i64 %1469, %1471
  br i1 %1472, label %1477, label %1473

; <label>:1473:                                   ; preds = %block_.L_40e460
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1475 = load i64, i64* %1474, align 8
  %1476 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1475, %struct.Memory* %loadMem_40e497)
  br label %routine_idivl__ecx.exit297

; <label>:1477:                                   ; preds = %block_.L_40e460
  %1478 = srem i64 %1468, %1466
  %1479 = getelementptr inbounds %union.anon, %union.anon* %1457, i64 0, i32 0
  %1480 = and i64 %1469, 4294967295
  store i64 %1480, i64* %1479, align 8
  %1481 = getelementptr inbounds %union.anon, %union.anon* %1461, i64 0, i32 0
  %1482 = and i64 %1478, 4294967295
  store i64 %1482, i64* %1481, align 8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1483, align 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1484, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1485, align 1
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1486, align 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1487, align 1
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1488, align 1
  br label %routine_idivl__ecx.exit297

routine_idivl__ecx.exit297:                       ; preds = %1473, %1477
  %1489 = phi %struct.Memory* [ %1476, %1473 ], [ %loadMem_40e497, %1477 ]
  store %struct.Memory* %1489, %struct.Memory** %MEMORY
  %loadMem_40e499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RAX.i294
  %1497 = load i64, i64* %PC.i293
  %1498 = add i64 %1497, 3
  store i64 %1498, i64* %PC.i293
  %1499 = trunc i64 %1496 to i32
  %1500 = sub i32 %1499, 1
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RAX.i294, align 8
  %1502 = icmp ult i32 %1499, 1
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1503, i8* %1504, align 1
  %1505 = and i32 %1500, 255
  %1506 = call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1509, i8* %1510, align 1
  %1511 = xor i64 1, %1496
  %1512 = trunc i64 %1511 to i32
  %1513 = xor i32 %1512, %1500
  %1514 = lshr i32 %1513, 4
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1516, i8* %1517, align 1
  %1518 = icmp eq i32 %1500, 0
  %1519 = zext i1 %1518 to i8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1519, i8* %1520, align 1
  %1521 = lshr i32 %1500, 31
  %1522 = trunc i32 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1522, i8* %1523, align 1
  %1524 = lshr i32 %1499, 31
  %1525 = xor i32 %1521, %1524
  %1526 = add i32 %1525, %1524
  %1527 = icmp eq i32 %1526, 2
  %1528 = zext i1 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1528, i8* %1529, align 1
  store %struct.Memory* %loadMem_40e499, %struct.Memory** %MEMORY
  %loadMem_40e49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 17
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %R8D.i291 = bitcast %union.anon* %1535 to i32*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 15
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1538 to i64*
  %1539 = bitcast i32* %R8D.i291 to i64*
  %1540 = load i64, i64* %RBP.i292
  %1541 = sub i64 %1540, 4
  %1542 = load i64, i64* %PC.i290
  %1543 = add i64 %1542, 4
  store i64 %1543, i64* %PC.i290
  %1544 = inttoptr i64 %1541 to i32*
  %1545 = load i32, i32* %1544
  %1546 = zext i32 %1545 to i64
  store i64 %1546, i64* %1539, align 8
  store %struct.Memory* %loadMem_40e49c, %struct.Memory** %MEMORY
  %loadMem_40e4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 1
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %EAX.i288 = bitcast %union.anon* %1552 to i32*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 15
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %RBP.i289
  %1557 = sub i64 %1556, 524
  %1558 = load i32, i32* %EAX.i288
  %1559 = zext i32 %1558 to i64
  %1560 = load i64, i64* %PC.i287
  %1561 = add i64 %1560, 6
  store i64 %1561, i64* %PC.i287
  %1562 = inttoptr i64 %1557 to i32*
  store i32 %1558, i32* %1562
  store %struct.Memory* %loadMem_40e4a0, %struct.Memory** %MEMORY
  %loadMem_40e4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 17
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %R8D.i285 = bitcast %union.anon* %1568 to i32*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 1
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %1571 to i64*
  %1572 = load i32, i32* %R8D.i285
  %1573 = zext i32 %1572 to i64
  %1574 = load i64, i64* %PC.i284
  %1575 = add i64 %1574, 3
  store i64 %1575, i64* %PC.i284
  %1576 = and i64 %1573, 4294967295
  store i64 %1576, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_40e4a6, %struct.Memory** %MEMORY
  %loadMem_40e4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %PC.i283
  %1581 = add i64 %1580, 1
  store i64 %1581, i64* %PC.i283
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1584 = bitcast %union.anon* %1583 to i32*
  %1585 = load i32, i32* %1584, align 8
  %1586 = sext i32 %1585 to i64
  %1587 = lshr i64 %1586, 32
  store i64 %1587, i64* %1582, align 8
  store %struct.Memory* %loadMem_40e4a9, %struct.Memory** %MEMORY
  %loadMem_40e4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 5
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %ECX.i280 = bitcast %union.anon* %1593 to i32*
  %1594 = load i32, i32* %ECX.i280
  %1595 = zext i32 %1594 to i64
  %1596 = load i64, i64* %PC.i279
  %1597 = add i64 %1596, 2
  store i64 %1597, i64* %PC.i279
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1599 = bitcast %union.anon* %1598 to i32*
  %1600 = load i32, i32* %1599, align 8
  %1601 = zext i32 %1600 to i64
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1603 = bitcast %union.anon* %1602 to i32*
  %1604 = load i32, i32* %1603, align 8
  %1605 = zext i32 %1604 to i64
  %1606 = shl i64 %1595, 32
  %1607 = ashr exact i64 %1606, 32
  %1608 = shl i64 %1605, 32
  %1609 = or i64 %1608, %1601
  %1610 = sdiv i64 %1609, %1607
  %1611 = shl i64 %1610, 32
  %1612 = ashr exact i64 %1611, 32
  %1613 = icmp eq i64 %1610, %1612
  br i1 %1613, label %1618, label %1614

; <label>:1614:                                   ; preds = %routine_idivl__ecx.exit297
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1616 = load i64, i64* %1615, align 8
  %1617 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1616, %struct.Memory* %loadMem_40e4aa)
  br label %routine_idivl__ecx.exit281

; <label>:1618:                                   ; preds = %routine_idivl__ecx.exit297
  %1619 = srem i64 %1609, %1607
  %1620 = getelementptr inbounds %union.anon, %union.anon* %1598, i64 0, i32 0
  %1621 = and i64 %1610, 4294967295
  store i64 %1621, i64* %1620, align 8
  %1622 = getelementptr inbounds %union.anon, %union.anon* %1602, i64 0, i32 0
  %1623 = and i64 %1619, 4294967295
  store i64 %1623, i64* %1622, align 8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1624, align 1
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1625, align 1
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1626, align 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1627, align 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1628, align 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1629, align 1
  br label %routine_idivl__ecx.exit281

routine_idivl__ecx.exit281:                       ; preds = %1614, %1618
  %1630 = phi %struct.Memory* [ %1617, %1614 ], [ %loadMem_40e4aa, %1618 ]
  store %struct.Memory* %1630, %struct.Memory** %MEMORY
  %loadMem_40e4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 7
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %RDX.i278
  %1638 = load i64, i64* %PC.i277
  %1639 = add i64 %1638, 3
  store i64 %1639, i64* %PC.i277
  %1640 = trunc i64 %1637 to i32
  %1641 = sub i32 %1640, 1
  %1642 = zext i32 %1641 to i64
  store i64 %1642, i64* %RDX.i278, align 8
  %1643 = icmp ult i32 %1640, 1
  %1644 = zext i1 %1643 to i8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1644, i8* %1645, align 1
  %1646 = and i32 %1641, 255
  %1647 = call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1650, i8* %1651, align 1
  %1652 = xor i64 1, %1637
  %1653 = trunc i64 %1652 to i32
  %1654 = xor i32 %1653, %1641
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1657, i8* %1658, align 1
  %1659 = icmp eq i32 %1641, 0
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1660, i8* %1661, align 1
  %1662 = lshr i32 %1641, 31
  %1663 = trunc i32 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1663, i8* %1664, align 1
  %1665 = lshr i32 %1640, 31
  %1666 = xor i32 %1662, %1665
  %1667 = add i32 %1666, %1665
  %1668 = icmp eq i32 %1667, 2
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1669, i8* %1670, align 1
  store %struct.Memory* %loadMem_40e4ac, %struct.Memory** %MEMORY
  %loadMem_40e4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 15
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 19
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %R9.i276 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %RBP.i275
  %1681 = sub i64 %1680, 520
  %1682 = load i64, i64* %PC.i274
  %1683 = add i64 %1682, 7
  store i64 %1683, i64* %PC.i274
  %1684 = inttoptr i64 %1681 to i64*
  %1685 = load i64, i64* %1684
  store i64 %1685, i64* %R9.i276, align 8
  store %struct.Memory* %loadMem_40e4af, %struct.Memory** %MEMORY
  %loadMem_40e4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 7
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %EDX.i272 = bitcast %union.anon* %1691 to i32*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 15
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %RBP.i273
  %1696 = sub i64 %1695, 528
  %1697 = load i32, i32* %EDX.i272
  %1698 = zext i32 %1697 to i64
  %1699 = load i64, i64* %PC.i271
  %1700 = add i64 %1699, 6
  store i64 %1700, i64* %PC.i271
  %1701 = inttoptr i64 %1696 to i32*
  store i32 %1697, i32* %1701
  store %struct.Memory* %loadMem_40e4b6, %struct.Memory** %MEMORY
  %loadMem_40e4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 7
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 19
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %R9.i270 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %R9.i270
  %1712 = load i64, i64* %PC.i268
  %1713 = add i64 %1712, 3
  store i64 %1713, i64* %PC.i268
  store i64 %1711, i64* %RDX.i269, align 8
  store %struct.Memory* %loadMem_40e4bc, %struct.Memory** %MEMORY
  %loadMem_40e4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 5
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 15
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %RBP.i267
  %1724 = sub i64 %1723, 524
  %1725 = load i64, i64* %PC.i265
  %1726 = add i64 %1725, 6
  store i64 %1726, i64* %PC.i265
  %1727 = inttoptr i64 %1724 to i32*
  %1728 = load i32, i32* %1727
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_40e4bf, %struct.Memory** %MEMORY
  %loadMem_40e4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 17
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %R8D.i263 = bitcast %union.anon* %1735 to i32*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1738 to i64*
  %1739 = bitcast i32* %R8D.i263 to i64*
  %1740 = load i64, i64* %RBP.i264
  %1741 = sub i64 %1740, 528
  %1742 = load i64, i64* %PC.i262
  %1743 = add i64 %1742, 7
  store i64 %1743, i64* %PC.i262
  %1744 = inttoptr i64 %1741 to i32*
  %1745 = load i32, i32* %1744
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %1739, align 8
  store %struct.Memory* %loadMem_40e4c5, %struct.Memory** %MEMORY
  %loadMem1_40e4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %PC.i261
  %1751 = add i64 %1750, 277444
  %1752 = load i64, i64* %PC.i261
  %1753 = add i64 %1752, 5
  %1754 = load i64, i64* %PC.i261
  %1755 = add i64 %1754, 5
  store i64 %1755, i64* %PC.i261
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1757 = load i64, i64* %1756, align 8
  %1758 = add i64 %1757, -8
  %1759 = inttoptr i64 %1758 to i64*
  store i64 %1753, i64* %1759
  store i64 %1758, i64* %1756, align 8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1751, i64* %1760, align 8
  store %struct.Memory* %loadMem1_40e4cc, %struct.Memory** %MEMORY
  %loadMem2_40e4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e4cc = load i64, i64* %3
  %call2_40e4cc = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40e4cc, %struct.Memory* %loadMem2_40e4cc)
  store %struct.Memory* %call2_40e4cc, %struct.Memory** %MEMORY
  br label %block_.L_40e4d1

block_.L_40e4d1:                                  ; preds = %routine_idivl__ecx.exit281, %block_.L_40e45b
  %loadMem_40e4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 15
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %RBP.i260
  %1768 = sub i64 %1767, 4
  %1769 = load i64, i64* %PC.i259
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %PC.i259
  %1771 = inttoptr i64 %1768 to i32*
  %1772 = load i32, i32* %1771
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1773, align 1
  %1774 = and i32 %1772, 255
  %1775 = call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1778, i8* %1779, align 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1780, align 1
  %1781 = icmp eq i32 %1772, 0
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1782, i8* %1783, align 1
  %1784 = lshr i32 %1772, 31
  %1785 = trunc i32 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1785, i8* %1786, align 1
  %1787 = lshr i32 %1772, 31
  %1788 = xor i32 %1784, %1787
  %1789 = add i32 %1788, %1787
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1791, i8* %1792, align 1
  store %struct.Memory* %loadMem_40e4d1, %struct.Memory** %MEMORY
  %loadMem_40e4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %PC.i258
  %1797 = add i64 %1796, 27
  %1798 = load i64, i64* %PC.i258
  %1799 = add i64 %1798, 6
  %1800 = load i64, i64* %PC.i258
  %1801 = add i64 %1800, 6
  store i64 %1801, i64* %PC.i258
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1803 = load i8, i8* %1802, align 1
  store i8 %1803, i8* %BRANCH_TAKEN, align 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1805 = icmp ne i8 %1803, 0
  %1806 = select i1 %1805, i64 %1797, i64 %1799
  store i64 %1806, i64* %1804, align 8
  store %struct.Memory* %loadMem_40e4d5, %struct.Memory** %MEMORY
  %loadBr_40e4d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e4d5 = icmp eq i8 %loadBr_40e4d5, 1
  br i1 %cmpBr_40e4d5, label %block_.L_40e4f0, label %block_40e4db

block_40e4db:                                     ; preds = %block_.L_40e4d1
  %loadMem_40e4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 15
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RBP.i257
  %1817 = sub i64 %1816, 4
  %1818 = load i64, i64* %PC.i255
  %1819 = add i64 %1818, 4
  store i64 %1819, i64* %PC.i255
  %1820 = inttoptr i64 %1817 to i32*
  %1821 = load i32, i32* %1820
  %1822 = sext i32 %1821 to i64
  store i64 %1822, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_40e4db, %struct.Memory** %MEMORY
  %loadMem_40e4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 1
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 5
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %1831 to i64*
  %1832 = load i64, i64* %RAX.i253
  %1833 = add i64 %1832, 12099168
  %1834 = load i64, i64* %PC.i252
  %1835 = add i64 %1834, 8
  store i64 %1835, i64* %PC.i252
  %1836 = inttoptr i64 %1833 to i8*
  %1837 = load i8, i8* %1836
  %1838 = zext i8 %1837 to i64
  store i64 %1838, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_40e4df, %struct.Memory** %MEMORY
  %loadMem_40e4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 5
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %1844 to i32*
  %1845 = load i32, i32* %ECX.i251
  %1846 = zext i32 %1845 to i64
  %1847 = load i64, i64* %PC.i250
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i250
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1849, align 1
  %1850 = and i32 %1845, 255
  %1851 = call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1854, i8* %1855, align 1
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1856, align 1
  %1857 = icmp eq i32 %1845, 0
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1858, i8* %1859, align 1
  %1860 = lshr i32 %1845, 31
  %1861 = trunc i32 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1861, i8* %1862, align 1
  %1863 = lshr i32 %1845, 31
  %1864 = xor i32 %1860, %1863
  %1865 = add i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1867, i8* %1868, align 1
  store %struct.Memory* %loadMem_40e4e7, %struct.Memory** %MEMORY
  %loadMem_40e4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %PC.i249
  %1873 = add i64 %1872, 11
  %1874 = load i64, i64* %PC.i249
  %1875 = add i64 %1874, 6
  %1876 = load i64, i64* %PC.i249
  %1877 = add i64 %1876, 6
  store i64 %1877, i64* %PC.i249
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1879 = load i8, i8* %1878, align 1
  %1880 = icmp eq i8 %1879, 0
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %BRANCH_TAKEN, align 1
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1883 = select i1 %1880, i64 %1873, i64 %1875
  store i64 %1883, i64* %1882, align 8
  store %struct.Memory* %loadMem_40e4ea, %struct.Memory** %MEMORY
  %loadBr_40e4ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e4ea = icmp eq i8 %loadBr_40e4ea, 1
  br i1 %cmpBr_40e4ea, label %block_.L_40e4f5, label %block_.L_40e4f0

block_.L_40e4f0:                                  ; preds = %block_40e4db, %block_.L_40e4d1
  %loadMem_40e4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %PC.i248
  %1888 = add i64 %1887, 118
  %1889 = load i64, i64* %PC.i248
  %1890 = add i64 %1889, 5
  store i64 %1890, i64* %PC.i248
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1888, i64* %1891, align 8
  store %struct.Memory* %loadMem_40e4f0, %struct.Memory** %MEMORY
  br label %block_.L_40e566

block_.L_40e4f5:                                  ; preds = %block_40e4db
  %loadMem_40e4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 11
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %PC.i246
  %1899 = add i64 %1898, 10
  store i64 %1899, i64* %PC.i246
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_40e4f5, %struct.Memory** %MEMORY
  %loadMem_40e4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 9
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %1905 to i64*
  %1906 = load i64, i64* %PC.i244
  %1907 = add i64 %1906, 5
  store i64 %1907, i64* %PC.i244
  store i64 927, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_40e4ff, %struct.Memory** %MEMORY
  %loadMem_40e504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 7
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %PC.i242
  %1915 = add i64 %1914, 10
  store i64 %1915, i64* %PC.i242
  store i64 ptrtoint (%G__0x57a4aa_type* @G__0x57a4aa to i64), i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_40e504, %struct.Memory** %MEMORY
  %loadMem_40e50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %PC.i240
  %1923 = add i64 %1922, 5
  store i64 %1923, i64* %PC.i240
  store i64 20, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_40e50e, %struct.Memory** %MEMORY
  %loadMem_40e513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 15
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %RBP.i239
  %1934 = sub i64 %1933, 4
  %1935 = load i64, i64* %PC.i237
  %1936 = add i64 %1935, 3
  store i64 %1936, i64* %PC.i237
  %1937 = inttoptr i64 %1934 to i32*
  %1938 = load i32, i32* %1937
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_40e513, %struct.Memory** %MEMORY
  %loadMem_40e516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 1
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %EAX.i235 = bitcast %union.anon* %1945 to i32*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %RBP.i236
  %1950 = sub i64 %1949, 532
  %1951 = load i32, i32* %EAX.i235
  %1952 = zext i32 %1951 to i64
  %1953 = load i64, i64* %PC.i234
  %1954 = add i64 %1953, 6
  store i64 %1954, i64* %PC.i234
  %1955 = inttoptr i64 %1950 to i32*
  store i32 %1951, i32* %1955
  store %struct.Memory* %loadMem_40e516, %struct.Memory** %MEMORY
  %loadMem_40e51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 5
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %ECX.i232 = bitcast %union.anon* %1961 to i32*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %1964 to i64*
  %1965 = load i32, i32* %ECX.i232
  %1966 = zext i32 %1965 to i64
  %1967 = load i64, i64* %PC.i231
  %1968 = add i64 %1967, 2
  store i64 %1968, i64* %PC.i231
  %1969 = and i64 %1966, 4294967295
  store i64 %1969, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_40e51c, %struct.Memory** %MEMORY
  %loadMem_40e51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 7
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RBP.i230
  %1980 = sub i64 %1979, 544
  %1981 = load i64, i64* %RDX.i229
  %1982 = load i64, i64* %PC.i228
  %1983 = add i64 %1982, 7
  store i64 %1983, i64* %PC.i228
  %1984 = inttoptr i64 %1980 to i64*
  store i64 %1981, i64* %1984
  store %struct.Memory* %loadMem_40e51e, %struct.Memory** %MEMORY
  %loadMem_40e525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i227
  %1989 = add i64 %1988, 1
  store i64 %1989, i64* %PC.i227
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1992 = bitcast %union.anon* %1991 to i32*
  %1993 = load i32, i32* %1992, align 8
  %1994 = sext i32 %1993 to i64
  %1995 = lshr i64 %1994, 32
  store i64 %1995, i64* %1990, align 8
  store %struct.Memory* %loadMem_40e525, %struct.Memory** %MEMORY
  %loadMem_40e526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 5
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 15
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RBP.i226
  %2006 = sub i64 %2005, 532
  %2007 = load i64, i64* %PC.i224
  %2008 = add i64 %2007, 6
  store i64 %2008, i64* %PC.i224
  %2009 = inttoptr i64 %2006 to i32*
  %2010 = load i32, i32* %2009
  %2011 = zext i32 %2010 to i64
  store i64 %2011, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_40e526, %struct.Memory** %MEMORY
  %loadMem_40e52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 5
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %ECX.i221 = bitcast %union.anon* %2017 to i32*
  %2018 = load i32, i32* %ECX.i221
  %2019 = zext i32 %2018 to i64
  %2020 = load i64, i64* %PC.i220
  %2021 = add i64 %2020, 2
  store i64 %2021, i64* %PC.i220
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2023 = bitcast %union.anon* %2022 to i32*
  %2024 = load i32, i32* %2023, align 8
  %2025 = zext i32 %2024 to i64
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2027 = bitcast %union.anon* %2026 to i32*
  %2028 = load i32, i32* %2027, align 8
  %2029 = zext i32 %2028 to i64
  %2030 = shl i64 %2019, 32
  %2031 = ashr exact i64 %2030, 32
  %2032 = shl i64 %2029, 32
  %2033 = or i64 %2032, %2025
  %2034 = sdiv i64 %2033, %2031
  %2035 = shl i64 %2034, 32
  %2036 = ashr exact i64 %2035, 32
  %2037 = icmp eq i64 %2034, %2036
  br i1 %2037, label %2042, label %2038

; <label>:2038:                                   ; preds = %block_.L_40e4f5
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2040 = load i64, i64* %2039, align 8
  %2041 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2040, %struct.Memory* %loadMem_40e52c)
  br label %routine_idivl__ecx.exit222

; <label>:2042:                                   ; preds = %block_.L_40e4f5
  %2043 = srem i64 %2033, %2031
  %2044 = getelementptr inbounds %union.anon, %union.anon* %2022, i64 0, i32 0
  %2045 = and i64 %2034, 4294967295
  store i64 %2045, i64* %2044, align 8
  %2046 = getelementptr inbounds %union.anon, %union.anon* %2026, i64 0, i32 0
  %2047 = and i64 %2043, 4294967295
  store i64 %2047, i64* %2046, align 8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2048, align 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2049, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2050, align 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2051, align 1
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2052, align 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2053, align 1
  br label %routine_idivl__ecx.exit222

routine_idivl__ecx.exit222:                       ; preds = %2038, %2042
  %2054 = phi %struct.Memory* [ %2041, %2038 ], [ %loadMem_40e52c, %2042 ]
  store %struct.Memory* %2054, %struct.Memory** %MEMORY
  %loadMem_40e52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %RAX.i219
  %2062 = load i64, i64* %PC.i218
  %2063 = add i64 %2062, 3
  store i64 %2063, i64* %PC.i218
  %2064 = trunc i64 %2061 to i32
  %2065 = sub i32 %2064, 1
  %2066 = zext i32 %2065 to i64
  store i64 %2066, i64* %RAX.i219, align 8
  %2067 = icmp ult i32 %2064, 1
  %2068 = zext i1 %2067 to i8
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2068, i8* %2069, align 1
  %2070 = and i32 %2065, 255
  %2071 = call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2074, i8* %2075, align 1
  %2076 = xor i64 1, %2061
  %2077 = trunc i64 %2076 to i32
  %2078 = xor i32 %2077, %2065
  %2079 = lshr i32 %2078, 4
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2081, i8* %2082, align 1
  %2083 = icmp eq i32 %2065, 0
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2084, i8* %2085, align 1
  %2086 = lshr i32 %2065, 31
  %2087 = trunc i32 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2087, i8* %2088, align 1
  %2089 = lshr i32 %2064, 31
  %2090 = xor i32 %2086, %2089
  %2091 = add i32 %2090, %2089
  %2092 = icmp eq i32 %2091, 2
  %2093 = zext i1 %2092 to i8
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2093, i8* %2094, align 1
  store %struct.Memory* %loadMem_40e52e, %struct.Memory** %MEMORY
  %loadMem_40e531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 17
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %R8D.i216 = bitcast %union.anon* %2100 to i32*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 15
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2103 to i64*
  %2104 = bitcast i32* %R8D.i216 to i64*
  %2105 = load i64, i64* %RBP.i217
  %2106 = sub i64 %2105, 4
  %2107 = load i64, i64* %PC.i215
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i215
  %2109 = inttoptr i64 %2106 to i32*
  %2110 = load i32, i32* %2109
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %2104, align 8
  store %struct.Memory* %loadMem_40e531, %struct.Memory** %MEMORY
  %loadMem_40e535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %2117 to i32*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RBP.i214
  %2122 = sub i64 %2121, 548
  %2123 = load i32, i32* %EAX.i213
  %2124 = zext i32 %2123 to i64
  %2125 = load i64, i64* %PC.i212
  %2126 = add i64 %2125, 6
  store i64 %2126, i64* %PC.i212
  %2127 = inttoptr i64 %2122 to i32*
  store i32 %2123, i32* %2127
  store %struct.Memory* %loadMem_40e535, %struct.Memory** %MEMORY
  %loadMem_40e53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 17
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %R8D.i210 = bitcast %union.anon* %2133 to i32*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 1
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %2136 to i64*
  %2137 = load i32, i32* %R8D.i210
  %2138 = zext i32 %2137 to i64
  %2139 = load i64, i64* %PC.i209
  %2140 = add i64 %2139, 3
  store i64 %2140, i64* %PC.i209
  %2141 = and i64 %2138, 4294967295
  store i64 %2141, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_40e53b, %struct.Memory** %MEMORY
  %loadMem_40e53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2144 to i64*
  %2145 = load i64, i64* %PC.i208
  %2146 = add i64 %2145, 1
  store i64 %2146, i64* %PC.i208
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2149 = bitcast %union.anon* %2148 to i32*
  %2150 = load i32, i32* %2149, align 8
  %2151 = sext i32 %2150 to i64
  %2152 = lshr i64 %2151, 32
  store i64 %2152, i64* %2147, align 8
  store %struct.Memory* %loadMem_40e53e, %struct.Memory** %MEMORY
  %loadMem_40e53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 5
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %ECX.i205 = bitcast %union.anon* %2158 to i32*
  %2159 = load i32, i32* %ECX.i205
  %2160 = zext i32 %2159 to i64
  %2161 = load i64, i64* %PC.i204
  %2162 = add i64 %2161, 2
  store i64 %2162, i64* %PC.i204
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2164 = bitcast %union.anon* %2163 to i32*
  %2165 = load i32, i32* %2164, align 8
  %2166 = zext i32 %2165 to i64
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2168 = bitcast %union.anon* %2167 to i32*
  %2169 = load i32, i32* %2168, align 8
  %2170 = zext i32 %2169 to i64
  %2171 = shl i64 %2160, 32
  %2172 = ashr exact i64 %2171, 32
  %2173 = shl i64 %2170, 32
  %2174 = or i64 %2173, %2166
  %2175 = sdiv i64 %2174, %2172
  %2176 = shl i64 %2175, 32
  %2177 = ashr exact i64 %2176, 32
  %2178 = icmp eq i64 %2175, %2177
  br i1 %2178, label %2183, label %2179

; <label>:2179:                                   ; preds = %routine_idivl__ecx.exit222
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2181 = load i64, i64* %2180, align 8
  %2182 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2181, %struct.Memory* %loadMem_40e53f)
  br label %routine_idivl__ecx.exit

; <label>:2183:                                   ; preds = %routine_idivl__ecx.exit222
  %2184 = srem i64 %2174, %2172
  %2185 = getelementptr inbounds %union.anon, %union.anon* %2163, i64 0, i32 0
  %2186 = and i64 %2175, 4294967295
  store i64 %2186, i64* %2185, align 8
  %2187 = getelementptr inbounds %union.anon, %union.anon* %2167, i64 0, i32 0
  %2188 = and i64 %2184, 4294967295
  store i64 %2188, i64* %2187, align 8
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2189, align 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2190, align 1
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2191, align 1
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2192, align 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2193, align 1
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2194, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2179, %2183
  %2195 = phi %struct.Memory* [ %2182, %2179 ], [ %loadMem_40e53f, %2183 ]
  store %struct.Memory* %2195, %struct.Memory** %MEMORY
  %loadMem_40e541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 7
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %RDX.i203
  %2203 = load i64, i64* %PC.i202
  %2204 = add i64 %2203, 3
  store i64 %2204, i64* %PC.i202
  %2205 = trunc i64 %2202 to i32
  %2206 = sub i32 %2205, 1
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RDX.i203, align 8
  %2208 = icmp ult i32 %2205, 1
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2209, i8* %2210, align 1
  %2211 = and i32 %2206, 255
  %2212 = call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2215, i8* %2216, align 1
  %2217 = xor i64 1, %2202
  %2218 = trunc i64 %2217 to i32
  %2219 = xor i32 %2218, %2206
  %2220 = lshr i32 %2219, 4
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2222, i8* %2223, align 1
  %2224 = icmp eq i32 %2206, 0
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2225, i8* %2226, align 1
  %2227 = lshr i32 %2206, 31
  %2228 = trunc i32 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2228, i8* %2229, align 1
  %2230 = lshr i32 %2205, 31
  %2231 = xor i32 %2227, %2230
  %2232 = add i32 %2231, %2230
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2234, i8* %2235, align 1
  store %struct.Memory* %loadMem_40e541, %struct.Memory** %MEMORY
  %loadMem_40e544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 19
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %R9.i201 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RBP.i200
  %2246 = sub i64 %2245, 544
  %2247 = load i64, i64* %PC.i199
  %2248 = add i64 %2247, 7
  store i64 %2248, i64* %PC.i199
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249
  store i64 %2250, i64* %R9.i201, align 8
  store %struct.Memory* %loadMem_40e544, %struct.Memory** %MEMORY
  %loadMem_40e54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 7
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %EDX.i197 = bitcast %union.anon* %2256 to i32*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %RBP.i198
  %2261 = sub i64 %2260, 552
  %2262 = load i32, i32* %EDX.i197
  %2263 = zext i32 %2262 to i64
  %2264 = load i64, i64* %PC.i196
  %2265 = add i64 %2264, 6
  store i64 %2265, i64* %PC.i196
  %2266 = inttoptr i64 %2261 to i32*
  store i32 %2262, i32* %2266
  store %struct.Memory* %loadMem_40e54b, %struct.Memory** %MEMORY
  %loadMem_40e551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 7
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 19
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %R9.i
  %2277 = load i64, i64* %PC.i194
  %2278 = add i64 %2277, 3
  store i64 %2278, i64* %PC.i194
  store i64 %2276, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_40e551, %struct.Memory** %MEMORY
  %loadMem_40e554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 5
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 15
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2287 to i64*
  %2288 = load i64, i64* %RBP.i193
  %2289 = sub i64 %2288, 548
  %2290 = load i64, i64* %PC.i191
  %2291 = add i64 %2290, 6
  store i64 %2291, i64* %PC.i191
  %2292 = inttoptr i64 %2289 to i32*
  %2293 = load i32, i32* %2292
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_40e554, %struct.Memory** %MEMORY
  %loadMem_40e55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 17
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2300 to i32*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2303 to i64*
  %2304 = bitcast i32* %R8D.i to i64*
  %2305 = load i64, i64* %RBP.i190
  %2306 = sub i64 %2305, 552
  %2307 = load i64, i64* %PC.i189
  %2308 = add i64 %2307, 7
  store i64 %2308, i64* %PC.i189
  %2309 = inttoptr i64 %2306 to i32*
  %2310 = load i32, i32* %2309
  %2311 = zext i32 %2310 to i64
  store i64 %2311, i64* %2304, align 8
  store %struct.Memory* %loadMem_40e55a, %struct.Memory** %MEMORY
  %loadMem1_40e561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %PC.i188
  %2316 = add i64 %2315, 277295
  %2317 = load i64, i64* %PC.i188
  %2318 = add i64 %2317, 5
  %2319 = load i64, i64* %PC.i188
  %2320 = add i64 %2319, 5
  store i64 %2320, i64* %PC.i188
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2322 = load i64, i64* %2321, align 8
  %2323 = add i64 %2322, -8
  %2324 = inttoptr i64 %2323 to i64*
  store i64 %2318, i64* %2324
  store i64 %2323, i64* %2321, align 8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2316, i64* %2325, align 8
  store %struct.Memory* %loadMem1_40e561, %struct.Memory** %MEMORY
  %loadMem2_40e561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e561 = load i64, i64* %3
  %call2_40e561 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40e561, %struct.Memory* %loadMem2_40e561)
  store %struct.Memory* %call2_40e561, %struct.Memory** %MEMORY
  br label %block_.L_40e566

block_.L_40e566:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_40e4f0
  %loadMem_40e566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %PC.i187
  %2330 = add i64 %2329, 11
  store i64 %2330, i64* %PC.i187
  %2331 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %2332 = sub i32 %2331, 500
  %2333 = icmp ult i32 %2331, 500
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2334, i8* %2335, align 1
  %2336 = and i32 %2332, 255
  %2337 = call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2340, i8* %2341, align 1
  %2342 = xor i32 %2331, 500
  %2343 = xor i32 %2342, %2332
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2346, i8* %2347, align 1
  %2348 = icmp eq i32 %2332, 0
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2349, i8* %2350, align 1
  %2351 = lshr i32 %2332, 31
  %2352 = trunc i32 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2331, 31
  %2355 = xor i32 %2351, %2354
  %2356 = add i32 %2355, %2354
  %2357 = icmp eq i32 %2356, 2
  %2358 = zext i1 %2357 to i8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2358, i8* %2359, align 1
  store %struct.Memory* %loadMem_40e566, %struct.Memory** %MEMORY
  %loadMem_40e571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %PC.i186
  %2364 = add i64 %2363, 340
  %2365 = load i64, i64* %PC.i186
  %2366 = add i64 %2365, 6
  %2367 = load i64, i64* %PC.i186
  %2368 = add i64 %2367, 6
  store i64 %2368, i64* %PC.i186
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2370 = load i8, i8* %2369, align 1
  %2371 = icmp ne i8 %2370, 0
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2373 = load i8, i8* %2372, align 1
  %2374 = icmp ne i8 %2373, 0
  %2375 = xor i1 %2371, %2374
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %BRANCH_TAKEN, align 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2378 = select i1 %2375, i64 %2364, i64 %2366
  store i64 %2378, i64* %2377, align 8
  store %struct.Memory* %loadMem_40e571, %struct.Memory** %MEMORY
  %loadBr_40e571 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e571 = icmp eq i8 %loadBr_40e571, 1
  br i1 %cmpBr_40e571, label %block_.L_40e6c5, label %block_40e577

block_40e577:                                     ; preds = %block_.L_40e566
  %loadMem_40e577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 9
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %PC.i184
  %2386 = add i64 %2385, 10
  store i64 %2386, i64* %PC.i184
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RSI.i185, align 8
  store %struct.Memory* %loadMem_40e577, %struct.Memory** %MEMORY
  %loadMem_40e581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 1
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %PC.i182
  %2394 = add i64 %2393, 5
  store i64 %2394, i64* %PC.i182
  store i64 421, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_40e581, %struct.Memory** %MEMORY
  %loadMem_40e586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 1
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %2400 to i32*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 7
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %2403 to i64*
  %2404 = load i32, i32* %EAX.i180
  %2405 = zext i32 %2404 to i64
  %2406 = load i64, i64* %PC.i179
  %2407 = add i64 %2406, 2
  store i64 %2407, i64* %PC.i179
  %2408 = and i64 %2405, 4294967295
  store i64 %2408, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_40e586, %struct.Memory** %MEMORY
  %loadMem_40e588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 11
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 15
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RBP.i178
  %2419 = sub i64 %2418, 448
  %2420 = load i64, i64* %PC.i176
  %2421 = add i64 %2420, 7
  store i64 %2421, i64* %PC.i176
  store i64 %2419, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_40e588, %struct.Memory** %MEMORY
  %loadMem_40e58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 15
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2427 to i64*
  %2428 = load i64, i64* %RBP.i175
  %2429 = sub i64 %2428, 12
  %2430 = load i64, i64* %PC.i174
  %2431 = add i64 %2430, 7
  store i64 %2431, i64* %PC.i174
  %2432 = inttoptr i64 %2429 to i32*
  store i32 51, i32* %2432
  store %struct.Memory* %loadMem_40e58f, %struct.Memory** %MEMORY
  %loadMem_40e596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 33
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 1
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %2438 to i64*
  %2439 = load i64, i64* %PC.i172
  %2440 = add i64 %2439, 7
  store i64 %2440, i64* %PC.i172
  %2441 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %2442 = zext i32 %2441 to i64
  store i64 %2442, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_40e596, %struct.Memory** %MEMORY
  %loadMem_40e59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 1
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %EAX.i170 = bitcast %union.anon* %2448 to i32*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 15
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %RBP.i171
  %2453 = sub i64 %2452, 452
  %2454 = load i32, i32* %EAX.i170
  %2455 = zext i32 %2454 to i64
  %2456 = load i64, i64* %PC.i169
  %2457 = add i64 %2456, 6
  store i64 %2457, i64* %PC.i169
  %2458 = inttoptr i64 %2453 to i32*
  store i32 %2454, i32* %2458
  store %struct.Memory* %loadMem_40e59d, %struct.Memory** %MEMORY
  %loadMem_40e5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 1
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %PC.i167
  %2466 = add i64 %2465, 7
  store i64 %2466, i64* %PC.i167
  %2467 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %2468 = zext i32 %2467 to i64
  store i64 %2468, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_40e5a3, %struct.Memory** %MEMORY
  %loadMem_40e5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 1
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %2474 to i32*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RBP.i166
  %2479 = sub i64 %2478, 456
  %2480 = load i32, i32* %EAX.i165
  %2481 = zext i32 %2480 to i64
  %2482 = load i64, i64* %PC.i164
  %2483 = add i64 %2482, 6
  store i64 %2483, i64* %PC.i164
  %2484 = inttoptr i64 %2479 to i32*
  store i32 %2480, i32* %2484
  store %struct.Memory* %loadMem_40e5aa, %struct.Memory** %MEMORY
  %loadMem_40e5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 1
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %PC.i162
  %2492 = add i64 %2491, 7
  store i64 %2492, i64* %PC.i162
  %2493 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_40e5b0, %struct.Memory** %MEMORY
  %loadMem_40e5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %2500 to i32*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 15
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RBP.i161
  %2505 = sub i64 %2504, 460
  %2506 = load i32, i32* %EAX.i160
  %2507 = zext i32 %2506 to i64
  %2508 = load i64, i64* %PC.i159
  %2509 = add i64 %2508, 6
  store i64 %2509, i64* %PC.i159
  %2510 = inttoptr i64 %2505 to i32*
  store i32 %2506, i32* %2510
  store %struct.Memory* %loadMem_40e5b7, %struct.Memory** %MEMORY
  %loadMem1_40e5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2513 to i64*
  %2514 = load i64, i64* %PC.i158
  %2515 = add i64 %2514, -54477
  %2516 = load i64, i64* %PC.i158
  %2517 = add i64 %2516, 5
  %2518 = load i64, i64* %PC.i158
  %2519 = add i64 %2518, 5
  store i64 %2519, i64* %PC.i158
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2521 = load i64, i64* %2520, align 8
  %2522 = add i64 %2521, -8
  %2523 = inttoptr i64 %2522 to i64*
  store i64 %2517, i64* %2523
  store i64 %2522, i64* %2520, align 8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2515, i64* %2524, align 8
  store %struct.Memory* %loadMem1_40e5bd, %struct.Memory** %MEMORY
  %loadMem2_40e5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e5bd = load i64, i64* %3
  %2525 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %loadMem2_40e5bd)
  store %struct.Memory* %2525, %struct.Memory** %MEMORY
  %loadMem_40e5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 11
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i155
  %2536 = sub i64 %2535, 12
  %2537 = load i64, i64* %PC.i153
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC.i153
  %2539 = inttoptr i64 %2536 to i32*
  %2540 = load i32, i32* %2539
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RDI.i154, align 8
  store %struct.Memory* %loadMem_40e5c2, %struct.Memory** %MEMORY
  %loadMem1_40e5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %PC.i152
  %2546 = add i64 %2545, 347
  %2547 = load i64, i64* %PC.i152
  %2548 = add i64 %2547, 5
  %2549 = load i64, i64* %PC.i152
  %2550 = add i64 %2549, 5
  store i64 %2550, i64* %PC.i152
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2552 = load i64, i64* %2551, align 8
  %2553 = add i64 %2552, -8
  %2554 = inttoptr i64 %2553 to i64*
  store i64 %2548, i64* %2554
  store i64 %2553, i64* %2551, align 8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2546, i64* %2555, align 8
  store %struct.Memory* %loadMem1_40e5c5, %struct.Memory** %MEMORY
  %loadMem2_40e5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e5c5 = load i64, i64* %3
  %call2_40e5c5 = call %struct.Memory* @sub_40e720.replay_move_history(%struct.State* %0, i64 %loadPC_40e5c5, %struct.Memory* %loadMem2_40e5c5)
  store %struct.Memory* %call2_40e5c5, %struct.Memory** %MEMORY
  %loadMem_40e5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 11
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RDI.i151 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %PC.i150
  %2563 = add i64 %2562, 10
  store i64 %2563, i64* %PC.i150
  store i64 ptrtoint (%G__0xb06700_type* @G__0xb06700 to i64), i64* %RDI.i151, align 8
  store %struct.Memory* %loadMem_40e5ca, %struct.Memory** %MEMORY
  %loadMem_40e5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 9
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RSI.i149 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %PC.i148
  %2571 = add i64 %2570, 10
  store i64 %2571, i64* %PC.i148
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RSI.i149, align 8
  store %struct.Memory* %loadMem_40e5d4, %struct.Memory** %MEMORY
  %loadMem_40e5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %PC.i146
  %2579 = add i64 %2578, 5
  store i64 %2579, i64* %PC.i146
  store i64 421, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_40e5de, %struct.Memory** %MEMORY
  %loadMem_40e5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %2585 to i32*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 7
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %2588 to i64*
  %2589 = load i32, i32* %EAX.i144
  %2590 = zext i32 %2589 to i64
  %2591 = load i64, i64* %PC.i143
  %2592 = add i64 %2591, 2
  store i64 %2592, i64* %PC.i143
  %2593 = and i64 %2590, 4294967295
  store i64 %2593, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_40e5e3, %struct.Memory** %MEMORY
  %loadMem1_40e5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %PC.i142
  %2598 = add i64 %2597, -54517
  %2599 = load i64, i64* %PC.i142
  %2600 = add i64 %2599, 5
  %2601 = load i64, i64* %PC.i142
  %2602 = add i64 %2601, 5
  store i64 %2602, i64* %PC.i142
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2604 = load i64, i64* %2603, align 8
  %2605 = add i64 %2604, -8
  %2606 = inttoptr i64 %2605 to i64*
  store i64 %2600, i64* %2606
  store i64 %2605, i64* %2603, align 8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2598, i64* %2607, align 8
  store %struct.Memory* %loadMem1_40e5e5, %struct.Memory** %MEMORY
  %loadMem2_40e5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e5e5 = load i64, i64* %3
  %2608 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %loadMem2_40e5e5)
  store %struct.Memory* %2608, %struct.Memory** %MEMORY
  %loadMem_40e5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %PC.i138
  %2616 = add i64 %2615, 7
  store i64 %2616, i64* %PC.i138
  %2617 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_40e5ea, %struct.Memory** %MEMORY
  %loadMem_40e5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 1
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %2624 to i32*
  %2625 = load i32, i32* %EAX.i137
  %2626 = zext i32 %2625 to i64
  %2627 = load i64, i64* %PC.i136
  %2628 = add i64 %2627, 7
  store i64 %2628, i64* %PC.i136
  store i32 %2625, i32* bitcast (%G_0xb8b85c_type* @G_0xb8b85c to i32*)
  store %struct.Memory* %loadMem_40e5f1, %struct.Memory** %MEMORY
  %loadMem_40e5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 33
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 1
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %2634 to i64*
  %2635 = load i64, i64* %PC.i134
  %2636 = add i64 %2635, 7
  store i64 %2636, i64* %PC.i134
  %2637 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %2638 = zext i32 %2637 to i64
  store i64 %2638, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_40e5f8, %struct.Memory** %MEMORY
  %loadMem_40e5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 1
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %EAX.i133 = bitcast %union.anon* %2644 to i32*
  %2645 = load i32, i32* %EAX.i133
  %2646 = zext i32 %2645 to i64
  %2647 = load i64, i64* %PC.i132
  %2648 = add i64 %2647, 7
  store i64 %2648, i64* %PC.i132
  store i32 %2645, i32* bitcast (%G_0xb8af18_type* @G_0xb8af18 to i32*)
  store %struct.Memory* %loadMem_40e5ff, %struct.Memory** %MEMORY
  %loadMem_40e606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %PC.i130
  %2656 = add i64 %2655, 7
  store i64 %2656, i64* %PC.i130
  %2657 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %2658 = zext i32 %2657 to i64
  store i64 %2658, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_40e606, %struct.Memory** %MEMORY
  %loadMem_40e60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %2664 to i32*
  %2665 = load i32, i32* %EAX.i129
  %2666 = zext i32 %2665 to i64
  %2667 = load i64, i64* %PC.i128
  %2668 = add i64 %2667, 7
  store i64 %2668, i64* %PC.i128
  store i32 %2665, i32* bitcast (%G_0xb8af20_type* @G_0xb8af20 to i32*)
  store %struct.Memory* %loadMem_40e60d, %struct.Memory** %MEMORY
  %loadMem_40e614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 1
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 15
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2677 to i64*
  %2678 = load i64, i64* %RBP.i127
  %2679 = sub i64 %2678, 12
  %2680 = load i64, i64* %PC.i125
  %2681 = add i64 %2680, 3
  store i64 %2681, i64* %PC.i125
  %2682 = inttoptr i64 %2679 to i32*
  %2683 = load i32, i32* %2682
  %2684 = zext i32 %2683 to i64
  store i64 %2684, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_40e614, %struct.Memory** %MEMORY
  %loadMem_40e617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 1
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %2690 to i32*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 15
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %RBP.i124
  %2695 = sub i64 %2694, 16
  %2696 = load i32, i32* %EAX.i123
  %2697 = zext i32 %2696 to i64
  %2698 = load i64, i64* %PC.i122
  %2699 = add i64 %2698, 3
  store i64 %2699, i64* %PC.i122
  %2700 = inttoptr i64 %2695 to i32*
  store i32 %2696, i32* %2700
  store %struct.Memory* %loadMem_40e617, %struct.Memory** %MEMORY
  br label %block_.L_40e61a

block_.L_40e61a:                                  ; preds = %block_40e62a, %block_40e577
  %loadMem_40e61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 1
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i121
  %2711 = sub i64 %2710, 16
  %2712 = load i64, i64* %PC.i119
  %2713 = add i64 %2712, 3
  store i64 %2713, i64* %PC.i119
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_40e61a, %struct.Memory** %MEMORY
  %loadMem_40e61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 1
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %2722 to i32*
  %2723 = load i32, i32* %EAX.i118
  %2724 = zext i32 %2723 to i64
  %2725 = load i64, i64* %PC.i117
  %2726 = add i64 %2725, 7
  store i64 %2726, i64* %PC.i117
  %2727 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %2728 = sub i32 %2723, %2727
  %2729 = icmp ult i32 %2723, %2727
  %2730 = zext i1 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2730, i8* %2731, align 1
  %2732 = and i32 %2728, 255
  %2733 = call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2736, i8* %2737, align 1
  %2738 = xor i32 %2727, %2723
  %2739 = xor i32 %2738, %2728
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2742, i8* %2743, align 1
  %2744 = icmp eq i32 %2728, 0
  %2745 = zext i1 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2728, 31
  %2748 = trunc i32 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2748, i8* %2749, align 1
  %2750 = lshr i32 %2723, 31
  %2751 = lshr i32 %2727, 31
  %2752 = xor i32 %2751, %2750
  %2753 = xor i32 %2747, %2750
  %2754 = add i32 %2753, %2752
  %2755 = icmp eq i32 %2754, 2
  %2756 = zext i1 %2755 to i8
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2756, i8* %2757, align 1
  store %struct.Memory* %loadMem_40e61d, %struct.Memory** %MEMORY
  %loadMem_40e624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2760 to i64*
  %2761 = load i64, i64* %PC.i116
  %2762 = add i64 %2761, 74
  %2763 = load i64, i64* %PC.i116
  %2764 = add i64 %2763, 6
  %2765 = load i64, i64* %PC.i116
  %2766 = add i64 %2765, 6
  store i64 %2766, i64* %PC.i116
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2768 = load i8, i8* %2767, align 1
  %2769 = icmp ne i8 %2768, 0
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2771 = load i8, i8* %2770, align 1
  %2772 = icmp ne i8 %2771, 0
  %2773 = xor i1 %2769, %2772
  %2774 = xor i1 %2773, true
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %BRANCH_TAKEN, align 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2777 = select i1 %2773, i64 %2764, i64 %2762
  store i64 %2777, i64* %2776, align 8
  store %struct.Memory* %loadMem_40e624, %struct.Memory** %MEMORY
  %loadBr_40e624 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e624 = icmp eq i8 %loadBr_40e624, 1
  br i1 %cmpBr_40e624, label %block_.L_40e66e, label %block_40e62a

block_40e62a:                                     ; preds = %block_.L_40e61a
  %loadMem_40e62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 1
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %RBP.i115
  %2788 = sub i64 %2787, 16
  %2789 = load i64, i64* %PC.i113
  %2790 = add i64 %2789, 4
  store i64 %2790, i64* %PC.i113
  %2791 = inttoptr i64 %2788 to i32*
  %2792 = load i32, i32* %2791
  %2793 = sext i32 %2792 to i64
  store i64 %2793, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_40e62a, %struct.Memory** %MEMORY
  %loadMem_40e62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 1
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 5
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RAX.i111
  %2804 = mul i64 %2803, 4
  %2805 = add i64 %2804, 12105840
  %2806 = load i64, i64* %PC.i110
  %2807 = add i64 %2806, 7
  store i64 %2807, i64* %PC.i110
  %2808 = inttoptr i64 %2805 to i32*
  %2809 = load i32, i32* %2808
  %2810 = zext i32 %2809 to i64
  store i64 %2810, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_40e62e, %struct.Memory** %MEMORY
  %loadMem_40e635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 7
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 15
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %RBP.i109
  %2821 = sub i64 %2820, 16
  %2822 = load i64, i64* %PC.i107
  %2823 = add i64 %2822, 3
  store i64 %2823, i64* %PC.i107
  %2824 = inttoptr i64 %2821 to i32*
  %2825 = load i32, i32* %2824
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_40e635, %struct.Memory** %MEMORY
  %loadMem_40e638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 7
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 15
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %RDX.i105
  %2837 = load i64, i64* %RBP.i106
  %2838 = sub i64 %2837, 12
  %2839 = load i64, i64* %PC.i104
  %2840 = add i64 %2839, 3
  store i64 %2840, i64* %PC.i104
  %2841 = trunc i64 %2836 to i32
  %2842 = inttoptr i64 %2838 to i32*
  %2843 = load i32, i32* %2842
  %2844 = sub i32 %2841, %2843
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RDX.i105, align 8
  %2846 = icmp ult i32 %2841, %2843
  %2847 = zext i1 %2846 to i8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2847, i8* %2848, align 1
  %2849 = and i32 %2844, 255
  %2850 = call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2853, i8* %2854, align 1
  %2855 = xor i32 %2843, %2841
  %2856 = xor i32 %2855, %2844
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2859, i8* %2860, align 1
  %2861 = icmp eq i32 %2844, 0
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2862, i8* %2863, align 1
  %2864 = lshr i32 %2844, 31
  %2865 = trunc i32 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2865, i8* %2866, align 1
  %2867 = lshr i32 %2841, 31
  %2868 = lshr i32 %2843, 31
  %2869 = xor i32 %2868, %2867
  %2870 = xor i32 %2864, %2867
  %2871 = add i32 %2870, %2869
  %2872 = icmp eq i32 %2871, 2
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2873, i8* %2874, align 1
  store %struct.Memory* %loadMem_40e638, %struct.Memory** %MEMORY
  %loadMem_40e63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 7
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %EDX.i102 = bitcast %union.anon* %2880 to i32*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 1
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %2883 to i64*
  %2884 = load i32, i32* %EDX.i102
  %2885 = zext i32 %2884 to i64
  %2886 = load i64, i64* %PC.i101
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC.i101
  %2888 = shl i64 %2885, 32
  %2889 = ashr exact i64 %2888, 32
  store i64 %2889, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_40e63b, %struct.Memory** %MEMORY
  %loadMem_40e63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 5
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %ECX.i99 = bitcast %union.anon* %2895 to i32*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 1
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RAX.i100
  %2900 = mul i64 %2899, 4
  %2901 = add i64 %2900, 12105840
  %2902 = load i32, i32* %ECX.i99
  %2903 = zext i32 %2902 to i64
  %2904 = load i64, i64* %PC.i98
  %2905 = add i64 %2904, 7
  store i64 %2905, i64* %PC.i98
  %2906 = inttoptr i64 %2901 to i32*
  store i32 %2902, i32* %2906
  store %struct.Memory* %loadMem_40e63e, %struct.Memory** %MEMORY
  %loadMem_40e645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 1
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RBP.i97
  %2917 = sub i64 %2916, 16
  %2918 = load i64, i64* %PC.i95
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %PC.i95
  %2920 = inttoptr i64 %2917 to i32*
  %2921 = load i32, i32* %2920
  %2922 = sext i32 %2921 to i64
  store i64 %2922, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_40e645, %struct.Memory** %MEMORY
  %loadMem_40e649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 5
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RAX.i93
  %2933 = mul i64 %2932, 4
  %2934 = add i64 %2933, 11519248
  %2935 = load i64, i64* %PC.i92
  %2936 = add i64 %2935, 7
  store i64 %2936, i64* %PC.i92
  %2937 = inttoptr i64 %2934 to i32*
  %2938 = load i32, i32* %2937
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RCX.i94, align 8
  store %struct.Memory* %loadMem_40e649, %struct.Memory** %MEMORY
  %loadMem_40e650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 7
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 15
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %RBP.i91
  %2950 = sub i64 %2949, 16
  %2951 = load i64, i64* %PC.i89
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i89
  %2953 = inttoptr i64 %2950 to i32*
  %2954 = load i32, i32* %2953
  %2955 = zext i32 %2954 to i64
  store i64 %2955, i64* %RDX.i90, align 8
  store %struct.Memory* %loadMem_40e650, %struct.Memory** %MEMORY
  %loadMem_40e653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 7
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RDX.i87 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 15
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %RDX.i87
  %2966 = load i64, i64* %RBP.i88
  %2967 = sub i64 %2966, 12
  %2968 = load i64, i64* %PC.i86
  %2969 = add i64 %2968, 3
  store i64 %2969, i64* %PC.i86
  %2970 = trunc i64 %2965 to i32
  %2971 = inttoptr i64 %2967 to i32*
  %2972 = load i32, i32* %2971
  %2973 = sub i32 %2970, %2972
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RDX.i87, align 8
  %2975 = icmp ult i32 %2970, %2972
  %2976 = zext i1 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2976, i8* %2977, align 1
  %2978 = and i32 %2973, 255
  %2979 = call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2982, i8* %2983, align 1
  %2984 = xor i32 %2972, %2970
  %2985 = xor i32 %2984, %2973
  %2986 = lshr i32 %2985, 4
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2988, i8* %2989, align 1
  %2990 = icmp eq i32 %2973, 0
  %2991 = zext i1 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2991, i8* %2992, align 1
  %2993 = lshr i32 %2973, 31
  %2994 = trunc i32 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i32 %2970, 31
  %2997 = lshr i32 %2972, 31
  %2998 = xor i32 %2997, %2996
  %2999 = xor i32 %2993, %2996
  %3000 = add i32 %2999, %2998
  %3001 = icmp eq i32 %3000, 2
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3002, i8* %3003, align 1
  store %struct.Memory* %loadMem_40e653, %struct.Memory** %MEMORY
  %loadMem_40e656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 7
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3009 to i32*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3012 to i64*
  %3013 = load i32, i32* %EDX.i
  %3014 = zext i32 %3013 to i64
  %3015 = load i64, i64* %PC.i84
  %3016 = add i64 %3015, 3
  store i64 %3016, i64* %PC.i84
  %3017 = shl i64 %3014, 32
  %3018 = ashr exact i64 %3017, 32
  store i64 %3018, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_40e656, %struct.Memory** %MEMORY
  %loadMem_40e659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 5
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %ECX.i82 = bitcast %union.anon* %3024 to i32*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 1
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3027 to i64*
  %3028 = load i64, i64* %RAX.i83
  %3029 = mul i64 %3028, 4
  %3030 = add i64 %3029, 11519248
  %3031 = load i32, i32* %ECX.i82
  %3032 = zext i32 %3031 to i64
  %3033 = load i64, i64* %PC.i81
  %3034 = add i64 %3033, 7
  store i64 %3034, i64* %PC.i81
  %3035 = inttoptr i64 %3030 to i32*
  store i32 %3031, i32* %3035
  store %struct.Memory* %loadMem_40e659, %struct.Memory** %MEMORY
  %loadMem_40e660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 1
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 15
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3044 to i64*
  %3045 = load i64, i64* %RBP.i80
  %3046 = sub i64 %3045, 16
  %3047 = load i64, i64* %PC.i78
  %3048 = add i64 %3047, 3
  store i64 %3048, i64* %PC.i78
  %3049 = inttoptr i64 %3046 to i32*
  %3050 = load i32, i32* %3049
  %3051 = zext i32 %3050 to i64
  store i64 %3051, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_40e660, %struct.Memory** %MEMORY
  %loadMem_40e663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 33
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 1
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %3057 to i64*
  %3058 = load i64, i64* %RAX.i77
  %3059 = load i64, i64* %PC.i76
  %3060 = add i64 %3059, 3
  store i64 %3060, i64* %PC.i76
  %3061 = trunc i64 %3058 to i32
  %3062 = add i32 1, %3061
  %3063 = zext i32 %3062 to i64
  store i64 %3063, i64* %RAX.i77, align 8
  %3064 = icmp ult i32 %3062, %3061
  %3065 = icmp ult i32 %3062, 1
  %3066 = or i1 %3064, %3065
  %3067 = zext i1 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3067, i8* %3068, align 1
  %3069 = and i32 %3062, 255
  %3070 = call i32 @llvm.ctpop.i32(i32 %3069)
  %3071 = trunc i32 %3070 to i8
  %3072 = and i8 %3071, 1
  %3073 = xor i8 %3072, 1
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3073, i8* %3074, align 1
  %3075 = xor i64 1, %3058
  %3076 = trunc i64 %3075 to i32
  %3077 = xor i32 %3076, %3062
  %3078 = lshr i32 %3077, 4
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3080, i8* %3081, align 1
  %3082 = icmp eq i32 %3062, 0
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3083, i8* %3084, align 1
  %3085 = lshr i32 %3062, 31
  %3086 = trunc i32 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i32 %3061, 31
  %3089 = xor i32 %3085, %3088
  %3090 = add i32 %3089, %3085
  %3091 = icmp eq i32 %3090, 2
  %3092 = zext i1 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3092, i8* %3093, align 1
  store %struct.Memory* %loadMem_40e663, %struct.Memory** %MEMORY
  %loadMem_40e666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 1
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %3099 to i32*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 15
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RBP.i75
  %3104 = sub i64 %3103, 16
  %3105 = load i32, i32* %EAX.i74
  %3106 = zext i32 %3105 to i64
  %3107 = load i64, i64* %PC.i73
  %3108 = add i64 %3107, 3
  store i64 %3108, i64* %PC.i73
  %3109 = inttoptr i64 %3104 to i32*
  store i32 %3105, i32* %3109
  store %struct.Memory* %loadMem_40e666, %struct.Memory** %MEMORY
  %loadMem_40e669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %PC.i72
  %3114 = add i64 %3113, -79
  %3115 = load i64, i64* %PC.i72
  %3116 = add i64 %3115, 5
  store i64 %3116, i64* %PC.i72
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3114, i64* %3117, align 8
  store %struct.Memory* %loadMem_40e669, %struct.Memory** %MEMORY
  br label %block_.L_40e61a

block_.L_40e66e:                                  ; preds = %block_.L_40e61a
  %loadMem_40e66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 11
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %3123 to i64*
  %3124 = load i64, i64* %PC.i70
  %3125 = add i64 %3124, 10
  store i64 %3125, i64* %PC.i70
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_40e66e, %struct.Memory** %MEMORY
  %loadMem_40e678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 1
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %PC.i68
  %3133 = add i64 %3132, 5
  store i64 %3133, i64* %PC.i68
  store i64 421, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_40e678, %struct.Memory** %MEMORY
  %loadMem_40e67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 33
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 1
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %EAX.i67 = bitcast %union.anon* %3139 to i32*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 7
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3142 to i64*
  %3143 = load i32, i32* %EAX.i67
  %3144 = zext i32 %3143 to i64
  %3145 = load i64, i64* %PC.i66
  %3146 = add i64 %3145, 2
  store i64 %3146, i64* %PC.i66
  %3147 = and i64 %3144, 4294967295
  store i64 %3147, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_40e67d, %struct.Memory** %MEMORY
  %loadMem_40e67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 9
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RSI.i64 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 15
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %RBP.i65
  %3158 = sub i64 %3157, 448
  %3159 = load i64, i64* %PC.i63
  %3160 = add i64 %3159, 7
  store i64 %3160, i64* %PC.i63
  store i64 %3158, i64* %RSI.i64, align 8
  store %struct.Memory* %loadMem_40e67f, %struct.Memory** %MEMORY
  %loadMem_40e686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 1
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 15
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RBP.i62
  %3171 = sub i64 %3170, 12
  %3172 = load i64, i64* %PC.i60
  %3173 = add i64 %3172, 3
  store i64 %3173, i64* %PC.i60
  %3174 = inttoptr i64 %3171 to i32*
  %3175 = load i32, i32* %3174
  %3176 = zext i32 %3175 to i64
  store i64 %3176, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_40e686, %struct.Memory** %MEMORY
  %loadMem_40e689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %PC.i58
  %3184 = add i64 %3183, 7
  store i64 %3184, i64* %PC.i58
  %3185 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_40e689, %struct.Memory** %MEMORY
  %loadMem_40e690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %3192 to i32*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 5
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %3195 to i64*
  %3196 = load i64, i64* %RCX.i57
  %3197 = load i32, i32* %EAX.i56
  %3198 = zext i32 %3197 to i64
  %3199 = load i64, i64* %PC.i55
  %3200 = add i64 %3199, 2
  store i64 %3200, i64* %PC.i55
  %3201 = trunc i64 %3196 to i32
  %3202 = sub i32 %3201, %3197
  %3203 = zext i32 %3202 to i64
  store i64 %3203, i64* %RCX.i57, align 8
  %3204 = icmp ult i32 %3201, %3197
  %3205 = zext i1 %3204 to i8
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3205, i8* %3206, align 1
  %3207 = and i32 %3202, 255
  %3208 = call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3211, i8* %3212, align 1
  %3213 = xor i64 %3198, %3196
  %3214 = trunc i64 %3213 to i32
  %3215 = xor i32 %3214, %3202
  %3216 = lshr i32 %3215, 4
  %3217 = trunc i32 %3216 to i8
  %3218 = and i8 %3217, 1
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3218, i8* %3219, align 1
  %3220 = icmp eq i32 %3202, 0
  %3221 = zext i1 %3220 to i8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3221, i8* %3222, align 1
  %3223 = lshr i32 %3202, 31
  %3224 = trunc i32 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3224, i8* %3225, align 1
  %3226 = lshr i32 %3201, 31
  %3227 = lshr i32 %3197, 31
  %3228 = xor i32 %3227, %3226
  %3229 = xor i32 %3223, %3226
  %3230 = add i32 %3229, %3228
  %3231 = icmp eq i32 %3230, 2
  %3232 = zext i1 %3231 to i8
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3232, i8* %3233, align 1
  store %struct.Memory* %loadMem_40e690, %struct.Memory** %MEMORY
  %loadMem_40e692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 5
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3239 to i32*
  %3240 = load i32, i32* %ECX.i
  %3241 = zext i32 %3240 to i64
  %3242 = load i64, i64* %PC.i54
  %3243 = add i64 %3242, 7
  store i64 %3243, i64* %PC.i54
  store i32 %3240, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  store %struct.Memory* %loadMem_40e692, %struct.Memory** %MEMORY
  %loadMem1_40e699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %PC.i53
  %3248 = add i64 %3247, -54697
  %3249 = load i64, i64* %PC.i53
  %3250 = add i64 %3249, 5
  %3251 = load i64, i64* %PC.i53
  %3252 = add i64 %3251, 5
  store i64 %3252, i64* %PC.i53
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3254 = load i64, i64* %3253, align 8
  %3255 = add i64 %3254, -8
  %3256 = inttoptr i64 %3255 to i64*
  store i64 %3250, i64* %3256
  store i64 %3255, i64* %3253, align 8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3248, i64* %3257, align 8
  store %struct.Memory* %loadMem1_40e699, %struct.Memory** %MEMORY
  %loadMem2_40e699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e699 = load i64, i64* %3
  %3258 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %loadMem2_40e699)
  store %struct.Memory* %3258, %struct.Memory** %MEMORY
  %loadMem_40e69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 1
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 15
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RBP.i49
  %3269 = sub i64 %3268, 452
  %3270 = load i64, i64* %PC.i47
  %3271 = add i64 %3270, 6
  store i64 %3271, i64* %PC.i47
  %3272 = inttoptr i64 %3269 to i32*
  %3273 = load i32, i32* %3272
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_40e69e, %struct.Memory** %MEMORY
  %loadMem_40e6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 1
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %3280 to i32*
  %3281 = load i32, i32* %EAX.i46
  %3282 = zext i32 %3281 to i64
  %3283 = load i64, i64* %PC.i45
  %3284 = add i64 %3283, 7
  store i64 %3284, i64* %PC.i45
  store i32 %3281, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  store %struct.Memory* %loadMem_40e6a4, %struct.Memory** %MEMORY
  %loadMem_40e6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 1
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 15
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RBP.i44
  %3295 = sub i64 %3294, 456
  %3296 = load i64, i64* %PC.i42
  %3297 = add i64 %3296, 6
  store i64 %3297, i64* %PC.i42
  %3298 = inttoptr i64 %3295 to i32*
  %3299 = load i32, i32* %3298
  %3300 = zext i32 %3299 to i64
  store i64 %3300, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_40e6ab, %struct.Memory** %MEMORY
  %loadMem_40e6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 1
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %3306 to i32*
  %3307 = load i32, i32* %EAX.i41
  %3308 = zext i32 %3307 to i64
  %3309 = load i64, i64* %PC.i40
  %3310 = add i64 %3309, 7
  store i64 %3310, i64* %PC.i40
  store i32 %3307, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  store %struct.Memory* %loadMem_40e6b1, %struct.Memory** %MEMORY
  %loadMem_40e6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 1
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 15
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %3319 to i64*
  %3320 = load i64, i64* %RBP.i39
  %3321 = sub i64 %3320, 460
  %3322 = load i64, i64* %PC.i37
  %3323 = add i64 %3322, 6
  store i64 %3323, i64* %PC.i37
  %3324 = inttoptr i64 %3321 to i32*
  %3325 = load i32, i32* %3324
  %3326 = zext i32 %3325 to i64
  store i64 %3326, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_40e6b8, %struct.Memory** %MEMORY
  %loadMem_40e6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 1
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %3332 to i32*
  %3333 = load i32, i32* %EAX.i36
  %3334 = zext i32 %3333 to i64
  %3335 = load i64, i64* %PC.i35
  %3336 = add i64 %3335, 7
  store i64 %3336, i64* %PC.i35
  store i32 %3333, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  store %struct.Memory* %loadMem_40e6be, %struct.Memory** %MEMORY
  br label %block_.L_40e6c5

block_.L_40e6c5:                                  ; preds = %block_.L_40e66e, %block_.L_40e566
  %loadMem_40e6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 1
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i34
  %3347 = sub i64 %3346, 8
  %3348 = load i64, i64* %PC.i32
  %3349 = add i64 %3348, 3
  store i64 %3349, i64* %PC.i32
  %3350 = inttoptr i64 %3347 to i32*
  %3351 = load i32, i32* %3350
  %3352 = zext i32 %3351 to i64
  store i64 %3352, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_40e6c5, %struct.Memory** %MEMORY
  %loadMem_40e6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 5
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %3358 to i64*
  %3359 = load i64, i64* %PC.i30
  %3360 = add i64 %3359, 8
  store i64 %3360, i64* %PC.i30
  %3361 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %3362 = sext i32 %3361 to i64
  store i64 %3362, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_40e6c8, %struct.Memory** %MEMORY
  %loadMem_40e6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 1
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %EAX.i28 = bitcast %union.anon* %3368 to i32*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 5
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %RCX.i29
  %3373 = mul i64 %3372, 4
  %3374 = add i64 %3373, 12105840
  %3375 = load i32, i32* %EAX.i28
  %3376 = zext i32 %3375 to i64
  %3377 = load i64, i64* %PC.i27
  %3378 = add i64 %3377, 7
  store i64 %3378, i64* %PC.i27
  %3379 = inttoptr i64 %3374 to i32*
  store i32 %3375, i32* %3379
  store %struct.Memory* %loadMem_40e6d0, %struct.Memory** %MEMORY
  %loadMem_40e6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 1
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 15
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RBP.i26
  %3390 = sub i64 %3389, 4
  %3391 = load i64, i64* %PC.i24
  %3392 = add i64 %3391, 3
  store i64 %3392, i64* %PC.i24
  %3393 = inttoptr i64 %3390 to i32*
  %3394 = load i32, i32* %3393
  %3395 = zext i32 %3394 to i64
  store i64 %3395, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_40e6d7, %struct.Memory** %MEMORY
  %loadMem_40e6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 5
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %PC.i22
  %3403 = add i64 %3402, 8
  store i64 %3403, i64* %PC.i22
  %3404 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %3405 = sext i32 %3404 to i64
  store i64 %3405, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_40e6da, %struct.Memory** %MEMORY
  %loadMem_40e6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 1
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %EAX.i21 = bitcast %union.anon* %3411 to i32*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 5
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3414 to i64*
  %3415 = load i64, i64* %RCX.i
  %3416 = mul i64 %3415, 4
  %3417 = add i64 %3416, 11519248
  %3418 = load i32, i32* %EAX.i21
  %3419 = zext i32 %3418 to i64
  %3420 = load i64, i64* %PC.i20
  %3421 = add i64 %3420, 7
  store i64 %3421, i64* %PC.i20
  %3422 = inttoptr i64 %3417 to i32*
  store i32 %3418, i32* %3422
  store %struct.Memory* %loadMem_40e6e2, %struct.Memory** %MEMORY
  %loadMem_40e6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 1
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %PC.i18
  %3430 = add i64 %3429, 7
  store i64 %3430, i64* %PC.i18
  %3431 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_40e6e9, %struct.Memory** %MEMORY
  %loadMem_40e6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 1
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %3438 to i64*
  %3439 = load i64, i64* %RAX.i17
  %3440 = load i64, i64* %PC.i16
  %3441 = add i64 %3440, 3
  store i64 %3441, i64* %PC.i16
  %3442 = trunc i64 %3439 to i32
  %3443 = add i32 1, %3442
  %3444 = zext i32 %3443 to i64
  store i64 %3444, i64* %RAX.i17, align 8
  %3445 = icmp ult i32 %3443, %3442
  %3446 = icmp ult i32 %3443, 1
  %3447 = or i1 %3445, %3446
  %3448 = zext i1 %3447 to i8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3448, i8* %3449, align 1
  %3450 = and i32 %3443, 255
  %3451 = call i32 @llvm.ctpop.i32(i32 %3450)
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  %3454 = xor i8 %3453, 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3454, i8* %3455, align 1
  %3456 = xor i64 1, %3439
  %3457 = trunc i64 %3456 to i32
  %3458 = xor i32 %3457, %3443
  %3459 = lshr i32 %3458, 4
  %3460 = trunc i32 %3459 to i8
  %3461 = and i8 %3460, 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3461, i8* %3462, align 1
  %3463 = icmp eq i32 %3443, 0
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3464, i8* %3465, align 1
  %3466 = lshr i32 %3443, 31
  %3467 = trunc i32 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3442, 31
  %3470 = xor i32 %3466, %3469
  %3471 = add i32 %3470, %3466
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3473, i8* %3474, align 1
  store %struct.Memory* %loadMem_40e6f0, %struct.Memory** %MEMORY
  %loadMem_40e6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %3480 to i32*
  %3481 = load i32, i32* %EAX.i15
  %3482 = zext i32 %3481 to i64
  %3483 = load i64, i64* %PC.i14
  %3484 = add i64 %3483, 7
  store i64 %3484, i64* %PC.i14
  store i32 %3481, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  store %struct.Memory* %loadMem_40e6f3, %struct.Memory** %MEMORY
  %loadMem_40e6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 11
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 15
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RBP.i13
  %3495 = sub i64 %3494, 4
  %3496 = load i64, i64* %PC.i12
  %3497 = add i64 %3496, 3
  store i64 %3497, i64* %PC.i12
  %3498 = inttoptr i64 %3495 to i32*
  %3499 = load i32, i32* %3498
  %3500 = zext i32 %3499 to i64
  store i64 %3500, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40e6fa, %struct.Memory** %MEMORY
  %loadMem_40e6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 9
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 15
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %RBP.i11
  %3511 = sub i64 %3510, 8
  %3512 = load i64, i64* %PC.i10
  %3513 = add i64 %3512, 3
  store i64 %3513, i64* %PC.i10
  %3514 = inttoptr i64 %3511 to i32*
  %3515 = load i32, i32* %3514
  %3516 = zext i32 %3515 to i64
  store i64 %3516, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40e6fd, %struct.Memory** %MEMORY
  %loadMem1_40e700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 33
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %PC.i9
  %3521 = add i64 %3520, 192
  %3522 = load i64, i64* %PC.i9
  %3523 = add i64 %3522, 5
  %3524 = load i64, i64* %PC.i9
  %3525 = add i64 %3524, 5
  store i64 %3525, i64* %PC.i9
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3527 = load i64, i64* %3526, align 8
  %3528 = add i64 %3527, -8
  %3529 = inttoptr i64 %3528 to i64*
  store i64 %3523, i64* %3529
  store i64 %3528, i64* %3526, align 8
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3521, i64* %3530, align 8
  store %struct.Memory* %loadMem1_40e700, %struct.Memory** %MEMORY
  %loadMem2_40e700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e700 = load i64, i64* %3
  %call2_40e700 = call %struct.Memory* @sub_40e7c0.play_move_no_history(%struct.State* %0, i64 %loadPC_40e700, %struct.Memory* %loadMem2_40e700)
  store %struct.Memory* %call2_40e700, %struct.Memory** %MEMORY
  %loadMem_40e705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 1
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %PC.i7
  %3538 = add i64 %3537, 7
  store i64 %3538, i64* %PC.i7
  %3539 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %3540 = zext i32 %3539 to i64
  store i64 %3540, i64* %RAX.i8, align 8
  store %struct.Memory* %loadMem_40e705, %struct.Memory** %MEMORY
  %loadMem_40e70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 1
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3546 to i64*
  %3547 = load i64, i64* %RAX.i
  %3548 = load i64, i64* %PC.i6
  %3549 = add i64 %3548, 3
  store i64 %3549, i64* %PC.i6
  %3550 = trunc i64 %3547 to i32
  %3551 = add i32 1, %3550
  %3552 = zext i32 %3551 to i64
  store i64 %3552, i64* %RAX.i, align 8
  %3553 = icmp ult i32 %3551, %3550
  %3554 = icmp ult i32 %3551, 1
  %3555 = or i1 %3553, %3554
  %3556 = zext i1 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3556, i8* %3557, align 1
  %3558 = and i32 %3551, 255
  %3559 = call i32 @llvm.ctpop.i32(i32 %3558)
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = xor i8 %3561, 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3562, i8* %3563, align 1
  %3564 = xor i64 1, %3547
  %3565 = trunc i64 %3564 to i32
  %3566 = xor i32 %3565, %3551
  %3567 = lshr i32 %3566, 4
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3569, i8* %3570, align 1
  %3571 = icmp eq i32 %3551, 0
  %3572 = zext i1 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3572, i8* %3573, align 1
  %3574 = lshr i32 %3551, 31
  %3575 = trunc i32 %3574 to i8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3575, i8* %3576, align 1
  %3577 = lshr i32 %3550, 31
  %3578 = xor i32 %3574, %3577
  %3579 = add i32 %3578, %3574
  %3580 = icmp eq i32 %3579, 2
  %3581 = zext i1 %3580 to i8
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3581, i8* %3582, align 1
  store %struct.Memory* %loadMem_40e70c, %struct.Memory** %MEMORY
  %loadMem_40e70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 1
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3588 to i32*
  %3589 = load i32, i32* %EAX.i
  %3590 = zext i32 %3589 to i64
  %3591 = load i64, i64* %PC.i5
  %3592 = add i64 %3591, 7
  store i64 %3592, i64* %PC.i5
  store i32 %3589, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  store %struct.Memory* %loadMem_40e70f, %struct.Memory** %MEMORY
  %loadMem_40e716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 13
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RSP.i
  %3600 = load i64, i64* %PC.i4
  %3601 = add i64 %3600, 7
  store i64 %3601, i64* %PC.i4
  %3602 = add i64 560, %3599
  store i64 %3602, i64* %RSP.i, align 8
  %3603 = icmp ult i64 %3602, %3599
  %3604 = icmp ult i64 %3602, 560
  %3605 = or i1 %3603, %3604
  %3606 = zext i1 %3605 to i8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3606, i8* %3607, align 1
  %3608 = trunc i64 %3602 to i32
  %3609 = and i32 %3608, 255
  %3610 = call i32 @llvm.ctpop.i32(i32 %3609)
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  %3613 = xor i8 %3612, 1
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3613, i8* %3614, align 1
  %3615 = xor i64 560, %3599
  %3616 = xor i64 %3615, %3602
  %3617 = lshr i64 %3616, 4
  %3618 = trunc i64 %3617 to i8
  %3619 = and i8 %3618, 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3619, i8* %3620, align 1
  %3621 = icmp eq i64 %3602, 0
  %3622 = zext i1 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3622, i8* %3623, align 1
  %3624 = lshr i64 %3602, 63
  %3625 = trunc i64 %3624 to i8
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3625, i8* %3626, align 1
  %3627 = lshr i64 %3599, 63
  %3628 = xor i64 %3624, %3627
  %3629 = add i64 %3628, %3624
  %3630 = icmp eq i64 %3629, 2
  %3631 = zext i1 %3630 to i8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3631, i8* %3632, align 1
  store %struct.Memory* %loadMem_40e716, %struct.Memory** %MEMORY
  %loadMem_40e71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 15
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3638 to i64*
  %3639 = load i64, i64* %PC.i2
  %3640 = add i64 %3639, 1
  store i64 %3640, i64* %PC.i2
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3642 = load i64, i64* %3641, align 8
  %3643 = add i64 %3642, 8
  %3644 = inttoptr i64 %3642 to i64*
  %3645 = load i64, i64* %3644
  store i64 %3645, i64* %RBP.i3, align 8
  store i64 %3643, i64* %3641, align 8
  store %struct.Memory* %loadMem_40e71d, %struct.Memory** %MEMORY
  %loadMem_40e71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3648 to i64*
  %3649 = load i64, i64* %PC.i1
  %3650 = add i64 %3649, 1
  store i64 %3650, i64* %PC.i1
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3653 = load i64, i64* %3652, align 8
  %3654 = inttoptr i64 %3653 to i64*
  %3655 = load i64, i64* %3654
  store i64 %3655, i64* %3651, align 8
  %3656 = add i64 %3653, 8
  store i64 %3656, i64* %3652, align 8
  store %struct.Memory* %loadMem_40e71e, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40e71e
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

define %struct.Memory* @routine_subq__0x230___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 560
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 560
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
  %23 = xor i64 560, %9
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

define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40e334(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40e3a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x39c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 924, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 464
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

define %struct.Memory* @routine_movq__rdx__MINUS0x1d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 472
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

define %struct.Memory* @routine_movl_MINUS0x1d0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 464
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 476
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

define %struct.Memory* @routine_movq_MINUS0x1d8__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x1e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 480
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

define %struct.Memory* @routine_movl_MINUS0x1dc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 476
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1e0__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 480
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 1
  %16 = icmp ult i32 %14, 1
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
  %25 = xor i32 %14, 1
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

define %struct.Memory* @routine_je_.L_40e3b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40e3be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40e42f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x39d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 925, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a466___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a466_type* @G__0x57a466 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x1f0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x1f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 504
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40e45b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 421
  %16 = icmp ult i32 %14, 421
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
  %25 = xor i32 %14, 421
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

define %struct.Memory* @routine_jae_.L_40e460(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_je_.L_40e460(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40e4d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x39e___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 926, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a487___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a487_type* @G__0x57a487 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x208__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x20c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 524
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x208__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x210__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 528
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 524
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x210__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 528
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40e4f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40e4f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40e566(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x39f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 927, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4aa___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4aa_type* @G__0x57a4aa to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x220__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x220__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x228__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 552
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x228__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 552
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1f4__0xb4bce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %9 = sub i32 %8, 500
  %10 = icmp ult i32 %8, 500
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 500
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_40e6c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb89e60___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1a5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 421, i64* %RAX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x1c0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x33__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 51, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb6eec4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb38cb0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb8c040___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1cc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.replay_move_history(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb06700___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb06700_type* @G__0xb06700 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8b85c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8b85c_type* @G_0xb8b85c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8af18(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8af18_type* @G_0xb8af18 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8af20(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8af20_type* @G_0xb8af20 to i32*)
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb4bce0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
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

define %struct.Memory* @routine_jge_.L_40e66e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb8b870___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 12105840
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_movslq__edx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0xb8b870___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 12105840
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xafc510___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11519248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0xafc510___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11519248
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_40e61a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb89e60___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1c0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb4bce0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0xb4bce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb6eec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb38cb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8c040(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xb4bce0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8b870___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 12105840
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_movl__eax__0xafc510___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11519248
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb4bce0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb4bce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb4bce0_type* @G_0xb4bce0 to i32*)
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

define %struct.Memory* @routine_callq_.play_move_no_history(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xafdfb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x230___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 560, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 560
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
  %25 = xor i64 560, %9
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
