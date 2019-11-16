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
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xad1720_type = type <{ [4 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57eec5_type = type <{ [8 x i8] }>
%G__0x57f0c2_type = type <{ [8 x i8] }>
%G__0x57f0de_type = type <{ [8 x i8] }>
%G__0xad1730_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xad1720 = global %G_0xad1720_type zeroinitializer
@G_0xafdfb0 = global %G_0xafdfb0_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57eec5 = global %G__0x57eec5_type zeroinitializer
@G__0x57f0c2 = global %G__0x57f0c2_type zeroinitializer
@G__0x57f0de = global %G__0x57f0de_type zeroinitializer
@G__0xad1730 = global %G__0xad1730_type zeroinitializer

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

declare %struct.Memory* @sub_44fa70.purge_persistent_owl_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415cb0.mark_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_450820.print_persistent_owl_cache_entry(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @store_persistent_owl_cache(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_44feb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_44feb0, %struct.Memory** %MEMORY
  %loadMem_44feb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i971 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i972 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i971
  %27 = load i64, i64* %PC.i970
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i970
  store i64 %26, i64* %RBP.i972, align 8
  store %struct.Memory* %loadMem_44feb1, %struct.Memory** %MEMORY
  %loadMem_44feb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i969 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i969
  %36 = load i64, i64* %PC.i968
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i968
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_44feb4, %struct.Memory** %MEMORY
  %loadMem_44feb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i967 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i967
  %49 = load i64, i64* %PC.i966
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i966
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_44feb6, %struct.Memory** %MEMORY
  %loadMem_44feb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i965 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i965
  %62 = load i64, i64* %PC.i964
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i964
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_44feb8, %struct.Memory** %MEMORY
  %loadMem_44feb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RSP.i963 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %RSP.i963
  %75 = load i64, i64* %PC.i962
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i962
  %77 = sub i64 %74, 1192
  store i64 %77, i64* %RSP.i963, align 8
  %78 = icmp ult i64 %74, 1192
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
  %88 = xor i64 1192, %74
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
  store %struct.Memory* %loadMem_44feb9, %struct.Memory** %MEMORY
  %loadMem_44fec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RAX.i960 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i961 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i961
  %116 = add i64 %115, 48
  %117 = load i64, i64* %PC.i959
  %118 = add i64 %117, 3
  store i64 %118, i64* %PC.i959
  %119 = inttoptr i64 %116 to i32*
  %120 = load i32, i32* %119
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX.i960, align 8
  store %struct.Memory* %loadMem_44fec0, %struct.Memory** %MEMORY
  %loadMem_44fec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 21
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %R10.i958 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i957
  %132 = add i64 %131, 40
  %133 = load i64, i64* %PC.i956
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC.i956
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %R10.i958, align 8
  store %struct.Memory* %loadMem_44fec3, %struct.Memory** %MEMORY
  %loadMem_44fec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 23
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %R11D.i954 = bitcast %union.anon* %142 to i32*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i955 = bitcast %union.anon* %145 to i64*
  %146 = bitcast i32* %R11D.i954 to i64*
  %147 = load i64, i64* %RBP.i955
  %148 = add i64 %147, 32
  %149 = load i64, i64* %PC.i953
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC.i953
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %146, align 8
  store %struct.Memory* %loadMem_44fec7, %struct.Memory** %MEMORY
  %loadMem_44fecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBX.i951 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i952 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i952
  %164 = add i64 %163, 24
  %165 = load i64, i64* %PC.i950
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC.i950
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RBX.i951, align 8
  store %struct.Memory* %loadMem_44fecb, %struct.Memory** %MEMORY
  %loadMem_44fece = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 29
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %R14D.i948 = bitcast %union.anon* %175 to i32*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i949 = bitcast %union.anon* %178 to i64*
  %179 = bitcast i32* %R14D.i948 to i64*
  %180 = load i64, i64* %RBP.i949
  %181 = add i64 %180, 16
  %182 = load i64, i64* %PC.i947
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC.i947
  %184 = inttoptr i64 %181 to i32*
  %185 = load i32, i32* %184
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %179, align 8
  store %struct.Memory* %loadMem_44fece, %struct.Memory** %MEMORY
  %loadMem_44fed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 31
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %R15D.i946 = bitcast %union.anon* %192 to i32*
  %193 = bitcast i32* %R15D.i946 to i64*
  %194 = load i64, i64* %PC.i945
  %195 = add i64 %194, 6
  store i64 %195, i64* %PC.i945
  store i64 3, i64* %193, align 8
  store %struct.Memory* %loadMem_44fed2, %struct.Memory** %MEMORY
  %loadMem_44fed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 11
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %201 to i32*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i944 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i944
  %206 = sub i64 %205, 28
  %207 = load i32, i32* %EDI.i
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC.i943
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC.i943
  %211 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %211
  store %struct.Memory* %loadMem_44fed8, %struct.Memory** %MEMORY
  %loadMem_44fedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 9
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %217 to i32*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i942 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i942
  %222 = sub i64 %221, 32
  %223 = load i32, i32* %ESI.i
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC.i941
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC.i941
  %227 = inttoptr i64 %222 to i32*
  store i32 %223, i32* %227
  store %struct.Memory* %loadMem_44fedb, %struct.Memory** %MEMORY
  %loadMem_44fede = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %EDX.i939 = bitcast %union.anon* %233 to i32*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 15
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RBP.i940 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RBP.i940
  %238 = sub i64 %237, 36
  %239 = load i32, i32* %EDX.i939
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %PC.i938
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC.i938
  %243 = inttoptr i64 %238 to i32*
  store i32 %239, i32* %243
  store %struct.Memory* %loadMem_44fede, %struct.Memory** %MEMORY
  %loadMem_44fee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %ECX.i936 = bitcast %union.anon* %249 to i32*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i937
  %254 = sub i64 %253, 40
  %255 = load i32, i32* %ECX.i936
  %256 = zext i32 %255 to i64
  %257 = load i64, i64* %PC.i935
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i935
  %259 = inttoptr i64 %254 to i32*
  store i32 %255, i32* %259
  store %struct.Memory* %loadMem_44fee1, %struct.Memory** %MEMORY
  %loadMem_44fee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 17
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %R8D.i933 = bitcast %union.anon* %265 to i32*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 15
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RBP.i934 = bitcast %union.anon* %268 to i64*
  %269 = load i64, i64* %RBP.i934
  %270 = sub i64 %269, 44
  %271 = load i32, i32* %R8D.i933
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %PC.i932
  %274 = add i64 %273, 4
  store i64 %274, i64* %PC.i932
  %275 = inttoptr i64 %270 to i32*
  store i32 %271, i32* %275
  store %struct.Memory* %loadMem_44fee4, %struct.Memory** %MEMORY
  %loadMem_44fee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 19
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %281 to i32*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i931
  %286 = sub i64 %285, 48
  %287 = load i32, i32* %R9D.i
  %288 = zext i32 %287 to i64
  %289 = load i64, i64* %PC.i930
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC.i930
  %291 = inttoptr i64 %286 to i32*
  store i32 %287, i32* %291
  store %struct.Memory* %loadMem_44fee8, %struct.Memory** %MEMORY
  %loadMem_44feec = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 29
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %297 to i32*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 15
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %300 to i64*
  %301 = load i64, i64* %RBP.i929
  %302 = sub i64 %301, 52
  %303 = load i32, i32* %R14D.i
  %304 = zext i32 %303 to i64
  %305 = load i64, i64* %PC.i928
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC.i928
  %307 = inttoptr i64 %302 to i32*
  store i32 %303, i32* %307
  store %struct.Memory* %loadMem_44feec, %struct.Memory** %MEMORY
  %loadMem_44fef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %313 to i32*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 15
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %RBP.i927
  %318 = sub i64 %317, 56
  %319 = load i32, i32* %EBX.i
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC.i926
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC.i926
  %323 = inttoptr i64 %318 to i32*
  store i32 %319, i32* %323
  store %struct.Memory* %loadMem_44fef0, %struct.Memory** %MEMORY
  %loadMem_44fef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 23
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %329 to i32*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 15
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %RBP.i925
  %334 = sub i64 %333, 60
  %335 = load i32, i32* %R11D.i
  %336 = zext i32 %335 to i64
  %337 = load i64, i64* %PC.i924
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC.i924
  %339 = inttoptr i64 %334 to i32*
  store i32 %335, i32* %339
  store %struct.Memory* %loadMem_44fef3, %struct.Memory** %MEMORY
  %loadMem_44fef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 21
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %R10.i = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i923
  %350 = sub i64 %349, 72
  %351 = load i64, i64* %R10.i
  %352 = load i64, i64* %PC.i922
  %353 = add i64 %352, 4
  store i64 %353, i64* %PC.i922
  %354 = inttoptr i64 %350 to i64*
  store i64 %351, i64* %354
  store %struct.Memory* %loadMem_44fef7, %struct.Memory** %MEMORY
  %loadMem_44fefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %EAX.i920 = bitcast %union.anon* %360 to i32*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %363 to i64*
  %364 = load i64, i64* %RBP.i921
  %365 = sub i64 %364, 76
  %366 = load i32, i32* %EAX.i920
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC.i919
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC.i919
  %370 = inttoptr i64 %365 to i32*
  store i32 %366, i32* %370
  store %struct.Memory* %loadMem_44fefb, %struct.Memory** %MEMORY
  %loadMem_44fefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 31
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %R15D.i917 = bitcast %union.anon* %376 to i32*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 15
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RBP.i918 = bitcast %union.anon* %379 to i64*
  %380 = bitcast i32* %R15D.i917 to i64*
  %381 = load i32, i32* %R15D.i917
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %RBP.i918
  %384 = sub i64 %383, 76
  %385 = load i64, i64* %PC.i916
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC.i916
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = sub i32 %381, %388
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %380, align 8
  %391 = icmp ult i32 %381, %388
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %392, i8* %393, align 1
  %394 = and i32 %389, 255
  %395 = call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %398, i8* %399, align 1
  %400 = xor i32 %388, %381
  %401 = xor i32 %400, %389
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %404, i8* %405, align 1
  %406 = icmp eq i32 %389, 0
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %407, i8* %408, align 1
  %409 = lshr i32 %389, 31
  %410 = trunc i32 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %381, 31
  %413 = lshr i32 %388, 31
  %414 = xor i32 %413, %412
  %415 = xor i32 %409, %412
  %416 = add i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %418, i8* %419, align 1
  store %struct.Memory* %loadMem_44fefe, %struct.Memory** %MEMORY
  %loadMem_44ff02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 31
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %425 to i32*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 15
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RBP.i915
  %430 = sub i64 %429, 496
  %431 = load i32, i32* %R15D.i
  %432 = zext i32 %431 to i64
  %433 = load i64, i64* %PC.i914
  %434 = add i64 %433, 7
  store i64 %434, i64* %PC.i914
  %435 = inttoptr i64 %430 to i32*
  store i32 %431, i32* %435
  store %struct.Memory* %loadMem_44ff02, %struct.Memory** %MEMORY
  %loadMem_44ff09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %PC.i913
  %440 = add i64 %439, 8
  store i64 %440, i64* %PC.i913
  %441 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %442, align 1
  %443 = and i32 %441, 255
  %444 = call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %447, i8* %448, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %449, align 1
  %450 = icmp eq i32 %441, 0
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %451, i8* %452, align 1
  %453 = lshr i32 %441, 31
  %454 = trunc i32 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %454, i8* %455, align 1
  %456 = lshr i32 %441, 31
  %457 = xor i32 %453, %456
  %458 = add i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %460, i8* %461, align 1
  store %struct.Memory* %loadMem_44ff09, %struct.Memory** %MEMORY
  %loadMem_44ff11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %PC.i912
  %466 = add i64 %465, 11
  %467 = load i64, i64* %PC.i912
  %468 = add i64 %467, 6
  %469 = load i64, i64* %PC.i912
  %470 = add i64 %469, 6
  store i64 %470, i64* %PC.i912
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %472 = load i8, i8* %471, align 1
  %473 = icmp eq i8 %472, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %BRANCH_TAKEN, align 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %476 = select i1 %473, i64 %466, i64 %468
  store i64 %476, i64* %475, align 8
  store %struct.Memory* %loadMem_44ff11, %struct.Memory** %MEMORY
  %loadBr_44ff11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff11 = icmp eq i8 %loadBr_44ff11, 1
  br i1 %cmpBr_44ff11, label %block_.L_44ff1c, label %block_44ff17

block_44ff17:                                     ; preds = %entry
  %loadMem_44ff17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %479 to i64*
  %480 = load i64, i64* %PC.i911
  %481 = add i64 %480, 45
  %482 = load i64, i64* %PC.i911
  %483 = add i64 %482, 5
  store i64 %483, i64* %PC.i911
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %481, i64* %484, align 8
  store %struct.Memory* %loadMem_44ff17, %struct.Memory** %MEMORY
  br label %block_.L_44ff44

block_.L_44ff1c:                                  ; preds = %entry
  %loadMem_44ff1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 11
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RDI.i910 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %PC.i909
  %492 = add i64 %491, 10
  store i64 %492, i64* %PC.i909
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI.i910, align 8
  store %struct.Memory* %loadMem_44ff1c, %struct.Memory** %MEMORY
  %loadMem_44ff26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 9
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RSI.i908 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %PC.i907
  %500 = add i64 %499, 5
  store i64 %500, i64* %PC.i907
  store i64 722, i64* %RSI.i908, align 8
  store %struct.Memory* %loadMem_44ff26, %struct.Memory** %MEMORY
  %loadMem_44ff2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 7
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RDX.i906 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %PC.i905
  %508 = add i64 %507, 10
  store i64 %508, i64* %PC.i905
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i906, align 8
  store %struct.Memory* %loadMem_44ff2b, %struct.Memory** %MEMORY
  %loadMem_44ff35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RAX.i904 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %PC.i903
  %516 = add i64 %515, 5
  store i64 %516, i64* %PC.i903
  store i64 4294967295, i64* %RAX.i904, align 8
  store %struct.Memory* %loadMem_44ff35, %struct.Memory** %MEMORY
  %loadMem_44ff3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %EAX.i901 = bitcast %union.anon* %522 to i32*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 5
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RCX.i902 = bitcast %union.anon* %525 to i64*
  %526 = load i32, i32* %EAX.i901
  %527 = zext i32 %526 to i64
  %528 = load i64, i64* %PC.i900
  %529 = add i64 %528, 2
  store i64 %529, i64* %PC.i900
  %530 = and i64 %527, 4294967295
  store i64 %530, i64* %RCX.i902, align 8
  store %struct.Memory* %loadMem_44ff3a, %struct.Memory** %MEMORY
  %loadMem_44ff3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %EAX.i899 = bitcast %union.anon* %536 to i32*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 17
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %539 to i32*
  %540 = bitcast i32* %R8D.i to i64*
  %541 = load i32, i32* %EAX.i899
  %542 = zext i32 %541 to i64
  %543 = load i64, i64* %PC.i898
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC.i898
  %545 = and i64 %542, 4294967295
  store i64 %545, i64* %540, align 8
  store %struct.Memory* %loadMem_44ff3c, %struct.Memory** %MEMORY
  %loadMem1_44ff3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %PC.i897
  %550 = add i64 %549, 8529
  %551 = load i64, i64* %PC.i897
  %552 = add i64 %551, 5
  %553 = load i64, i64* %PC.i897
  %554 = add i64 %553, 5
  store i64 %554, i64* %PC.i897
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = add i64 %556, -8
  %558 = inttoptr i64 %557 to i64*
  store i64 %552, i64* %558
  store i64 %557, i64* %555, align 8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %550, i64* %559, align 8
  store %struct.Memory* %loadMem1_44ff3f, %struct.Memory** %MEMORY
  %loadMem2_44ff3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ff3f = load i64, i64* %3
  %call2_44ff3f = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_44ff3f, %struct.Memory* %loadMem2_44ff3f)
  store %struct.Memory* %call2_44ff3f, %struct.Memory** %MEMORY
  br label %block_.L_44ff44

block_.L_44ff44:                                  ; preds = %block_.L_44ff1c, %block_44ff17
  %loadMem_44ff44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %PC.i896
  %564 = add i64 %563, 11
  store i64 %564, i64* %PC.i896
  %565 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %566 = sub i32 %565, 150
  %567 = icmp ult i32 %565, 150
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %568, i8* %569, align 1
  %570 = and i32 %566, 255
  %571 = call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %574, i8* %575, align 1
  %576 = xor i32 %565, 150
  %577 = xor i32 %576, %566
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %580, i8* %581, align 1
  %582 = icmp eq i32 %566, 0
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %583, i8* %584, align 1
  %585 = lshr i32 %566, 31
  %586 = trunc i32 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %586, i8* %587, align 1
  %588 = lshr i32 %565, 31
  %589 = xor i32 %585, %588
  %590 = add i32 %589, %588
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %592, i8* %593, align 1
  store %struct.Memory* %loadMem_44ff44, %struct.Memory** %MEMORY
  %loadMem_44ff4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %PC.i895
  %598 = add i64 %597, 11
  %599 = load i64, i64* %PC.i895
  %600 = add i64 %599, 6
  %601 = load i64, i64* %PC.i895
  %602 = add i64 %601, 6
  store i64 %602, i64* %PC.i895
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %604 = load i8, i8* %603, align 1
  %605 = icmp eq i8 %604, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %BRANCH_TAKEN, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %608 = select i1 %605, i64 %598, i64 %600
  store i64 %608, i64* %607, align 8
  store %struct.Memory* %loadMem_44ff4f, %struct.Memory** %MEMORY
  %loadBr_44ff4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff4f = icmp eq i8 %loadBr_44ff4f, 1
  br i1 %cmpBr_44ff4f, label %block_.L_44ff5a, label %block_44ff55

block_44ff55:                                     ; preds = %block_.L_44ff44
  %loadMem1_44ff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %611 to i64*
  %612 = load i64, i64* %PC.i894
  %613 = add i64 %612, -1253
  %614 = load i64, i64* %PC.i894
  %615 = add i64 %614, 5
  %616 = load i64, i64* %PC.i894
  %617 = add i64 %616, 5
  store i64 %617, i64* %PC.i894
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = add i64 %619, -8
  %621 = inttoptr i64 %620 to i64*
  store i64 %615, i64* %621
  store i64 %620, i64* %618, align 8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %613, i64* %622, align 8
  store %struct.Memory* %loadMem1_44ff55, %struct.Memory** %MEMORY
  %loadMem2_44ff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ff55 = load i64, i64* %3
  %call2_44ff55 = call %struct.Memory* @sub_44fa70.purge_persistent_owl_cache(%struct.State* %0, i64 %loadPC_44ff55, %struct.Memory* %loadMem2_44ff55)
  store %struct.Memory* %call2_44ff55, %struct.Memory** %MEMORY
  br label %block_.L_44ff5a

block_.L_44ff5a:                                  ; preds = %block_44ff55, %block_.L_44ff44
  %loadMem_44ff5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %PC.i893
  %627 = add i64 %626, 11
  store i64 %627, i64* %PC.i893
  %628 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %629 = sub i32 %628, 150
  %630 = icmp ult i32 %628, 150
  %631 = zext i1 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %631, i8* %632, align 1
  %633 = and i32 %629, 255
  %634 = call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %637, i8* %638, align 1
  %639 = xor i32 %628, 150
  %640 = xor i32 %639, %629
  %641 = lshr i32 %640, 4
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %643, i8* %644, align 1
  %645 = icmp eq i32 %629, 0
  %646 = zext i1 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %646, i8* %647, align 1
  %648 = lshr i32 %629, 31
  %649 = trunc i32 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %649, i8* %650, align 1
  %651 = lshr i32 %628, 31
  %652 = xor i32 %648, %651
  %653 = add i32 %652, %651
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %655, i8* %656, align 1
  store %struct.Memory* %loadMem_44ff5a, %struct.Memory** %MEMORY
  %loadMem_44ff65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %PC.i892
  %661 = add i64 %660, 60
  %662 = load i64, i64* %PC.i892
  %663 = add i64 %662, 6
  %664 = load i64, i64* %PC.i892
  %665 = add i64 %664, 6
  store i64 %665, i64* %PC.i892
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %667 = load i8, i8* %666, align 1
  %668 = icmp eq i8 %667, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %BRANCH_TAKEN, align 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %671 = select i1 %668, i64 %661, i64 %663
  store i64 %671, i64* %670, align 8
  store %struct.Memory* %loadMem_44ff65, %struct.Memory** %MEMORY
  %loadBr_44ff65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff65 = icmp eq i8 %loadBr_44ff65, 1
  br i1 %cmpBr_44ff65, label %block_.L_44ffa1, label %block_44ff6b

block_44ff6b:                                     ; preds = %block_.L_44ff5a
  %loadMem_44ff6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RAX.i891 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %PC.i890
  %679 = add i64 %678, 7
  store i64 %679, i64* %PC.i890
  %680 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX.i891, align 8
  store %struct.Memory* %loadMem_44ff6b, %struct.Memory** %MEMORY
  %loadMem_44ff72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 1
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RAX.i889
  %689 = load i64, i64* %PC.i888
  %690 = add i64 %689, 5
  store i64 %690, i64* %PC.i888
  %691 = and i64 4096, %688
  %692 = trunc i64 %691 to i32
  store i64 %691, i64* %RAX.i889, align 8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %693, align 1
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %694, align 1
  %695 = icmp eq i32 %692, 0
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %696, i8* %697, align 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %698, align 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %699, align 1
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %700, align 1
  store %struct.Memory* %loadMem_44ff72, %struct.Memory** %MEMORY
  %loadMem_44ff77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %EAX.i887 = bitcast %union.anon* %706 to i32*
  %707 = load i32, i32* %EAX.i887
  %708 = zext i32 %707 to i64
  %709 = load i64, i64* %PC.i886
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC.i886
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %711, align 1
  %712 = and i32 %707, 255
  %713 = call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %716, i8* %717, align 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %718, align 1
  %719 = icmp eq i32 %707, 0
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %720, i8* %721, align 1
  %722 = lshr i32 %707, 31
  %723 = trunc i32 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %723, i8* %724, align 1
  %725 = lshr i32 %707, 31
  %726 = xor i32 %722, %725
  %727 = add i32 %726, %725
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %729, i8* %730, align 1
  store %struct.Memory* %loadMem_44ff77, %struct.Memory** %MEMORY
  %loadMem_44ff7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %PC.i885
  %735 = add i64 %734, 11
  %736 = load i64, i64* %PC.i885
  %737 = add i64 %736, 6
  %738 = load i64, i64* %PC.i885
  %739 = add i64 %738, 6
  store i64 %739, i64* %PC.i885
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %741 = load i8, i8* %740, align 1
  %742 = icmp eq i8 %741, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %BRANCH_TAKEN, align 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %745 = select i1 %742, i64 %735, i64 %737
  store i64 %745, i64* %744, align 8
  store %struct.Memory* %loadMem_44ff7a, %struct.Memory** %MEMORY
  %loadBr_44ff7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff7a = icmp eq i8 %loadBr_44ff7a, 1
  br i1 %cmpBr_44ff7a, label %block_.L_44ff85, label %block_44ff80

block_44ff80:                                     ; preds = %block_44ff6b
  %loadMem_44ff80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %PC.i884
  %750 = add i64 %749, 28
  %751 = load i64, i64* %PC.i884
  %752 = add i64 %751, 5
  store i64 %752, i64* %PC.i884
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %750, i64* %753, align 8
  store %struct.Memory* %loadMem_44ff80, %struct.Memory** %MEMORY
  br label %block_.L_44ff9c

block_.L_44ff85:                                  ; preds = %block_44ff6b
  %loadMem_44ff85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 11
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RDI.i883 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %PC.i882
  %761 = add i64 %760, 10
  store i64 %761, i64* %PC.i882
  store i64 ptrtoint (%G__0x57f0c2_type* @G__0x57f0c2 to i64), i64* %RDI.i883, align 8
  store %struct.Memory* %loadMem_44ff85, %struct.Memory** %MEMORY
  %loadMem_44ff8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %768 = bitcast %union.anon* %767 to %struct.anon.2*
  %AL.i881 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %768, i32 0, i32 0
  %769 = load i64, i64* %PC.i880
  %770 = add i64 %769, 2
  store i64 %770, i64* %PC.i880
  store i8 0, i8* %AL.i881, align 1
  store %struct.Memory* %loadMem_44ff8f, %struct.Memory** %MEMORY
  %loadMem1_44ff91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %PC.i879
  %775 = add i64 %774, 7711
  %776 = load i64, i64* %PC.i879
  %777 = add i64 %776, 5
  %778 = load i64, i64* %PC.i879
  %779 = add i64 %778, 5
  store i64 %779, i64* %PC.i879
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = add i64 %781, -8
  %783 = inttoptr i64 %782 to i64*
  store i64 %777, i64* %783
  store i64 %782, i64* %780, align 8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %775, i64* %784, align 8
  store %struct.Memory* %loadMem1_44ff91, %struct.Memory** %MEMORY
  %loadMem2_44ff91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ff91 = load i64, i64* %3
  %call2_44ff91 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_44ff91, %struct.Memory* %loadMem2_44ff91)
  store %struct.Memory* %call2_44ff91, %struct.Memory** %MEMORY
  %loadMem_44ff96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 1
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %EAX.i877 = bitcast %union.anon* %790 to i32*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 15
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %RBP.i878
  %795 = sub i64 %794, 1200
  %796 = load i32, i32* %EAX.i877
  %797 = zext i32 %796 to i64
  %798 = load i64, i64* %PC.i876
  %799 = add i64 %798, 6
  store i64 %799, i64* %PC.i876
  %800 = inttoptr i64 %795 to i32*
  store i32 %796, i32* %800
  store %struct.Memory* %loadMem_44ff96, %struct.Memory** %MEMORY
  br label %block_.L_44ff9c

block_.L_44ff9c:                                  ; preds = %block_.L_44ff85, %block_44ff80
  %loadMem_44ff9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %PC.i875
  %805 = add i64 %804, 2151
  %806 = load i64, i64* %PC.i875
  %807 = add i64 %806, 5
  store i64 %807, i64* %PC.i875
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %805, i64* %808, align 8
  store %struct.Memory* %loadMem_44ff9c, %struct.Memory** %MEMORY
  br label %block_.L_450803

block_.L_44ffa1:                                  ; preds = %block_.L_44ff5a
  %loadMem_44ffa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 1
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RAX.i874 = bitcast %union.anon* %814 to i64*
  %815 = load i64, i64* %PC.i873
  %816 = add i64 %815, 10
  store i64 %816, i64* %PC.i873
  store i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64* %RAX.i874, align 8
  store %struct.Memory* %loadMem_44ffa1, %struct.Memory** %MEMORY
  %loadMem_44ffab = load %struct.Memory*, %struct.Memory** %MEMORY
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 33
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 5
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %PC.i871
  %824 = add i64 %823, 7
  store i64 %824, i64* %PC.i871
  %825 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RCX.i872, align 8
  store %struct.Memory* %loadMem_44ffab, %struct.Memory** %MEMORY
  %loadMem_44ffb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 7
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RDX.i870 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %PC.i869
  %834 = add i64 %833, 8
  store i64 %834, i64* %PC.i869
  %835 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %836 = sext i32 %835 to i64
  store i64 %836, i64* %RDX.i870, align 8
  store %struct.Memory* %loadMem_44ffb2, %struct.Memory** %MEMORY
  %loadMem_44ffba = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 7
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RDX.i868 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RDX.i868
  %844 = load i64, i64* %PC.i867
  %845 = add i64 %844, 7
  store i64 %845, i64* %PC.i867
  %846 = sext i64 %843 to i128
  %847 = and i128 %846, -18446744073709551616
  %848 = zext i64 %843 to i128
  %849 = or i128 %847, %848
  %850 = mul i128 444, %849
  %851 = trunc i128 %850 to i64
  store i64 %851, i64* %RDX.i868, align 8
  %852 = sext i64 %851 to i128
  %853 = icmp ne i128 %852, %850
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %854, i8* %855, align 1
  %856 = trunc i128 %850 to i32
  %857 = and i32 %856, 255
  %858 = call i32 @llvm.ctpop.i32(i32 %857)
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %861, i8* %862, align 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %863, align 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %864, align 1
  %865 = lshr i64 %851, 63
  %866 = trunc i64 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %866, i8* %867, align 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %854, i8* %868, align 1
  store %struct.Memory* %loadMem_44ffba, %struct.Memory** %MEMORY
  %loadMem_44ffc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 9
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RSI.i866 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RAX.i865
  %879 = load i64, i64* %PC.i864
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC.i864
  store i64 %878, i64* %RSI.i866, align 8
  store %struct.Memory* %loadMem_44ffc1, %struct.Memory** %MEMORY
  %loadMem_44ffc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 7
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RDX.i862 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 9
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RSI.i863 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RSI.i863
  %891 = load i64, i64* %RDX.i862
  %892 = load i64, i64* %PC.i861
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i861
  %894 = add i64 %891, %890
  store i64 %894, i64* %RSI.i863, align 8
  %895 = icmp ult i64 %894, %890
  %896 = icmp ult i64 %894, %891
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %898, i8* %899, align 1
  %900 = trunc i64 %894 to i32
  %901 = and i32 %900, 255
  %902 = call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %905, i8* %906, align 1
  %907 = xor i64 %891, %890
  %908 = xor i64 %907, %894
  %909 = lshr i64 %908, 4
  %910 = trunc i64 %909 to i8
  %911 = and i8 %910, 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %911, i8* %912, align 1
  %913 = icmp eq i64 %894, 0
  %914 = zext i1 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %914, i8* %915, align 1
  %916 = lshr i64 %894, 63
  %917 = trunc i64 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %917, i8* %918, align 1
  %919 = lshr i64 %890, 63
  %920 = lshr i64 %891, 63
  %921 = xor i64 %916, %919
  %922 = xor i64 %916, %920
  %923 = add i64 %921, %922
  %924 = icmp eq i64 %923, 2
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %925, i8* %926, align 1
  store %struct.Memory* %loadMem_44ffc4, %struct.Memory** %MEMORY
  %loadMem_44ffc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 5
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %ECX.i859 = bitcast %union.anon* %932 to i32*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 9
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RSI.i860 = bitcast %union.anon* %935 to i64*
  %936 = load i64, i64* %RSI.i860
  %937 = load i32, i32* %ECX.i859
  %938 = zext i32 %937 to i64
  %939 = load i64, i64* %PC.i858
  %940 = add i64 %939, 2
  store i64 %940, i64* %PC.i858
  %941 = inttoptr i64 %936 to i32*
  store i32 %937, i32* %941
  store %struct.Memory* %loadMem_44ffc7, %struct.Memory** %MEMORY
  %loadMem_44ffc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 5
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RCX.i856 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 15
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %950 to i64*
  %951 = load i64, i64* %RBP.i857
  %952 = sub i64 %951, 28
  %953 = load i64, i64* %PC.i855
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC.i855
  %955 = inttoptr i64 %952 to i32*
  %956 = load i32, i32* %955
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RCX.i856, align 8
  store %struct.Memory* %loadMem_44ffc9, %struct.Memory** %MEMORY
  %loadMem_44ffcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 7
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RDX.i854 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %PC.i853
  %965 = add i64 %964, 8
  store i64 %965, i64* %PC.i853
  %966 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %967 = sext i32 %966 to i64
  store i64 %967, i64* %RDX.i854, align 8
  store %struct.Memory* %loadMem_44ffcc, %struct.Memory** %MEMORY
  %loadMem_44ffd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 7
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RDX.i852 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RDX.i852
  %975 = load i64, i64* %PC.i851
  %976 = add i64 %975, 7
  store i64 %976, i64* %PC.i851
  %977 = sext i64 %974 to i128
  %978 = and i128 %977, -18446744073709551616
  %979 = zext i64 %974 to i128
  %980 = or i128 %978, %979
  %981 = mul i128 444, %980
  %982 = trunc i128 %981 to i64
  store i64 %982, i64* %RDX.i852, align 8
  %983 = sext i64 %982 to i128
  %984 = icmp ne i128 %983, %981
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %985, i8* %986, align 1
  %987 = trunc i128 %981 to i32
  %988 = and i32 %987, 255
  %989 = call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %992, i8* %993, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %994, align 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %995, align 1
  %996 = lshr i64 %982, 63
  %997 = trunc i64 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %997, i8* %998, align 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %985, i8* %999, align 1
  store %struct.Memory* %loadMem_44ffd4, %struct.Memory** %MEMORY
  %loadMem_44ffdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 9
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RSI.i850 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RAX.i849
  %1010 = load i64, i64* %PC.i848
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC.i848
  store i64 %1009, i64* %RSI.i850, align 8
  store %struct.Memory* %loadMem_44ffdb, %struct.Memory** %MEMORY
  %loadMem_44ffde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 7
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 9
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %RSI.i847 = bitcast %union.anon* %1020 to i64*
  %1021 = load i64, i64* %RSI.i847
  %1022 = load i64, i64* %RDX.i846
  %1023 = load i64, i64* %PC.i845
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %PC.i845
  %1025 = add i64 %1022, %1021
  store i64 %1025, i64* %RSI.i847, align 8
  %1026 = icmp ult i64 %1025, %1021
  %1027 = icmp ult i64 %1025, %1022
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1029, i8* %1030, align 1
  %1031 = trunc i64 %1025 to i32
  %1032 = and i32 %1031, 255
  %1033 = call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1036, i8* %1037, align 1
  %1038 = xor i64 %1022, %1021
  %1039 = xor i64 %1038, %1025
  %1040 = lshr i64 %1039, 4
  %1041 = trunc i64 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1042, i8* %1043, align 1
  %1044 = icmp eq i64 %1025, 0
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1045, i8* %1046, align 1
  %1047 = lshr i64 %1025, 63
  %1048 = trunc i64 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1048, i8* %1049, align 1
  %1050 = lshr i64 %1021, 63
  %1051 = lshr i64 %1022, 63
  %1052 = xor i64 %1047, %1050
  %1053 = xor i64 %1047, %1051
  %1054 = add i64 %1052, %1053
  %1055 = icmp eq i64 %1054, 2
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1056, i8* %1057, align 1
  store %struct.Memory* %loadMem_44ffde, %struct.Memory** %MEMORY
  %loadMem_44ffe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 5
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %ECX.i843 = bitcast %union.anon* %1063 to i32*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 9
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RSI.i844 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RSI.i844
  %1068 = add i64 %1067, 412
  %1069 = load i32, i32* %ECX.i843
  %1070 = zext i32 %1069 to i64
  %1071 = load i64, i64* %PC.i842
  %1072 = add i64 %1071, 6
  store i64 %1072, i64* %PC.i842
  %1073 = inttoptr i64 %1068 to i32*
  store i32 %1069, i32* %1073
  store %struct.Memory* %loadMem_44ffe1, %struct.Memory** %MEMORY
  %loadMem_44ffe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 5
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 15
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %RBP.i841
  %1084 = sub i64 %1083, 32
  %1085 = load i64, i64* %PC.i839
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC.i839
  %1087 = inttoptr i64 %1084 to i32*
  %1088 = load i32, i32* %1087
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RCX.i840, align 8
  store %struct.Memory* %loadMem_44ffe7, %struct.Memory** %MEMORY
  %loadMem_44ffea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 7
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RDX.i838 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %PC.i837
  %1097 = add i64 %1096, 8
  store i64 %1097, i64* %PC.i837
  %1098 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RDX.i838, align 8
  store %struct.Memory* %loadMem_44ffea, %struct.Memory** %MEMORY
  %loadMem_44fff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 7
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RDX.i836
  %1107 = load i64, i64* %PC.i835
  %1108 = add i64 %1107, 7
  store i64 %1108, i64* %PC.i835
  %1109 = sext i64 %1106 to i128
  %1110 = and i128 %1109, -18446744073709551616
  %1111 = zext i64 %1106 to i128
  %1112 = or i128 %1110, %1111
  %1113 = mul i128 444, %1112
  %1114 = trunc i128 %1113 to i64
  store i64 %1114, i64* %RDX.i836, align 8
  %1115 = sext i64 %1114 to i128
  %1116 = icmp ne i128 %1115, %1113
  %1117 = zext i1 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1117, i8* %1118, align 1
  %1119 = trunc i128 %1113 to i32
  %1120 = and i32 %1119, 255
  %1121 = call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1124, i8* %1125, align 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1126, align 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1127, align 1
  %1128 = lshr i64 %1114, 63
  %1129 = trunc i64 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1129, i8* %1130, align 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1117, i8* %1131, align 1
  store %struct.Memory* %loadMem_44fff2, %struct.Memory** %MEMORY
  %loadMem_44fff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 9
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RSI.i834 = bitcast %union.anon* %1140 to i64*
  %1141 = load i64, i64* %RAX.i833
  %1142 = load i64, i64* %PC.i832
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC.i832
  store i64 %1141, i64* %RSI.i834, align 8
  store %struct.Memory* %loadMem_44fff9, %struct.Memory** %MEMORY
  %loadMem_44fffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 7
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RDX.i830 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 9
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RSI.i831 = bitcast %union.anon* %1152 to i64*
  %1153 = load i64, i64* %RSI.i831
  %1154 = load i64, i64* %RDX.i830
  %1155 = load i64, i64* %PC.i829
  %1156 = add i64 %1155, 3
  store i64 %1156, i64* %PC.i829
  %1157 = add i64 %1154, %1153
  store i64 %1157, i64* %RSI.i831, align 8
  %1158 = icmp ult i64 %1157, %1153
  %1159 = icmp ult i64 %1157, %1154
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1161, i8* %1162, align 1
  %1163 = trunc i64 %1157 to i32
  %1164 = and i32 %1163, 255
  %1165 = call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1168, i8* %1169, align 1
  %1170 = xor i64 %1154, %1153
  %1171 = xor i64 %1170, %1157
  %1172 = lshr i64 %1171, 4
  %1173 = trunc i64 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1174, i8* %1175, align 1
  %1176 = icmp eq i64 %1157, 0
  %1177 = zext i1 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1177, i8* %1178, align 1
  %1179 = lshr i64 %1157, 63
  %1180 = trunc i64 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1180, i8* %1181, align 1
  %1182 = lshr i64 %1153, 63
  %1183 = lshr i64 %1154, 63
  %1184 = xor i64 %1179, %1182
  %1185 = xor i64 %1179, %1183
  %1186 = add i64 %1184, %1185
  %1187 = icmp eq i64 %1186, 2
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1188, i8* %1189, align 1
  store %struct.Memory* %loadMem_44fffc, %struct.Memory** %MEMORY
  %loadMem_44ffff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 5
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %ECX.i827 = bitcast %union.anon* %1195 to i32*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 9
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RSI.i828 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %RSI.i828
  %1200 = add i64 %1199, 416
  %1201 = load i32, i32* %ECX.i827
  %1202 = zext i32 %1201 to i64
  %1203 = load i64, i64* %PC.i826
  %1204 = add i64 %1203, 6
  store i64 %1204, i64* %PC.i826
  %1205 = inttoptr i64 %1200 to i32*
  store i32 %1201, i32* %1205
  store %struct.Memory* %loadMem_44ffff, %struct.Memory** %MEMORY
  %loadMem_450005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 5
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 15
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RBP.i825
  %1216 = sub i64 %1215, 36
  %1217 = load i64, i64* %PC.i823
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %PC.i823
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_450005, %struct.Memory** %MEMORY
  %loadMem_450008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 7
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RDX.i822 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %PC.i821
  %1229 = add i64 %1228, 8
  store i64 %1229, i64* %PC.i821
  %1230 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1231 = sext i32 %1230 to i64
  store i64 %1231, i64* %RDX.i822, align 8
  store %struct.Memory* %loadMem_450008, %struct.Memory** %MEMORY
  %loadMem_450010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 7
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RDX.i820 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %RDX.i820
  %1239 = load i64, i64* %PC.i819
  %1240 = add i64 %1239, 7
  store i64 %1240, i64* %PC.i819
  %1241 = sext i64 %1238 to i128
  %1242 = and i128 %1241, -18446744073709551616
  %1243 = zext i64 %1238 to i128
  %1244 = or i128 %1242, %1243
  %1245 = mul i128 444, %1244
  %1246 = trunc i128 %1245 to i64
  store i64 %1246, i64* %RDX.i820, align 8
  %1247 = sext i64 %1246 to i128
  %1248 = icmp ne i128 %1247, %1245
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1249, i8* %1250, align 1
  %1251 = trunc i128 %1245 to i32
  %1252 = and i32 %1251, 255
  %1253 = call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1256, i8* %1257, align 1
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1258, align 1
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1259, align 1
  %1260 = lshr i64 %1246, 63
  %1261 = trunc i64 %1260 to i8
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1261, i8* %1262, align 1
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1249, i8* %1263, align 1
  store %struct.Memory* %loadMem_450010, %struct.Memory** %MEMORY
  %loadMem_450017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RAX.i817 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 9
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RSI.i818 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RAX.i817
  %1274 = load i64, i64* %PC.i816
  %1275 = add i64 %1274, 3
  store i64 %1275, i64* %PC.i816
  store i64 %1273, i64* %RSI.i818, align 8
  store %struct.Memory* %loadMem_450017, %struct.Memory** %MEMORY
  %loadMem_45001a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 7
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RDX.i814 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 9
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RSI.i815 = bitcast %union.anon* %1284 to i64*
  %1285 = load i64, i64* %RSI.i815
  %1286 = load i64, i64* %RDX.i814
  %1287 = load i64, i64* %PC.i813
  %1288 = add i64 %1287, 3
  store i64 %1288, i64* %PC.i813
  %1289 = add i64 %1286, %1285
  store i64 %1289, i64* %RSI.i815, align 8
  %1290 = icmp ult i64 %1289, %1285
  %1291 = icmp ult i64 %1289, %1286
  %1292 = or i1 %1290, %1291
  %1293 = zext i1 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1293, i8* %1294, align 1
  %1295 = trunc i64 %1289 to i32
  %1296 = and i32 %1295, 255
  %1297 = call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1300, i8* %1301, align 1
  %1302 = xor i64 %1286, %1285
  %1303 = xor i64 %1302, %1289
  %1304 = lshr i64 %1303, 4
  %1305 = trunc i64 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1306, i8* %1307, align 1
  %1308 = icmp eq i64 %1289, 0
  %1309 = zext i1 %1308 to i8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1309, i8* %1310, align 1
  %1311 = lshr i64 %1289, 63
  %1312 = trunc i64 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i64 %1285, 63
  %1315 = lshr i64 %1286, 63
  %1316 = xor i64 %1311, %1314
  %1317 = xor i64 %1311, %1315
  %1318 = add i64 %1316, %1317
  %1319 = icmp eq i64 %1318, 2
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1320, i8* %1321, align 1
  store %struct.Memory* %loadMem_45001a, %struct.Memory** %MEMORY
  %loadMem_45001d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 5
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %ECX.i811 = bitcast %union.anon* %1327 to i32*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 9
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RSI.i812 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RSI.i812
  %1332 = add i64 %1331, 420
  %1333 = load i32, i32* %ECX.i811
  %1334 = zext i32 %1333 to i64
  %1335 = load i64, i64* %PC.i810
  %1336 = add i64 %1335, 6
  store i64 %1336, i64* %PC.i810
  %1337 = inttoptr i64 %1332 to i32*
  store i32 %1333, i32* %1337
  store %struct.Memory* %loadMem_45001d, %struct.Memory** %MEMORY
  %loadMem_450023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 5
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 15
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1346 to i64*
  %1347 = load i64, i64* %RBP.i809
  %1348 = sub i64 %1347, 40
  %1349 = load i64, i64* %PC.i807
  %1350 = add i64 %1349, 3
  store i64 %1350, i64* %PC.i807
  %1351 = inttoptr i64 %1348 to i32*
  %1352 = load i32, i32* %1351
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RCX.i808, align 8
  store %struct.Memory* %loadMem_450023, %struct.Memory** %MEMORY
  %loadMem_450026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 7
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RDX.i806 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %PC.i805
  %1361 = add i64 %1360, 8
  store i64 %1361, i64* %PC.i805
  %1362 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1363 = sext i32 %1362 to i64
  store i64 %1363, i64* %RDX.i806, align 8
  store %struct.Memory* %loadMem_450026, %struct.Memory** %MEMORY
  %loadMem_45002e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 7
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RDX.i804 = bitcast %union.anon* %1369 to i64*
  %1370 = load i64, i64* %RDX.i804
  %1371 = load i64, i64* %PC.i803
  %1372 = add i64 %1371, 7
  store i64 %1372, i64* %PC.i803
  %1373 = sext i64 %1370 to i128
  %1374 = and i128 %1373, -18446744073709551616
  %1375 = zext i64 %1370 to i128
  %1376 = or i128 %1374, %1375
  %1377 = mul i128 444, %1376
  %1378 = trunc i128 %1377 to i64
  store i64 %1378, i64* %RDX.i804, align 8
  %1379 = sext i64 %1378 to i128
  %1380 = icmp ne i128 %1379, %1377
  %1381 = zext i1 %1380 to i8
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1381, i8* %1382, align 1
  %1383 = trunc i128 %1377 to i32
  %1384 = and i32 %1383, 255
  %1385 = call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1388, i8* %1389, align 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1390, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1391, align 1
  %1392 = lshr i64 %1378, 63
  %1393 = trunc i64 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1393, i8* %1394, align 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1381, i8* %1395, align 1
  store %struct.Memory* %loadMem_45002e, %struct.Memory** %MEMORY
  %loadMem_450035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 1
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 9
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RSI.i802 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %RAX.i801
  %1406 = load i64, i64* %PC.i800
  %1407 = add i64 %1406, 3
  store i64 %1407, i64* %PC.i800
  store i64 %1405, i64* %RSI.i802, align 8
  store %struct.Memory* %loadMem_450035, %struct.Memory** %MEMORY
  %loadMem_450038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 7
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RDX.i798 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 9
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RSI.i799 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %RSI.i799
  %1418 = load i64, i64* %RDX.i798
  %1419 = load i64, i64* %PC.i797
  %1420 = add i64 %1419, 3
  store i64 %1420, i64* %PC.i797
  %1421 = add i64 %1418, %1417
  store i64 %1421, i64* %RSI.i799, align 8
  %1422 = icmp ult i64 %1421, %1417
  %1423 = icmp ult i64 %1421, %1418
  %1424 = or i1 %1422, %1423
  %1425 = zext i1 %1424 to i8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1425, i8* %1426, align 1
  %1427 = trunc i64 %1421 to i32
  %1428 = and i32 %1427, 255
  %1429 = call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1432, i8* %1433, align 1
  %1434 = xor i64 %1418, %1417
  %1435 = xor i64 %1434, %1421
  %1436 = lshr i64 %1435, 4
  %1437 = trunc i64 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1438, i8* %1439, align 1
  %1440 = icmp eq i64 %1421, 0
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i64 %1421, 63
  %1444 = trunc i64 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1444, i8* %1445, align 1
  %1446 = lshr i64 %1417, 63
  %1447 = lshr i64 %1418, 63
  %1448 = xor i64 %1443, %1446
  %1449 = xor i64 %1443, %1447
  %1450 = add i64 %1448, %1449
  %1451 = icmp eq i64 %1450, 2
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1452, i8* %1453, align 1
  store %struct.Memory* %loadMem_450038, %struct.Memory** %MEMORY
  %loadMem_45003b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 5
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %ECX.i795 = bitcast %union.anon* %1459 to i32*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 9
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RSI.i796 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RSI.i796
  %1464 = add i64 %1463, 424
  %1465 = load i32, i32* %ECX.i795
  %1466 = zext i32 %1465 to i64
  %1467 = load i64, i64* %PC.i794
  %1468 = add i64 %1467, 6
  store i64 %1468, i64* %PC.i794
  %1469 = inttoptr i64 %1464 to i32*
  store i32 %1465, i32* %1469
  store %struct.Memory* %loadMem_45003b, %struct.Memory** %MEMORY
  %loadMem_450041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 5
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RBP.i793
  %1480 = sub i64 %1479, 44
  %1481 = load i64, i64* %PC.i791
  %1482 = add i64 %1481, 3
  store i64 %1482, i64* %PC.i791
  %1483 = inttoptr i64 %1480 to i32*
  %1484 = load i32, i32* %1483
  %1485 = zext i32 %1484 to i64
  store i64 %1485, i64* %RCX.i792, align 8
  store %struct.Memory* %loadMem_450041, %struct.Memory** %MEMORY
  %loadMem_450044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 7
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RDX.i790 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %PC.i789
  %1493 = add i64 %1492, 8
  store i64 %1493, i64* %PC.i789
  %1494 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1495 = sext i32 %1494 to i64
  store i64 %1495, i64* %RDX.i790, align 8
  store %struct.Memory* %loadMem_450044, %struct.Memory** %MEMORY
  %loadMem_45004c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 7
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RDX.i788 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RDX.i788
  %1503 = load i64, i64* %PC.i787
  %1504 = add i64 %1503, 7
  store i64 %1504, i64* %PC.i787
  %1505 = sext i64 %1502 to i128
  %1506 = and i128 %1505, -18446744073709551616
  %1507 = zext i64 %1502 to i128
  %1508 = or i128 %1506, %1507
  %1509 = mul i128 444, %1508
  %1510 = trunc i128 %1509 to i64
  store i64 %1510, i64* %RDX.i788, align 8
  %1511 = sext i64 %1510 to i128
  %1512 = icmp ne i128 %1511, %1509
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1513, i8* %1514, align 1
  %1515 = trunc i128 %1509 to i32
  %1516 = and i32 %1515, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1522, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1523, align 1
  %1524 = lshr i64 %1510, 63
  %1525 = trunc i64 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1525, i8* %1526, align 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1513, i8* %1527, align 1
  store %struct.Memory* %loadMem_45004c, %struct.Memory** %MEMORY
  %loadMem_450053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 9
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RSI.i786 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RAX.i785
  %1538 = load i64, i64* %PC.i784
  %1539 = add i64 %1538, 3
  store i64 %1539, i64* %PC.i784
  store i64 %1537, i64* %RSI.i786, align 8
  store %struct.Memory* %loadMem_450053, %struct.Memory** %MEMORY
  %loadMem_450056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 7
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RDX.i782 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 9
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RSI.i783 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RSI.i783
  %1550 = load i64, i64* %RDX.i782
  %1551 = load i64, i64* %PC.i781
  %1552 = add i64 %1551, 3
  store i64 %1552, i64* %PC.i781
  %1553 = add i64 %1550, %1549
  store i64 %1553, i64* %RSI.i783, align 8
  %1554 = icmp ult i64 %1553, %1549
  %1555 = icmp ult i64 %1553, %1550
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1557, i8* %1558, align 1
  %1559 = trunc i64 %1553 to i32
  %1560 = and i32 %1559, 255
  %1561 = call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1564, i8* %1565, align 1
  %1566 = xor i64 %1550, %1549
  %1567 = xor i64 %1566, %1553
  %1568 = lshr i64 %1567, 4
  %1569 = trunc i64 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1570, i8* %1571, align 1
  %1572 = icmp eq i64 %1553, 0
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1573, i8* %1574, align 1
  %1575 = lshr i64 %1553, 63
  %1576 = trunc i64 %1575 to i8
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1576, i8* %1577, align 1
  %1578 = lshr i64 %1549, 63
  %1579 = lshr i64 %1550, 63
  %1580 = xor i64 %1575, %1578
  %1581 = xor i64 %1575, %1579
  %1582 = add i64 %1580, %1581
  %1583 = icmp eq i64 %1582, 2
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1584, i8* %1585, align 1
  store %struct.Memory* %loadMem_450056, %struct.Memory** %MEMORY
  %loadMem_450059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 5
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %ECX.i779 = bitcast %union.anon* %1591 to i32*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 9
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RSI.i780 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %RSI.i780
  %1596 = add i64 %1595, 428
  %1597 = load i32, i32* %ECX.i779
  %1598 = zext i32 %1597 to i64
  %1599 = load i64, i64* %PC.i778
  %1600 = add i64 %1599, 6
  store i64 %1600, i64* %PC.i778
  %1601 = inttoptr i64 %1596 to i32*
  store i32 %1597, i32* %1601
  store %struct.Memory* %loadMem_450059, %struct.Memory** %MEMORY
  %loadMem_45005f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 5
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %RBP.i777
  %1612 = sub i64 %1611, 56
  %1613 = load i64, i64* %PC.i775
  %1614 = add i64 %1613, 3
  store i64 %1614, i64* %PC.i775
  %1615 = inttoptr i64 %1612 to i32*
  %1616 = load i32, i32* %1615
  %1617 = zext i32 %1616 to i64
  store i64 %1617, i64* %RCX.i776, align 8
  store %struct.Memory* %loadMem_45005f, %struct.Memory** %MEMORY
  %loadMem_450062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 7
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RDX.i774 = bitcast %union.anon* %1623 to i64*
  %1624 = load i64, i64* %PC.i773
  %1625 = add i64 %1624, 8
  store i64 %1625, i64* %PC.i773
  %1626 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1627 = sext i32 %1626 to i64
  store i64 %1627, i64* %RDX.i774, align 8
  store %struct.Memory* %loadMem_450062, %struct.Memory** %MEMORY
  %loadMem_45006a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 7
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RDX.i772 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RDX.i772
  %1635 = load i64, i64* %PC.i771
  %1636 = add i64 %1635, 7
  store i64 %1636, i64* %PC.i771
  %1637 = sext i64 %1634 to i128
  %1638 = and i128 %1637, -18446744073709551616
  %1639 = zext i64 %1634 to i128
  %1640 = or i128 %1638, %1639
  %1641 = mul i128 444, %1640
  %1642 = trunc i128 %1641 to i64
  store i64 %1642, i64* %RDX.i772, align 8
  %1643 = sext i64 %1642 to i128
  %1644 = icmp ne i128 %1643, %1641
  %1645 = zext i1 %1644 to i8
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1645, i8* %1646, align 1
  %1647 = trunc i128 %1641 to i32
  %1648 = and i32 %1647, 255
  %1649 = call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1652, i8* %1653, align 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1654, align 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1655, align 1
  %1656 = lshr i64 %1642, 63
  %1657 = trunc i64 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1657, i8* %1658, align 1
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1645, i8* %1659, align 1
  store %struct.Memory* %loadMem_45006a, %struct.Memory** %MEMORY
  %loadMem_450071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 9
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RSI.i770 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %RAX.i769
  %1670 = load i64, i64* %PC.i768
  %1671 = add i64 %1670, 3
  store i64 %1671, i64* %PC.i768
  store i64 %1669, i64* %RSI.i770, align 8
  store %struct.Memory* %loadMem_450071, %struct.Memory** %MEMORY
  %loadMem_450074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 7
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RDX.i766 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 9
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RSI.i767 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %RSI.i767
  %1682 = load i64, i64* %RDX.i766
  %1683 = load i64, i64* %PC.i765
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC.i765
  %1685 = add i64 %1682, %1681
  store i64 %1685, i64* %RSI.i767, align 8
  %1686 = icmp ult i64 %1685, %1681
  %1687 = icmp ult i64 %1685, %1682
  %1688 = or i1 %1686, %1687
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1689, i8* %1690, align 1
  %1691 = trunc i64 %1685 to i32
  %1692 = and i32 %1691, 255
  %1693 = call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1696, i8* %1697, align 1
  %1698 = xor i64 %1682, %1681
  %1699 = xor i64 %1698, %1685
  %1700 = lshr i64 %1699, 4
  %1701 = trunc i64 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1702, i8* %1703, align 1
  %1704 = icmp eq i64 %1685, 0
  %1705 = zext i1 %1704 to i8
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1705, i8* %1706, align 1
  %1707 = lshr i64 %1685, 63
  %1708 = trunc i64 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1708, i8* %1709, align 1
  %1710 = lshr i64 %1681, 63
  %1711 = lshr i64 %1682, 63
  %1712 = xor i64 %1707, %1710
  %1713 = xor i64 %1707, %1711
  %1714 = add i64 %1712, %1713
  %1715 = icmp eq i64 %1714, 2
  %1716 = zext i1 %1715 to i8
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1716, i8* %1717, align 1
  store %struct.Memory* %loadMem_450074, %struct.Memory** %MEMORY
  %loadMem_450077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 5
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %ECX.i763 = bitcast %union.anon* %1723 to i32*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 9
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RSI.i764 = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %RSI.i764
  %1728 = add i64 %1727, 432
  %1729 = load i32, i32* %ECX.i763
  %1730 = zext i32 %1729 to i64
  %1731 = load i64, i64* %PC.i762
  %1732 = add i64 %1731, 6
  store i64 %1732, i64* %PC.i762
  %1733 = inttoptr i64 %1728 to i32*
  store i32 %1729, i32* %1733
  store %struct.Memory* %loadMem_450077, %struct.Memory** %MEMORY
  %loadMem_45007d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 5
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RCX.i760 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 15
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %RBP.i761
  %1744 = sub i64 %1743, 48
  %1745 = load i64, i64* %PC.i759
  %1746 = add i64 %1745, 3
  store i64 %1746, i64* %PC.i759
  %1747 = inttoptr i64 %1744 to i32*
  %1748 = load i32, i32* %1747
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RCX.i760, align 8
  store %struct.Memory* %loadMem_45007d, %struct.Memory** %MEMORY
  %loadMem_450080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 7
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RDX.i758 = bitcast %union.anon* %1755 to i64*
  %1756 = load i64, i64* %PC.i757
  %1757 = add i64 %1756, 8
  store i64 %1757, i64* %PC.i757
  %1758 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RDX.i758, align 8
  store %struct.Memory* %loadMem_450080, %struct.Memory** %MEMORY
  %loadMem_450088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 7
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RDX.i756 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RDX.i756
  %1767 = load i64, i64* %PC.i755
  %1768 = add i64 %1767, 7
  store i64 %1768, i64* %PC.i755
  %1769 = sext i64 %1766 to i128
  %1770 = and i128 %1769, -18446744073709551616
  %1771 = zext i64 %1766 to i128
  %1772 = or i128 %1770, %1771
  %1773 = mul i128 444, %1772
  %1774 = trunc i128 %1773 to i64
  store i64 %1774, i64* %RDX.i756, align 8
  %1775 = sext i64 %1774 to i128
  %1776 = icmp ne i128 %1775, %1773
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1777, i8* %1778, align 1
  %1779 = trunc i128 %1773 to i32
  %1780 = and i32 %1779, 255
  %1781 = call i32 @llvm.ctpop.i32(i32 %1780)
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1784, i8* %1785, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1786, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1787, align 1
  %1788 = lshr i64 %1774, 63
  %1789 = trunc i64 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1789, i8* %1790, align 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1777, i8* %1791, align 1
  store %struct.Memory* %loadMem_450088, %struct.Memory** %MEMORY
  %loadMem_45008f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 1
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RAX.i753 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 9
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RSI.i754 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RAX.i753
  %1802 = load i64, i64* %PC.i752
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i752
  store i64 %1801, i64* %RSI.i754, align 8
  store %struct.Memory* %loadMem_45008f, %struct.Memory** %MEMORY
  %loadMem_450092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 7
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RDX.i750 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 9
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RSI.i751 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RSI.i751
  %1814 = load i64, i64* %RDX.i750
  %1815 = load i64, i64* %PC.i749
  %1816 = add i64 %1815, 3
  store i64 %1816, i64* %PC.i749
  %1817 = add i64 %1814, %1813
  store i64 %1817, i64* %RSI.i751, align 8
  %1818 = icmp ult i64 %1817, %1813
  %1819 = icmp ult i64 %1817, %1814
  %1820 = or i1 %1818, %1819
  %1821 = zext i1 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1821, i8* %1822, align 1
  %1823 = trunc i64 %1817 to i32
  %1824 = and i32 %1823, 255
  %1825 = call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1828, i8* %1829, align 1
  %1830 = xor i64 %1814, %1813
  %1831 = xor i64 %1830, %1817
  %1832 = lshr i64 %1831, 4
  %1833 = trunc i64 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1834, i8* %1835, align 1
  %1836 = icmp eq i64 %1817, 0
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1837, i8* %1838, align 1
  %1839 = lshr i64 %1817, 63
  %1840 = trunc i64 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1840, i8* %1841, align 1
  %1842 = lshr i64 %1813, 63
  %1843 = lshr i64 %1814, 63
  %1844 = xor i64 %1839, %1842
  %1845 = xor i64 %1839, %1843
  %1846 = add i64 %1844, %1845
  %1847 = icmp eq i64 %1846, 2
  %1848 = zext i1 %1847 to i8
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1848, i8* %1849, align 1
  store %struct.Memory* %loadMem_450092, %struct.Memory** %MEMORY
  %loadMem_450095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 5
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %ECX.i747 = bitcast %union.anon* %1855 to i32*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 9
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RSI.i748 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RSI.i748
  %1860 = add i64 %1859, 436
  %1861 = load i32, i32* %ECX.i747
  %1862 = zext i32 %1861 to i64
  %1863 = load i64, i64* %PC.i746
  %1864 = add i64 %1863, 6
  store i64 %1864, i64* %PC.i746
  %1865 = inttoptr i64 %1860 to i32*
  store i32 %1861, i32* %1865
  store %struct.Memory* %loadMem_450095, %struct.Memory** %MEMORY
  %loadMem_45009b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 5
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 15
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %RBP.i745
  %1876 = sub i64 %1875, 52
  %1877 = load i64, i64* %PC.i743
  %1878 = add i64 %1877, 3
  store i64 %1878, i64* %PC.i743
  %1879 = inttoptr i64 %1876 to i32*
  %1880 = load i32, i32* %1879
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RCX.i744, align 8
  store %struct.Memory* %loadMem_45009b, %struct.Memory** %MEMORY
  %loadMem_45009e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 7
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RDX.i742 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %PC.i741
  %1889 = add i64 %1888, 8
  store i64 %1889, i64* %PC.i741
  %1890 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RDX.i742, align 8
  store %struct.Memory* %loadMem_45009e, %struct.Memory** %MEMORY
  %loadMem_4500a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 7
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %RDX.i740
  %1899 = load i64, i64* %PC.i739
  %1900 = add i64 %1899, 7
  store i64 %1900, i64* %PC.i739
  %1901 = sext i64 %1898 to i128
  %1902 = and i128 %1901, -18446744073709551616
  %1903 = zext i64 %1898 to i128
  %1904 = or i128 %1902, %1903
  %1905 = mul i128 444, %1904
  %1906 = trunc i128 %1905 to i64
  store i64 %1906, i64* %RDX.i740, align 8
  %1907 = sext i64 %1906 to i128
  %1908 = icmp ne i128 %1907, %1905
  %1909 = zext i1 %1908 to i8
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1909, i8* %1910, align 1
  %1911 = trunc i128 %1905 to i32
  %1912 = and i32 %1911, 255
  %1913 = call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1916, i8* %1917, align 1
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1918, align 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1919, align 1
  %1920 = lshr i64 %1906, 63
  %1921 = trunc i64 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1921, i8* %1922, align 1
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1909, i8* %1923, align 1
  store %struct.Memory* %loadMem_4500a6, %struct.Memory** %MEMORY
  %loadMem_4500ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 1
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 9
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RSI.i738 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %RAX.i737
  %1934 = load i64, i64* %PC.i736
  %1935 = add i64 %1934, 3
  store i64 %1935, i64* %PC.i736
  store i64 %1933, i64* %RSI.i738, align 8
  store %struct.Memory* %loadMem_4500ad, %struct.Memory** %MEMORY
  %loadMem_4500b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 33
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 7
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RDX.i734 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 9
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RSI.i735 = bitcast %union.anon* %1944 to i64*
  %1945 = load i64, i64* %RSI.i735
  %1946 = load i64, i64* %RDX.i734
  %1947 = load i64, i64* %PC.i733
  %1948 = add i64 %1947, 3
  store i64 %1948, i64* %PC.i733
  %1949 = add i64 %1946, %1945
  store i64 %1949, i64* %RSI.i735, align 8
  %1950 = icmp ult i64 %1949, %1945
  %1951 = icmp ult i64 %1949, %1946
  %1952 = or i1 %1950, %1951
  %1953 = zext i1 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1953, i8* %1954, align 1
  %1955 = trunc i64 %1949 to i32
  %1956 = and i32 %1955, 255
  %1957 = call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1960, i8* %1961, align 1
  %1962 = xor i64 %1946, %1945
  %1963 = xor i64 %1962, %1949
  %1964 = lshr i64 %1963, 4
  %1965 = trunc i64 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1966, i8* %1967, align 1
  %1968 = icmp eq i64 %1949, 0
  %1969 = zext i1 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1969, i8* %1970, align 1
  %1971 = lshr i64 %1949, 63
  %1972 = trunc i64 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1972, i8* %1973, align 1
  %1974 = lshr i64 %1945, 63
  %1975 = lshr i64 %1946, 63
  %1976 = xor i64 %1971, %1974
  %1977 = xor i64 %1971, %1975
  %1978 = add i64 %1976, %1977
  %1979 = icmp eq i64 %1978, 2
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1980, i8* %1981, align 1
  store %struct.Memory* %loadMem_4500b0, %struct.Memory** %MEMORY
  %loadMem_4500b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 5
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %ECX.i731 = bitcast %union.anon* %1987 to i32*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 9
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RSI.i732 = bitcast %union.anon* %1990 to i64*
  %1991 = load i64, i64* %RSI.i732
  %1992 = add i64 %1991, 440
  %1993 = load i32, i32* %ECX.i731
  %1994 = zext i32 %1993 to i64
  %1995 = load i64, i64* %PC.i730
  %1996 = add i64 %1995, 6
  store i64 %1996, i64* %PC.i730
  %1997 = inttoptr i64 %1992 to i32*
  store i32 %1993, i32* %1997
  store %struct.Memory* %loadMem_4500b3, %struct.Memory** %MEMORY
  %loadMem_4500b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 5
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RCX.i728 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 15
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RBP.i729
  %2008 = sub i64 %2007, 60
  %2009 = load i64, i64* %PC.i727
  %2010 = add i64 %2009, 3
  store i64 %2010, i64* %PC.i727
  %2011 = inttoptr i64 %2008 to i32*
  %2012 = load i32, i32* %2011
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RCX.i728, align 8
  store %struct.Memory* %loadMem_4500b9, %struct.Memory** %MEMORY
  %loadMem_4500bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 7
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %PC.i725
  %2021 = add i64 %2020, 8
  store i64 %2021, i64* %PC.i725
  %2022 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %2023 = sext i32 %2022 to i64
  store i64 %2023, i64* %RDX.i726, align 8
  store %struct.Memory* %loadMem_4500bc, %struct.Memory** %MEMORY
  %loadMem_4500c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 7
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RDX.i724 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %RDX.i724
  %2031 = load i64, i64* %PC.i723
  %2032 = add i64 %2031, 7
  store i64 %2032, i64* %PC.i723
  %2033 = sext i64 %2030 to i128
  %2034 = and i128 %2033, -18446744073709551616
  %2035 = zext i64 %2030 to i128
  %2036 = or i128 %2034, %2035
  %2037 = mul i128 444, %2036
  %2038 = trunc i128 %2037 to i64
  store i64 %2038, i64* %RDX.i724, align 8
  %2039 = sext i64 %2038 to i128
  %2040 = icmp ne i128 %2039, %2037
  %2041 = zext i1 %2040 to i8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2041, i8* %2042, align 1
  %2043 = trunc i128 %2037 to i32
  %2044 = and i32 %2043, 255
  %2045 = call i32 @llvm.ctpop.i32(i32 %2044)
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = xor i8 %2047, 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2048, i8* %2049, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2050, align 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2051, align 1
  %2052 = lshr i64 %2038, 63
  %2053 = trunc i64 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2053, i8* %2054, align 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2041, i8* %2055, align 1
  store %struct.Memory* %loadMem_4500c4, %struct.Memory** %MEMORY
  %loadMem_4500cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 1
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 9
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RSI.i722 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %RAX.i721
  %2066 = load i64, i64* %PC.i720
  %2067 = add i64 %2066, 3
  store i64 %2067, i64* %PC.i720
  store i64 %2065, i64* %RSI.i722, align 8
  store %struct.Memory* %loadMem_4500cb, %struct.Memory** %MEMORY
  %loadMem_4500ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 7
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 9
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RSI.i719 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %RSI.i719
  %2078 = load i64, i64* %RDX.i718
  %2079 = load i64, i64* %PC.i717
  %2080 = add i64 %2079, 3
  store i64 %2080, i64* %PC.i717
  %2081 = add i64 %2078, %2077
  store i64 %2081, i64* %RSI.i719, align 8
  %2082 = icmp ult i64 %2081, %2077
  %2083 = icmp ult i64 %2081, %2078
  %2084 = or i1 %2082, %2083
  %2085 = zext i1 %2084 to i8
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2085, i8* %2086, align 1
  %2087 = trunc i64 %2081 to i32
  %2088 = and i32 %2087, 255
  %2089 = call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2092, i8* %2093, align 1
  %2094 = xor i64 %2078, %2077
  %2095 = xor i64 %2094, %2081
  %2096 = lshr i64 %2095, 4
  %2097 = trunc i64 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2098, i8* %2099, align 1
  %2100 = icmp eq i64 %2081, 0
  %2101 = zext i1 %2100 to i8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2101, i8* %2102, align 1
  %2103 = lshr i64 %2081, 63
  %2104 = trunc i64 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2104, i8* %2105, align 1
  %2106 = lshr i64 %2077, 63
  %2107 = lshr i64 %2078, 63
  %2108 = xor i64 %2103, %2106
  %2109 = xor i64 %2103, %2107
  %2110 = add i64 %2108, %2109
  %2111 = icmp eq i64 %2110, 2
  %2112 = zext i1 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2112, i8* %2113, align 1
  store %struct.Memory* %loadMem_4500ce, %struct.Memory** %MEMORY
  %loadMem_4500d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 5
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %ECX.i715 = bitcast %union.anon* %2119 to i32*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 9
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RSI.i716 = bitcast %union.anon* %2122 to i64*
  %2123 = load i64, i64* %RSI.i716
  %2124 = add i64 %2123, 408
  %2125 = load i32, i32* %ECX.i715
  %2126 = zext i32 %2125 to i64
  %2127 = load i64, i64* %PC.i714
  %2128 = add i64 %2127, 6
  store i64 %2128, i64* %PC.i714
  %2129 = inttoptr i64 %2124 to i32*
  store i32 %2125, i32* %2129
  store %struct.Memory* %loadMem_4500d1, %struct.Memory** %MEMORY
  %loadMem_4500d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 5
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %PC.i712
  %2137 = add i64 %2136, 7
  store i64 %2137, i64* %PC.i712
  %2138 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RCX.i713, align 8
  store %struct.Memory* %loadMem_4500d7, %struct.Memory** %MEMORY
  %loadMem_4500de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 7
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RDX.i711 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %PC.i710
  %2147 = add i64 %2146, 8
  store i64 %2147, i64* %PC.i710
  %2148 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %2149 = sext i32 %2148 to i64
  store i64 %2149, i64* %RDX.i711, align 8
  store %struct.Memory* %loadMem_4500de, %struct.Memory** %MEMORY
  %loadMem_4500e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 7
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RDX.i709 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %RDX.i709
  %2157 = load i64, i64* %PC.i708
  %2158 = add i64 %2157, 7
  store i64 %2158, i64* %PC.i708
  %2159 = sext i64 %2156 to i128
  %2160 = and i128 %2159, -18446744073709551616
  %2161 = zext i64 %2156 to i128
  %2162 = or i128 %2160, %2161
  %2163 = mul i128 444, %2162
  %2164 = trunc i128 %2163 to i64
  store i64 %2164, i64* %RDX.i709, align 8
  %2165 = sext i64 %2164 to i128
  %2166 = icmp ne i128 %2165, %2163
  %2167 = zext i1 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2167, i8* %2168, align 1
  %2169 = trunc i128 %2163 to i32
  %2170 = and i32 %2169, 255
  %2171 = call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2174, i8* %2175, align 1
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2176, align 1
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2177, align 1
  %2178 = lshr i64 %2164, 63
  %2179 = trunc i64 %2178 to i8
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2179, i8* %2180, align 1
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2167, i8* %2181, align 1
  store %struct.Memory* %loadMem_4500e6, %struct.Memory** %MEMORY
  %loadMem_4500ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 1
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 7
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %2190 to i64*
  %2191 = load i64, i64* %RAX.i706
  %2192 = load i64, i64* %RDX.i707
  %2193 = load i64, i64* %PC.i705
  %2194 = add i64 %2193, 3
  store i64 %2194, i64* %PC.i705
  %2195 = add i64 %2192, %2191
  store i64 %2195, i64* %RAX.i706, align 8
  %2196 = icmp ult i64 %2195, %2191
  %2197 = icmp ult i64 %2195, %2192
  %2198 = or i1 %2196, %2197
  %2199 = zext i1 %2198 to i8
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2199, i8* %2200, align 1
  %2201 = trunc i64 %2195 to i32
  %2202 = and i32 %2201, 255
  %2203 = call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2206, i8* %2207, align 1
  %2208 = xor i64 %2192, %2191
  %2209 = xor i64 %2208, %2195
  %2210 = lshr i64 %2209, 4
  %2211 = trunc i64 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2212, i8* %2213, align 1
  %2214 = icmp eq i64 %2195, 0
  %2215 = zext i1 %2214 to i8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2215, i8* %2216, align 1
  %2217 = lshr i64 %2195, 63
  %2218 = trunc i64 %2217 to i8
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2218, i8* %2219, align 1
  %2220 = lshr i64 %2191, 63
  %2221 = lshr i64 %2192, 63
  %2222 = xor i64 %2217, %2220
  %2223 = xor i64 %2217, %2221
  %2224 = add i64 %2222, %2223
  %2225 = icmp eq i64 %2224, 2
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2226, i8* %2227, align 1
  store %struct.Memory* %loadMem_4500ed, %struct.Memory** %MEMORY
  %loadMem_4500f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 5
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %ECX.i703 = bitcast %union.anon* %2233 to i32*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 1
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %RAX.i704
  %2238 = add i64 %2237, 404
  %2239 = load i32, i32* %ECX.i703
  %2240 = zext i32 %2239 to i64
  %2241 = load i64, i64* %PC.i702
  %2242 = add i64 %2241, 6
  store i64 %2242, i64* %PC.i702
  %2243 = inttoptr i64 %2238 to i32*
  store i32 %2239, i32* %2243
  store %struct.Memory* %loadMem_4500f0, %struct.Memory** %MEMORY
  %loadMem_4500f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 15
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RBP.i701
  %2251 = sub i64 %2250, 484
  %2252 = load i64, i64* %PC.i700
  %2253 = add i64 %2252, 10
  store i64 %2253, i64* %PC.i700
  %2254 = inttoptr i64 %2251 to i32*
  store i32 21, i32* %2254
  store %struct.Memory* %loadMem_4500f6, %struct.Memory** %MEMORY
  br label %block_.L_450100

block_.L_450100:                                  ; preds = %block_.L_45015d, %block_.L_44ffa1
  %loadMem_450100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i699
  %2262 = sub i64 %2261, 484
  %2263 = load i64, i64* %PC.i698
  %2264 = add i64 %2263, 10
  store i64 %2264, i64* %PC.i698
  %2265 = inttoptr i64 %2262 to i32*
  %2266 = load i32, i32* %2265
  %2267 = sub i32 %2266, 400
  %2268 = icmp ult i32 %2266, 400
  %2269 = zext i1 %2268 to i8
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2269, i8* %2270, align 1
  %2271 = and i32 %2267, 255
  %2272 = call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2275, i8* %2276, align 1
  %2277 = xor i32 %2266, 400
  %2278 = xor i32 %2277, %2267
  %2279 = lshr i32 %2278, 4
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2281, i8* %2282, align 1
  %2283 = icmp eq i32 %2267, 0
  %2284 = zext i1 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2284, i8* %2285, align 1
  %2286 = lshr i32 %2267, 31
  %2287 = trunc i32 %2286 to i8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2287, i8* %2288, align 1
  %2289 = lshr i32 %2266, 31
  %2290 = xor i32 %2286, %2289
  %2291 = add i32 %2290, %2289
  %2292 = icmp eq i32 %2291, 2
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2293, i8* %2294, align 1
  store %struct.Memory* %loadMem_450100, %struct.Memory** %MEMORY
  %loadMem_45010a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %PC.i697
  %2299 = add i64 %2298, 103
  %2300 = load i64, i64* %PC.i697
  %2301 = add i64 %2300, 6
  %2302 = load i64, i64* %PC.i697
  %2303 = add i64 %2302, 6
  store i64 %2303, i64* %PC.i697
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2305 = load i8, i8* %2304, align 1
  %2306 = icmp ne i8 %2305, 0
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2308 = load i8, i8* %2307, align 1
  %2309 = icmp ne i8 %2308, 0
  %2310 = xor i1 %2306, %2309
  %2311 = xor i1 %2310, true
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %BRANCH_TAKEN, align 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2314 = select i1 %2310, i64 %2301, i64 %2299
  store i64 %2314, i64* %2313, align 8
  store %struct.Memory* %loadMem_45010a, %struct.Memory** %MEMORY
  %loadBr_45010a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45010a = icmp eq i8 %loadBr_45010a, 1
  br i1 %cmpBr_45010a, label %block_.L_450171, label %block_450110

block_450110:                                     ; preds = %block_.L_450100
  %loadMem_450110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 1
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 15
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %RBP.i696
  %2325 = sub i64 %2324, 484
  %2326 = load i64, i64* %PC.i694
  %2327 = add i64 %2326, 7
  store i64 %2327, i64* %PC.i694
  %2328 = inttoptr i64 %2325 to i32*
  %2329 = load i32, i32* %2328
  %2330 = sext i32 %2329 to i64
  store i64 %2330, i64* %RAX.i695, align 8
  store %struct.Memory* %loadMem_450110, %struct.Memory** %MEMORY
  %loadMem_450117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 1
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 5
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %RAX.i692
  %2341 = add i64 %2340, 12099168
  %2342 = load i64, i64* %PC.i691
  %2343 = add i64 %2342, 8
  store i64 %2343, i64* %PC.i691
  %2344 = inttoptr i64 %2341 to i8*
  %2345 = load i8, i8* %2344
  %2346 = zext i8 %2345 to i64
  store i64 %2346, i64* %RCX.i693, align 8
  store %struct.Memory* %loadMem_450117, %struct.Memory** %MEMORY
  %loadMem_45011f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 5
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %ECX.i690 = bitcast %union.anon* %2352 to i32*
  %2353 = load i32, i32* %ECX.i690
  %2354 = zext i32 %2353 to i64
  %2355 = load i64, i64* %PC.i689
  %2356 = add i64 %2355, 3
  store i64 %2356, i64* %PC.i689
  %2357 = sub i32 %2353, 3
  %2358 = icmp ult i32 %2353, 3
  %2359 = zext i1 %2358 to i8
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2359, i8* %2360, align 1
  %2361 = and i32 %2357, 255
  %2362 = call i32 @llvm.ctpop.i32(i32 %2361)
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = xor i8 %2364, 1
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2365, i8* %2366, align 1
  %2367 = xor i64 3, %2354
  %2368 = trunc i64 %2367 to i32
  %2369 = xor i32 %2368, %2357
  %2370 = lshr i32 %2369, 4
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2372, i8* %2373, align 1
  %2374 = icmp eq i32 %2357, 0
  %2375 = zext i1 %2374 to i8
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2375, i8* %2376, align 1
  %2377 = lshr i32 %2357, 31
  %2378 = trunc i32 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2378, i8* %2379, align 1
  %2380 = lshr i32 %2353, 31
  %2381 = xor i32 %2377, %2380
  %2382 = add i32 %2381, %2380
  %2383 = icmp eq i32 %2382, 2
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2384, i8* %2385, align 1
  store %struct.Memory* %loadMem_45011f, %struct.Memory** %MEMORY
  %loadMem_450122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %PC.i688
  %2390 = add i64 %2389, 54
  %2391 = load i64, i64* %PC.i688
  %2392 = add i64 %2391, 6
  %2393 = load i64, i64* %PC.i688
  %2394 = add i64 %2393, 6
  store i64 %2394, i64* %PC.i688
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2396 = load i8, i8* %2395, align 1
  store i8 %2396, i8* %BRANCH_TAKEN, align 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2398 = icmp ne i8 %2396, 0
  %2399 = select i1 %2398, i64 %2390, i64 %2392
  store i64 %2399, i64* %2397, align 8
  store %struct.Memory* %loadMem_450122, %struct.Memory** %MEMORY
  %loadBr_450122 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450122 = icmp eq i8 %loadBr_450122, 1
  br i1 %cmpBr_450122, label %block_.L_450158, label %block_450128

block_450128:                                     ; preds = %block_450110
  %loadMem_450128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 1
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 15
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %RBP.i687
  %2410 = sub i64 %2409, 72
  %2411 = load i64, i64* %PC.i685
  %2412 = add i64 %2411, 4
  store i64 %2412, i64* %PC.i685
  %2413 = inttoptr i64 %2410 to i64*
  %2414 = load i64, i64* %2413
  store i64 %2414, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_450128, %struct.Memory** %MEMORY
  %loadMem_45012c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 5
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 15
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %RBP.i684
  %2425 = sub i64 %2424, 484
  %2426 = load i64, i64* %PC.i682
  %2427 = add i64 %2426, 7
  store i64 %2427, i64* %PC.i682
  %2428 = inttoptr i64 %2425 to i32*
  %2429 = load i32, i32* %2428
  %2430 = sext i32 %2429 to i64
  store i64 %2430, i64* %RCX.i683, align 8
  store %struct.Memory* %loadMem_45012c, %struct.Memory** %MEMORY
  %loadMem_450133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 1
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 5
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 7
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RDX.i681 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %RAX.i679
  %2444 = load i64, i64* %RCX.i680
  %2445 = add i64 %2444, %2443
  %2446 = load i64, i64* %PC.i678
  %2447 = add i64 %2446, 4
  store i64 %2447, i64* %PC.i678
  %2448 = inttoptr i64 %2445 to i8*
  %2449 = load i8, i8* %2448
  %2450 = sext i8 %2449 to i64
  %2451 = and i64 %2450, 4294967295
  store i64 %2451, i64* %RDX.i681, align 8
  store %struct.Memory* %loadMem_450133, %struct.Memory** %MEMORY
  %loadMem_450137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 33
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2454 to i64*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 7
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2457 to i32*
  %2458 = load i32, i32* %EDX.i
  %2459 = zext i32 %2458 to i64
  %2460 = load i64, i64* %PC.i677
  %2461 = add i64 %2460, 3
  store i64 %2461, i64* %PC.i677
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2462, align 1
  %2463 = and i32 %2458, 255
  %2464 = call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2467, i8* %2468, align 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2469, align 1
  %2470 = icmp eq i32 %2458, 0
  %2471 = zext i1 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2471, i8* %2472, align 1
  %2473 = lshr i32 %2458, 31
  %2474 = trunc i32 %2473 to i8
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2474, i8* %2475, align 1
  %2476 = lshr i32 %2458, 31
  %2477 = xor i32 %2473, %2476
  %2478 = add i32 %2477, %2476
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2480, i8* %2481, align 1
  store %struct.Memory* %loadMem_450137, %struct.Memory** %MEMORY
  %loadMem_45013a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 9
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %2488 = bitcast %union.anon* %2487 to %struct.anon.2*
  %SIL.i676 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2488, i32 0, i32 0
  %2489 = load i64, i64* %PC.i675
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %PC.i675
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2492 = load i8, i8* %2491, align 1
  %2493 = icmp eq i8 %2492, 0
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %SIL.i676, align 1
  store %struct.Memory* %loadMem_45013a, %struct.Memory** %MEMORY
  %loadMem_45013e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 9
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %2501 = bitcast %union.anon* %2500 to %struct.anon.2*
  %SIL.i674 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2501, i32 0, i32 0
  %2502 = load i8, i8* %SIL.i674
  %2503 = zext i8 %2502 to i64
  %2504 = load i64, i64* %PC.i673
  %2505 = add i64 %2504, 4
  store i64 %2505, i64* %PC.i673
  %2506 = and i64 1, %2503
  %2507 = trunc i64 %2506 to i8
  store i8 %2507, i8* %SIL.i674, align 1
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2508, align 1
  %2509 = trunc i64 %2506 to i32
  %2510 = and i32 %2509, 255
  %2511 = call i32 @llvm.ctpop.i32(i32 %2510)
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = xor i8 %2513, 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2514, i8* %2515, align 1
  %2516 = icmp eq i8 %2507, 0
  %2517 = zext i1 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2517, i8* %2518, align 1
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2519, align 1
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2520, align 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2521, align 1
  store %struct.Memory* %loadMem_45013e, %struct.Memory** %MEMORY
  %loadMem_450142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 9
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %2528 = bitcast %union.anon* %2527 to %struct.anon.2*
  %SIL.i671 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2528, i32 0, i32 0
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 7
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RDX.i672 = bitcast %union.anon* %2531 to i64*
  %2532 = load i8, i8* %SIL.i671
  %2533 = zext i8 %2532 to i64
  %2534 = load i64, i64* %PC.i670
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC.i670
  %2536 = and i64 %2533, 255
  store i64 %2536, i64* %RDX.i672, align 8
  store %struct.Memory* %loadMem_450142, %struct.Memory** %MEMORY
  %loadMem_450146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 7
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %2543 = bitcast %union.anon* %2542 to %struct.anon.2*
  %DL.i668 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2543, i32 0, i32 0
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 9
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %2547 = bitcast %union.anon* %2546 to %struct.anon.2*
  %SIL.i669 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2547, i32 0, i32 0
  %2548 = load i8, i8* %DL.i668
  %2549 = zext i8 %2548 to i64
  %2550 = load i64, i64* %PC.i667
  %2551 = add i64 %2550, 3
  store i64 %2551, i64* %PC.i667
  store i8 %2548, i8* %SIL.i669, align 1
  store %struct.Memory* %loadMem_450146, %struct.Memory** %MEMORY
  %loadMem_450149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %2557 to i64*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 15
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %2560 to i64*
  %2561 = load i64, i64* %RBP.i666
  %2562 = sub i64 %2561, 484
  %2563 = load i64, i64* %PC.i664
  %2564 = add i64 %2563, 7
  store i64 %2564, i64* %PC.i664
  %2565 = inttoptr i64 %2562 to i32*
  %2566 = load i32, i32* %2565
  %2567 = sext i32 %2566 to i64
  store i64 %2567, i64* %RAX.i665, align 8
  store %struct.Memory* %loadMem_450149, %struct.Memory** %MEMORY
  %loadMem_450150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 9
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %2574 = bitcast %union.anon* %2573 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2574, i32 0, i32 0
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 15
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RBP.i663
  %2582 = load i64, i64* %RAX.i662
  %2583 = add i64 %2581, -480
  %2584 = add i64 %2583, %2582
  %2585 = load i8, i8* %SIL.i
  %2586 = zext i8 %2585 to i64
  %2587 = load i64, i64* %PC.i661
  %2588 = add i64 %2587, 8
  store i64 %2588, i64* %PC.i661
  %2589 = inttoptr i64 %2584 to i8*
  store i8 %2585, i8* %2589
  store %struct.Memory* %loadMem_450150, %struct.Memory** %MEMORY
  br label %block_.L_450158

block_.L_450158:                                  ; preds = %block_450128, %block_450110
  %loadMem_450158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2592 to i64*
  %2593 = load i64, i64* %PC.i660
  %2594 = add i64 %2593, 5
  %2595 = load i64, i64* %PC.i660
  %2596 = add i64 %2595, 5
  store i64 %2596, i64* %PC.i660
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2594, i64* %2597, align 8
  store %struct.Memory* %loadMem_450158, %struct.Memory** %MEMORY
  br label %block_.L_45015d

block_.L_45015d:                                  ; preds = %block_.L_450158
  %loadMem_45015d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 1
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 15
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %RBP.i659
  %2608 = sub i64 %2607, 484
  %2609 = load i64, i64* %PC.i657
  %2610 = add i64 %2609, 6
  store i64 %2610, i64* %PC.i657
  %2611 = inttoptr i64 %2608 to i32*
  %2612 = load i32, i32* %2611
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RAX.i658, align 8
  store %struct.Memory* %loadMem_45015d, %struct.Memory** %MEMORY
  %loadMem_450163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 33
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2616 to i64*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 1
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %2619 to i64*
  %2620 = load i64, i64* %RAX.i656
  %2621 = load i64, i64* %PC.i655
  %2622 = add i64 %2621, 3
  store i64 %2622, i64* %PC.i655
  %2623 = trunc i64 %2620 to i32
  %2624 = add i32 1, %2623
  %2625 = zext i32 %2624 to i64
  store i64 %2625, i64* %RAX.i656, align 8
  %2626 = icmp ult i32 %2624, %2623
  %2627 = icmp ult i32 %2624, 1
  %2628 = or i1 %2626, %2627
  %2629 = zext i1 %2628 to i8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2629, i8* %2630, align 1
  %2631 = and i32 %2624, 255
  %2632 = call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2635, i8* %2636, align 1
  %2637 = xor i64 1, %2620
  %2638 = trunc i64 %2637 to i32
  %2639 = xor i32 %2638, %2624
  %2640 = lshr i32 %2639, 4
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2642, i8* %2643, align 1
  %2644 = icmp eq i32 %2624, 0
  %2645 = zext i1 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2645, i8* %2646, align 1
  %2647 = lshr i32 %2624, 31
  %2648 = trunc i32 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2648, i8* %2649, align 1
  %2650 = lshr i32 %2623, 31
  %2651 = xor i32 %2647, %2650
  %2652 = add i32 %2651, %2647
  %2653 = icmp eq i32 %2652, 2
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2654, i8* %2655, align 1
  store %struct.Memory* %loadMem_450163, %struct.Memory** %MEMORY
  %loadMem_450166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 1
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %EAX.i653 = bitcast %union.anon* %2661 to i32*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 15
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RBP.i654
  %2666 = sub i64 %2665, 484
  %2667 = load i32, i32* %EAX.i653
  %2668 = zext i32 %2667 to i64
  %2669 = load i64, i64* %PC.i652
  %2670 = add i64 %2669, 6
  store i64 %2670, i64* %PC.i652
  %2671 = inttoptr i64 %2666 to i32*
  store i32 %2667, i32* %2671
  store %struct.Memory* %loadMem_450166, %struct.Memory** %MEMORY
  %loadMem_45016c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2674 to i64*
  %2675 = load i64, i64* %PC.i651
  %2676 = add i64 %2675, -108
  %2677 = load i64, i64* %PC.i651
  %2678 = add i64 %2677, 5
  store i64 %2678, i64* %PC.i651
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2676, i64* %2679, align 8
  store %struct.Memory* %loadMem_45016c, %struct.Memory** %MEMORY
  br label %block_.L_450100

block_.L_450171:                                  ; preds = %block_.L_450100
  %loadMem_450171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 15
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RBP.i650
  %2687 = sub i64 %2686, 48
  %2688 = load i64, i64* %PC.i649
  %2689 = add i64 %2688, 7
  store i64 %2689, i64* %PC.i649
  %2690 = inttoptr i64 %2687 to i32*
  %2691 = load i32, i32* %2690
  %2692 = sub i32 %2691, 421
  %2693 = icmp ult i32 %2691, 421
  %2694 = zext i1 %2693 to i8
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2694, i8* %2695, align 1
  %2696 = and i32 %2692, 255
  %2697 = call i32 @llvm.ctpop.i32(i32 %2696)
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2700, i8* %2701, align 1
  %2702 = xor i32 %2691, 421
  %2703 = xor i32 %2702, %2692
  %2704 = lshr i32 %2703, 4
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2706, i8* %2707, align 1
  %2708 = icmp eq i32 %2692, 0
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2709, i8* %2710, align 1
  %2711 = lshr i32 %2692, 31
  %2712 = trunc i32 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2712, i8* %2713, align 1
  %2714 = lshr i32 %2691, 31
  %2715 = xor i32 %2711, %2714
  %2716 = add i32 %2715, %2714
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2718, i8* %2719, align 1
  store %struct.Memory* %loadMem_450171, %struct.Memory** %MEMORY
  %loadMem_450178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %PC.i648
  %2724 = add i64 %2723, 39
  %2725 = load i64, i64* %PC.i648
  %2726 = add i64 %2725, 6
  %2727 = load i64, i64* %PC.i648
  %2728 = add i64 %2727, 6
  store i64 %2728, i64* %PC.i648
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2730 = load i8, i8* %2729, align 1
  %2731 = icmp eq i8 %2730, 0
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %BRANCH_TAKEN, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2734 = select i1 %2731, i64 %2724, i64 %2726
  store i64 %2734, i64* %2733, align 8
  store %struct.Memory* %loadMem_450178, %struct.Memory** %MEMORY
  %loadBr_450178 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450178 = icmp eq i8 %loadBr_450178, 1
  br i1 %cmpBr_450178, label %block_.L_45019f, label %block_45017e

block_45017e:                                     ; preds = %block_.L_450171
  %loadMem_45017e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 15
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RBP.i647
  %2745 = sub i64 %2744, 48
  %2746 = load i64, i64* %PC.i645
  %2747 = add i64 %2746, 4
  store i64 %2747, i64* %PC.i645
  %2748 = inttoptr i64 %2745 to i32*
  %2749 = load i32, i32* %2748
  %2750 = sext i32 %2749 to i64
  store i64 %2750, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_45017e, %struct.Memory** %MEMORY
  %loadMem_450182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 1
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 5
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RAX.i643
  %2761 = add i64 %2760, 12099168
  %2762 = load i64, i64* %PC.i642
  %2763 = add i64 %2762, 8
  store i64 %2763, i64* %PC.i642
  %2764 = inttoptr i64 %2761 to i8*
  %2765 = load i8, i8* %2764
  %2766 = zext i8 %2765 to i64
  store i64 %2766, i64* %RCX.i644, align 8
  store %struct.Memory* %loadMem_450182, %struct.Memory** %MEMORY
  %loadMem_45018a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 5
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %ECX.i641 = bitcast %union.anon* %2772 to i32*
  %2773 = load i32, i32* %ECX.i641
  %2774 = zext i32 %2773 to i64
  %2775 = load i64, i64* %PC.i640
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i640
  %2777 = sub i32 %2773, 3
  %2778 = icmp ult i32 %2773, 3
  %2779 = zext i1 %2778 to i8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2779, i8* %2780, align 1
  %2781 = and i32 %2777, 255
  %2782 = call i32 @llvm.ctpop.i32(i32 %2781)
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  %2785 = xor i8 %2784, 1
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2785, i8* %2786, align 1
  %2787 = xor i64 3, %2774
  %2788 = trunc i64 %2787 to i32
  %2789 = xor i32 %2788, %2777
  %2790 = lshr i32 %2789, 4
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2792, i8* %2793, align 1
  %2794 = icmp eq i32 %2777, 0
  %2795 = zext i1 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2795, i8* %2796, align 1
  %2797 = lshr i32 %2777, 31
  %2798 = trunc i32 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2798, i8* %2799, align 1
  %2800 = lshr i32 %2773, 31
  %2801 = xor i32 %2797, %2800
  %2802 = add i32 %2801, %2800
  %2803 = icmp eq i32 %2802, 2
  %2804 = zext i1 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2804, i8* %2805, align 1
  store %struct.Memory* %loadMem_45018a, %struct.Memory** %MEMORY
  %loadMem_45018d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %PC.i639
  %2810 = add i64 %2809, 18
  %2811 = load i64, i64* %PC.i639
  %2812 = add i64 %2811, 6
  %2813 = load i64, i64* %PC.i639
  %2814 = add i64 %2813, 6
  store i64 %2814, i64* %PC.i639
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2816 = load i8, i8* %2815, align 1
  store i8 %2816, i8* %BRANCH_TAKEN, align 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2818 = icmp ne i8 %2816, 0
  %2819 = select i1 %2818, i64 %2810, i64 %2812
  store i64 %2819, i64* %2817, align 8
  store %struct.Memory* %loadMem_45018d, %struct.Memory** %MEMORY
  %loadBr_45018d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45018d = icmp eq i8 %loadBr_45018d, 1
  br i1 %cmpBr_45018d, label %block_.L_45019f, label %block_450193

block_450193:                                     ; preds = %block_45017e
  %loadMem_450193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RBP.i638
  %2830 = sub i64 %2829, 48
  %2831 = load i64, i64* %PC.i636
  %2832 = add i64 %2831, 4
  store i64 %2832, i64* %PC.i636
  %2833 = inttoptr i64 %2830 to i32*
  %2834 = load i32, i32* %2833
  %2835 = sext i32 %2834 to i64
  store i64 %2835, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_450193, %struct.Memory** %MEMORY
  %loadMem_450197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 1
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 15
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RBP.i635
  %2846 = load i64, i64* %RAX.i634
  %2847 = add i64 %2845, -480
  %2848 = add i64 %2847, %2846
  %2849 = load i64, i64* %PC.i633
  %2850 = add i64 %2849, 8
  store i64 %2850, i64* %PC.i633
  %2851 = inttoptr i64 %2848 to i8*
  store i8 1, i8* %2851
  store %struct.Memory* %loadMem_450197, %struct.Memory** %MEMORY
  br label %block_.L_45019f

block_.L_45019f:                                  ; preds = %block_450193, %block_45017e, %block_.L_450171
  %loadMem_45019f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 15
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %RBP.i632
  %2859 = sub i64 %2858, 52
  %2860 = load i64, i64* %PC.i631
  %2861 = add i64 %2860, 7
  store i64 %2861, i64* %PC.i631
  %2862 = inttoptr i64 %2859 to i32*
  %2863 = load i32, i32* %2862
  %2864 = sub i32 %2863, 421
  %2865 = icmp ult i32 %2863, 421
  %2866 = zext i1 %2865 to i8
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2866, i8* %2867, align 1
  %2868 = and i32 %2864, 255
  %2869 = call i32 @llvm.ctpop.i32(i32 %2868)
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  %2872 = xor i8 %2871, 1
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2872, i8* %2873, align 1
  %2874 = xor i32 %2863, 421
  %2875 = xor i32 %2874, %2864
  %2876 = lshr i32 %2875, 4
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2878, i8* %2879, align 1
  %2880 = icmp eq i32 %2864, 0
  %2881 = zext i1 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2881, i8* %2882, align 1
  %2883 = lshr i32 %2864, 31
  %2884 = trunc i32 %2883 to i8
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2884, i8* %2885, align 1
  %2886 = lshr i32 %2863, 31
  %2887 = xor i32 %2883, %2886
  %2888 = add i32 %2887, %2886
  %2889 = icmp eq i32 %2888, 2
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2890, i8* %2891, align 1
  store %struct.Memory* %loadMem_45019f, %struct.Memory** %MEMORY
  %loadMem_4501a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %PC.i630
  %2896 = add i64 %2895, 39
  %2897 = load i64, i64* %PC.i630
  %2898 = add i64 %2897, 6
  %2899 = load i64, i64* %PC.i630
  %2900 = add i64 %2899, 6
  store i64 %2900, i64* %PC.i630
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2902 = load i8, i8* %2901, align 1
  %2903 = icmp eq i8 %2902, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %BRANCH_TAKEN, align 1
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2906 = select i1 %2903, i64 %2896, i64 %2898
  store i64 %2906, i64* %2905, align 8
  store %struct.Memory* %loadMem_4501a6, %struct.Memory** %MEMORY
  %loadBr_4501a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501a6 = icmp eq i8 %loadBr_4501a6, 1
  br i1 %cmpBr_4501a6, label %block_.L_4501cd, label %block_4501ac

block_4501ac:                                     ; preds = %block_.L_45019f
  %loadMem_4501ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 1
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RBP.i629
  %2917 = sub i64 %2916, 52
  %2918 = load i64, i64* %PC.i627
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %PC.i627
  %2920 = inttoptr i64 %2917 to i32*
  %2921 = load i32, i32* %2920
  %2922 = sext i32 %2921 to i64
  store i64 %2922, i64* %RAX.i628, align 8
  store %struct.Memory* %loadMem_4501ac, %struct.Memory** %MEMORY
  %loadMem_4501b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 5
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RAX.i625
  %2933 = add i64 %2932, 12099168
  %2934 = load i64, i64* %PC.i624
  %2935 = add i64 %2934, 8
  store i64 %2935, i64* %PC.i624
  %2936 = inttoptr i64 %2933 to i8*
  %2937 = load i8, i8* %2936
  %2938 = zext i8 %2937 to i64
  store i64 %2938, i64* %RCX.i626, align 8
  store %struct.Memory* %loadMem_4501b0, %struct.Memory** %MEMORY
  %loadMem_4501b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 5
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %ECX.i623 = bitcast %union.anon* %2944 to i32*
  %2945 = load i32, i32* %ECX.i623
  %2946 = zext i32 %2945 to i64
  %2947 = load i64, i64* %PC.i622
  %2948 = add i64 %2947, 3
  store i64 %2948, i64* %PC.i622
  %2949 = sub i32 %2945, 3
  %2950 = icmp ult i32 %2945, 3
  %2951 = zext i1 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2951, i8* %2952, align 1
  %2953 = and i32 %2949, 255
  %2954 = call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2957, i8* %2958, align 1
  %2959 = xor i64 3, %2946
  %2960 = trunc i64 %2959 to i32
  %2961 = xor i32 %2960, %2949
  %2962 = lshr i32 %2961, 4
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2964, i8* %2965, align 1
  %2966 = icmp eq i32 %2949, 0
  %2967 = zext i1 %2966 to i8
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2967, i8* %2968, align 1
  %2969 = lshr i32 %2949, 31
  %2970 = trunc i32 %2969 to i8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2970, i8* %2971, align 1
  %2972 = lshr i32 %2945, 31
  %2973 = xor i32 %2969, %2972
  %2974 = add i32 %2973, %2972
  %2975 = icmp eq i32 %2974, 2
  %2976 = zext i1 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2976, i8* %2977, align 1
  store %struct.Memory* %loadMem_4501b8, %struct.Memory** %MEMORY
  %loadMem_4501bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %PC.i621
  %2982 = add i64 %2981, 18
  %2983 = load i64, i64* %PC.i621
  %2984 = add i64 %2983, 6
  %2985 = load i64, i64* %PC.i621
  %2986 = add i64 %2985, 6
  store i64 %2986, i64* %PC.i621
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2988 = load i8, i8* %2987, align 1
  store i8 %2988, i8* %BRANCH_TAKEN, align 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2990 = icmp ne i8 %2988, 0
  %2991 = select i1 %2990, i64 %2982, i64 %2984
  store i64 %2991, i64* %2989, align 8
  store %struct.Memory* %loadMem_4501bb, %struct.Memory** %MEMORY
  %loadBr_4501bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501bb = icmp eq i8 %loadBr_4501bb, 1
  br i1 %cmpBr_4501bb, label %block_.L_4501cd, label %block_4501c1

block_4501c1:                                     ; preds = %block_4501ac
  %loadMem_4501c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 1
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 15
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %RBP.i620
  %3002 = sub i64 %3001, 52
  %3003 = load i64, i64* %PC.i618
  %3004 = add i64 %3003, 4
  store i64 %3004, i64* %PC.i618
  %3005 = inttoptr i64 %3002 to i32*
  %3006 = load i32, i32* %3005
  %3007 = sext i32 %3006 to i64
  store i64 %3007, i64* %RAX.i619, align 8
  store %struct.Memory* %loadMem_4501c1, %struct.Memory** %MEMORY
  %loadMem_4501c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 1
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 15
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %RBP.i617
  %3018 = load i64, i64* %RAX.i616
  %3019 = add i64 %3017, -480
  %3020 = add i64 %3019, %3018
  %3021 = load i64, i64* %PC.i615
  %3022 = add i64 %3021, 8
  store i64 %3022, i64* %PC.i615
  %3023 = inttoptr i64 %3020 to i8*
  store i8 1, i8* %3023
  store %struct.Memory* %loadMem_4501c5, %struct.Memory** %MEMORY
  br label %block_.L_4501cd

block_.L_4501cd:                                  ; preds = %block_4501c1, %block_4501ac, %block_.L_45019f
  %loadMem_4501cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 15
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RBP.i614
  %3031 = sub i64 %3030, 488
  %3032 = load i64, i64* %PC.i613
  %3033 = add i64 %3032, 10
  store i64 %3033, i64* %PC.i613
  %3034 = inttoptr i64 %3031 to i32*
  store i32 1, i32* %3034
  store %struct.Memory* %loadMem_4501cd, %struct.Memory** %MEMORY
  br label %block_.L_4501d7

block_.L_4501d7:                                  ; preds = %block_.L_4503bb, %block_.L_4501cd
  %loadMem_4501d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 15
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3040 to i64*
  %3041 = load i64, i64* %RBP.i612
  %3042 = sub i64 %3041, 488
  %3043 = load i64, i64* %PC.i611
  %3044 = add i64 %3043, 7
  store i64 %3044, i64* %PC.i611
  %3045 = inttoptr i64 %3042 to i32*
  %3046 = load i32, i32* %3045
  %3047 = sub i32 %3046, 5
  %3048 = icmp ult i32 %3046, 5
  %3049 = zext i1 %3048 to i8
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3049, i8* %3050, align 1
  %3051 = and i32 %3047, 255
  %3052 = call i32 @llvm.ctpop.i32(i32 %3051)
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3055, i8* %3056, align 1
  %3057 = xor i32 %3046, 5
  %3058 = xor i32 %3057, %3047
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3061, i8* %3062, align 1
  %3063 = icmp eq i32 %3047, 0
  %3064 = zext i1 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3064, i8* %3065, align 1
  %3066 = lshr i32 %3047, 31
  %3067 = trunc i32 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3067, i8* %3068, align 1
  %3069 = lshr i32 %3046, 31
  %3070 = xor i32 %3066, %3069
  %3071 = add i32 %3070, %3069
  %3072 = icmp eq i32 %3071, 2
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3073, i8* %3074, align 1
  store %struct.Memory* %loadMem_4501d7, %struct.Memory** %MEMORY
  %loadMem_4501de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 33
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3077 to i64*
  %3078 = load i64, i64* %PC.i610
  %3079 = add i64 %3078, 497
  %3080 = load i64, i64* %PC.i610
  %3081 = add i64 %3080, 6
  %3082 = load i64, i64* %PC.i610
  %3083 = add i64 %3082, 6
  store i64 %3083, i64* %PC.i610
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3085 = load i8, i8* %3084, align 1
  %3086 = icmp ne i8 %3085, 0
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3088 = load i8, i8* %3087, align 1
  %3089 = icmp ne i8 %3088, 0
  %3090 = xor i1 %3086, %3089
  %3091 = xor i1 %3090, true
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %BRANCH_TAKEN, align 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3094 = select i1 %3090, i64 %3081, i64 %3079
  store i64 %3094, i64* %3093, align 8
  store %struct.Memory* %loadMem_4501de, %struct.Memory** %MEMORY
  %loadBr_4501de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501de = icmp eq i8 %loadBr_4501de, 1
  br i1 %cmpBr_4501de, label %block_.L_4503cf, label %block_4501e4

block_4501e4:                                     ; preds = %block_.L_4501d7
  %loadMem_4501e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 15
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %3100 to i64*
  %3101 = load i64, i64* %RBP.i609
  %3102 = sub i64 %3101, 484
  %3103 = load i64, i64* %PC.i608
  %3104 = add i64 %3103, 10
  store i64 %3104, i64* %PC.i608
  %3105 = inttoptr i64 %3102 to i32*
  store i32 21, i32* %3105
  store %struct.Memory* %loadMem_4501e4, %struct.Memory** %MEMORY
  br label %block_.L_4501ee

block_.L_4501ee:                                  ; preds = %block_.L_4503a2, %block_4501e4
  %loadMem_4501ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 15
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RBP.i607
  %3113 = sub i64 %3112, 484
  %3114 = load i64, i64* %PC.i606
  %3115 = add i64 %3114, 10
  store i64 %3115, i64* %PC.i606
  %3116 = inttoptr i64 %3113 to i32*
  %3117 = load i32, i32* %3116
  %3118 = sub i32 %3117, 400
  %3119 = icmp ult i32 %3117, 400
  %3120 = zext i1 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3120, i8* %3121, align 1
  %3122 = and i32 %3118, 255
  %3123 = call i32 @llvm.ctpop.i32(i32 %3122)
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3126, i8* %3127, align 1
  %3128 = xor i32 %3117, 400
  %3129 = xor i32 %3128, %3118
  %3130 = lshr i32 %3129, 4
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3132, i8* %3133, align 1
  %3134 = icmp eq i32 %3118, 0
  %3135 = zext i1 %3134 to i8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3135, i8* %3136, align 1
  %3137 = lshr i32 %3118, 31
  %3138 = trunc i32 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3138, i8* %3139, align 1
  %3140 = lshr i32 %3117, 31
  %3141 = xor i32 %3137, %3140
  %3142 = add i32 %3141, %3140
  %3143 = icmp eq i32 %3142, 2
  %3144 = zext i1 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3144, i8* %3145, align 1
  store %struct.Memory* %loadMem_4501ee, %struct.Memory** %MEMORY
  %loadMem_4501f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %PC.i605
  %3150 = add i64 %3149, 446
  %3151 = load i64, i64* %PC.i605
  %3152 = add i64 %3151, 6
  %3153 = load i64, i64* %PC.i605
  %3154 = add i64 %3153, 6
  store i64 %3154, i64* %PC.i605
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3156 = load i8, i8* %3155, align 1
  %3157 = icmp ne i8 %3156, 0
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3159 = load i8, i8* %3158, align 1
  %3160 = icmp ne i8 %3159, 0
  %3161 = xor i1 %3157, %3160
  %3162 = xor i1 %3161, true
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %BRANCH_TAKEN, align 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3165 = select i1 %3161, i64 %3152, i64 %3150
  store i64 %3165, i64* %3164, align 8
  store %struct.Memory* %loadMem_4501f8, %struct.Memory** %MEMORY
  %loadBr_4501f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501f8 = icmp eq i8 %loadBr_4501f8, 1
  br i1 %cmpBr_4501f8, label %block_.L_4503b6, label %block_4501fe

block_4501fe:                                     ; preds = %block_.L_4501ee
  %loadMem_4501fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 1
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 15
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3174 to i64*
  %3175 = load i64, i64* %RBP.i604
  %3176 = sub i64 %3175, 484
  %3177 = load i64, i64* %PC.i602
  %3178 = add i64 %3177, 7
  store i64 %3178, i64* %PC.i602
  %3179 = inttoptr i64 %3176 to i32*
  %3180 = load i32, i32* %3179
  %3181 = sext i32 %3180 to i64
  store i64 %3181, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_4501fe, %struct.Memory** %MEMORY
  %loadMem_450205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 1
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 5
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %3190 to i64*
  %3191 = load i64, i64* %RAX.i600
  %3192 = add i64 %3191, 12099168
  %3193 = load i64, i64* %PC.i599
  %3194 = add i64 %3193, 8
  store i64 %3194, i64* %PC.i599
  %3195 = inttoptr i64 %3192 to i8*
  %3196 = load i8, i8* %3195
  %3197 = zext i8 %3196 to i64
  store i64 %3197, i64* %RCX.i601, align 8
  store %struct.Memory* %loadMem_450205, %struct.Memory** %MEMORY
  %loadMem_45020d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 5
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %ECX.i598 = bitcast %union.anon* %3203 to i32*
  %3204 = load i32, i32* %ECX.i598
  %3205 = zext i32 %3204 to i64
  %3206 = load i64, i64* %PC.i597
  %3207 = add i64 %3206, 3
  store i64 %3207, i64* %PC.i597
  %3208 = sub i32 %3204, 3
  %3209 = icmp ult i32 %3204, 3
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3210, i8* %3211, align 1
  %3212 = and i32 %3208, 255
  %3213 = call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3216, i8* %3217, align 1
  %3218 = xor i64 3, %3205
  %3219 = trunc i64 %3218 to i32
  %3220 = xor i32 %3219, %3208
  %3221 = lshr i32 %3220, 4
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3223, i8* %3224, align 1
  %3225 = icmp eq i32 %3208, 0
  %3226 = zext i1 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3226, i8* %3227, align 1
  %3228 = lshr i32 %3208, 31
  %3229 = trunc i32 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3229, i8* %3230, align 1
  %3231 = lshr i32 %3204, 31
  %3232 = xor i32 %3228, %3231
  %3233 = add i32 %3232, %3231
  %3234 = icmp eq i32 %3233, 2
  %3235 = zext i1 %3234 to i8
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3235, i8* %3236, align 1
  store %struct.Memory* %loadMem_45020d, %struct.Memory** %MEMORY
  %loadMem_450210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %PC.i596
  %3241 = add i64 %3240, 57
  %3242 = load i64, i64* %PC.i596
  %3243 = add i64 %3242, 6
  %3244 = load i64, i64* %PC.i596
  %3245 = add i64 %3244, 6
  store i64 %3245, i64* %PC.i596
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3247 = load i8, i8* %3246, align 1
  store i8 %3247, i8* %BRANCH_TAKEN, align 1
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3249 = icmp ne i8 %3247, 0
  %3250 = select i1 %3249, i64 %3241, i64 %3243
  store i64 %3250, i64* %3248, align 8
  store %struct.Memory* %loadMem_450210, %struct.Memory** %MEMORY
  %loadBr_450210 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450210 = icmp eq i8 %loadBr_450210, 1
  br i1 %cmpBr_450210, label %block_.L_450249, label %block_450216

block_450216:                                     ; preds = %block_4501fe
  %loadMem_450216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 1
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 15
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RBP.i595
  %3261 = sub i64 %3260, 484
  %3262 = load i64, i64* %PC.i593
  %3263 = add i64 %3262, 7
  store i64 %3263, i64* %PC.i593
  %3264 = inttoptr i64 %3261 to i32*
  %3265 = load i32, i32* %3264
  %3266 = sext i32 %3265 to i64
  store i64 %3266, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_450216, %struct.Memory** %MEMORY
  %loadMem_45021d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 1
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 5
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RAX.i591
  %3277 = add i64 %3276, 12099168
  %3278 = load i64, i64* %PC.i590
  %3279 = add i64 %3278, 8
  store i64 %3279, i64* %PC.i590
  %3280 = inttoptr i64 %3277 to i8*
  %3281 = load i8, i8* %3280
  %3282 = zext i8 %3281 to i64
  store i64 %3282, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_45021d, %struct.Memory** %MEMORY
  %loadMem_450225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 5
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %ECX.i588 = bitcast %union.anon* %3288 to i32*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 15
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %3291 to i64*
  %3292 = load i32, i32* %ECX.i588
  %3293 = zext i32 %3292 to i64
  %3294 = load i64, i64* %RBP.i589
  %3295 = sub i64 %3294, 496
  %3296 = load i64, i64* %PC.i587
  %3297 = add i64 %3296, 6
  store i64 %3297, i64* %PC.i587
  %3298 = inttoptr i64 %3295 to i32*
  %3299 = load i32, i32* %3298
  %3300 = sub i32 %3292, %3299
  %3301 = icmp ult i32 %3292, %3299
  %3302 = zext i1 %3301 to i8
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3302, i8* %3303, align 1
  %3304 = and i32 %3300, 255
  %3305 = call i32 @llvm.ctpop.i32(i32 %3304)
  %3306 = trunc i32 %3305 to i8
  %3307 = and i8 %3306, 1
  %3308 = xor i8 %3307, 1
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3308, i8* %3309, align 1
  %3310 = xor i32 %3299, %3292
  %3311 = xor i32 %3310, %3300
  %3312 = lshr i32 %3311, 4
  %3313 = trunc i32 %3312 to i8
  %3314 = and i8 %3313, 1
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3314, i8* %3315, align 1
  %3316 = icmp eq i32 %3300, 0
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3317, i8* %3318, align 1
  %3319 = lshr i32 %3300, 31
  %3320 = trunc i32 %3319 to i8
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3320, i8* %3321, align 1
  %3322 = lshr i32 %3292, 31
  %3323 = lshr i32 %3299, 31
  %3324 = xor i32 %3323, %3322
  %3325 = xor i32 %3319, %3322
  %3326 = add i32 %3325, %3324
  %3327 = icmp eq i32 %3326, 2
  %3328 = zext i1 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3328, i8* %3329, align 1
  store %struct.Memory* %loadMem_450225, %struct.Memory** %MEMORY
  %loadMem_45022b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %PC.i586
  %3334 = add i64 %3333, 30
  %3335 = load i64, i64* %PC.i586
  %3336 = add i64 %3335, 6
  %3337 = load i64, i64* %PC.i586
  %3338 = add i64 %3337, 6
  store i64 %3338, i64* %PC.i586
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3340 = load i8, i8* %3339, align 1
  store i8 %3340, i8* %BRANCH_TAKEN, align 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3342 = icmp ne i8 %3340, 0
  %3343 = select i1 %3342, i64 %3334, i64 %3336
  store i64 %3343, i64* %3341, align 8
  store %struct.Memory* %loadMem_45022b, %struct.Memory** %MEMORY
  %loadBr_45022b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45022b = icmp eq i8 %loadBr_45022b, 1
  br i1 %cmpBr_45022b, label %block_.L_450249, label %block_450231

block_450231:                                     ; preds = %block_450216
  %loadMem_450231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 15
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %3352 to i64*
  %3353 = load i64, i64* %RBP.i585
  %3354 = sub i64 %3353, 484
  %3355 = load i64, i64* %PC.i583
  %3356 = add i64 %3355, 7
  store i64 %3356, i64* %PC.i583
  %3357 = inttoptr i64 %3354 to i32*
  %3358 = load i32, i32* %3357
  %3359 = sext i32 %3358 to i64
  store i64 %3359, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_450231, %struct.Memory** %MEMORY
  %loadMem_450238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 33
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 1
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 5
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 15
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %RBP.i582
  %3373 = load i64, i64* %RAX.i580
  %3374 = add i64 %3372, -480
  %3375 = add i64 %3374, %3373
  %3376 = load i64, i64* %PC.i579
  %3377 = add i64 %3376, 8
  store i64 %3377, i64* %PC.i579
  %3378 = inttoptr i64 %3375 to i8*
  %3379 = load i8, i8* %3378
  %3380 = sext i8 %3379 to i64
  %3381 = and i64 %3380, 4294967295
  store i64 %3381, i64* %RCX.i581, align 8
  store %struct.Memory* %loadMem_450238, %struct.Memory** %MEMORY
  %loadMem_450240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 5
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %ECX.i578 = bitcast %union.anon* %3387 to i32*
  %3388 = load i32, i32* %ECX.i578
  %3389 = zext i32 %3388 to i64
  %3390 = load i64, i64* %PC.i577
  %3391 = add i64 %3390, 3
  store i64 %3391, i64* %PC.i577
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3392, align 1
  %3393 = and i32 %3388, 255
  %3394 = call i32 @llvm.ctpop.i32(i32 %3393)
  %3395 = trunc i32 %3394 to i8
  %3396 = and i8 %3395, 1
  %3397 = xor i8 %3396, 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3397, i8* %3398, align 1
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3399, align 1
  %3400 = icmp eq i32 %3388, 0
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3401, i8* %3402, align 1
  %3403 = lshr i32 %3388, 31
  %3404 = trunc i32 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3404, i8* %3405, align 1
  %3406 = lshr i32 %3388, 31
  %3407 = xor i32 %3403, %3406
  %3408 = add i32 %3407, %3406
  %3409 = icmp eq i32 %3408, 2
  %3410 = zext i1 %3409 to i8
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3410, i8* %3411, align 1
  store %struct.Memory* %loadMem_450240, %struct.Memory** %MEMORY
  %loadMem_450243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 33
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3414 to i64*
  %3415 = load i64, i64* %PC.i576
  %3416 = add i64 %3415, 11
  %3417 = load i64, i64* %PC.i576
  %3418 = add i64 %3417, 6
  %3419 = load i64, i64* %PC.i576
  %3420 = add i64 %3419, 6
  store i64 %3420, i64* %PC.i576
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3422 = load i8, i8* %3421, align 1
  store i8 %3422, i8* %BRANCH_TAKEN, align 1
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3424 = icmp ne i8 %3422, 0
  %3425 = select i1 %3424, i64 %3416, i64 %3418
  store i64 %3425, i64* %3423, align 8
  store %struct.Memory* %loadMem_450243, %struct.Memory** %MEMORY
  %loadBr_450243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450243 = icmp eq i8 %loadBr_450243, 1
  br i1 %cmpBr_450243, label %block_.L_45024e, label %block_.L_450249

block_.L_450249:                                  ; preds = %block_450231, %block_450216, %block_4501fe
  %loadMem_450249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %PC.i575
  %3430 = add i64 %3429, 345
  %3431 = load i64, i64* %PC.i575
  %3432 = add i64 %3431, 5
  store i64 %3432, i64* %PC.i575
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3430, i64* %3433, align 8
  store %struct.Memory* %loadMem_450249, %struct.Memory** %MEMORY
  br label %block_.L_4503a2

block_.L_45024e:                                  ; preds = %block_450231
  %loadMem_45024e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 1
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 15
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RBP.i574
  %3444 = sub i64 %3443, 484
  %3445 = load i64, i64* %PC.i572
  %3446 = add i64 %3445, 6
  store i64 %3446, i64* %PC.i572
  %3447 = inttoptr i64 %3444 to i32*
  %3448 = load i32, i32* %3447
  %3449 = zext i32 %3448 to i64
  store i64 %3449, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_45024e, %struct.Memory** %MEMORY
  %loadMem_450254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 1
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %RAX.i571
  %3457 = load i64, i64* %PC.i570
  %3458 = add i64 %3457, 3
  store i64 %3458, i64* %PC.i570
  %3459 = trunc i64 %3456 to i32
  %3460 = add i32 20, %3459
  %3461 = zext i32 %3460 to i64
  store i64 %3461, i64* %RAX.i571, align 8
  %3462 = icmp ult i32 %3460, %3459
  %3463 = icmp ult i32 %3460, 20
  %3464 = or i1 %3462, %3463
  %3465 = zext i1 %3464 to i8
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3465, i8* %3466, align 1
  %3467 = and i32 %3460, 255
  %3468 = call i32 @llvm.ctpop.i32(i32 %3467)
  %3469 = trunc i32 %3468 to i8
  %3470 = and i8 %3469, 1
  %3471 = xor i8 %3470, 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3471, i8* %3472, align 1
  %3473 = xor i64 20, %3456
  %3474 = trunc i64 %3473 to i32
  %3475 = xor i32 %3474, %3460
  %3476 = lshr i32 %3475, 4
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3478, i8* %3479, align 1
  %3480 = icmp eq i32 %3460, 0
  %3481 = zext i1 %3480 to i8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3481, i8* %3482, align 1
  %3483 = lshr i32 %3460, 31
  %3484 = trunc i32 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3484, i8* %3485, align 1
  %3486 = lshr i32 %3459, 31
  %3487 = xor i32 %3483, %3486
  %3488 = add i32 %3487, %3483
  %3489 = icmp eq i32 %3488, 2
  %3490 = zext i1 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3490, i8* %3491, align 1
  store %struct.Memory* %loadMem_450254, %struct.Memory** %MEMORY
  %loadMem_450257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %EAX.i568 = bitcast %union.anon* %3497 to i32*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 5
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %3500 to i64*
  %3501 = load i32, i32* %EAX.i568
  %3502 = zext i32 %3501 to i64
  %3503 = load i64, i64* %PC.i567
  %3504 = add i64 %3503, 3
  store i64 %3504, i64* %PC.i567
  %3505 = shl i64 %3502, 32
  %3506 = ashr exact i64 %3505, 32
  store i64 %3506, i64* %RCX.i569, align 8
  store %struct.Memory* %loadMem_450257, %struct.Memory** %MEMORY
  %loadMem_45025a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 1
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 5
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RCX.i566
  %3517 = add i64 %3516, 12099168
  %3518 = load i64, i64* %PC.i564
  %3519 = add i64 %3518, 8
  store i64 %3519, i64* %PC.i564
  %3520 = inttoptr i64 %3517 to i8*
  %3521 = load i8, i8* %3520
  %3522 = zext i8 %3521 to i64
  store i64 %3522, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_45025a, %struct.Memory** %MEMORY
  %loadMem_450262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 1
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %EAX.i563 = bitcast %union.anon* %3528 to i32*
  %3529 = load i32, i32* %EAX.i563
  %3530 = zext i32 %3529 to i64
  %3531 = load i64, i64* %PC.i562
  %3532 = add i64 %3531, 3
  store i64 %3532, i64* %PC.i562
  %3533 = sub i32 %3529, 3
  %3534 = icmp ult i32 %3529, 3
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3535, i8* %3536, align 1
  %3537 = and i32 %3533, 255
  %3538 = call i32 @llvm.ctpop.i32(i32 %3537)
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  %3541 = xor i8 %3540, 1
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3541, i8* %3542, align 1
  %3543 = xor i64 3, %3530
  %3544 = trunc i64 %3543 to i32
  %3545 = xor i32 %3544, %3533
  %3546 = lshr i32 %3545, 4
  %3547 = trunc i32 %3546 to i8
  %3548 = and i8 %3547, 1
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3548, i8* %3549, align 1
  %3550 = icmp eq i32 %3533, 0
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3551, i8* %3552, align 1
  %3553 = lshr i32 %3533, 31
  %3554 = trunc i32 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3554, i8* %3555, align 1
  %3556 = lshr i32 %3529, 31
  %3557 = xor i32 %3553, %3556
  %3558 = add i32 %3557, %3556
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3560, i8* %3561, align 1
  store %struct.Memory* %loadMem_450262, %struct.Memory** %MEMORY
  %loadMem_450265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %PC.i561
  %3566 = add i64 %3565, 38
  %3567 = load i64, i64* %PC.i561
  %3568 = add i64 %3567, 6
  %3569 = load i64, i64* %PC.i561
  %3570 = add i64 %3569, 6
  store i64 %3570, i64* %PC.i561
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3572 = load i8, i8* %3571, align 1
  store i8 %3572, i8* %BRANCH_TAKEN, align 1
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3574 = icmp ne i8 %3572, 0
  %3575 = select i1 %3574, i64 %3566, i64 %3568
  store i64 %3575, i64* %3573, align 8
  store %struct.Memory* %loadMem_450265, %struct.Memory** %MEMORY
  %loadBr_450265 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450265 = icmp eq i8 %loadBr_450265, 1
  br i1 %cmpBr_450265, label %block_.L_45028b, label %block_45026b

block_45026b:                                     ; preds = %block_.L_45024e
  %loadMem_45026b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 1
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 15
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %RBP.i560
  %3586 = sub i64 %3585, 484
  %3587 = load i64, i64* %PC.i558
  %3588 = add i64 %3587, 6
  store i64 %3588, i64* %PC.i558
  %3589 = inttoptr i64 %3586 to i32*
  %3590 = load i32, i32* %3589
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_45026b, %struct.Memory** %MEMORY
  %loadMem_450271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 1
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %RAX.i557
  %3599 = load i64, i64* %PC.i556
  %3600 = add i64 %3599, 3
  store i64 %3600, i64* %PC.i556
  %3601 = trunc i64 %3598 to i32
  %3602 = add i32 20, %3601
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RAX.i557, align 8
  %3604 = icmp ult i32 %3602, %3601
  %3605 = icmp ult i32 %3602, 20
  %3606 = or i1 %3604, %3605
  %3607 = zext i1 %3606 to i8
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3607, i8* %3608, align 1
  %3609 = and i32 %3602, 255
  %3610 = call i32 @llvm.ctpop.i32(i32 %3609)
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  %3613 = xor i8 %3612, 1
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3613, i8* %3614, align 1
  %3615 = xor i64 20, %3598
  %3616 = trunc i64 %3615 to i32
  %3617 = xor i32 %3616, %3602
  %3618 = lshr i32 %3617, 4
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3620, i8* %3621, align 1
  %3622 = icmp eq i32 %3602, 0
  %3623 = zext i1 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3623, i8* %3624, align 1
  %3625 = lshr i32 %3602, 31
  %3626 = trunc i32 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3626, i8* %3627, align 1
  %3628 = lshr i32 %3601, 31
  %3629 = xor i32 %3625, %3628
  %3630 = add i32 %3629, %3625
  %3631 = icmp eq i32 %3630, 2
  %3632 = zext i1 %3631 to i8
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3632, i8* %3633, align 1
  store %struct.Memory* %loadMem_450271, %struct.Memory** %MEMORY
  %loadMem_450274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 1
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %3639 to i32*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 5
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %3642 to i64*
  %3643 = load i32, i32* %EAX.i554
  %3644 = zext i32 %3643 to i64
  %3645 = load i64, i64* %PC.i553
  %3646 = add i64 %3645, 3
  store i64 %3646, i64* %PC.i553
  %3647 = shl i64 %3644, 32
  %3648 = ashr exact i64 %3647, 32
  store i64 %3648, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_450274, %struct.Memory** %MEMORY
  %loadMem_450277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 33
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3651 to i64*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 1
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 5
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 15
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3660 to i64*
  %3661 = load i64, i64* %RBP.i552
  %3662 = load i64, i64* %RCX.i551
  %3663 = add i64 %3661, -480
  %3664 = add i64 %3663, %3662
  %3665 = load i64, i64* %PC.i549
  %3666 = add i64 %3665, 8
  store i64 %3666, i64* %PC.i549
  %3667 = inttoptr i64 %3664 to i8*
  %3668 = load i8, i8* %3667
  %3669 = sext i8 %3668 to i64
  %3670 = and i64 %3669, 4294967295
  store i64 %3670, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_450277, %struct.Memory** %MEMORY
  %loadMem_45027f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 1
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %3676 to i32*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 15
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3679 to i64*
  %3680 = load i32, i32* %EAX.i547
  %3681 = zext i32 %3680 to i64
  %3682 = load i64, i64* %RBP.i548
  %3683 = sub i64 %3682, 488
  %3684 = load i64, i64* %PC.i546
  %3685 = add i64 %3684, 6
  store i64 %3685, i64* %PC.i546
  %3686 = inttoptr i64 %3683 to i32*
  %3687 = load i32, i32* %3686
  %3688 = sub i32 %3680, %3687
  %3689 = icmp ult i32 %3680, %3687
  %3690 = zext i1 %3689 to i8
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3690, i8* %3691, align 1
  %3692 = and i32 %3688, 255
  %3693 = call i32 @llvm.ctpop.i32(i32 %3692)
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = xor i8 %3695, 1
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3696, i8* %3697, align 1
  %3698 = xor i32 %3687, %3680
  %3699 = xor i32 %3698, %3688
  %3700 = lshr i32 %3699, 4
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3702, i8* %3703, align 1
  %3704 = icmp eq i32 %3688, 0
  %3705 = zext i1 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3705, i8* %3706, align 1
  %3707 = lshr i32 %3688, 31
  %3708 = trunc i32 %3707 to i8
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3708, i8* %3709, align 1
  %3710 = lshr i32 %3680, 31
  %3711 = lshr i32 %3687, 31
  %3712 = xor i32 %3711, %3710
  %3713 = xor i32 %3707, %3710
  %3714 = add i32 %3713, %3712
  %3715 = icmp eq i32 %3714, 2
  %3716 = zext i1 %3715 to i8
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3716, i8* %3717, align 1
  store %struct.Memory* %loadMem_45027f, %struct.Memory** %MEMORY
  %loadMem_450285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %PC.i545
  %3722 = add i64 %3721, 189
  %3723 = load i64, i64* %PC.i545
  %3724 = add i64 %3723, 6
  %3725 = load i64, i64* %PC.i545
  %3726 = add i64 %3725, 6
  store i64 %3726, i64* %PC.i545
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3728 = load i8, i8* %3727, align 1
  store i8 %3728, i8* %BRANCH_TAKEN, align 1
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3730 = icmp ne i8 %3728, 0
  %3731 = select i1 %3730, i64 %3722, i64 %3724
  store i64 %3731, i64* %3729, align 8
  store %struct.Memory* %loadMem_450285, %struct.Memory** %MEMORY
  %loadBr_450285 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450285 = icmp eq i8 %loadBr_450285, 1
  br i1 %cmpBr_450285, label %block_.L_450342, label %block_.L_45028b

block_.L_45028b:                                  ; preds = %block_45026b, %block_.L_45024e
  %loadMem_45028b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 1
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 15
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %RBP.i544
  %3742 = sub i64 %3741, 484
  %3743 = load i64, i64* %PC.i542
  %3744 = add i64 %3743, 6
  store i64 %3744, i64* %PC.i542
  %3745 = inttoptr i64 %3742 to i32*
  %3746 = load i32, i32* %3745
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_45028b, %struct.Memory** %MEMORY
  %loadMem_450291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 33
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 1
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RAX.i541
  %3755 = load i64, i64* %PC.i540
  %3756 = add i64 %3755, 3
  store i64 %3756, i64* %PC.i540
  %3757 = trunc i64 %3754 to i32
  %3758 = sub i32 %3757, 1
  %3759 = zext i32 %3758 to i64
  store i64 %3759, i64* %RAX.i541, align 8
  %3760 = icmp ult i32 %3757, 1
  %3761 = zext i1 %3760 to i8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3761, i8* %3762, align 1
  %3763 = and i32 %3758, 255
  %3764 = call i32 @llvm.ctpop.i32(i32 %3763)
  %3765 = trunc i32 %3764 to i8
  %3766 = and i8 %3765, 1
  %3767 = xor i8 %3766, 1
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3767, i8* %3768, align 1
  %3769 = xor i64 1, %3754
  %3770 = trunc i64 %3769 to i32
  %3771 = xor i32 %3770, %3758
  %3772 = lshr i32 %3771, 4
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3774, i8* %3775, align 1
  %3776 = icmp eq i32 %3758, 0
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3777, i8* %3778, align 1
  %3779 = lshr i32 %3758, 31
  %3780 = trunc i32 %3779 to i8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3780, i8* %3781, align 1
  %3782 = lshr i32 %3757, 31
  %3783 = xor i32 %3779, %3782
  %3784 = add i32 %3783, %3782
  %3785 = icmp eq i32 %3784, 2
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3786, i8* %3787, align 1
  store %struct.Memory* %loadMem_450291, %struct.Memory** %MEMORY
  %loadMem_450294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 1
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %EAX.i538 = bitcast %union.anon* %3793 to i32*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 5
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %3796 to i64*
  %3797 = load i32, i32* %EAX.i538
  %3798 = zext i32 %3797 to i64
  %3799 = load i64, i64* %PC.i537
  %3800 = add i64 %3799, 3
  store i64 %3800, i64* %PC.i537
  %3801 = shl i64 %3798, 32
  %3802 = ashr exact i64 %3801, 32
  store i64 %3802, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_450294, %struct.Memory** %MEMORY
  %loadMem_450297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 1
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 5
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %3811 to i64*
  %3812 = load i64, i64* %RCX.i536
  %3813 = add i64 %3812, 12099168
  %3814 = load i64, i64* %PC.i534
  %3815 = add i64 %3814, 8
  store i64 %3815, i64* %PC.i534
  %3816 = inttoptr i64 %3813 to i8*
  %3817 = load i8, i8* %3816
  %3818 = zext i8 %3817 to i64
  store i64 %3818, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_450297, %struct.Memory** %MEMORY
  %loadMem_45029f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 1
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %EAX.i533 = bitcast %union.anon* %3824 to i32*
  %3825 = load i32, i32* %EAX.i533
  %3826 = zext i32 %3825 to i64
  %3827 = load i64, i64* %PC.i532
  %3828 = add i64 %3827, 3
  store i64 %3828, i64* %PC.i532
  %3829 = sub i32 %3825, 3
  %3830 = icmp ult i32 %3825, 3
  %3831 = zext i1 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3831, i8* %3832, align 1
  %3833 = and i32 %3829, 255
  %3834 = call i32 @llvm.ctpop.i32(i32 %3833)
  %3835 = trunc i32 %3834 to i8
  %3836 = and i8 %3835, 1
  %3837 = xor i8 %3836, 1
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3837, i8* %3838, align 1
  %3839 = xor i64 3, %3826
  %3840 = trunc i64 %3839 to i32
  %3841 = xor i32 %3840, %3829
  %3842 = lshr i32 %3841, 4
  %3843 = trunc i32 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3844, i8* %3845, align 1
  %3846 = icmp eq i32 %3829, 0
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3847, i8* %3848, align 1
  %3849 = lshr i32 %3829, 31
  %3850 = trunc i32 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3850, i8* %3851, align 1
  %3852 = lshr i32 %3825, 31
  %3853 = xor i32 %3849, %3852
  %3854 = add i32 %3853, %3852
  %3855 = icmp eq i32 %3854, 2
  %3856 = zext i1 %3855 to i8
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3856, i8* %3857, align 1
  store %struct.Memory* %loadMem_45029f, %struct.Memory** %MEMORY
  %loadMem_4502a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3860 to i64*
  %3861 = load i64, i64* %PC.i531
  %3862 = add i64 %3861, 38
  %3863 = load i64, i64* %PC.i531
  %3864 = add i64 %3863, 6
  %3865 = load i64, i64* %PC.i531
  %3866 = add i64 %3865, 6
  store i64 %3866, i64* %PC.i531
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3868 = load i8, i8* %3867, align 1
  store i8 %3868, i8* %BRANCH_TAKEN, align 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3870 = icmp ne i8 %3868, 0
  %3871 = select i1 %3870, i64 %3862, i64 %3864
  store i64 %3871, i64* %3869, align 8
  store %struct.Memory* %loadMem_4502a2, %struct.Memory** %MEMORY
  %loadBr_4502a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502a2 = icmp eq i8 %loadBr_4502a2, 1
  br i1 %cmpBr_4502a2, label %block_.L_4502c8, label %block_4502a8

block_4502a8:                                     ; preds = %block_.L_45028b
  %loadMem_4502a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3874 to i64*
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 1
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 15
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %RBP.i530
  %3882 = sub i64 %3881, 484
  %3883 = load i64, i64* %PC.i528
  %3884 = add i64 %3883, 6
  store i64 %3884, i64* %PC.i528
  %3885 = inttoptr i64 %3882 to i32*
  %3886 = load i32, i32* %3885
  %3887 = zext i32 %3886 to i64
  store i64 %3887, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_4502a8, %struct.Memory** %MEMORY
  %loadMem_4502ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 1
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %3893 to i64*
  %3894 = load i64, i64* %RAX.i527
  %3895 = load i64, i64* %PC.i526
  %3896 = add i64 %3895, 3
  store i64 %3896, i64* %PC.i526
  %3897 = trunc i64 %3894 to i32
  %3898 = sub i32 %3897, 1
  %3899 = zext i32 %3898 to i64
  store i64 %3899, i64* %RAX.i527, align 8
  %3900 = icmp ult i32 %3897, 1
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3901, i8* %3902, align 1
  %3903 = and i32 %3898, 255
  %3904 = call i32 @llvm.ctpop.i32(i32 %3903)
  %3905 = trunc i32 %3904 to i8
  %3906 = and i8 %3905, 1
  %3907 = xor i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3907, i8* %3908, align 1
  %3909 = xor i64 1, %3894
  %3910 = trunc i64 %3909 to i32
  %3911 = xor i32 %3910, %3898
  %3912 = lshr i32 %3911, 4
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3914, i8* %3915, align 1
  %3916 = icmp eq i32 %3898, 0
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3917, i8* %3918, align 1
  %3919 = lshr i32 %3898, 31
  %3920 = trunc i32 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3920, i8* %3921, align 1
  %3922 = lshr i32 %3897, 31
  %3923 = xor i32 %3919, %3922
  %3924 = add i32 %3923, %3922
  %3925 = icmp eq i32 %3924, 2
  %3926 = zext i1 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3926, i8* %3927, align 1
  store %struct.Memory* %loadMem_4502ae, %struct.Memory** %MEMORY
  %loadMem_4502b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 1
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %EAX.i524 = bitcast %union.anon* %3933 to i32*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 5
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %3936 to i64*
  %3937 = load i32, i32* %EAX.i524
  %3938 = zext i32 %3937 to i64
  %3939 = load i64, i64* %PC.i523
  %3940 = add i64 %3939, 3
  store i64 %3940, i64* %PC.i523
  %3941 = shl i64 %3938, 32
  %3942 = ashr exact i64 %3941, 32
  store i64 %3942, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_4502b1, %struct.Memory** %MEMORY
  %loadMem_4502b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 33
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 1
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 5
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %RBP.i522
  %3956 = load i64, i64* %RCX.i521
  %3957 = add i64 %3955, -480
  %3958 = add i64 %3957, %3956
  %3959 = load i64, i64* %PC.i519
  %3960 = add i64 %3959, 8
  store i64 %3960, i64* %PC.i519
  %3961 = inttoptr i64 %3958 to i8*
  %3962 = load i8, i8* %3961
  %3963 = sext i8 %3962 to i64
  %3964 = and i64 %3963, 4294967295
  store i64 %3964, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_4502b4, %struct.Memory** %MEMORY
  %loadMem_4502bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 1
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %EAX.i517 = bitcast %union.anon* %3970 to i32*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 15
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %3973 to i64*
  %3974 = load i32, i32* %EAX.i517
  %3975 = zext i32 %3974 to i64
  %3976 = load i64, i64* %RBP.i518
  %3977 = sub i64 %3976, 488
  %3978 = load i64, i64* %PC.i516
  %3979 = add i64 %3978, 6
  store i64 %3979, i64* %PC.i516
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = sub i32 %3974, %3981
  %3983 = icmp ult i32 %3974, %3981
  %3984 = zext i1 %3983 to i8
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3984, i8* %3985, align 1
  %3986 = and i32 %3982, 255
  %3987 = call i32 @llvm.ctpop.i32(i32 %3986)
  %3988 = trunc i32 %3987 to i8
  %3989 = and i8 %3988, 1
  %3990 = xor i8 %3989, 1
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3990, i8* %3991, align 1
  %3992 = xor i32 %3981, %3974
  %3993 = xor i32 %3992, %3982
  %3994 = lshr i32 %3993, 4
  %3995 = trunc i32 %3994 to i8
  %3996 = and i8 %3995, 1
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3996, i8* %3997, align 1
  %3998 = icmp eq i32 %3982, 0
  %3999 = zext i1 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3999, i8* %4000, align 1
  %4001 = lshr i32 %3982, 31
  %4002 = trunc i32 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4002, i8* %4003, align 1
  %4004 = lshr i32 %3974, 31
  %4005 = lshr i32 %3981, 31
  %4006 = xor i32 %4005, %4004
  %4007 = xor i32 %4001, %4004
  %4008 = add i32 %4007, %4006
  %4009 = icmp eq i32 %4008, 2
  %4010 = zext i1 %4009 to i8
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4010, i8* %4011, align 1
  store %struct.Memory* %loadMem_4502bc, %struct.Memory** %MEMORY
  %loadMem_4502c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %PC.i515
  %4016 = add i64 %4015, 128
  %4017 = load i64, i64* %PC.i515
  %4018 = add i64 %4017, 6
  %4019 = load i64, i64* %PC.i515
  %4020 = add i64 %4019, 6
  store i64 %4020, i64* %PC.i515
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4022 = load i8, i8* %4021, align 1
  store i8 %4022, i8* %BRANCH_TAKEN, align 1
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4024 = icmp ne i8 %4022, 0
  %4025 = select i1 %4024, i64 %4016, i64 %4018
  store i64 %4025, i64* %4023, align 8
  store %struct.Memory* %loadMem_4502c2, %struct.Memory** %MEMORY
  %loadBr_4502c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502c2 = icmp eq i8 %loadBr_4502c2, 1
  br i1 %cmpBr_4502c2, label %block_.L_450342, label %block_.L_4502c8

block_.L_4502c8:                                  ; preds = %block_4502a8, %block_.L_45028b
  %loadMem_4502c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 1
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 15
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %RBP.i514
  %4036 = sub i64 %4035, 484
  %4037 = load i64, i64* %PC.i512
  %4038 = add i64 %4037, 6
  store i64 %4038, i64* %PC.i512
  %4039 = inttoptr i64 %4036 to i32*
  %4040 = load i32, i32* %4039
  %4041 = zext i32 %4040 to i64
  store i64 %4041, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_4502c8, %struct.Memory** %MEMORY
  %loadMem_4502ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 1
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %4047 to i64*
  %4048 = load i64, i64* %RAX.i511
  %4049 = load i64, i64* %PC.i510
  %4050 = add i64 %4049, 3
  store i64 %4050, i64* %PC.i510
  %4051 = trunc i64 %4048 to i32
  %4052 = sub i32 %4051, 20
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RAX.i511, align 8
  %4054 = icmp ult i32 %4051, 20
  %4055 = zext i1 %4054 to i8
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4055, i8* %4056, align 1
  %4057 = and i32 %4052, 255
  %4058 = call i32 @llvm.ctpop.i32(i32 %4057)
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  %4061 = xor i8 %4060, 1
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4061, i8* %4062, align 1
  %4063 = xor i64 20, %4048
  %4064 = trunc i64 %4063 to i32
  %4065 = xor i32 %4064, %4052
  %4066 = lshr i32 %4065, 4
  %4067 = trunc i32 %4066 to i8
  %4068 = and i8 %4067, 1
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4068, i8* %4069, align 1
  %4070 = icmp eq i32 %4052, 0
  %4071 = zext i1 %4070 to i8
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4071, i8* %4072, align 1
  %4073 = lshr i32 %4052, 31
  %4074 = trunc i32 %4073 to i8
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4074, i8* %4075, align 1
  %4076 = lshr i32 %4051, 31
  %4077 = xor i32 %4073, %4076
  %4078 = add i32 %4077, %4076
  %4079 = icmp eq i32 %4078, 2
  %4080 = zext i1 %4079 to i8
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4080, i8* %4081, align 1
  store %struct.Memory* %loadMem_4502ce, %struct.Memory** %MEMORY
  %loadMem_4502d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 33
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4084 to i64*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 1
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %EAX.i508 = bitcast %union.anon* %4087 to i32*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 5
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %4090 to i64*
  %4091 = load i32, i32* %EAX.i508
  %4092 = zext i32 %4091 to i64
  %4093 = load i64, i64* %PC.i507
  %4094 = add i64 %4093, 3
  store i64 %4094, i64* %PC.i507
  %4095 = shl i64 %4092, 32
  %4096 = ashr exact i64 %4095, 32
  store i64 %4096, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_4502d1, %struct.Memory** %MEMORY
  %loadMem_4502d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 1
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 5
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %4105 to i64*
  %4106 = load i64, i64* %RCX.i506
  %4107 = add i64 %4106, 12099168
  %4108 = load i64, i64* %PC.i504
  %4109 = add i64 %4108, 8
  store i64 %4109, i64* %PC.i504
  %4110 = inttoptr i64 %4107 to i8*
  %4111 = load i8, i8* %4110
  %4112 = zext i8 %4111 to i64
  store i64 %4112, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_4502d4, %struct.Memory** %MEMORY
  %loadMem_4502dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 1
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %EAX.i503 = bitcast %union.anon* %4118 to i32*
  %4119 = load i32, i32* %EAX.i503
  %4120 = zext i32 %4119 to i64
  %4121 = load i64, i64* %PC.i502
  %4122 = add i64 %4121, 3
  store i64 %4122, i64* %PC.i502
  %4123 = sub i32 %4119, 3
  %4124 = icmp ult i32 %4119, 3
  %4125 = zext i1 %4124 to i8
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4125, i8* %4126, align 1
  %4127 = and i32 %4123, 255
  %4128 = call i32 @llvm.ctpop.i32(i32 %4127)
  %4129 = trunc i32 %4128 to i8
  %4130 = and i8 %4129, 1
  %4131 = xor i8 %4130, 1
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4131, i8* %4132, align 1
  %4133 = xor i64 3, %4120
  %4134 = trunc i64 %4133 to i32
  %4135 = xor i32 %4134, %4123
  %4136 = lshr i32 %4135, 4
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4138, i8* %4139, align 1
  %4140 = icmp eq i32 %4123, 0
  %4141 = zext i1 %4140 to i8
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4141, i8* %4142, align 1
  %4143 = lshr i32 %4123, 31
  %4144 = trunc i32 %4143 to i8
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4144, i8* %4145, align 1
  %4146 = lshr i32 %4119, 31
  %4147 = xor i32 %4143, %4146
  %4148 = add i32 %4147, %4146
  %4149 = icmp eq i32 %4148, 2
  %4150 = zext i1 %4149 to i8
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4150, i8* %4151, align 1
  store %struct.Memory* %loadMem_4502dc, %struct.Memory** %MEMORY
  %loadMem_4502df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %PC.i501
  %4156 = add i64 %4155, 38
  %4157 = load i64, i64* %PC.i501
  %4158 = add i64 %4157, 6
  %4159 = load i64, i64* %PC.i501
  %4160 = add i64 %4159, 6
  store i64 %4160, i64* %PC.i501
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4162 = load i8, i8* %4161, align 1
  store i8 %4162, i8* %BRANCH_TAKEN, align 1
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4164 = icmp ne i8 %4162, 0
  %4165 = select i1 %4164, i64 %4156, i64 %4158
  store i64 %4165, i64* %4163, align 8
  store %struct.Memory* %loadMem_4502df, %struct.Memory** %MEMORY
  %loadBr_4502df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502df = icmp eq i8 %loadBr_4502df, 1
  br i1 %cmpBr_4502df, label %block_.L_450305, label %block_4502e5

block_4502e5:                                     ; preds = %block_.L_4502c8
  %loadMem_4502e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 33
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 1
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 15
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %4174 to i64*
  %4175 = load i64, i64* %RBP.i500
  %4176 = sub i64 %4175, 484
  %4177 = load i64, i64* %PC.i498
  %4178 = add i64 %4177, 6
  store i64 %4178, i64* %PC.i498
  %4179 = inttoptr i64 %4176 to i32*
  %4180 = load i32, i32* %4179
  %4181 = zext i32 %4180 to i64
  store i64 %4181, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_4502e5, %struct.Memory** %MEMORY
  %loadMem_4502eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 33
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 1
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RAX.i497
  %4189 = load i64, i64* %PC.i496
  %4190 = add i64 %4189, 3
  store i64 %4190, i64* %PC.i496
  %4191 = trunc i64 %4188 to i32
  %4192 = sub i32 %4191, 20
  %4193 = zext i32 %4192 to i64
  store i64 %4193, i64* %RAX.i497, align 8
  %4194 = icmp ult i32 %4191, 20
  %4195 = zext i1 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4195, i8* %4196, align 1
  %4197 = and i32 %4192, 255
  %4198 = call i32 @llvm.ctpop.i32(i32 %4197)
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  %4201 = xor i8 %4200, 1
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4201, i8* %4202, align 1
  %4203 = xor i64 20, %4188
  %4204 = trunc i64 %4203 to i32
  %4205 = xor i32 %4204, %4192
  %4206 = lshr i32 %4205, 4
  %4207 = trunc i32 %4206 to i8
  %4208 = and i8 %4207, 1
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4208, i8* %4209, align 1
  %4210 = icmp eq i32 %4192, 0
  %4211 = zext i1 %4210 to i8
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4211, i8* %4212, align 1
  %4213 = lshr i32 %4192, 31
  %4214 = trunc i32 %4213 to i8
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4214, i8* %4215, align 1
  %4216 = lshr i32 %4191, 31
  %4217 = xor i32 %4213, %4216
  %4218 = add i32 %4217, %4216
  %4219 = icmp eq i32 %4218, 2
  %4220 = zext i1 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4220, i8* %4221, align 1
  store %struct.Memory* %loadMem_4502eb, %struct.Memory** %MEMORY
  %loadMem_4502ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 1
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %4227 to i32*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 5
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %4230 to i64*
  %4231 = load i32, i32* %EAX.i494
  %4232 = zext i32 %4231 to i64
  %4233 = load i64, i64* %PC.i493
  %4234 = add i64 %4233, 3
  store i64 %4234, i64* %PC.i493
  %4235 = shl i64 %4232, 32
  %4236 = ashr exact i64 %4235, 32
  store i64 %4236, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4502ee, %struct.Memory** %MEMORY
  %loadMem_4502f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 33
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 1
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 5
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 15
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RBP.i492
  %4250 = load i64, i64* %RCX.i491
  %4251 = add i64 %4249, -480
  %4252 = add i64 %4251, %4250
  %4253 = load i64, i64* %PC.i489
  %4254 = add i64 %4253, 8
  store i64 %4254, i64* %PC.i489
  %4255 = inttoptr i64 %4252 to i8*
  %4256 = load i8, i8* %4255
  %4257 = sext i8 %4256 to i64
  %4258 = and i64 %4257, 4294967295
  store i64 %4258, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_4502f1, %struct.Memory** %MEMORY
  %loadMem_4502f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 1
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %EAX.i487 = bitcast %union.anon* %4264 to i32*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 15
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %4267 to i64*
  %4268 = load i32, i32* %EAX.i487
  %4269 = zext i32 %4268 to i64
  %4270 = load i64, i64* %RBP.i488
  %4271 = sub i64 %4270, 488
  %4272 = load i64, i64* %PC.i486
  %4273 = add i64 %4272, 6
  store i64 %4273, i64* %PC.i486
  %4274 = inttoptr i64 %4271 to i32*
  %4275 = load i32, i32* %4274
  %4276 = sub i32 %4268, %4275
  %4277 = icmp ult i32 %4268, %4275
  %4278 = zext i1 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4278, i8* %4279, align 1
  %4280 = and i32 %4276, 255
  %4281 = call i32 @llvm.ctpop.i32(i32 %4280)
  %4282 = trunc i32 %4281 to i8
  %4283 = and i8 %4282, 1
  %4284 = xor i8 %4283, 1
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4284, i8* %4285, align 1
  %4286 = xor i32 %4275, %4268
  %4287 = xor i32 %4286, %4276
  %4288 = lshr i32 %4287, 4
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4290, i8* %4291, align 1
  %4292 = icmp eq i32 %4276, 0
  %4293 = zext i1 %4292 to i8
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4293, i8* %4294, align 1
  %4295 = lshr i32 %4276, 31
  %4296 = trunc i32 %4295 to i8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4296, i8* %4297, align 1
  %4298 = lshr i32 %4268, 31
  %4299 = lshr i32 %4275, 31
  %4300 = xor i32 %4299, %4298
  %4301 = xor i32 %4295, %4298
  %4302 = add i32 %4301, %4300
  %4303 = icmp eq i32 %4302, 2
  %4304 = zext i1 %4303 to i8
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4304, i8* %4305, align 1
  store %struct.Memory* %loadMem_4502f9, %struct.Memory** %MEMORY
  %loadMem_4502ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %PC.i485
  %4310 = add i64 %4309, 67
  %4311 = load i64, i64* %PC.i485
  %4312 = add i64 %4311, 6
  %4313 = load i64, i64* %PC.i485
  %4314 = add i64 %4313, 6
  store i64 %4314, i64* %PC.i485
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4316 = load i8, i8* %4315, align 1
  store i8 %4316, i8* %BRANCH_TAKEN, align 1
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4318 = icmp ne i8 %4316, 0
  %4319 = select i1 %4318, i64 %4310, i64 %4312
  store i64 %4319, i64* %4317, align 8
  store %struct.Memory* %loadMem_4502ff, %struct.Memory** %MEMORY
  %loadBr_4502ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502ff = icmp eq i8 %loadBr_4502ff, 1
  br i1 %cmpBr_4502ff, label %block_.L_450342, label %block_.L_450305

block_.L_450305:                                  ; preds = %block_4502e5, %block_.L_4502c8
  %loadMem_450305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 1
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 15
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %4328 to i64*
  %4329 = load i64, i64* %RBP.i484
  %4330 = sub i64 %4329, 484
  %4331 = load i64, i64* %PC.i482
  %4332 = add i64 %4331, 6
  store i64 %4332, i64* %PC.i482
  %4333 = inttoptr i64 %4330 to i32*
  %4334 = load i32, i32* %4333
  %4335 = zext i32 %4334 to i64
  store i64 %4335, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_450305, %struct.Memory** %MEMORY
  %loadMem_45030b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 1
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %RAX.i481
  %4343 = load i64, i64* %PC.i480
  %4344 = add i64 %4343, 3
  store i64 %4344, i64* %PC.i480
  %4345 = trunc i64 %4342 to i32
  %4346 = add i32 1, %4345
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RAX.i481, align 8
  %4348 = icmp ult i32 %4346, %4345
  %4349 = icmp ult i32 %4346, 1
  %4350 = or i1 %4348, %4349
  %4351 = zext i1 %4350 to i8
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4351, i8* %4352, align 1
  %4353 = and i32 %4346, 255
  %4354 = call i32 @llvm.ctpop.i32(i32 %4353)
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = xor i8 %4356, 1
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4357, i8* %4358, align 1
  %4359 = xor i64 1, %4342
  %4360 = trunc i64 %4359 to i32
  %4361 = xor i32 %4360, %4346
  %4362 = lshr i32 %4361, 4
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4364, i8* %4365, align 1
  %4366 = icmp eq i32 %4346, 0
  %4367 = zext i1 %4366 to i8
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4367, i8* %4368, align 1
  %4369 = lshr i32 %4346, 31
  %4370 = trunc i32 %4369 to i8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4370, i8* %4371, align 1
  %4372 = lshr i32 %4345, 31
  %4373 = xor i32 %4369, %4372
  %4374 = add i32 %4373, %4369
  %4375 = icmp eq i32 %4374, 2
  %4376 = zext i1 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4376, i8* %4377, align 1
  store %struct.Memory* %loadMem_45030b, %struct.Memory** %MEMORY
  %loadMem_45030e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %4383 to i32*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 5
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %4386 to i64*
  %4387 = load i32, i32* %EAX.i478
  %4388 = zext i32 %4387 to i64
  %4389 = load i64, i64* %PC.i477
  %4390 = add i64 %4389, 3
  store i64 %4390, i64* %PC.i477
  %4391 = shl i64 %4388, 32
  %4392 = ashr exact i64 %4391, 32
  store i64 %4392, i64* %RCX.i479, align 8
  store %struct.Memory* %loadMem_45030e, %struct.Memory** %MEMORY
  %loadMem_450311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 33
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 1
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 5
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %4401 to i64*
  %4402 = load i64, i64* %RCX.i476
  %4403 = add i64 %4402, 12099168
  %4404 = load i64, i64* %PC.i474
  %4405 = add i64 %4404, 8
  store i64 %4405, i64* %PC.i474
  %4406 = inttoptr i64 %4403 to i8*
  %4407 = load i8, i8* %4406
  %4408 = zext i8 %4407 to i64
  store i64 %4408, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_450311, %struct.Memory** %MEMORY
  %loadMem_450319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 1
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %4414 to i32*
  %4415 = load i32, i32* %EAX.i473
  %4416 = zext i32 %4415 to i64
  %4417 = load i64, i64* %PC.i472
  %4418 = add i64 %4417, 3
  store i64 %4418, i64* %PC.i472
  %4419 = sub i32 %4415, 3
  %4420 = icmp ult i32 %4415, 3
  %4421 = zext i1 %4420 to i8
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4421, i8* %4422, align 1
  %4423 = and i32 %4419, 255
  %4424 = call i32 @llvm.ctpop.i32(i32 %4423)
  %4425 = trunc i32 %4424 to i8
  %4426 = and i8 %4425, 1
  %4427 = xor i8 %4426, 1
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4427, i8* %4428, align 1
  %4429 = xor i64 3, %4416
  %4430 = trunc i64 %4429 to i32
  %4431 = xor i32 %4430, %4419
  %4432 = lshr i32 %4431, 4
  %4433 = trunc i32 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4434, i8* %4435, align 1
  %4436 = icmp eq i32 %4419, 0
  %4437 = zext i1 %4436 to i8
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4437, i8* %4438, align 1
  %4439 = lshr i32 %4419, 31
  %4440 = trunc i32 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4440, i8* %4441, align 1
  %4442 = lshr i32 %4415, 31
  %4443 = xor i32 %4439, %4442
  %4444 = add i32 %4443, %4442
  %4445 = icmp eq i32 %4444, 2
  %4446 = zext i1 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4446, i8* %4447, align 1
  store %struct.Memory* %loadMem_450319, %struct.Memory** %MEMORY
  %loadMem_45031c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %PC.i471
  %4452 = add i64 %4451, 129
  %4453 = load i64, i64* %PC.i471
  %4454 = add i64 %4453, 6
  %4455 = load i64, i64* %PC.i471
  %4456 = add i64 %4455, 6
  store i64 %4456, i64* %PC.i471
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4458 = load i8, i8* %4457, align 1
  store i8 %4458, i8* %BRANCH_TAKEN, align 1
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4460 = icmp ne i8 %4458, 0
  %4461 = select i1 %4460, i64 %4452, i64 %4454
  store i64 %4461, i64* %4459, align 8
  store %struct.Memory* %loadMem_45031c, %struct.Memory** %MEMORY
  %loadBr_45031c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45031c = icmp eq i8 %loadBr_45031c, 1
  br i1 %cmpBr_45031c, label %block_.L_45039d, label %block_450322

block_450322:                                     ; preds = %block_.L_450305
  %loadMem_450322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 1
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 15
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %RBP.i470
  %4472 = sub i64 %4471, 484
  %4473 = load i64, i64* %PC.i468
  %4474 = add i64 %4473, 6
  store i64 %4474, i64* %PC.i468
  %4475 = inttoptr i64 %4472 to i32*
  %4476 = load i32, i32* %4475
  %4477 = zext i32 %4476 to i64
  store i64 %4477, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_450322, %struct.Memory** %MEMORY
  %loadMem_450328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 33
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 1
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %4483 to i64*
  %4484 = load i64, i64* %RAX.i467
  %4485 = load i64, i64* %PC.i466
  %4486 = add i64 %4485, 3
  store i64 %4486, i64* %PC.i466
  %4487 = trunc i64 %4484 to i32
  %4488 = add i32 1, %4487
  %4489 = zext i32 %4488 to i64
  store i64 %4489, i64* %RAX.i467, align 8
  %4490 = icmp ult i32 %4488, %4487
  %4491 = icmp ult i32 %4488, 1
  %4492 = or i1 %4490, %4491
  %4493 = zext i1 %4492 to i8
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4493, i8* %4494, align 1
  %4495 = and i32 %4488, 255
  %4496 = call i32 @llvm.ctpop.i32(i32 %4495)
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  %4499 = xor i8 %4498, 1
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4499, i8* %4500, align 1
  %4501 = xor i64 1, %4484
  %4502 = trunc i64 %4501 to i32
  %4503 = xor i32 %4502, %4488
  %4504 = lshr i32 %4503, 4
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4506, i8* %4507, align 1
  %4508 = icmp eq i32 %4488, 0
  %4509 = zext i1 %4508 to i8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4509, i8* %4510, align 1
  %4511 = lshr i32 %4488, 31
  %4512 = trunc i32 %4511 to i8
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4512, i8* %4513, align 1
  %4514 = lshr i32 %4487, 31
  %4515 = xor i32 %4511, %4514
  %4516 = add i32 %4515, %4511
  %4517 = icmp eq i32 %4516, 2
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4518, i8* %4519, align 1
  store %struct.Memory* %loadMem_450328, %struct.Memory** %MEMORY
  %loadMem_45032b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 33
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 1
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %EAX.i464 = bitcast %union.anon* %4525 to i32*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 5
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %4528 to i64*
  %4529 = load i32, i32* %EAX.i464
  %4530 = zext i32 %4529 to i64
  %4531 = load i64, i64* %PC.i463
  %4532 = add i64 %4531, 3
  store i64 %4532, i64* %PC.i463
  %4533 = shl i64 %4530, 32
  %4534 = ashr exact i64 %4533, 32
  store i64 %4534, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_45032b, %struct.Memory** %MEMORY
  %loadMem_45032e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 1
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 5
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 15
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %4546 to i64*
  %4547 = load i64, i64* %RBP.i462
  %4548 = load i64, i64* %RCX.i461
  %4549 = add i64 %4547, -480
  %4550 = add i64 %4549, %4548
  %4551 = load i64, i64* %PC.i459
  %4552 = add i64 %4551, 8
  store i64 %4552, i64* %PC.i459
  %4553 = inttoptr i64 %4550 to i8*
  %4554 = load i8, i8* %4553
  %4555 = sext i8 %4554 to i64
  %4556 = and i64 %4555, 4294967295
  store i64 %4556, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_45032e, %struct.Memory** %MEMORY
  %loadMem_450336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 33
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 1
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %EAX.i457 = bitcast %union.anon* %4562 to i32*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 15
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %4565 to i64*
  %4566 = load i32, i32* %EAX.i457
  %4567 = zext i32 %4566 to i64
  %4568 = load i64, i64* %RBP.i458
  %4569 = sub i64 %4568, 488
  %4570 = load i64, i64* %PC.i456
  %4571 = add i64 %4570, 6
  store i64 %4571, i64* %PC.i456
  %4572 = inttoptr i64 %4569 to i32*
  %4573 = load i32, i32* %4572
  %4574 = sub i32 %4566, %4573
  %4575 = icmp ult i32 %4566, %4573
  %4576 = zext i1 %4575 to i8
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4576, i8* %4577, align 1
  %4578 = and i32 %4574, 255
  %4579 = call i32 @llvm.ctpop.i32(i32 %4578)
  %4580 = trunc i32 %4579 to i8
  %4581 = and i8 %4580, 1
  %4582 = xor i8 %4581, 1
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4582, i8* %4583, align 1
  %4584 = xor i32 %4573, %4566
  %4585 = xor i32 %4584, %4574
  %4586 = lshr i32 %4585, 4
  %4587 = trunc i32 %4586 to i8
  %4588 = and i8 %4587, 1
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4588, i8* %4589, align 1
  %4590 = icmp eq i32 %4574, 0
  %4591 = zext i1 %4590 to i8
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4591, i8* %4592, align 1
  %4593 = lshr i32 %4574, 31
  %4594 = trunc i32 %4593 to i8
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4594, i8* %4595, align 1
  %4596 = lshr i32 %4566, 31
  %4597 = lshr i32 %4573, 31
  %4598 = xor i32 %4597, %4596
  %4599 = xor i32 %4593, %4596
  %4600 = add i32 %4599, %4598
  %4601 = icmp eq i32 %4600, 2
  %4602 = zext i1 %4601 to i8
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4602, i8* %4603, align 1
  store %struct.Memory* %loadMem_450336, %struct.Memory** %MEMORY
  %loadMem_45033c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4606 to i64*
  %4607 = load i64, i64* %PC.i455
  %4608 = add i64 %4607, 97
  %4609 = load i64, i64* %PC.i455
  %4610 = add i64 %4609, 6
  %4611 = load i64, i64* %PC.i455
  %4612 = add i64 %4611, 6
  store i64 %4612, i64* %PC.i455
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4614 = load i8, i8* %4613, align 1
  %4615 = icmp eq i8 %4614, 0
  %4616 = zext i1 %4615 to i8
  store i8 %4616, i8* %BRANCH_TAKEN, align 1
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4618 = select i1 %4615, i64 %4608, i64 %4610
  store i64 %4618, i64* %4617, align 8
  store %struct.Memory* %loadMem_45033c, %struct.Memory** %MEMORY
  %loadBr_45033c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45033c = icmp eq i8 %loadBr_45033c, 1
  br i1 %cmpBr_45033c, label %block_.L_45039d, label %block_.L_450342

block_.L_450342:                                  ; preds = %block_450322, %block_4502e5, %block_4502a8, %block_45026b
  %loadMem_450342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 33
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 1
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 15
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %4627 to i64*
  %4628 = load i64, i64* %RBP.i454
  %4629 = sub i64 %4628, 484
  %4630 = load i64, i64* %PC.i452
  %4631 = add i64 %4630, 7
  store i64 %4631, i64* %PC.i452
  %4632 = inttoptr i64 %4629 to i32*
  %4633 = load i32, i32* %4632
  %4634 = sext i32 %4633 to i64
  store i64 %4634, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_450342, %struct.Memory** %MEMORY
  %loadMem_450349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 1
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 5
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %4643 to i64*
  %4644 = load i64, i64* %RAX.i450
  %4645 = add i64 %4644, 12099168
  %4646 = load i64, i64* %PC.i449
  %4647 = add i64 %4646, 8
  store i64 %4647, i64* %PC.i449
  %4648 = inttoptr i64 %4645 to i8*
  %4649 = load i8, i8* %4648
  %4650 = zext i8 %4649 to i64
  store i64 %4650, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_450349, %struct.Memory** %MEMORY
  %loadMem_450351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 5
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %ECX.i448 = bitcast %union.anon* %4656 to i32*
  %4657 = load i32, i32* %ECX.i448
  %4658 = zext i32 %4657 to i64
  %4659 = load i64, i64* %PC.i447
  %4660 = add i64 %4659, 3
  store i64 %4660, i64* %PC.i447
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4661, align 1
  %4662 = and i32 %4657, 255
  %4663 = call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4666, i8* %4667, align 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4668, align 1
  %4669 = icmp eq i32 %4657, 0
  %4670 = zext i1 %4669 to i8
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4670, i8* %4671, align 1
  %4672 = lshr i32 %4657, 31
  %4673 = trunc i32 %4672 to i8
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4673, i8* %4674, align 1
  %4675 = lshr i32 %4657, 31
  %4676 = xor i32 %4672, %4675
  %4677 = add i32 %4676, %4675
  %4678 = icmp eq i32 %4677, 2
  %4679 = zext i1 %4678 to i8
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4679, i8* %4680, align 1
  store %struct.Memory* %loadMem_450351, %struct.Memory** %MEMORY
  %loadMem_450354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 33
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %PC.i446
  %4685 = add i64 %4684, 36
  %4686 = load i64, i64* %PC.i446
  %4687 = add i64 %4686, 6
  %4688 = load i64, i64* %PC.i446
  %4689 = add i64 %4688, 6
  store i64 %4689, i64* %PC.i446
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4691 = load i8, i8* %4690, align 1
  %4692 = icmp eq i8 %4691, 0
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %BRANCH_TAKEN, align 1
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4695 = select i1 %4692, i64 %4685, i64 %4687
  store i64 %4695, i64* %4694, align 8
  store %struct.Memory* %loadMem_450354, %struct.Memory** %MEMORY
  %loadBr_450354 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450354 = icmp eq i8 %loadBr_450354, 1
  br i1 %cmpBr_450354, label %block_.L_450378, label %block_45035a

block_45035a:                                     ; preds = %block_.L_450342
  %loadMem_45035a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 1
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 15
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RBP.i445
  %4706 = sub i64 %4705, 488
  %4707 = load i64, i64* %PC.i443
  %4708 = add i64 %4707, 6
  store i64 %4708, i64* %PC.i443
  %4709 = inttoptr i64 %4706 to i32*
  %4710 = load i32, i32* %4709
  %4711 = zext i32 %4710 to i64
  store i64 %4711, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_45035a, %struct.Memory** %MEMORY
  %loadMem_450360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 33
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 1
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4717 to i64*
  %4718 = load i64, i64* %RAX.i442
  %4719 = load i64, i64* %PC.i441
  %4720 = add i64 %4719, 3
  store i64 %4720, i64* %PC.i441
  %4721 = trunc i64 %4718 to i32
  %4722 = add i32 1, %4721
  %4723 = zext i32 %4722 to i64
  store i64 %4723, i64* %RAX.i442, align 8
  %4724 = icmp ult i32 %4722, %4721
  %4725 = icmp ult i32 %4722, 1
  %4726 = or i1 %4724, %4725
  %4727 = zext i1 %4726 to i8
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4727, i8* %4728, align 1
  %4729 = and i32 %4722, 255
  %4730 = call i32 @llvm.ctpop.i32(i32 %4729)
  %4731 = trunc i32 %4730 to i8
  %4732 = and i8 %4731, 1
  %4733 = xor i8 %4732, 1
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4733, i8* %4734, align 1
  %4735 = xor i64 1, %4718
  %4736 = trunc i64 %4735 to i32
  %4737 = xor i32 %4736, %4722
  %4738 = lshr i32 %4737, 4
  %4739 = trunc i32 %4738 to i8
  %4740 = and i8 %4739, 1
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4740, i8* %4741, align 1
  %4742 = icmp eq i32 %4722, 0
  %4743 = zext i1 %4742 to i8
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4743, i8* %4744, align 1
  %4745 = lshr i32 %4722, 31
  %4746 = trunc i32 %4745 to i8
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4746, i8* %4747, align 1
  %4748 = lshr i32 %4721, 31
  %4749 = xor i32 %4745, %4748
  %4750 = add i32 %4749, %4745
  %4751 = icmp eq i32 %4750, 2
  %4752 = zext i1 %4751 to i8
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4752, i8* %4753, align 1
  store %struct.Memory* %loadMem_450360, %struct.Memory** %MEMORY
  %loadMem_450363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 1
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %4760 = bitcast %union.anon* %4759 to %struct.anon.2*
  %AL.i439 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4760, i32 0, i32 0
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 5
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %4764 = bitcast %union.anon* %4763 to %struct.anon.2*
  %CL.i440 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4764, i32 0, i32 0
  %4765 = load i8, i8* %AL.i439
  %4766 = zext i8 %4765 to i64
  %4767 = load i64, i64* %PC.i438
  %4768 = add i64 %4767, 2
  store i64 %4768, i64* %PC.i438
  store i8 %4765, i8* %CL.i440, align 1
  store %struct.Memory* %loadMem_450363, %struct.Memory** %MEMORY
  %loadMem_450365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 33
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4771 to i64*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 7
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %RDX.i436 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 15
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %4777 to i64*
  %4778 = load i64, i64* %RBP.i437
  %4779 = sub i64 %4778, 484
  %4780 = load i64, i64* %PC.i435
  %4781 = add i64 %4780, 7
  store i64 %4781, i64* %PC.i435
  %4782 = inttoptr i64 %4779 to i32*
  %4783 = load i32, i32* %4782
  %4784 = sext i32 %4783 to i64
  store i64 %4784, i64* %RDX.i436, align 8
  store %struct.Memory* %loadMem_450365, %struct.Memory** %MEMORY
  %loadMem_45036c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 33
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 5
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %4791 = bitcast %union.anon* %4790 to %struct.anon.2*
  %CL.i432 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4791, i32 0, i32 0
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 7
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %RDX.i433 = bitcast %union.anon* %4794 to i64*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 15
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %4797 to i64*
  %4798 = load i64, i64* %RBP.i434
  %4799 = load i64, i64* %RDX.i433
  %4800 = add i64 %4798, -480
  %4801 = add i64 %4800, %4799
  %4802 = load i8, i8* %CL.i432
  %4803 = zext i8 %4802 to i64
  %4804 = load i64, i64* %PC.i431
  %4805 = add i64 %4804, 7
  store i64 %4805, i64* %PC.i431
  %4806 = inttoptr i64 %4801 to i8*
  store i8 %4802, i8* %4806
  store %struct.Memory* %loadMem_45036c, %struct.Memory** %MEMORY
  %loadMem_450373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %4809 to i64*
  %4810 = load i64, i64* %PC.i430
  %4811 = add i64 %4810, 37
  %4812 = load i64, i64* %PC.i430
  %4813 = add i64 %4812, 5
  store i64 %4813, i64* %PC.i430
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4811, i64* %4814, align 8
  store %struct.Memory* %loadMem_450373, %struct.Memory** %MEMORY
  br label %block_.L_450398

block_.L_450378:                                  ; preds = %block_.L_450342
  %loadMem_450378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 9
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 15
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RBP.i429
  %4825 = sub i64 %4824, 480
  %4826 = load i64, i64* %PC.i427
  %4827 = add i64 %4826, 7
  store i64 %4827, i64* %PC.i427
  store i64 %4825, i64* %RSI.i428, align 8
  store %struct.Memory* %loadMem_450378, %struct.Memory** %MEMORY
  %loadMem_45037f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 11
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RDI.i425 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 15
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RBP.i426
  %4838 = sub i64 %4837, 484
  %4839 = load i64, i64* %PC.i424
  %4840 = add i64 %4839, 6
  store i64 %4840, i64* %PC.i424
  %4841 = inttoptr i64 %4838 to i32*
  %4842 = load i32, i32* %4841
  %4843 = zext i32 %4842 to i64
  store i64 %4843, i64* %RDI.i425, align 8
  store %struct.Memory* %loadMem_45037f, %struct.Memory** %MEMORY
  %loadMem_450385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 1
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4849 to i64*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 15
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4852 to i64*
  %4853 = load i64, i64* %RBP.i423
  %4854 = sub i64 %4853, 488
  %4855 = load i64, i64* %PC.i421
  %4856 = add i64 %4855, 6
  store i64 %4856, i64* %PC.i421
  %4857 = inttoptr i64 %4854 to i32*
  %4858 = load i32, i32* %4857
  %4859 = zext i32 %4858 to i64
  store i64 %4859, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_450385, %struct.Memory** %MEMORY
  %loadMem_45038b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 33
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4862 to i64*
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 1
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4865 to i64*
  %4866 = load i64, i64* %RAX.i420
  %4867 = load i64, i64* %PC.i419
  %4868 = add i64 %4867, 3
  store i64 %4868, i64* %PC.i419
  %4869 = trunc i64 %4866 to i32
  %4870 = add i32 1, %4869
  %4871 = zext i32 %4870 to i64
  store i64 %4871, i64* %RAX.i420, align 8
  %4872 = icmp ult i32 %4870, %4869
  %4873 = icmp ult i32 %4870, 1
  %4874 = or i1 %4872, %4873
  %4875 = zext i1 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4875, i8* %4876, align 1
  %4877 = and i32 %4870, 255
  %4878 = call i32 @llvm.ctpop.i32(i32 %4877)
  %4879 = trunc i32 %4878 to i8
  %4880 = and i8 %4879, 1
  %4881 = xor i8 %4880, 1
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4881, i8* %4882, align 1
  %4883 = xor i64 1, %4866
  %4884 = trunc i64 %4883 to i32
  %4885 = xor i32 %4884, %4870
  %4886 = lshr i32 %4885, 4
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4888, i8* %4889, align 1
  %4890 = icmp eq i32 %4870, 0
  %4891 = zext i1 %4890 to i8
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4891, i8* %4892, align 1
  %4893 = lshr i32 %4870, 31
  %4894 = trunc i32 %4893 to i8
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4894, i8* %4895, align 1
  %4896 = lshr i32 %4869, 31
  %4897 = xor i32 %4893, %4896
  %4898 = add i32 %4897, %4893
  %4899 = icmp eq i32 %4898, 2
  %4900 = zext i1 %4899 to i8
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4900, i8* %4901, align 1
  store %struct.Memory* %loadMem_45038b, %struct.Memory** %MEMORY
  %loadMem_45038e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 33
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4904 to i64*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 1
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %4908 = bitcast %union.anon* %4907 to %struct.anon.2*
  %AL.i417 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4908, i32 0, i32 0
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 5
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %4912 = bitcast %union.anon* %4911 to %struct.anon.2*
  %CL.i418 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4912, i32 0, i32 0
  %4913 = load i8, i8* %AL.i417
  %4914 = zext i8 %4913 to i64
  %4915 = load i64, i64* %PC.i416
  %4916 = add i64 %4915, 2
  store i64 %4916, i64* %PC.i416
  store i8 %4913, i8* %CL.i418, align 1
  store %struct.Memory* %loadMem_45038e, %struct.Memory** %MEMORY
  %loadMem_450390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 33
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 5
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %4923 = bitcast %union.anon* %4922 to %struct.anon.2*
  %CL.i414 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4923, i32 0, i32 0
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 7
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %4926 to i64*
  %4927 = load i8, i8* %CL.i414
  %4928 = zext i8 %4927 to i64
  %4929 = load i64, i64* %PC.i413
  %4930 = add i64 %4929, 3
  store i64 %4930, i64* %PC.i413
  %4931 = trunc i64 %4928 to i32
  %4932 = shl i32 %4931, 24
  %4933 = ashr exact i32 %4932, 24
  %4934 = zext i32 %4933 to i64
  store i64 %4934, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_450390, %struct.Memory** %MEMORY
  %loadMem1_450393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 33
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %PC.i412
  %4939 = add i64 %4938, -239331
  %4940 = load i64, i64* %PC.i412
  %4941 = add i64 %4940, 5
  %4942 = load i64, i64* %PC.i412
  %4943 = add i64 %4942, 5
  store i64 %4943, i64* %PC.i412
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4945 = load i64, i64* %4944, align 8
  %4946 = add i64 %4945, -8
  %4947 = inttoptr i64 %4946 to i64*
  store i64 %4941, i64* %4947
  store i64 %4946, i64* %4944, align 8
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4939, i64* %4948, align 8
  store %struct.Memory* %loadMem1_450393, %struct.Memory** %MEMORY
  %loadMem2_450393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_450393 = load i64, i64* %3
  %call2_450393 = call %struct.Memory* @sub_415cb0.mark_string(%struct.State* %0, i64 %loadPC_450393, %struct.Memory* %loadMem2_450393)
  store %struct.Memory* %call2_450393, %struct.Memory** %MEMORY
  br label %block_.L_450398

block_.L_450398:                                  ; preds = %block_.L_450378, %block_45035a
  %loadMem_450398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4951 to i64*
  %4952 = load i64, i64* %PC.i411
  %4953 = add i64 %4952, 5
  %4954 = load i64, i64* %PC.i411
  %4955 = add i64 %4954, 5
  store i64 %4955, i64* %PC.i411
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4953, i64* %4956, align 8
  store %struct.Memory* %loadMem_450398, %struct.Memory** %MEMORY
  br label %block_.L_45039d

block_.L_45039d:                                  ; preds = %block_.L_450398, %block_450322, %block_.L_450305
  %loadMem_45039d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %PC.i410
  %4961 = add i64 %4960, 5
  %4962 = load i64, i64* %PC.i410
  %4963 = add i64 %4962, 5
  store i64 %4963, i64* %PC.i410
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4961, i64* %4964, align 8
  store %struct.Memory* %loadMem_45039d, %struct.Memory** %MEMORY
  br label %block_.L_4503a2

block_.L_4503a2:                                  ; preds = %block_.L_45039d, %block_.L_450249
  %loadMem_4503a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 33
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 1
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %4970 to i64*
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 15
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4973 to i64*
  %4974 = load i64, i64* %RBP.i409
  %4975 = sub i64 %4974, 484
  %4976 = load i64, i64* %PC.i407
  %4977 = add i64 %4976, 6
  store i64 %4977, i64* %PC.i407
  %4978 = inttoptr i64 %4975 to i32*
  %4979 = load i32, i32* %4978
  %4980 = zext i32 %4979 to i64
  store i64 %4980, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_4503a2, %struct.Memory** %MEMORY
  %loadMem_4503a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %4986 to i64*
  %4987 = load i64, i64* %RAX.i406
  %4988 = load i64, i64* %PC.i405
  %4989 = add i64 %4988, 3
  store i64 %4989, i64* %PC.i405
  %4990 = trunc i64 %4987 to i32
  %4991 = add i32 1, %4990
  %4992 = zext i32 %4991 to i64
  store i64 %4992, i64* %RAX.i406, align 8
  %4993 = icmp ult i32 %4991, %4990
  %4994 = icmp ult i32 %4991, 1
  %4995 = or i1 %4993, %4994
  %4996 = zext i1 %4995 to i8
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4996, i8* %4997, align 1
  %4998 = and i32 %4991, 255
  %4999 = call i32 @llvm.ctpop.i32(i32 %4998)
  %5000 = trunc i32 %4999 to i8
  %5001 = and i8 %5000, 1
  %5002 = xor i8 %5001, 1
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5002, i8* %5003, align 1
  %5004 = xor i64 1, %4987
  %5005 = trunc i64 %5004 to i32
  %5006 = xor i32 %5005, %4991
  %5007 = lshr i32 %5006, 4
  %5008 = trunc i32 %5007 to i8
  %5009 = and i8 %5008, 1
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5009, i8* %5010, align 1
  %5011 = icmp eq i32 %4991, 0
  %5012 = zext i1 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5012, i8* %5013, align 1
  %5014 = lshr i32 %4991, 31
  %5015 = trunc i32 %5014 to i8
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5015, i8* %5016, align 1
  %5017 = lshr i32 %4990, 31
  %5018 = xor i32 %5014, %5017
  %5019 = add i32 %5018, %5014
  %5020 = icmp eq i32 %5019, 2
  %5021 = zext i1 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5021, i8* %5022, align 1
  store %struct.Memory* %loadMem_4503a8, %struct.Memory** %MEMORY
  %loadMem_4503ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 1
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %5028 to i32*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 15
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %RBP.i404
  %5033 = sub i64 %5032, 484
  %5034 = load i32, i32* %EAX.i403
  %5035 = zext i32 %5034 to i64
  %5036 = load i64, i64* %PC.i402
  %5037 = add i64 %5036, 6
  store i64 %5037, i64* %PC.i402
  %5038 = inttoptr i64 %5033 to i32*
  store i32 %5034, i32* %5038
  store %struct.Memory* %loadMem_4503ab, %struct.Memory** %MEMORY
  %loadMem_4503b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5041 to i64*
  %5042 = load i64, i64* %PC.i401
  %5043 = add i64 %5042, -451
  %5044 = load i64, i64* %PC.i401
  %5045 = add i64 %5044, 5
  store i64 %5045, i64* %PC.i401
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5043, i64* %5046, align 8
  store %struct.Memory* %loadMem_4503b1, %struct.Memory** %MEMORY
  br label %block_.L_4501ee

block_.L_4503b6:                                  ; preds = %block_.L_4501ee
  %loadMem_4503b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 33
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5049 to i64*
  %5050 = load i64, i64* %PC.i400
  %5051 = add i64 %5050, 5
  %5052 = load i64, i64* %PC.i400
  %5053 = add i64 %5052, 5
  store i64 %5053, i64* %PC.i400
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5051, i64* %5054, align 8
  store %struct.Memory* %loadMem_4503b6, %struct.Memory** %MEMORY
  br label %block_.L_4503bb

block_.L_4503bb:                                  ; preds = %block_.L_4503b6
  %loadMem_4503bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 1
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 15
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %RBP.i399
  %5065 = sub i64 %5064, 488
  %5066 = load i64, i64* %PC.i397
  %5067 = add i64 %5066, 6
  store i64 %5067, i64* %PC.i397
  %5068 = inttoptr i64 %5065 to i32*
  %5069 = load i32, i32* %5068
  %5070 = zext i32 %5069 to i64
  store i64 %5070, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_4503bb, %struct.Memory** %MEMORY
  %loadMem_4503c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RAX.i396
  %5078 = load i64, i64* %PC.i395
  %5079 = add i64 %5078, 3
  store i64 %5079, i64* %PC.i395
  %5080 = trunc i64 %5077 to i32
  %5081 = add i32 1, %5080
  %5082 = zext i32 %5081 to i64
  store i64 %5082, i64* %RAX.i396, align 8
  %5083 = icmp ult i32 %5081, %5080
  %5084 = icmp ult i32 %5081, 1
  %5085 = or i1 %5083, %5084
  %5086 = zext i1 %5085 to i8
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5086, i8* %5087, align 1
  %5088 = and i32 %5081, 255
  %5089 = call i32 @llvm.ctpop.i32(i32 %5088)
  %5090 = trunc i32 %5089 to i8
  %5091 = and i8 %5090, 1
  %5092 = xor i8 %5091, 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5092, i8* %5093, align 1
  %5094 = xor i64 1, %5077
  %5095 = trunc i64 %5094 to i32
  %5096 = xor i32 %5095, %5081
  %5097 = lshr i32 %5096, 4
  %5098 = trunc i32 %5097 to i8
  %5099 = and i8 %5098, 1
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5099, i8* %5100, align 1
  %5101 = icmp eq i32 %5081, 0
  %5102 = zext i1 %5101 to i8
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5102, i8* %5103, align 1
  %5104 = lshr i32 %5081, 31
  %5105 = trunc i32 %5104 to i8
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5105, i8* %5106, align 1
  %5107 = lshr i32 %5080, 31
  %5108 = xor i32 %5104, %5107
  %5109 = add i32 %5108, %5104
  %5110 = icmp eq i32 %5109, 2
  %5111 = zext i1 %5110 to i8
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5111, i8* %5112, align 1
  store %struct.Memory* %loadMem_4503c1, %struct.Memory** %MEMORY
  %loadMem_4503c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 33
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 1
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %EAX.i393 = bitcast %union.anon* %5118 to i32*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 15
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %5121 to i64*
  %5122 = load i64, i64* %RBP.i394
  %5123 = sub i64 %5122, 488
  %5124 = load i32, i32* %EAX.i393
  %5125 = zext i32 %5124 to i64
  %5126 = load i64, i64* %PC.i392
  %5127 = add i64 %5126, 6
  store i64 %5127, i64* %PC.i392
  %5128 = inttoptr i64 %5123 to i32*
  store i32 %5124, i32* %5128
  store %struct.Memory* %loadMem_4503c4, %struct.Memory** %MEMORY
  %loadMem_4503ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5131 to i64*
  %5132 = load i64, i64* %PC.i391
  %5133 = add i64 %5132, -499
  %5134 = load i64, i64* %PC.i391
  %5135 = add i64 %5134, 5
  store i64 %5135, i64* %PC.i391
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5133, i64* %5136, align 8
  store %struct.Memory* %loadMem_4503ca, %struct.Memory** %MEMORY
  br label %block_.L_4501d7

block_.L_4503cf:                                  ; preds = %block_.L_4501d7
  %loadMem_4503cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 33
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 15
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %5142 to i64*
  %5143 = load i64, i64* %RBP.i390
  %5144 = sub i64 %5143, 484
  %5145 = load i64, i64* %PC.i389
  %5146 = add i64 %5145, 10
  store i64 %5146, i64* %PC.i389
  %5147 = inttoptr i64 %5144 to i32*
  store i32 21, i32* %5147
  store %struct.Memory* %loadMem_4503cf, %struct.Memory** %MEMORY
  br label %block_.L_4503d9

block_.L_4503d9:                                  ; preds = %block_.L_4504d7, %block_.L_4503cf
  %loadMem_4503d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 15
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %RBP.i388
  %5155 = sub i64 %5154, 484
  %5156 = load i64, i64* %PC.i387
  %5157 = add i64 %5156, 10
  store i64 %5157, i64* %PC.i387
  %5158 = inttoptr i64 %5155 to i32*
  %5159 = load i32, i32* %5158
  %5160 = sub i32 %5159, 400
  %5161 = icmp ult i32 %5159, 400
  %5162 = zext i1 %5161 to i8
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5162, i8* %5163, align 1
  %5164 = and i32 %5160, 255
  %5165 = call i32 @llvm.ctpop.i32(i32 %5164)
  %5166 = trunc i32 %5165 to i8
  %5167 = and i8 %5166, 1
  %5168 = xor i8 %5167, 1
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5168, i8* %5169, align 1
  %5170 = xor i32 %5159, 400
  %5171 = xor i32 %5170, %5160
  %5172 = lshr i32 %5171, 4
  %5173 = trunc i32 %5172 to i8
  %5174 = and i8 %5173, 1
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5174, i8* %5175, align 1
  %5176 = icmp eq i32 %5160, 0
  %5177 = zext i1 %5176 to i8
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5177, i8* %5178, align 1
  %5179 = lshr i32 %5160, 31
  %5180 = trunc i32 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5180, i8* %5181, align 1
  %5182 = lshr i32 %5159, 31
  %5183 = xor i32 %5179, %5182
  %5184 = add i32 %5183, %5182
  %5185 = icmp eq i32 %5184, 2
  %5186 = zext i1 %5185 to i8
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5186, i8* %5187, align 1
  store %struct.Memory* %loadMem_4503d9, %struct.Memory** %MEMORY
  %loadMem_4503e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %PC.i386
  %5192 = add i64 %5191, 264
  %5193 = load i64, i64* %PC.i386
  %5194 = add i64 %5193, 6
  %5195 = load i64, i64* %PC.i386
  %5196 = add i64 %5195, 6
  store i64 %5196, i64* %PC.i386
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5198 = load i8, i8* %5197, align 1
  %5199 = icmp ne i8 %5198, 0
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5201 = load i8, i8* %5200, align 1
  %5202 = icmp ne i8 %5201, 0
  %5203 = xor i1 %5199, %5202
  %5204 = xor i1 %5203, true
  %5205 = zext i1 %5204 to i8
  store i8 %5205, i8* %BRANCH_TAKEN, align 1
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5207 = select i1 %5203, i64 %5194, i64 %5192
  store i64 %5207, i64* %5206, align 8
  store %struct.Memory* %loadMem_4503e3, %struct.Memory** %MEMORY
  %loadBr_4503e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4503e3 = icmp eq i8 %loadBr_4503e3, 1
  br i1 %cmpBr_4503e3, label %block_.L_4504eb, label %block_4503e9

block_4503e9:                                     ; preds = %block_.L_4503d9
  %loadMem_4503e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 33
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %5210 to i64*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 1
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %5213 to i64*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 15
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %5216 to i64*
  %5217 = load i64, i64* %RBP.i385
  %5218 = sub i64 %5217, 484
  %5219 = load i64, i64* %PC.i383
  %5220 = add i64 %5219, 7
  store i64 %5220, i64* %PC.i383
  %5221 = inttoptr i64 %5218 to i32*
  %5222 = load i32, i32* %5221
  %5223 = sext i32 %5222 to i64
  store i64 %5223, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_4503e9, %struct.Memory** %MEMORY
  %loadMem_4503f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 33
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 1
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %5229 to i64*
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 5
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %5232 to i64*
  %5233 = load i64, i64* %RAX.i381
  %5234 = add i64 %5233, 12099168
  %5235 = load i64, i64* %PC.i380
  %5236 = add i64 %5235, 8
  store i64 %5236, i64* %PC.i380
  %5237 = inttoptr i64 %5234 to i8*
  %5238 = load i8, i8* %5237
  %5239 = zext i8 %5238 to i64
  store i64 %5239, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_4503f0, %struct.Memory** %MEMORY
  %loadMem_4503f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 33
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 5
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %ECX.i378 = bitcast %union.anon* %5245 to i32*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 15
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %5248 to i64*
  %5249 = load i32, i32* %ECX.i378
  %5250 = zext i32 %5249 to i64
  %5251 = load i64, i64* %RBP.i379
  %5252 = sub i64 %5251, 496
  %5253 = load i64, i64* %PC.i377
  %5254 = add i64 %5253, 6
  store i64 %5254, i64* %PC.i377
  %5255 = inttoptr i64 %5252 to i32*
  %5256 = load i32, i32* %5255
  %5257 = sub i32 %5249, %5256
  %5258 = icmp ult i32 %5249, %5256
  %5259 = zext i1 %5258 to i8
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5259, i8* %5260, align 1
  %5261 = and i32 %5257, 255
  %5262 = call i32 @llvm.ctpop.i32(i32 %5261)
  %5263 = trunc i32 %5262 to i8
  %5264 = and i8 %5263, 1
  %5265 = xor i8 %5264, 1
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5265, i8* %5266, align 1
  %5267 = xor i32 %5256, %5249
  %5268 = xor i32 %5267, %5257
  %5269 = lshr i32 %5268, 4
  %5270 = trunc i32 %5269 to i8
  %5271 = and i8 %5270, 1
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5271, i8* %5272, align 1
  %5273 = icmp eq i32 %5257, 0
  %5274 = zext i1 %5273 to i8
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5274, i8* %5275, align 1
  %5276 = lshr i32 %5257, 31
  %5277 = trunc i32 %5276 to i8
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5277, i8* %5278, align 1
  %5279 = lshr i32 %5249, 31
  %5280 = lshr i32 %5256, 31
  %5281 = xor i32 %5280, %5279
  %5282 = xor i32 %5276, %5279
  %5283 = add i32 %5282, %5281
  %5284 = icmp eq i32 %5283, 2
  %5285 = zext i1 %5284 to i8
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5285, i8* %5286, align 1
  store %struct.Memory* %loadMem_4503f8, %struct.Memory** %MEMORY
  %loadMem_4503fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5289 to i64*
  %5290 = load i64, i64* %PC.i376
  %5291 = add i64 %5290, 30
  %5292 = load i64, i64* %PC.i376
  %5293 = add i64 %5292, 6
  %5294 = load i64, i64* %PC.i376
  %5295 = add i64 %5294, 6
  store i64 %5295, i64* %PC.i376
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5297 = load i8, i8* %5296, align 1
  %5298 = icmp eq i8 %5297, 0
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %BRANCH_TAKEN, align 1
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5301 = select i1 %5298, i64 %5291, i64 %5293
  store i64 %5301, i64* %5300, align 8
  store %struct.Memory* %loadMem_4503fe, %struct.Memory** %MEMORY
  %loadBr_4503fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4503fe = icmp eq i8 %loadBr_4503fe, 1
  br i1 %cmpBr_4503fe, label %block_.L_45041c, label %block_450404

block_450404:                                     ; preds = %block_4503e9
  %loadMem_450404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 1
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 15
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %RBP.i375
  %5312 = sub i64 %5311, 484
  %5313 = load i64, i64* %PC.i373
  %5314 = add i64 %5313, 7
  store i64 %5314, i64* %PC.i373
  %5315 = inttoptr i64 %5312 to i32*
  %5316 = load i32, i32* %5315
  %5317 = sext i32 %5316 to i64
  store i64 %5317, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_450404, %struct.Memory** %MEMORY
  %loadMem_45040b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 1
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %5323 to i64*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 5
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 15
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5329 to i64*
  %5330 = load i64, i64* %RBP.i372
  %5331 = load i64, i64* %RAX.i370
  %5332 = add i64 %5330, -480
  %5333 = add i64 %5332, %5331
  %5334 = load i64, i64* %PC.i369
  %5335 = add i64 %5334, 8
  store i64 %5335, i64* %PC.i369
  %5336 = inttoptr i64 %5333 to i8*
  %5337 = load i8, i8* %5336
  %5338 = sext i8 %5337 to i64
  %5339 = and i64 %5338, 4294967295
  store i64 %5339, i64* %RCX.i371, align 8
  store %struct.Memory* %loadMem_45040b, %struct.Memory** %MEMORY
  %loadMem_450413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 33
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5342 to i64*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 5
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %ECX.i368 = bitcast %union.anon* %5345 to i32*
  %5346 = load i32, i32* %ECX.i368
  %5347 = zext i32 %5346 to i64
  %5348 = load i64, i64* %PC.i367
  %5349 = add i64 %5348, 3
  store i64 %5349, i64* %PC.i367
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5350, align 1
  %5351 = and i32 %5346, 255
  %5352 = call i32 @llvm.ctpop.i32(i32 %5351)
  %5353 = trunc i32 %5352 to i8
  %5354 = and i8 %5353, 1
  %5355 = xor i8 %5354, 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5355, i8* %5356, align 1
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5357, align 1
  %5358 = icmp eq i32 %5346, 0
  %5359 = zext i1 %5358 to i8
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5359, i8* %5360, align 1
  %5361 = lshr i32 %5346, 31
  %5362 = trunc i32 %5361 to i8
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5362, i8* %5363, align 1
  %5364 = lshr i32 %5346, 31
  %5365 = xor i32 %5361, %5364
  %5366 = add i32 %5365, %5364
  %5367 = icmp eq i32 %5366, 2
  %5368 = zext i1 %5367 to i8
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5368, i8* %5369, align 1
  store %struct.Memory* %loadMem_450413, %struct.Memory** %MEMORY
  %loadMem_450416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 33
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5372 to i64*
  %5373 = load i64, i64* %PC.i366
  %5374 = add i64 %5373, 11
  %5375 = load i64, i64* %PC.i366
  %5376 = add i64 %5375, 6
  %5377 = load i64, i64* %PC.i366
  %5378 = add i64 %5377, 6
  store i64 %5378, i64* %PC.i366
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5380 = load i8, i8* %5379, align 1
  store i8 %5380, i8* %BRANCH_TAKEN, align 1
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5382 = icmp ne i8 %5380, 0
  %5383 = select i1 %5382, i64 %5374, i64 %5376
  store i64 %5383, i64* %5381, align 8
  store %struct.Memory* %loadMem_450416, %struct.Memory** %MEMORY
  %loadBr_450416 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450416 = icmp eq i8 %loadBr_450416, 1
  br i1 %cmpBr_450416, label %block_.L_450421, label %block_.L_45041c

block_.L_45041c:                                  ; preds = %block_450404, %block_4503e9
  %loadMem_45041c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %PC.i365
  %5388 = add i64 %5387, 187
  %5389 = load i64, i64* %PC.i365
  %5390 = add i64 %5389, 5
  store i64 %5390, i64* %PC.i365
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5388, i64* %5391, align 8
  store %struct.Memory* %loadMem_45041c, %struct.Memory** %MEMORY
  br label %block_.L_4504d7

block_.L_450421:                                  ; preds = %block_450404
  %loadMem_450421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 15
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %RBP.i364
  %5399 = sub i64 %5398, 492
  %5400 = load i64, i64* %PC.i363
  %5401 = add i64 %5400, 10
  store i64 %5401, i64* %PC.i363
  %5402 = inttoptr i64 %5399 to i32*
  store i32 0, i32* %5402
  store %struct.Memory* %loadMem_450421, %struct.Memory** %MEMORY
  br label %block_.L_45042b

block_.L_45042b:                                  ; preds = %block_.L_4504be, %block_.L_450421
  %loadMem_45042b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 15
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RBP.i362
  %5410 = sub i64 %5409, 492
  %5411 = load i64, i64* %PC.i361
  %5412 = add i64 %5411, 7
  store i64 %5412, i64* %PC.i361
  %5413 = inttoptr i64 %5410 to i32*
  %5414 = load i32, i32* %5413
  %5415 = sub i32 %5414, 4
  %5416 = icmp ult i32 %5414, 4
  %5417 = zext i1 %5416 to i8
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5417, i8* %5418, align 1
  %5419 = and i32 %5415, 255
  %5420 = call i32 @llvm.ctpop.i32(i32 %5419)
  %5421 = trunc i32 %5420 to i8
  %5422 = and i8 %5421, 1
  %5423 = xor i8 %5422, 1
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5423, i8* %5424, align 1
  %5425 = xor i32 %5414, 4
  %5426 = xor i32 %5425, %5415
  %5427 = lshr i32 %5426, 4
  %5428 = trunc i32 %5427 to i8
  %5429 = and i8 %5428, 1
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5429, i8* %5430, align 1
  %5431 = icmp eq i32 %5415, 0
  %5432 = zext i1 %5431 to i8
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5432, i8* %5433, align 1
  %5434 = lshr i32 %5415, 31
  %5435 = trunc i32 %5434 to i8
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5435, i8* %5436, align 1
  %5437 = lshr i32 %5414, 31
  %5438 = xor i32 %5434, %5437
  %5439 = add i32 %5438, %5437
  %5440 = icmp eq i32 %5439, 2
  %5441 = zext i1 %5440 to i8
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5441, i8* %5442, align 1
  store %struct.Memory* %loadMem_45042b, %struct.Memory** %MEMORY
  %loadMem_450432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 33
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5445 to i64*
  %5446 = load i64, i64* %PC.i360
  %5447 = add i64 %5446, 160
  %5448 = load i64, i64* %PC.i360
  %5449 = add i64 %5448, 6
  %5450 = load i64, i64* %PC.i360
  %5451 = add i64 %5450, 6
  store i64 %5451, i64* %PC.i360
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5453 = load i8, i8* %5452, align 1
  %5454 = icmp ne i8 %5453, 0
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5456 = load i8, i8* %5455, align 1
  %5457 = icmp ne i8 %5456, 0
  %5458 = xor i1 %5454, %5457
  %5459 = xor i1 %5458, true
  %5460 = zext i1 %5459 to i8
  store i8 %5460, i8* %BRANCH_TAKEN, align 1
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5462 = select i1 %5458, i64 %5449, i64 %5447
  store i64 %5462, i64* %5461, align 8
  store %struct.Memory* %loadMem_450432, %struct.Memory** %MEMORY
  %loadBr_450432 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450432 = icmp eq i8 %loadBr_450432, 1
  br i1 %cmpBr_450432, label %block_.L_4504d2, label %block_450438

block_450438:                                     ; preds = %block_.L_45042b
  %loadMem_450438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 33
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 1
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 15
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %5471 to i64*
  %5472 = load i64, i64* %RBP.i359
  %5473 = sub i64 %5472, 484
  %5474 = load i64, i64* %PC.i357
  %5475 = add i64 %5474, 6
  store i64 %5475, i64* %PC.i357
  %5476 = inttoptr i64 %5473 to i32*
  %5477 = load i32, i32* %5476
  %5478 = zext i32 %5477 to i64
  store i64 %5478, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_450438, %struct.Memory** %MEMORY
  %loadMem_45043e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 33
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5481 to i64*
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 5
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %5484 to i64*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 15
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %RBP.i356
  %5489 = sub i64 %5488, 492
  %5490 = load i64, i64* %PC.i354
  %5491 = add i64 %5490, 7
  store i64 %5491, i64* %PC.i354
  %5492 = inttoptr i64 %5489 to i32*
  %5493 = load i32, i32* %5492
  %5494 = sext i32 %5493 to i64
  store i64 %5494, i64* %RCX.i355, align 8
  store %struct.Memory* %loadMem_45043e, %struct.Memory** %MEMORY
  %loadMem_450445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 33
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 1
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %5500 to i64*
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 5
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %5503 to i64*
  %5504 = load i64, i64* %RAX.i352
  %5505 = load i64, i64* %RCX.i353
  %5506 = mul i64 %5505, 4
  %5507 = add i64 %5506, 8053168
  %5508 = load i64, i64* %PC.i351
  %5509 = add i64 %5508, 7
  store i64 %5509, i64* %PC.i351
  %5510 = trunc i64 %5504 to i32
  %5511 = inttoptr i64 %5507 to i32*
  %5512 = load i32, i32* %5511
  %5513 = add i32 %5512, %5510
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RAX.i352, align 8
  %5515 = icmp ult i32 %5513, %5510
  %5516 = icmp ult i32 %5513, %5512
  %5517 = or i1 %5515, %5516
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5518, i8* %5519, align 1
  %5520 = and i32 %5513, 255
  %5521 = call i32 @llvm.ctpop.i32(i32 %5520)
  %5522 = trunc i32 %5521 to i8
  %5523 = and i8 %5522, 1
  %5524 = xor i8 %5523, 1
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5524, i8* %5525, align 1
  %5526 = xor i32 %5512, %5510
  %5527 = xor i32 %5526, %5513
  %5528 = lshr i32 %5527, 4
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5530, i8* %5531, align 1
  %5532 = icmp eq i32 %5513, 0
  %5533 = zext i1 %5532 to i8
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5533, i8* %5534, align 1
  %5535 = lshr i32 %5513, 31
  %5536 = trunc i32 %5535 to i8
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5536, i8* %5537, align 1
  %5538 = lshr i32 %5510, 31
  %5539 = lshr i32 %5512, 31
  %5540 = xor i32 %5535, %5538
  %5541 = xor i32 %5535, %5539
  %5542 = add i32 %5540, %5541
  %5543 = icmp eq i32 %5542, 2
  %5544 = zext i1 %5543 to i8
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5544, i8* %5545, align 1
  store %struct.Memory* %loadMem_450445, %struct.Memory** %MEMORY
  %loadMem_45044c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 33
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 1
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %EAX.i349 = bitcast %union.anon* %5551 to i32*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 15
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %5554 to i64*
  %5555 = load i64, i64* %RBP.i350
  %5556 = sub i64 %5555, 500
  %5557 = load i32, i32* %EAX.i349
  %5558 = zext i32 %5557 to i64
  %5559 = load i64, i64* %PC.i348
  %5560 = add i64 %5559, 6
  store i64 %5560, i64* %PC.i348
  %5561 = inttoptr i64 %5556 to i32*
  store i32 %5557, i32* %5561
  store %struct.Memory* %loadMem_45044c, %struct.Memory** %MEMORY
  %loadMem_450452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 33
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5564 to i64*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 5
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 15
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5570 to i64*
  %5571 = load i64, i64* %RBP.i347
  %5572 = sub i64 %5571, 500
  %5573 = load i64, i64* %PC.i345
  %5574 = add i64 %5573, 7
  store i64 %5574, i64* %PC.i345
  %5575 = inttoptr i64 %5572 to i32*
  %5576 = load i32, i32* %5575
  %5577 = sext i32 %5576 to i64
  store i64 %5577, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_450452, %struct.Memory** %MEMORY
  %loadMem_450459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 33
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 1
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 5
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %RCX.i344
  %5588 = add i64 %5587, 12099168
  %5589 = load i64, i64* %PC.i342
  %5590 = add i64 %5589, 8
  store i64 %5590, i64* %PC.i342
  %5591 = inttoptr i64 %5588 to i8*
  %5592 = load i8, i8* %5591
  %5593 = zext i8 %5592 to i64
  store i64 %5593, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_450459, %struct.Memory** %MEMORY
  %loadMem_450461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 33
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 1
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %5599 to i32*
  %5600 = load i32, i32* %EAX.i341
  %5601 = zext i32 %5600 to i64
  %5602 = load i64, i64* %PC.i340
  %5603 = add i64 %5602, 3
  store i64 %5603, i64* %PC.i340
  %5604 = sub i32 %5600, 3
  %5605 = icmp ult i32 %5600, 3
  %5606 = zext i1 %5605 to i8
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5606, i8* %5607, align 1
  %5608 = and i32 %5604, 255
  %5609 = call i32 @llvm.ctpop.i32(i32 %5608)
  %5610 = trunc i32 %5609 to i8
  %5611 = and i8 %5610, 1
  %5612 = xor i8 %5611, 1
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5612, i8* %5613, align 1
  %5614 = xor i64 3, %5601
  %5615 = trunc i64 %5614 to i32
  %5616 = xor i32 %5615, %5604
  %5617 = lshr i32 %5616, 4
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5619, i8* %5620, align 1
  %5621 = icmp eq i32 %5604, 0
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5622, i8* %5623, align 1
  %5624 = lshr i32 %5604, 31
  %5625 = trunc i32 %5624 to i8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5625, i8* %5626, align 1
  %5627 = lshr i32 %5600, 31
  %5628 = xor i32 %5624, %5627
  %5629 = add i32 %5628, %5627
  %5630 = icmp eq i32 %5629, 2
  %5631 = zext i1 %5630 to i8
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5631, i8* %5632, align 1
  store %struct.Memory* %loadMem_450461, %struct.Memory** %MEMORY
  %loadMem_450464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %PC.i339
  %5637 = add i64 %5636, 85
  %5638 = load i64, i64* %PC.i339
  %5639 = add i64 %5638, 6
  %5640 = load i64, i64* %PC.i339
  %5641 = add i64 %5640, 6
  store i64 %5641, i64* %PC.i339
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5643 = load i8, i8* %5642, align 1
  store i8 %5643, i8* %BRANCH_TAKEN, align 1
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5645 = icmp ne i8 %5643, 0
  %5646 = select i1 %5645, i64 %5637, i64 %5639
  store i64 %5646, i64* %5644, align 8
  store %struct.Memory* %loadMem_450464, %struct.Memory** %MEMORY
  %loadBr_450464 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450464 = icmp eq i8 %loadBr_450464, 1
  br i1 %cmpBr_450464, label %block_.L_4504b9, label %block_45046a

block_45046a:                                     ; preds = %block_450438
  %loadMem_45046a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 33
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5649 to i64*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 1
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %5652 to i64*
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 15
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5655 to i64*
  %5656 = load i64, i64* %RBP.i338
  %5657 = sub i64 %5656, 500
  %5658 = load i64, i64* %PC.i336
  %5659 = add i64 %5658, 7
  store i64 %5659, i64* %PC.i336
  %5660 = inttoptr i64 %5657 to i32*
  %5661 = load i32, i32* %5660
  %5662 = sext i32 %5661 to i64
  store i64 %5662, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_45046a, %struct.Memory** %MEMORY
  %loadMem_450471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 33
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5665 to i64*
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 1
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %5668 to i64*
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 5
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %5671 to i64*
  %5672 = load i64, i64* %RAX.i334
  %5673 = add i64 %5672, 12099168
  %5674 = load i64, i64* %PC.i333
  %5675 = add i64 %5674, 8
  store i64 %5675, i64* %PC.i333
  %5676 = inttoptr i64 %5673 to i8*
  %5677 = load i8, i8* %5676
  %5678 = zext i8 %5677 to i64
  store i64 %5678, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_450471, %struct.Memory** %MEMORY
  %loadMem_450479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 33
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5681 to i64*
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 5
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %ECX.i331 = bitcast %union.anon* %5684 to i32*
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 15
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %5687 to i64*
  %5688 = load i32, i32* %ECX.i331
  %5689 = zext i32 %5688 to i64
  %5690 = load i64, i64* %RBP.i332
  %5691 = sub i64 %5690, 496
  %5692 = load i64, i64* %PC.i330
  %5693 = add i64 %5692, 6
  store i64 %5693, i64* %PC.i330
  %5694 = inttoptr i64 %5691 to i32*
  %5695 = load i32, i32* %5694
  %5696 = sub i32 %5688, %5695
  %5697 = icmp ult i32 %5688, %5695
  %5698 = zext i1 %5697 to i8
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5698, i8* %5699, align 1
  %5700 = and i32 %5696, 255
  %5701 = call i32 @llvm.ctpop.i32(i32 %5700)
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = xor i8 %5703, 1
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5704, i8* %5705, align 1
  %5706 = xor i32 %5695, %5688
  %5707 = xor i32 %5706, %5696
  %5708 = lshr i32 %5707, 4
  %5709 = trunc i32 %5708 to i8
  %5710 = and i8 %5709, 1
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5710, i8* %5711, align 1
  %5712 = icmp eq i32 %5696, 0
  %5713 = zext i1 %5712 to i8
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5713, i8* %5714, align 1
  %5715 = lshr i32 %5696, 31
  %5716 = trunc i32 %5715 to i8
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5716, i8* %5717, align 1
  %5718 = lshr i32 %5688, 31
  %5719 = lshr i32 %5695, 31
  %5720 = xor i32 %5719, %5718
  %5721 = xor i32 %5715, %5718
  %5722 = add i32 %5721, %5720
  %5723 = icmp eq i32 %5722, 2
  %5724 = zext i1 %5723 to i8
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5724, i8* %5725, align 1
  store %struct.Memory* %loadMem_450479, %struct.Memory** %MEMORY
  %loadMem_45047f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 33
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %PC.i329
  %5730 = add i64 %5729, 58
  %5731 = load i64, i64* %PC.i329
  %5732 = add i64 %5731, 6
  %5733 = load i64, i64* %PC.i329
  %5734 = add i64 %5733, 6
  store i64 %5734, i64* %PC.i329
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5736 = load i8, i8* %5735, align 1
  store i8 %5736, i8* %BRANCH_TAKEN, align 1
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5738 = icmp ne i8 %5736, 0
  %5739 = select i1 %5738, i64 %5730, i64 %5732
  store i64 %5739, i64* %5737, align 8
  store %struct.Memory* %loadMem_45047f, %struct.Memory** %MEMORY
  %loadBr_45047f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45047f = icmp eq i8 %loadBr_45047f, 1
  br i1 %cmpBr_45047f, label %block_.L_4504b9, label %block_450485

block_450485:                                     ; preds = %block_45046a
  %loadMem_450485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 33
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 1
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 15
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5748 to i64*
  %5749 = load i64, i64* %RBP.i328
  %5750 = sub i64 %5749, 500
  %5751 = load i64, i64* %PC.i326
  %5752 = add i64 %5751, 7
  store i64 %5752, i64* %PC.i326
  %5753 = inttoptr i64 %5750 to i32*
  %5754 = load i32, i32* %5753
  %5755 = sext i32 %5754 to i64
  store i64 %5755, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_450485, %struct.Memory** %MEMORY
  %loadMem_45048c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 1
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %5761 to i64*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 5
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %5764 to i64*
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 15
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5767 to i64*
  %5768 = load i64, i64* %RBP.i325
  %5769 = load i64, i64* %RAX.i323
  %5770 = add i64 %5768, -480
  %5771 = add i64 %5770, %5769
  %5772 = load i64, i64* %PC.i322
  %5773 = add i64 %5772, 8
  store i64 %5773, i64* %PC.i322
  %5774 = inttoptr i64 %5771 to i8*
  %5775 = load i8, i8* %5774
  %5776 = sext i8 %5775 to i64
  %5777 = and i64 %5776, 4294967295
  store i64 %5777, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_45048c, %struct.Memory** %MEMORY
  %loadMem_450494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 33
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 5
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %ECX.i321 = bitcast %union.anon* %5783 to i32*
  %5784 = load i32, i32* %ECX.i321
  %5785 = zext i32 %5784 to i64
  %5786 = load i64, i64* %PC.i320
  %5787 = add i64 %5786, 3
  store i64 %5787, i64* %PC.i320
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5788, align 1
  %5789 = and i32 %5784, 255
  %5790 = call i32 @llvm.ctpop.i32(i32 %5789)
  %5791 = trunc i32 %5790 to i8
  %5792 = and i8 %5791, 1
  %5793 = xor i8 %5792, 1
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5793, i8* %5794, align 1
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5795, align 1
  %5796 = icmp eq i32 %5784, 0
  %5797 = zext i1 %5796 to i8
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5797, i8* %5798, align 1
  %5799 = lshr i32 %5784, 31
  %5800 = trunc i32 %5799 to i8
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5800, i8* %5801, align 1
  %5802 = lshr i32 %5784, 31
  %5803 = xor i32 %5799, %5802
  %5804 = add i32 %5803, %5802
  %5805 = icmp eq i32 %5804, 2
  %5806 = zext i1 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5806, i8* %5807, align 1
  store %struct.Memory* %loadMem_450494, %struct.Memory** %MEMORY
  %loadMem_450497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 33
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5810 to i64*
  %5811 = load i64, i64* %PC.i319
  %5812 = add i64 %5811, 34
  %5813 = load i64, i64* %PC.i319
  %5814 = add i64 %5813, 6
  %5815 = load i64, i64* %PC.i319
  %5816 = add i64 %5815, 6
  store i64 %5816, i64* %PC.i319
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5818 = load i8, i8* %5817, align 1
  store i8 %5818, i8* %BRANCH_TAKEN, align 1
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5820 = icmp ne i8 %5818, 0
  %5821 = select i1 %5820, i64 %5812, i64 %5814
  store i64 %5821, i64* %5819, align 8
  store %struct.Memory* %loadMem_450497, %struct.Memory** %MEMORY
  %loadBr_450497 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450497 = icmp eq i8 %loadBr_450497, 1
  br i1 %cmpBr_450497, label %block_.L_4504b9, label %block_45049d

block_45049d:                                     ; preds = %block_450485
  %loadMem_45049d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 7
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %5827 to i64*
  %5828 = load i64, i64* %PC.i317
  %5829 = add i64 %5828, 5
  store i64 %5829, i64* %PC.i317
  store i64 1, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_45049d, %struct.Memory** %MEMORY
  %loadMem_4504a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 33
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5832 to i64*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 9
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RSI.i315 = bitcast %union.anon* %5835 to i64*
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 15
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %5838 to i64*
  %5839 = load i64, i64* %RBP.i316
  %5840 = sub i64 %5839, 480
  %5841 = load i64, i64* %PC.i314
  %5842 = add i64 %5841, 7
  store i64 %5842, i64* %PC.i314
  store i64 %5840, i64* %RSI.i315, align 8
  store %struct.Memory* %loadMem_4504a2, %struct.Memory** %MEMORY
  %loadMem_4504a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 33
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 11
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %RDI.i312 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 15
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %5851 to i64*
  %5852 = load i64, i64* %RBP.i313
  %5853 = sub i64 %5852, 484
  %5854 = load i64, i64* %PC.i311
  %5855 = add i64 %5854, 6
  store i64 %5855, i64* %PC.i311
  %5856 = inttoptr i64 %5853 to i32*
  %5857 = load i32, i32* %5856
  %5858 = zext i32 %5857 to i64
  store i64 %5858, i64* %RDI.i312, align 8
  store %struct.Memory* %loadMem_4504a9, %struct.Memory** %MEMORY
  %loadMem1_4504af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 33
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5861 to i64*
  %5862 = load i64, i64* %PC.i310
  %5863 = add i64 %5862, -239615
  %5864 = load i64, i64* %PC.i310
  %5865 = add i64 %5864, 5
  %5866 = load i64, i64* %PC.i310
  %5867 = add i64 %5866, 5
  store i64 %5867, i64* %PC.i310
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5869 = load i64, i64* %5868, align 8
  %5870 = add i64 %5869, -8
  %5871 = inttoptr i64 %5870 to i64*
  store i64 %5865, i64* %5871
  store i64 %5870, i64* %5868, align 8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5863, i64* %5872, align 8
  store %struct.Memory* %loadMem1_4504af, %struct.Memory** %MEMORY
  %loadMem2_4504af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4504af = load i64, i64* %3
  %call2_4504af = call %struct.Memory* @sub_415cb0.mark_string(%struct.State* %0, i64 %loadPC_4504af, %struct.Memory* %loadMem2_4504af)
  store %struct.Memory* %call2_4504af, %struct.Memory** %MEMORY
  %loadMem_4504b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 33
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %PC.i309
  %5877 = add i64 %5876, 30
  %5878 = load i64, i64* %PC.i309
  %5879 = add i64 %5878, 5
  store i64 %5879, i64* %PC.i309
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5877, i64* %5880, align 8
  store %struct.Memory* %loadMem_4504b4, %struct.Memory** %MEMORY
  br label %block_.L_4504d2

block_.L_4504b9:                                  ; preds = %block_450485, %block_45046a, %block_450438
  %loadMem_4504b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5883 to i64*
  %5884 = load i64, i64* %PC.i308
  %5885 = add i64 %5884, 5
  %5886 = load i64, i64* %PC.i308
  %5887 = add i64 %5886, 5
  store i64 %5887, i64* %PC.i308
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5885, i64* %5888, align 8
  store %struct.Memory* %loadMem_4504b9, %struct.Memory** %MEMORY
  br label %block_.L_4504be

block_.L_4504be:                                  ; preds = %block_.L_4504b9
  %loadMem_4504be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 33
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 1
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 15
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %5897 to i64*
  %5898 = load i64, i64* %RBP.i307
  %5899 = sub i64 %5898, 492
  %5900 = load i64, i64* %PC.i305
  %5901 = add i64 %5900, 6
  store i64 %5901, i64* %PC.i305
  %5902 = inttoptr i64 %5899 to i32*
  %5903 = load i32, i32* %5902
  %5904 = zext i32 %5903 to i64
  store i64 %5904, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_4504be, %struct.Memory** %MEMORY
  %loadMem_4504c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 33
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 1
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %5910 to i64*
  %5911 = load i64, i64* %RAX.i304
  %5912 = load i64, i64* %PC.i303
  %5913 = add i64 %5912, 3
  store i64 %5913, i64* %PC.i303
  %5914 = trunc i64 %5911 to i32
  %5915 = add i32 1, %5914
  %5916 = zext i32 %5915 to i64
  store i64 %5916, i64* %RAX.i304, align 8
  %5917 = icmp ult i32 %5915, %5914
  %5918 = icmp ult i32 %5915, 1
  %5919 = or i1 %5917, %5918
  %5920 = zext i1 %5919 to i8
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5920, i8* %5921, align 1
  %5922 = and i32 %5915, 255
  %5923 = call i32 @llvm.ctpop.i32(i32 %5922)
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5926, i8* %5927, align 1
  %5928 = xor i64 1, %5911
  %5929 = trunc i64 %5928 to i32
  %5930 = xor i32 %5929, %5915
  %5931 = lshr i32 %5930, 4
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5933, i8* %5934, align 1
  %5935 = icmp eq i32 %5915, 0
  %5936 = zext i1 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5936, i8* %5937, align 1
  %5938 = lshr i32 %5915, 31
  %5939 = trunc i32 %5938 to i8
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5939, i8* %5940, align 1
  %5941 = lshr i32 %5914, 31
  %5942 = xor i32 %5938, %5941
  %5943 = add i32 %5942, %5938
  %5944 = icmp eq i32 %5943, 2
  %5945 = zext i1 %5944 to i8
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5945, i8* %5946, align 1
  store %struct.Memory* %loadMem_4504c4, %struct.Memory** %MEMORY
  %loadMem_4504c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 1
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %5952 to i32*
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 15
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5955 to i64*
  %5956 = load i64, i64* %RBP.i302
  %5957 = sub i64 %5956, 492
  %5958 = load i32, i32* %EAX.i301
  %5959 = zext i32 %5958 to i64
  %5960 = load i64, i64* %PC.i300
  %5961 = add i64 %5960, 6
  store i64 %5961, i64* %PC.i300
  %5962 = inttoptr i64 %5957 to i32*
  store i32 %5958, i32* %5962
  store %struct.Memory* %loadMem_4504c7, %struct.Memory** %MEMORY
  %loadMem_4504cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %PC.i299
  %5967 = add i64 %5966, -162
  %5968 = load i64, i64* %PC.i299
  %5969 = add i64 %5968, 5
  store i64 %5969, i64* %PC.i299
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5967, i64* %5970, align 8
  store %struct.Memory* %loadMem_4504cd, %struct.Memory** %MEMORY
  br label %block_.L_45042b

block_.L_4504d2:                                  ; preds = %block_45049d, %block_.L_45042b
  %loadMem_4504d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 33
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5973 to i64*
  %5974 = load i64, i64* %PC.i298
  %5975 = add i64 %5974, 5
  %5976 = load i64, i64* %PC.i298
  %5977 = add i64 %5976, 5
  store i64 %5977, i64* %PC.i298
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5975, i64* %5978, align 8
  store %struct.Memory* %loadMem_4504d2, %struct.Memory** %MEMORY
  br label %block_.L_4504d7

block_.L_4504d7:                                  ; preds = %block_.L_4504d2, %block_.L_45041c
  %loadMem_4504d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 1
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 15
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %RBP.i297
  %5989 = sub i64 %5988, 484
  %5990 = load i64, i64* %PC.i295
  %5991 = add i64 %5990, 6
  store i64 %5991, i64* %PC.i295
  %5992 = inttoptr i64 %5989 to i32*
  %5993 = load i32, i32* %5992
  %5994 = zext i32 %5993 to i64
  store i64 %5994, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_4504d7, %struct.Memory** %MEMORY
  %loadMem_4504dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 1
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %6000 to i64*
  %6001 = load i64, i64* %RAX.i294
  %6002 = load i64, i64* %PC.i293
  %6003 = add i64 %6002, 3
  store i64 %6003, i64* %PC.i293
  %6004 = trunc i64 %6001 to i32
  %6005 = add i32 1, %6004
  %6006 = zext i32 %6005 to i64
  store i64 %6006, i64* %RAX.i294, align 8
  %6007 = icmp ult i32 %6005, %6004
  %6008 = icmp ult i32 %6005, 1
  %6009 = or i1 %6007, %6008
  %6010 = zext i1 %6009 to i8
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6010, i8* %6011, align 1
  %6012 = and i32 %6005, 255
  %6013 = call i32 @llvm.ctpop.i32(i32 %6012)
  %6014 = trunc i32 %6013 to i8
  %6015 = and i8 %6014, 1
  %6016 = xor i8 %6015, 1
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6016, i8* %6017, align 1
  %6018 = xor i64 1, %6001
  %6019 = trunc i64 %6018 to i32
  %6020 = xor i32 %6019, %6005
  %6021 = lshr i32 %6020, 4
  %6022 = trunc i32 %6021 to i8
  %6023 = and i8 %6022, 1
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6023, i8* %6024, align 1
  %6025 = icmp eq i32 %6005, 0
  %6026 = zext i1 %6025 to i8
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6026, i8* %6027, align 1
  %6028 = lshr i32 %6005, 31
  %6029 = trunc i32 %6028 to i8
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6029, i8* %6030, align 1
  %6031 = lshr i32 %6004, 31
  %6032 = xor i32 %6028, %6031
  %6033 = add i32 %6032, %6028
  %6034 = icmp eq i32 %6033, 2
  %6035 = zext i1 %6034 to i8
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6035, i8* %6036, align 1
  store %struct.Memory* %loadMem_4504dd, %struct.Memory** %MEMORY
  %loadMem_4504e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 33
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 1
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %EAX.i291 = bitcast %union.anon* %6042 to i32*
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6044 = getelementptr inbounds %struct.GPR, %struct.GPR* %6043, i32 0, i32 15
  %6045 = getelementptr inbounds %struct.Reg, %struct.Reg* %6044, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %6045 to i64*
  %6046 = load i64, i64* %RBP.i292
  %6047 = sub i64 %6046, 484
  %6048 = load i32, i32* %EAX.i291
  %6049 = zext i32 %6048 to i64
  %6050 = load i64, i64* %PC.i290
  %6051 = add i64 %6050, 6
  store i64 %6051, i64* %PC.i290
  %6052 = inttoptr i64 %6047 to i32*
  store i32 %6048, i32* %6052
  store %struct.Memory* %loadMem_4504e0, %struct.Memory** %MEMORY
  %loadMem_4504e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 33
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %PC.i289
  %6057 = add i64 %6056, -269
  %6058 = load i64, i64* %PC.i289
  %6059 = add i64 %6058, 5
  store i64 %6059, i64* %PC.i289
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6057, i64* %6060, align 8
  store %struct.Memory* %loadMem_4504e6, %struct.Memory** %MEMORY
  br label %block_.L_4503d9

block_.L_4504eb:                                  ; preds = %block_.L_4503d9
  %loadMem_4504eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 33
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %6063 to i64*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 15
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %6066 to i64*
  %6067 = load i64, i64* %RBP.i288
  %6068 = sub i64 %6067, 484
  %6069 = load i64, i64* %PC.i287
  %6070 = add i64 %6069, 10
  store i64 %6070, i64* %PC.i287
  %6071 = inttoptr i64 %6068 to i32*
  store i32 21, i32* %6071
  store %struct.Memory* %loadMem_4504eb, %struct.Memory** %MEMORY
  br label %block_.L_4504f5

block_.L_4504f5:                                  ; preds = %block_.L_450694, %block_.L_4504eb
  %loadMem_4504f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 33
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %6074 to i64*
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 15
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %6077 to i64*
  %6078 = load i64, i64* %RBP.i286
  %6079 = sub i64 %6078, 484
  %6080 = load i64, i64* %PC.i285
  %6081 = add i64 %6080, 10
  store i64 %6081, i64* %PC.i285
  %6082 = inttoptr i64 %6079 to i32*
  %6083 = load i32, i32* %6082
  %6084 = sub i32 %6083, 400
  %6085 = icmp ult i32 %6083, 400
  %6086 = zext i1 %6085 to i8
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6086, i8* %6087, align 1
  %6088 = and i32 %6084, 255
  %6089 = call i32 @llvm.ctpop.i32(i32 %6088)
  %6090 = trunc i32 %6089 to i8
  %6091 = and i8 %6090, 1
  %6092 = xor i8 %6091, 1
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6092, i8* %6093, align 1
  %6094 = xor i32 %6083, 400
  %6095 = xor i32 %6094, %6084
  %6096 = lshr i32 %6095, 4
  %6097 = trunc i32 %6096 to i8
  %6098 = and i8 %6097, 1
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6098, i8* %6099, align 1
  %6100 = icmp eq i32 %6084, 0
  %6101 = zext i1 %6100 to i8
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6101, i8* %6102, align 1
  %6103 = lshr i32 %6084, 31
  %6104 = trunc i32 %6103 to i8
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6104, i8* %6105, align 1
  %6106 = lshr i32 %6083, 31
  %6107 = xor i32 %6103, %6106
  %6108 = add i32 %6107, %6106
  %6109 = icmp eq i32 %6108, 2
  %6110 = zext i1 %6109 to i8
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6110, i8* %6111, align 1
  store %struct.Memory* %loadMem_4504f5, %struct.Memory** %MEMORY
  %loadMem_4504ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 33
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6114 to i64*
  %6115 = load i64, i64* %PC.i284
  %6116 = add i64 %6115, 425
  %6117 = load i64, i64* %PC.i284
  %6118 = add i64 %6117, 6
  %6119 = load i64, i64* %PC.i284
  %6120 = add i64 %6119, 6
  store i64 %6120, i64* %PC.i284
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6122 = load i8, i8* %6121, align 1
  %6123 = icmp ne i8 %6122, 0
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6125 = load i8, i8* %6124, align 1
  %6126 = icmp ne i8 %6125, 0
  %6127 = xor i1 %6123, %6126
  %6128 = xor i1 %6127, true
  %6129 = zext i1 %6128 to i8
  store i8 %6129, i8* %BRANCH_TAKEN, align 1
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6131 = select i1 %6127, i64 %6118, i64 %6116
  store i64 %6131, i64* %6130, align 8
  store %struct.Memory* %loadMem_4504ff, %struct.Memory** %MEMORY
  %loadBr_4504ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4504ff = icmp eq i8 %loadBr_4504ff, 1
  br i1 %cmpBr_4504ff, label %block_.L_4506a8, label %block_450505

block_450505:                                     ; preds = %block_.L_4504f5
  %loadMem_450505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 33
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6134 to i64*
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 1
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %6137 to i64*
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6139 = getelementptr inbounds %struct.GPR, %struct.GPR* %6138, i32 0, i32 15
  %6140 = getelementptr inbounds %struct.Reg, %struct.Reg* %6139, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %6140 to i64*
  %6141 = load i64, i64* %RBP.i283
  %6142 = sub i64 %6141, 484
  %6143 = load i64, i64* %PC.i281
  %6144 = add i64 %6143, 7
  store i64 %6144, i64* %PC.i281
  %6145 = inttoptr i64 %6142 to i32*
  %6146 = load i32, i32* %6145
  %6147 = sext i32 %6146 to i64
  store i64 %6147, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_450505, %struct.Memory** %MEMORY
  %loadMem_45050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 1
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 5
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RAX.i279
  %6158 = add i64 %6157, 12099168
  %6159 = load i64, i64* %PC.i278
  %6160 = add i64 %6159, 8
  store i64 %6160, i64* %PC.i278
  %6161 = inttoptr i64 %6158 to i8*
  %6162 = load i8, i8* %6161
  %6163 = zext i8 %6162 to i64
  store i64 %6163, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_45050c, %struct.Memory** %MEMORY
  %loadMem_450514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %6166 to i64*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 5
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %ECX.i276 = bitcast %union.anon* %6169 to i32*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 15
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %6172 to i64*
  %6173 = load i32, i32* %ECX.i276
  %6174 = zext i32 %6173 to i64
  %6175 = load i64, i64* %RBP.i277
  %6176 = sub i64 %6175, 496
  %6177 = load i64, i64* %PC.i275
  %6178 = add i64 %6177, 6
  store i64 %6178, i64* %PC.i275
  %6179 = inttoptr i64 %6176 to i32*
  %6180 = load i32, i32* %6179
  %6181 = sub i32 %6173, %6180
  %6182 = icmp ult i32 %6173, %6180
  %6183 = zext i1 %6182 to i8
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6183, i8* %6184, align 1
  %6185 = and i32 %6181, 255
  %6186 = call i32 @llvm.ctpop.i32(i32 %6185)
  %6187 = trunc i32 %6186 to i8
  %6188 = and i8 %6187, 1
  %6189 = xor i8 %6188, 1
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6189, i8* %6190, align 1
  %6191 = xor i32 %6180, %6173
  %6192 = xor i32 %6191, %6181
  %6193 = lshr i32 %6192, 4
  %6194 = trunc i32 %6193 to i8
  %6195 = and i8 %6194, 1
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6195, i8* %6196, align 1
  %6197 = icmp eq i32 %6181, 0
  %6198 = zext i1 %6197 to i8
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6198, i8* %6199, align 1
  %6200 = lshr i32 %6181, 31
  %6201 = trunc i32 %6200 to i8
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6201, i8* %6202, align 1
  %6203 = lshr i32 %6173, 31
  %6204 = lshr i32 %6180, 31
  %6205 = xor i32 %6204, %6203
  %6206 = xor i32 %6200, %6203
  %6207 = add i32 %6206, %6205
  %6208 = icmp eq i32 %6207, 2
  %6209 = zext i1 %6208 to i8
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6209, i8* %6210, align 1
  store %struct.Memory* %loadMem_450514, %struct.Memory** %MEMORY
  %loadMem_45051a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 33
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6213 to i64*
  %6214 = load i64, i64* %PC.i274
  %6215 = add i64 %6214, 373
  %6216 = load i64, i64* %PC.i274
  %6217 = add i64 %6216, 6
  %6218 = load i64, i64* %PC.i274
  %6219 = add i64 %6218, 6
  store i64 %6219, i64* %PC.i274
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6221 = load i8, i8* %6220, align 1
  %6222 = icmp eq i8 %6221, 0
  %6223 = zext i1 %6222 to i8
  store i8 %6223, i8* %BRANCH_TAKEN, align 1
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6225 = select i1 %6222, i64 %6215, i64 %6217
  store i64 %6225, i64* %6224, align 8
  store %struct.Memory* %loadMem_45051a, %struct.Memory** %MEMORY
  %loadBr_45051a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45051a = icmp eq i8 %loadBr_45051a, 1
  br i1 %cmpBr_45051a, label %block_.L_45068f, label %block_450520

block_450520:                                     ; preds = %block_450505
  %loadMem_450520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6227 = getelementptr inbounds %struct.GPR, %struct.GPR* %6226, i32 0, i32 33
  %6228 = getelementptr inbounds %struct.Reg, %struct.Reg* %6227, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6228 to i64*
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6230 = getelementptr inbounds %struct.GPR, %struct.GPR* %6229, i32 0, i32 1
  %6231 = getelementptr inbounds %struct.Reg, %struct.Reg* %6230, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %6231 to i64*
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 15
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %6234 to i64*
  %6235 = load i64, i64* %RBP.i273
  %6236 = sub i64 %6235, 484
  %6237 = load i64, i64* %PC.i271
  %6238 = add i64 %6237, 7
  store i64 %6238, i64* %PC.i271
  %6239 = inttoptr i64 %6236 to i32*
  %6240 = load i32, i32* %6239
  %6241 = sext i32 %6240 to i64
  store i64 %6241, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_450520, %struct.Memory** %MEMORY
  %loadMem_450527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 33
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6244 to i64*
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6246 = getelementptr inbounds %struct.GPR, %struct.GPR* %6245, i32 0, i32 1
  %6247 = getelementptr inbounds %struct.Reg, %struct.Reg* %6246, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %6247 to i64*
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 5
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %6250 to i64*
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 15
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %6253 to i64*
  %6254 = load i64, i64* %RBP.i270
  %6255 = load i64, i64* %RAX.i268
  %6256 = add i64 %6254, -480
  %6257 = add i64 %6256, %6255
  %6258 = load i64, i64* %PC.i267
  %6259 = add i64 %6258, 8
  store i64 %6259, i64* %PC.i267
  %6260 = inttoptr i64 %6257 to i8*
  %6261 = load i8, i8* %6260
  %6262 = sext i8 %6261 to i64
  %6263 = and i64 %6262, 4294967295
  store i64 %6263, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_450527, %struct.Memory** %MEMORY
  %loadMem_45052f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 33
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6266 to i64*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 5
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %ECX.i266 = bitcast %union.anon* %6269 to i32*
  %6270 = load i32, i32* %ECX.i266
  %6271 = zext i32 %6270 to i64
  %6272 = load i64, i64* %PC.i265
  %6273 = add i64 %6272, 3
  store i64 %6273, i64* %PC.i265
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6274, align 1
  %6275 = and i32 %6270, 255
  %6276 = call i32 @llvm.ctpop.i32(i32 %6275)
  %6277 = trunc i32 %6276 to i8
  %6278 = and i8 %6277, 1
  %6279 = xor i8 %6278, 1
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6279, i8* %6280, align 1
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6281, align 1
  %6282 = icmp eq i32 %6270, 0
  %6283 = zext i1 %6282 to i8
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6283, i8* %6284, align 1
  %6285 = lshr i32 %6270, 31
  %6286 = trunc i32 %6285 to i8
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6286, i8* %6287, align 1
  %6288 = lshr i32 %6270, 31
  %6289 = xor i32 %6285, %6288
  %6290 = add i32 %6289, %6288
  %6291 = icmp eq i32 %6290, 2
  %6292 = zext i1 %6291 to i8
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6292, i8* %6293, align 1
  store %struct.Memory* %loadMem_45052f, %struct.Memory** %MEMORY
  %loadMem_450532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 33
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %6296 to i64*
  %6297 = load i64, i64* %PC.i264
  %6298 = add i64 %6297, 349
  %6299 = load i64, i64* %PC.i264
  %6300 = add i64 %6299, 6
  %6301 = load i64, i64* %PC.i264
  %6302 = add i64 %6301, 6
  store i64 %6302, i64* %PC.i264
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6304 = load i8, i8* %6303, align 1
  store i8 %6304, i8* %BRANCH_TAKEN, align 1
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6306 = icmp ne i8 %6304, 0
  %6307 = select i1 %6306, i64 %6298, i64 %6300
  store i64 %6307, i64* %6305, align 8
  store %struct.Memory* %loadMem_450532, %struct.Memory** %MEMORY
  %loadBr_450532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450532 = icmp eq i8 %loadBr_450532, 1
  br i1 %cmpBr_450532, label %block_.L_45068f, label %block_450538

block_450538:                                     ; preds = %block_450520
  %loadMem_450538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 33
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %6310 to i64*
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 11
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 15
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %6316 to i64*
  %6317 = load i64, i64* %RBP.i263
  %6318 = sub i64 %6317, 484
  %6319 = load i64, i64* %PC.i261
  %6320 = add i64 %6319, 6
  store i64 %6320, i64* %PC.i261
  %6321 = inttoptr i64 %6318 to i32*
  %6322 = load i32, i32* %6321
  %6323 = zext i32 %6322 to i64
  store i64 %6323, i64* %RDI.i262, align 8
  store %struct.Memory* %loadMem_450538, %struct.Memory** %MEMORY
  %loadMem1_45053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 33
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6326 to i64*
  %6327 = load i64, i64* %PC.i260
  %6328 = add i64 %6327, -265662
  %6329 = load i64, i64* %PC.i260
  %6330 = add i64 %6329, 5
  %6331 = load i64, i64* %PC.i260
  %6332 = add i64 %6331, 5
  store i64 %6332, i64* %PC.i260
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6334 = load i64, i64* %6333, align 8
  %6335 = add i64 %6334, -8
  %6336 = inttoptr i64 %6335 to i64*
  store i64 %6330, i64* %6336
  store i64 %6335, i64* %6333, align 8
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6328, i64* %6337, align 8
  store %struct.Memory* %loadMem1_45053e, %struct.Memory** %MEMORY
  %loadMem2_45053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45053e = load i64, i64* %3
  %call2_45053e = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_45053e, %struct.Memory* %loadMem2_45053e)
  store %struct.Memory* %call2_45053e, %struct.Memory** %MEMORY
  %loadMem_450543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 33
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6340 to i64*
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 1
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %EAX.i259 = bitcast %union.anon* %6343 to i32*
  %6344 = load i32, i32* %EAX.i259
  %6345 = zext i32 %6344 to i64
  %6346 = load i64, i64* %PC.i258
  %6347 = add i64 %6346, 3
  store i64 %6347, i64* %PC.i258
  %6348 = sub i32 %6344, 5
  %6349 = icmp ult i32 %6344, 5
  %6350 = zext i1 %6349 to i8
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6350, i8* %6351, align 1
  %6352 = and i32 %6348, 255
  %6353 = call i32 @llvm.ctpop.i32(i32 %6352)
  %6354 = trunc i32 %6353 to i8
  %6355 = and i8 %6354, 1
  %6356 = xor i8 %6355, 1
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6356, i8* %6357, align 1
  %6358 = xor i64 5, %6345
  %6359 = trunc i64 %6358 to i32
  %6360 = xor i32 %6359, %6348
  %6361 = lshr i32 %6360, 4
  %6362 = trunc i32 %6361 to i8
  %6363 = and i8 %6362, 1
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6363, i8* %6364, align 1
  %6365 = icmp eq i32 %6348, 0
  %6366 = zext i1 %6365 to i8
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6366, i8* %6367, align 1
  %6368 = lshr i32 %6348, 31
  %6369 = trunc i32 %6368 to i8
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6369, i8* %6370, align 1
  %6371 = lshr i32 %6344, 31
  %6372 = xor i32 %6368, %6371
  %6373 = add i32 %6372, %6371
  %6374 = icmp eq i32 %6373, 2
  %6375 = zext i1 %6374 to i8
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6375, i8* %6376, align 1
  store %struct.Memory* %loadMem_450543, %struct.Memory** %MEMORY
  %loadMem_450546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 33
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6379 to i64*
  %6380 = load i64, i64* %PC.i257
  %6381 = add i64 %6380, 329
  %6382 = load i64, i64* %PC.i257
  %6383 = add i64 %6382, 6
  %6384 = load i64, i64* %PC.i257
  %6385 = add i64 %6384, 6
  store i64 %6385, i64* %PC.i257
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6387 = load i8, i8* %6386, align 1
  %6388 = icmp ne i8 %6387, 0
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6390 = load i8, i8* %6389, align 1
  %6391 = icmp ne i8 %6390, 0
  %6392 = xor i1 %6388, %6391
  %6393 = xor i1 %6392, true
  %6394 = zext i1 %6393 to i8
  store i8 %6394, i8* %BRANCH_TAKEN, align 1
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6396 = select i1 %6392, i64 %6383, i64 %6381
  store i64 %6396, i64* %6395, align 8
  store %struct.Memory* %loadMem_450546, %struct.Memory** %MEMORY
  %loadBr_450546 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450546 = icmp eq i8 %loadBr_450546, 1
  br i1 %cmpBr_450546, label %block_.L_45068f, label %block_45054c

block_45054c:                                     ; preds = %block_450538
  %loadMem_45054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6398 = getelementptr inbounds %struct.GPR, %struct.GPR* %6397, i32 0, i32 33
  %6399 = getelementptr inbounds %struct.Reg, %struct.Reg* %6398, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6399 to i64*
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 9
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %6402 to i64*
  %6403 = load i64, i64* %PC.i255
  %6404 = add i64 %6403, 5
  store i64 %6404, i64* %PC.i255
  store i64 4, i64* %RSI.i256, align 8
  store %struct.Memory* %loadMem_45054c, %struct.Memory** %MEMORY
  %loadMem_450551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 33
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %6407 to i64*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 7
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %6410 to i64*
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6412 = getelementptr inbounds %struct.GPR, %struct.GPR* %6411, i32 0, i32 15
  %6413 = getelementptr inbounds %struct.Reg, %struct.Reg* %6412, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %6413 to i64*
  %6414 = load i64, i64* %RBP.i254
  %6415 = sub i64 %6414, 528
  %6416 = load i64, i64* %PC.i252
  %6417 = add i64 %6416, 7
  store i64 %6417, i64* %PC.i252
  store i64 %6415, i64* %RDX.i253, align 8
  store %struct.Memory* %loadMem_450551, %struct.Memory** %MEMORY
  %loadMem_450558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 33
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 11
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RDI.i250 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 15
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %6426 to i64*
  %6427 = load i64, i64* %RBP.i251
  %6428 = sub i64 %6427, 484
  %6429 = load i64, i64* %PC.i249
  %6430 = add i64 %6429, 6
  store i64 %6430, i64* %PC.i249
  %6431 = inttoptr i64 %6428 to i32*
  %6432 = load i32, i32* %6431
  %6433 = zext i32 %6432 to i64
  store i64 %6433, i64* %RDI.i250, align 8
  store %struct.Memory* %loadMem_450558, %struct.Memory** %MEMORY
  %loadMem1_45055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6436 to i64*
  %6437 = load i64, i64* %PC.i248
  %6438 = add i64 %6437, -265502
  %6439 = load i64, i64* %PC.i248
  %6440 = add i64 %6439, 5
  %6441 = load i64, i64* %PC.i248
  %6442 = add i64 %6441, 5
  store i64 %6442, i64* %PC.i248
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6444 = load i64, i64* %6443, align 8
  %6445 = add i64 %6444, -8
  %6446 = inttoptr i64 %6445 to i64*
  store i64 %6440, i64* %6446
  store i64 %6445, i64* %6443, align 8
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6438, i64* %6447, align 8
  store %struct.Memory* %loadMem1_45055e, %struct.Memory** %MEMORY
  %loadMem2_45055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45055e = load i64, i64* %3
  %call2_45055e = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_45055e, %struct.Memory* %loadMem2_45055e)
  store %struct.Memory* %call2_45055e, %struct.Memory** %MEMORY
  %loadMem_450563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 1
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %EAX.i246 = bitcast %union.anon* %6453 to i32*
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6455 = getelementptr inbounds %struct.GPR, %struct.GPR* %6454, i32 0, i32 15
  %6456 = getelementptr inbounds %struct.Reg, %struct.Reg* %6455, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %6456 to i64*
  %6457 = load i64, i64* %RBP.i247
  %6458 = sub i64 %6457, 532
  %6459 = load i32, i32* %EAX.i246
  %6460 = zext i32 %6459 to i64
  %6461 = load i64, i64* %PC.i245
  %6462 = add i64 %6461, 6
  store i64 %6462, i64* %PC.i245
  %6463 = inttoptr i64 %6458 to i32*
  store i32 %6459, i32* %6463
  store %struct.Memory* %loadMem_450563, %struct.Memory** %MEMORY
  %loadMem_450569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 33
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6466 to i64*
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 15
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %6469 to i64*
  %6470 = load i64, i64* %RBP.i244
  %6471 = sub i64 %6470, 492
  %6472 = load i64, i64* %PC.i243
  %6473 = add i64 %6472, 10
  store i64 %6473, i64* %PC.i243
  %6474 = inttoptr i64 %6471 to i32*
  store i32 0, i32* %6474
  store %struct.Memory* %loadMem_450569, %struct.Memory** %MEMORY
  br label %block_.L_450573

block_.L_450573:                                  ; preds = %block_450585, %block_45054c
  %loadMem_450573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 1
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 15
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %6483 to i64*
  %6484 = load i64, i64* %RBP.i242
  %6485 = sub i64 %6484, 492
  %6486 = load i64, i64* %PC.i240
  %6487 = add i64 %6486, 6
  store i64 %6487, i64* %PC.i240
  %6488 = inttoptr i64 %6485 to i32*
  %6489 = load i32, i32* %6488
  %6490 = zext i32 %6489 to i64
  store i64 %6490, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_450573, %struct.Memory** %MEMORY
  %loadMem_450579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 33
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6493 to i64*
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 1
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %6496 to i32*
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 15
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %6499 to i64*
  %6500 = load i32, i32* %EAX.i238
  %6501 = zext i32 %6500 to i64
  %6502 = load i64, i64* %RBP.i239
  %6503 = sub i64 %6502, 532
  %6504 = load i64, i64* %PC.i237
  %6505 = add i64 %6504, 6
  store i64 %6505, i64* %PC.i237
  %6506 = inttoptr i64 %6503 to i32*
  %6507 = load i32, i32* %6506
  %6508 = sub i32 %6500, %6507
  %6509 = icmp ult i32 %6500, %6507
  %6510 = zext i1 %6509 to i8
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6510, i8* %6511, align 1
  %6512 = and i32 %6508, 255
  %6513 = call i32 @llvm.ctpop.i32(i32 %6512)
  %6514 = trunc i32 %6513 to i8
  %6515 = and i8 %6514, 1
  %6516 = xor i8 %6515, 1
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6516, i8* %6517, align 1
  %6518 = xor i32 %6507, %6500
  %6519 = xor i32 %6518, %6508
  %6520 = lshr i32 %6519, 4
  %6521 = trunc i32 %6520 to i8
  %6522 = and i8 %6521, 1
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6522, i8* %6523, align 1
  %6524 = icmp eq i32 %6508, 0
  %6525 = zext i1 %6524 to i8
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6525, i8* %6526, align 1
  %6527 = lshr i32 %6508, 31
  %6528 = trunc i32 %6527 to i8
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6528, i8* %6529, align 1
  %6530 = lshr i32 %6500, 31
  %6531 = lshr i32 %6507, 31
  %6532 = xor i32 %6531, %6530
  %6533 = xor i32 %6527, %6530
  %6534 = add i32 %6533, %6532
  %6535 = icmp eq i32 %6534, 2
  %6536 = zext i1 %6535 to i8
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6536, i8* %6537, align 1
  store %struct.Memory* %loadMem_450579, %struct.Memory** %MEMORY
  %loadMem_45057f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 33
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6540 to i64*
  %6541 = load i64, i64* %PC.i236
  %6542 = add i64 %6541, 49
  %6543 = load i64, i64* %PC.i236
  %6544 = add i64 %6543, 6
  %6545 = load i64, i64* %PC.i236
  %6546 = add i64 %6545, 6
  store i64 %6546, i64* %PC.i236
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6548 = load i8, i8* %6547, align 1
  %6549 = icmp ne i8 %6548, 0
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6551 = load i8, i8* %6550, align 1
  %6552 = icmp ne i8 %6551, 0
  %6553 = xor i1 %6549, %6552
  %6554 = xor i1 %6553, true
  %6555 = zext i1 %6554 to i8
  store i8 %6555, i8* %BRANCH_TAKEN, align 1
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6557 = select i1 %6553, i64 %6544, i64 %6542
  store i64 %6557, i64* %6556, align 8
  store %struct.Memory* %loadMem_45057f, %struct.Memory** %MEMORY
  %loadBr_45057f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45057f = icmp eq i8 %loadBr_45057f, 1
  br i1 %cmpBr_45057f, label %block_.L_4505b0, label %block_450585

block_450585:                                     ; preds = %block_.L_450573
  %loadMem_450585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 1
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 15
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %6566 to i64*
  %6567 = load i64, i64* %RBP.i235
  %6568 = sub i64 %6567, 492
  %6569 = load i64, i64* %PC.i233
  %6570 = add i64 %6569, 7
  store i64 %6570, i64* %PC.i233
  %6571 = inttoptr i64 %6568 to i32*
  %6572 = load i32, i32* %6571
  %6573 = sext i32 %6572 to i64
  store i64 %6573, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_450585, %struct.Memory** %MEMORY
  %loadMem_45058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6575 = getelementptr inbounds %struct.GPR, %struct.GPR* %6574, i32 0, i32 33
  %6576 = getelementptr inbounds %struct.Reg, %struct.Reg* %6575, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6576 to i64*
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 1
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6579 to i64*
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6581 = getelementptr inbounds %struct.GPR, %struct.GPR* %6580, i32 0, i32 15
  %6582 = getelementptr inbounds %struct.Reg, %struct.Reg* %6581, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %6582 to i64*
  %6583 = load i64, i64* %RBP.i232
  %6584 = load i64, i64* %RAX.i231
  %6585 = mul i64 %6584, 4
  %6586 = add i64 %6583, -528
  %6587 = add i64 %6586, %6585
  %6588 = load i64, i64* %PC.i230
  %6589 = add i64 %6588, 8
  store i64 %6589, i64* %PC.i230
  %6590 = inttoptr i64 %6587 to i32*
  %6591 = load i32, i32* %6590
  %6592 = sext i32 %6591 to i64
  store i64 %6592, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_45058c, %struct.Memory** %MEMORY
  %loadMem_450594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 33
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6595 to i64*
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6597 = getelementptr inbounds %struct.GPR, %struct.GPR* %6596, i32 0, i32 1
  %6598 = getelementptr inbounds %struct.Reg, %struct.Reg* %6597, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %6598 to i64*
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6600 = getelementptr inbounds %struct.GPR, %struct.GPR* %6599, i32 0, i32 15
  %6601 = getelementptr inbounds %struct.Reg, %struct.Reg* %6600, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %6601 to i64*
  %6602 = load i64, i64* %RBP.i229
  %6603 = load i64, i64* %RAX.i228
  %6604 = add i64 %6602, -480
  %6605 = add i64 %6604, %6603
  %6606 = load i64, i64* %PC.i227
  %6607 = add i64 %6606, 8
  store i64 %6607, i64* %PC.i227
  %6608 = inttoptr i64 %6605 to i8*
  store i8 1, i8* %6608
  store %struct.Memory* %loadMem_450594, %struct.Memory** %MEMORY
  %loadMem_45059c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 33
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 1
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 15
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %6617 to i64*
  %6618 = load i64, i64* %RBP.i226
  %6619 = sub i64 %6618, 492
  %6620 = load i64, i64* %PC.i224
  %6621 = add i64 %6620, 6
  store i64 %6621, i64* %PC.i224
  %6622 = inttoptr i64 %6619 to i32*
  %6623 = load i32, i32* %6622
  %6624 = zext i32 %6623 to i64
  store i64 %6624, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_45059c, %struct.Memory** %MEMORY
  %loadMem_4505a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6626 = getelementptr inbounds %struct.GPR, %struct.GPR* %6625, i32 0, i32 33
  %6627 = getelementptr inbounds %struct.Reg, %struct.Reg* %6626, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6627 to i64*
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 1
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %6630 to i64*
  %6631 = load i64, i64* %RAX.i223
  %6632 = load i64, i64* %PC.i222
  %6633 = add i64 %6632, 3
  store i64 %6633, i64* %PC.i222
  %6634 = trunc i64 %6631 to i32
  %6635 = add i32 1, %6634
  %6636 = zext i32 %6635 to i64
  store i64 %6636, i64* %RAX.i223, align 8
  %6637 = icmp ult i32 %6635, %6634
  %6638 = icmp ult i32 %6635, 1
  %6639 = or i1 %6637, %6638
  %6640 = zext i1 %6639 to i8
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6640, i8* %6641, align 1
  %6642 = and i32 %6635, 255
  %6643 = call i32 @llvm.ctpop.i32(i32 %6642)
  %6644 = trunc i32 %6643 to i8
  %6645 = and i8 %6644, 1
  %6646 = xor i8 %6645, 1
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6646, i8* %6647, align 1
  %6648 = xor i64 1, %6631
  %6649 = trunc i64 %6648 to i32
  %6650 = xor i32 %6649, %6635
  %6651 = lshr i32 %6650, 4
  %6652 = trunc i32 %6651 to i8
  %6653 = and i8 %6652, 1
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6653, i8* %6654, align 1
  %6655 = icmp eq i32 %6635, 0
  %6656 = zext i1 %6655 to i8
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6656, i8* %6657, align 1
  %6658 = lshr i32 %6635, 31
  %6659 = trunc i32 %6658 to i8
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6659, i8* %6660, align 1
  %6661 = lshr i32 %6634, 31
  %6662 = xor i32 %6658, %6661
  %6663 = add i32 %6662, %6658
  %6664 = icmp eq i32 %6663, 2
  %6665 = zext i1 %6664 to i8
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6665, i8* %6666, align 1
  store %struct.Memory* %loadMem_4505a2, %struct.Memory** %MEMORY
  %loadMem_4505a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 33
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6669 to i64*
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 1
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %6672 to i32*
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 15
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %6675 to i64*
  %6676 = load i64, i64* %RBP.i221
  %6677 = sub i64 %6676, 492
  %6678 = load i32, i32* %EAX.i220
  %6679 = zext i32 %6678 to i64
  %6680 = load i64, i64* %PC.i219
  %6681 = add i64 %6680, 6
  store i64 %6681, i64* %PC.i219
  %6682 = inttoptr i64 %6677 to i32*
  store i32 %6678, i32* %6682
  store %struct.Memory* %loadMem_4505a5, %struct.Memory** %MEMORY
  %loadMem_4505ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 33
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6685 to i64*
  %6686 = load i64, i64* %PC.i218
  %6687 = add i64 %6686, -56
  %6688 = load i64, i64* %PC.i218
  %6689 = add i64 %6688, 5
  store i64 %6689, i64* %PC.i218
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6687, i64* %6690, align 8
  store %struct.Memory* %loadMem_4505ab, %struct.Memory** %MEMORY
  br label %block_.L_450573

block_.L_4505b0:                                  ; preds = %block_.L_450573
  %loadMem_4505b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 33
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6693 to i64*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 9
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %RSI.i216 = bitcast %union.anon* %6696 to i64*
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 15
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %6699 to i64*
  %6700 = load i64, i64* %RBP.i217
  %6701 = sub i64 %6700, 1184
  %6702 = load i64, i64* %PC.i215
  %6703 = add i64 %6702, 7
  store i64 %6703, i64* %PC.i215
  store i64 %6701, i64* %RSI.i216, align 8
  store %struct.Memory* %loadMem_4505b0, %struct.Memory** %MEMORY
  %loadMem_4505b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 33
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6706 to i64*
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6708 = getelementptr inbounds %struct.GPR, %struct.GPR* %6707, i32 0, i32 11
  %6709 = getelementptr inbounds %struct.Reg, %struct.Reg* %6708, i32 0, i32 0
  %RDI.i213 = bitcast %union.anon* %6709 to i64*
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6711 = getelementptr inbounds %struct.GPR, %struct.GPR* %6710, i32 0, i32 15
  %6712 = getelementptr inbounds %struct.Reg, %struct.Reg* %6711, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %6712 to i64*
  %6713 = load i64, i64* %RBP.i214
  %6714 = sub i64 %6713, 484
  %6715 = load i64, i64* %PC.i212
  %6716 = add i64 %6715, 6
  store i64 %6716, i64* %PC.i212
  %6717 = inttoptr i64 %6714 to i32*
  %6718 = load i32, i32* %6717
  %6719 = zext i32 %6718 to i64
  store i64 %6719, i64* %RDI.i213, align 8
  store %struct.Memory* %loadMem_4505b7, %struct.Memory** %MEMORY
  %loadMem1_4505bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 33
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6722 to i64*
  %6723 = load i64, i64* %PC.i211
  %6724 = add i64 %6723, -248509
  %6725 = load i64, i64* %PC.i211
  %6726 = add i64 %6725, 5
  %6727 = load i64, i64* %PC.i211
  %6728 = add i64 %6727, 5
  store i64 %6728, i64* %PC.i211
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6730 = load i64, i64* %6729, align 8
  %6731 = add i64 %6730, -8
  %6732 = inttoptr i64 %6731 to i64*
  store i64 %6726, i64* %6732
  store i64 %6731, i64* %6729, align 8
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6724, i64* %6733, align 8
  store %struct.Memory* %loadMem1_4505bd, %struct.Memory** %MEMORY
  %loadMem2_4505bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4505bd = load i64, i64* %3
  %call2_4505bd = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64 %loadPC_4505bd, %struct.Memory* %loadMem2_4505bd)
  store %struct.Memory* %call2_4505bd, %struct.Memory** %MEMORY
  %loadMem_4505c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6735 = getelementptr inbounds %struct.GPR, %struct.GPR* %6734, i32 0, i32 33
  %6736 = getelementptr inbounds %struct.Reg, %struct.Reg* %6735, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6736 to i64*
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 1
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %6739 to i32*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 15
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %6742 to i64*
  %6743 = load i64, i64* %RBP.i210
  %6744 = sub i64 %6743, 1188
  %6745 = load i32, i32* %EAX.i209
  %6746 = zext i32 %6745 to i64
  %6747 = load i64, i64* %PC.i208
  %6748 = add i64 %6747, 6
  store i64 %6748, i64* %PC.i208
  %6749 = inttoptr i64 %6744 to i32*
  store i32 %6745, i32* %6749
  store %struct.Memory* %loadMem_4505c2, %struct.Memory** %MEMORY
  %loadMem_4505c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 33
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6752 to i64*
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6754 = getelementptr inbounds %struct.GPR, %struct.GPR* %6753, i32 0, i32 15
  %6755 = getelementptr inbounds %struct.Reg, %struct.Reg* %6754, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %6755 to i64*
  %6756 = load i64, i64* %RBP.i207
  %6757 = sub i64 %6756, 492
  %6758 = load i64, i64* %PC.i206
  %6759 = add i64 %6758, 10
  store i64 %6759, i64* %PC.i206
  %6760 = inttoptr i64 %6757 to i32*
  store i32 0, i32* %6760
  store %struct.Memory* %loadMem_4505c8, %struct.Memory** %MEMORY
  br label %block_.L_4505d2

block_.L_4505d2:                                  ; preds = %block_.L_450676, %block_.L_4505b0
  %loadMem_4505d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 33
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6763 to i64*
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 1
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 15
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %6769 to i64*
  %6770 = load i64, i64* %RBP.i205
  %6771 = sub i64 %6770, 492
  %6772 = load i64, i64* %PC.i203
  %6773 = add i64 %6772, 6
  store i64 %6773, i64* %PC.i203
  %6774 = inttoptr i64 %6771 to i32*
  %6775 = load i32, i32* %6774
  %6776 = zext i32 %6775 to i64
  store i64 %6776, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_4505d2, %struct.Memory** %MEMORY
  %loadMem_4505d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6778 = getelementptr inbounds %struct.GPR, %struct.GPR* %6777, i32 0, i32 33
  %6779 = getelementptr inbounds %struct.Reg, %struct.Reg* %6778, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %6779 to i64*
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 1
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %6782 to i32*
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 15
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %6785 to i64*
  %6786 = load i32, i32* %EAX.i201
  %6787 = zext i32 %6786 to i64
  %6788 = load i64, i64* %RBP.i202
  %6789 = sub i64 %6788, 1188
  %6790 = load i64, i64* %PC.i200
  %6791 = add i64 %6790, 6
  store i64 %6791, i64* %PC.i200
  %6792 = inttoptr i64 %6789 to i32*
  %6793 = load i32, i32* %6792
  %6794 = sub i32 %6786, %6793
  %6795 = icmp ult i32 %6786, %6793
  %6796 = zext i1 %6795 to i8
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6796, i8* %6797, align 1
  %6798 = and i32 %6794, 255
  %6799 = call i32 @llvm.ctpop.i32(i32 %6798)
  %6800 = trunc i32 %6799 to i8
  %6801 = and i8 %6800, 1
  %6802 = xor i8 %6801, 1
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6802, i8* %6803, align 1
  %6804 = xor i32 %6793, %6786
  %6805 = xor i32 %6804, %6794
  %6806 = lshr i32 %6805, 4
  %6807 = trunc i32 %6806 to i8
  %6808 = and i8 %6807, 1
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6808, i8* %6809, align 1
  %6810 = icmp eq i32 %6794, 0
  %6811 = zext i1 %6810 to i8
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6811, i8* %6812, align 1
  %6813 = lshr i32 %6794, 31
  %6814 = trunc i32 %6813 to i8
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6814, i8* %6815, align 1
  %6816 = lshr i32 %6786, 31
  %6817 = lshr i32 %6793, 31
  %6818 = xor i32 %6817, %6816
  %6819 = xor i32 %6813, %6816
  %6820 = add i32 %6819, %6818
  %6821 = icmp eq i32 %6820, 2
  %6822 = zext i1 %6821 to i8
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6822, i8* %6823, align 1
  store %struct.Memory* %loadMem_4505d8, %struct.Memory** %MEMORY
  %loadMem_4505de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 33
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6826 to i64*
  %6827 = load i64, i64* %PC.i199
  %6828 = add i64 %6827, 172
  %6829 = load i64, i64* %PC.i199
  %6830 = add i64 %6829, 6
  %6831 = load i64, i64* %PC.i199
  %6832 = add i64 %6831, 6
  store i64 %6832, i64* %PC.i199
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6834 = load i8, i8* %6833, align 1
  %6835 = icmp ne i8 %6834, 0
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6837 = load i8, i8* %6836, align 1
  %6838 = icmp ne i8 %6837, 0
  %6839 = xor i1 %6835, %6838
  %6840 = xor i1 %6839, true
  %6841 = zext i1 %6840 to i8
  store i8 %6841, i8* %BRANCH_TAKEN, align 1
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6843 = select i1 %6839, i64 %6830, i64 %6828
  store i64 %6843, i64* %6842, align 8
  store %struct.Memory* %loadMem_4505de, %struct.Memory** %MEMORY
  %loadBr_4505de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4505de = icmp eq i8 %loadBr_4505de, 1
  br i1 %cmpBr_4505de, label %block_.L_45068a, label %block_4505e4

block_4505e4:                                     ; preds = %block_.L_4505d2
  %loadMem_4505e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 33
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6846 to i64*
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 1
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6849 to i64*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 15
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6852 to i64*
  %6853 = load i64, i64* %RBP.i198
  %6854 = sub i64 %6853, 492
  %6855 = load i64, i64* %PC.i196
  %6856 = add i64 %6855, 7
  store i64 %6856, i64* %PC.i196
  %6857 = inttoptr i64 %6854 to i32*
  %6858 = load i32, i32* %6857
  %6859 = sext i32 %6858 to i64
  store i64 %6859, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_4505e4, %struct.Memory** %MEMORY
  %loadMem_4505eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 33
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6862 to i64*
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 1
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %6865 to i64*
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6867 = getelementptr inbounds %struct.GPR, %struct.GPR* %6866, i32 0, i32 11
  %6868 = getelementptr inbounds %struct.Reg, %struct.Reg* %6867, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %6868 to i64*
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6870 = getelementptr inbounds %struct.GPR, %struct.GPR* %6869, i32 0, i32 15
  %6871 = getelementptr inbounds %struct.Reg, %struct.Reg* %6870, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %6871 to i64*
  %6872 = load i64, i64* %RBP.i195
  %6873 = load i64, i64* %RAX.i193
  %6874 = mul i64 %6873, 4
  %6875 = add i64 %6872, -1184
  %6876 = add i64 %6875, %6874
  %6877 = load i64, i64* %PC.i192
  %6878 = add i64 %6877, 7
  store i64 %6878, i64* %PC.i192
  %6879 = inttoptr i64 %6876 to i32*
  %6880 = load i32, i32* %6879
  %6881 = zext i32 %6880 to i64
  store i64 %6881, i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_4505eb, %struct.Memory** %MEMORY
  %loadMem1_4505f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 33
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6884 to i64*
  %6885 = load i64, i64* %PC.i191
  %6886 = add i64 %6885, -265842
  %6887 = load i64, i64* %PC.i191
  %6888 = add i64 %6887, 5
  %6889 = load i64, i64* %PC.i191
  %6890 = add i64 %6889, 5
  store i64 %6890, i64* %PC.i191
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6892 = load i64, i64* %6891, align 8
  %6893 = add i64 %6892, -8
  %6894 = inttoptr i64 %6893 to i64*
  store i64 %6888, i64* %6894
  store i64 %6893, i64* %6891, align 8
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6886, i64* %6895, align 8
  store %struct.Memory* %loadMem1_4505f2, %struct.Memory** %MEMORY
  %loadMem2_4505f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4505f2 = load i64, i64* %3
  %call2_4505f2 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_4505f2, %struct.Memory* %loadMem2_4505f2)
  store %struct.Memory* %call2_4505f2, %struct.Memory** %MEMORY
  %loadMem_4505f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 33
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6898 to i64*
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 1
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %EAX.i190 = bitcast %union.anon* %6901 to i32*
  %6902 = load i32, i32* %EAX.i190
  %6903 = zext i32 %6902 to i64
  %6904 = load i64, i64* %PC.i189
  %6905 = add i64 %6904, 3
  store i64 %6905, i64* %PC.i189
  %6906 = sub i32 %6902, 3
  %6907 = icmp ult i32 %6902, 3
  %6908 = zext i1 %6907 to i8
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6908, i8* %6909, align 1
  %6910 = and i32 %6906, 255
  %6911 = call i32 @llvm.ctpop.i32(i32 %6910)
  %6912 = trunc i32 %6911 to i8
  %6913 = and i8 %6912, 1
  %6914 = xor i8 %6913, 1
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6914, i8* %6915, align 1
  %6916 = xor i64 3, %6903
  %6917 = trunc i64 %6916 to i32
  %6918 = xor i32 %6917, %6906
  %6919 = lshr i32 %6918, 4
  %6920 = trunc i32 %6919 to i8
  %6921 = and i8 %6920, 1
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6921, i8* %6922, align 1
  %6923 = icmp eq i32 %6906, 0
  %6924 = zext i1 %6923 to i8
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6924, i8* %6925, align 1
  %6926 = lshr i32 %6906, 31
  %6927 = trunc i32 %6926 to i8
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6927, i8* %6928, align 1
  %6929 = lshr i32 %6902, 31
  %6930 = xor i32 %6926, %6929
  %6931 = add i32 %6930, %6929
  %6932 = icmp eq i32 %6931, 2
  %6933 = zext i1 %6932 to i8
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6933, i8* %6934, align 1
  store %struct.Memory* %loadMem_4505f7, %struct.Memory** %MEMORY
  %loadMem_4505fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 33
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6937 to i64*
  %6938 = load i64, i64* %PC.i188
  %6939 = add i64 %6938, 119
  %6940 = load i64, i64* %PC.i188
  %6941 = add i64 %6940, 6
  %6942 = load i64, i64* %PC.i188
  %6943 = add i64 %6942, 6
  store i64 %6943, i64* %PC.i188
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6945 = load i8, i8* %6944, align 1
  %6946 = icmp eq i8 %6945, 0
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6948 = load i8, i8* %6947, align 1
  %6949 = icmp ne i8 %6948, 0
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6951 = load i8, i8* %6950, align 1
  %6952 = icmp ne i8 %6951, 0
  %6953 = xor i1 %6949, %6952
  %6954 = xor i1 %6953, true
  %6955 = and i1 %6946, %6954
  %6956 = zext i1 %6955 to i8
  store i8 %6956, i8* %BRANCH_TAKEN, align 1
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6958 = select i1 %6955, i64 %6939, i64 %6941
  store i64 %6958, i64* %6957, align 8
  store %struct.Memory* %loadMem_4505fa, %struct.Memory** %MEMORY
  %loadBr_4505fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4505fa = icmp eq i8 %loadBr_4505fa, 1
  br i1 %cmpBr_4505fa, label %block_.L_450671, label %block_450600

block_450600:                                     ; preds = %block_4505e4
  %loadMem_450600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 33
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6961 to i64*
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 9
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %6964 to i64*
  %6965 = load i64, i64* %PC.i186
  %6966 = add i64 %6965, 5
  store i64 %6966, i64* %PC.i186
  store i64 3, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_450600, %struct.Memory** %MEMORY
  %loadMem_450605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 33
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 7
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6972 to i64*
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 15
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6975 to i64*
  %6976 = load i64, i64* %RBP.i185
  %6977 = sub i64 %6976, 528
  %6978 = load i64, i64* %PC.i184
  %6979 = add i64 %6978, 7
  store i64 %6979, i64* %PC.i184
  store i64 %6977, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_450605, %struct.Memory** %MEMORY
  %loadMem_45060c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 33
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 1
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %6985 to i64*
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 15
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6988 to i64*
  %6989 = load i64, i64* %RBP.i183
  %6990 = sub i64 %6989, 492
  %6991 = load i64, i64* %PC.i181
  %6992 = add i64 %6991, 7
  store i64 %6992, i64* %PC.i181
  %6993 = inttoptr i64 %6990 to i32*
  %6994 = load i32, i32* %6993
  %6995 = sext i32 %6994 to i64
  store i64 %6995, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_45060c, %struct.Memory** %MEMORY
  %loadMem_450613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 33
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6998 to i64*
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 1
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %7001 to i64*
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 11
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %RDI.i179 = bitcast %union.anon* %7004 to i64*
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 15
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %7007 to i64*
  %7008 = load i64, i64* %RBP.i180
  %7009 = load i64, i64* %RAX.i178
  %7010 = mul i64 %7009, 4
  %7011 = add i64 %7008, -1184
  %7012 = add i64 %7011, %7010
  %7013 = load i64, i64* %PC.i177
  %7014 = add i64 %7013, 7
  store i64 %7014, i64* %PC.i177
  %7015 = inttoptr i64 %7012 to i32*
  %7016 = load i32, i32* %7015
  %7017 = zext i32 %7016 to i64
  store i64 %7017, i64* %RDI.i179, align 8
  store %struct.Memory* %loadMem_450613, %struct.Memory** %MEMORY
  %loadMem1_45061a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 33
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %7020 to i64*
  %7021 = load i64, i64* %PC.i176
  %7022 = add i64 %7021, -265690
  %7023 = load i64, i64* %PC.i176
  %7024 = add i64 %7023, 5
  %7025 = load i64, i64* %PC.i176
  %7026 = add i64 %7025, 5
  store i64 %7026, i64* %PC.i176
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7028 = load i64, i64* %7027, align 8
  %7029 = add i64 %7028, -8
  %7030 = inttoptr i64 %7029 to i64*
  store i64 %7024, i64* %7030
  store i64 %7029, i64* %7027, align 8
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7022, i64* %7031, align 8
  store %struct.Memory* %loadMem1_45061a, %struct.Memory** %MEMORY
  %loadMem2_45061a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45061a = load i64, i64* %3
  %call2_45061a = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_45061a, %struct.Memory* %loadMem2_45061a)
  store %struct.Memory* %call2_45061a, %struct.Memory** %MEMORY
  %loadMem_45061f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 33
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %7034 to i64*
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7036 = getelementptr inbounds %struct.GPR, %struct.GPR* %7035, i32 0, i32 1
  %7037 = getelementptr inbounds %struct.Reg, %struct.Reg* %7036, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %7037 to i32*
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 15
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %7040 to i64*
  %7041 = load i64, i64* %RBP.i175
  %7042 = sub i64 %7041, 532
  %7043 = load i32, i32* %EAX.i174
  %7044 = zext i32 %7043 to i64
  %7045 = load i64, i64* %PC.i173
  %7046 = add i64 %7045, 6
  store i64 %7046, i64* %PC.i173
  %7047 = inttoptr i64 %7042 to i32*
  store i32 %7043, i32* %7047
  store %struct.Memory* %loadMem_45061f, %struct.Memory** %MEMORY
  %loadMem_450625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 33
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %7050 to i64*
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 15
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %7053 to i64*
  %7054 = load i64, i64* %RBP.i172
  %7055 = sub i64 %7054, 1192
  %7056 = load i64, i64* %PC.i171
  %7057 = add i64 %7056, 10
  store i64 %7057, i64* %PC.i171
  %7058 = inttoptr i64 %7055 to i32*
  store i32 0, i32* %7058
  store %struct.Memory* %loadMem_450625, %struct.Memory** %MEMORY
  br label %block_.L_45062f

block_.L_45062f:                                  ; preds = %block_450641, %block_450600
  %loadMem_45062f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 33
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7061 to i64*
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7063 = getelementptr inbounds %struct.GPR, %struct.GPR* %7062, i32 0, i32 1
  %7064 = getelementptr inbounds %struct.Reg, %struct.Reg* %7063, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %7064 to i64*
  %7065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7066 = getelementptr inbounds %struct.GPR, %struct.GPR* %7065, i32 0, i32 15
  %7067 = getelementptr inbounds %struct.Reg, %struct.Reg* %7066, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %7067 to i64*
  %7068 = load i64, i64* %RBP.i170
  %7069 = sub i64 %7068, 1192
  %7070 = load i64, i64* %PC.i168
  %7071 = add i64 %7070, 6
  store i64 %7071, i64* %PC.i168
  %7072 = inttoptr i64 %7069 to i32*
  %7073 = load i32, i32* %7072
  %7074 = zext i32 %7073 to i64
  store i64 %7074, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_45062f, %struct.Memory** %MEMORY
  %loadMem_450635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 33
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %7077 to i64*
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 1
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %7080 to i32*
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 15
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %7083 to i64*
  %7084 = load i32, i32* %EAX.i166
  %7085 = zext i32 %7084 to i64
  %7086 = load i64, i64* %RBP.i167
  %7087 = sub i64 %7086, 532
  %7088 = load i64, i64* %PC.i165
  %7089 = add i64 %7088, 6
  store i64 %7089, i64* %PC.i165
  %7090 = inttoptr i64 %7087 to i32*
  %7091 = load i32, i32* %7090
  %7092 = sub i32 %7084, %7091
  %7093 = icmp ult i32 %7084, %7091
  %7094 = zext i1 %7093 to i8
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7094, i8* %7095, align 1
  %7096 = and i32 %7092, 255
  %7097 = call i32 @llvm.ctpop.i32(i32 %7096)
  %7098 = trunc i32 %7097 to i8
  %7099 = and i8 %7098, 1
  %7100 = xor i8 %7099, 1
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7100, i8* %7101, align 1
  %7102 = xor i32 %7091, %7084
  %7103 = xor i32 %7102, %7092
  %7104 = lshr i32 %7103, 4
  %7105 = trunc i32 %7104 to i8
  %7106 = and i8 %7105, 1
  %7107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7106, i8* %7107, align 1
  %7108 = icmp eq i32 %7092, 0
  %7109 = zext i1 %7108 to i8
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7109, i8* %7110, align 1
  %7111 = lshr i32 %7092, 31
  %7112 = trunc i32 %7111 to i8
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7112, i8* %7113, align 1
  %7114 = lshr i32 %7084, 31
  %7115 = lshr i32 %7091, 31
  %7116 = xor i32 %7115, %7114
  %7117 = xor i32 %7111, %7114
  %7118 = add i32 %7117, %7116
  %7119 = icmp eq i32 %7118, 2
  %7120 = zext i1 %7119 to i8
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7120, i8* %7121, align 1
  store %struct.Memory* %loadMem_450635, %struct.Memory** %MEMORY
  %loadMem_45063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 33
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7124 to i64*
  %7125 = load i64, i64* %PC.i164
  %7126 = add i64 %7125, 49
  %7127 = load i64, i64* %PC.i164
  %7128 = add i64 %7127, 6
  %7129 = load i64, i64* %PC.i164
  %7130 = add i64 %7129, 6
  store i64 %7130, i64* %PC.i164
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7132 = load i8, i8* %7131, align 1
  %7133 = icmp ne i8 %7132, 0
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7135 = load i8, i8* %7134, align 1
  %7136 = icmp ne i8 %7135, 0
  %7137 = xor i1 %7133, %7136
  %7138 = xor i1 %7137, true
  %7139 = zext i1 %7138 to i8
  store i8 %7139, i8* %BRANCH_TAKEN, align 1
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7141 = select i1 %7137, i64 %7128, i64 %7126
  store i64 %7141, i64* %7140, align 8
  store %struct.Memory* %loadMem_45063b, %struct.Memory** %MEMORY
  %loadBr_45063b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45063b = icmp eq i8 %loadBr_45063b, 1
  br i1 %cmpBr_45063b, label %block_.L_45066c, label %block_450641

block_450641:                                     ; preds = %block_.L_45062f
  %loadMem_450641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 33
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7144 to i64*
  %7145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7146 = getelementptr inbounds %struct.GPR, %struct.GPR* %7145, i32 0, i32 1
  %7147 = getelementptr inbounds %struct.Reg, %struct.Reg* %7146, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %7147 to i64*
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 15
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %7150 to i64*
  %7151 = load i64, i64* %RBP.i163
  %7152 = sub i64 %7151, 1192
  %7153 = load i64, i64* %PC.i161
  %7154 = add i64 %7153, 7
  store i64 %7154, i64* %PC.i161
  %7155 = inttoptr i64 %7152 to i32*
  %7156 = load i32, i32* %7155
  %7157 = sext i32 %7156 to i64
  store i64 %7157, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_450641, %struct.Memory** %MEMORY
  %loadMem_450648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 33
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7160 to i64*
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7162 = getelementptr inbounds %struct.GPR, %struct.GPR* %7161, i32 0, i32 1
  %7163 = getelementptr inbounds %struct.Reg, %struct.Reg* %7162, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %7163 to i64*
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 15
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %7166 to i64*
  %7167 = load i64, i64* %RBP.i160
  %7168 = load i64, i64* %RAX.i159
  %7169 = mul i64 %7168, 4
  %7170 = add i64 %7167, -528
  %7171 = add i64 %7170, %7169
  %7172 = load i64, i64* %PC.i158
  %7173 = add i64 %7172, 8
  store i64 %7173, i64* %PC.i158
  %7174 = inttoptr i64 %7171 to i32*
  %7175 = load i32, i32* %7174
  %7176 = sext i32 %7175 to i64
  store i64 %7176, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_450648, %struct.Memory** %MEMORY
  %loadMem_450650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 33
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7179 to i64*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 1
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 15
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %7185 to i64*
  %7186 = load i64, i64* %RBP.i157
  %7187 = load i64, i64* %RAX.i156
  %7188 = add i64 %7186, -480
  %7189 = add i64 %7188, %7187
  %7190 = load i64, i64* %PC.i155
  %7191 = add i64 %7190, 8
  store i64 %7191, i64* %PC.i155
  %7192 = inttoptr i64 %7189 to i8*
  store i8 1, i8* %7192
  store %struct.Memory* %loadMem_450650, %struct.Memory** %MEMORY
  %loadMem_450658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7194 = getelementptr inbounds %struct.GPR, %struct.GPR* %7193, i32 0, i32 33
  %7195 = getelementptr inbounds %struct.Reg, %struct.Reg* %7194, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7195 to i64*
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 1
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 15
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %7201 to i64*
  %7202 = load i64, i64* %RBP.i154
  %7203 = sub i64 %7202, 1192
  %7204 = load i64, i64* %PC.i152
  %7205 = add i64 %7204, 6
  store i64 %7205, i64* %PC.i152
  %7206 = inttoptr i64 %7203 to i32*
  %7207 = load i32, i32* %7206
  %7208 = zext i32 %7207 to i64
  store i64 %7208, i64* %RAX.i153, align 8
  store %struct.Memory* %loadMem_450658, %struct.Memory** %MEMORY
  %loadMem_45065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 33
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7211 to i64*
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 1
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %7214 to i64*
  %7215 = load i64, i64* %RAX.i151
  %7216 = load i64, i64* %PC.i150
  %7217 = add i64 %7216, 3
  store i64 %7217, i64* %PC.i150
  %7218 = trunc i64 %7215 to i32
  %7219 = add i32 1, %7218
  %7220 = zext i32 %7219 to i64
  store i64 %7220, i64* %RAX.i151, align 8
  %7221 = icmp ult i32 %7219, %7218
  %7222 = icmp ult i32 %7219, 1
  %7223 = or i1 %7221, %7222
  %7224 = zext i1 %7223 to i8
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7224, i8* %7225, align 1
  %7226 = and i32 %7219, 255
  %7227 = call i32 @llvm.ctpop.i32(i32 %7226)
  %7228 = trunc i32 %7227 to i8
  %7229 = and i8 %7228, 1
  %7230 = xor i8 %7229, 1
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7230, i8* %7231, align 1
  %7232 = xor i64 1, %7215
  %7233 = trunc i64 %7232 to i32
  %7234 = xor i32 %7233, %7219
  %7235 = lshr i32 %7234, 4
  %7236 = trunc i32 %7235 to i8
  %7237 = and i8 %7236, 1
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7237, i8* %7238, align 1
  %7239 = icmp eq i32 %7219, 0
  %7240 = zext i1 %7239 to i8
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7240, i8* %7241, align 1
  %7242 = lshr i32 %7219, 31
  %7243 = trunc i32 %7242 to i8
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7243, i8* %7244, align 1
  %7245 = lshr i32 %7218, 31
  %7246 = xor i32 %7242, %7245
  %7247 = add i32 %7246, %7242
  %7248 = icmp eq i32 %7247, 2
  %7249 = zext i1 %7248 to i8
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7249, i8* %7250, align 1
  store %struct.Memory* %loadMem_45065e, %struct.Memory** %MEMORY
  %loadMem_450661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7252 = getelementptr inbounds %struct.GPR, %struct.GPR* %7251, i32 0, i32 33
  %7253 = getelementptr inbounds %struct.Reg, %struct.Reg* %7252, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7253 to i64*
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7255 = getelementptr inbounds %struct.GPR, %struct.GPR* %7254, i32 0, i32 1
  %7256 = getelementptr inbounds %struct.Reg, %struct.Reg* %7255, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %7256 to i32*
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7258 = getelementptr inbounds %struct.GPR, %struct.GPR* %7257, i32 0, i32 15
  %7259 = getelementptr inbounds %struct.Reg, %struct.Reg* %7258, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %7259 to i64*
  %7260 = load i64, i64* %RBP.i149
  %7261 = sub i64 %7260, 1192
  %7262 = load i32, i32* %EAX.i148
  %7263 = zext i32 %7262 to i64
  %7264 = load i64, i64* %PC.i147
  %7265 = add i64 %7264, 6
  store i64 %7265, i64* %PC.i147
  %7266 = inttoptr i64 %7261 to i32*
  store i32 %7262, i32* %7266
  store %struct.Memory* %loadMem_450661, %struct.Memory** %MEMORY
  %loadMem_450667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 33
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7269 to i64*
  %7270 = load i64, i64* %PC.i146
  %7271 = add i64 %7270, -56
  %7272 = load i64, i64* %PC.i146
  %7273 = add i64 %7272, 5
  store i64 %7273, i64* %PC.i146
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7271, i64* %7274, align 8
  store %struct.Memory* %loadMem_450667, %struct.Memory** %MEMORY
  br label %block_.L_45062f

block_.L_45066c:                                  ; preds = %block_.L_45062f
  %loadMem_45066c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7276 = getelementptr inbounds %struct.GPR, %struct.GPR* %7275, i32 0, i32 33
  %7277 = getelementptr inbounds %struct.Reg, %struct.Reg* %7276, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7277 to i64*
  %7278 = load i64, i64* %PC.i145
  %7279 = add i64 %7278, 5
  %7280 = load i64, i64* %PC.i145
  %7281 = add i64 %7280, 5
  store i64 %7281, i64* %PC.i145
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7279, i64* %7282, align 8
  store %struct.Memory* %loadMem_45066c, %struct.Memory** %MEMORY
  br label %block_.L_450671

block_.L_450671:                                  ; preds = %block_.L_45066c, %block_4505e4
  %loadMem_450671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7284 = getelementptr inbounds %struct.GPR, %struct.GPR* %7283, i32 0, i32 33
  %7285 = getelementptr inbounds %struct.Reg, %struct.Reg* %7284, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7285 to i64*
  %7286 = load i64, i64* %PC.i144
  %7287 = add i64 %7286, 5
  %7288 = load i64, i64* %PC.i144
  %7289 = add i64 %7288, 5
  store i64 %7289, i64* %PC.i144
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7287, i64* %7290, align 8
  store %struct.Memory* %loadMem_450671, %struct.Memory** %MEMORY
  br label %block_.L_450676

block_.L_450676:                                  ; preds = %block_.L_450671
  %loadMem_450676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7292 = getelementptr inbounds %struct.GPR, %struct.GPR* %7291, i32 0, i32 33
  %7293 = getelementptr inbounds %struct.Reg, %struct.Reg* %7292, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %7293 to i64*
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 1
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %7296 to i64*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 15
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %7299 to i64*
  %7300 = load i64, i64* %RBP.i143
  %7301 = sub i64 %7300, 492
  %7302 = load i64, i64* %PC.i141
  %7303 = add i64 %7302, 6
  store i64 %7303, i64* %PC.i141
  %7304 = inttoptr i64 %7301 to i32*
  %7305 = load i32, i32* %7304
  %7306 = zext i32 %7305 to i64
  store i64 %7306, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_450676, %struct.Memory** %MEMORY
  %loadMem_45067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7308 = getelementptr inbounds %struct.GPR, %struct.GPR* %7307, i32 0, i32 33
  %7309 = getelementptr inbounds %struct.Reg, %struct.Reg* %7308, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7309 to i64*
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 1
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %7312 to i64*
  %7313 = load i64, i64* %RAX.i140
  %7314 = load i64, i64* %PC.i139
  %7315 = add i64 %7314, 3
  store i64 %7315, i64* %PC.i139
  %7316 = trunc i64 %7313 to i32
  %7317 = add i32 1, %7316
  %7318 = zext i32 %7317 to i64
  store i64 %7318, i64* %RAX.i140, align 8
  %7319 = icmp ult i32 %7317, %7316
  %7320 = icmp ult i32 %7317, 1
  %7321 = or i1 %7319, %7320
  %7322 = zext i1 %7321 to i8
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7322, i8* %7323, align 1
  %7324 = and i32 %7317, 255
  %7325 = call i32 @llvm.ctpop.i32(i32 %7324)
  %7326 = trunc i32 %7325 to i8
  %7327 = and i8 %7326, 1
  %7328 = xor i8 %7327, 1
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7328, i8* %7329, align 1
  %7330 = xor i64 1, %7313
  %7331 = trunc i64 %7330 to i32
  %7332 = xor i32 %7331, %7317
  %7333 = lshr i32 %7332, 4
  %7334 = trunc i32 %7333 to i8
  %7335 = and i8 %7334, 1
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7335, i8* %7336, align 1
  %7337 = icmp eq i32 %7317, 0
  %7338 = zext i1 %7337 to i8
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7338, i8* %7339, align 1
  %7340 = lshr i32 %7317, 31
  %7341 = trunc i32 %7340 to i8
  %7342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7341, i8* %7342, align 1
  %7343 = lshr i32 %7316, 31
  %7344 = xor i32 %7340, %7343
  %7345 = add i32 %7344, %7340
  %7346 = icmp eq i32 %7345, 2
  %7347 = zext i1 %7346 to i8
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7347, i8* %7348, align 1
  store %struct.Memory* %loadMem_45067c, %struct.Memory** %MEMORY
  %loadMem_45067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 33
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7351 to i64*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 1
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %7354 to i32*
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 15
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %7357 to i64*
  %7358 = load i64, i64* %RBP.i138
  %7359 = sub i64 %7358, 492
  %7360 = load i32, i32* %EAX.i137
  %7361 = zext i32 %7360 to i64
  %7362 = load i64, i64* %PC.i136
  %7363 = add i64 %7362, 6
  store i64 %7363, i64* %PC.i136
  %7364 = inttoptr i64 %7359 to i32*
  store i32 %7360, i32* %7364
  store %struct.Memory* %loadMem_45067f, %struct.Memory** %MEMORY
  %loadMem_450685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7366 = getelementptr inbounds %struct.GPR, %struct.GPR* %7365, i32 0, i32 33
  %7367 = getelementptr inbounds %struct.Reg, %struct.Reg* %7366, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7367 to i64*
  %7368 = load i64, i64* %PC.i135
  %7369 = add i64 %7368, -179
  %7370 = load i64, i64* %PC.i135
  %7371 = add i64 %7370, 5
  store i64 %7371, i64* %PC.i135
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7369, i64* %7372, align 8
  store %struct.Memory* %loadMem_450685, %struct.Memory** %MEMORY
  br label %block_.L_4505d2

block_.L_45068a:                                  ; preds = %block_.L_4505d2
  %loadMem_45068a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 33
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7375 to i64*
  %7376 = load i64, i64* %PC.i134
  %7377 = add i64 %7376, 5
  %7378 = load i64, i64* %PC.i134
  %7379 = add i64 %7378, 5
  store i64 %7379, i64* %PC.i134
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7377, i64* %7380, align 8
  store %struct.Memory* %loadMem_45068a, %struct.Memory** %MEMORY
  br label %block_.L_45068f

block_.L_45068f:                                  ; preds = %block_.L_45068a, %block_450538, %block_450520, %block_450505
  %loadMem_45068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7382 = getelementptr inbounds %struct.GPR, %struct.GPR* %7381, i32 0, i32 33
  %7383 = getelementptr inbounds %struct.Reg, %struct.Reg* %7382, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7383 to i64*
  %7384 = load i64, i64* %PC.i133
  %7385 = add i64 %7384, 5
  %7386 = load i64, i64* %PC.i133
  %7387 = add i64 %7386, 5
  store i64 %7387, i64* %PC.i133
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7385, i64* %7388, align 8
  store %struct.Memory* %loadMem_45068f, %struct.Memory** %MEMORY
  br label %block_.L_450694

block_.L_450694:                                  ; preds = %block_.L_45068f
  %loadMem_450694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 33
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7391 to i64*
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 1
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %7394 to i64*
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 15
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %7397 to i64*
  %7398 = load i64, i64* %RBP.i132
  %7399 = sub i64 %7398, 484
  %7400 = load i64, i64* %PC.i130
  %7401 = add i64 %7400, 6
  store i64 %7401, i64* %PC.i130
  %7402 = inttoptr i64 %7399 to i32*
  %7403 = load i32, i32* %7402
  %7404 = zext i32 %7403 to i64
  store i64 %7404, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_450694, %struct.Memory** %MEMORY
  %loadMem_45069a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 33
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7407 to i64*
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 1
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %7410 to i64*
  %7411 = load i64, i64* %RAX.i129
  %7412 = load i64, i64* %PC.i128
  %7413 = add i64 %7412, 3
  store i64 %7413, i64* %PC.i128
  %7414 = trunc i64 %7411 to i32
  %7415 = add i32 1, %7414
  %7416 = zext i32 %7415 to i64
  store i64 %7416, i64* %RAX.i129, align 8
  %7417 = icmp ult i32 %7415, %7414
  %7418 = icmp ult i32 %7415, 1
  %7419 = or i1 %7417, %7418
  %7420 = zext i1 %7419 to i8
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7420, i8* %7421, align 1
  %7422 = and i32 %7415, 255
  %7423 = call i32 @llvm.ctpop.i32(i32 %7422)
  %7424 = trunc i32 %7423 to i8
  %7425 = and i8 %7424, 1
  %7426 = xor i8 %7425, 1
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7426, i8* %7427, align 1
  %7428 = xor i64 1, %7411
  %7429 = trunc i64 %7428 to i32
  %7430 = xor i32 %7429, %7415
  %7431 = lshr i32 %7430, 4
  %7432 = trunc i32 %7431 to i8
  %7433 = and i8 %7432, 1
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7433, i8* %7434, align 1
  %7435 = icmp eq i32 %7415, 0
  %7436 = zext i1 %7435 to i8
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7436, i8* %7437, align 1
  %7438 = lshr i32 %7415, 31
  %7439 = trunc i32 %7438 to i8
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7439, i8* %7440, align 1
  %7441 = lshr i32 %7414, 31
  %7442 = xor i32 %7438, %7441
  %7443 = add i32 %7442, %7438
  %7444 = icmp eq i32 %7443, 2
  %7445 = zext i1 %7444 to i8
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7445, i8* %7446, align 1
  store %struct.Memory* %loadMem_45069a, %struct.Memory** %MEMORY
  %loadMem_45069d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 33
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7449 to i64*
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7451 = getelementptr inbounds %struct.GPR, %struct.GPR* %7450, i32 0, i32 1
  %7452 = getelementptr inbounds %struct.Reg, %struct.Reg* %7451, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %7452 to i32*
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 15
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %7455 to i64*
  %7456 = load i64, i64* %RBP.i127
  %7457 = sub i64 %7456, 484
  %7458 = load i32, i32* %EAX.i126
  %7459 = zext i32 %7458 to i64
  %7460 = load i64, i64* %PC.i125
  %7461 = add i64 %7460, 6
  store i64 %7461, i64* %PC.i125
  %7462 = inttoptr i64 %7457 to i32*
  store i32 %7458, i32* %7462
  store %struct.Memory* %loadMem_45069d, %struct.Memory** %MEMORY
  %loadMem_4506a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 33
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7465 to i64*
  %7466 = load i64, i64* %PC.i124
  %7467 = add i64 %7466, -430
  %7468 = load i64, i64* %PC.i124
  %7469 = add i64 %7468, 5
  store i64 %7469, i64* %PC.i124
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7467, i64* %7470, align 8
  store %struct.Memory* %loadMem_4506a3, %struct.Memory** %MEMORY
  br label %block_.L_4504f5

block_.L_4506a8:                                  ; preds = %block_.L_4504f5
  %loadMem_4506a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 33
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7473 to i64*
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7475 = getelementptr inbounds %struct.GPR, %struct.GPR* %7474, i32 0, i32 15
  %7476 = getelementptr inbounds %struct.Reg, %struct.Reg* %7475, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %7476 to i64*
  %7477 = load i64, i64* %RBP.i123
  %7478 = sub i64 %7477, 484
  %7479 = load i64, i64* %PC.i122
  %7480 = add i64 %7479, 10
  store i64 %7480, i64* %PC.i122
  %7481 = inttoptr i64 %7478 to i32*
  store i32 21, i32* %7481
  store %struct.Memory* %loadMem_4506a8, %struct.Memory** %MEMORY
  br label %block_.L_4506b2

block_.L_4506b2:                                  ; preds = %block_.L_45079f, %block_.L_4506a8
  %loadMem_4506b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7483 = getelementptr inbounds %struct.GPR, %struct.GPR* %7482, i32 0, i32 33
  %7484 = getelementptr inbounds %struct.Reg, %struct.Reg* %7483, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7484 to i64*
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7486 = getelementptr inbounds %struct.GPR, %struct.GPR* %7485, i32 0, i32 15
  %7487 = getelementptr inbounds %struct.Reg, %struct.Reg* %7486, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %7487 to i64*
  %7488 = load i64, i64* %RBP.i121
  %7489 = sub i64 %7488, 484
  %7490 = load i64, i64* %PC.i120
  %7491 = add i64 %7490, 10
  store i64 %7491, i64* %PC.i120
  %7492 = inttoptr i64 %7489 to i32*
  %7493 = load i32, i32* %7492
  %7494 = sub i32 %7493, 400
  %7495 = icmp ult i32 %7493, 400
  %7496 = zext i1 %7495 to i8
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7496, i8* %7497, align 1
  %7498 = and i32 %7494, 255
  %7499 = call i32 @llvm.ctpop.i32(i32 %7498)
  %7500 = trunc i32 %7499 to i8
  %7501 = and i8 %7500, 1
  %7502 = xor i8 %7501, 1
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7502, i8* %7503, align 1
  %7504 = xor i32 %7493, 400
  %7505 = xor i32 %7504, %7494
  %7506 = lshr i32 %7505, 4
  %7507 = trunc i32 %7506 to i8
  %7508 = and i8 %7507, 1
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7508, i8* %7509, align 1
  %7510 = icmp eq i32 %7494, 0
  %7511 = zext i1 %7510 to i8
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7511, i8* %7512, align 1
  %7513 = lshr i32 %7494, 31
  %7514 = trunc i32 %7513 to i8
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7514, i8* %7515, align 1
  %7516 = lshr i32 %7493, 31
  %7517 = xor i32 %7513, %7516
  %7518 = add i32 %7517, %7516
  %7519 = icmp eq i32 %7518, 2
  %7520 = zext i1 %7519 to i8
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7520, i8* %7521, align 1
  store %struct.Memory* %loadMem_4506b2, %struct.Memory** %MEMORY
  %loadMem_4506bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7523 = getelementptr inbounds %struct.GPR, %struct.GPR* %7522, i32 0, i32 33
  %7524 = getelementptr inbounds %struct.Reg, %struct.Reg* %7523, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7524 to i64*
  %7525 = load i64, i64* %PC.i119
  %7526 = add i64 %7525, 247
  %7527 = load i64, i64* %PC.i119
  %7528 = add i64 %7527, 6
  %7529 = load i64, i64* %PC.i119
  %7530 = add i64 %7529, 6
  store i64 %7530, i64* %PC.i119
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7532 = load i8, i8* %7531, align 1
  %7533 = icmp ne i8 %7532, 0
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7535 = load i8, i8* %7534, align 1
  %7536 = icmp ne i8 %7535, 0
  %7537 = xor i1 %7533, %7536
  %7538 = xor i1 %7537, true
  %7539 = zext i1 %7538 to i8
  store i8 %7539, i8* %BRANCH_TAKEN, align 1
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7541 = select i1 %7537, i64 %7528, i64 %7526
  store i64 %7541, i64* %7540, align 8
  store %struct.Memory* %loadMem_4506bc, %struct.Memory** %MEMORY
  %loadBr_4506bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4506bc = icmp eq i8 %loadBr_4506bc, 1
  br i1 %cmpBr_4506bc, label %block_.L_4507b3, label %block_4506c2

block_4506c2:                                     ; preds = %block_.L_4506b2
  %loadMem_4506c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 33
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7544 to i64*
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7546 = getelementptr inbounds %struct.GPR, %struct.GPR* %7545, i32 0, i32 1
  %7547 = getelementptr inbounds %struct.Reg, %struct.Reg* %7546, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %7547 to i64*
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7549 = getelementptr inbounds %struct.GPR, %struct.GPR* %7548, i32 0, i32 15
  %7550 = getelementptr inbounds %struct.Reg, %struct.Reg* %7549, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %7550 to i64*
  %7551 = load i64, i64* %RBP.i118
  %7552 = sub i64 %7551, 484
  %7553 = load i64, i64* %PC.i116
  %7554 = add i64 %7553, 7
  store i64 %7554, i64* %PC.i116
  %7555 = inttoptr i64 %7552 to i32*
  %7556 = load i32, i32* %7555
  %7557 = sext i32 %7556 to i64
  store i64 %7557, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_4506c2, %struct.Memory** %MEMORY
  %loadMem_4506c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7559 = getelementptr inbounds %struct.GPR, %struct.GPR* %7558, i32 0, i32 33
  %7560 = getelementptr inbounds %struct.Reg, %struct.Reg* %7559, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7560 to i64*
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 1
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %7563 to i64*
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7565 = getelementptr inbounds %struct.GPR, %struct.GPR* %7564, i32 0, i32 5
  %7566 = getelementptr inbounds %struct.Reg, %struct.Reg* %7565, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %7566 to i64*
  %7567 = load i64, i64* %RAX.i114
  %7568 = add i64 %7567, 12099168
  %7569 = load i64, i64* %PC.i113
  %7570 = add i64 %7569, 8
  store i64 %7570, i64* %PC.i113
  %7571 = inttoptr i64 %7568 to i8*
  %7572 = load i8, i8* %7571
  %7573 = zext i8 %7572 to i64
  store i64 %7573, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_4506c9, %struct.Memory** %MEMORY
  %loadMem_4506d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7575 = getelementptr inbounds %struct.GPR, %struct.GPR* %7574, i32 0, i32 33
  %7576 = getelementptr inbounds %struct.Reg, %struct.Reg* %7575, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7576 to i64*
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7578 = getelementptr inbounds %struct.GPR, %struct.GPR* %7577, i32 0, i32 5
  %7579 = getelementptr inbounds %struct.Reg, %struct.Reg* %7578, i32 0, i32 0
  %ECX.i111 = bitcast %union.anon* %7579 to i32*
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 15
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %7582 to i64*
  %7583 = load i64, i64* %RBP.i112
  %7584 = sub i64 %7583, 1196
  %7585 = load i32, i32* %ECX.i111
  %7586 = zext i32 %7585 to i64
  %7587 = load i64, i64* %PC.i110
  %7588 = add i64 %7587, 6
  store i64 %7588, i64* %PC.i110
  %7589 = inttoptr i64 %7584 to i32*
  store i32 %7585, i32* %7589
  store %struct.Memory* %loadMem_4506d1, %struct.Memory** %MEMORY
  %loadMem_4506d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7591 = getelementptr inbounds %struct.GPR, %struct.GPR* %7590, i32 0, i32 33
  %7592 = getelementptr inbounds %struct.Reg, %struct.Reg* %7591, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7592 to i64*
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 1
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %7595 to i64*
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7597 = getelementptr inbounds %struct.GPR, %struct.GPR* %7596, i32 0, i32 15
  %7598 = getelementptr inbounds %struct.Reg, %struct.Reg* %7597, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %7598 to i64*
  %7599 = load i64, i64* %RBP.i109
  %7600 = sub i64 %7599, 484
  %7601 = load i64, i64* %PC.i107
  %7602 = add i64 %7601, 7
  store i64 %7602, i64* %PC.i107
  %7603 = inttoptr i64 %7600 to i32*
  %7604 = load i32, i32* %7603
  %7605 = sext i32 %7604 to i64
  store i64 %7605, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_4506d7, %struct.Memory** %MEMORY
  %loadMem_4506de = load %struct.Memory*, %struct.Memory** %MEMORY
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7607 = getelementptr inbounds %struct.GPR, %struct.GPR* %7606, i32 0, i32 33
  %7608 = getelementptr inbounds %struct.Reg, %struct.Reg* %7607, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7608 to i64*
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 1
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %7611 to i64*
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 5
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %7614 to i64*
  %7615 = load i64, i64* %RAX.i105
  %7616 = add i64 %7615, 12099168
  %7617 = load i64, i64* %PC.i104
  %7618 = add i64 %7617, 8
  store i64 %7618, i64* %PC.i104
  %7619 = inttoptr i64 %7616 to i8*
  %7620 = load i8, i8* %7619
  %7621 = zext i8 %7620 to i64
  store i64 %7621, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_4506de, %struct.Memory** %MEMORY
  %loadMem_4506e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7623 = getelementptr inbounds %struct.GPR, %struct.GPR* %7622, i32 0, i32 33
  %7624 = getelementptr inbounds %struct.Reg, %struct.Reg* %7623, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7624 to i64*
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7626 = getelementptr inbounds %struct.GPR, %struct.GPR* %7625, i32 0, i32 5
  %7627 = getelementptr inbounds %struct.Reg, %struct.Reg* %7626, i32 0, i32 0
  %ECX.i103 = bitcast %union.anon* %7627 to i32*
  %7628 = load i32, i32* %ECX.i103
  %7629 = zext i32 %7628 to i64
  %7630 = load i64, i64* %PC.i102
  %7631 = add i64 %7630, 3
  store i64 %7631, i64* %PC.i102
  %7632 = sub i32 %7628, 3
  %7633 = icmp ult i32 %7628, 3
  %7634 = zext i1 %7633 to i8
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7634, i8* %7635, align 1
  %7636 = and i32 %7632, 255
  %7637 = call i32 @llvm.ctpop.i32(i32 %7636)
  %7638 = trunc i32 %7637 to i8
  %7639 = and i8 %7638, 1
  %7640 = xor i8 %7639, 1
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7640, i8* %7641, align 1
  %7642 = xor i64 3, %7629
  %7643 = trunc i64 %7642 to i32
  %7644 = xor i32 %7643, %7632
  %7645 = lshr i32 %7644, 4
  %7646 = trunc i32 %7645 to i8
  %7647 = and i8 %7646, 1
  %7648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7647, i8* %7648, align 1
  %7649 = icmp eq i32 %7632, 0
  %7650 = zext i1 %7649 to i8
  %7651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7650, i8* %7651, align 1
  %7652 = lshr i32 %7632, 31
  %7653 = trunc i32 %7652 to i8
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7653, i8* %7654, align 1
  %7655 = lshr i32 %7628, 31
  %7656 = xor i32 %7652, %7655
  %7657 = add i32 %7656, %7655
  %7658 = icmp eq i32 %7657, 2
  %7659 = zext i1 %7658 to i8
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7659, i8* %7660, align 1
  store %struct.Memory* %loadMem_4506e6, %struct.Memory** %MEMORY
  %loadMem_4506e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 33
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7663 to i64*
  %7664 = load i64, i64* %PC.i101
  %7665 = add i64 %7664, 11
  %7666 = load i64, i64* %PC.i101
  %7667 = add i64 %7666, 6
  %7668 = load i64, i64* %PC.i101
  %7669 = add i64 %7668, 6
  store i64 %7669, i64* %PC.i101
  %7670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7671 = load i8, i8* %7670, align 1
  %7672 = icmp eq i8 %7671, 0
  %7673 = zext i1 %7672 to i8
  store i8 %7673, i8* %BRANCH_TAKEN, align 1
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7675 = select i1 %7672, i64 %7665, i64 %7667
  store i64 %7675, i64* %7674, align 8
  store %struct.Memory* %loadMem_4506e9, %struct.Memory** %MEMORY
  %loadBr_4506e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4506e9 = icmp eq i8 %loadBr_4506e9, 1
  br i1 %cmpBr_4506e9, label %block_.L_4506f4, label %block_4506ef

block_4506ef:                                     ; preds = %block_4506c2
  %loadMem_4506ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7677 = getelementptr inbounds %struct.GPR, %struct.GPR* %7676, i32 0, i32 33
  %7678 = getelementptr inbounds %struct.Reg, %struct.Reg* %7677, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %7678 to i64*
  %7679 = load i64, i64* %PC.i100
  %7680 = add i64 %7679, 176
  %7681 = load i64, i64* %PC.i100
  %7682 = add i64 %7681, 5
  store i64 %7682, i64* %PC.i100
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7680, i64* %7683, align 8
  store %struct.Memory* %loadMem_4506ef, %struct.Memory** %MEMORY
  br label %block_.L_45079f

block_.L_4506f4:                                  ; preds = %block_4506c2
  %loadMem_4506f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 33
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %7686 to i64*
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7688 = getelementptr inbounds %struct.GPR, %struct.GPR* %7687, i32 0, i32 1
  %7689 = getelementptr inbounds %struct.Reg, %struct.Reg* %7688, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %7689 to i64*
  %7690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7691 = getelementptr inbounds %struct.GPR, %struct.GPR* %7690, i32 0, i32 15
  %7692 = getelementptr inbounds %struct.Reg, %struct.Reg* %7691, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %7692 to i64*
  %7693 = load i64, i64* %RBP.i99
  %7694 = sub i64 %7693, 484
  %7695 = load i64, i64* %PC.i97
  %7696 = add i64 %7695, 7
  store i64 %7696, i64* %PC.i97
  %7697 = inttoptr i64 %7694 to i32*
  %7698 = load i32, i32* %7697
  %7699 = sext i32 %7698 to i64
  store i64 %7699, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_4506f4, %struct.Memory** %MEMORY
  %loadMem_4506fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7701 = getelementptr inbounds %struct.GPR, %struct.GPR* %7700, i32 0, i32 33
  %7702 = getelementptr inbounds %struct.Reg, %struct.Reg* %7701, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7702 to i64*
  %7703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7704 = getelementptr inbounds %struct.GPR, %struct.GPR* %7703, i32 0, i32 1
  %7705 = getelementptr inbounds %struct.Reg, %struct.Reg* %7704, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %7705 to i64*
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7707 = getelementptr inbounds %struct.GPR, %struct.GPR* %7706, i32 0, i32 15
  %7708 = getelementptr inbounds %struct.Reg, %struct.Reg* %7707, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %7708 to i64*
  %7709 = load i64, i64* %RBP.i96
  %7710 = load i64, i64* %RAX.i95
  %7711 = add i64 %7709, -480
  %7712 = add i64 %7711, %7710
  %7713 = load i64, i64* %PC.i94
  %7714 = add i64 %7713, 8
  store i64 %7714, i64* %PC.i94
  %7715 = inttoptr i64 %7712 to i8*
  %7716 = load i8, i8* %7715
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7717, align 1
  %7718 = zext i8 %7716 to i32
  %7719 = call i32 @llvm.ctpop.i32(i32 %7718)
  %7720 = trunc i32 %7719 to i8
  %7721 = and i8 %7720, 1
  %7722 = xor i8 %7721, 1
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7722, i8* %7723, align 1
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7724, align 1
  %7725 = icmp eq i8 %7716, 0
  %7726 = zext i1 %7725 to i8
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7726, i8* %7727, align 1
  %7728 = lshr i8 %7716, 7
  %7729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7728, i8* %7729, align 1
  %7730 = lshr i8 %7716, 7
  %7731 = xor i8 %7728, %7730
  %7732 = add i8 %7731, %7730
  %7733 = icmp eq i8 %7732, 2
  %7734 = zext i1 %7733 to i8
  %7735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7734, i8* %7735, align 1
  store %struct.Memory* %loadMem_4506fb, %struct.Memory** %MEMORY
  %loadMem_450703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7737 = getelementptr inbounds %struct.GPR, %struct.GPR* %7736, i32 0, i32 33
  %7738 = getelementptr inbounds %struct.Reg, %struct.Reg* %7737, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7738 to i64*
  %7739 = load i64, i64* %PC.i93
  %7740 = add i64 %7739, 21
  %7741 = load i64, i64* %PC.i93
  %7742 = add i64 %7741, 6
  %7743 = load i64, i64* %PC.i93
  %7744 = add i64 %7743, 6
  store i64 %7744, i64* %PC.i93
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7746 = load i8, i8* %7745, align 1
  %7747 = icmp eq i8 %7746, 0
  %7748 = zext i1 %7747 to i8
  store i8 %7748, i8* %BRANCH_TAKEN, align 1
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7750 = select i1 %7747, i64 %7740, i64 %7742
  store i64 %7750, i64* %7749, align 8
  store %struct.Memory* %loadMem_450703, %struct.Memory** %MEMORY
  %loadBr_450703 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450703 = icmp eq i8 %loadBr_450703, 1
  br i1 %cmpBr_450703, label %block_.L_450718, label %block_450709

block_450709:                                     ; preds = %block_.L_4506f4
  %loadMem_450709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7752 = getelementptr inbounds %struct.GPR, %struct.GPR* %7751, i32 0, i32 33
  %7753 = getelementptr inbounds %struct.Reg, %struct.Reg* %7752, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7753 to i64*
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7755 = getelementptr inbounds %struct.GPR, %struct.GPR* %7754, i32 0, i32 15
  %7756 = getelementptr inbounds %struct.Reg, %struct.Reg* %7755, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %7756 to i64*
  %7757 = load i64, i64* %RBP.i92
  %7758 = sub i64 %7757, 1196
  %7759 = load i64, i64* %PC.i91
  %7760 = add i64 %7759, 10
  store i64 %7760, i64* %PC.i91
  %7761 = inttoptr i64 %7758 to i32*
  store i32 3, i32* %7761
  store %struct.Memory* %loadMem_450709, %struct.Memory** %MEMORY
  %loadMem_450713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7763 = getelementptr inbounds %struct.GPR, %struct.GPR* %7762, i32 0, i32 33
  %7764 = getelementptr inbounds %struct.Reg, %struct.Reg* %7763, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7764 to i64*
  %7765 = load i64, i64* %PC.i90
  %7766 = add i64 %7765, 93
  %7767 = load i64, i64* %PC.i90
  %7768 = add i64 %7767, 5
  store i64 %7768, i64* %PC.i90
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7766, i64* %7769, align 8
  store %struct.Memory* %loadMem_450713, %struct.Memory** %MEMORY
  br label %block_.L_450770

block_.L_450718:                                  ; preds = %block_.L_4506f4
  %loadMem_450718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 33
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7772 to i64*
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7774 = getelementptr inbounds %struct.GPR, %struct.GPR* %7773, i32 0, i32 1
  %7775 = getelementptr inbounds %struct.Reg, %struct.Reg* %7774, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %7775 to i64*
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 15
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7778 to i64*
  %7779 = load i64, i64* %RBP.i89
  %7780 = sub i64 %7779, 484
  %7781 = load i64, i64* %PC.i87
  %7782 = add i64 %7781, 7
  store i64 %7782, i64* %PC.i87
  %7783 = inttoptr i64 %7780 to i32*
  %7784 = load i32, i32* %7783
  %7785 = sext i32 %7784 to i64
  store i64 %7785, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_450718, %struct.Memory** %MEMORY
  %loadMem_45071f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7787 = getelementptr inbounds %struct.GPR, %struct.GPR* %7786, i32 0, i32 33
  %7788 = getelementptr inbounds %struct.Reg, %struct.Reg* %7787, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7788 to i64*
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7790 = getelementptr inbounds %struct.GPR, %struct.GPR* %7789, i32 0, i32 1
  %7791 = getelementptr inbounds %struct.Reg, %struct.Reg* %7790, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %7791 to i64*
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7793 = getelementptr inbounds %struct.GPR, %struct.GPR* %7792, i32 0, i32 5
  %7794 = getelementptr inbounds %struct.Reg, %struct.Reg* %7793, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %7794 to i64*
  %7795 = load i64, i64* %RAX.i85
  %7796 = add i64 %7795, 12099168
  %7797 = load i64, i64* %PC.i84
  %7798 = add i64 %7797, 8
  store i64 %7798, i64* %PC.i84
  %7799 = inttoptr i64 %7796 to i8*
  %7800 = load i8, i8* %7799
  %7801 = zext i8 %7800 to i64
  store i64 %7801, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_45071f, %struct.Memory** %MEMORY
  %loadMem_450727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7803 = getelementptr inbounds %struct.GPR, %struct.GPR* %7802, i32 0, i32 33
  %7804 = getelementptr inbounds %struct.Reg, %struct.Reg* %7803, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %7804 to i64*
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7806 = getelementptr inbounds %struct.GPR, %struct.GPR* %7805, i32 0, i32 5
  %7807 = getelementptr inbounds %struct.Reg, %struct.Reg* %7806, i32 0, i32 0
  %ECX.i83 = bitcast %union.anon* %7807 to i32*
  %7808 = load i32, i32* %ECX.i83
  %7809 = zext i32 %7808 to i64
  %7810 = load i64, i64* %PC.i82
  %7811 = add i64 %7810, 3
  store i64 %7811, i64* %PC.i82
  %7812 = sub i32 %7808, 1
  %7813 = icmp ult i32 %7808, 1
  %7814 = zext i1 %7813 to i8
  %7815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7814, i8* %7815, align 1
  %7816 = and i32 %7812, 255
  %7817 = call i32 @llvm.ctpop.i32(i32 %7816)
  %7818 = trunc i32 %7817 to i8
  %7819 = and i8 %7818, 1
  %7820 = xor i8 %7819, 1
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7820, i8* %7821, align 1
  %7822 = xor i64 1, %7809
  %7823 = trunc i64 %7822 to i32
  %7824 = xor i32 %7823, %7812
  %7825 = lshr i32 %7824, 4
  %7826 = trunc i32 %7825 to i8
  %7827 = and i8 %7826, 1
  %7828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7827, i8* %7828, align 1
  %7829 = icmp eq i32 %7812, 0
  %7830 = zext i1 %7829 to i8
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7830, i8* %7831, align 1
  %7832 = lshr i32 %7812, 31
  %7833 = trunc i32 %7832 to i8
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7833, i8* %7834, align 1
  %7835 = lshr i32 %7808, 31
  %7836 = xor i32 %7832, %7835
  %7837 = add i32 %7836, %7835
  %7838 = icmp eq i32 %7837, 2
  %7839 = zext i1 %7838 to i8
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7839, i8* %7840, align 1
  store %struct.Memory* %loadMem_450727, %struct.Memory** %MEMORY
  %loadMem_45072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7842 = getelementptr inbounds %struct.GPR, %struct.GPR* %7841, i32 0, i32 33
  %7843 = getelementptr inbounds %struct.Reg, %struct.Reg* %7842, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7843 to i64*
  %7844 = load i64, i64* %PC.i81
  %7845 = add i64 %7844, 30
  %7846 = load i64, i64* %PC.i81
  %7847 = add i64 %7846, 6
  %7848 = load i64, i64* %PC.i81
  %7849 = add i64 %7848, 6
  store i64 %7849, i64* %PC.i81
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7851 = load i8, i8* %7850, align 1
  store i8 %7851, i8* %BRANCH_TAKEN, align 1
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7853 = icmp ne i8 %7851, 0
  %7854 = select i1 %7853, i64 %7845, i64 %7847
  store i64 %7854, i64* %7852, align 8
  store %struct.Memory* %loadMem_45072a, %struct.Memory** %MEMORY
  %loadBr_45072a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45072a = icmp eq i8 %loadBr_45072a, 1
  br i1 %cmpBr_45072a, label %block_.L_450748, label %block_450730

block_450730:                                     ; preds = %block_.L_450718
  %loadMem_450730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7856 = getelementptr inbounds %struct.GPR, %struct.GPR* %7855, i32 0, i32 33
  %7857 = getelementptr inbounds %struct.Reg, %struct.Reg* %7856, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7857 to i64*
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7859 = getelementptr inbounds %struct.GPR, %struct.GPR* %7858, i32 0, i32 1
  %7860 = getelementptr inbounds %struct.Reg, %struct.Reg* %7859, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %7860 to i64*
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7862 = getelementptr inbounds %struct.GPR, %struct.GPR* %7861, i32 0, i32 15
  %7863 = getelementptr inbounds %struct.Reg, %struct.Reg* %7862, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %7863 to i64*
  %7864 = load i64, i64* %RBP.i80
  %7865 = sub i64 %7864, 484
  %7866 = load i64, i64* %PC.i78
  %7867 = add i64 %7866, 7
  store i64 %7867, i64* %PC.i78
  %7868 = inttoptr i64 %7865 to i32*
  %7869 = load i32, i32* %7868
  %7870 = sext i32 %7869 to i64
  store i64 %7870, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_450730, %struct.Memory** %MEMORY
  %loadMem_450737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7872 = getelementptr inbounds %struct.GPR, %struct.GPR* %7871, i32 0, i32 33
  %7873 = getelementptr inbounds %struct.Reg, %struct.Reg* %7872, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7873 to i64*
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7875 = getelementptr inbounds %struct.GPR, %struct.GPR* %7874, i32 0, i32 1
  %7876 = getelementptr inbounds %struct.Reg, %struct.Reg* %7875, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %7876 to i64*
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7878 = getelementptr inbounds %struct.GPR, %struct.GPR* %7877, i32 0, i32 5
  %7879 = getelementptr inbounds %struct.Reg, %struct.Reg* %7878, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %7879 to i64*
  %7880 = load i64, i64* %RAX.i76
  %7881 = add i64 %7880, 12099168
  %7882 = load i64, i64* %PC.i75
  %7883 = add i64 %7882, 8
  store i64 %7883, i64* %PC.i75
  %7884 = inttoptr i64 %7881 to i8*
  %7885 = load i8, i8* %7884
  %7886 = zext i8 %7885 to i64
  store i64 %7886, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_450737, %struct.Memory** %MEMORY
  %loadMem_45073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7888 = getelementptr inbounds %struct.GPR, %struct.GPR* %7887, i32 0, i32 33
  %7889 = getelementptr inbounds %struct.Reg, %struct.Reg* %7888, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7889 to i64*
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7891 = getelementptr inbounds %struct.GPR, %struct.GPR* %7890, i32 0, i32 5
  %7892 = getelementptr inbounds %struct.Reg, %struct.Reg* %7891, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7892 to i32*
  %7893 = load i32, i32* %ECX.i
  %7894 = zext i32 %7893 to i64
  %7895 = load i64, i64* %PC.i74
  %7896 = add i64 %7895, 3
  store i64 %7896, i64* %PC.i74
  %7897 = sub i32 %7893, 2
  %7898 = icmp ult i32 %7893, 2
  %7899 = zext i1 %7898 to i8
  %7900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7899, i8* %7900, align 1
  %7901 = and i32 %7897, 255
  %7902 = call i32 @llvm.ctpop.i32(i32 %7901)
  %7903 = trunc i32 %7902 to i8
  %7904 = and i8 %7903, 1
  %7905 = xor i8 %7904, 1
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7905, i8* %7906, align 1
  %7907 = xor i64 2, %7894
  %7908 = trunc i64 %7907 to i32
  %7909 = xor i32 %7908, %7897
  %7910 = lshr i32 %7909, 4
  %7911 = trunc i32 %7910 to i8
  %7912 = and i8 %7911, 1
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7912, i8* %7913, align 1
  %7914 = icmp eq i32 %7897, 0
  %7915 = zext i1 %7914 to i8
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7915, i8* %7916, align 1
  %7917 = lshr i32 %7897, 31
  %7918 = trunc i32 %7917 to i8
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7918, i8* %7919, align 1
  %7920 = lshr i32 %7893, 31
  %7921 = xor i32 %7917, %7920
  %7922 = add i32 %7921, %7920
  %7923 = icmp eq i32 %7922, 2
  %7924 = zext i1 %7923 to i8
  %7925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7924, i8* %7925, align 1
  store %struct.Memory* %loadMem_45073f, %struct.Memory** %MEMORY
  %loadMem_450742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7927 = getelementptr inbounds %struct.GPR, %struct.GPR* %7926, i32 0, i32 33
  %7928 = getelementptr inbounds %struct.Reg, %struct.Reg* %7927, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7928 to i64*
  %7929 = load i64, i64* %PC.i73
  %7930 = add i64 %7929, 41
  %7931 = load i64, i64* %PC.i73
  %7932 = add i64 %7931, 6
  %7933 = load i64, i64* %PC.i73
  %7934 = add i64 %7933, 6
  store i64 %7934, i64* %PC.i73
  %7935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7936 = load i8, i8* %7935, align 1
  %7937 = icmp eq i8 %7936, 0
  %7938 = zext i1 %7937 to i8
  store i8 %7938, i8* %BRANCH_TAKEN, align 1
  %7939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7940 = select i1 %7937, i64 %7930, i64 %7932
  store i64 %7940, i64* %7939, align 8
  store %struct.Memory* %loadMem_450742, %struct.Memory** %MEMORY
  %loadBr_450742 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450742 = icmp eq i8 %loadBr_450742, 1
  br i1 %cmpBr_450742, label %block_.L_45076b, label %block_.L_450748

block_.L_450748:                                  ; preds = %block_450730, %block_.L_450718
  %loadMem_450748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7942 = getelementptr inbounds %struct.GPR, %struct.GPR* %7941, i32 0, i32 33
  %7943 = getelementptr inbounds %struct.Reg, %struct.Reg* %7942, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7943 to i64*
  %7944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7945 = getelementptr inbounds %struct.GPR, %struct.GPR* %7944, i32 0, i32 11
  %7946 = getelementptr inbounds %struct.Reg, %struct.Reg* %7945, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %7946 to i64*
  %7947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7948 = getelementptr inbounds %struct.GPR, %struct.GPR* %7947, i32 0, i32 15
  %7949 = getelementptr inbounds %struct.Reg, %struct.Reg* %7948, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %7949 to i64*
  %7950 = load i64, i64* %RBP.i72
  %7951 = sub i64 %7950, 484
  %7952 = load i64, i64* %PC.i70
  %7953 = add i64 %7952, 6
  store i64 %7953, i64* %PC.i70
  %7954 = inttoptr i64 %7951 to i32*
  %7955 = load i32, i32* %7954
  %7956 = zext i32 %7955 to i64
  store i64 %7956, i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_450748, %struct.Memory** %MEMORY
  %loadMem1_45074e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7958 = getelementptr inbounds %struct.GPR, %struct.GPR* %7957, i32 0, i32 33
  %7959 = getelementptr inbounds %struct.Reg, %struct.Reg* %7958, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7959 to i64*
  %7960 = load i64, i64* %PC.i69
  %7961 = add i64 %7960, -266190
  %7962 = load i64, i64* %PC.i69
  %7963 = add i64 %7962, 5
  %7964 = load i64, i64* %PC.i69
  %7965 = add i64 %7964, 5
  store i64 %7965, i64* %PC.i69
  %7966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7967 = load i64, i64* %7966, align 8
  %7968 = add i64 %7967, -8
  %7969 = inttoptr i64 %7968 to i64*
  store i64 %7963, i64* %7969
  store i64 %7968, i64* %7966, align 8
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7961, i64* %7970, align 8
  store %struct.Memory* %loadMem1_45074e, %struct.Memory** %MEMORY
  %loadMem2_45074e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45074e = load i64, i64* %3
  %call2_45074e = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_45074e, %struct.Memory* %loadMem2_45074e)
  store %struct.Memory* %call2_45074e, %struct.Memory** %MEMORY
  %loadMem_450753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7972 = getelementptr inbounds %struct.GPR, %struct.GPR* %7971, i32 0, i32 33
  %7973 = getelementptr inbounds %struct.Reg, %struct.Reg* %7972, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7973 to i64*
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7975 = getelementptr inbounds %struct.GPR, %struct.GPR* %7974, i32 0, i32 1
  %7976 = getelementptr inbounds %struct.Reg, %struct.Reg* %7975, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %7976 to i32*
  %7977 = load i32, i32* %EAX.i68
  %7978 = zext i32 %7977 to i64
  %7979 = load i64, i64* %PC.i67
  %7980 = add i64 %7979, 3
  store i64 %7980, i64* %PC.i67
  %7981 = sub i32 %7977, 4
  %7982 = icmp ult i32 %7977, 4
  %7983 = zext i1 %7982 to i8
  %7984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7983, i8* %7984, align 1
  %7985 = and i32 %7981, 255
  %7986 = call i32 @llvm.ctpop.i32(i32 %7985)
  %7987 = trunc i32 %7986 to i8
  %7988 = and i8 %7987, 1
  %7989 = xor i8 %7988, 1
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7989, i8* %7990, align 1
  %7991 = xor i64 4, %7978
  %7992 = trunc i64 %7991 to i32
  %7993 = xor i32 %7992, %7981
  %7994 = lshr i32 %7993, 4
  %7995 = trunc i32 %7994 to i8
  %7996 = and i8 %7995, 1
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7996, i8* %7997, align 1
  %7998 = icmp eq i32 %7981, 0
  %7999 = zext i1 %7998 to i8
  %8000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7999, i8* %8000, align 1
  %8001 = lshr i32 %7981, 31
  %8002 = trunc i32 %8001 to i8
  %8003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8002, i8* %8003, align 1
  %8004 = lshr i32 %7977, 31
  %8005 = xor i32 %8001, %8004
  %8006 = add i32 %8005, %8004
  %8007 = icmp eq i32 %8006, 2
  %8008 = zext i1 %8007 to i8
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8008, i8* %8009, align 1
  store %struct.Memory* %loadMem_450753, %struct.Memory** %MEMORY
  %loadMem_450756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 33
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8012 to i64*
  %8013 = load i64, i64* %PC.i66
  %8014 = add i64 %8013, 21
  %8015 = load i64, i64* %PC.i66
  %8016 = add i64 %8015, 6
  %8017 = load i64, i64* %PC.i66
  %8018 = add i64 %8017, 6
  store i64 %8018, i64* %PC.i66
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8020 = load i8, i8* %8019, align 1
  %8021 = icmp ne i8 %8020, 0
  %8022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8023 = load i8, i8* %8022, align 1
  %8024 = icmp ne i8 %8023, 0
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8026 = load i8, i8* %8025, align 1
  %8027 = icmp ne i8 %8026, 0
  %8028 = xor i1 %8024, %8027
  %8029 = or i1 %8021, %8028
  %8030 = zext i1 %8029 to i8
  store i8 %8030, i8* %BRANCH_TAKEN, align 1
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8032 = select i1 %8029, i64 %8014, i64 %8016
  store i64 %8032, i64* %8031, align 8
  store %struct.Memory* %loadMem_450756, %struct.Memory** %MEMORY
  %loadBr_450756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450756 = icmp eq i8 %loadBr_450756, 1
  br i1 %cmpBr_450756, label %block_.L_45076b, label %block_45075c

block_45075c:                                     ; preds = %block_.L_450748
  %loadMem_45075c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8034 = getelementptr inbounds %struct.GPR, %struct.GPR* %8033, i32 0, i32 33
  %8035 = getelementptr inbounds %struct.Reg, %struct.Reg* %8034, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8035 to i64*
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8037 = getelementptr inbounds %struct.GPR, %struct.GPR* %8036, i32 0, i32 1
  %8038 = getelementptr inbounds %struct.Reg, %struct.Reg* %8037, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %8038 to i64*
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 15
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %8041 to i64*
  %8042 = load i64, i64* %RBP.i65
  %8043 = sub i64 %8042, 1196
  %8044 = load i64, i64* %PC.i63
  %8045 = add i64 %8044, 6
  store i64 %8045, i64* %PC.i63
  %8046 = inttoptr i64 %8043 to i32*
  %8047 = load i32, i32* %8046
  %8048 = zext i32 %8047 to i64
  store i64 %8048, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_45075c, %struct.Memory** %MEMORY
  %loadMem_450762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8050 = getelementptr inbounds %struct.GPR, %struct.GPR* %8049, i32 0, i32 33
  %8051 = getelementptr inbounds %struct.Reg, %struct.Reg* %8050, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8051 to i64*
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8053 = getelementptr inbounds %struct.GPR, %struct.GPR* %8052, i32 0, i32 1
  %8054 = getelementptr inbounds %struct.Reg, %struct.Reg* %8053, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %8054 to i64*
  %8055 = load i64, i64* %RAX.i62
  %8056 = load i64, i64* %PC.i61
  %8057 = add i64 %8056, 3
  store i64 %8057, i64* %PC.i61
  %8058 = or i64 4, %8055
  %8059 = trunc i64 %8058 to i32
  %8060 = and i64 %8058, 4294967295
  store i64 %8060, i64* %RAX.i62, align 8
  %8061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8061, align 1
  %8062 = and i32 %8059, 255
  %8063 = call i32 @llvm.ctpop.i32(i32 %8062)
  %8064 = trunc i32 %8063 to i8
  %8065 = and i8 %8064, 1
  %8066 = xor i8 %8065, 1
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8066, i8* %8067, align 1
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8068, align 1
  %8069 = lshr i32 %8059, 31
  %8070 = trunc i32 %8069 to i8
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8070, i8* %8071, align 1
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8072, align 1
  %8073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8073, align 1
  store %struct.Memory* %loadMem_450762, %struct.Memory** %MEMORY
  %loadMem_450765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8075 = getelementptr inbounds %struct.GPR, %struct.GPR* %8074, i32 0, i32 33
  %8076 = getelementptr inbounds %struct.Reg, %struct.Reg* %8075, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8076 to i64*
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8078 = getelementptr inbounds %struct.GPR, %struct.GPR* %8077, i32 0, i32 1
  %8079 = getelementptr inbounds %struct.Reg, %struct.Reg* %8078, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %8079 to i32*
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8081 = getelementptr inbounds %struct.GPR, %struct.GPR* %8080, i32 0, i32 15
  %8082 = getelementptr inbounds %struct.Reg, %struct.Reg* %8081, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %8082 to i64*
  %8083 = load i64, i64* %RBP.i60
  %8084 = sub i64 %8083, 1196
  %8085 = load i32, i32* %EAX.i59
  %8086 = zext i32 %8085 to i64
  %8087 = load i64, i64* %PC.i58
  %8088 = add i64 %8087, 6
  store i64 %8088, i64* %PC.i58
  %8089 = inttoptr i64 %8084 to i32*
  store i32 %8085, i32* %8089
  store %struct.Memory* %loadMem_450765, %struct.Memory** %MEMORY
  br label %block_.L_45076b

block_.L_45076b:                                  ; preds = %block_45075c, %block_.L_450748, %block_450730
  %loadMem_45076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8091 = getelementptr inbounds %struct.GPR, %struct.GPR* %8090, i32 0, i32 33
  %8092 = getelementptr inbounds %struct.Reg, %struct.Reg* %8091, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %8092 to i64*
  %8093 = load i64, i64* %PC.i57
  %8094 = add i64 %8093, 5
  %8095 = load i64, i64* %PC.i57
  %8096 = add i64 %8095, 5
  store i64 %8096, i64* %PC.i57
  %8097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8094, i64* %8097, align 8
  store %struct.Memory* %loadMem_45076b, %struct.Memory** %MEMORY
  br label %block_.L_450770

block_.L_450770:                                  ; preds = %block_.L_45076b, %block_450709
  %loadMem_450770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8099 = getelementptr inbounds %struct.GPR, %struct.GPR* %8098, i32 0, i32 33
  %8100 = getelementptr inbounds %struct.Reg, %struct.Reg* %8099, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8100 to i64*
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 1
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %8103 to i64*
  %8104 = load i64, i64* %PC.i55
  %8105 = add i64 %8104, 10
  store i64 %8105, i64* %PC.i55
  store i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_450770, %struct.Memory** %MEMORY
  %loadMem_45077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 33
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8108 to i64*
  %8109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8110 = getelementptr inbounds %struct.GPR, %struct.GPR* %8109, i32 0, i32 5
  %8111 = getelementptr inbounds %struct.Reg, %struct.Reg* %8110, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8111 to i64*
  %8112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8113 = getelementptr inbounds %struct.GPR, %struct.GPR* %8112, i32 0, i32 15
  %8114 = getelementptr inbounds %struct.Reg, %struct.Reg* %8113, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %8114 to i64*
  %8115 = load i64, i64* %RBP.i54
  %8116 = sub i64 %8115, 1196
  %8117 = load i64, i64* %PC.i53
  %8118 = add i64 %8117, 6
  store i64 %8118, i64* %PC.i53
  %8119 = inttoptr i64 %8116 to i32*
  %8120 = load i32, i32* %8119
  %8121 = zext i32 %8120 to i64
  store i64 %8121, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_45077a, %struct.Memory** %MEMORY
  %loadMem_450780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8123 = getelementptr inbounds %struct.GPR, %struct.GPR* %8122, i32 0, i32 33
  %8124 = getelementptr inbounds %struct.Reg, %struct.Reg* %8123, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %8124 to i64*
  %8125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8126 = getelementptr inbounds %struct.GPR, %struct.GPR* %8125, i32 0, i32 5
  %8127 = getelementptr inbounds %struct.Reg, %struct.Reg* %8126, i32 0, i32 0
  %8128 = bitcast %union.anon* %8127 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8128, i32 0, i32 0
  %8129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8130 = getelementptr inbounds %struct.GPR, %struct.GPR* %8129, i32 0, i32 7
  %8131 = getelementptr inbounds %struct.Reg, %struct.Reg* %8130, i32 0, i32 0
  %8132 = bitcast %union.anon* %8131 to %struct.anon.2*
  %DL.i52 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8132, i32 0, i32 0
  %8133 = load i8, i8* %CL.i
  %8134 = zext i8 %8133 to i64
  %8135 = load i64, i64* %PC.i51
  %8136 = add i64 %8135, 2
  store i64 %8136, i64* %PC.i51
  store i8 %8133, i8* %DL.i52, align 1
  store %struct.Memory* %loadMem_450780, %struct.Memory** %MEMORY
  %loadMem_450782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8138 = getelementptr inbounds %struct.GPR, %struct.GPR* %8137, i32 0, i32 33
  %8139 = getelementptr inbounds %struct.Reg, %struct.Reg* %8138, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %8139 to i64*
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8141 = getelementptr inbounds %struct.GPR, %struct.GPR* %8140, i32 0, i32 9
  %8142 = getelementptr inbounds %struct.Reg, %struct.Reg* %8141, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %8142 to i64*
  %8143 = load i64, i64* %PC.i49
  %8144 = add i64 %8143, 8
  store i64 %8144, i64* %PC.i49
  %8145 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %8146 = sext i32 %8145 to i64
  store i64 %8146, i64* %RSI.i50, align 8
  store %struct.Memory* %loadMem_450782, %struct.Memory** %MEMORY
  %loadMem_45078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8148 = getelementptr inbounds %struct.GPR, %struct.GPR* %8147, i32 0, i32 33
  %8149 = getelementptr inbounds %struct.Reg, %struct.Reg* %8148, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8149 to i64*
  %8150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8151 = getelementptr inbounds %struct.GPR, %struct.GPR* %8150, i32 0, i32 9
  %8152 = getelementptr inbounds %struct.Reg, %struct.Reg* %8151, i32 0, i32 0
  %RSI.i48 = bitcast %union.anon* %8152 to i64*
  %8153 = load i64, i64* %RSI.i48
  %8154 = load i64, i64* %PC.i47
  %8155 = add i64 %8154, 7
  store i64 %8155, i64* %PC.i47
  %8156 = sext i64 %8153 to i128
  %8157 = and i128 %8156, -18446744073709551616
  %8158 = zext i64 %8153 to i128
  %8159 = or i128 %8157, %8158
  %8160 = mul i128 444, %8159
  %8161 = trunc i128 %8160 to i64
  store i64 %8161, i64* %RSI.i48, align 8
  %8162 = sext i64 %8161 to i128
  %8163 = icmp ne i128 %8162, %8160
  %8164 = zext i1 %8163 to i8
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8164, i8* %8165, align 1
  %8166 = trunc i128 %8160 to i32
  %8167 = and i32 %8166, 255
  %8168 = call i32 @llvm.ctpop.i32(i32 %8167)
  %8169 = trunc i32 %8168 to i8
  %8170 = and i8 %8169, 1
  %8171 = xor i8 %8170, 1
  %8172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8171, i8* %8172, align 1
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8173, align 1
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8174, align 1
  %8175 = lshr i64 %8161, 63
  %8176 = trunc i64 %8175 to i8
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8176, i8* %8177, align 1
  %8178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8164, i8* %8178, align 1
  store %struct.Memory* %loadMem_45078a, %struct.Memory** %MEMORY
  %loadMem_450791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8180 = getelementptr inbounds %struct.GPR, %struct.GPR* %8179, i32 0, i32 33
  %8181 = getelementptr inbounds %struct.Reg, %struct.Reg* %8180, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8181 to i64*
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8183 = getelementptr inbounds %struct.GPR, %struct.GPR* %8182, i32 0, i32 1
  %8184 = getelementptr inbounds %struct.Reg, %struct.Reg* %8183, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %8184 to i64*
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8186 = getelementptr inbounds %struct.GPR, %struct.GPR* %8185, i32 0, i32 9
  %8187 = getelementptr inbounds %struct.Reg, %struct.Reg* %8186, i32 0, i32 0
  %RSI.i46 = bitcast %union.anon* %8187 to i64*
  %8188 = load i64, i64* %RAX.i45
  %8189 = load i64, i64* %RSI.i46
  %8190 = load i64, i64* %PC.i44
  %8191 = add i64 %8190, 3
  store i64 %8191, i64* %PC.i44
  %8192 = add i64 %8189, %8188
  store i64 %8192, i64* %RAX.i45, align 8
  %8193 = icmp ult i64 %8192, %8188
  %8194 = icmp ult i64 %8192, %8189
  %8195 = or i1 %8193, %8194
  %8196 = zext i1 %8195 to i8
  %8197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8196, i8* %8197, align 1
  %8198 = trunc i64 %8192 to i32
  %8199 = and i32 %8198, 255
  %8200 = call i32 @llvm.ctpop.i32(i32 %8199)
  %8201 = trunc i32 %8200 to i8
  %8202 = and i8 %8201, 1
  %8203 = xor i8 %8202, 1
  %8204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8203, i8* %8204, align 1
  %8205 = xor i64 %8189, %8188
  %8206 = xor i64 %8205, %8192
  %8207 = lshr i64 %8206, 4
  %8208 = trunc i64 %8207 to i8
  %8209 = and i8 %8208, 1
  %8210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8209, i8* %8210, align 1
  %8211 = icmp eq i64 %8192, 0
  %8212 = zext i1 %8211 to i8
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8212, i8* %8213, align 1
  %8214 = lshr i64 %8192, 63
  %8215 = trunc i64 %8214 to i8
  %8216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8215, i8* %8216, align 1
  %8217 = lshr i64 %8188, 63
  %8218 = lshr i64 %8189, 63
  %8219 = xor i64 %8214, %8217
  %8220 = xor i64 %8214, %8218
  %8221 = add i64 %8219, %8220
  %8222 = icmp eq i64 %8221, 2
  %8223 = zext i1 %8222 to i8
  %8224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8223, i8* %8224, align 1
  store %struct.Memory* %loadMem_450791, %struct.Memory** %MEMORY
  %loadMem_450794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8226 = getelementptr inbounds %struct.GPR, %struct.GPR* %8225, i32 0, i32 33
  %8227 = getelementptr inbounds %struct.Reg, %struct.Reg* %8226, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %8227 to i64*
  %8228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8229 = getelementptr inbounds %struct.GPR, %struct.GPR* %8228, i32 0, i32 9
  %8230 = getelementptr inbounds %struct.Reg, %struct.Reg* %8229, i32 0, i32 0
  %RSI.i42 = bitcast %union.anon* %8230 to i64*
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8232 = getelementptr inbounds %struct.GPR, %struct.GPR* %8231, i32 0, i32 15
  %8233 = getelementptr inbounds %struct.Reg, %struct.Reg* %8232, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %8233 to i64*
  %8234 = load i64, i64* %RBP.i43
  %8235 = sub i64 %8234, 484
  %8236 = load i64, i64* %PC.i41
  %8237 = add i64 %8236, 7
  store i64 %8237, i64* %PC.i41
  %8238 = inttoptr i64 %8235 to i32*
  %8239 = load i32, i32* %8238
  %8240 = sext i32 %8239 to i64
  store i64 %8240, i64* %RSI.i42, align 8
  store %struct.Memory* %loadMem_450794, %struct.Memory** %MEMORY
  %loadMem_45079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8242 = getelementptr inbounds %struct.GPR, %struct.GPR* %8241, i32 0, i32 33
  %8243 = getelementptr inbounds %struct.Reg, %struct.Reg* %8242, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8243 to i64*
  %8244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8245 = getelementptr inbounds %struct.GPR, %struct.GPR* %8244, i32 0, i32 7
  %8246 = getelementptr inbounds %struct.Reg, %struct.Reg* %8245, i32 0, i32 0
  %8247 = bitcast %union.anon* %8246 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8247, i32 0, i32 0
  %8248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8249 = getelementptr inbounds %struct.GPR, %struct.GPR* %8248, i32 0, i32 1
  %8250 = getelementptr inbounds %struct.Reg, %struct.Reg* %8249, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %8250 to i64*
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 9
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %RSI.i40 = bitcast %union.anon* %8253 to i64*
  %8254 = load i64, i64* %RAX.i39
  %8255 = load i64, i64* %RSI.i40
  %8256 = add i64 %8254, 4
  %8257 = add i64 %8256, %8255
  %8258 = load i8, i8* %DL.i
  %8259 = zext i8 %8258 to i64
  %8260 = load i64, i64* %PC.i38
  %8261 = add i64 %8260, 4
  store i64 %8261, i64* %PC.i38
  %8262 = inttoptr i64 %8257 to i8*
  store i8 %8258, i8* %8262
  store %struct.Memory* %loadMem_45079b, %struct.Memory** %MEMORY
  br label %block_.L_45079f

block_.L_45079f:                                  ; preds = %block_.L_450770, %block_4506ef
  %loadMem_45079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8264 = getelementptr inbounds %struct.GPR, %struct.GPR* %8263, i32 0, i32 33
  %8265 = getelementptr inbounds %struct.Reg, %struct.Reg* %8264, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8265 to i64*
  %8266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8267 = getelementptr inbounds %struct.GPR, %struct.GPR* %8266, i32 0, i32 1
  %8268 = getelementptr inbounds %struct.Reg, %struct.Reg* %8267, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %8268 to i64*
  %8269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8270 = getelementptr inbounds %struct.GPR, %struct.GPR* %8269, i32 0, i32 15
  %8271 = getelementptr inbounds %struct.Reg, %struct.Reg* %8270, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %8271 to i64*
  %8272 = load i64, i64* %RBP.i37
  %8273 = sub i64 %8272, 484
  %8274 = load i64, i64* %PC.i35
  %8275 = add i64 %8274, 6
  store i64 %8275, i64* %PC.i35
  %8276 = inttoptr i64 %8273 to i32*
  %8277 = load i32, i32* %8276
  %8278 = zext i32 %8277 to i64
  store i64 %8278, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_45079f, %struct.Memory** %MEMORY
  %loadMem_4507a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8280 = getelementptr inbounds %struct.GPR, %struct.GPR* %8279, i32 0, i32 33
  %8281 = getelementptr inbounds %struct.Reg, %struct.Reg* %8280, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8281 to i64*
  %8282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8283 = getelementptr inbounds %struct.GPR, %struct.GPR* %8282, i32 0, i32 1
  %8284 = getelementptr inbounds %struct.Reg, %struct.Reg* %8283, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %8284 to i64*
  %8285 = load i64, i64* %RAX.i34
  %8286 = load i64, i64* %PC.i33
  %8287 = add i64 %8286, 3
  store i64 %8287, i64* %PC.i33
  %8288 = trunc i64 %8285 to i32
  %8289 = add i32 1, %8288
  %8290 = zext i32 %8289 to i64
  store i64 %8290, i64* %RAX.i34, align 8
  %8291 = icmp ult i32 %8289, %8288
  %8292 = icmp ult i32 %8289, 1
  %8293 = or i1 %8291, %8292
  %8294 = zext i1 %8293 to i8
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8294, i8* %8295, align 1
  %8296 = and i32 %8289, 255
  %8297 = call i32 @llvm.ctpop.i32(i32 %8296)
  %8298 = trunc i32 %8297 to i8
  %8299 = and i8 %8298, 1
  %8300 = xor i8 %8299, 1
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8300, i8* %8301, align 1
  %8302 = xor i64 1, %8285
  %8303 = trunc i64 %8302 to i32
  %8304 = xor i32 %8303, %8289
  %8305 = lshr i32 %8304, 4
  %8306 = trunc i32 %8305 to i8
  %8307 = and i8 %8306, 1
  %8308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8307, i8* %8308, align 1
  %8309 = icmp eq i32 %8289, 0
  %8310 = zext i1 %8309 to i8
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8310, i8* %8311, align 1
  %8312 = lshr i32 %8289, 31
  %8313 = trunc i32 %8312 to i8
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8313, i8* %8314, align 1
  %8315 = lshr i32 %8288, 31
  %8316 = xor i32 %8312, %8315
  %8317 = add i32 %8316, %8312
  %8318 = icmp eq i32 %8317, 2
  %8319 = zext i1 %8318 to i8
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8319, i8* %8320, align 1
  store %struct.Memory* %loadMem_4507a5, %struct.Memory** %MEMORY
  %loadMem_4507a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8322 = getelementptr inbounds %struct.GPR, %struct.GPR* %8321, i32 0, i32 33
  %8323 = getelementptr inbounds %struct.Reg, %struct.Reg* %8322, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8323 to i64*
  %8324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8325 = getelementptr inbounds %struct.GPR, %struct.GPR* %8324, i32 0, i32 1
  %8326 = getelementptr inbounds %struct.Reg, %struct.Reg* %8325, i32 0, i32 0
  %EAX.i31 = bitcast %union.anon* %8326 to i32*
  %8327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8328 = getelementptr inbounds %struct.GPR, %struct.GPR* %8327, i32 0, i32 15
  %8329 = getelementptr inbounds %struct.Reg, %struct.Reg* %8328, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %8329 to i64*
  %8330 = load i64, i64* %RBP.i32
  %8331 = sub i64 %8330, 484
  %8332 = load i32, i32* %EAX.i31
  %8333 = zext i32 %8332 to i64
  %8334 = load i64, i64* %PC.i30
  %8335 = add i64 %8334, 6
  store i64 %8335, i64* %PC.i30
  %8336 = inttoptr i64 %8331 to i32*
  store i32 %8332, i32* %8336
  store %struct.Memory* %loadMem_4507a8, %struct.Memory** %MEMORY
  %loadMem_4507ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %8337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8338 = getelementptr inbounds %struct.GPR, %struct.GPR* %8337, i32 0, i32 33
  %8339 = getelementptr inbounds %struct.Reg, %struct.Reg* %8338, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8339 to i64*
  %8340 = load i64, i64* %PC.i29
  %8341 = add i64 %8340, -252
  %8342 = load i64, i64* %PC.i29
  %8343 = add i64 %8342, 5
  store i64 %8343, i64* %PC.i29
  %8344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8341, i64* %8344, align 8
  store %struct.Memory* %loadMem_4507ae, %struct.Memory** %MEMORY
  br label %block_.L_4506b2

block_.L_4507b3:                                  ; preds = %block_.L_4506b2
  %loadMem_4507b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8346 = getelementptr inbounds %struct.GPR, %struct.GPR* %8345, i32 0, i32 33
  %8347 = getelementptr inbounds %struct.Reg, %struct.Reg* %8346, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8347 to i64*
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 1
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %8350 to i64*
  %8351 = load i64, i64* %PC.i27
  %8352 = add i64 %8351, 7
  store i64 %8352, i64* %PC.i27
  %8353 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %8354 = zext i32 %8353 to i64
  store i64 %8354, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_4507b3, %struct.Memory** %MEMORY
  %loadMem_4507ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %8355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8356 = getelementptr inbounds %struct.GPR, %struct.GPR* %8355, i32 0, i32 33
  %8357 = getelementptr inbounds %struct.Reg, %struct.Reg* %8356, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8357 to i64*
  %8358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8359 = getelementptr inbounds %struct.GPR, %struct.GPR* %8358, i32 0, i32 1
  %8360 = getelementptr inbounds %struct.Reg, %struct.Reg* %8359, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %8360 to i64*
  %8361 = load i64, i64* %RAX.i26
  %8362 = load i64, i64* %PC.i25
  %8363 = add i64 %8362, 5
  store i64 %8363, i64* %PC.i25
  %8364 = and i64 2097152, %8361
  %8365 = trunc i64 %8364 to i32
  store i64 %8364, i64* %RAX.i26, align 8
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8366, align 1
  %8367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8367, align 1
  %8368 = icmp eq i32 %8365, 0
  %8369 = zext i1 %8368 to i8
  %8370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8369, i8* %8370, align 1
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8371, align 1
  %8372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8372, align 1
  %8373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8373, align 1
  store %struct.Memory* %loadMem_4507ba, %struct.Memory** %MEMORY
  %loadMem_4507bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8375 = getelementptr inbounds %struct.GPR, %struct.GPR* %8374, i32 0, i32 33
  %8376 = getelementptr inbounds %struct.Reg, %struct.Reg* %8375, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8376 to i64*
  %8377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8378 = getelementptr inbounds %struct.GPR, %struct.GPR* %8377, i32 0, i32 1
  %8379 = getelementptr inbounds %struct.Reg, %struct.Reg* %8378, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %8379 to i32*
  %8380 = load i32, i32* %EAX.i24
  %8381 = zext i32 %8380 to i64
  %8382 = load i64, i64* %PC.i23
  %8383 = add i64 %8382, 3
  store i64 %8383, i64* %PC.i23
  %8384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8384, align 1
  %8385 = and i32 %8380, 255
  %8386 = call i32 @llvm.ctpop.i32(i32 %8385)
  %8387 = trunc i32 %8386 to i8
  %8388 = and i8 %8387, 1
  %8389 = xor i8 %8388, 1
  %8390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8389, i8* %8390, align 1
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8391, align 1
  %8392 = icmp eq i32 %8380, 0
  %8393 = zext i1 %8392 to i8
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8393, i8* %8394, align 1
  %8395 = lshr i32 %8380, 31
  %8396 = trunc i32 %8395 to i8
  %8397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8396, i8* %8397, align 1
  %8398 = lshr i32 %8380, 31
  %8399 = xor i32 %8395, %8398
  %8400 = add i32 %8399, %8398
  %8401 = icmp eq i32 %8400, 2
  %8402 = zext i1 %8401 to i8
  %8403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8402, i8* %8403, align 1
  store %struct.Memory* %loadMem_4507bf, %struct.Memory** %MEMORY
  %loadMem_4507c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8405 = getelementptr inbounds %struct.GPR, %struct.GPR* %8404, i32 0, i32 33
  %8406 = getelementptr inbounds %struct.Reg, %struct.Reg* %8405, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8406 to i64*
  %8407 = load i64, i64* %PC.i22
  %8408 = add i64 %8407, 48
  %8409 = load i64, i64* %PC.i22
  %8410 = add i64 %8409, 6
  %8411 = load i64, i64* %PC.i22
  %8412 = add i64 %8411, 6
  store i64 %8412, i64* %PC.i22
  %8413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8414 = load i8, i8* %8413, align 1
  store i8 %8414, i8* %BRANCH_TAKEN, align 1
  %8415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8416 = icmp ne i8 %8414, 0
  %8417 = select i1 %8416, i64 %8408, i64 %8410
  store i64 %8417, i64* %8415, align 8
  store %struct.Memory* %loadMem_4507c2, %struct.Memory** %MEMORY
  %loadBr_4507c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4507c2 = icmp eq i8 %loadBr_4507c2, 1
  br i1 %cmpBr_4507c2, label %block_.L_4507f2, label %block_4507c8

block_4507c8:                                     ; preds = %block_.L_4507b3
  %loadMem_4507c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8419 = getelementptr inbounds %struct.GPR, %struct.GPR* %8418, i32 0, i32 33
  %8420 = getelementptr inbounds %struct.Reg, %struct.Reg* %8419, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8420 to i64*
  %8421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8422 = getelementptr inbounds %struct.GPR, %struct.GPR* %8421, i32 0, i32 11
  %8423 = getelementptr inbounds %struct.Reg, %struct.Reg* %8422, i32 0, i32 0
  %RDI.i21 = bitcast %union.anon* %8423 to i64*
  %8424 = load i64, i64* %PC.i20
  %8425 = add i64 %8424, 10
  store i64 %8425, i64* %PC.i20
  store i64 ptrtoint (%G__0x57f0de_type* @G__0x57f0de to i64), i64* %RDI.i21, align 8
  store %struct.Memory* %loadMem_4507c8, %struct.Memory** %MEMORY
  %loadMem_4507d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8427 = getelementptr inbounds %struct.GPR, %struct.GPR* %8426, i32 0, i32 33
  %8428 = getelementptr inbounds %struct.Reg, %struct.Reg* %8427, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8428 to i64*
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8430 = getelementptr inbounds %struct.GPR, %struct.GPR* %8429, i32 0, i32 9
  %8431 = getelementptr inbounds %struct.Reg, %struct.Reg* %8430, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8431 to i64*
  %8432 = load i64, i64* %PC.i19
  %8433 = add i64 %8432, 7
  store i64 %8433, i64* %PC.i19
  %8434 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %8435 = zext i32 %8434 to i64
  store i64 %8435, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4507d2, %struct.Memory** %MEMORY
  %loadMem_4507d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8437 = getelementptr inbounds %struct.GPR, %struct.GPR* %8436, i32 0, i32 33
  %8438 = getelementptr inbounds %struct.Reg, %struct.Reg* %8437, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8438 to i64*
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8440 = getelementptr inbounds %struct.GPR, %struct.GPR* %8439, i32 0, i32 1
  %8441 = getelementptr inbounds %struct.Reg, %struct.Reg* %8440, i32 0, i32 0
  %8442 = bitcast %union.anon* %8441 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8442, i32 0, i32 0
  %8443 = load i64, i64* %PC.i18
  %8444 = add i64 %8443, 2
  store i64 %8444, i64* %PC.i18
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4507d9, %struct.Memory** %MEMORY
  %loadMem1_4507db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8446 = getelementptr inbounds %struct.GPR, %struct.GPR* %8445, i32 0, i32 33
  %8447 = getelementptr inbounds %struct.Reg, %struct.Reg* %8446, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8447 to i64*
  %8448 = load i64, i64* %PC.i17
  %8449 = add i64 %8448, 5589
  %8450 = load i64, i64* %PC.i17
  %8451 = add i64 %8450, 5
  %8452 = load i64, i64* %PC.i17
  %8453 = add i64 %8452, 5
  store i64 %8453, i64* %PC.i17
  %8454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8455 = load i64, i64* %8454, align 8
  %8456 = add i64 %8455, -8
  %8457 = inttoptr i64 %8456 to i64*
  store i64 %8451, i64* %8457
  store i64 %8456, i64* %8454, align 8
  %8458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8449, i64* %8458, align 8
  store %struct.Memory* %loadMem1_4507db, %struct.Memory** %MEMORY
  %loadMem2_4507db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4507db = load i64, i64* %3
  %call2_4507db = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_4507db, %struct.Memory* %loadMem2_4507db)
  store %struct.Memory* %call2_4507db, %struct.Memory** %MEMORY
  %loadMem_4507e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8460 = getelementptr inbounds %struct.GPR, %struct.GPR* %8459, i32 0, i32 33
  %8461 = getelementptr inbounds %struct.Reg, %struct.Reg* %8460, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8461 to i64*
  %8462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8463 = getelementptr inbounds %struct.GPR, %struct.GPR* %8462, i32 0, i32 11
  %8464 = getelementptr inbounds %struct.Reg, %struct.Reg* %8463, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8464 to i64*
  %8465 = load i64, i64* %PC.i16
  %8466 = add i64 %8465, 7
  store i64 %8466, i64* %PC.i16
  %8467 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %8468 = zext i32 %8467 to i64
  store i64 %8468, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4507e0, %struct.Memory** %MEMORY
  %loadMem_4507e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8470 = getelementptr inbounds %struct.GPR, %struct.GPR* %8469, i32 0, i32 33
  %8471 = getelementptr inbounds %struct.Reg, %struct.Reg* %8470, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8471 to i64*
  %8472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8473 = getelementptr inbounds %struct.GPR, %struct.GPR* %8472, i32 0, i32 1
  %8474 = getelementptr inbounds %struct.Reg, %struct.Reg* %8473, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %8474 to i32*
  %8475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8476 = getelementptr inbounds %struct.GPR, %struct.GPR* %8475, i32 0, i32 15
  %8477 = getelementptr inbounds %struct.Reg, %struct.Reg* %8476, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %8477 to i64*
  %8478 = load i64, i64* %RBP.i15
  %8479 = sub i64 %8478, 1204
  %8480 = load i32, i32* %EAX.i14
  %8481 = zext i32 %8480 to i64
  %8482 = load i64, i64* %PC.i13
  %8483 = add i64 %8482, 6
  store i64 %8483, i64* %PC.i13
  %8484 = inttoptr i64 %8479 to i32*
  store i32 %8480, i32* %8484
  store %struct.Memory* %loadMem_4507e7, %struct.Memory** %MEMORY
  %loadMem1_4507ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %8485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8486 = getelementptr inbounds %struct.GPR, %struct.GPR* %8485, i32 0, i32 33
  %8487 = getelementptr inbounds %struct.Reg, %struct.Reg* %8486, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8487 to i64*
  %8488 = load i64, i64* %PC.i12
  %8489 = add i64 %8488, 51
  %8490 = load i64, i64* %PC.i12
  %8491 = add i64 %8490, 5
  %8492 = load i64, i64* %PC.i12
  %8493 = add i64 %8492, 5
  store i64 %8493, i64* %PC.i12
  %8494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8495 = load i64, i64* %8494, align 8
  %8496 = add i64 %8495, -8
  %8497 = inttoptr i64 %8496 to i64*
  store i64 %8491, i64* %8497
  store i64 %8496, i64* %8494, align 8
  %8498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8489, i64* %8498, align 8
  store %struct.Memory* %loadMem1_4507ed, %struct.Memory** %MEMORY
  %loadMem2_4507ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4507ed = load i64, i64* %3
  %call2_4507ed = call %struct.Memory* @sub_450820.print_persistent_owl_cache_entry(%struct.State* %0, i64 %loadPC_4507ed, %struct.Memory* %loadMem2_4507ed)
  store %struct.Memory* %call2_4507ed, %struct.Memory** %MEMORY
  br label %block_.L_4507f2

block_.L_4507f2:                                  ; preds = %block_4507c8, %block_.L_4507b3
  %loadMem_4507f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8500 = getelementptr inbounds %struct.GPR, %struct.GPR* %8499, i32 0, i32 33
  %8501 = getelementptr inbounds %struct.Reg, %struct.Reg* %8500, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8501 to i64*
  %8502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8503 = getelementptr inbounds %struct.GPR, %struct.GPR* %8502, i32 0, i32 1
  %8504 = getelementptr inbounds %struct.Reg, %struct.Reg* %8503, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %8504 to i64*
  %8505 = load i64, i64* %PC.i10
  %8506 = add i64 %8505, 7
  store i64 %8506, i64* %PC.i10
  %8507 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %8508 = zext i32 %8507 to i64
  store i64 %8508, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_4507f2, %struct.Memory** %MEMORY
  %loadMem_4507f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8510 = getelementptr inbounds %struct.GPR, %struct.GPR* %8509, i32 0, i32 33
  %8511 = getelementptr inbounds %struct.Reg, %struct.Reg* %8510, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8511 to i64*
  %8512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8513 = getelementptr inbounds %struct.GPR, %struct.GPR* %8512, i32 0, i32 1
  %8514 = getelementptr inbounds %struct.Reg, %struct.Reg* %8513, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8514 to i64*
  %8515 = load i64, i64* %RAX.i
  %8516 = load i64, i64* %PC.i9
  %8517 = add i64 %8516, 3
  store i64 %8517, i64* %PC.i9
  %8518 = trunc i64 %8515 to i32
  %8519 = add i32 1, %8518
  %8520 = zext i32 %8519 to i64
  store i64 %8520, i64* %RAX.i, align 8
  %8521 = icmp ult i32 %8519, %8518
  %8522 = icmp ult i32 %8519, 1
  %8523 = or i1 %8521, %8522
  %8524 = zext i1 %8523 to i8
  %8525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8524, i8* %8525, align 1
  %8526 = and i32 %8519, 255
  %8527 = call i32 @llvm.ctpop.i32(i32 %8526)
  %8528 = trunc i32 %8527 to i8
  %8529 = and i8 %8528, 1
  %8530 = xor i8 %8529, 1
  %8531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8530, i8* %8531, align 1
  %8532 = xor i64 1, %8515
  %8533 = trunc i64 %8532 to i32
  %8534 = xor i32 %8533, %8519
  %8535 = lshr i32 %8534, 4
  %8536 = trunc i32 %8535 to i8
  %8537 = and i8 %8536, 1
  %8538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8537, i8* %8538, align 1
  %8539 = icmp eq i32 %8519, 0
  %8540 = zext i1 %8539 to i8
  %8541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8540, i8* %8541, align 1
  %8542 = lshr i32 %8519, 31
  %8543 = trunc i32 %8542 to i8
  %8544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8543, i8* %8544, align 1
  %8545 = lshr i32 %8518, 31
  %8546 = xor i32 %8542, %8545
  %8547 = add i32 %8546, %8542
  %8548 = icmp eq i32 %8547, 2
  %8549 = zext i1 %8548 to i8
  %8550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8549, i8* %8550, align 1
  store %struct.Memory* %loadMem_4507f9, %struct.Memory** %MEMORY
  %loadMem_4507fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8552 = getelementptr inbounds %struct.GPR, %struct.GPR* %8551, i32 0, i32 33
  %8553 = getelementptr inbounds %struct.Reg, %struct.Reg* %8552, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8553 to i64*
  %8554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8555 = getelementptr inbounds %struct.GPR, %struct.GPR* %8554, i32 0, i32 1
  %8556 = getelementptr inbounds %struct.Reg, %struct.Reg* %8555, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8556 to i32*
  %8557 = load i32, i32* %EAX.i
  %8558 = zext i32 %8557 to i64
  %8559 = load i64, i64* %PC.i8
  %8560 = add i64 %8559, 7
  store i64 %8560, i64* %PC.i8
  store i32 %8557, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  store %struct.Memory* %loadMem_4507fc, %struct.Memory** %MEMORY
  br label %block_.L_450803

block_.L_450803:                                  ; preds = %block_.L_4507f2, %block_.L_44ff9c
  %loadMem_450803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8562 = getelementptr inbounds %struct.GPR, %struct.GPR* %8561, i32 0, i32 33
  %8563 = getelementptr inbounds %struct.Reg, %struct.Reg* %8562, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8563 to i64*
  %8564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8565 = getelementptr inbounds %struct.GPR, %struct.GPR* %8564, i32 0, i32 13
  %8566 = getelementptr inbounds %struct.Reg, %struct.Reg* %8565, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8566 to i64*
  %8567 = load i64, i64* %RSP.i
  %8568 = load i64, i64* %PC.i7
  %8569 = add i64 %8568, 7
  store i64 %8569, i64* %PC.i7
  %8570 = add i64 1192, %8567
  store i64 %8570, i64* %RSP.i, align 8
  %8571 = icmp ult i64 %8570, %8567
  %8572 = icmp ult i64 %8570, 1192
  %8573 = or i1 %8571, %8572
  %8574 = zext i1 %8573 to i8
  %8575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8574, i8* %8575, align 1
  %8576 = trunc i64 %8570 to i32
  %8577 = and i32 %8576, 255
  %8578 = call i32 @llvm.ctpop.i32(i32 %8577)
  %8579 = trunc i32 %8578 to i8
  %8580 = and i8 %8579, 1
  %8581 = xor i8 %8580, 1
  %8582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8581, i8* %8582, align 1
  %8583 = xor i64 1192, %8567
  %8584 = xor i64 %8583, %8570
  %8585 = lshr i64 %8584, 4
  %8586 = trunc i64 %8585 to i8
  %8587 = and i8 %8586, 1
  %8588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8587, i8* %8588, align 1
  %8589 = icmp eq i64 %8570, 0
  %8590 = zext i1 %8589 to i8
  %8591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8590, i8* %8591, align 1
  %8592 = lshr i64 %8570, 63
  %8593 = trunc i64 %8592 to i8
  %8594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8593, i8* %8594, align 1
  %8595 = lshr i64 %8567, 63
  %8596 = xor i64 %8592, %8595
  %8597 = add i64 %8596, %8592
  %8598 = icmp eq i64 %8597, 2
  %8599 = zext i1 %8598 to i8
  %8600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8599, i8* %8600, align 1
  store %struct.Memory* %loadMem_450803, %struct.Memory** %MEMORY
  %loadMem_45080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8602 = getelementptr inbounds %struct.GPR, %struct.GPR* %8601, i32 0, i32 33
  %8603 = getelementptr inbounds %struct.Reg, %struct.Reg* %8602, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8603 to i64*
  %8604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8605 = getelementptr inbounds %struct.GPR, %struct.GPR* %8604, i32 0, i32 3
  %8606 = getelementptr inbounds %struct.Reg, %struct.Reg* %8605, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %8606 to i64*
  %8607 = load i64, i64* %PC.i6
  %8608 = add i64 %8607, 1
  store i64 %8608, i64* %PC.i6
  %8609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8610 = load i64, i64* %8609, align 8
  %8611 = add i64 %8610, 8
  %8612 = inttoptr i64 %8610 to i64*
  %8613 = load i64, i64* %8612
  store i64 %8613, i64* %RBX.i, align 8
  store i64 %8611, i64* %8609, align 8
  store %struct.Memory* %loadMem_45080a, %struct.Memory** %MEMORY
  %loadMem_45080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8615 = getelementptr inbounds %struct.GPR, %struct.GPR* %8614, i32 0, i32 33
  %8616 = getelementptr inbounds %struct.Reg, %struct.Reg* %8615, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8616 to i64*
  %8617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8618 = getelementptr inbounds %struct.GPR, %struct.GPR* %8617, i32 0, i32 29
  %8619 = getelementptr inbounds %struct.Reg, %struct.Reg* %8618, i32 0, i32 0
  %R14.i = bitcast %union.anon* %8619 to i64*
  %8620 = load i64, i64* %PC.i5
  %8621 = add i64 %8620, 2
  store i64 %8621, i64* %PC.i5
  %8622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8623 = load i64, i64* %8622, align 8
  %8624 = add i64 %8623, 8
  %8625 = inttoptr i64 %8623 to i64*
  %8626 = load i64, i64* %8625
  store i64 %8626, i64* %R14.i, align 8
  store i64 %8624, i64* %8622, align 8
  store %struct.Memory* %loadMem_45080b, %struct.Memory** %MEMORY
  %loadMem_45080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8628 = getelementptr inbounds %struct.GPR, %struct.GPR* %8627, i32 0, i32 33
  %8629 = getelementptr inbounds %struct.Reg, %struct.Reg* %8628, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8629 to i64*
  %8630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8631 = getelementptr inbounds %struct.GPR, %struct.GPR* %8630, i32 0, i32 31
  %8632 = getelementptr inbounds %struct.Reg, %struct.Reg* %8631, i32 0, i32 0
  %R15.i = bitcast %union.anon* %8632 to i64*
  %8633 = load i64, i64* %PC.i4
  %8634 = add i64 %8633, 2
  store i64 %8634, i64* %PC.i4
  %8635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8636 = load i64, i64* %8635, align 8
  %8637 = add i64 %8636, 8
  %8638 = inttoptr i64 %8636 to i64*
  %8639 = load i64, i64* %8638
  store i64 %8639, i64* %R15.i, align 8
  store i64 %8637, i64* %8635, align 8
  store %struct.Memory* %loadMem_45080d, %struct.Memory** %MEMORY
  %loadMem_45080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8641 = getelementptr inbounds %struct.GPR, %struct.GPR* %8640, i32 0, i32 33
  %8642 = getelementptr inbounds %struct.Reg, %struct.Reg* %8641, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8642 to i64*
  %8643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8644 = getelementptr inbounds %struct.GPR, %struct.GPR* %8643, i32 0, i32 15
  %8645 = getelementptr inbounds %struct.Reg, %struct.Reg* %8644, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8645 to i64*
  %8646 = load i64, i64* %PC.i2
  %8647 = add i64 %8646, 1
  store i64 %8647, i64* %PC.i2
  %8648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8649 = load i64, i64* %8648, align 8
  %8650 = add i64 %8649, 8
  %8651 = inttoptr i64 %8649 to i64*
  %8652 = load i64, i64* %8651
  store i64 %8652, i64* %RBP.i3, align 8
  store i64 %8650, i64* %8648, align 8
  store %struct.Memory* %loadMem_45080f, %struct.Memory** %MEMORY
  %loadMem_450810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8654 = getelementptr inbounds %struct.GPR, %struct.GPR* %8653, i32 0, i32 33
  %8655 = getelementptr inbounds %struct.Reg, %struct.Reg* %8654, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8655 to i64*
  %8656 = load i64, i64* %PC.i1
  %8657 = add i64 %8656, 1
  store i64 %8657, i64* %PC.i1
  %8658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8660 = load i64, i64* %8659, align 8
  %8661 = inttoptr i64 %8660 to i64*
  %8662 = load i64, i64* %8661
  store i64 %8662, i64* %8658, align 8
  %8663 = add i64 %8660, 8
  store i64 %8663, i64* %8659, align 8
  store %struct.Memory* %loadMem_450810, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_450810
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

define %struct.Memory* @routine_subq__0x4a8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1192
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1192
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
  %23 = xor i64 1192, %9
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

define %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___r15d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R15D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 3, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r14d__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EBX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_subl_MINUS0x4c__rbp____r15d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R15D to i64*
  %13 = load i32, i32* %R15D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 76
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

define %struct.Memory* @routine_movl__r15d__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 496
  %14 = load i32, i32* %R15D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
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

define %struct.Memory* @routine_jne_.L_44ff1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_44ff44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2d2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 722, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
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

define %struct.Memory* @routine_cmpl__0x96__0xad1720(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %9 = sub i32 %8, 150
  %10 = icmp ult i32 %8, 150
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
  %19 = xor i32 %8, 150
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

define %struct.Memory* @routine_jne_.L_44ff5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.purge_persistent_owl_cache(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_44ffa1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = and i64 4096, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
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

define %struct.Memory* @routine_jne_.L_44ff85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_44ff9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57f0c2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f0c2_type* @G__0x57f0c2 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_450803(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xad1730___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 444, %15
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

define %struct.Memory* @routine_movl__ecx____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movl__ecx__0x19c__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 412
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x1a0__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 416
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1a4__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 420
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1a8__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 424
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x1ac__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 428
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1b0__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 432
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1b4__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1b8__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 440
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x198__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 408
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x194__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 404
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 484
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 484
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_450171(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_je_.L_450158(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
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

define %struct.Memory* @routine_setne__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil__MINUS0x1e0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -480
  %19 = add i64 %18, %17
  %20 = load i8, i8* %SIL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 8
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i8*
  store i8 %20, i8* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45015d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_jmpq_.L_450100(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_45019f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45019f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -480
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_4501cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4501cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__MINUS0x1e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jge_.L_4503cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4503b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_450249(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 496
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %15, -480
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_45024e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4503a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_45028b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -480
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 488
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_je_.L_450342(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4502c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_450305(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_45039d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_45039d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_450378(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x1e0__rbp__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = add i64 %16, -480
  %19 = add i64 %18, %17
  %20 = load i8, i8* %CL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i8*
  store i8 %20, i8* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_450398(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl__cl___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %14 to i32
  %18 = shl i32 %17, 24
  %19 = ashr exact i32 %18, 24
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.mark_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45039d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4501ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4503bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4501d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4504eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_45041c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_450421(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4504d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x1ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_4504d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4504b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4504d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4504be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45042b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4503d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4506a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_45068f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_45068f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_45068f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x210__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_cmpl_MINUS0x214__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 532
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_4505b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x210__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -528
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_450573(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.chainlinks(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1188
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_45068a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1184
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_450671(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_45066c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x4a8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45062f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_450671(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_450676(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4505d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45068f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_450694(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4504f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4507b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x4ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1196
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4506f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45079f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpb__0x0__MINUS0x1e0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -480
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  %19 = load i8, i8* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = zext i8 %19 to i32
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i8 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i8 %19, 7
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i8 %19, 7
  %34 = xor i8 %31, %33
  %35 = add i8 %34, %33
  %36 = icmp eq i8 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_450718(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3__MINUS0x4ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_450770(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_450748(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_45076b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 4
  %14 = icmp ult i32 %9, 4
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
  %23 = xor i64 4, %10
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

define %struct.Memory* @routine_jle_.L_45076b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 4, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xad1720___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x1bc___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 444, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__0x4__rax__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 4
  %19 = add i64 %18, %17
  %20 = load i8, i8* %DL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i8*
  store i8 %20, i8* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4506b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x200000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = and i64 2097152, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4507f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57f0de___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f0de_type* @G__0x57f0de to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xad1720___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xad1720___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.print_persistent_owl_cache_entry(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xad1720___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xad1720(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x4a8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1192, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1192
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
  %25 = xor i64 1192, %9
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
