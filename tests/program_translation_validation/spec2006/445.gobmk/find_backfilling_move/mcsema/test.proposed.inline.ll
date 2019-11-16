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
%G__0x57bcf5_type = type <{ [8 x i8] }>
%G__0x57bd0b_type = type <{ [8 x i8] }>
%G__0x57bdc1_type = type <{ [8 x i8] }>
%G__0xaafcf0_type = type <{ [8 x i8] }>
%G__0xab00c0_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G__0x57bcf5 = global %G__0x57bcf5_type zeroinitializer
@G__0x57bd0b = global %G__0x57bd0b_type zeroinitializer
@G__0x57bdc1 = global %G__0x57bdc1_type zeroinitializer
@G__0xaafcf0 = global %G__0xaafcf0_type zeroinitializer
@G__0xab00c0 = global %G__0xab00c0_type zeroinitializer

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

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c130.find_proper_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c240.superstring_chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4249e0.find_backfilling_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @find_backfilling_move(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4249e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4249e0, %struct.Memory** %MEMORY
  %loadMem_4249e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i565 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i565
  %27 = load i64, i64* %PC.i564
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i564
  store i64 %26, i64* %RBP.i566, align 8
  store %struct.Memory* %loadMem_4249e1, %struct.Memory** %MEMORY
  %loadMem_4249e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i563 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i563
  %36 = load i64, i64* %PC.i562
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i562
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i563, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_4249e4, %struct.Memory** %MEMORY
  %loadMem_4249e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i560
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i560
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RAX.i561, align 8
  store %struct.Memory* %loadMem_4249e8, %struct.Memory** %MEMORY
  %loadMem_4249f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %ECX.i558 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RCX.i559
  %85 = load i32, i32* %ECX.i558
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC.i557
  %88 = add i64 %87, 2
  store i64 %88, i64* %PC.i557
  %89 = xor i64 %86, %84
  %90 = trunc i64 %89 to i32
  %91 = and i64 %89, 4294967295
  store i64 %91, i64* %RCX.i559, align 8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %92, align 1
  %93 = and i32 %90, 255
  %94 = call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %97, i8* %98, align 1
  %99 = icmp eq i32 %90, 0
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %100, i8* %101, align 1
  %102 = lshr i32 %90, 31
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %103, i8* %104, align 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %106, align 1
  store %struct.Memory* %loadMem_4249f2, %struct.Memory** %MEMORY
  %loadMem_4249f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i556
  %117 = sub i64 %116, 8
  %118 = load i32, i32* %EDI.i
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i555
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i555
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_4249f4, %struct.Memory** %MEMORY
  %loadMem_4249f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %ESI.i553 = bitcast %union.anon* %128 to i32*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i554
  %133 = sub i64 %132, 12
  %134 = load i32, i32* %ESI.i553
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC.i552
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i552
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  store %struct.Memory* %loadMem_4249f7, %struct.Memory** %MEMORY
  %loadMem_4249fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RDX.i550 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i551
  %149 = sub i64 %148, 24
  %150 = load i64, i64* %RDX.i550
  %151 = load i64, i64* %PC.i549
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC.i549
  %153 = inttoptr i64 %149 to i64*
  store i64 %150, i64* %153
  store %struct.Memory* %loadMem_4249fa, %struct.Memory** %MEMORY
  %loadMem_4249fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i548
  %161 = sub i64 %160, 40
  %162 = load i64, i64* %PC.i547
  %163 = add i64 %162, 7
  store i64 %163, i64* %PC.i547
  %164 = inttoptr i64 %161 to i32*
  store i32 0, i32* %164
  store %struct.Memory* %loadMem_4249fe, %struct.Memory** %MEMORY
  %loadMem_424a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %170 to i64*
  %171 = load i64, i64* %RBP.i546
  %172 = sub i64 %171, 44
  %173 = load i64, i64* %PC.i545
  %174 = add i64 %173, 7
  store i64 %174, i64* %PC.i545
  %175 = inttoptr i64 %172 to i32*
  store i32 0, i32* %175
  store %struct.Memory* %loadMem_424a05, %struct.Memory** %MEMORY
  %loadMem_424a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 15
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RBP.i544
  %183 = sub i64 %182, 48
  %184 = load i64, i64* %PC.i543
  %185 = add i64 %184, 7
  store i64 %185, i64* %PC.i543
  %186 = inttoptr i64 %183 to i32*
  store i32 0, i32* %186
  store %struct.Memory* %loadMem_424a0c, %struct.Memory** %MEMORY
  %loadMem_424a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i542
  %194 = sub i64 %193, 52
  %195 = load i64, i64* %PC.i541
  %196 = add i64 %195, 7
  store i64 %196, i64* %PC.i541
  %197 = inttoptr i64 %194 to i32*
  store i32 0, i32* %197
  store %struct.Memory* %loadMem_424a13, %struct.Memory** %MEMORY
  %loadMem_424a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 15
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %RBP.i540
  %205 = sub i64 %204, 56
  %206 = load i64, i64* %PC.i539
  %207 = add i64 %206, 7
  store i64 %207, i64* %PC.i539
  %208 = inttoptr i64 %205 to i32*
  store i32 0, i32* %208
  store %struct.Memory* %loadMem_424a1a, %struct.Memory** %MEMORY
  %loadMem_424a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 15
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %214 to i64*
  %215 = load i64, i64* %RBP.i538
  %216 = sub i64 %215, 64
  %217 = load i64, i64* %PC.i537
  %218 = add i64 %217, 7
  store i64 %218, i64* %PC.i537
  %219 = inttoptr i64 %216 to i32*
  store i32 0, i32* %219
  store %struct.Memory* %loadMem_424a21, %struct.Memory** %MEMORY
  %loadMem_424a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 11
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RDI.i535 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 15
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RBP.i536
  %230 = sub i64 %229, 8
  %231 = load i64, i64* %PC.i534
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC.i534
  %233 = inttoptr i64 %230 to i32*
  %234 = load i32, i32* %233
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RDI.i535, align 8
  store %struct.Memory* %loadMem_424a28, %struct.Memory** %MEMORY
  %loadMem_424a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 9
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RSI.i532 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i533
  %246 = sub i64 %245, 12
  %247 = load i64, i64* %PC.i531
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC.i531
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RSI.i532, align 8
  store %struct.Memory* %loadMem_424a2b, %struct.Memory** %MEMORY
  %loadMem_424a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 17
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %R8D.i529 = bitcast %union.anon* %257 to i32*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %260 to i64*
  %261 = bitcast i32* %R8D.i529 to i64*
  %262 = load i64, i64* %RBP.i530
  %263 = sub i64 %262, 8
  %264 = load i64, i64* %PC.i528
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC.i528
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %261, align 8
  store %struct.Memory* %loadMem_424a2e, %struct.Memory** %MEMORY
  %loadMem_424a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RAX.i526
  %279 = load i64, i64* %PC.i525
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC.i525
  store i64 %278, i64* %RDX.i527, align 8
  store %struct.Memory* %loadMem_424a32, %struct.Memory** %MEMORY
  %loadMem_424a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %ECX.i523 = bitcast %union.anon* %286 to i32*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RBP.i524
  %291 = sub i64 %290, 72
  %292 = load i32, i32* %ECX.i523
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %PC.i522
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC.i522
  %296 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %296
  store %struct.Memory* %loadMem_424a35, %struct.Memory** %MEMORY
  %loadMem_424a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 17
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %R8D.i520 = bitcast %union.anon* %302 to i32*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %305 to i64*
  %306 = load i32, i32* %R8D.i520
  %307 = zext i32 %306 to i64
  %308 = load i64, i64* %PC.i519
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC.i519
  %310 = and i64 %307, 4294967295
  store i64 %310, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_424a38, %struct.Memory** %MEMORY
  %loadMem_424a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 17
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %R8D.i517 = bitcast %union.anon* %316 to i32*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %319 to i64*
  %320 = bitcast i32* %R8D.i517 to i64*
  %321 = load i64, i64* %RBP.i518
  %322 = sub i64 %321, 72
  %323 = load i64, i64* %PC.i516
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC.i516
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %320, align 8
  store %struct.Memory* %loadMem_424a3b, %struct.Memory** %MEMORY
  %loadMem_424a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 19
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %R9D.i514 = bitcast %union.anon* %333 to i32*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %336 to i64*
  %337 = bitcast i32* %R9D.i514 to i64*
  %338 = load i64, i64* %RBP.i515
  %339 = sub i64 %338, 72
  %340 = load i64, i64* %PC.i513
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC.i513
  %342 = inttoptr i64 %339 to i32*
  %343 = load i32, i32* %342
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %337, align 8
  store %struct.Memory* %loadMem_424a3f, %struct.Memory** %MEMORY
  %loadMem1_424a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %PC.i512
  %349 = add i64 %348, -113683
  %350 = load i64, i64* %PC.i512
  %351 = add i64 %350, 5
  %352 = load i64, i64* %PC.i512
  %353 = add i64 %352, 5
  store i64 %353, i64* %PC.i512
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %351, i64* %357
  store i64 %356, i64* %354, align 8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %349, i64* %358, align 8
  store %struct.Memory* %loadMem1_424a43, %struct.Memory** %MEMORY
  %loadMem2_424a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424a43 = load i64, i64* %3
  %call2_424a43 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_424a43, %struct.Memory* %loadMem2_424a43)
  store %struct.Memory* %call2_424a43, %struct.Memory** %MEMORY
  %loadMem_424a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %364 to i32*
  %365 = load i32, i32* %EAX.i511
  %366 = zext i32 %365 to i64
  %367 = load i64, i64* %PC.i510
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC.i510
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %369, align 1
  %370 = and i32 %365, 255
  %371 = call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %374, i8* %375, align 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %376, align 1
  %377 = icmp eq i32 %365, 0
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %378, i8* %379, align 1
  %380 = lshr i32 %365, 31
  %381 = trunc i32 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %381, i8* %382, align 1
  %383 = lshr i32 %365, 31
  %384 = xor i32 %380, %383
  %385 = add i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %387, i8* %388, align 1
  store %struct.Memory* %loadMem_424a48, %struct.Memory** %MEMORY
  %loadMem_424a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %PC.i509
  %393 = add i64 %392, 18
  %394 = load i64, i64* %PC.i509
  %395 = add i64 %394, 6
  %396 = load i64, i64* %PC.i509
  %397 = add i64 %396, 6
  store i64 %397, i64* %PC.i509
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %399 = load i8, i8* %398, align 1
  %400 = icmp eq i8 %399, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %BRANCH_TAKEN, align 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %403 = select i1 %400, i64 %393, i64 %395
  store i64 %403, i64* %402, align 8
  store %struct.Memory* %loadMem_424a4b, %struct.Memory** %MEMORY
  %loadBr_424a4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424a4b = icmp eq i8 %loadBr_424a4b, 1
  br i1 %cmpBr_424a4b, label %block_.L_424a5d, label %block_424a51

block_424a51:                                     ; preds = %entry
  %loadMem_424a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 15
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %409 to i64*
  %410 = load i64, i64* %RBP.i508
  %411 = sub i64 %410, 4
  %412 = load i64, i64* %PC.i507
  %413 = add i64 %412, 7
  store i64 %413, i64* %PC.i507
  %414 = inttoptr i64 %411 to i32*
  store i32 0, i32* %414
  store %struct.Memory* %loadMem_424a51, %struct.Memory** %MEMORY
  %loadMem_424a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %PC.i506
  %419 = add i64 %418, 1066
  %420 = load i64, i64* %PC.i506
  %421 = add i64 %420, 5
  store i64 %421, i64* %PC.i506
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %419, i64* %422, align 8
  store %struct.Memory* %loadMem_424a58, %struct.Memory** %MEMORY
  br label %block_.L_424e82

block_.L_424a5d:                                  ; preds = %entry
  %loadMem_424a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 9
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RSI.i504 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 15
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %431 to i64*
  %432 = load i64, i64* %RBP.i505
  %433 = sub i64 %432, 44
  %434 = load i64, i64* %PC.i503
  %435 = add i64 %434, 4
  store i64 %435, i64* %PC.i503
  store i64 %433, i64* %RSI.i504, align 8
  store %struct.Memory* %loadMem_424a5d, %struct.Memory** %MEMORY
  %loadMem_424a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 11
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RDI.i501 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i502
  %446 = sub i64 %445, 8
  %447 = load i64, i64* %PC.i500
  %448 = add i64 %447, 3
  store i64 %448, i64* %PC.i500
  %449 = inttoptr i64 %446 to i32*
  %450 = load i32, i32* %449
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RDI.i501, align 8
  store %struct.Memory* %loadMem_424a61, %struct.Memory** %MEMORY
  %loadMem1_424a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %PC.i499
  %456 = add i64 %455, 233692
  %457 = load i64, i64* %PC.i499
  %458 = add i64 %457, 5
  %459 = load i64, i64* %PC.i499
  %460 = add i64 %459, 5
  store i64 %460, i64* %PC.i499
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = add i64 %462, -8
  %464 = inttoptr i64 %463 to i64*
  store i64 %458, i64* %464
  store i64 %463, i64* %461, align 8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %456, i64* %465, align 8
  store %struct.Memory* %loadMem1_424a64, %struct.Memory** %MEMORY
  %loadMem2_424a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424a64 = load i64, i64* %3
  %call2_424a64 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_424a64, %struct.Memory* %loadMem2_424a64)
  store %struct.Memory* %call2_424a64, %struct.Memory** %MEMORY
  %loadMem_424a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %EAX.i497 = bitcast %union.anon* %471 to i32*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 15
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RBP.i498
  %476 = sub i64 %475, 60
  %477 = load i32, i32* %EAX.i497
  %478 = zext i32 %477 to i64
  %479 = load i64, i64* %PC.i496
  %480 = add i64 %479, 3
  store i64 %480, i64* %PC.i496
  %481 = inttoptr i64 %476 to i32*
  store i32 %477, i32* %481
  store %struct.Memory* %loadMem_424a69, %struct.Memory** %MEMORY
  %loadMem_424a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 15
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %487 to i64*
  %488 = load i64, i64* %RBP.i495
  %489 = sub i64 %488, 60
  %490 = load i64, i64* %PC.i494
  %491 = add i64 %490, 4
  store i64 %491, i64* %PC.i494
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %494, align 1
  %495 = and i32 %493, 255
  %496 = call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %499, i8* %500, align 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %501, align 1
  %502 = icmp eq i32 %493, 0
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %503, i8* %504, align 1
  %505 = lshr i32 %493, 31
  %506 = trunc i32 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %506, i8* %507, align 1
  %508 = lshr i32 %493, 31
  %509 = xor i32 %505, %508
  %510 = add i32 %509, %508
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %512, i8* %513, align 1
  store %struct.Memory* %loadMem_424a6c, %struct.Memory** %MEMORY
  %loadMem_424a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %PC.i493
  %518 = add i64 %517, 21
  %519 = load i64, i64* %PC.i493
  %520 = add i64 %519, 6
  %521 = load i64, i64* %PC.i493
  %522 = add i64 %521, 6
  store i64 %522, i64* %PC.i493
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %524 = load i8, i8* %523, align 1
  store i8 %524, i8* %BRANCH_TAKEN, align 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %526 = icmp ne i8 %524, 0
  %527 = select i1 %526, i64 %518, i64 %520
  store i64 %527, i64* %525, align 8
  store %struct.Memory* %loadMem_424a70, %struct.Memory** %MEMORY
  %loadBr_424a70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424a70 = icmp eq i8 %loadBr_424a70, 1
  br i1 %cmpBr_424a70, label %block_.L_424a85, label %block_424a76

block_424a76:                                     ; preds = %block_.L_424a5d
  %loadMem_424a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i492
  %535 = sub i64 %534, 44
  %536 = load i64, i64* %PC.i491
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC.i491
  %538 = inttoptr i64 %535 to i32*
  %539 = load i32, i32* %538
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %540, align 1
  %541 = and i32 %539, 255
  %542 = call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %545, i8* %546, align 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %547, align 1
  %548 = icmp eq i32 %539, 0
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %549, i8* %550, align 1
  %551 = lshr i32 %539, 31
  %552 = trunc i32 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %552, i8* %553, align 1
  %554 = lshr i32 %539, 31
  %555 = xor i32 %551, %554
  %556 = add i32 %555, %554
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %558, i8* %559, align 1
  store %struct.Memory* %loadMem_424a76, %struct.Memory** %MEMORY
  %loadMem_424a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %PC.i490
  %564 = add i64 %563, 11
  %565 = load i64, i64* %PC.i490
  %566 = add i64 %565, 6
  %567 = load i64, i64* %PC.i490
  %568 = add i64 %567, 6
  store i64 %568, i64* %PC.i490
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %570 = load i8, i8* %569, align 1
  %571 = icmp ne i8 %570, 0
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %573 = load i8, i8* %572, align 1
  %574 = icmp ne i8 %573, 0
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %576 = load i8, i8* %575, align 1
  %577 = icmp ne i8 %576, 0
  %578 = xor i1 %574, %577
  %579 = or i1 %571, %578
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %BRANCH_TAKEN, align 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %582 = select i1 %579, i64 %564, i64 %566
  store i64 %582, i64* %581, align 8
  store %struct.Memory* %loadMem_424a7a, %struct.Memory** %MEMORY
  %loadBr_424a7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424a7a = icmp eq i8 %loadBr_424a7a, 1
  br i1 %cmpBr_424a7a, label %block_.L_424a85, label %block_424a80

block_424a80:                                     ; preds = %block_424a76
  %loadMem_424a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %PC.i489
  %587 = add i64 %586, 45
  %588 = load i64, i64* %PC.i489
  %589 = add i64 %588, 5
  store i64 %589, i64* %PC.i489
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %587, i64* %590, align 8
  store %struct.Memory* %loadMem_424a80, %struct.Memory** %MEMORY
  br label %block_.L_424aad

block_.L_424a85:                                  ; preds = %block_424a76, %block_.L_424a5d
  %loadMem_424a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 11
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RDI.i488 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %PC.i487
  %598 = add i64 %597, 10
  store i64 %598, i64* %PC.i487
  store i64 ptrtoint (%G__0x57bd0b_type* @G__0x57bd0b to i64), i64* %RDI.i488, align 8
  store %struct.Memory* %loadMem_424a85, %struct.Memory** %MEMORY
  %loadMem_424a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 9
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RSI.i486 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %PC.i485
  %606 = add i64 %605, 5
  store i64 %606, i64* %PC.i485
  store i64 378, i64* %RSI.i486, align 8
  store %struct.Memory* %loadMem_424a8f, %struct.Memory** %MEMORY
  %loadMem_424a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 7
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %PC.i483
  %614 = add i64 %613, 10
  store i64 %614, i64* %PC.i483
  store i64 ptrtoint (%G__0x57bdc1_type* @G__0x57bdc1 to i64), i64* %RDX.i484, align 8
  store %struct.Memory* %loadMem_424a94, %struct.Memory** %MEMORY
  %loadMem_424a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %PC.i481
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC.i481
  store i64 4294967295, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_424a9e, %struct.Memory** %MEMORY
  %loadMem_424aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %EAX.i479 = bitcast %union.anon* %628 to i32*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %631 to i64*
  %632 = load i32, i32* %EAX.i479
  %633 = zext i32 %632 to i64
  %634 = load i64, i64* %PC.i478
  %635 = add i64 %634, 2
  store i64 %635, i64* %PC.i478
  %636 = and i64 %633, 4294967295
  store i64 %636, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_424aa3, %struct.Memory** %MEMORY
  %loadMem_424aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %EAX.i476 = bitcast %union.anon* %642 to i32*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 17
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %R8D.i477 = bitcast %union.anon* %645 to i32*
  %646 = bitcast i32* %R8D.i477 to i64*
  %647 = load i32, i32* %EAX.i476
  %648 = zext i32 %647 to i64
  %649 = load i64, i64* %PC.i475
  %650 = add i64 %649, 3
  store i64 %650, i64* %PC.i475
  %651 = and i64 %648, 4294967295
  store i64 %651, i64* %646, align 8
  store %struct.Memory* %loadMem_424aa5, %struct.Memory** %MEMORY
  %loadMem1_424aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %PC.i474
  %656 = add i64 %655, 185832
  %657 = load i64, i64* %PC.i474
  %658 = add i64 %657, 5
  %659 = load i64, i64* %PC.i474
  %660 = add i64 %659, 5
  store i64 %660, i64* %PC.i474
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %662 = load i64, i64* %661, align 8
  %663 = add i64 %662, -8
  %664 = inttoptr i64 %663 to i64*
  store i64 %658, i64* %664
  store i64 %663, i64* %661, align 8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %656, i64* %665, align 8
  store %struct.Memory* %loadMem1_424aa8, %struct.Memory** %MEMORY
  %loadMem2_424aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424aa8 = load i64, i64* %3
  %call2_424aa8 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_424aa8, %struct.Memory* %loadMem2_424aa8)
  store %struct.Memory* %call2_424aa8, %struct.Memory** %MEMORY
  br label %block_.L_424aad

block_.L_424aad:                                  ; preds = %block_.L_424a85, %block_424a80
  %loadMem_424aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 9
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RSI.i473 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %PC.i472
  %673 = add i64 %672, 5
  store i64 %673, i64* %PC.i472
  store i64 241, i64* %RSI.i473, align 8
  store %struct.Memory* %loadMem_424aad, %struct.Memory** %MEMORY
  %loadMem_424ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 7
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %PC.i470
  %681 = add i64 %680, 10
  store i64 %681, i64* %PC.i470
  store i64 ptrtoint (%G__0xaafcf0_type* @G__0xaafcf0 to i64), i64* %RDX.i471, align 8
  store %struct.Memory* %loadMem_424ab2, %struct.Memory** %MEMORY
  %loadMem_424abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 11
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RDI.i468 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 15
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RBP.i469
  %692 = sub i64 %691, 8
  %693 = load i64, i64* %PC.i467
  %694 = add i64 %693, 3
  store i64 %694, i64* %PC.i467
  %695 = inttoptr i64 %692 to i32*
  %696 = load i32, i32* %695
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RDI.i468, align 8
  store %struct.Memory* %loadMem_424abc, %struct.Memory** %MEMORY
  %loadMem1_424abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %700 to i64*
  %701 = load i64, i64* %PC.i466
  %702 = add i64 %701, -86655
  %703 = load i64, i64* %PC.i466
  %704 = add i64 %703, 5
  %705 = load i64, i64* %PC.i466
  %706 = add i64 %705, 5
  store i64 %706, i64* %PC.i466
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %708 = load i64, i64* %707, align 8
  %709 = add i64 %708, -8
  %710 = inttoptr i64 %709 to i64*
  store i64 %704, i64* %710
  store i64 %709, i64* %707, align 8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %702, i64* %711, align 8
  store %struct.Memory* %loadMem1_424abf, %struct.Memory** %MEMORY
  %loadMem2_424abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424abf = load i64, i64* %3
  %call2_424abf = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_424abf, %struct.Memory* %loadMem2_424abf)
  store %struct.Memory* %call2_424abf, %struct.Memory** %MEMORY
  %loadMem_424ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 9
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RSI.i465 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %PC.i464
  %719 = add i64 %718, 10
  store i64 %719, i64* %PC.i464
  store i64 ptrtoint (%G__0xab00c0_type* @G__0xab00c0 to i64), i64* %RSI.i465, align 8
  store %struct.Memory* %loadMem_424ac4, %struct.Memory** %MEMORY
  %loadMem_424ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %725 to i32*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 15
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RBP.i463
  %730 = sub i64 %729, 32
  %731 = load i32, i32* %EAX.i462
  %732 = zext i32 %731 to i64
  %733 = load i64, i64* %PC.i461
  %734 = add i64 %733, 3
  store i64 %734, i64* %PC.i461
  %735 = inttoptr i64 %730 to i32*
  store i32 %731, i32* %735
  store %struct.Memory* %loadMem_424ace, %struct.Memory** %MEMORY
  %loadMem_424ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 11
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RDI.i459 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i460
  %746 = sub i64 %745, 8
  %747 = load i64, i64* %PC.i458
  %748 = add i64 %747, 3
  store i64 %748, i64* %PC.i458
  %749 = inttoptr i64 %746 to i32*
  %750 = load i32, i32* %749
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RDI.i459, align 8
  store %struct.Memory* %loadMem_424ad1, %struct.Memory** %MEMORY
  %loadMem1_424ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %PC.i457
  %756 = add i64 %755, -69588
  %757 = load i64, i64* %PC.i457
  %758 = add i64 %757, 5
  %759 = load i64, i64* %PC.i457
  %760 = add i64 %759, 5
  store i64 %760, i64* %PC.i457
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %762 = load i64, i64* %761, align 8
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %758, i64* %764
  store i64 %763, i64* %761, align 8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %756, i64* %765, align 8
  store %struct.Memory* %loadMem1_424ad4, %struct.Memory** %MEMORY
  %loadMem2_424ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424ad4 = load i64, i64* %3
  %call2_424ad4 = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64 %loadPC_424ad4, %struct.Memory* %loadMem2_424ad4)
  store %struct.Memory* %call2_424ad4, %struct.Memory** %MEMORY
  %loadMem_424ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %EAX.i455 = bitcast %union.anon* %771 to i32*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 15
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %RBP.i456
  %776 = sub i64 %775, 36
  %777 = load i32, i32* %EAX.i455
  %778 = zext i32 %777 to i64
  %779 = load i64, i64* %PC.i454
  %780 = add i64 %779, 3
  store i64 %780, i64* %PC.i454
  %781 = inttoptr i64 %776 to i32*
  store i32 %777, i32* %781
  store %struct.Memory* %loadMem_424ad9, %struct.Memory** %MEMORY
  %loadMem1_424adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %PC.i453
  %786 = add i64 %785, -93564
  %787 = load i64, i64* %PC.i453
  %788 = add i64 %787, 5
  %789 = load i64, i64* %PC.i453
  %790 = add i64 %789, 5
  store i64 %790, i64* %PC.i453
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = add i64 %792, -8
  %794 = inttoptr i64 %793 to i64*
  store i64 %788, i64* %794
  store i64 %793, i64* %791, align 8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %786, i64* %795, align 8
  store %struct.Memory* %loadMem1_424adc, %struct.Memory** %MEMORY
  %loadMem2_424adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424adc = load i64, i64* %3
  %call2_424adc = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_424adc, %struct.Memory* %loadMem2_424adc)
  store %struct.Memory* %call2_424adc, %struct.Memory** %MEMORY
  %loadMem_424ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 15
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %801 to i64*
  %802 = load i64, i64* %RBP.i452
  %803 = sub i64 %802, 68
  %804 = load i64, i64* %PC.i451
  %805 = add i64 %804, 7
  store i64 %805, i64* %PC.i451
  %806 = inttoptr i64 %803 to i32*
  store i32 1, i32* %806
  store %struct.Memory* %loadMem_424ae1, %struct.Memory** %MEMORY
  br label %block_.L_424ae8

block_.L_424ae8:                                  ; preds = %block_.L_424b9e, %block_.L_424aad
  %loadMem_424ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 15
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RBP.i450
  %814 = sub i64 %813, 68
  %815 = load i64, i64* %PC.i449
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC.i449
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817
  %819 = sub i32 %818, 5
  %820 = icmp ult i32 %818, 5
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %821, i8* %822, align 1
  %823 = and i32 %819, 255
  %824 = call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %827, i8* %828, align 1
  %829 = xor i32 %818, 5
  %830 = xor i32 %829, %819
  %831 = lshr i32 %830, 4
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %833, i8* %834, align 1
  %835 = icmp eq i32 %819, 0
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %836, i8* %837, align 1
  %838 = lshr i32 %819, 31
  %839 = trunc i32 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %839, i8* %840, align 1
  %841 = lshr i32 %818, 31
  %842 = xor i32 %838, %841
  %843 = add i32 %842, %841
  %844 = icmp eq i32 %843, 2
  %845 = zext i1 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %845, i8* %846, align 1
  store %struct.Memory* %loadMem_424ae8, %struct.Memory** %MEMORY
  %loadMem_424aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %PC.i448
  %851 = add i64 %850, 192
  %852 = load i64, i64* %PC.i448
  %853 = add i64 %852, 6
  %854 = load i64, i64* %PC.i448
  %855 = add i64 %854, 6
  store i64 %855, i64* %PC.i448
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %857 = load i8, i8* %856, align 1
  %858 = icmp eq i8 %857, 0
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %860 = load i8, i8* %859, align 1
  %861 = icmp ne i8 %860, 0
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %863 = load i8, i8* %862, align 1
  %864 = icmp ne i8 %863, 0
  %865 = xor i1 %861, %864
  %866 = xor i1 %865, true
  %867 = and i1 %858, %866
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %BRANCH_TAKEN, align 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %870 = select i1 %867, i64 %851, i64 %853
  store i64 %870, i64* %869, align 8
  store %struct.Memory* %loadMem_424aec, %struct.Memory** %MEMORY
  %loadBr_424aec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424aec = icmp eq i8 %loadBr_424aec, 1
  br i1 %cmpBr_424aec, label %block_.L_424bac, label %block_424af2

block_424af2:                                     ; preds = %block_.L_424ae8
  %loadMem_424af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 15
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %RBP.i447
  %878 = sub i64 %877, 28
  %879 = load i64, i64* %PC.i446
  %880 = add i64 %879, 7
  store i64 %880, i64* %PC.i446
  %881 = inttoptr i64 %878 to i32*
  store i32 0, i32* %881
  store %struct.Memory* %loadMem_424af2, %struct.Memory** %MEMORY
  br label %block_.L_424af9

block_.L_424af9:                                  ; preds = %block_.L_424b8b, %block_424af2
  %loadMem_424af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RBP.i445
  %892 = sub i64 %891, 28
  %893 = load i64, i64* %PC.i443
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC.i443
  %895 = inttoptr i64 %892 to i32*
  %896 = load i32, i32* %895
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_424af9, %struct.Memory** %MEMORY
  %loadMem_424afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %EAX.i441 = bitcast %union.anon* %903 to i32*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %906 to i64*
  %907 = load i32, i32* %EAX.i441
  %908 = zext i32 %907 to i64
  %909 = load i64, i64* %RBP.i442
  %910 = sub i64 %909, 36
  %911 = load i64, i64* %PC.i440
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC.i440
  %913 = inttoptr i64 %910 to i32*
  %914 = load i32, i32* %913
  %915 = sub i32 %907, %914
  %916 = icmp ult i32 %907, %914
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
  %925 = xor i32 %914, %907
  %926 = xor i32 %925, %915
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %929, i8* %930, align 1
  %931 = icmp eq i32 %915, 0
  %932 = zext i1 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %932, i8* %933, align 1
  %934 = lshr i32 %915, 31
  %935 = trunc i32 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %935, i8* %936, align 1
  %937 = lshr i32 %907, 31
  %938 = lshr i32 %914, 31
  %939 = xor i32 %938, %937
  %940 = xor i32 %934, %937
  %941 = add i32 %940, %939
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %943, i8* %944, align 1
  store %struct.Memory* %loadMem_424afc, %struct.Memory** %MEMORY
  %loadMem_424aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %PC.i439
  %949 = add i64 %948, 154
  %950 = load i64, i64* %PC.i439
  %951 = add i64 %950, 6
  %952 = load i64, i64* %PC.i439
  %953 = add i64 %952, 6
  store i64 %953, i64* %PC.i439
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %955 = load i8, i8* %954, align 1
  %956 = icmp ne i8 %955, 0
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %958 = load i8, i8* %957, align 1
  %959 = icmp ne i8 %958, 0
  %960 = xor i1 %956, %959
  %961 = xor i1 %960, true
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %BRANCH_TAKEN, align 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %964 = select i1 %960, i64 %951, i64 %949
  store i64 %964, i64* %963, align 8
  store %struct.Memory* %loadMem_424aff, %struct.Memory** %MEMORY
  %loadBr_424aff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424aff = icmp eq i8 %loadBr_424aff, 1
  br i1 %cmpBr_424aff, label %block_.L_424b99, label %block_424b05

block_424b05:                                     ; preds = %block_.L_424af9
  %loadMem_424b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i438
  %972 = sub i64 %971, 68
  %973 = load i64, i64* %PC.i437
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC.i437
  %975 = inttoptr i64 %972 to i32*
  %976 = load i32, i32* %975
  %977 = sub i32 %976, 5
  %978 = icmp ult i32 %976, 5
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %979, i8* %980, align 1
  %981 = and i32 %977, 255
  %982 = call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %985, i8* %986, align 1
  %987 = xor i32 %976, 5
  %988 = xor i32 %987, %977
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %991, i8* %992, align 1
  %993 = icmp eq i32 %977, 0
  %994 = zext i1 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %994, i8* %995, align 1
  %996 = lshr i32 %977, 31
  %997 = trunc i32 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %997, i8* %998, align 1
  %999 = lshr i32 %976, 31
  %1000 = xor i32 %996, %999
  %1001 = add i32 %1000, %999
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1003, i8* %1004, align 1
  store %struct.Memory* %loadMem_424b05, %struct.Memory** %MEMORY
  %loadMem_424b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %PC.i436
  %1009 = add i64 %1008, 36
  %1010 = load i64, i64* %PC.i436
  %1011 = add i64 %1010, 6
  %1012 = load i64, i64* %PC.i436
  %1013 = add i64 %1012, 6
  store i64 %1013, i64* %PC.i436
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1015 = load i8, i8* %1014, align 1
  %1016 = icmp ne i8 %1015, 0
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1018 = load i8, i8* %1017, align 1
  %1019 = icmp ne i8 %1018, 0
  %1020 = xor i1 %1016, %1019
  %1021 = xor i1 %1020, true
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %BRANCH_TAKEN, align 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1024 = select i1 %1020, i64 %1011, i64 %1009
  store i64 %1024, i64* %1023, align 8
  store %struct.Memory* %loadMem_424b09, %struct.Memory** %MEMORY
  %loadBr_424b09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424b09 = icmp eq i8 %loadBr_424b09, 1
  br i1 %cmpBr_424b09, label %block_.L_424b2d, label %block_424b0f

block_424b0f:                                     ; preds = %block_424b05
  %loadMem_424b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 1
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i435
  %1035 = sub i64 %1034, 28
  %1036 = load i64, i64* %PC.i433
  %1037 = add i64 %1036, 4
  store i64 %1037, i64* %PC.i433
  %1038 = inttoptr i64 %1035 to i32*
  %1039 = load i32, i32* %1038
  %1040 = sext i32 %1039 to i64
  store i64 %1040, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_424b0f, %struct.Memory** %MEMORY
  %loadMem_424b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 1
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 11
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RAX.i431
  %1051 = mul i64 %1050, 4
  %1052 = add i64 %1051, 11206848
  %1053 = load i64, i64* %PC.i430
  %1054 = add i64 %1053, 7
  store i64 %1054, i64* %PC.i430
  %1055 = inttoptr i64 %1052 to i32*
  %1056 = load i32, i32* %1055
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_424b13, %struct.Memory** %MEMORY
  %loadMem1_424b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1060 to i64*
  %1061 = load i64, i64* %PC.i429
  %1062 = add i64 %1061, -86938
  %1063 = load i64, i64* %PC.i429
  %1064 = add i64 %1063, 5
  %1065 = load i64, i64* %PC.i429
  %1066 = add i64 %1065, 5
  store i64 %1066, i64* %PC.i429
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1068 = load i64, i64* %1067, align 8
  %1069 = add i64 %1068, -8
  %1070 = inttoptr i64 %1069 to i64*
  store i64 %1064, i64* %1070
  store i64 %1069, i64* %1067, align 8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1062, i64* %1071, align 8
  store %struct.Memory* %loadMem1_424b1a, %struct.Memory** %MEMORY
  %loadMem2_424b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b1a = load i64, i64* %3
  %call2_424b1a = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_424b1a, %struct.Memory* %loadMem2_424b1a)
  store %struct.Memory* %call2_424b1a, %struct.Memory** %MEMORY
  %loadMem_424b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %EAX.i427 = bitcast %union.anon* %1077 to i32*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 15
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1080 to i64*
  %1081 = load i32, i32* %EAX.i427
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %RBP.i428
  %1084 = sub i64 %1083, 68
  %1085 = load i64, i64* %PC.i426
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC.i426
  %1087 = inttoptr i64 %1084 to i32*
  %1088 = load i32, i32* %1087
  %1089 = sub i32 %1081, %1088
  %1090 = icmp ult i32 %1081, %1088
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1091, i8* %1092, align 1
  %1093 = and i32 %1089, 255
  %1094 = call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1097, i8* %1098, align 1
  %1099 = xor i32 %1088, %1081
  %1100 = xor i32 %1099, %1089
  %1101 = lshr i32 %1100, 4
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1103, i8* %1104, align 1
  %1105 = icmp eq i32 %1089, 0
  %1106 = zext i1 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1106, i8* %1107, align 1
  %1108 = lshr i32 %1089, 31
  %1109 = trunc i32 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1109, i8* %1110, align 1
  %1111 = lshr i32 %1081, 31
  %1112 = lshr i32 %1088, 31
  %1113 = xor i32 %1112, %1111
  %1114 = xor i32 %1108, %1111
  %1115 = add i32 %1114, %1113
  %1116 = icmp eq i32 %1115, 2
  %1117 = zext i1 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1117, i8* %1118, align 1
  store %struct.Memory* %loadMem_424b1f, %struct.Memory** %MEMORY
  %loadMem_424b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %PC.i425
  %1123 = add i64 %1122, 11
  %1124 = load i64, i64* %PC.i425
  %1125 = add i64 %1124, 6
  %1126 = load i64, i64* %PC.i425
  %1127 = add i64 %1126, 6
  store i64 %1127, i64* %PC.i425
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1129 = load i8, i8* %1128, align 1
  store i8 %1129, i8* %BRANCH_TAKEN, align 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1131 = icmp ne i8 %1129, 0
  %1132 = select i1 %1131, i64 %1123, i64 %1125
  store i64 %1132, i64* %1130, align 8
  store %struct.Memory* %loadMem_424b22, %struct.Memory** %MEMORY
  %loadBr_424b22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424b22 = icmp eq i8 %loadBr_424b22, 1
  br i1 %cmpBr_424b22, label %block_.L_424b2d, label %block_424b28

block_424b28:                                     ; preds = %block_424b0f
  %loadMem_424b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %PC.i424
  %1137 = add i64 %1136, 99
  %1138 = load i64, i64* %PC.i424
  %1139 = add i64 %1138, 5
  store i64 %1139, i64* %PC.i424
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1137, i64* %1140, align 8
  store %struct.Memory* %loadMem_424b28, %struct.Memory** %MEMORY
  br label %block_.L_424b8b

block_.L_424b2d:                                  ; preds = %block_424b0f, %block_424b05
  %loadMem_424b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 9
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RSI.i422 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 15
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RBP.i423
  %1151 = sub i64 %1150, 48
  %1152 = load i64, i64* %PC.i421
  %1153 = add i64 %1152, 4
  store i64 %1153, i64* %PC.i421
  store i64 %1151, i64* %RSI.i422, align 8
  store %struct.Memory* %loadMem_424b2d, %struct.Memory** %MEMORY
  %loadMem_424b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 1
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 15
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1162 to i64*
  %1163 = load i64, i64* %RBP.i420
  %1164 = sub i64 %1163, 28
  %1165 = load i64, i64* %PC.i418
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %PC.i418
  %1167 = inttoptr i64 %1164 to i32*
  %1168 = load i32, i32* %1167
  %1169 = sext i32 %1168 to i64
  store i64 %1169, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_424b31, %struct.Memory** %MEMORY
  %loadMem_424b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 1
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 11
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RDI.i417 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RAX.i416
  %1180 = mul i64 %1179, 4
  %1181 = add i64 %1180, 11206848
  %1182 = load i64, i64* %PC.i415
  %1183 = add i64 %1182, 7
  store i64 %1183, i64* %PC.i415
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RDI.i417, align 8
  store %struct.Memory* %loadMem_424b35, %struct.Memory** %MEMORY
  %loadMem1_424b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %PC.i414
  %1191 = add i64 %1190, 233476
  %1192 = load i64, i64* %PC.i414
  %1193 = add i64 %1192, 5
  %1194 = load i64, i64* %PC.i414
  %1195 = add i64 %1194, 5
  store i64 %1195, i64* %PC.i414
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1197 = load i64, i64* %1196, align 8
  %1198 = add i64 %1197, -8
  %1199 = inttoptr i64 %1198 to i64*
  store i64 %1193, i64* %1199
  store i64 %1198, i64* %1196, align 8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1191, i64* %1200, align 8
  store %struct.Memory* %loadMem1_424b3c, %struct.Memory** %MEMORY
  %loadMem2_424b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b3c = load i64, i64* %3
  %call2_424b3c = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_424b3c, %struct.Memory* %loadMem2_424b3c)
  store %struct.Memory* %call2_424b3c, %struct.Memory** %MEMORY
  %loadMem_424b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %EAX.i413 = bitcast %union.anon* %1206 to i32*
  %1207 = load i32, i32* %EAX.i413
  %1208 = zext i32 %1207 to i64
  %1209 = load i64, i64* %PC.i412
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC.i412
  %1211 = sub i32 %1207, 5
  %1212 = icmp ult i32 %1207, 5
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1213, i8* %1214, align 1
  %1215 = and i32 %1211, 255
  %1216 = call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1219, i8* %1220, align 1
  %1221 = xor i64 5, %1208
  %1222 = trunc i64 %1221 to i32
  %1223 = xor i32 %1222, %1211
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1226, i8* %1227, align 1
  %1228 = icmp eq i32 %1211, 0
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1229, i8* %1230, align 1
  %1231 = lshr i32 %1211, 31
  %1232 = trunc i32 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1232, i8* %1233, align 1
  %1234 = lshr i32 %1207, 31
  %1235 = xor i32 %1231, %1234
  %1236 = add i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1238, i8* %1239, align 1
  store %struct.Memory* %loadMem_424b41, %struct.Memory** %MEMORY
  %loadMem_424b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %PC.i411
  %1244 = add i64 %1243, 66
  %1245 = load i64, i64* %PC.i411
  %1246 = add i64 %1245, 6
  %1247 = load i64, i64* %PC.i411
  %1248 = add i64 %1247, 6
  store i64 %1248, i64* %PC.i411
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1250 = load i8, i8* %1249, align 1
  %1251 = icmp eq i8 %1250, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %BRANCH_TAKEN, align 1
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1254 = select i1 %1251, i64 %1244, i64 %1246
  store i64 %1254, i64* %1253, align 8
  store %struct.Memory* %loadMem_424b44, %struct.Memory** %MEMORY
  %loadBr_424b44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424b44 = icmp eq i8 %loadBr_424b44, 1
  br i1 %cmpBr_424b44, label %block_.L_424b86, label %block_424b4a

block_424b4a:                                     ; preds = %block_.L_424b2d
  %loadMem_424b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 11
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RDI.i409 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i410
  %1265 = sub i64 %1264, 48
  %1266 = load i64, i64* %PC.i408
  %1267 = add i64 %1266, 3
  store i64 %1267, i64* %PC.i408
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RDI.i409, align 8
  store %struct.Memory* %loadMem_424b4a, %struct.Memory** %MEMORY
  %loadMem_424b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 15
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RBP.i407
  %1281 = sub i64 %1280, 28
  %1282 = load i64, i64* %PC.i405
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC.i405
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284
  %1286 = sext i32 %1285 to i64
  store i64 %1286, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_424b4d, %struct.Memory** %MEMORY
  %loadMem_424b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 9
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RSI.i404 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %RAX.i403
  %1297 = mul i64 %1296, 4
  %1298 = add i64 %1297, 11206848
  %1299 = load i64, i64* %PC.i402
  %1300 = add i64 %1299, 7
  store i64 %1300, i64* %PC.i402
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RSI.i404, align 8
  store %struct.Memory* %loadMem_424b51, %struct.Memory** %MEMORY
  %loadMem1_424b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %PC.i401
  %1308 = add i64 %1307, -65704
  %1309 = load i64, i64* %PC.i401
  %1310 = add i64 %1309, 5
  %1311 = load i64, i64* %PC.i401
  %1312 = add i64 %1311, 5
  store i64 %1312, i64* %PC.i401
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1314 = load i64, i64* %1313, align 8
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1310, i64* %1316
  store i64 %1315, i64* %1313, align 8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1308, i64* %1317, align 8
  store %struct.Memory* %loadMem1_424b58, %struct.Memory** %MEMORY
  %loadMem2_424b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b58 = load i64, i64* %3
  %call2_424b58 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64 %loadPC_424b58, %struct.Memory* %loadMem2_424b58)
  store %struct.Memory* %call2_424b58, %struct.Memory** %MEMORY
  %loadMem_424b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 1
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %EAX.i400 = bitcast %union.anon* %1323 to i32*
  %1324 = load i32, i32* %EAX.i400
  %1325 = zext i32 %1324 to i64
  %1326 = load i64, i64* %PC.i399
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC.i399
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1328, align 1
  %1329 = and i32 %1324, 255
  %1330 = call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1333, i8* %1334, align 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1335, align 1
  %1336 = icmp eq i32 %1324, 0
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1337, i8* %1338, align 1
  %1339 = lshr i32 %1324, 31
  %1340 = trunc i32 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1340, i8* %1341, align 1
  %1342 = lshr i32 %1324, 31
  %1343 = xor i32 %1339, %1342
  %1344 = add i32 %1343, %1342
  %1345 = icmp eq i32 %1344, 2
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1346, i8* %1347, align 1
  store %struct.Memory* %loadMem_424b5d, %struct.Memory** %MEMORY
  %loadMem_424b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %PC.i398
  %1352 = add i64 %1351, 27
  %1353 = load i64, i64* %PC.i398
  %1354 = add i64 %1353, 6
  %1355 = load i64, i64* %PC.i398
  %1356 = add i64 %1355, 6
  store i64 %1356, i64* %PC.i398
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1358 = load i8, i8* %1357, align 1
  store i8 %1358, i8* %BRANCH_TAKEN, align 1
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1360 = icmp ne i8 %1358, 0
  %1361 = select i1 %1360, i64 %1352, i64 %1354
  store i64 %1361, i64* %1359, align 8
  store %struct.Memory* %loadMem_424b60, %struct.Memory** %MEMORY
  %loadBr_424b60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424b60 = icmp eq i8 %loadBr_424b60, 1
  br i1 %cmpBr_424b60, label %block_.L_424b7b, label %block_424b66

block_424b66:                                     ; preds = %block_424b4a
  %loadMem_424b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 1
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 15
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %RBP.i397
  %1372 = sub i64 %1371, 48
  %1373 = load i64, i64* %PC.i395
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC.i395
  %1375 = inttoptr i64 %1372 to i32*
  %1376 = load i32, i32* %1375
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_424b66, %struct.Memory** %MEMORY
  %loadMem_424b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 5
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i394
  %1388 = sub i64 %1387, 24
  %1389 = load i64, i64* %PC.i392
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %PC.i392
  %1391 = inttoptr i64 %1388 to i64*
  %1392 = load i64, i64* %1391
  store i64 %1392, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_424b69, %struct.Memory** %MEMORY
  %loadMem_424b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 1
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %1398 to i32*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 5
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %RCX.i391
  %1403 = load i32, i32* %EAX.i390
  %1404 = zext i32 %1403 to i64
  %1405 = load i64, i64* %PC.i389
  %1406 = add i64 %1405, 2
  store i64 %1406, i64* %PC.i389
  %1407 = inttoptr i64 %1402 to i32*
  store i32 %1403, i32* %1407
  store %struct.Memory* %loadMem_424b6d, %struct.Memory** %MEMORY
  %loadMem_424b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i388
  %1415 = sub i64 %1414, 4
  %1416 = load i64, i64* %PC.i387
  %1417 = add i64 %1416, 7
  store i64 %1417, i64* %PC.i387
  %1418 = inttoptr i64 %1415 to i32*
  store i32 1, i32* %1418
  store %struct.Memory* %loadMem_424b6f, %struct.Memory** %MEMORY
  %loadMem_424b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i386
  %1423 = add i64 %1422, 780
  %1424 = load i64, i64* %PC.i386
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i386
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1426, align 8
  store %struct.Memory* %loadMem_424b76, %struct.Memory** %MEMORY
  br label %block_.L_424e82

block_.L_424b7b:                                  ; preds = %block_424b4a
  %loadMem_424b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 1
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 15
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RBP.i385
  %1437 = sub i64 %1436, 48
  %1438 = load i64, i64* %PC.i383
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %PC.i383
  %1440 = inttoptr i64 %1437 to i32*
  %1441 = load i32, i32* %1440
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_424b7b, %struct.Memory** %MEMORY
  %loadMem_424b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 1
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %EAX.i381 = bitcast %union.anon* %1448 to i32*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %RBP.i382
  %1453 = sub i64 %1452, 64
  %1454 = load i32, i32* %EAX.i381
  %1455 = zext i32 %1454 to i64
  %1456 = load i64, i64* %PC.i380
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %PC.i380
  %1458 = inttoptr i64 %1453 to i32*
  store i32 %1454, i32* %1458
  store %struct.Memory* %loadMem_424b7e, %struct.Memory** %MEMORY
  %loadMem_424b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %PC.i379
  %1463 = add i64 %1462, 5
  %1464 = load i64, i64* %PC.i379
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC.i379
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1463, i64* %1466, align 8
  store %struct.Memory* %loadMem_424b81, %struct.Memory** %MEMORY
  br label %block_.L_424b86

block_.L_424b86:                                  ; preds = %block_.L_424b7b, %block_.L_424b2d
  %loadMem_424b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %PC.i378
  %1471 = add i64 %1470, 5
  %1472 = load i64, i64* %PC.i378
  %1473 = add i64 %1472, 5
  store i64 %1473, i64* %PC.i378
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1471, i64* %1474, align 8
  store %struct.Memory* %loadMem_424b86, %struct.Memory** %MEMORY
  br label %block_.L_424b8b

block_.L_424b8b:                                  ; preds = %block_.L_424b86, %block_424b28
  %loadMem_424b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 1
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 15
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1483 to i64*
  %1484 = load i64, i64* %RBP.i377
  %1485 = sub i64 %1484, 28
  %1486 = load i64, i64* %PC.i375
  %1487 = add i64 %1486, 3
  store i64 %1487, i64* %PC.i375
  %1488 = inttoptr i64 %1485 to i32*
  %1489 = load i32, i32* %1488
  %1490 = zext i32 %1489 to i64
  store i64 %1490, i64* %RAX.i376, align 8
  store %struct.Memory* %loadMem_424b8b, %struct.Memory** %MEMORY
  %loadMem_424b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 1
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %RAX.i374
  %1498 = load i64, i64* %PC.i373
  %1499 = add i64 %1498, 3
  store i64 %1499, i64* %PC.i373
  %1500 = trunc i64 %1497 to i32
  %1501 = add i32 1, %1500
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RAX.i374, align 8
  %1503 = icmp ult i32 %1501, %1500
  %1504 = icmp ult i32 %1501, 1
  %1505 = or i1 %1503, %1504
  %1506 = zext i1 %1505 to i8
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1506, i8* %1507, align 1
  %1508 = and i32 %1501, 255
  %1509 = call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1512, i8* %1513, align 1
  %1514 = xor i64 1, %1497
  %1515 = trunc i64 %1514 to i32
  %1516 = xor i32 %1515, %1501
  %1517 = lshr i32 %1516, 4
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1519, i8* %1520, align 1
  %1521 = icmp eq i32 %1501, 0
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1522, i8* %1523, align 1
  %1524 = lshr i32 %1501, 31
  %1525 = trunc i32 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1525, i8* %1526, align 1
  %1527 = lshr i32 %1500, 31
  %1528 = xor i32 %1524, %1527
  %1529 = add i32 %1528, %1524
  %1530 = icmp eq i32 %1529, 2
  %1531 = zext i1 %1530 to i8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1531, i8* %1532, align 1
  store %struct.Memory* %loadMem_424b8e, %struct.Memory** %MEMORY
  %loadMem_424b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 1
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %1538 to i32*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 15
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1541 to i64*
  %1542 = load i64, i64* %RBP.i372
  %1543 = sub i64 %1542, 28
  %1544 = load i32, i32* %EAX.i371
  %1545 = zext i32 %1544 to i64
  %1546 = load i64, i64* %PC.i370
  %1547 = add i64 %1546, 3
  store i64 %1547, i64* %PC.i370
  %1548 = inttoptr i64 %1543 to i32*
  store i32 %1544, i32* %1548
  store %struct.Memory* %loadMem_424b91, %struct.Memory** %MEMORY
  %loadMem_424b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %PC.i369
  %1553 = add i64 %1552, -155
  %1554 = load i64, i64* %PC.i369
  %1555 = add i64 %1554, 5
  store i64 %1555, i64* %PC.i369
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1553, i64* %1556, align 8
  store %struct.Memory* %loadMem_424b94, %struct.Memory** %MEMORY
  br label %block_.L_424af9

block_.L_424b99:                                  ; preds = %block_.L_424af9
  %loadMem_424b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1559 to i64*
  %1560 = load i64, i64* %PC.i368
  %1561 = add i64 %1560, 5
  %1562 = load i64, i64* %PC.i368
  %1563 = add i64 %1562, 5
  store i64 %1563, i64* %PC.i368
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1561, i64* %1564, align 8
  store %struct.Memory* %loadMem_424b99, %struct.Memory** %MEMORY
  br label %block_.L_424b9e

block_.L_424b9e:                                  ; preds = %block_.L_424b99
  %loadMem_424b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 1
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 15
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %1573 to i64*
  %1574 = load i64, i64* %RBP.i367
  %1575 = sub i64 %1574, 68
  %1576 = load i64, i64* %PC.i365
  %1577 = add i64 %1576, 3
  store i64 %1577, i64* %PC.i365
  %1578 = inttoptr i64 %1575 to i32*
  %1579 = load i32, i32* %1578
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_424b9e, %struct.Memory** %MEMORY
  %loadMem_424ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 1
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %RAX.i364
  %1588 = load i64, i64* %PC.i363
  %1589 = add i64 %1588, 3
  store i64 %1589, i64* %PC.i363
  %1590 = trunc i64 %1587 to i32
  %1591 = add i32 1, %1590
  %1592 = zext i32 %1591 to i64
  store i64 %1592, i64* %RAX.i364, align 8
  %1593 = icmp ult i32 %1591, %1590
  %1594 = icmp ult i32 %1591, 1
  %1595 = or i1 %1593, %1594
  %1596 = zext i1 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1596, i8* %1597, align 1
  %1598 = and i32 %1591, 255
  %1599 = call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1602, i8* %1603, align 1
  %1604 = xor i64 1, %1587
  %1605 = trunc i64 %1604 to i32
  %1606 = xor i32 %1605, %1591
  %1607 = lshr i32 %1606, 4
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1609, i8* %1610, align 1
  %1611 = icmp eq i32 %1591, 0
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1612, i8* %1613, align 1
  %1614 = lshr i32 %1591, 31
  %1615 = trunc i32 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1615, i8* %1616, align 1
  %1617 = lshr i32 %1590, 31
  %1618 = xor i32 %1614, %1617
  %1619 = add i32 %1618, %1614
  %1620 = icmp eq i32 %1619, 2
  %1621 = zext i1 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1621, i8* %1622, align 1
  store %struct.Memory* %loadMem_424ba1, %struct.Memory** %MEMORY
  %loadMem_424ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 1
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %1628 to i32*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 15
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %RBP.i362
  %1633 = sub i64 %1632, 68
  %1634 = load i32, i32* %EAX.i361
  %1635 = zext i32 %1634 to i64
  %1636 = load i64, i64* %PC.i360
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %PC.i360
  %1638 = inttoptr i64 %1633 to i32*
  store i32 %1634, i32* %1638
  store %struct.Memory* %loadMem_424ba4, %struct.Memory** %MEMORY
  %loadMem_424ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %PC.i359
  %1643 = add i64 %1642, -191
  %1644 = load i64, i64* %PC.i359
  %1645 = add i64 %1644, 5
  store i64 %1645, i64* %PC.i359
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1643, i64* %1646, align 8
  store %struct.Memory* %loadMem_424ba7, %struct.Memory** %MEMORY
  br label %block_.L_424ae8

block_.L_424bac:                                  ; preds = %block_.L_424ae8
  %loadMem_424bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RBP.i358
  %1654 = sub i64 %1653, 40
  %1655 = load i64, i64* %PC.i357
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC.i357
  %1657 = inttoptr i64 %1654 to i32*
  %1658 = load i32, i32* %1657
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1659, align 1
  %1660 = and i32 %1658, 255
  %1661 = call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1664, i8* %1665, align 1
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1666, align 1
  %1667 = icmp eq i32 %1658, 0
  %1668 = zext i1 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1668, i8* %1669, align 1
  %1670 = lshr i32 %1658, 31
  %1671 = trunc i32 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1671, i8* %1672, align 1
  %1673 = lshr i32 %1658, 31
  %1674 = xor i32 %1670, %1673
  %1675 = add i32 %1674, %1673
  %1676 = icmp eq i32 %1675, 2
  %1677 = zext i1 %1676 to i8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1677, i8* %1678, align 1
  store %struct.Memory* %loadMem_424bac, %struct.Memory** %MEMORY
  %loadMem_424bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %PC.i356
  %1683 = add i64 %1682, 106
  %1684 = load i64, i64* %PC.i356
  %1685 = add i64 %1684, 6
  %1686 = load i64, i64* %PC.i356
  %1687 = add i64 %1686, 6
  store i64 %1687, i64* %PC.i356
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1689 = load i8, i8* %1688, align 1
  %1690 = icmp eq i8 %1689, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %BRANCH_TAKEN, align 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1693 = select i1 %1690, i64 %1683, i64 %1685
  store i64 %1693, i64* %1692, align 8
  store %struct.Memory* %loadMem_424bb0, %struct.Memory** %MEMORY
  %loadBr_424bb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424bb0 = icmp eq i8 %loadBr_424bb0, 1
  br i1 %cmpBr_424bb0, label %block_.L_424c1a, label %block_424bb6

block_424bb6:                                     ; preds = %block_.L_424bac
  %loadMem_424bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 15
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RBP.i355
  %1701 = sub i64 %1700, 28
  %1702 = load i64, i64* %PC.i354
  %1703 = add i64 %1702, 7
  store i64 %1703, i64* %PC.i354
  %1704 = inttoptr i64 %1701 to i32*
  store i32 0, i32* %1704
  store %struct.Memory* %loadMem_424bb6, %struct.Memory** %MEMORY
  br label %block_.L_424bbd

block_.L_424bbd:                                  ; preds = %block_.L_424c07, %block_424bb6
  %loadMem_424bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 15
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1713 to i64*
  %1714 = load i64, i64* %RBP.i353
  %1715 = sub i64 %1714, 28
  %1716 = load i64, i64* %PC.i351
  %1717 = add i64 %1716, 3
  store i64 %1717, i64* %PC.i351
  %1718 = inttoptr i64 %1715 to i32*
  %1719 = load i32, i32* %1718
  %1720 = zext i32 %1719 to i64
  store i64 %1720, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_424bbd, %struct.Memory** %MEMORY
  %loadMem_424bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 1
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %EAX.i349 = bitcast %union.anon* %1726 to i32*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 15
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1729 to i64*
  %1730 = load i32, i32* %EAX.i349
  %1731 = zext i32 %1730 to i64
  %1732 = load i64, i64* %RBP.i350
  %1733 = sub i64 %1732, 32
  %1734 = load i64, i64* %PC.i348
  %1735 = add i64 %1734, 3
  store i64 %1735, i64* %PC.i348
  %1736 = inttoptr i64 %1733 to i32*
  %1737 = load i32, i32* %1736
  %1738 = sub i32 %1730, %1737
  %1739 = icmp ult i32 %1730, %1737
  %1740 = zext i1 %1739 to i8
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1740, i8* %1741, align 1
  %1742 = and i32 %1738, 255
  %1743 = call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1746, i8* %1747, align 1
  %1748 = xor i32 %1737, %1730
  %1749 = xor i32 %1748, %1738
  %1750 = lshr i32 %1749, 4
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1752, i8* %1753, align 1
  %1754 = icmp eq i32 %1738, 0
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1755, i8* %1756, align 1
  %1757 = lshr i32 %1738, 31
  %1758 = trunc i32 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i32 %1730, 31
  %1761 = lshr i32 %1737, 31
  %1762 = xor i32 %1761, %1760
  %1763 = xor i32 %1757, %1760
  %1764 = add i32 %1763, %1762
  %1765 = icmp eq i32 %1764, 2
  %1766 = zext i1 %1765 to i8
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1766, i8* %1767, align 1
  store %struct.Memory* %loadMem_424bc0, %struct.Memory** %MEMORY
  %loadMem_424bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %PC.i347
  %1772 = add i64 %1771, 82
  %1773 = load i64, i64* %PC.i347
  %1774 = add i64 %1773, 6
  %1775 = load i64, i64* %PC.i347
  %1776 = add i64 %1775, 6
  store i64 %1776, i64* %PC.i347
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1778 = load i8, i8* %1777, align 1
  %1779 = icmp ne i8 %1778, 0
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1781 = load i8, i8* %1780, align 1
  %1782 = icmp ne i8 %1781, 0
  %1783 = xor i1 %1779, %1782
  %1784 = xor i1 %1783, true
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %BRANCH_TAKEN, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1787 = select i1 %1783, i64 %1774, i64 %1772
  store i64 %1787, i64* %1786, align 8
  store %struct.Memory* %loadMem_424bc3, %struct.Memory** %MEMORY
  %loadBr_424bc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424bc3 = icmp eq i8 %loadBr_424bc3, 1
  br i1 %cmpBr_424bc3, label %block_.L_424c15, label %block_424bc9

block_424bc9:                                     ; preds = %block_.L_424bbd
  %loadMem_424bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 1
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 15
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %RBP.i346
  %1798 = sub i64 %1797, 28
  %1799 = load i64, i64* %PC.i344
  %1800 = add i64 %1799, 4
  store i64 %1800, i64* %PC.i344
  %1801 = inttoptr i64 %1798 to i32*
  %1802 = load i32, i32* %1801
  %1803 = sext i32 %1802 to i64
  store i64 %1803, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_424bc9, %struct.Memory** %MEMORY
  %loadMem_424bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 1
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 11
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RDI.i343 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RAX.i342
  %1814 = mul i64 %1813, 4
  %1815 = add i64 %1814, 11205872
  %1816 = load i64, i64* %PC.i341
  %1817 = add i64 %1816, 7
  store i64 %1817, i64* %PC.i341
  %1818 = inttoptr i64 %1815 to i32*
  %1819 = load i32, i32* %1818
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RDI.i343, align 8
  store %struct.Memory* %loadMem_424bcd, %struct.Memory** %MEMORY
  %loadMem_424bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 9
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RSI.i339 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RBP.i340
  %1831 = sub i64 %1830, 12
  %1832 = load i64, i64* %PC.i338
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC.i338
  %1834 = inttoptr i64 %1831 to i32*
  %1835 = load i32, i32* %1834
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RSI.i339, align 8
  store %struct.Memory* %loadMem_424bd4, %struct.Memory** %MEMORY
  %loadMem1_424bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %PC.i337
  %1841 = add i64 %1840, 290905
  %1842 = load i64, i64* %PC.i337
  %1843 = add i64 %1842, 5
  %1844 = load i64, i64* %PC.i337
  %1845 = add i64 %1844, 5
  store i64 %1845, i64* %PC.i337
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1847 = load i64, i64* %1846, align 8
  %1848 = add i64 %1847, -8
  %1849 = inttoptr i64 %1848 to i64*
  store i64 %1843, i64* %1849
  store i64 %1848, i64* %1846, align 8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1841, i64* %1850, align 8
  store %struct.Memory* %loadMem1_424bd7, %struct.Memory** %MEMORY
  %loadMem2_424bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424bd7 = load i64, i64* %3
  %call2_424bd7 = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64 %loadPC_424bd7, %struct.Memory* %loadMem2_424bd7)
  store %struct.Memory* %call2_424bd7, %struct.Memory** %MEMORY
  %loadMem_424bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 1
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %1856 to i32*
  %1857 = load i32, i32* %EAX.i336
  %1858 = zext i32 %1857 to i64
  %1859 = load i64, i64* %PC.i335
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %PC.i335
  %1861 = sub i32 %1857, 5
  %1862 = icmp ult i32 %1857, 5
  %1863 = zext i1 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1863, i8* %1864, align 1
  %1865 = and i32 %1861, 255
  %1866 = call i32 @llvm.ctpop.i32(i32 %1865)
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  %1869 = xor i8 %1868, 1
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1869, i8* %1870, align 1
  %1871 = xor i64 5, %1858
  %1872 = trunc i64 %1871 to i32
  %1873 = xor i32 %1872, %1861
  %1874 = lshr i32 %1873, 4
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1876, i8* %1877, align 1
  %1878 = icmp eq i32 %1861, 0
  %1879 = zext i1 %1878 to i8
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1879, i8* %1880, align 1
  %1881 = lshr i32 %1861, 31
  %1882 = trunc i32 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1882, i8* %1883, align 1
  %1884 = lshr i32 %1857, 31
  %1885 = xor i32 %1881, %1884
  %1886 = add i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1888, i8* %1889, align 1
  store %struct.Memory* %loadMem_424bdc, %struct.Memory** %MEMORY
  %loadMem_424bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i334
  %1894 = add i64 %1893, 35
  %1895 = load i64, i64* %PC.i334
  %1896 = add i64 %1895, 6
  %1897 = load i64, i64* %PC.i334
  %1898 = add i64 %1897, 6
  store i64 %1898, i64* %PC.i334
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1900 = load i8, i8* %1899, align 1
  %1901 = icmp eq i8 %1900, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %BRANCH_TAKEN, align 1
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1904 = select i1 %1901, i64 %1894, i64 %1896
  store i64 %1904, i64* %1903, align 8
  store %struct.Memory* %loadMem_424bdf, %struct.Memory** %MEMORY
  %loadBr_424bdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424bdf = icmp eq i8 %loadBr_424bdf, 1
  br i1 %cmpBr_424bdf, label %block_.L_424c02, label %block_424be5

block_424be5:                                     ; preds = %block_424bc9
  %loadMem_424be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 33
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 1
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 15
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %RBP.i333
  %1915 = sub i64 %1914, 28
  %1916 = load i64, i64* %PC.i331
  %1917 = add i64 %1916, 4
  store i64 %1917, i64* %PC.i331
  %1918 = inttoptr i64 %1915 to i32*
  %1919 = load i32, i32* %1918
  %1920 = sext i32 %1919 to i64
  store i64 %1920, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_424be5, %struct.Memory** %MEMORY
  %loadMem_424be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 1
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %RAX.i329
  %1931 = mul i64 %1930, 4
  %1932 = add i64 %1931, 11205872
  %1933 = load i64, i64* %PC.i328
  %1934 = add i64 %1933, 7
  store i64 %1934, i64* %PC.i328
  %1935 = inttoptr i64 %1932 to i32*
  %1936 = load i32, i32* %1935
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RCX.i330, align 8
  store %struct.Memory* %loadMem_424be9, %struct.Memory** %MEMORY
  %loadMem_424bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 1
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 15
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1946 to i64*
  %1947 = load i64, i64* %RBP.i327
  %1948 = sub i64 %1947, 24
  %1949 = load i64, i64* %PC.i325
  %1950 = add i64 %1949, 4
  store i64 %1950, i64* %PC.i325
  %1951 = inttoptr i64 %1948 to i64*
  %1952 = load i64, i64* %1951
  store i64 %1952, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_424bf0, %struct.Memory** %MEMORY
  %loadMem_424bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 5
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %ECX.i323 = bitcast %union.anon* %1958 to i32*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 1
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1961 to i64*
  %1962 = load i64, i64* %RAX.i324
  %1963 = load i32, i32* %ECX.i323
  %1964 = zext i32 %1963 to i64
  %1965 = load i64, i64* %PC.i322
  %1966 = add i64 %1965, 2
  store i64 %1966, i64* %PC.i322
  %1967 = inttoptr i64 %1962 to i32*
  store i32 %1963, i32* %1967
  store %struct.Memory* %loadMem_424bf4, %struct.Memory** %MEMORY
  %loadMem_424bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 15
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %RBP.i321
  %1975 = sub i64 %1974, 40
  %1976 = load i64, i64* %PC.i320
  %1977 = add i64 %1976, 7
  store i64 %1977, i64* %PC.i320
  %1978 = inttoptr i64 %1975 to i32*
  store i32 1, i32* %1978
  store %struct.Memory* %loadMem_424bf6, %struct.Memory** %MEMORY
  %loadMem_424bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %PC.i319
  %1983 = add i64 %1982, 24
  %1984 = load i64, i64* %PC.i319
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i319
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1983, i64* %1986, align 8
  store %struct.Memory* %loadMem_424bfd, %struct.Memory** %MEMORY
  br label %block_.L_424c15

block_.L_424c02:                                  ; preds = %block_424bc9
  %loadMem_424c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1989 to i64*
  %1990 = load i64, i64* %PC.i318
  %1991 = add i64 %1990, 5
  %1992 = load i64, i64* %PC.i318
  %1993 = add i64 %1992, 5
  store i64 %1993, i64* %PC.i318
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1991, i64* %1994, align 8
  store %struct.Memory* %loadMem_424c02, %struct.Memory** %MEMORY
  br label %block_.L_424c07

block_.L_424c07:                                  ; preds = %block_.L_424c02
  %loadMem_424c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 1
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %RBP.i317
  %2005 = sub i64 %2004, 28
  %2006 = load i64, i64* %PC.i315
  %2007 = add i64 %2006, 3
  store i64 %2007, i64* %PC.i315
  %2008 = inttoptr i64 %2005 to i32*
  %2009 = load i32, i32* %2008
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_424c07, %struct.Memory** %MEMORY
  %loadMem_424c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 1
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2016 to i64*
  %2017 = load i64, i64* %RAX.i314
  %2018 = load i64, i64* %PC.i313
  %2019 = add i64 %2018, 3
  store i64 %2019, i64* %PC.i313
  %2020 = trunc i64 %2017 to i32
  %2021 = add i32 1, %2020
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RAX.i314, align 8
  %2023 = icmp ult i32 %2021, %2020
  %2024 = icmp ult i32 %2021, 1
  %2025 = or i1 %2023, %2024
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2026, i8* %2027, align 1
  %2028 = and i32 %2021, 255
  %2029 = call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2032, i8* %2033, align 1
  %2034 = xor i64 1, %2017
  %2035 = trunc i64 %2034 to i32
  %2036 = xor i32 %2035, %2021
  %2037 = lshr i32 %2036, 4
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2039, i8* %2040, align 1
  %2041 = icmp eq i32 %2021, 0
  %2042 = zext i1 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2042, i8* %2043, align 1
  %2044 = lshr i32 %2021, 31
  %2045 = trunc i32 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2045, i8* %2046, align 1
  %2047 = lshr i32 %2020, 31
  %2048 = xor i32 %2044, %2047
  %2049 = add i32 %2048, %2044
  %2050 = icmp eq i32 %2049, 2
  %2051 = zext i1 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2051, i8* %2052, align 1
  store %struct.Memory* %loadMem_424c0a, %struct.Memory** %MEMORY
  %loadMem_424c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %EAX.i311 = bitcast %union.anon* %2058 to i32*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i312
  %2063 = sub i64 %2062, 28
  %2064 = load i32, i32* %EAX.i311
  %2065 = zext i32 %2064 to i64
  %2066 = load i64, i64* %PC.i310
  %2067 = add i64 %2066, 3
  store i64 %2067, i64* %PC.i310
  %2068 = inttoptr i64 %2063 to i32*
  store i32 %2064, i32* %2068
  store %struct.Memory* %loadMem_424c0d, %struct.Memory** %MEMORY
  %loadMem_424c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %PC.i309
  %2073 = add i64 %2072, -83
  %2074 = load i64, i64* %PC.i309
  %2075 = add i64 %2074, 5
  store i64 %2075, i64* %PC.i309
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2073, i64* %2076, align 8
  store %struct.Memory* %loadMem_424c10, %struct.Memory** %MEMORY
  br label %block_.L_424bbd

block_.L_424c15:                                  ; preds = %block_424be5, %block_.L_424bbd
  %loadMem_424c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %PC.i308
  %2081 = add i64 %2080, 5
  %2082 = load i64, i64* %PC.i308
  %2083 = add i64 %2082, 5
  store i64 %2083, i64* %PC.i308
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2081, i64* %2084, align 8
  store %struct.Memory* %loadMem_424c15, %struct.Memory** %MEMORY
  br label %block_.L_424c1a

block_.L_424c1a:                                  ; preds = %block_.L_424c15, %block_.L_424bac
  %loadMem_424c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 15
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RBP.i307
  %2092 = sub i64 %2091, 40
  %2093 = load i64, i64* %PC.i306
  %2094 = add i64 %2093, 4
  store i64 %2094, i64* %PC.i306
  %2095 = inttoptr i64 %2092 to i32*
  %2096 = load i32, i32* %2095
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2097, align 1
  %2098 = and i32 %2096, 255
  %2099 = call i32 @llvm.ctpop.i32(i32 %2098)
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2102, i8* %2103, align 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2104, align 1
  %2105 = icmp eq i32 %2096, 0
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2106, i8* %2107, align 1
  %2108 = lshr i32 %2096, 31
  %2109 = trunc i32 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2109, i8* %2110, align 1
  %2111 = lshr i32 %2096, 31
  %2112 = xor i32 %2108, %2111
  %2113 = add i32 %2112, %2111
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2115, i8* %2116, align 1
  store %struct.Memory* %loadMem_424c1a, %struct.Memory** %MEMORY
  %loadMem_424c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %PC.i305
  %2121 = add i64 %2120, 170
  %2122 = load i64, i64* %PC.i305
  %2123 = add i64 %2122, 6
  %2124 = load i64, i64* %PC.i305
  %2125 = add i64 %2124, 6
  store i64 %2125, i64* %PC.i305
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2127 = load i8, i8* %2126, align 1
  %2128 = icmp eq i8 %2127, 0
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %BRANCH_TAKEN, align 1
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2131 = select i1 %2128, i64 %2121, i64 %2123
  store i64 %2131, i64* %2130, align 8
  store %struct.Memory* %loadMem_424c1e, %struct.Memory** %MEMORY
  %loadBr_424c1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424c1e = icmp eq i8 %loadBr_424c1e, 1
  br i1 %cmpBr_424c1e, label %block_.L_424cc8, label %block_424c24

block_424c24:                                     ; preds = %block_.L_424c1a
  %loadMem_424c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 7
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %PC.i303
  %2139 = add i64 %2138, 10
  store i64 %2139, i64* %PC.i303
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RDX.i304, align 8
  store %struct.Memory* %loadMem_424c24, %struct.Memory** %MEMORY
  %loadMem_424c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %2145 to i32*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 1
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %RAX.i302
  %2150 = load i32, i32* %EAX.i301
  %2151 = zext i32 %2150 to i64
  %2152 = load i64, i64* %PC.i300
  %2153 = add i64 %2152, 2
  store i64 %2153, i64* %PC.i300
  %2154 = xor i64 %2151, %2149
  %2155 = trunc i64 %2154 to i32
  %2156 = and i64 %2154, 4294967295
  store i64 %2156, i64* %RAX.i302, align 8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2157, align 1
  %2158 = and i32 %2155, 255
  %2159 = call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2162, i8* %2163, align 1
  %2164 = icmp eq i32 %2155, 0
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2165, i8* %2166, align 1
  %2167 = lshr i32 %2155, 31
  %2168 = trunc i32 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2168, i8* %2169, align 1
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2170, align 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2171, align 1
  store %struct.Memory* %loadMem_424c2e, %struct.Memory** %MEMORY
  %loadMem_424c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 11
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 15
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RBP.i299
  %2182 = sub i64 %2181, 8
  %2183 = load i64, i64* %PC.i297
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC.i297
  %2185 = inttoptr i64 %2182 to i32*
  %2186 = load i32, i32* %2185
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RDI.i298, align 8
  store %struct.Memory* %loadMem_424c30, %struct.Memory** %MEMORY
  %loadMem_424c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 9
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %RSI.i295 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 15
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2196 to i64*
  %2197 = load i64, i64* %RBP.i296
  %2198 = sub i64 %2197, 12
  %2199 = load i64, i64* %PC.i294
  %2200 = add i64 %2199, 3
  store i64 %2200, i64* %PC.i294
  %2201 = inttoptr i64 %2198 to i32*
  %2202 = load i32, i32* %2201
  %2203 = zext i32 %2202 to i64
  store i64 %2203, i64* %RSI.i295, align 8
  store %struct.Memory* %loadMem_424c33, %struct.Memory** %MEMORY
  %loadMem_424c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 5
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RBP.i293
  %2214 = sub i64 %2213, 8
  %2215 = load i64, i64* %PC.i291
  %2216 = add i64 %2215, 3
  store i64 %2216, i64* %PC.i291
  %2217 = inttoptr i64 %2214 to i32*
  %2218 = load i32, i32* %2217
  %2219 = zext i32 %2218 to i64
  store i64 %2219, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_424c36, %struct.Memory** %MEMORY
  %loadMem_424c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 1
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %2225 to i32*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 17
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %R8D.i290 = bitcast %union.anon* %2228 to i32*
  %2229 = bitcast i32* %R8D.i290 to i64*
  %2230 = load i32, i32* %EAX.i289
  %2231 = zext i32 %2230 to i64
  %2232 = load i64, i64* %PC.i288
  %2233 = add i64 %2232, 3
  store i64 %2233, i64* %PC.i288
  %2234 = and i64 %2231, 4294967295
  store i64 %2234, i64* %2229, align 8
  store %struct.Memory* %loadMem_424c39, %struct.Memory** %MEMORY
  %loadMem_424c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %2240 to i32*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 19
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %R9D.i287 = bitcast %union.anon* %2243 to i32*
  %2244 = bitcast i32* %R9D.i287 to i64*
  %2245 = load i32, i32* %EAX.i286
  %2246 = zext i32 %2245 to i64
  %2247 = load i64, i64* %PC.i285
  %2248 = add i64 %2247, 3
  store i64 %2248, i64* %PC.i285
  %2249 = and i64 %2246, 4294967295
  store i64 %2249, i64* %2244, align 8
  store %struct.Memory* %loadMem_424c3c, %struct.Memory** %MEMORY
  %loadMem1_424c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2252 to i64*
  %2253 = load i64, i64* %PC.i284
  %2254 = add i64 %2253, -114191
  %2255 = load i64, i64* %PC.i284
  %2256 = add i64 %2255, 5
  %2257 = load i64, i64* %PC.i284
  %2258 = add i64 %2257, 5
  store i64 %2258, i64* %PC.i284
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2260 = load i64, i64* %2259, align 8
  %2261 = add i64 %2260, -8
  %2262 = inttoptr i64 %2261 to i64*
  store i64 %2256, i64* %2262
  store i64 %2261, i64* %2259, align 8
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2254, i64* %2263, align 8
  store %struct.Memory* %loadMem1_424c3f, %struct.Memory** %MEMORY
  %loadMem2_424c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c3f = load i64, i64* %3
  %call2_424c3f = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_424c3f, %struct.Memory* %loadMem2_424c3f)
  store %struct.Memory* %call2_424c3f, %struct.Memory** %MEMORY
  %loadMem_424c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 9
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RBP.i283
  %2274 = sub i64 %2273, 32
  %2275 = load i64, i64* %PC.i281
  %2276 = add i64 %2275, 4
  store i64 %2276, i64* %PC.i281
  store i64 %2274, i64* %RSI.i282, align 8
  store %struct.Memory* %loadMem_424c44, %struct.Memory** %MEMORY
  %loadMem_424c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 7
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %PC.i279
  %2284 = add i64 %2283, 10
  store i64 %2284, i64* %PC.i279
  store i64 ptrtoint (%G__0xaafcf0_type* @G__0xaafcf0 to i64), i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_424c48, %struct.Memory** %MEMORY
  %loadMem_424c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 5
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %ECX.i277 = bitcast %union.anon* %2290 to i32*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 5
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %RCX.i278
  %2295 = load i32, i32* %ECX.i277
  %2296 = zext i32 %2295 to i64
  %2297 = load i64, i64* %PC.i276
  %2298 = add i64 %2297, 2
  store i64 %2298, i64* %PC.i276
  %2299 = xor i64 %2296, %2294
  %2300 = trunc i64 %2299 to i32
  %2301 = and i64 %2299, 4294967295
  store i64 %2301, i64* %RCX.i278, align 8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2302, align 1
  %2303 = and i32 %2300, 255
  %2304 = call i32 @llvm.ctpop.i32(i32 %2303)
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  %2307 = xor i8 %2306, 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2307, i8* %2308, align 1
  %2309 = icmp eq i32 %2300, 0
  %2310 = zext i1 %2309 to i8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2310, i8* %2311, align 1
  %2312 = lshr i32 %2300, 31
  %2313 = trunc i32 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2313, i8* %2314, align 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2315, align 1
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2316, align 1
  store %struct.Memory* %loadMem_424c52, %struct.Memory** %MEMORY
  %loadMem_424c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 11
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RDI.i274 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 15
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RBP.i275
  %2327 = sub i64 %2326, 8
  %2328 = load i64, i64* %PC.i273
  %2329 = add i64 %2328, 3
  store i64 %2329, i64* %PC.i273
  %2330 = inttoptr i64 %2327 to i32*
  %2331 = load i32, i32* %2330
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RDI.i274, align 8
  store %struct.Memory* %loadMem_424c54, %struct.Memory** %MEMORY
  %loadMem_424c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %2338 to i32*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 15
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %2341 to i64*
  %2342 = load i64, i64* %RBP.i272
  %2343 = sub i64 %2342, 76
  %2344 = load i32, i32* %EAX.i271
  %2345 = zext i32 %2344 to i64
  %2346 = load i64, i64* %PC.i270
  %2347 = add i64 %2346, 3
  store i64 %2347, i64* %PC.i270
  %2348 = inttoptr i64 %2343 to i32*
  store i32 %2344, i32* %2348
  store %struct.Memory* %loadMem_424c57, %struct.Memory** %MEMORY
  %loadMem1_424c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2351 to i64*
  %2352 = load i64, i64* %PC.i269
  %2353 = add i64 %2352, 357590
  %2354 = load i64, i64* %PC.i269
  %2355 = add i64 %2354, 5
  %2356 = load i64, i64* %PC.i269
  %2357 = add i64 %2356, 5
  store i64 %2357, i64* %PC.i269
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2359 = load i64, i64* %2358, align 8
  %2360 = add i64 %2359, -8
  %2361 = inttoptr i64 %2360 to i64*
  store i64 %2355, i64* %2361
  store i64 %2360, i64* %2358, align 8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2353, i64* %2362, align 8
  store %struct.Memory* %loadMem1_424c5a, %struct.Memory** %MEMORY
  %loadMem2_424c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c5a = load i64, i64* %3
  %call2_424c5a = call %struct.Memory* @sub_47c130.find_proper_superstring_liberties(%struct.State* %0, i64 %loadPC_424c5a, %struct.Memory* %loadMem2_424c5a)
  store %struct.Memory* %call2_424c5a, %struct.Memory** %MEMORY
  %loadMem1_424c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i268
  %2367 = add i64 %2366, -93951
  %2368 = load i64, i64* %PC.i268
  %2369 = add i64 %2368, 5
  %2370 = load i64, i64* %PC.i268
  %2371 = add i64 %2370, 5
  store i64 %2371, i64* %PC.i268
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2373 = load i64, i64* %2372, align 8
  %2374 = add i64 %2373, -8
  %2375 = inttoptr i64 %2374 to i64*
  store i64 %2369, i64* %2375
  store i64 %2374, i64* %2372, align 8
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2367, i64* %2376, align 8
  store %struct.Memory* %loadMem1_424c5f, %struct.Memory** %MEMORY
  %loadMem2_424c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c5f = load i64, i64* %3
  %call2_424c5f = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_424c5f, %struct.Memory* %loadMem2_424c5f)
  store %struct.Memory* %call2_424c5f, %struct.Memory** %MEMORY
  %loadMem_424c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i267
  %2384 = sub i64 %2383, 28
  %2385 = load i64, i64* %PC.i266
  %2386 = add i64 %2385, 7
  store i64 %2386, i64* %PC.i266
  %2387 = inttoptr i64 %2384 to i32*
  store i32 0, i32* %2387
  store %struct.Memory* %loadMem_424c64, %struct.Memory** %MEMORY
  br label %block_.L_424c6b

block_.L_424c6b:                                  ; preds = %block_.L_424cb5, %block_424c24
  %loadMem_424c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 1
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 15
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2396 to i64*
  %2397 = load i64, i64* %RBP.i265
  %2398 = sub i64 %2397, 28
  %2399 = load i64, i64* %PC.i263
  %2400 = add i64 %2399, 3
  store i64 %2400, i64* %PC.i263
  %2401 = inttoptr i64 %2398 to i32*
  %2402 = load i32, i32* %2401
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_424c6b, %struct.Memory** %MEMORY
  %loadMem_424c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 1
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %2409 to i32*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 15
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2412 to i64*
  %2413 = load i32, i32* %EAX.i261
  %2414 = zext i32 %2413 to i64
  %2415 = load i64, i64* %RBP.i262
  %2416 = sub i64 %2415, 32
  %2417 = load i64, i64* %PC.i260
  %2418 = add i64 %2417, 3
  store i64 %2418, i64* %PC.i260
  %2419 = inttoptr i64 %2416 to i32*
  %2420 = load i32, i32* %2419
  %2421 = sub i32 %2413, %2420
  %2422 = icmp ult i32 %2413, %2420
  %2423 = zext i1 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2423, i8* %2424, align 1
  %2425 = and i32 %2421, 255
  %2426 = call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2429, i8* %2430, align 1
  %2431 = xor i32 %2420, %2413
  %2432 = xor i32 %2431, %2421
  %2433 = lshr i32 %2432, 4
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2435, i8* %2436, align 1
  %2437 = icmp eq i32 %2421, 0
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2438, i8* %2439, align 1
  %2440 = lshr i32 %2421, 31
  %2441 = trunc i32 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2441, i8* %2442, align 1
  %2443 = lshr i32 %2413, 31
  %2444 = lshr i32 %2420, 31
  %2445 = xor i32 %2444, %2443
  %2446 = xor i32 %2440, %2443
  %2447 = add i32 %2446, %2445
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2449, i8* %2450, align 1
  store %struct.Memory* %loadMem_424c6e, %struct.Memory** %MEMORY
  %loadMem_424c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %PC.i259
  %2455 = add i64 %2454, 82
  %2456 = load i64, i64* %PC.i259
  %2457 = add i64 %2456, 6
  %2458 = load i64, i64* %PC.i259
  %2459 = add i64 %2458, 6
  store i64 %2459, i64* %PC.i259
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2461 = load i8, i8* %2460, align 1
  %2462 = icmp ne i8 %2461, 0
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2464 = load i8, i8* %2463, align 1
  %2465 = icmp ne i8 %2464, 0
  %2466 = xor i1 %2462, %2465
  %2467 = xor i1 %2466, true
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %BRANCH_TAKEN, align 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2470 = select i1 %2466, i64 %2457, i64 %2455
  store i64 %2470, i64* %2469, align 8
  store %struct.Memory* %loadMem_424c71, %struct.Memory** %MEMORY
  %loadBr_424c71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424c71 = icmp eq i8 %loadBr_424c71, 1
  br i1 %cmpBr_424c71, label %block_.L_424cc3, label %block_424c77

block_424c77:                                     ; preds = %block_.L_424c6b
  %loadMem_424c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 1
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 15
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %RBP.i258
  %2481 = sub i64 %2480, 28
  %2482 = load i64, i64* %PC.i256
  %2483 = add i64 %2482, 4
  store i64 %2483, i64* %PC.i256
  %2484 = inttoptr i64 %2481 to i32*
  %2485 = load i32, i32* %2484
  %2486 = sext i32 %2485 to i64
  store i64 %2486, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_424c77, %struct.Memory** %MEMORY
  %loadMem_424c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 11
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RDI.i255 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RAX.i254
  %2497 = mul i64 %2496, 4
  %2498 = add i64 %2497, 11205872
  %2499 = load i64, i64* %PC.i253
  %2500 = add i64 %2499, 7
  store i64 %2500, i64* %PC.i253
  %2501 = inttoptr i64 %2498 to i32*
  %2502 = load i32, i32* %2501
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RDI.i255, align 8
  store %struct.Memory* %loadMem_424c7b, %struct.Memory** %MEMORY
  %loadMem_424c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 9
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 15
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RBP.i252
  %2514 = sub i64 %2513, 12
  %2515 = load i64, i64* %PC.i250
  %2516 = add i64 %2515, 3
  store i64 %2516, i64* %PC.i250
  %2517 = inttoptr i64 %2514 to i32*
  %2518 = load i32, i32* %2517
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RSI.i251, align 8
  store %struct.Memory* %loadMem_424c82, %struct.Memory** %MEMORY
  %loadMem1_424c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %PC.i249
  %2524 = add i64 %2523, 290731
  %2525 = load i64, i64* %PC.i249
  %2526 = add i64 %2525, 5
  %2527 = load i64, i64* %PC.i249
  %2528 = add i64 %2527, 5
  store i64 %2528, i64* %PC.i249
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2530 = load i64, i64* %2529, align 8
  %2531 = add i64 %2530, -8
  %2532 = inttoptr i64 %2531 to i64*
  store i64 %2526, i64* %2532
  store i64 %2531, i64* %2529, align 8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2524, i64* %2533, align 8
  store %struct.Memory* %loadMem1_424c85, %struct.Memory** %MEMORY
  %loadMem2_424c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c85 = load i64, i64* %3
  %call2_424c85 = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64 %loadPC_424c85, %struct.Memory* %loadMem2_424c85)
  store %struct.Memory* %call2_424c85, %struct.Memory** %MEMORY
  %loadMem_424c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 1
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %EAX.i248 = bitcast %union.anon* %2539 to i32*
  %2540 = load i32, i32* %EAX.i248
  %2541 = zext i32 %2540 to i64
  %2542 = load i64, i64* %PC.i247
  %2543 = add i64 %2542, 3
  store i64 %2543, i64* %PC.i247
  %2544 = sub i32 %2540, 5
  %2545 = icmp ult i32 %2540, 5
  %2546 = zext i1 %2545 to i8
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2546, i8* %2547, align 1
  %2548 = and i32 %2544, 255
  %2549 = call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2552, i8* %2553, align 1
  %2554 = xor i64 5, %2541
  %2555 = trunc i64 %2554 to i32
  %2556 = xor i32 %2555, %2544
  %2557 = lshr i32 %2556, 4
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2559, i8* %2560, align 1
  %2561 = icmp eq i32 %2544, 0
  %2562 = zext i1 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2562, i8* %2563, align 1
  %2564 = lshr i32 %2544, 31
  %2565 = trunc i32 %2564 to i8
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2565, i8* %2566, align 1
  %2567 = lshr i32 %2540, 31
  %2568 = xor i32 %2564, %2567
  %2569 = add i32 %2568, %2567
  %2570 = icmp eq i32 %2569, 2
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2571, i8* %2572, align 1
  store %struct.Memory* %loadMem_424c8a, %struct.Memory** %MEMORY
  %loadMem_424c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 33
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %PC.i246
  %2577 = add i64 %2576, 35
  %2578 = load i64, i64* %PC.i246
  %2579 = add i64 %2578, 6
  %2580 = load i64, i64* %PC.i246
  %2581 = add i64 %2580, 6
  store i64 %2581, i64* %PC.i246
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2583 = load i8, i8* %2582, align 1
  %2584 = icmp eq i8 %2583, 0
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %BRANCH_TAKEN, align 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2587 = select i1 %2584, i64 %2577, i64 %2579
  store i64 %2587, i64* %2586, align 8
  store %struct.Memory* %loadMem_424c8d, %struct.Memory** %MEMORY
  %loadBr_424c8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424c8d = icmp eq i8 %loadBr_424c8d, 1
  br i1 %cmpBr_424c8d, label %block_.L_424cb0, label %block_424c93

block_424c93:                                     ; preds = %block_424c77
  %loadMem_424c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 1
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 15
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RBP.i245
  %2598 = sub i64 %2597, 28
  %2599 = load i64, i64* %PC.i243
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC.i243
  %2601 = inttoptr i64 %2598 to i32*
  %2602 = load i32, i32* %2601
  %2603 = sext i32 %2602 to i64
  store i64 %2603, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_424c93, %struct.Memory** %MEMORY
  %loadMem_424c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 5
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RAX.i241
  %2614 = mul i64 %2613, 4
  %2615 = add i64 %2614, 11205872
  %2616 = load i64, i64* %PC.i240
  %2617 = add i64 %2616, 7
  store i64 %2617, i64* %PC.i240
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RCX.i242, align 8
  store %struct.Memory* %loadMem_424c97, %struct.Memory** %MEMORY
  %loadMem_424c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i239
  %2631 = sub i64 %2630, 24
  %2632 = load i64, i64* %PC.i237
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %PC.i237
  %2634 = inttoptr i64 %2631 to i64*
  %2635 = load i64, i64* %2634
  store i64 %2635, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_424c9e, %struct.Memory** %MEMORY
  %loadMem_424ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 5
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %ECX.i235 = bitcast %union.anon* %2641 to i32*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 1
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %2644 to i64*
  %2645 = load i64, i64* %RAX.i236
  %2646 = load i32, i32* %ECX.i235
  %2647 = zext i32 %2646 to i64
  %2648 = load i64, i64* %PC.i234
  %2649 = add i64 %2648, 2
  store i64 %2649, i64* %PC.i234
  %2650 = inttoptr i64 %2645 to i32*
  store i32 %2646, i32* %2650
  store %struct.Memory* %loadMem_424ca2, %struct.Memory** %MEMORY
  %loadMem_424ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 15
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RBP.i233
  %2658 = sub i64 %2657, 40
  %2659 = load i64, i64* %PC.i232
  %2660 = add i64 %2659, 7
  store i64 %2660, i64* %PC.i232
  %2661 = inttoptr i64 %2658 to i32*
  store i32 1, i32* %2661
  store %struct.Memory* %loadMem_424ca4, %struct.Memory** %MEMORY
  %loadMem_424cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %PC.i231
  %2666 = add i64 %2665, 24
  %2667 = load i64, i64* %PC.i231
  %2668 = add i64 %2667, 5
  store i64 %2668, i64* %PC.i231
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2666, i64* %2669, align 8
  store %struct.Memory* %loadMem_424cab, %struct.Memory** %MEMORY
  br label %block_.L_424cc3

block_.L_424cb0:                                  ; preds = %block_424c77
  %loadMem_424cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %PC.i230
  %2674 = add i64 %2673, 5
  %2675 = load i64, i64* %PC.i230
  %2676 = add i64 %2675, 5
  store i64 %2676, i64* %PC.i230
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2674, i64* %2677, align 8
  store %struct.Memory* %loadMem_424cb0, %struct.Memory** %MEMORY
  br label %block_.L_424cb5

block_.L_424cb5:                                  ; preds = %block_.L_424cb0
  %loadMem_424cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 15
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %RBP.i229
  %2688 = sub i64 %2687, 28
  %2689 = load i64, i64* %PC.i227
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC.i227
  %2691 = inttoptr i64 %2688 to i32*
  %2692 = load i32, i32* %2691
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_424cb5, %struct.Memory** %MEMORY
  %loadMem_424cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 1
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %2699 to i64*
  %2700 = load i64, i64* %RAX.i226
  %2701 = load i64, i64* %PC.i225
  %2702 = add i64 %2701, 3
  store i64 %2702, i64* %PC.i225
  %2703 = trunc i64 %2700 to i32
  %2704 = add i32 1, %2703
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RAX.i226, align 8
  %2706 = icmp ult i32 %2704, %2703
  %2707 = icmp ult i32 %2704, 1
  %2708 = or i1 %2706, %2707
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2709, i8* %2710, align 1
  %2711 = and i32 %2704, 255
  %2712 = call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2715, i8* %2716, align 1
  %2717 = xor i64 1, %2700
  %2718 = trunc i64 %2717 to i32
  %2719 = xor i32 %2718, %2704
  %2720 = lshr i32 %2719, 4
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2722, i8* %2723, align 1
  %2724 = icmp eq i32 %2704, 0
  %2725 = zext i1 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2725, i8* %2726, align 1
  %2727 = lshr i32 %2704, 31
  %2728 = trunc i32 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2728, i8* %2729, align 1
  %2730 = lshr i32 %2703, 31
  %2731 = xor i32 %2727, %2730
  %2732 = add i32 %2731, %2727
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2734, i8* %2735, align 1
  store %struct.Memory* %loadMem_424cb8, %struct.Memory** %MEMORY
  %loadMem_424cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 1
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %EAX.i223 = bitcast %union.anon* %2741 to i32*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RBP.i224
  %2746 = sub i64 %2745, 28
  %2747 = load i32, i32* %EAX.i223
  %2748 = zext i32 %2747 to i64
  %2749 = load i64, i64* %PC.i222
  %2750 = add i64 %2749, 3
  store i64 %2750, i64* %PC.i222
  %2751 = inttoptr i64 %2746 to i32*
  store i32 %2747, i32* %2751
  store %struct.Memory* %loadMem_424cbb, %struct.Memory** %MEMORY
  %loadMem_424cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %PC.i221
  %2756 = add i64 %2755, -83
  %2757 = load i64, i64* %PC.i221
  %2758 = add i64 %2757, 5
  store i64 %2758, i64* %PC.i221
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2756, i64* %2759, align 8
  store %struct.Memory* %loadMem_424cbe, %struct.Memory** %MEMORY
  br label %block_.L_424c6b

block_.L_424cc3:                                  ; preds = %block_424c93, %block_.L_424c6b
  %loadMem_424cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %PC.i220
  %2764 = add i64 %2763, 5
  %2765 = load i64, i64* %PC.i220
  %2766 = add i64 %2765, 5
  store i64 %2766, i64* %PC.i220
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2764, i64* %2767, align 8
  store %struct.Memory* %loadMem_424cc3, %struct.Memory** %MEMORY
  br label %block_.L_424cc8

block_.L_424cc8:                                  ; preds = %block_.L_424cc3, %block_.L_424c1a
  %loadMem_424cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 15
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %RBP.i219
  %2775 = sub i64 %2774, 40
  %2776 = load i64, i64* %PC.i218
  %2777 = add i64 %2776, 4
  store i64 %2777, i64* %PC.i218
  %2778 = inttoptr i64 %2775 to i32*
  %2779 = load i32, i32* %2778
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2780, align 1
  %2781 = and i32 %2779, 255
  %2782 = call i32 @llvm.ctpop.i32(i32 %2781)
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  %2785 = xor i8 %2784, 1
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2785, i8* %2786, align 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2787, align 1
  %2788 = icmp eq i32 %2779, 0
  %2789 = zext i1 %2788 to i8
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2789, i8* %2790, align 1
  %2791 = lshr i32 %2779, 31
  %2792 = trunc i32 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2792, i8* %2793, align 1
  %2794 = lshr i32 %2779, 31
  %2795 = xor i32 %2791, %2794
  %2796 = add i32 %2795, %2794
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2798, i8* %2799, align 1
  store %struct.Memory* %loadMem_424cc8, %struct.Memory** %MEMORY
  %loadMem_424ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %PC.i217
  %2804 = add i64 %2803, 199
  %2805 = load i64, i64* %PC.i217
  %2806 = add i64 %2805, 6
  %2807 = load i64, i64* %PC.i217
  %2808 = add i64 %2807, 6
  store i64 %2808, i64* %PC.i217
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2810 = load i8, i8* %2809, align 1
  %2811 = icmp eq i8 %2810, 0
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %BRANCH_TAKEN, align 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2814 = select i1 %2811, i64 %2804, i64 %2806
  store i64 %2814, i64* %2813, align 8
  store %struct.Memory* %loadMem_424ccc, %struct.Memory** %MEMORY
  %loadBr_424ccc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424ccc = icmp eq i8 %loadBr_424ccc, 1
  br i1 %cmpBr_424ccc, label %block_.L_424d93, label %block_424cd2

block_424cd2:                                     ; preds = %block_.L_424cc8
  %loadMem_424cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 7
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RDX.i216 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %PC.i215
  %2822 = add i64 %2821, 10
  store i64 %2822, i64* %PC.i215
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RDX.i216, align 8
  store %struct.Memory* %loadMem_424cd2, %struct.Memory** %MEMORY
  %loadMem_424cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 1
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %2828 to i32*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 1
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RAX.i214
  %2833 = load i32, i32* %EAX.i213
  %2834 = zext i32 %2833 to i64
  %2835 = load i64, i64* %PC.i212
  %2836 = add i64 %2835, 2
  store i64 %2836, i64* %PC.i212
  %2837 = xor i64 %2834, %2832
  %2838 = trunc i64 %2837 to i32
  %2839 = and i64 %2837, 4294967295
  store i64 %2839, i64* %RAX.i214, align 8
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2840, align 1
  %2841 = and i32 %2838, 255
  %2842 = call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2845, i8* %2846, align 1
  %2847 = icmp eq i32 %2838, 0
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2848, i8* %2849, align 1
  %2850 = lshr i32 %2838, 31
  %2851 = trunc i32 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2851, i8* %2852, align 1
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2853, align 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2854, align 1
  store %struct.Memory* %loadMem_424cdc, %struct.Memory** %MEMORY
  %loadMem_424cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 11
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RDI.i210 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 15
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RBP.i211
  %2865 = sub i64 %2864, 8
  %2866 = load i64, i64* %PC.i209
  %2867 = add i64 %2866, 3
  store i64 %2867, i64* %PC.i209
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RDI.i210, align 8
  store %struct.Memory* %loadMem_424cde, %struct.Memory** %MEMORY
  %loadMem_424ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 9
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RSI.i207 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 15
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %RBP.i208
  %2881 = sub i64 %2880, 12
  %2882 = load i64, i64* %PC.i206
  %2883 = add i64 %2882, 3
  store i64 %2883, i64* %PC.i206
  %2884 = inttoptr i64 %2881 to i32*
  %2885 = load i32, i32* %2884
  %2886 = zext i32 %2885 to i64
  store i64 %2886, i64* %RSI.i207, align 8
  store %struct.Memory* %loadMem_424ce1, %struct.Memory** %MEMORY
  %loadMem_424ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 5
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 15
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %RBP.i205
  %2897 = sub i64 %2896, 8
  %2898 = load i64, i64* %PC.i203
  %2899 = add i64 %2898, 3
  store i64 %2899, i64* %PC.i203
  %2900 = inttoptr i64 %2897 to i32*
  %2901 = load i32, i32* %2900
  %2902 = zext i32 %2901 to i64
  store i64 %2902, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_424ce4, %struct.Memory** %MEMORY
  %loadMem_424ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 1
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %2908 to i32*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 17
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %R8D.i202 = bitcast %union.anon* %2911 to i32*
  %2912 = bitcast i32* %R8D.i202 to i64*
  %2913 = load i32, i32* %EAX.i201
  %2914 = zext i32 %2913 to i64
  %2915 = load i64, i64* %PC.i200
  %2916 = add i64 %2915, 3
  store i64 %2916, i64* %PC.i200
  %2917 = and i64 %2914, 4294967295
  store i64 %2917, i64* %2912, align 8
  store %struct.Memory* %loadMem_424ce7, %struct.Memory** %MEMORY
  %loadMem_424cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 1
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %EAX.i198 = bitcast %union.anon* %2923 to i32*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 19
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %R9D.i199 = bitcast %union.anon* %2926 to i32*
  %2927 = bitcast i32* %R9D.i199 to i64*
  %2928 = load i32, i32* %EAX.i198
  %2929 = zext i32 %2928 to i64
  %2930 = load i64, i64* %PC.i197
  %2931 = add i64 %2930, 3
  store i64 %2931, i64* %PC.i197
  %2932 = and i64 %2929, 4294967295
  store i64 %2932, i64* %2927, align 8
  store %struct.Memory* %loadMem_424cea, %struct.Memory** %MEMORY
  %loadMem1_424ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %PC.i196
  %2937 = add i64 %2936, -114365
  %2938 = load i64, i64* %PC.i196
  %2939 = add i64 %2938, 5
  %2940 = load i64, i64* %PC.i196
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %PC.i196
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2943 = load i64, i64* %2942, align 8
  %2944 = add i64 %2943, -8
  %2945 = inttoptr i64 %2944 to i64*
  store i64 %2939, i64* %2945
  store i64 %2944, i64* %2942, align 8
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2937, i64* %2946, align 8
  store %struct.Memory* %loadMem1_424ced, %struct.Memory** %MEMORY
  %loadMem2_424ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424ced = load i64, i64* %3
  %call2_424ced = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_424ced, %struct.Memory* %loadMem2_424ced)
  store %struct.Memory* %call2_424ced, %struct.Memory** %MEMORY
  %loadMem_424cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 9
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RSI.i194 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 15
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %RBP.i195
  %2957 = sub i64 %2956, 36
  %2958 = load i64, i64* %PC.i193
  %2959 = add i64 %2958, 4
  store i64 %2959, i64* %PC.i193
  store i64 %2957, i64* %RSI.i194, align 8
  store %struct.Memory* %loadMem_424cf2, %struct.Memory** %MEMORY
  %loadMem_424cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 7
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %PC.i191
  %2967 = add i64 %2966, 10
  store i64 %2967, i64* %PC.i191
  store i64 ptrtoint (%G__0xab00c0_type* @G__0xab00c0 to i64), i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_424cf6, %struct.Memory** %MEMORY
  %loadMem_424d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 5
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %PC.i189
  %2975 = add i64 %2974, 5
  store i64 %2975, i64* %PC.i189
  store i64 4, i64* %RCX.i190, align 8
  store %struct.Memory* %loadMem_424d00, %struct.Memory** %MEMORY
  %loadMem_424d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 11
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RDI.i187 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 15
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2984 to i64*
  %2985 = load i64, i64* %RBP.i188
  %2986 = sub i64 %2985, 8
  %2987 = load i64, i64* %PC.i186
  %2988 = add i64 %2987, 3
  store i64 %2988, i64* %PC.i186
  %2989 = inttoptr i64 %2986 to i32*
  %2990 = load i32, i32* %2989
  %2991 = zext i32 %2990 to i64
  store i64 %2991, i64* %RDI.i187, align 8
  store %struct.Memory* %loadMem_424d05, %struct.Memory** %MEMORY
  %loadMem_424d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 1
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %EAX.i184 = bitcast %union.anon* %2997 to i32*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 15
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %RBP.i185
  %3002 = sub i64 %3001, 80
  %3003 = load i32, i32* %EAX.i184
  %3004 = zext i32 %3003 to i64
  %3005 = load i64, i64* %PC.i183
  %3006 = add i64 %3005, 3
  store i64 %3006, i64* %PC.i183
  %3007 = inttoptr i64 %3002 to i32*
  store i32 %3003, i32* %3007
  store %struct.Memory* %loadMem_424d08, %struct.Memory** %MEMORY
  %loadMem1_424d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %PC.i182
  %3012 = add i64 %3011, 357685
  %3013 = load i64, i64* %PC.i182
  %3014 = add i64 %3013, 5
  %3015 = load i64, i64* %PC.i182
  %3016 = add i64 %3015, 5
  store i64 %3016, i64* %PC.i182
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3018 = load i64, i64* %3017, align 8
  %3019 = add i64 %3018, -8
  %3020 = inttoptr i64 %3019 to i64*
  store i64 %3014, i64* %3020
  store i64 %3019, i64* %3017, align 8
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3012, i64* %3021, align 8
  store %struct.Memory* %loadMem1_424d0b, %struct.Memory** %MEMORY
  %loadMem2_424d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424d0b = load i64, i64* %3
  %call2_424d0b = call %struct.Memory* @sub_47c240.superstring_chainlinks(%struct.State* %0, i64 %loadPC_424d0b, %struct.Memory* %loadMem2_424d0b)
  store %struct.Memory* %call2_424d0b, %struct.Memory** %MEMORY
  %loadMem1_424d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %PC.i181
  %3026 = add i64 %3025, -94128
  %3027 = load i64, i64* %PC.i181
  %3028 = add i64 %3027, 5
  %3029 = load i64, i64* %PC.i181
  %3030 = add i64 %3029, 5
  store i64 %3030, i64* %PC.i181
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3032 = load i64, i64* %3031, align 8
  %3033 = add i64 %3032, -8
  %3034 = inttoptr i64 %3033 to i64*
  store i64 %3028, i64* %3034
  store i64 %3033, i64* %3031, align 8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3026, i64* %3035, align 8
  store %struct.Memory* %loadMem1_424d10, %struct.Memory** %MEMORY
  %loadMem2_424d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424d10 = load i64, i64* %3
  %call2_424d10 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_424d10, %struct.Memory* %loadMem2_424d10)
  store %struct.Memory* %call2_424d10, %struct.Memory** %MEMORY
  %loadMem_424d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 15
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %RBP.i180
  %3043 = sub i64 %3042, 28
  %3044 = load i64, i64* %PC.i179
  %3045 = add i64 %3044, 7
  store i64 %3045, i64* %PC.i179
  %3046 = inttoptr i64 %3043 to i32*
  store i32 0, i32* %3046
  store %struct.Memory* %loadMem_424d15, %struct.Memory** %MEMORY
  br label %block_.L_424d1c

block_.L_424d1c:                                  ; preds = %block_.L_424d80, %block_424cd2
  %loadMem_424d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 1
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 15
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %RBP.i178
  %3057 = sub i64 %3056, 28
  %3058 = load i64, i64* %PC.i176
  %3059 = add i64 %3058, 3
  store i64 %3059, i64* %PC.i176
  %3060 = inttoptr i64 %3057 to i32*
  %3061 = load i32, i32* %3060
  %3062 = zext i32 %3061 to i64
  store i64 %3062, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_424d1c, %struct.Memory** %MEMORY
  %loadMem_424d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 1
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %3068 to i32*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 15
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3071 to i64*
  %3072 = load i32, i32* %EAX.i174
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %RBP.i175
  %3075 = sub i64 %3074, 36
  %3076 = load i64, i64* %PC.i173
  %3077 = add i64 %3076, 3
  store i64 %3077, i64* %PC.i173
  %3078 = inttoptr i64 %3075 to i32*
  %3079 = load i32, i32* %3078
  %3080 = sub i32 %3072, %3079
  %3081 = icmp ult i32 %3072, %3079
  %3082 = zext i1 %3081 to i8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3082, i8* %3083, align 1
  %3084 = and i32 %3080, 255
  %3085 = call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3088, i8* %3089, align 1
  %3090 = xor i32 %3079, %3072
  %3091 = xor i32 %3090, %3080
  %3092 = lshr i32 %3091, 4
  %3093 = trunc i32 %3092 to i8
  %3094 = and i8 %3093, 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3094, i8* %3095, align 1
  %3096 = icmp eq i32 %3080, 0
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3097, i8* %3098, align 1
  %3099 = lshr i32 %3080, 31
  %3100 = trunc i32 %3099 to i8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3100, i8* %3101, align 1
  %3102 = lshr i32 %3072, 31
  %3103 = lshr i32 %3079, 31
  %3104 = xor i32 %3103, %3102
  %3105 = xor i32 %3099, %3102
  %3106 = add i32 %3105, %3104
  %3107 = icmp eq i32 %3106, 2
  %3108 = zext i1 %3107 to i8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3108, i8* %3109, align 1
  store %struct.Memory* %loadMem_424d1f, %struct.Memory** %MEMORY
  %loadMem_424d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %PC.i172
  %3114 = add i64 %3113, 108
  %3115 = load i64, i64* %PC.i172
  %3116 = add i64 %3115, 6
  %3117 = load i64, i64* %PC.i172
  %3118 = add i64 %3117, 6
  store i64 %3118, i64* %PC.i172
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3120 = load i8, i8* %3119, align 1
  %3121 = icmp ne i8 %3120, 0
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3123 = load i8, i8* %3122, align 1
  %3124 = icmp ne i8 %3123, 0
  %3125 = xor i1 %3121, %3124
  %3126 = xor i1 %3125, true
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %BRANCH_TAKEN, align 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3129 = select i1 %3125, i64 %3116, i64 %3114
  store i64 %3129, i64* %3128, align 8
  store %struct.Memory* %loadMem_424d22, %struct.Memory** %MEMORY
  %loadBr_424d22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424d22 = icmp eq i8 %loadBr_424d22, 1
  br i1 %cmpBr_424d22, label %block_.L_424d8e, label %block_424d28

block_424d28:                                     ; preds = %block_.L_424d1c
  %loadMem_424d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 9
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RSI.i170 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 15
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3138 to i64*
  %3139 = load i64, i64* %RBP.i171
  %3140 = sub i64 %3139, 48
  %3141 = load i64, i64* %PC.i169
  %3142 = add i64 %3141, 4
  store i64 %3142, i64* %PC.i169
  store i64 %3140, i64* %RSI.i170, align 8
  store %struct.Memory* %loadMem_424d28, %struct.Memory** %MEMORY
  %loadMem_424d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 1
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 15
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RBP.i168
  %3153 = sub i64 %3152, 28
  %3154 = load i64, i64* %PC.i166
  %3155 = add i64 %3154, 4
  store i64 %3155, i64* %PC.i166
  %3156 = inttoptr i64 %3153 to i32*
  %3157 = load i32, i32* %3156
  %3158 = sext i32 %3157 to i64
  store i64 %3158, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_424d2c, %struct.Memory** %MEMORY
  %loadMem_424d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 33
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 1
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 11
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RDI.i165 = bitcast %union.anon* %3167 to i64*
  %3168 = load i64, i64* %RAX.i164
  %3169 = mul i64 %3168, 4
  %3170 = add i64 %3169, 11206848
  %3171 = load i64, i64* %PC.i163
  %3172 = add i64 %3171, 7
  store i64 %3172, i64* %PC.i163
  %3173 = inttoptr i64 %3170 to i32*
  %3174 = load i32, i32* %3173
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RDI.i165, align 8
  store %struct.Memory* %loadMem_424d30, %struct.Memory** %MEMORY
  %loadMem1_424d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %PC.i162
  %3180 = add i64 %3179, 232969
  %3181 = load i64, i64* %PC.i162
  %3182 = add i64 %3181, 5
  %3183 = load i64, i64* %PC.i162
  %3184 = add i64 %3183, 5
  store i64 %3184, i64* %PC.i162
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3186 = load i64, i64* %3185, align 8
  %3187 = add i64 %3186, -8
  %3188 = inttoptr i64 %3187 to i64*
  store i64 %3182, i64* %3188
  store i64 %3187, i64* %3185, align 8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3180, i64* %3189, align 8
  store %struct.Memory* %loadMem1_424d37, %struct.Memory** %MEMORY
  %loadMem2_424d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424d37 = load i64, i64* %3
  %call2_424d37 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_424d37, %struct.Memory* %loadMem2_424d37)
  store %struct.Memory* %call2_424d37, %struct.Memory** %MEMORY
  %loadMem_424d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 1
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %3195 to i32*
  %3196 = load i32, i32* %EAX.i161
  %3197 = zext i32 %3196 to i64
  %3198 = load i64, i64* %PC.i160
  %3199 = add i64 %3198, 3
  store i64 %3199, i64* %PC.i160
  %3200 = sub i32 %3196, 5
  %3201 = icmp ult i32 %3196, 5
  %3202 = zext i1 %3201 to i8
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3202, i8* %3203, align 1
  %3204 = and i32 %3200, 255
  %3205 = call i32 @llvm.ctpop.i32(i32 %3204)
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  %3208 = xor i8 %3207, 1
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3208, i8* %3209, align 1
  %3210 = xor i64 5, %3197
  %3211 = trunc i64 %3210 to i32
  %3212 = xor i32 %3211, %3200
  %3213 = lshr i32 %3212, 4
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3215, i8* %3216, align 1
  %3217 = icmp eq i32 %3200, 0
  %3218 = zext i1 %3217 to i8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3218, i8* %3219, align 1
  %3220 = lshr i32 %3200, 31
  %3221 = trunc i32 %3220 to i8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3221, i8* %3222, align 1
  %3223 = lshr i32 %3196, 31
  %3224 = xor i32 %3220, %3223
  %3225 = add i32 %3224, %3223
  %3226 = icmp eq i32 %3225, 2
  %3227 = zext i1 %3226 to i8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3227, i8* %3228, align 1
  store %struct.Memory* %loadMem_424d3c, %struct.Memory** %MEMORY
  %loadMem_424d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %PC.i159
  %3233 = add i64 %3232, 60
  %3234 = load i64, i64* %PC.i159
  %3235 = add i64 %3234, 6
  %3236 = load i64, i64* %PC.i159
  %3237 = add i64 %3236, 6
  store i64 %3237, i64* %PC.i159
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3239 = load i8, i8* %3238, align 1
  %3240 = icmp eq i8 %3239, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %BRANCH_TAKEN, align 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3243 = select i1 %3240, i64 %3233, i64 %3235
  store i64 %3243, i64* %3242, align 8
  store %struct.Memory* %loadMem_424d3f, %struct.Memory** %MEMORY
  %loadBr_424d3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424d3f = icmp eq i8 %loadBr_424d3f, 1
  br i1 %cmpBr_424d3f, label %block_.L_424d7b, label %block_424d45

block_424d45:                                     ; preds = %block_424d28
  %loadMem_424d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 11
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RDI.i157 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 15
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RBP.i158
  %3254 = sub i64 %3253, 48
  %3255 = load i64, i64* %PC.i156
  %3256 = add i64 %3255, 3
  store i64 %3256, i64* %PC.i156
  %3257 = inttoptr i64 %3254 to i32*
  %3258 = load i32, i32* %3257
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RDI.i157, align 8
  store %struct.Memory* %loadMem_424d45, %struct.Memory** %MEMORY
  %loadMem_424d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 1
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 15
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RBP.i155
  %3270 = sub i64 %3269, 28
  %3271 = load i64, i64* %PC.i153
  %3272 = add i64 %3271, 4
  store i64 %3272, i64* %PC.i153
  %3273 = inttoptr i64 %3270 to i32*
  %3274 = load i32, i32* %3273
  %3275 = sext i32 %3274 to i64
  store i64 %3275, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_424d48, %struct.Memory** %MEMORY
  %loadMem_424d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 1
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 9
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %3284 to i64*
  %3285 = load i64, i64* %RAX.i151
  %3286 = mul i64 %3285, 4
  %3287 = add i64 %3286, 11206848
  %3288 = load i64, i64* %PC.i150
  %3289 = add i64 %3288, 7
  store i64 %3289, i64* %PC.i150
  %3290 = inttoptr i64 %3287 to i32*
  %3291 = load i32, i32* %3290
  %3292 = zext i32 %3291 to i64
  store i64 %3292, i64* %RSI.i152, align 8
  store %struct.Memory* %loadMem_424d4c, %struct.Memory** %MEMORY
  %loadMem1_424d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3295 to i64*
  %3296 = load i64, i64* %PC.i149
  %3297 = add i64 %3296, -66211
  %3298 = load i64, i64* %PC.i149
  %3299 = add i64 %3298, 5
  %3300 = load i64, i64* %PC.i149
  %3301 = add i64 %3300, 5
  store i64 %3301, i64* %PC.i149
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3303 = load i64, i64* %3302, align 8
  %3304 = add i64 %3303, -8
  %3305 = inttoptr i64 %3304 to i64*
  store i64 %3299, i64* %3305
  store i64 %3304, i64* %3302, align 8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3297, i64* %3306, align 8
  store %struct.Memory* %loadMem1_424d53, %struct.Memory** %MEMORY
  %loadMem2_424d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424d53 = load i64, i64* %3
  %call2_424d53 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64 %loadPC_424d53, %struct.Memory* %loadMem2_424d53)
  store %struct.Memory* %call2_424d53, %struct.Memory** %MEMORY
  %loadMem_424d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 1
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %3312 to i32*
  %3313 = load i32, i32* %EAX.i148
  %3314 = zext i32 %3313 to i64
  %3315 = load i64, i64* %PC.i147
  %3316 = add i64 %3315, 3
  store i64 %3316, i64* %PC.i147
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3317, align 1
  %3318 = and i32 %3313, 255
  %3319 = call i32 @llvm.ctpop.i32(i32 %3318)
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = xor i8 %3321, 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3322, i8* %3323, align 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3324, align 1
  %3325 = icmp eq i32 %3313, 0
  %3326 = zext i1 %3325 to i8
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3326, i8* %3327, align 1
  %3328 = lshr i32 %3313, 31
  %3329 = trunc i32 %3328 to i8
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3329, i8* %3330, align 1
  %3331 = lshr i32 %3313, 31
  %3332 = xor i32 %3328, %3331
  %3333 = add i32 %3332, %3331
  %3334 = icmp eq i32 %3333, 2
  %3335 = zext i1 %3334 to i8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3335, i8* %3336, align 1
  store %struct.Memory* %loadMem_424d58, %struct.Memory** %MEMORY
  %loadMem_424d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %PC.i146
  %3341 = add i64 %3340, 27
  %3342 = load i64, i64* %PC.i146
  %3343 = add i64 %3342, 6
  %3344 = load i64, i64* %PC.i146
  %3345 = add i64 %3344, 6
  store i64 %3345, i64* %PC.i146
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3347 = load i8, i8* %3346, align 1
  store i8 %3347, i8* %BRANCH_TAKEN, align 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3349 = icmp ne i8 %3347, 0
  %3350 = select i1 %3349, i64 %3341, i64 %3343
  store i64 %3350, i64* %3348, align 8
  store %struct.Memory* %loadMem_424d5b, %struct.Memory** %MEMORY
  %loadBr_424d5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424d5b = icmp eq i8 %loadBr_424d5b, 1
  br i1 %cmpBr_424d5b, label %block_.L_424d76, label %block_424d61

block_424d61:                                     ; preds = %block_424d45
  %loadMem_424d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 1
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 15
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RBP.i145
  %3361 = sub i64 %3360, 48
  %3362 = load i64, i64* %PC.i143
  %3363 = add i64 %3362, 3
  store i64 %3363, i64* %PC.i143
  %3364 = inttoptr i64 %3361 to i32*
  %3365 = load i32, i32* %3364
  %3366 = zext i32 %3365 to i64
  store i64 %3366, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_424d61, %struct.Memory** %MEMORY
  %loadMem_424d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 5
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 15
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RBP.i142
  %3377 = sub i64 %3376, 24
  %3378 = load i64, i64* %PC.i140
  %3379 = add i64 %3378, 4
  store i64 %3379, i64* %PC.i140
  %3380 = inttoptr i64 %3377 to i64*
  %3381 = load i64, i64* %3380
  store i64 %3381, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_424d64, %struct.Memory** %MEMORY
  %loadMem_424d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 1
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %3387 to i32*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 5
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RCX.i139
  %3392 = load i32, i32* %EAX.i138
  %3393 = zext i32 %3392 to i64
  %3394 = load i64, i64* %PC.i137
  %3395 = add i64 %3394, 2
  store i64 %3395, i64* %PC.i137
  %3396 = inttoptr i64 %3391 to i32*
  store i32 %3392, i32* %3396
  store %struct.Memory* %loadMem_424d68, %struct.Memory** %MEMORY
  %loadMem_424d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RBP.i136
  %3404 = sub i64 %3403, 4
  %3405 = load i64, i64* %PC.i135
  %3406 = add i64 %3405, 7
  store i64 %3406, i64* %PC.i135
  %3407 = inttoptr i64 %3404 to i32*
  store i32 1, i32* %3407
  store %struct.Memory* %loadMem_424d6a, %struct.Memory** %MEMORY
  %loadMem_424d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %PC.i134
  %3412 = add i64 %3411, 273
  %3413 = load i64, i64* %PC.i134
  %3414 = add i64 %3413, 5
  store i64 %3414, i64* %PC.i134
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3412, i64* %3415, align 8
  store %struct.Memory* %loadMem_424d71, %struct.Memory** %MEMORY
  br label %block_.L_424e82

block_.L_424d76:                                  ; preds = %block_424d45
  %loadMem_424d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 33
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3418 to i64*
  %3419 = load i64, i64* %PC.i133
  %3420 = add i64 %3419, 5
  %3421 = load i64, i64* %PC.i133
  %3422 = add i64 %3421, 5
  store i64 %3422, i64* %PC.i133
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3420, i64* %3423, align 8
  store %struct.Memory* %loadMem_424d76, %struct.Memory** %MEMORY
  br label %block_.L_424d7b

block_.L_424d7b:                                  ; preds = %block_.L_424d76, %block_424d28
  %loadMem_424d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %PC.i132
  %3428 = add i64 %3427, 5
  %3429 = load i64, i64* %PC.i132
  %3430 = add i64 %3429, 5
  store i64 %3430, i64* %PC.i132
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3428, i64* %3431, align 8
  store %struct.Memory* %loadMem_424d7b, %struct.Memory** %MEMORY
  br label %block_.L_424d80

block_.L_424d80:                                  ; preds = %block_.L_424d7b
  %loadMem_424d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 1
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 15
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %3440 to i64*
  %3441 = load i64, i64* %RBP.i131
  %3442 = sub i64 %3441, 28
  %3443 = load i64, i64* %PC.i129
  %3444 = add i64 %3443, 3
  store i64 %3444, i64* %PC.i129
  %3445 = inttoptr i64 %3442 to i32*
  %3446 = load i32, i32* %3445
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_424d80, %struct.Memory** %MEMORY
  %loadMem_424d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 1
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RAX.i128
  %3455 = load i64, i64* %PC.i127
  %3456 = add i64 %3455, 3
  store i64 %3456, i64* %PC.i127
  %3457 = trunc i64 %3454 to i32
  %3458 = add i32 1, %3457
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %RAX.i128, align 8
  %3460 = icmp ult i32 %3458, %3457
  %3461 = icmp ult i32 %3458, 1
  %3462 = or i1 %3460, %3461
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3463, i8* %3464, align 1
  %3465 = and i32 %3458, 255
  %3466 = call i32 @llvm.ctpop.i32(i32 %3465)
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  %3469 = xor i8 %3468, 1
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3469, i8* %3470, align 1
  %3471 = xor i64 1, %3454
  %3472 = trunc i64 %3471 to i32
  %3473 = xor i32 %3472, %3458
  %3474 = lshr i32 %3473, 4
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3476, i8* %3477, align 1
  %3478 = icmp eq i32 %3458, 0
  %3479 = zext i1 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3479, i8* %3480, align 1
  %3481 = lshr i32 %3458, 31
  %3482 = trunc i32 %3481 to i8
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3482, i8* %3483, align 1
  %3484 = lshr i32 %3457, 31
  %3485 = xor i32 %3481, %3484
  %3486 = add i32 %3485, %3481
  %3487 = icmp eq i32 %3486, 2
  %3488 = zext i1 %3487 to i8
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3488, i8* %3489, align 1
  store %struct.Memory* %loadMem_424d83, %struct.Memory** %MEMORY
  %loadMem_424d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %3495 to i32*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i126
  %3500 = sub i64 %3499, 28
  %3501 = load i32, i32* %EAX.i125
  %3502 = zext i32 %3501 to i64
  %3503 = load i64, i64* %PC.i124
  %3504 = add i64 %3503, 3
  store i64 %3504, i64* %PC.i124
  %3505 = inttoptr i64 %3500 to i32*
  store i32 %3501, i32* %3505
  store %struct.Memory* %loadMem_424d86, %struct.Memory** %MEMORY
  %loadMem_424d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %PC.i123
  %3510 = add i64 %3509, -109
  %3511 = load i64, i64* %PC.i123
  %3512 = add i64 %3511, 5
  store i64 %3512, i64* %PC.i123
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3510, i64* %3513, align 8
  store %struct.Memory* %loadMem_424d89, %struct.Memory** %MEMORY
  br label %block_.L_424d1c

block_.L_424d8e:                                  ; preds = %block_.L_424d1c
  %loadMem_424d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %PC.i122
  %3518 = add i64 %3517, 5
  %3519 = load i64, i64* %PC.i122
  %3520 = add i64 %3519, 5
  store i64 %3520, i64* %PC.i122
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3518, i64* %3521, align 8
  store %struct.Memory* %loadMem_424d8e, %struct.Memory** %MEMORY
  br label %block_.L_424d93

block_.L_424d93:                                  ; preds = %block_.L_424d8e, %block_.L_424cc8
  %loadMem_424d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 15
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %RBP.i121
  %3529 = sub i64 %3528, 40
  %3530 = load i64, i64* %PC.i120
  %3531 = add i64 %3530, 4
  store i64 %3531, i64* %PC.i120
  %3532 = inttoptr i64 %3529 to i32*
  %3533 = load i32, i32* %3532
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3534, align 1
  %3535 = and i32 %3533, 255
  %3536 = call i32 @llvm.ctpop.i32(i32 %3535)
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  %3539 = xor i8 %3538, 1
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3539, i8* %3540, align 1
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3541, align 1
  %3542 = icmp eq i32 %3533, 0
  %3543 = zext i1 %3542 to i8
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3543, i8* %3544, align 1
  %3545 = lshr i32 %3533, 31
  %3546 = trunc i32 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3546, i8* %3547, align 1
  %3548 = lshr i32 %3533, 31
  %3549 = xor i32 %3545, %3548
  %3550 = add i32 %3549, %3548
  %3551 = icmp eq i32 %3550, 2
  %3552 = zext i1 %3551 to i8
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3552, i8* %3553, align 1
  store %struct.Memory* %loadMem_424d93, %struct.Memory** %MEMORY
  %loadMem_424d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %PC.i119
  %3558 = add i64 %3557, 193
  %3559 = load i64, i64* %PC.i119
  %3560 = add i64 %3559, 6
  %3561 = load i64, i64* %PC.i119
  %3562 = add i64 %3561, 6
  store i64 %3562, i64* %PC.i119
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3564 = load i8, i8* %3563, align 1
  store i8 %3564, i8* %BRANCH_TAKEN, align 1
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3566 = icmp ne i8 %3564, 0
  %3567 = select i1 %3566, i64 %3558, i64 %3560
  store i64 %3567, i64* %3565, align 8
  store %struct.Memory* %loadMem_424d97, %struct.Memory** %MEMORY
  %loadBr_424d97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424d97 = icmp eq i8 %loadBr_424d97, 1
  br i1 %cmpBr_424d97, label %block_.L_424e58, label %block_424d9d

block_424d9d:                                     ; preds = %block_.L_424d93
  %loadMem_424d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 7
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %PC.i117
  %3575 = add i64 %3574, 10
  store i64 %3575, i64* %PC.i117
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RDX.i118, align 8
  store %struct.Memory* %loadMem_424d9d, %struct.Memory** %MEMORY
  %loadMem_424da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 1
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %3581 to i32*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 1
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %RAX.i116
  %3586 = load i32, i32* %EAX.i115
  %3587 = zext i32 %3586 to i64
  %3588 = load i64, i64* %PC.i114
  %3589 = add i64 %3588, 2
  store i64 %3589, i64* %PC.i114
  %3590 = xor i64 %3587, %3585
  %3591 = trunc i64 %3590 to i32
  %3592 = and i64 %3590, 4294967295
  store i64 %3592, i64* %RAX.i116, align 8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3593, align 1
  %3594 = and i32 %3591, 255
  %3595 = call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3598, i8* %3599, align 1
  %3600 = icmp eq i32 %3591, 0
  %3601 = zext i1 %3600 to i8
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3601, i8* %3602, align 1
  %3603 = lshr i32 %3591, 31
  %3604 = trunc i32 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3604, i8* %3605, align 1
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3606, align 1
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3607, align 1
  store %struct.Memory* %loadMem_424da7, %struct.Memory** %MEMORY
  %loadMem_424da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 5
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 15
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %RBP.i113
  %3618 = sub i64 %3617, 24
  %3619 = load i64, i64* %PC.i111
  %3620 = add i64 %3619, 4
  store i64 %3620, i64* %PC.i111
  %3621 = inttoptr i64 %3618 to i64*
  %3622 = load i64, i64* %3621
  store i64 %3622, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_424da9, %struct.Memory** %MEMORY
  %loadMem_424dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 5
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 11
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RDI.i110 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %RCX.i109
  %3633 = load i64, i64* %PC.i108
  %3634 = add i64 %3633, 2
  store i64 %3634, i64* %PC.i108
  %3635 = inttoptr i64 %3632 to i32*
  %3636 = load i32, i32* %3635
  %3637 = zext i32 %3636 to i64
  store i64 %3637, i64* %RDI.i110, align 8
  store %struct.Memory* %loadMem_424dad, %struct.Memory** %MEMORY
  %loadMem_424daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 9
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RSI.i106 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 15
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3646 to i64*
  %3647 = load i64, i64* %RBP.i107
  %3648 = sub i64 %3647, 12
  %3649 = load i64, i64* %PC.i105
  %3650 = add i64 %3649, 3
  store i64 %3650, i64* %PC.i105
  %3651 = inttoptr i64 %3648 to i32*
  %3652 = load i32, i32* %3651
  %3653 = zext i32 %3652 to i64
  store i64 %3653, i64* %RSI.i106, align 8
  store %struct.Memory* %loadMem_424daf, %struct.Memory** %MEMORY
  %loadMem_424db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 33
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 5
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 15
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3662 to i64*
  %3663 = load i64, i64* %RBP.i104
  %3664 = sub i64 %3663, 8
  %3665 = load i64, i64* %PC.i102
  %3666 = add i64 %3665, 3
  store i64 %3666, i64* %PC.i102
  %3667 = inttoptr i64 %3664 to i32*
  %3668 = load i32, i32* %3667
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_424db2, %struct.Memory** %MEMORY
  %loadMem_424db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %EAX.i100 = bitcast %union.anon* %3675 to i32*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 17
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %R8D.i101 = bitcast %union.anon* %3678 to i32*
  %3679 = bitcast i32* %R8D.i101 to i64*
  %3680 = load i32, i32* %EAX.i100
  %3681 = zext i32 %3680 to i64
  %3682 = load i64, i64* %PC.i99
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC.i99
  %3684 = and i64 %3681, 4294967295
  store i64 %3684, i64* %3679, align 8
  store %struct.Memory* %loadMem_424db5, %struct.Memory** %MEMORY
  %loadMem_424db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %3690 to i32*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 19
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %R9D.i98 = bitcast %union.anon* %3693 to i32*
  %3694 = bitcast i32* %R9D.i98 to i64*
  %3695 = load i32, i32* %EAX.i97
  %3696 = zext i32 %3695 to i64
  %3697 = load i64, i64* %PC.i96
  %3698 = add i64 %3697, 3
  store i64 %3698, i64* %PC.i96
  %3699 = and i64 %3696, 4294967295
  store i64 %3699, i64* %3694, align 8
  store %struct.Memory* %loadMem_424db8, %struct.Memory** %MEMORY
  %loadMem1_424dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %PC.i95
  %3704 = add i64 %3703, -114571
  %3705 = load i64, i64* %PC.i95
  %3706 = add i64 %3705, 5
  %3707 = load i64, i64* %PC.i95
  %3708 = add i64 %3707, 5
  store i64 %3708, i64* %PC.i95
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3710 = load i64, i64* %3709, align 8
  %3711 = add i64 %3710, -8
  %3712 = inttoptr i64 %3711 to i64*
  store i64 %3706, i64* %3712
  store i64 %3711, i64* %3709, align 8
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3704, i64* %3713, align 8
  store %struct.Memory* %loadMem1_424dbb, %struct.Memory** %MEMORY
  %loadMem2_424dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424dbb = load i64, i64* %3
  %call2_424dbb = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_424dbb, %struct.Memory* %loadMem2_424dbb)
  store %struct.Memory* %call2_424dbb, %struct.Memory** %MEMORY
  %loadMem_424dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 1
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %3719 to i32*
  %3720 = load i32, i32* %EAX.i94
  %3721 = zext i32 %3720 to i64
  %3722 = load i64, i64* %PC.i93
  %3723 = add i64 %3722, 3
  store i64 %3723, i64* %PC.i93
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3724, align 1
  %3725 = and i32 %3720, 255
  %3726 = call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3729, i8* %3730, align 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3731, align 1
  %3732 = icmp eq i32 %3720, 0
  %3733 = zext i1 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3733, i8* %3734, align 1
  %3735 = lshr i32 %3720, 31
  %3736 = trunc i32 %3735 to i8
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3736, i8* %3737, align 1
  %3738 = lshr i32 %3720, 31
  %3739 = xor i32 %3735, %3738
  %3740 = add i32 %3739, %3738
  %3741 = icmp eq i32 %3740, 2
  %3742 = zext i1 %3741 to i8
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3742, i8* %3743, align 1
  store %struct.Memory* %loadMem_424dc0, %struct.Memory** %MEMORY
  %loadMem_424dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %PC.i92
  %3748 = add i64 %3747, 18
  %3749 = load i64, i64* %PC.i92
  %3750 = add i64 %3749, 6
  %3751 = load i64, i64* %PC.i92
  %3752 = add i64 %3751, 6
  store i64 %3752, i64* %PC.i92
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3754 = load i8, i8* %3753, align 1
  %3755 = icmp eq i8 %3754, 0
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %BRANCH_TAKEN, align 1
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3758 = select i1 %3755, i64 %3748, i64 %3750
  store i64 %3758, i64* %3757, align 8
  store %struct.Memory* %loadMem_424dc3, %struct.Memory** %MEMORY
  %loadBr_424dc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424dc3 = icmp eq i8 %loadBr_424dc3, 1
  br i1 %cmpBr_424dc3, label %block_.L_424dd5, label %block_424dc9

block_424dc9:                                     ; preds = %block_424d9d
  %loadMem_424dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 15
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3764 to i64*
  %3765 = load i64, i64* %RBP.i91
  %3766 = sub i64 %3765, 4
  %3767 = load i64, i64* %PC.i90
  %3768 = add i64 %3767, 7
  store i64 %3768, i64* %PC.i90
  %3769 = inttoptr i64 %3766 to i32*
  store i32 0, i32* %3769
  store %struct.Memory* %loadMem_424dc9, %struct.Memory** %MEMORY
  %loadMem_424dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %PC.i89
  %3774 = add i64 %3773, 178
  %3775 = load i64, i64* %PC.i89
  %3776 = add i64 %3775, 5
  store i64 %3776, i64* %PC.i89
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3774, i64* %3777, align 8
  store %struct.Memory* %loadMem_424dd0, %struct.Memory** %MEMORY
  br label %block_.L_424e82

block_.L_424dd5:                                  ; preds = %block_424d9d
  %loadMem_424dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 7
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %3783 to i64*
  %3784 = load i64, i64* %PC.i87
  %3785 = add i64 %3784, 10
  store i64 %3785, i64* %PC.i87
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_424dd5, %struct.Memory** %MEMORY
  %loadMem_424ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 33
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 1
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %3791 to i32*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 1
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %3794 to i64*
  %3795 = load i64, i64* %RAX.i86
  %3796 = load i32, i32* %EAX.i85
  %3797 = zext i32 %3796 to i64
  %3798 = load i64, i64* %PC.i84
  %3799 = add i64 %3798, 2
  store i64 %3799, i64* %PC.i84
  %3800 = xor i64 %3797, %3795
  %3801 = trunc i64 %3800 to i32
  %3802 = and i64 %3800, 4294967295
  store i64 %3802, i64* %RAX.i86, align 8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3803, align 1
  %3804 = and i32 %3801, 255
  %3805 = call i32 @llvm.ctpop.i32(i32 %3804)
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = xor i8 %3807, 1
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3808, i8* %3809, align 1
  %3810 = icmp eq i32 %3801, 0
  %3811 = zext i1 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3811, i8* %3812, align 1
  %3813 = lshr i32 %3801, 31
  %3814 = trunc i32 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3814, i8* %3815, align 1
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3816, align 1
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3817, align 1
  store %struct.Memory* %loadMem_424ddf, %struct.Memory** %MEMORY
  %loadMem_424de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 5
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %PC.i82
  %3825 = add i64 %3824, 5
  store i64 %3825, i64* %PC.i82
  store i64 3, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_424de1, %struct.Memory** %MEMORY
  %loadMem_424de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 11
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 15
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %3834 to i64*
  %3835 = load i64, i64* %RBP.i81
  %3836 = sub i64 %3835, 44
  %3837 = load i64, i64* %PC.i79
  %3838 = add i64 %3837, 3
  store i64 %3838, i64* %PC.i79
  %3839 = inttoptr i64 %3836 to i32*
  %3840 = load i32, i32* %3839
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_424de6, %struct.Memory** %MEMORY
  %loadMem_424de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 5
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 15
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3850 to i64*
  %3851 = load i64, i64* %RCX.i77
  %3852 = load i64, i64* %RBP.i78
  %3853 = sub i64 %3852, 12
  %3854 = load i64, i64* %PC.i76
  %3855 = add i64 %3854, 3
  store i64 %3855, i64* %PC.i76
  %3856 = trunc i64 %3851 to i32
  %3857 = inttoptr i64 %3853 to i32*
  %3858 = load i32, i32* %3857
  %3859 = sub i32 %3856, %3858
  %3860 = zext i32 %3859 to i64
  store i64 %3860, i64* %RCX.i77, align 8
  %3861 = icmp ult i32 %3856, %3858
  %3862 = zext i1 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3862, i8* %3863, align 1
  %3864 = and i32 %3859, 255
  %3865 = call i32 @llvm.ctpop.i32(i32 %3864)
  %3866 = trunc i32 %3865 to i8
  %3867 = and i8 %3866, 1
  %3868 = xor i8 %3867, 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3868, i8* %3869, align 1
  %3870 = xor i32 %3858, %3856
  %3871 = xor i32 %3870, %3859
  %3872 = lshr i32 %3871, 4
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3874, i8* %3875, align 1
  %3876 = icmp eq i32 %3859, 0
  %3877 = zext i1 %3876 to i8
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3877, i8* %3878, align 1
  %3879 = lshr i32 %3859, 31
  %3880 = trunc i32 %3879 to i8
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3880, i8* %3881, align 1
  %3882 = lshr i32 %3856, 31
  %3883 = lshr i32 %3858, 31
  %3884 = xor i32 %3883, %3882
  %3885 = xor i32 %3879, %3882
  %3886 = add i32 %3885, %3884
  %3887 = icmp eq i32 %3886, 2
  %3888 = zext i1 %3887 to i8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3888, i8* %3889, align 1
  store %struct.Memory* %loadMem_424de9, %struct.Memory** %MEMORY
  %loadMem_424dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 9
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RSI.i74 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RBP.i75
  %3900 = sub i64 %3899, 8
  %3901 = load i64, i64* %PC.i73
  %3902 = add i64 %3901, 3
  store i64 %3902, i64* %PC.i73
  %3903 = inttoptr i64 %3900 to i32*
  %3904 = load i32, i32* %3903
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %RSI.i74, align 8
  store %struct.Memory* %loadMem_424dec, %struct.Memory** %MEMORY
  %loadMem_424def = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 9
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3911 to i32*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 15
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %RBP.i72
  %3916 = sub i64 %3915, 84
  %3917 = load i32, i32* %ESI.i
  %3918 = zext i32 %3917 to i64
  %3919 = load i64, i64* %PC.i71
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i71
  %3921 = inttoptr i64 %3916 to i32*
  store i32 %3917, i32* %3921
  store %struct.Memory* %loadMem_424def, %struct.Memory** %MEMORY
  %loadMem_424df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 33
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3924 to i64*
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 5
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3927 to i32*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 9
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RSI.i70 = bitcast %union.anon* %3930 to i64*
  %3931 = load i32, i32* %ECX.i
  %3932 = zext i32 %3931 to i64
  %3933 = load i64, i64* %PC.i69
  %3934 = add i64 %3933, 2
  store i64 %3934, i64* %PC.i69
  %3935 = and i64 %3932, 4294967295
  store i64 %3935, i64* %RSI.i70, align 8
  store %struct.Memory* %loadMem_424df2, %struct.Memory** %MEMORY
  %loadMem_424df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 33
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 5
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 15
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3944 to i64*
  %3945 = load i64, i64* %RBP.i68
  %3946 = sub i64 %3945, 84
  %3947 = load i64, i64* %PC.i66
  %3948 = add i64 %3947, 3
  store i64 %3948, i64* %PC.i66
  %3949 = inttoptr i64 %3946 to i32*
  %3950 = load i32, i32* %3949
  %3951 = zext i32 %3950 to i64
  store i64 %3951, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_424df4, %struct.Memory** %MEMORY
  %loadMem_424df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 1
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %3957 to i32*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 17
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3960 to i32*
  %3961 = bitcast i32* %R8D.i to i64*
  %3962 = load i32, i32* %EAX.i65
  %3963 = zext i32 %3962 to i64
  %3964 = load i64, i64* %PC.i64
  %3965 = add i64 %3964, 3
  store i64 %3965, i64* %PC.i64
  %3966 = and i64 %3963, 4294967295
  store i64 %3966, i64* %3961, align 8
  store %struct.Memory* %loadMem_424df7, %struct.Memory** %MEMORY
  %loadMem_424dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 1
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %3972 to i32*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 19
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3975 to i32*
  %3976 = bitcast i32* %R9D.i to i64*
  %3977 = load i32, i32* %EAX.i63
  %3978 = zext i32 %3977 to i64
  %3979 = load i64, i64* %PC.i62
  %3980 = add i64 %3979, 3
  store i64 %3980, i64* %PC.i62
  %3981 = and i64 %3978, 4294967295
  store i64 %3981, i64* %3976, align 8
  store %struct.Memory* %loadMem_424dfa, %struct.Memory** %MEMORY
  %loadMem1_424dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %PC.i61
  %3986 = add i64 %3985, -114637
  %3987 = load i64, i64* %PC.i61
  %3988 = add i64 %3987, 5
  %3989 = load i64, i64* %PC.i61
  %3990 = add i64 %3989, 5
  store i64 %3990, i64* %PC.i61
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3992 = load i64, i64* %3991, align 8
  %3993 = add i64 %3992, -8
  %3994 = inttoptr i64 %3993 to i64*
  store i64 %3988, i64* %3994
  store i64 %3993, i64* %3991, align 8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3986, i64* %3995, align 8
  store %struct.Memory* %loadMem1_424dfd, %struct.Memory** %MEMORY
  %loadMem2_424dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424dfd = load i64, i64* %3
  %call2_424dfd = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_424dfd, %struct.Memory* %loadMem2_424dfd)
  store %struct.Memory* %call2_424dfd, %struct.Memory** %MEMORY
  %loadMem_424e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 33
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 1
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %EAX.i60 = bitcast %union.anon* %4001 to i32*
  %4002 = load i32, i32* %EAX.i60
  %4003 = zext i32 %4002 to i64
  %4004 = load i64, i64* %PC.i59
  %4005 = add i64 %4004, 3
  store i64 %4005, i64* %PC.i59
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4006, align 1
  %4007 = and i32 %4002, 255
  %4008 = call i32 @llvm.ctpop.i32(i32 %4007)
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = xor i8 %4010, 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4011, i8* %4012, align 1
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4013, align 1
  %4014 = icmp eq i32 %4002, 0
  %4015 = zext i1 %4014 to i8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4015, i8* %4016, align 1
  %4017 = lshr i32 %4002, 31
  %4018 = trunc i32 %4017 to i8
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4018, i8* %4019, align 1
  %4020 = lshr i32 %4002, 31
  %4021 = xor i32 %4017, %4020
  %4022 = add i32 %4021, %4020
  %4023 = icmp eq i32 %4022, 2
  %4024 = zext i1 %4023 to i8
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4024, i8* %4025, align 1
  store %struct.Memory* %loadMem_424e02, %struct.Memory** %MEMORY
  %loadMem_424e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %PC.i58
  %4030 = add i64 %4029, 13
  %4031 = load i64, i64* %PC.i58
  %4032 = add i64 %4031, 6
  %4033 = load i64, i64* %PC.i58
  %4034 = add i64 %4033, 6
  store i64 %4034, i64* %PC.i58
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4036 = load i8, i8* %4035, align 1
  store i8 %4036, i8* %BRANCH_TAKEN, align 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4038 = icmp ne i8 %4036, 0
  %4039 = select i1 %4038, i64 %4030, i64 %4032
  store i64 %4039, i64* %4037, align 8
  store %struct.Memory* %loadMem_424e05, %struct.Memory** %MEMORY
  %loadBr_424e05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e05 = icmp eq i8 %loadBr_424e05, 1
  br i1 %cmpBr_424e05, label %block_.L_424e12, label %block_424e0b

block_424e0b:                                     ; preds = %block_.L_424dd5
  %loadMem_424e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 15
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %4045 to i64*
  %4046 = load i64, i64* %RBP.i57
  %4047 = sub i64 %4046, 52
  %4048 = load i64, i64* %PC.i56
  %4049 = add i64 %4048, 7
  store i64 %4049, i64* %PC.i56
  %4050 = inttoptr i64 %4047 to i32*
  store i32 1, i32* %4050
  store %struct.Memory* %loadMem_424e0b, %struct.Memory** %MEMORY
  br label %block_.L_424e12

block_.L_424e12:                                  ; preds = %block_424e0b, %block_.L_424dd5
  %loadMem_424e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 11
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 15
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %RBP.i55
  %4061 = sub i64 %4060, 8
  %4062 = load i64, i64* %PC.i53
  %4063 = add i64 %4062, 3
  store i64 %4063, i64* %PC.i53
  %4064 = inttoptr i64 %4061 to i32*
  %4065 = load i32, i32* %4064
  %4066 = zext i32 %4065 to i64
  store i64 %4066, i64* %RDI.i54, align 8
  store %struct.Memory* %loadMem_424e12, %struct.Memory** %MEMORY
  %loadMem_424e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 33
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 9
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 15
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %RBP.i52
  %4077 = sub i64 %4076, 12
  %4078 = load i64, i64* %PC.i50
  %4079 = add i64 %4078, 3
  store i64 %4079, i64* %PC.i50
  %4080 = inttoptr i64 %4077 to i32*
  %4081 = load i32, i32* %4080
  %4082 = zext i32 %4081 to i64
  store i64 %4082, i64* %RSI.i51, align 8
  store %struct.Memory* %loadMem_424e15, %struct.Memory** %MEMORY
  %loadMem1_424e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %PC.i49
  %4087 = add i64 %4086, 290328
  %4088 = load i64, i64* %PC.i49
  %4089 = add i64 %4088, 5
  %4090 = load i64, i64* %PC.i49
  %4091 = add i64 %4090, 5
  store i64 %4091, i64* %PC.i49
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4093 = load i64, i64* %4092, align 8
  %4094 = add i64 %4093, -8
  %4095 = inttoptr i64 %4094 to i64*
  store i64 %4089, i64* %4095
  store i64 %4094, i64* %4092, align 8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4087, i64* %4096, align 8
  store %struct.Memory* %loadMem1_424e18, %struct.Memory** %MEMORY
  %loadMem2_424e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424e18 = load i64, i64* %3
  %call2_424e18 = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64 %loadPC_424e18, %struct.Memory* %loadMem2_424e18)
  store %struct.Memory* %call2_424e18, %struct.Memory** %MEMORY
  %loadMem_424e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 1
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %4102 to i32*
  %4103 = load i32, i32* %EAX.i48
  %4104 = zext i32 %4103 to i64
  %4105 = load i64, i64* %PC.i47
  %4106 = add i64 %4105, 3
  store i64 %4106, i64* %PC.i47
  %4107 = sub i32 %4103, 5
  %4108 = icmp ult i32 %4103, 5
  %4109 = zext i1 %4108 to i8
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4109, i8* %4110, align 1
  %4111 = and i32 %4107, 255
  %4112 = call i32 @llvm.ctpop.i32(i32 %4111)
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = xor i8 %4114, 1
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4115, i8* %4116, align 1
  %4117 = xor i64 5, %4104
  %4118 = trunc i64 %4117 to i32
  %4119 = xor i32 %4118, %4107
  %4120 = lshr i32 %4119, 4
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4122, i8* %4123, align 1
  %4124 = icmp eq i32 %4107, 0
  %4125 = zext i1 %4124 to i8
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4125, i8* %4126, align 1
  %4127 = lshr i32 %4107, 31
  %4128 = trunc i32 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4128, i8* %4129, align 1
  %4130 = lshr i32 %4103, 31
  %4131 = xor i32 %4127, %4130
  %4132 = add i32 %4131, %4130
  %4133 = icmp eq i32 %4132, 2
  %4134 = zext i1 %4133 to i8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4134, i8* %4135, align 1
  store %struct.Memory* %loadMem_424e1d, %struct.Memory** %MEMORY
  %loadMem_424e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %PC.i46
  %4140 = add i64 %4139, 18
  %4141 = load i64, i64* %PC.i46
  %4142 = add i64 %4141, 6
  %4143 = load i64, i64* %PC.i46
  %4144 = add i64 %4143, 6
  store i64 %4144, i64* %PC.i46
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4146 = load i8, i8* %4145, align 1
  %4147 = icmp eq i8 %4146, 0
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %BRANCH_TAKEN, align 1
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4150 = select i1 %4147, i64 %4140, i64 %4142
  store i64 %4150, i64* %4149, align 8
  store %struct.Memory* %loadMem_424e20, %struct.Memory** %MEMORY
  %loadBr_424e20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e20 = icmp eq i8 %loadBr_424e20, 1
  br i1 %cmpBr_424e20, label %block_.L_424e32, label %block_424e26

block_424e26:                                     ; preds = %block_.L_424e12
  %loadMem_424e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 33
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 15
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %RBP.i45
  %4158 = sub i64 %4157, 56
  %4159 = load i64, i64* %PC.i44
  %4160 = add i64 %4159, 7
  store i64 %4160, i64* %PC.i44
  %4161 = inttoptr i64 %4158 to i32*
  store i32 1, i32* %4161
  store %struct.Memory* %loadMem_424e26, %struct.Memory** %MEMORY
  %loadMem_424e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 33
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %PC.i43
  %4166 = add i64 %4165, 23
  %4167 = load i64, i64* %PC.i43
  %4168 = add i64 %4167, 5
  store i64 %4168, i64* %PC.i43
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4166, i64* %4169, align 8
  store %struct.Memory* %loadMem_424e2d, %struct.Memory** %MEMORY
  br label %block_.L_424e44

block_.L_424e32:                                  ; preds = %block_.L_424e12
  %loadMem_424e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 11
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i42
  %4180 = sub i64 %4179, 8
  %4181 = load i64, i64* %PC.i41
  %4182 = add i64 %4181, 3
  store i64 %4182, i64* %PC.i41
  %4183 = inttoptr i64 %4180 to i32*
  %4184 = load i32, i32* %4183
  %4185 = zext i32 %4184 to i64
  store i64 %4185, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_424e32, %struct.Memory** %MEMORY
  %loadMem_424e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 9
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 15
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RBP.i40
  %4196 = sub i64 %4195, 12
  %4197 = load i64, i64* %PC.i39
  %4198 = add i64 %4197, 3
  store i64 %4198, i64* %PC.i39
  %4199 = inttoptr i64 %4196 to i32*
  %4200 = load i32, i32* %4199
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_424e35, %struct.Memory** %MEMORY
  %loadMem_424e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 7
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 15
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RBP.i38
  %4212 = sub i64 %4211, 24
  %4213 = load i64, i64* %PC.i37
  %4214 = add i64 %4213, 4
  store i64 %4214, i64* %PC.i37
  %4215 = inttoptr i64 %4212 to i64*
  %4216 = load i64, i64* %4215
  store i64 %4216, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_424e38, %struct.Memory** %MEMORY
  %loadMem1_424e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %PC.i36
  %4221 = add i64 %4220, -1116
  %4222 = load i64, i64* %PC.i36
  %4223 = add i64 %4222, 5
  %4224 = load i64, i64* %PC.i36
  %4225 = add i64 %4224, 5
  store i64 %4225, i64* %PC.i36
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4227 = load i64, i64* %4226, align 8
  %4228 = add i64 %4227, -8
  %4229 = inttoptr i64 %4228 to i64*
  store i64 %4223, i64* %4229
  store i64 %4228, i64* %4226, align 8
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4221, i64* %4230, align 8
  store %struct.Memory* %loadMem1_424e3c, %struct.Memory** %MEMORY
  %loadMem2_424e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424e3c = load i64, i64* %3
  %call2_424e3c = call %struct.Memory* @sub_4249e0.find_backfilling_move(%struct.State* %0, i64 %loadPC_424e3c, %struct.Memory* %loadMem2_424e3c)
  store %struct.Memory* %call2_424e3c, %struct.Memory** %MEMORY
  %loadMem_424e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 1
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %4236 to i32*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 15
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4239 to i64*
  %4240 = load i64, i64* %RBP.i35
  %4241 = sub i64 %4240, 56
  %4242 = load i32, i32* %EAX.i34
  %4243 = zext i32 %4242 to i64
  %4244 = load i64, i64* %PC.i33
  %4245 = add i64 %4244, 3
  store i64 %4245, i64* %PC.i33
  %4246 = inttoptr i64 %4241 to i32*
  store i32 %4242, i32* %4246
  store %struct.Memory* %loadMem_424e41, %struct.Memory** %MEMORY
  br label %block_.L_424e44

block_.L_424e44:                                  ; preds = %block_.L_424e32, %block_424e26
  %loadMem_424e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 33
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 15
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %4252 to i64*
  %4253 = load i64, i64* %RBP.i32
  %4254 = sub i64 %4253, 52
  %4255 = load i64, i64* %PC.i31
  %4256 = add i64 %4255, 4
  store i64 %4256, i64* %PC.i31
  %4257 = inttoptr i64 %4254 to i32*
  %4258 = load i32, i32* %4257
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4259, align 1
  %4260 = and i32 %4258, 255
  %4261 = call i32 @llvm.ctpop.i32(i32 %4260)
  %4262 = trunc i32 %4261 to i8
  %4263 = and i8 %4262, 1
  %4264 = xor i8 %4263, 1
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4264, i8* %4265, align 1
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4266, align 1
  %4267 = icmp eq i32 %4258, 0
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4268, i8* %4269, align 1
  %4270 = lshr i32 %4258, 31
  %4271 = trunc i32 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4271, i8* %4272, align 1
  %4273 = lshr i32 %4258, 31
  %4274 = xor i32 %4270, %4273
  %4275 = add i32 %4274, %4273
  %4276 = icmp eq i32 %4275, 2
  %4277 = zext i1 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4277, i8* %4278, align 1
  store %struct.Memory* %loadMem_424e44, %struct.Memory** %MEMORY
  %loadMem_424e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4281 to i64*
  %4282 = load i64, i64* %PC.i30
  %4283 = add i64 %4282, 11
  %4284 = load i64, i64* %PC.i30
  %4285 = add i64 %4284, 6
  %4286 = load i64, i64* %PC.i30
  %4287 = add i64 %4286, 6
  store i64 %4287, i64* %PC.i30
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4289 = load i8, i8* %4288, align 1
  store i8 %4289, i8* %BRANCH_TAKEN, align 1
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4291 = icmp ne i8 %4289, 0
  %4292 = select i1 %4291, i64 %4283, i64 %4285
  store i64 %4292, i64* %4290, align 8
  store %struct.Memory* %loadMem_424e48, %struct.Memory** %MEMORY
  %loadBr_424e48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e48 = icmp eq i8 %loadBr_424e48, 1
  br i1 %cmpBr_424e48, label %block_.L_424e53, label %block_424e4e

block_424e4e:                                     ; preds = %block_.L_424e44
  %loadMem1_424e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4295 to i64*
  %4296 = load i64, i64* %PC.i29
  %4297 = add i64 %4296, -94446
  %4298 = load i64, i64* %PC.i29
  %4299 = add i64 %4298, 5
  %4300 = load i64, i64* %PC.i29
  %4301 = add i64 %4300, 5
  store i64 %4301, i64* %PC.i29
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4303 = load i64, i64* %4302, align 8
  %4304 = add i64 %4303, -8
  %4305 = inttoptr i64 %4304 to i64*
  store i64 %4299, i64* %4305
  store i64 %4304, i64* %4302, align 8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4297, i64* %4306, align 8
  store %struct.Memory* %loadMem1_424e4e, %struct.Memory** %MEMORY
  %loadMem2_424e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424e4e = load i64, i64* %3
  %call2_424e4e = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_424e4e, %struct.Memory* %loadMem2_424e4e)
  store %struct.Memory* %call2_424e4e, %struct.Memory** %MEMORY
  br label %block_.L_424e53

block_.L_424e53:                                  ; preds = %block_424e4e, %block_.L_424e44
  %loadMem1_424e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %PC.i28
  %4311 = add i64 %4310, -94451
  %4312 = load i64, i64* %PC.i28
  %4313 = add i64 %4312, 5
  %4314 = load i64, i64* %PC.i28
  %4315 = add i64 %4314, 5
  store i64 %4315, i64* %PC.i28
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4317 = load i64, i64* %4316, align 8
  %4318 = add i64 %4317, -8
  %4319 = inttoptr i64 %4318 to i64*
  store i64 %4313, i64* %4319
  store i64 %4318, i64* %4316, align 8
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4311, i64* %4320, align 8
  store %struct.Memory* %loadMem1_424e53, %struct.Memory** %MEMORY
  %loadMem2_424e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424e53 = load i64, i64* %3
  %call2_424e53 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_424e53, %struct.Memory* %loadMem2_424e53)
  store %struct.Memory* %call2_424e53, %struct.Memory** %MEMORY
  br label %block_.L_424e58

block_.L_424e58:                                  ; preds = %block_.L_424e53, %block_.L_424d93
  %loadMem_424e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 33
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 15
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4326 to i64*
  %4327 = load i64, i64* %RBP.i27
  %4328 = sub i64 %4327, 56
  %4329 = load i64, i64* %PC.i26
  %4330 = add i64 %4329, 4
  store i64 %4330, i64* %PC.i26
  %4331 = inttoptr i64 %4328 to i32*
  %4332 = load i32, i32* %4331
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4333, align 1
  %4334 = and i32 %4332, 255
  %4335 = call i32 @llvm.ctpop.i32(i32 %4334)
  %4336 = trunc i32 %4335 to i8
  %4337 = and i8 %4336, 1
  %4338 = xor i8 %4337, 1
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4338, i8* %4339, align 1
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4340, align 1
  %4341 = icmp eq i32 %4332, 0
  %4342 = zext i1 %4341 to i8
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4342, i8* %4343, align 1
  %4344 = lshr i32 %4332, 31
  %4345 = trunc i32 %4344 to i8
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4345, i8* %4346, align 1
  %4347 = lshr i32 %4332, 31
  %4348 = xor i32 %4344, %4347
  %4349 = add i32 %4348, %4347
  %4350 = icmp eq i32 %4349, 2
  %4351 = zext i1 %4350 to i8
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4351, i8* %4352, align 1
  store %struct.Memory* %loadMem_424e58, %struct.Memory** %MEMORY
  %loadMem_424e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 33
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4355 to i64*
  %4356 = load i64, i64* %PC.i25
  %4357 = add i64 %4356, 32
  %4358 = load i64, i64* %PC.i25
  %4359 = add i64 %4358, 6
  %4360 = load i64, i64* %PC.i25
  %4361 = add i64 %4360, 6
  store i64 %4361, i64* %PC.i25
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4363 = load i8, i8* %4362, align 1
  %4364 = icmp eq i8 %4363, 0
  %4365 = zext i1 %4364 to i8
  store i8 %4365, i8* %BRANCH_TAKEN, align 1
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4367 = select i1 %4364, i64 %4357, i64 %4359
  store i64 %4367, i64* %4366, align 8
  store %struct.Memory* %loadMem_424e5c, %struct.Memory** %MEMORY
  %loadBr_424e5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e5c = icmp eq i8 %loadBr_424e5c, 1
  br i1 %cmpBr_424e5c, label %block_.L_424e7c, label %block_424e62

block_424e62:                                     ; preds = %block_.L_424e58
  %loadMem_424e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 15
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RBP.i24
  %4375 = sub i64 %4374, 64
  %4376 = load i64, i64* %PC.i23
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i23
  %4378 = inttoptr i64 %4375 to i32*
  %4379 = load i32, i32* %4378
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4380, align 1
  %4381 = and i32 %4379, 255
  %4382 = call i32 @llvm.ctpop.i32(i32 %4381)
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = xor i8 %4384, 1
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4385, i8* %4386, align 1
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4387, align 1
  %4388 = icmp eq i32 %4379, 0
  %4389 = zext i1 %4388 to i8
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4389, i8* %4390, align 1
  %4391 = lshr i32 %4379, 31
  %4392 = trunc i32 %4391 to i8
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4392, i8* %4393, align 1
  %4394 = lshr i32 %4379, 31
  %4395 = xor i32 %4391, %4394
  %4396 = add i32 %4395, %4394
  %4397 = icmp eq i32 %4396, 2
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4398, i8* %4399, align 1
  store %struct.Memory* %loadMem_424e62, %struct.Memory** %MEMORY
  %loadMem_424e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4402 to i64*
  %4403 = load i64, i64* %PC.i22
  %4404 = add i64 %4403, 22
  %4405 = load i64, i64* %PC.i22
  %4406 = add i64 %4405, 6
  %4407 = load i64, i64* %PC.i22
  %4408 = add i64 %4407, 6
  store i64 %4408, i64* %PC.i22
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4410 = load i8, i8* %4409, align 1
  store i8 %4410, i8* %BRANCH_TAKEN, align 1
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4412 = icmp ne i8 %4410, 0
  %4413 = select i1 %4412, i64 %4404, i64 %4406
  store i64 %4413, i64* %4411, align 8
  store %struct.Memory* %loadMem_424e66, %struct.Memory** %MEMORY
  %loadBr_424e66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e66 = icmp eq i8 %loadBr_424e66, 1
  br i1 %cmpBr_424e66, label %block_.L_424e7c, label %block_424e6c

block_424e6c:                                     ; preds = %block_424e62
  %loadMem_424e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 1
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 15
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i21
  %4424 = sub i64 %4423, 64
  %4425 = load i64, i64* %PC.i19
  %4426 = add i64 %4425, 3
  store i64 %4426, i64* %PC.i19
  %4427 = inttoptr i64 %4424 to i32*
  %4428 = load i32, i32* %4427
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_424e6c, %struct.Memory** %MEMORY
  %loadMem_424e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 15
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %RBP.i18
  %4440 = sub i64 %4439, 24
  %4441 = load i64, i64* %PC.i16
  %4442 = add i64 %4441, 4
  store i64 %4442, i64* %PC.i16
  %4443 = inttoptr i64 %4440 to i64*
  %4444 = load i64, i64* %4443
  store i64 %4444, i64* %RCX.i17, align 8
  store %struct.Memory* %loadMem_424e6f, %struct.Memory** %MEMORY
  %loadMem_424e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 1
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %4450 to i32*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 5
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %RCX.i
  %4455 = load i32, i32* %EAX.i15
  %4456 = zext i32 %4455 to i64
  %4457 = load i64, i64* %PC.i14
  %4458 = add i64 %4457, 2
  store i64 %4458, i64* %PC.i14
  %4459 = inttoptr i64 %4454 to i32*
  store i32 %4455, i32* %4459
  store %struct.Memory* %loadMem_424e73, %struct.Memory** %MEMORY
  %loadMem_424e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RBP.i13
  %4467 = sub i64 %4466, 56
  %4468 = load i64, i64* %PC.i12
  %4469 = add i64 %4468, 7
  store i64 %4469, i64* %PC.i12
  %4470 = inttoptr i64 %4467 to i32*
  store i32 1, i32* %4470
  store %struct.Memory* %loadMem_424e75, %struct.Memory** %MEMORY
  br label %block_.L_424e7c

block_.L_424e7c:                                  ; preds = %block_424e6c, %block_424e62, %block_.L_424e58
  %loadMem_424e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 1
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 15
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RBP.i11
  %4481 = sub i64 %4480, 56
  %4482 = load i64, i64* %PC.i9
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %PC.i9
  %4484 = inttoptr i64 %4481 to i32*
  %4485 = load i32, i32* %4484
  %4486 = zext i32 %4485 to i64
  store i64 %4486, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_424e7c, %struct.Memory** %MEMORY
  %loadMem_424e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 1
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4492 to i32*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RBP.i8
  %4497 = sub i64 %4496, 4
  %4498 = load i32, i32* %EAX.i
  %4499 = zext i32 %4498 to i64
  %4500 = load i64, i64* %PC.i7
  %4501 = add i64 %4500, 3
  store i64 %4501, i64* %PC.i7
  %4502 = inttoptr i64 %4497 to i32*
  store i32 %4498, i32* %4502
  store %struct.Memory* %loadMem_424e7f, %struct.Memory** %MEMORY
  br label %block_.L_424e82

block_.L_424e82:                                  ; preds = %block_.L_424e7c, %block_424dc9, %block_424d61, %block_424b66, %block_424a51
  %loadMem_424e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 1
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 15
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %RBP.i6
  %4513 = sub i64 %4512, 4
  %4514 = load i64, i64* %PC.i5
  %4515 = add i64 %4514, 3
  store i64 %4515, i64* %PC.i5
  %4516 = inttoptr i64 %4513 to i32*
  %4517 = load i32, i32* %4516
  %4518 = zext i32 %4517 to i64
  store i64 %4518, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_424e82, %struct.Memory** %MEMORY
  %loadMem_424e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 33
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 13
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4524 to i64*
  %4525 = load i64, i64* %RSP.i
  %4526 = load i64, i64* %PC.i4
  %4527 = add i64 %4526, 4
  store i64 %4527, i64* %PC.i4
  %4528 = add i64 96, %4525
  store i64 %4528, i64* %RSP.i, align 8
  %4529 = icmp ult i64 %4528, %4525
  %4530 = icmp ult i64 %4528, 96
  %4531 = or i1 %4529, %4530
  %4532 = zext i1 %4531 to i8
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4532, i8* %4533, align 1
  %4534 = trunc i64 %4528 to i32
  %4535 = and i32 %4534, 255
  %4536 = call i32 @llvm.ctpop.i32(i32 %4535)
  %4537 = trunc i32 %4536 to i8
  %4538 = and i8 %4537, 1
  %4539 = xor i8 %4538, 1
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4539, i8* %4540, align 1
  %4541 = xor i64 96, %4525
  %4542 = xor i64 %4541, %4528
  %4543 = lshr i64 %4542, 4
  %4544 = trunc i64 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4545, i8* %4546, align 1
  %4547 = icmp eq i64 %4528, 0
  %4548 = zext i1 %4547 to i8
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4548, i8* %4549, align 1
  %4550 = lshr i64 %4528, 63
  %4551 = trunc i64 %4550 to i8
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4551, i8* %4552, align 1
  %4553 = lshr i64 %4525, 63
  %4554 = xor i64 %4550, %4553
  %4555 = add i64 %4554, %4550
  %4556 = icmp eq i64 %4555, 2
  %4557 = zext i1 %4556 to i8
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4557, i8* %4558, align 1
  store %struct.Memory* %loadMem_424e85, %struct.Memory** %MEMORY
  %loadMem_424e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 33
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 15
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4564 to i64*
  %4565 = load i64, i64* %PC.i2
  %4566 = add i64 %4565, 1
  store i64 %4566, i64* %PC.i2
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4568 = load i64, i64* %4567, align 8
  %4569 = add i64 %4568, 8
  %4570 = inttoptr i64 %4568 to i64*
  %4571 = load i64, i64* %4570
  store i64 %4571, i64* %RBP.i3, align 8
  store i64 %4569, i64* %4567, align 8
  store %struct.Memory* %loadMem_424e89, %struct.Memory** %MEMORY
  %loadMem_424e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %PC.i1
  %4576 = add i64 %4575, 1
  store i64 %4576, i64* %PC.i1
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4579 = load i64, i64* %4578, align 8
  %4580 = inttoptr i64 %4579 to i64*
  %4581 = load i64, i64* %4580
  store i64 %4581, i64* %4577, align 8
  %4582 = add i64 %4579, 8
  store i64 %4582, i64* %4578, align 8
  store %struct.Memory* %loadMem_424e8a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_424e8a
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movq__0x57bcf5___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_424a5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_424e82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
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

define %struct.Memory* @routine_je_.L_424a85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_424a85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_424aad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57bd0b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bd0b_type* @G__0x57bd0b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x17a___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 378, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57bdc1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bdc1_type* @G__0x57bdc1 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0xf1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xaafcf0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaafcf0_type* @G__0xaafcf0 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__0xab00c0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xab00c0_type* @G__0xab00c0 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_424bac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_jge_.L_424b99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_424b2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xab00c0___rax_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11206848
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_je_.L_424b2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_424b8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_424b86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xab00c0___rax_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11206848
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_424b7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_424b86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424af9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424b9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_424ae8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_424c1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 32
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

define %struct.Memory* @routine_jge_.L_424c15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaafcf0___rax_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11205872
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.safe_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_424c02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaafcf0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11205872
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_424c15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424c07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424bbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424c1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_424cc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57bcf5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bcf5_type* @G__0x57bcf5 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.find_proper_superstring_liberties(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_424cc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_424cb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_424cc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424cb5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424c6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424cc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_424d93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xab00c0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xab00c0_type* @G__0xab00c0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RCX, align 8
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

define %struct.Memory* @routine_callq_.superstring_chainlinks(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_424d8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_424d7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_424d76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_424d7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424d80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424d1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_424d93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_424e58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_424dd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_movl__esi__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_424e12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_424e32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_424e44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.find_backfilling_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_424e53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
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

define %struct.Memory* @routine_jne_.L_424e7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
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

define %struct.Memory* @routine_je_.L_424e7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
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
