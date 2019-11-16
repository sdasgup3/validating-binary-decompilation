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
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a4d2_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x58014a_type = type <{ [8 x i8] }>
%G__0x58015b_type = type <{ [8 x i8] }>
%G__0x58016c_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G__0x57a4d2 = global %G__0x57a4d2_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x58014a = global %G__0x58014a_type zeroinitializer
@G__0x58015b = global %G__0x58015b_type zeroinitializer
@G__0x58016c = global %G__0x58016c_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

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

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_437990.movelist_change_point(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @attack_threats(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_46be60 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_46be60, %struct.Memory** %MEMORY
  %loadMem_46be61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i547 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i547
  %27 = load i64, i64* %PC.i546
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i546
  store i64 %26, i64* %RBP.i548, align 8
  store %struct.Memory* %loadMem_46be61, %struct.Memory** %MEMORY
  %loadMem_46be64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i565 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i565
  %36 = load i64, i64* %PC.i564
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i564
  %38 = sub i64 %35, 1744
  store i64 %38, i64* %RSP.i565, align 8
  %39 = icmp ult i64 %35, 1744
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
  %49 = xor i64 1744, %35
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
  store %struct.Memory* %loadMem_46be64, %struct.Memory** %MEMORY
  %loadMem_46be6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i619
  %77 = sub i64 %76, 8
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i618
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i618
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_46be6b, %struct.Memory** %MEMORY
  %loadMem_46be6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i616 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i617
  %93 = sub i64 %92, 12
  %94 = load i32, i32* %ESI.i616
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i615
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i615
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_46be6e, %struct.Memory** %MEMORY
  %loadMem_46be71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i614
  %109 = sub i64 %108, 24
  %110 = load i64, i64* %RDX.i613
  %111 = load i64, i64* %PC.i612
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i612
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_46be71, %struct.Memory** %MEMORY
  %loadMem_46be75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i611
  %124 = sub i64 %123, 32
  %125 = load i64, i64* %RCX.i610
  %126 = load i64, i64* %PC.i609
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i609
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_46be75, %struct.Memory** %MEMORY
  %loadMem_46be79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i608
  %139 = sub i64 %138, 8
  %140 = load i64, i64* %PC.i606
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i606
  %142 = inttoptr i64 %139 to i32*
  %143 = load i32, i32* %142
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %RCX.i607, align 8
  store %struct.Memory* %loadMem_46be79, %struct.Memory** %MEMORY
  %loadMem_46be7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RCX.i604 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RSI.i605 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RCX.i604
  %155 = add i64 %154, 12099168
  %156 = load i64, i64* %PC.i603
  %157 = add i64 %156, 8
  store i64 %157, i64* %PC.i603
  %158 = inttoptr i64 %155 to i8*
  %159 = load i8, i8* %158
  %160 = zext i8 %159 to i64
  store i64 %160, i64* %RSI.i605, align 8
  store %struct.Memory* %loadMem_46be7d, %struct.Memory** %MEMORY
  %loadMem_46be85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %ESI.i602 = bitcast %union.anon* %166 to i32*
  %167 = load i32, i32* %ESI.i602
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC.i601
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i601
  %171 = sub i32 %167, 1
  %172 = icmp ult i32 %167, 1
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1
  %175 = and i32 %171, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %179, i8* %180, align 1
  %181 = xor i64 1, %168
  %182 = trunc i64 %181 to i32
  %183 = xor i32 %182, %171
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %186, i8* %187, align 1
  %188 = icmp eq i32 %171, 0
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %189, i8* %190, align 1
  %191 = lshr i32 %171, 31
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %192, i8* %193, align 1
  %194 = lshr i32 %167, 31
  %195 = xor i32 %191, %194
  %196 = add i32 %195, %194
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %198, i8* %199, align 1
  store %struct.Memory* %loadMem_46be85, %struct.Memory** %MEMORY
  %loadMem_46be88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %PC.i600
  %204 = add i64 %203, 27
  %205 = load i64, i64* %PC.i600
  %206 = add i64 %205, 6
  %207 = load i64, i64* %PC.i600
  %208 = add i64 %207, 6
  store i64 %208, i64* %PC.i600
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %210 = load i8, i8* %209, align 1
  store i8 %210, i8* %BRANCH_TAKEN, align 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %212 = icmp ne i8 %210, 0
  %213 = select i1 %212, i64 %204, i64 %206
  store i64 %213, i64* %211, align 8
  store %struct.Memory* %loadMem_46be88, %struct.Memory** %MEMORY
  %loadBr_46be88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46be88 = icmp eq i8 %loadBr_46be88, 1
  br i1 %cmpBr_46be88, label %block_.L_46bea3, label %block_46be8e

block_46be8e:                                     ; preds = %entry
  %loadMem_46be8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 15
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %222 to i64*
  %223 = load i64, i64* %RBP.i599
  %224 = sub i64 %223, 8
  %225 = load i64, i64* %PC.i597
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC.i597
  %227 = inttoptr i64 %224 to i32*
  %228 = load i32, i32* %227
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_46be8e, %struct.Memory** %MEMORY
  %loadMem_46be92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RAX.i595
  %240 = add i64 %239, 12099168
  %241 = load i64, i64* %PC.i594
  %242 = add i64 %241, 8
  store i64 %242, i64* %PC.i594
  %243 = inttoptr i64 %240 to i8*
  %244 = load i8, i8* %243
  %245 = zext i8 %244 to i64
  store i64 %245, i64* %RCX.i596, align 8
  store %struct.Memory* %loadMem_46be92, %struct.Memory** %MEMORY
  %loadMem_46be9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %ECX.i593 = bitcast %union.anon* %251 to i32*
  %252 = load i32, i32* %ECX.i593
  %253 = zext i32 %252 to i64
  %254 = load i64, i64* %PC.i592
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC.i592
  %256 = sub i32 %252, 2
  %257 = icmp ult i32 %252, 2
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %258, i8* %259, align 1
  %260 = and i32 %256, 255
  %261 = call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %264, i8* %265, align 1
  %266 = xor i64 2, %253
  %267 = trunc i64 %266 to i32
  %268 = xor i32 %267, %256
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %271, i8* %272, align 1
  %273 = icmp eq i32 %256, 0
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %274, i8* %275, align 1
  %276 = lshr i32 %256, 31
  %277 = trunc i32 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %277, i8* %278, align 1
  %279 = lshr i32 %252, 31
  %280 = xor i32 %276, %279
  %281 = add i32 %280, %279
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %283, i8* %284, align 1
  store %struct.Memory* %loadMem_46be9a, %struct.Memory** %MEMORY
  %loadMem_46be9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %PC.i591
  %289 = add i64 %288, 11
  %290 = load i64, i64* %PC.i591
  %291 = add i64 %290, 6
  %292 = load i64, i64* %PC.i591
  %293 = add i64 %292, 6
  store i64 %293, i64* %PC.i591
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %295 = load i8, i8* %294, align 1
  %296 = icmp eq i8 %295, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %BRANCH_TAKEN, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %299 = select i1 %296, i64 %289, i64 %291
  store i64 %299, i64* %298, align 8
  store %struct.Memory* %loadMem_46be9d, %struct.Memory** %MEMORY
  %loadBr_46be9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46be9d = icmp eq i8 %loadBr_46be9d, 1
  br i1 %cmpBr_46be9d, label %block_.L_46bea8, label %block_.L_46bea3

block_.L_46bea3:                                  ; preds = %block_46be8e, %entry
  %loadMem_46bea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %PC.i590
  %304 = add i64 %303, 118
  %305 = load i64, i64* %PC.i590
  %306 = add i64 %305, 5
  store i64 %306, i64* %PC.i590
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %304, i64* %307, align 8
  store %struct.Memory* %loadMem_46bea3, %struct.Memory** %MEMORY
  br label %block_.L_46bf19

block_.L_46bea8:                                  ; preds = %block_46be8e
  %loadMem_46bea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 11
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RDI.i589 = bitcast %union.anon* %313 to i64*
  %314 = load i64, i64* %PC.i588
  %315 = add i64 %314, 10
  store i64 %315, i64* %PC.i588
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i589, align 8
  store %struct.Memory* %loadMem_46bea8, %struct.Memory** %MEMORY
  %loadMem_46beb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RSI.i587 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i586
  %323 = add i64 %322, 5
  store i64 %323, i64* %PC.i586
  store i64 871, i64* %RSI.i587, align 8
  store %struct.Memory* %loadMem_46beb2, %struct.Memory** %MEMORY
  %loadMem_46beb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %PC.i584
  %331 = add i64 %330, 10
  store i64 %331, i64* %PC.i584
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_46beb7, %struct.Memory** %MEMORY
  %loadMem_46bec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i582
  %339 = add i64 %338, 5
  store i64 %339, i64* %PC.i582
  store i64 20, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_46bec1, %struct.Memory** %MEMORY
  %loadMem_46bec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i581
  %350 = sub i64 %349, 8
  %351 = load i64, i64* %PC.i579
  %352 = add i64 %351, 3
  store i64 %352, i64* %PC.i579
  %353 = inttoptr i64 %350 to i32*
  %354 = load i32, i32* %353
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RCX.i580, align 8
  store %struct.Memory* %loadMem_46bec6, %struct.Memory** %MEMORY
  %loadMem_46bec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %361 to i32*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %RBP.i578
  %366 = sub i64 %365, 1712
  %367 = load i32, i32* %EAX.i577
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC.i576
  %370 = add i64 %369, 6
  store i64 %370, i64* %PC.i576
  %371 = inttoptr i64 %366 to i32*
  store i32 %367, i32* %371
  store %struct.Memory* %loadMem_46bec9, %struct.Memory** %MEMORY
  %loadMem_46becf = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %ECX.i574 = bitcast %union.anon* %377 to i32*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %380 to i64*
  %381 = load i32, i32* %ECX.i574
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC.i573
  %384 = add i64 %383, 2
  store i64 %384, i64* %PC.i573
  %385 = and i64 %382, 4294967295
  store i64 %385, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_46becf, %struct.Memory** %MEMORY
  %loadMem_46bed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 7
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 15
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RBP.i572
  %396 = sub i64 %395, 1720
  %397 = load i64, i64* %RDX.i571
  %398 = load i64, i64* %PC.i570
  %399 = add i64 %398, 7
  store i64 %399, i64* %PC.i570
  %400 = inttoptr i64 %396 to i64*
  store i64 %397, i64* %400
  store %struct.Memory* %loadMem_46bed1, %struct.Memory** %MEMORY
  %loadMem_46bed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i569
  %405 = add i64 %404, 1
  store i64 %405, i64* %PC.i569
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %408 = bitcast %union.anon* %407 to i32*
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  %411 = lshr i64 %410, 32
  store i64 %411, i64* %406, align 8
  store %struct.Memory* %loadMem_46bed8, %struct.Memory** %MEMORY
  %loadMem_46bed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 5
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 15
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %RBP.i568
  %422 = sub i64 %421, 1712
  %423 = load i64, i64* %PC.i566
  %424 = add i64 %423, 6
  store i64 %424, i64* %PC.i566
  %425 = inttoptr i64 %422 to i32*
  %426 = load i32, i32* %425
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_46bed9, %struct.Memory** %MEMORY
  %loadMem_46bedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %ECX.i562 = bitcast %union.anon* %433 to i32*
  %434 = load i32, i32* %ECX.i562
  %435 = zext i32 %434 to i64
  %436 = load i64, i64* %PC.i561
  %437 = add i64 %436, 2
  store i64 %437, i64* %PC.i561
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %439 = bitcast %union.anon* %438 to i32*
  %440 = load i32, i32* %439, align 8
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %443 = bitcast %union.anon* %442 to i32*
  %444 = load i32, i32* %443, align 8
  %445 = zext i32 %444 to i64
  %446 = shl i64 %435, 32
  %447 = ashr exact i64 %446, 32
  %448 = shl i64 %445, 32
  %449 = or i64 %448, %441
  %450 = sdiv i64 %449, %447
  %451 = shl i64 %450, 32
  %452 = ashr exact i64 %451, 32
  %453 = icmp eq i64 %450, %452
  br i1 %453, label %458, label %454

; <label>:454:                                    ; preds = %block_.L_46bea8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %456, %struct.Memory* %loadMem_46bedf)
  br label %routine_idivl__ecx.exit563

; <label>:458:                                    ; preds = %block_.L_46bea8
  %459 = srem i64 %449, %447
  %460 = getelementptr inbounds %union.anon, %union.anon* %438, i64 0, i32 0
  %461 = and i64 %450, 4294967295
  store i64 %461, i64* %460, align 8
  %462 = getelementptr inbounds %union.anon, %union.anon* %442, i64 0, i32 0
  %463 = and i64 %459, 4294967295
  store i64 %463, i64* %462, align 8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %464, align 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %465, align 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %466, align 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %467, align 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %468, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %469, align 1
  br label %routine_idivl__ecx.exit563

routine_idivl__ecx.exit563:                       ; preds = %454, %458
  %470 = phi %struct.Memory* [ %457, %454 ], [ %loadMem_46bedf, %458 ]
  store %struct.Memory* %470, %struct.Memory** %MEMORY
  %loadMem_46bee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %RAX.i560
  %478 = load i64, i64* %PC.i559
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC.i559
  %480 = trunc i64 %477 to i32
  %481 = sub i32 %480, 1
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX.i560, align 8
  %483 = icmp ult i32 %480, 1
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %484, i8* %485, align 1
  %486 = and i32 %481, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1
  %492 = xor i64 1, %477
  %493 = trunc i64 %492 to i32
  %494 = xor i32 %493, %481
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %497, i8* %498, align 1
  %499 = icmp eq i32 %481, 0
  %500 = zext i1 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %500, i8* %501, align 1
  %502 = lshr i32 %481, 31
  %503 = trunc i32 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %503, i8* %504, align 1
  %505 = lshr i32 %480, 31
  %506 = xor i32 %502, %505
  %507 = add i32 %506, %505
  %508 = icmp eq i32 %507, 2
  %509 = zext i1 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %509, i8* %510, align 1
  store %struct.Memory* %loadMem_46bee1, %struct.Memory** %MEMORY
  %loadMem_46bee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 17
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %R8D.i557 = bitcast %union.anon* %516 to i32*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 15
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %519 to i64*
  %520 = bitcast i32* %R8D.i557 to i64*
  %521 = load i64, i64* %RBP.i558
  %522 = sub i64 %521, 8
  %523 = load i64, i64* %PC.i556
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC.i556
  %525 = inttoptr i64 %522 to i32*
  %526 = load i32, i32* %525
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %520, align 8
  store %struct.Memory* %loadMem_46bee4, %struct.Memory** %MEMORY
  %loadMem_46bee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %533 to i32*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 15
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %RBP.i555
  %538 = sub i64 %537, 1724
  %539 = load i32, i32* %EAX.i554
  %540 = zext i32 %539 to i64
  %541 = load i64, i64* %PC.i553
  %542 = add i64 %541, 6
  store i64 %542, i64* %PC.i553
  %543 = inttoptr i64 %538 to i32*
  store i32 %539, i32* %543
  store %struct.Memory* %loadMem_46bee8, %struct.Memory** %MEMORY
  %loadMem_46beee = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 17
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %R8D.i551 = bitcast %union.anon* %549 to i32*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %552 to i64*
  %553 = load i32, i32* %R8D.i551
  %554 = zext i32 %553 to i64
  %555 = load i64, i64* %PC.i550
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC.i550
  %557 = and i64 %554, 4294967295
  store i64 %557, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_46beee, %struct.Memory** %MEMORY
  %loadMem_46bef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %PC.i549
  %562 = add i64 %561, 1
  store i64 %562, i64* %PC.i549
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %565 = bitcast %union.anon* %564 to i32*
  %566 = load i32, i32* %565, align 8
  %567 = sext i32 %566 to i64
  %568 = lshr i64 %567, 32
  store i64 %568, i64* %563, align 8
  store %struct.Memory* %loadMem_46bef1, %struct.Memory** %MEMORY
  %loadMem_46bef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 5
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %ECX.i545 = bitcast %union.anon* %574 to i32*
  %575 = load i32, i32* %ECX.i545
  %576 = zext i32 %575 to i64
  %577 = load i64, i64* %PC.i544
  %578 = add i64 %577, 2
  store i64 %578, i64* %PC.i544
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %580 = bitcast %union.anon* %579 to i32*
  %581 = load i32, i32* %580, align 8
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %584 = bitcast %union.anon* %583 to i32*
  %585 = load i32, i32* %584, align 8
  %586 = zext i32 %585 to i64
  %587 = shl i64 %576, 32
  %588 = ashr exact i64 %587, 32
  %589 = shl i64 %586, 32
  %590 = or i64 %589, %582
  %591 = sdiv i64 %590, %588
  %592 = shl i64 %591, 32
  %593 = ashr exact i64 %592, 32
  %594 = icmp eq i64 %591, %593
  br i1 %594, label %599, label %595

; <label>:595:                                    ; preds = %routine_idivl__ecx.exit563
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %597, %struct.Memory* %loadMem_46bef2)
  br label %routine_idivl__ecx.exit

; <label>:599:                                    ; preds = %routine_idivl__ecx.exit563
  %600 = srem i64 %590, %588
  %601 = getelementptr inbounds %union.anon, %union.anon* %579, i64 0, i32 0
  %602 = and i64 %591, 4294967295
  store i64 %602, i64* %601, align 8
  %603 = getelementptr inbounds %union.anon, %union.anon* %583, i64 0, i32 0
  %604 = and i64 %600, 4294967295
  store i64 %604, i64* %603, align 8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %605, align 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %606, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %607, align 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %608, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %609, align 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %610, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %595, %599
  %611 = phi %struct.Memory* [ %598, %595 ], [ %loadMem_46bef2, %599 ]
  store %struct.Memory* %611, %struct.Memory** %MEMORY
  %loadMem_46bef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 7
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RDX.i543
  %619 = load i64, i64* %PC.i542
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC.i542
  %621 = trunc i64 %618 to i32
  %622 = sub i32 %621, 1
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RDX.i543, align 8
  %624 = icmp ult i32 %621, 1
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %625, i8* %626, align 1
  %627 = and i32 %622, 255
  %628 = call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %631, i8* %632, align 1
  %633 = xor i64 1, %618
  %634 = trunc i64 %633 to i32
  %635 = xor i32 %634, %622
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %638, i8* %639, align 1
  %640 = icmp eq i32 %622, 0
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %641, i8* %642, align 1
  %643 = lshr i32 %622, 31
  %644 = trunc i32 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %644, i8* %645, align 1
  %646 = lshr i32 %621, 31
  %647 = xor i32 %643, %646
  %648 = add i32 %647, %646
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %650, i8* %651, align 1
  store %struct.Memory* %loadMem_46bef4, %struct.Memory** %MEMORY
  %loadMem_46bef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 19
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %R9.i541 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RBP.i540
  %662 = sub i64 %661, 1720
  %663 = load i64, i64* %PC.i539
  %664 = add i64 %663, 7
  store i64 %664, i64* %PC.i539
  %665 = inttoptr i64 %662 to i64*
  %666 = load i64, i64* %665
  store i64 %666, i64* %R9.i541, align 8
  store %struct.Memory* %loadMem_46bef7, %struct.Memory** %MEMORY
  %loadMem_46befe = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 7
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %EDX.i537 = bitcast %union.anon* %672 to i32*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RBP.i538
  %677 = sub i64 %676, 1728
  %678 = load i32, i32* %EDX.i537
  %679 = zext i32 %678 to i64
  %680 = load i64, i64* %PC.i536
  %681 = add i64 %680, 6
  store i64 %681, i64* %PC.i536
  %682 = inttoptr i64 %677 to i32*
  store i32 %678, i32* %682
  store %struct.Memory* %loadMem_46befe, %struct.Memory** %MEMORY
  %loadMem_46bf04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 7
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RDX.i535 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 19
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %R9.i = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %R9.i
  %693 = load i64, i64* %PC.i534
  %694 = add i64 %693, 3
  store i64 %694, i64* %PC.i534
  store i64 %692, i64* %RDX.i535, align 8
  store %struct.Memory* %loadMem_46bf04, %struct.Memory** %MEMORY
  %loadMem_46bf07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 5
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i533
  %705 = sub i64 %704, 1724
  %706 = load i64, i64* %PC.i531
  %707 = add i64 %706, 6
  store i64 %707, i64* %PC.i531
  %708 = inttoptr i64 %705 to i32*
  %709 = load i32, i32* %708
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_46bf07, %struct.Memory** %MEMORY
  %loadMem_46bf0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 17
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %R8D.i529 = bitcast %union.anon* %716 to i32*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %719 to i64*
  %720 = bitcast i32* %R8D.i529 to i64*
  %721 = load i64, i64* %RBP.i530
  %722 = sub i64 %721, 1728
  %723 = load i64, i64* %PC.i528
  %724 = add i64 %723, 7
  store i64 %724, i64* %PC.i528
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %720, align 8
  store %struct.Memory* %loadMem_46bf0d, %struct.Memory** %MEMORY
  %loadMem1_46bf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %PC.i527
  %732 = add i64 %731, -106116
  %733 = load i64, i64* %PC.i527
  %734 = add i64 %733, 5
  %735 = load i64, i64* %PC.i527
  %736 = add i64 %735, 5
  store i64 %736, i64* %PC.i527
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = add i64 %738, -8
  %740 = inttoptr i64 %739 to i64*
  store i64 %734, i64* %740
  store i64 %739, i64* %737, align 8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %732, i64* %741, align 8
  store %struct.Memory* %loadMem1_46bf14, %struct.Memory** %MEMORY
  %loadMem2_46bf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bf14 = load i64, i64* %3
  %call2_46bf14 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_46bf14, %struct.Memory* %loadMem2_46bf14)
  store %struct.Memory* %call2_46bf14, %struct.Memory** %MEMORY
  br label %block_.L_46bf19

block_.L_46bf19:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_46bea3
  %loadMem_46bf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 1
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %EAX.i525 = bitcast %union.anon* %747 to i32*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 1
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RAX.i526
  %752 = load i32, i32* %EAX.i525
  %753 = zext i32 %752 to i64
  %754 = load i64, i64* %PC.i524
  %755 = add i64 %754, 2
  store i64 %755, i64* %PC.i524
  %756 = xor i64 %753, %751
  %757 = trunc i64 %756 to i32
  %758 = and i64 %756, 4294967295
  store i64 %758, i64* %RAX.i526, align 8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %759, align 1
  %760 = and i32 %757, 255
  %761 = call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %764, i8* %765, align 1
  %766 = icmp eq i32 %757, 0
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %757, 31
  %770 = trunc i32 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %770, i8* %771, align 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %772, align 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %773, align 1
  store %struct.Memory* %loadMem_46bf19, %struct.Memory** %MEMORY
  %loadMem_46bf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %EAX.i522 = bitcast %union.anon* %779 to i32*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 9
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RSI.i523 = bitcast %union.anon* %782 to i64*
  %783 = load i32, i32* %EAX.i522
  %784 = zext i32 %783 to i64
  %785 = load i64, i64* %PC.i521
  %786 = add i64 %785, 2
  store i64 %786, i64* %PC.i521
  %787 = and i64 %784, 4294967295
  store i64 %787, i64* %RSI.i523, align 8
  store %struct.Memory* %loadMem_46bf1b, %struct.Memory** %MEMORY
  %loadMem_46bf1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %PC.i519
  %795 = add i64 %794, 5
  store i64 %795, i64* %PC.i519
  store i64 3, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_46bf1d, %struct.Memory** %MEMORY
  %loadMem_46bf22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 5
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 15
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RBP.i518
  %806 = sub i64 %805, 8
  %807 = load i64, i64* %PC.i516
  %808 = add i64 %807, 4
  store i64 %808, i64* %PC.i516
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX.i517, align 8
  store %struct.Memory* %loadMem_46bf22, %struct.Memory** %MEMORY
  %loadMem_46bf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 5
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 7
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %RCX.i514
  %822 = add i64 %821, 12099168
  %823 = load i64, i64* %PC.i513
  %824 = add i64 %823, 8
  store i64 %824, i64* %PC.i513
  %825 = inttoptr i64 %822 to i8*
  %826 = load i8, i8* %825
  %827 = zext i8 %826 to i64
  store i64 %827, i64* %RDX.i515, align 8
  store %struct.Memory* %loadMem_46bf26, %struct.Memory** %MEMORY
  %loadMem_46bf2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 7
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %EDX.i511 = bitcast %union.anon* %833 to i32*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 1
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RAX.i512
  %838 = load i32, i32* %EDX.i511
  %839 = zext i32 %838 to i64
  %840 = load i64, i64* %PC.i510
  %841 = add i64 %840, 2
  store i64 %841, i64* %PC.i510
  %842 = trunc i64 %837 to i32
  %843 = sub i32 %842, %838
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RAX.i512, align 8
  %845 = icmp ult i32 %842, %838
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %846, i8* %847, align 1
  %848 = and i32 %843, 255
  %849 = call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %852, i8* %853, align 1
  %854 = xor i64 %839, %837
  %855 = trunc i64 %854 to i32
  %856 = xor i32 %855, %843
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %859, i8* %860, align 1
  %861 = icmp eq i32 %843, 0
  %862 = zext i1 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %862, i8* %863, align 1
  %864 = lshr i32 %843, 31
  %865 = trunc i32 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %865, i8* %866, align 1
  %867 = lshr i32 %842, 31
  %868 = lshr i32 %838, 31
  %869 = xor i32 %868, %867
  %870 = xor i32 %864, %867
  %871 = add i32 %870, %869
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %873, i8* %874, align 1
  store %struct.Memory* %loadMem_46bf2e, %struct.Memory** %MEMORY
  %loadMem_46bf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 1
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %EAX.i508 = bitcast %union.anon* %880 to i32*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 15
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RBP.i509
  %885 = sub i64 %884, 36
  %886 = load i32, i32* %EAX.i508
  %887 = zext i32 %886 to i64
  %888 = load i64, i64* %PC.i507
  %889 = add i64 %888, 3
  store i64 %889, i64* %PC.i507
  %890 = inttoptr i64 %885 to i32*
  store i32 %886, i32* %890
  store %struct.Memory* %loadMem_46bf30, %struct.Memory** %MEMORY
  %loadMem_46bf33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 11
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RDI.i505 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 15
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %RBP.i506
  %901 = sub i64 %900, 8
  %902 = load i64, i64* %PC.i504
  %903 = add i64 %902, 3
  store i64 %903, i64* %PC.i504
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RDI.i505, align 8
  store %struct.Memory* %loadMem_46bf33, %struct.Memory** %MEMORY
  %loadMem1_46bf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %PC.i503
  %911 = add i64 %910, -58358
  %912 = load i64, i64* %PC.i503
  %913 = add i64 %912, 5
  %914 = load i64, i64* %PC.i503
  %915 = add i64 %914, 5
  store i64 %915, i64* %PC.i503
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %917 = load i64, i64* %916, align 8
  %918 = add i64 %917, -8
  %919 = inttoptr i64 %918 to i64*
  store i64 %913, i64* %919
  store i64 %918, i64* %916, align 8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %911, i64* %920, align 8
  store %struct.Memory* %loadMem1_46bf36, %struct.Memory** %MEMORY
  %loadMem2_46bf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bf36 = load i64, i64* %3
  %call2_46bf36 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46bf36, %struct.Memory* %loadMem2_46bf36)
  store %struct.Memory* %call2_46bf36, %struct.Memory** %MEMORY
  %loadMem_46bf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %926 to i32*
  %927 = load i32, i32* %EAX.i502
  %928 = zext i32 %927 to i64
  %929 = load i64, i64* %PC.i501
  %930 = add i64 %929, 3
  store i64 %930, i64* %PC.i501
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %931, align 1
  %932 = and i32 %927, 255
  %933 = call i32 @llvm.ctpop.i32(i32 %932)
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %936, i8* %937, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %938, align 1
  %939 = icmp eq i32 %927, 0
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %940, i8* %941, align 1
  %942 = lshr i32 %927, 31
  %943 = trunc i32 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %943, i8* %944, align 1
  %945 = lshr i32 %927, 31
  %946 = xor i32 %942, %945
  %947 = add i32 %946, %945
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %949, i8* %950, align 1
  store %struct.Memory* %loadMem_46bf3b, %struct.Memory** %MEMORY
  %loadMem_46bf3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %PC.i500
  %955 = add i64 %954, 18
  %956 = load i64, i64* %PC.i500
  %957 = add i64 %956, 6
  %958 = load i64, i64* %PC.i500
  %959 = add i64 %958, 6
  store i64 %959, i64* %PC.i500
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %961 = load i8, i8* %960, align 1
  store i8 %961, i8* %BRANCH_TAKEN, align 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %963 = icmp ne i8 %961, 0
  %964 = select i1 %963, i64 %955, i64 %957
  store i64 %964, i64* %962, align 8
  store %struct.Memory* %loadMem_46bf3e, %struct.Memory** %MEMORY
  %loadBr_46bf3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bf3e = icmp eq i8 %loadBr_46bf3e, 1
  br i1 %cmpBr_46bf3e, label %block_.L_46bf50, label %block_46bf44

block_46bf44:                                     ; preds = %block_.L_46bf19
  %loadMem_46bf44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i499
  %972 = sub i64 %971, 4
  %973 = load i64, i64* %PC.i498
  %974 = add i64 %973, 7
  store i64 %974, i64* %PC.i498
  %975 = inttoptr i64 %972 to i32*
  store i32 0, i32* %975
  store %struct.Memory* %loadMem_46bf44, %struct.Memory** %MEMORY
  %loadMem_46bf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %PC.i497
  %980 = add i64 %979, 1164
  %981 = load i64, i64* %PC.i497
  %982 = add i64 %981, 5
  store i64 %982, i64* %PC.i497
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %980, i64* %983, align 8
  store %struct.Memory* %loadMem_46bf4b, %struct.Memory** %MEMORY
  br label %block_.L_46c3d7

block_.L_46bf50:                                  ; preds = %block_.L_46bf19
  %loadMem_46bf50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 9
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RSI.i496 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %PC.i495
  %991 = add i64 %990, 5
  store i64 %991, i64* %PC.i495
  store i64 241, i64* %RSI.i496, align 8
  store %struct.Memory* %loadMem_46bf50, %struct.Memory** %MEMORY
  %loadMem_46bf55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 7
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RDX.i493 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RBP.i494
  %1002 = sub i64 %1001, 1008
  %1003 = load i64, i64* %PC.i492
  %1004 = add i64 %1003, 7
  store i64 %1004, i64* %PC.i492
  store i64 %1002, i64* %RDX.i493, align 8
  store %struct.Memory* %loadMem_46bf55, %struct.Memory** %MEMORY
  %loadMem_46bf5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 11
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RDI.i490 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 15
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %RBP.i491
  %1015 = sub i64 %1014, 8
  %1016 = load i64, i64* %PC.i489
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %PC.i489
  %1018 = inttoptr i64 %1015 to i32*
  %1019 = load i32, i32* %1018
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RDI.i490, align 8
  store %struct.Memory* %loadMem_46bf5c, %struct.Memory** %MEMORY
  %loadMem1_46bf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1023 to i64*
  %1024 = load i64, i64* %PC.i488
  %1025 = add i64 %1024, -378655
  %1026 = load i64, i64* %PC.i488
  %1027 = add i64 %1026, 5
  %1028 = load i64, i64* %PC.i488
  %1029 = add i64 %1028, 5
  store i64 %1029, i64* %PC.i488
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1031 = load i64, i64* %1030, align 8
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1027, i64* %1033
  store i64 %1032, i64* %1030, align 8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1025, i64* %1034, align 8
  store %struct.Memory* %loadMem1_46bf5f, %struct.Memory** %MEMORY
  %loadMem2_46bf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bf5f = load i64, i64* %3
  %call2_46bf5f = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_46bf5f, %struct.Memory* %loadMem2_46bf5f)
  store %struct.Memory* %call2_46bf5f, %struct.Memory** %MEMORY
  %loadMem_46bf64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 1
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %EAX.i486 = bitcast %union.anon* %1040 to i32*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 15
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %1043 to i64*
  %1044 = load i64, i64* %RBP.i487
  %1045 = sub i64 %1044, 44
  %1046 = load i32, i32* %EAX.i486
  %1047 = zext i32 %1046 to i64
  %1048 = load i64, i64* %PC.i485
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %PC.i485
  %1050 = inttoptr i64 %1045 to i32*
  store i32 %1046, i32* %1050
  store %struct.Memory* %loadMem_46bf64, %struct.Memory** %MEMORY
  %loadMem_46bf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 15
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1056 to i64*
  %1057 = load i64, i64* %RBP.i484
  %1058 = sub i64 %1057, 44
  %1059 = load i64, i64* %PC.i483
  %1060 = add i64 %1059, 4
  store i64 %1060, i64* %PC.i483
  %1061 = inttoptr i64 %1058 to i32*
  %1062 = load i32, i32* %1061
  %1063 = sub i32 %1062, 1
  %1064 = icmp ult i32 %1062, 1
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1065, i8* %1066, align 1
  %1067 = and i32 %1063, 255
  %1068 = call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1071, i8* %1072, align 1
  %1073 = xor i32 %1062, 1
  %1074 = xor i32 %1073, %1063
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1077, i8* %1078, align 1
  %1079 = icmp eq i32 %1063, 0
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1080, i8* %1081, align 1
  %1082 = lshr i32 %1063, 31
  %1083 = trunc i32 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1083, i8* %1084, align 1
  %1085 = lshr i32 %1062, 31
  %1086 = xor i32 %1082, %1085
  %1087 = add i32 %1086, %1085
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1089, i8* %1090, align 1
  store %struct.Memory* %loadMem_46bf67, %struct.Memory** %MEMORY
  %loadMem_46bf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %PC.i482
  %1095 = add i64 %1094, 489
  %1096 = load i64, i64* %PC.i482
  %1097 = add i64 %1096, 6
  %1098 = load i64, i64* %PC.i482
  %1099 = add i64 %1098, 6
  store i64 %1099, i64* %PC.i482
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1101 = load i8, i8* %1100, align 1
  %1102 = icmp ne i8 %1101, 0
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1104 = load i8, i8* %1103, align 1
  %1105 = icmp ne i8 %1104, 0
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1107 = load i8, i8* %1106, align 1
  %1108 = icmp ne i8 %1107, 0
  %1109 = xor i1 %1105, %1108
  %1110 = or i1 %1102, %1109
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %BRANCH_TAKEN, align 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1113 = select i1 %1110, i64 %1095, i64 %1097
  store i64 %1113, i64* %1112, align 8
  store %struct.Memory* %loadMem_46bf6b, %struct.Memory** %MEMORY
  %loadBr_46bf6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bf6b = icmp eq i8 %loadBr_46bf6b, 1
  br i1 %cmpBr_46bf6b, label %block_.L_46c154, label %block_46bf71

block_46bf71:                                     ; preds = %block_.L_46bf50
  %loadMem_46bf71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RBP.i481
  %1121 = sub i64 %1120, 44
  %1122 = load i64, i64* %PC.i480
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i480
  %1124 = inttoptr i64 %1121 to i32*
  %1125 = load i32, i32* %1124
  %1126 = sub i32 %1125, 6
  %1127 = icmp ult i32 %1125, 6
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1128, i8* %1129, align 1
  %1130 = and i32 %1126, 255
  %1131 = call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1134, i8* %1135, align 1
  %1136 = xor i32 %1125, 6
  %1137 = xor i32 %1136, %1126
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1140, i8* %1141, align 1
  %1142 = icmp eq i32 %1126, 0
  %1143 = zext i1 %1142 to i8
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1143, i8* %1144, align 1
  %1145 = lshr i32 %1126, 31
  %1146 = trunc i32 %1145 to i8
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1146, i8* %1147, align 1
  %1148 = lshr i32 %1125, 31
  %1149 = xor i32 %1145, %1148
  %1150 = add i32 %1149, %1148
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1152, i8* %1153, align 1
  store %struct.Memory* %loadMem_46bf71, %struct.Memory** %MEMORY
  %loadMem_46bf75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %PC.i479
  %1158 = add i64 %1157, 479
  %1159 = load i64, i64* %PC.i479
  %1160 = add i64 %1159, 6
  %1161 = load i64, i64* %PC.i479
  %1162 = add i64 %1161, 6
  store i64 %1162, i64* %PC.i479
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1164 = load i8, i8* %1163, align 1
  %1165 = icmp ne i8 %1164, 0
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1167 = load i8, i8* %1166, align 1
  %1168 = icmp ne i8 %1167, 0
  %1169 = xor i1 %1165, %1168
  %1170 = xor i1 %1169, true
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %BRANCH_TAKEN, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1173 = select i1 %1169, i64 %1160, i64 %1158
  store i64 %1173, i64* %1172, align 8
  store %struct.Memory* %loadMem_46bf75, %struct.Memory** %MEMORY
  %loadBr_46bf75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bf75 = icmp eq i8 %loadBr_46bf75, 1
  br i1 %cmpBr_46bf75, label %block_.L_46c154, label %block_46bf7b

block_46bf7b:                                     ; preds = %block_46bf71
  %loadMem_46bf7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 15
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RBP.i478
  %1181 = sub i64 %1180, 1668
  %1182 = load i64, i64* %PC.i477
  %1183 = add i64 %1182, 10
  store i64 %1183, i64* %PC.i477
  %1184 = inttoptr i64 %1181 to i32*
  store i32 0, i32* %1184
  store %struct.Memory* %loadMem_46bf7b, %struct.Memory** %MEMORY
  br label %block_.L_46bf85

block_.L_46bf85:                                  ; preds = %block_.L_46c13b, %block_46bf7b
  %loadMem_46bf85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i476
  %1195 = sub i64 %1194, 1668
  %1196 = load i64, i64* %PC.i474
  %1197 = add i64 %1196, 6
  store i64 %1197, i64* %PC.i474
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_46bf85, %struct.Memory** %MEMORY
  %loadMem_46bf8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %1206 to i32*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %1209 to i64*
  %1210 = load i32, i32* %EAX.i472
  %1211 = zext i32 %1210 to i64
  %1212 = load i64, i64* %RBP.i473
  %1213 = sub i64 %1212, 44
  %1214 = load i64, i64* %PC.i471
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC.i471
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216
  %1218 = sub i32 %1210, %1217
  %1219 = icmp ult i32 %1210, %1217
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1220, i8* %1221, align 1
  %1222 = and i32 %1218, 255
  %1223 = call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1226, i8* %1227, align 1
  %1228 = xor i32 %1217, %1210
  %1229 = xor i32 %1228, %1218
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1232, i8* %1233, align 1
  %1234 = icmp eq i32 %1218, 0
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1218, 31
  %1238 = trunc i32 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1210, 31
  %1241 = lshr i32 %1217, 31
  %1242 = xor i32 %1241, %1240
  %1243 = xor i32 %1237, %1240
  %1244 = add i32 %1243, %1242
  %1245 = icmp eq i32 %1244, 2
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1246, i8* %1247, align 1
  store %struct.Memory* %loadMem_46bf8b, %struct.Memory** %MEMORY
  %loadMem_46bf8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %PC.i470
  %1252 = add i64 %1251, 449
  %1253 = load i64, i64* %PC.i470
  %1254 = add i64 %1253, 6
  %1255 = load i64, i64* %PC.i470
  %1256 = add i64 %1255, 6
  store i64 %1256, i64* %PC.i470
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1258 = load i8, i8* %1257, align 1
  %1259 = icmp ne i8 %1258, 0
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1261 = load i8, i8* %1260, align 1
  %1262 = icmp ne i8 %1261, 0
  %1263 = xor i1 %1259, %1262
  %1264 = xor i1 %1263, true
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %BRANCH_TAKEN, align 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1267 = select i1 %1263, i64 %1254, i64 %1252
  store i64 %1267, i64* %1266, align 8
  store %struct.Memory* %loadMem_46bf8e, %struct.Memory** %MEMORY
  %loadBr_46bf8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bf8e = icmp eq i8 %loadBr_46bf8e, 1
  br i1 %cmpBr_46bf8e, label %block_.L_46c14f, label %block_46bf94

block_46bf94:                                     ; preds = %block_.L_46bf85
  %loadMem_46bf94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 7
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %PC.i468
  %1275 = add i64 %1274, 10
  store i64 %1275, i64* %PC.i468
  store i64 ptrtoint (%G__0x58014a_type* @G__0x58014a to i64), i64* %RDX.i469, align 8
  store %struct.Memory* %loadMem_46bf94, %struct.Memory** %MEMORY
  %loadMem_46bf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 1
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %EAX.i466 = bitcast %union.anon* %1281 to i32*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 1
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %1284 to i64*
  %1285 = load i64, i64* %RAX.i467
  %1286 = load i32, i32* %EAX.i466
  %1287 = zext i32 %1286 to i64
  %1288 = load i64, i64* %PC.i465
  %1289 = add i64 %1288, 2
  store i64 %1289, i64* %PC.i465
  %1290 = xor i64 %1287, %1285
  %1291 = trunc i64 %1290 to i32
  %1292 = and i64 %1290, 4294967295
  store i64 %1292, i64* %RAX.i467, align 8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1293, align 1
  %1294 = and i32 %1291, 255
  %1295 = call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1298, i8* %1299, align 1
  %1300 = icmp eq i32 %1291, 0
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1301, i8* %1302, align 1
  %1303 = lshr i32 %1291, 31
  %1304 = trunc i32 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1304, i8* %1305, align 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1306, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1307, align 1
  store %struct.Memory* %loadMem_46bf9e, %struct.Memory** %MEMORY
  %loadMem_46bfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 5
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 15
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RBP.i464
  %1318 = sub i64 %1317, 1668
  %1319 = load i64, i64* %PC.i462
  %1320 = add i64 %1319, 7
  store i64 %1320, i64* %PC.i462
  %1321 = inttoptr i64 %1318 to i32*
  %1322 = load i32, i32* %1321
  %1323 = sext i32 %1322 to i64
  store i64 %1323, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_46bfa0, %struct.Memory** %MEMORY
  %loadMem_46bfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 9
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RSI.i460 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 15
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1335 to i64*
  %1336 = load i64, i64* %RBP.i461
  %1337 = load i64, i64* %RCX.i459
  %1338 = mul i64 %1337, 4
  %1339 = add i64 %1336, -1008
  %1340 = add i64 %1339, %1338
  %1341 = load i64, i64* %PC.i458
  %1342 = add i64 %1341, 7
  store i64 %1342, i64* %PC.i458
  %1343 = inttoptr i64 %1340 to i32*
  %1344 = load i32, i32* %1343
  %1345 = zext i32 %1344 to i64
  store i64 %1345, i64* %RSI.i460, align 8
  store %struct.Memory* %loadMem_46bfa7, %struct.Memory** %MEMORY
  %loadMem_46bfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 9
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1351 to i32*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RBP.i457
  %1356 = sub i64 %1355, 1680
  %1357 = load i32, i32* %ESI.i
  %1358 = zext i32 %1357 to i64
  %1359 = load i64, i64* %PC.i456
  %1360 = add i64 %1359, 6
  store i64 %1360, i64* %PC.i456
  %1361 = inttoptr i64 %1356 to i32*
  store i32 %1357, i32* %1361
  store %struct.Memory* %loadMem_46bfae, %struct.Memory** %MEMORY
  %loadMem_46bfb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 11
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RDI.i454 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 15
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %RBP.i455
  %1372 = sub i64 %1371, 1680
  %1373 = load i64, i64* %PC.i453
  %1374 = add i64 %1373, 6
  store i64 %1374, i64* %PC.i453
  %1375 = inttoptr i64 %1372 to i32*
  %1376 = load i32, i32* %1375
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RDI.i454, align 8
  store %struct.Memory* %loadMem_46bfb4, %struct.Memory** %MEMORY
  %loadMem_46bfba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 9
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RSI.i451 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i452
  %1388 = sub i64 %1387, 36
  %1389 = load i64, i64* %PC.i450
  %1390 = add i64 %1389, 3
  store i64 %1390, i64* %PC.i450
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RSI.i451, align 8
  store %struct.Memory* %loadMem_46bfba, %struct.Memory** %MEMORY
  %loadMem_46bfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 5
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i449
  %1404 = sub i64 %1403, 8
  %1405 = load i64, i64* %PC.i447
  %1406 = add i64 %1405, 3
  store i64 %1406, i64* %PC.i447
  %1407 = inttoptr i64 %1404 to i32*
  %1408 = load i32, i32* %1407
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i448, align 8
  store %struct.Memory* %loadMem_46bfbd, %struct.Memory** %MEMORY
  %loadMem_46bfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 1
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %1415 to i32*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 17
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %R8D.i446 = bitcast %union.anon* %1418 to i32*
  %1419 = bitcast i32* %R8D.i446 to i64*
  %1420 = load i32, i32* %EAX.i445
  %1421 = zext i32 %1420 to i64
  %1422 = load i64, i64* %PC.i444
  %1423 = add i64 %1422, 3
  store i64 %1423, i64* %PC.i444
  %1424 = and i64 %1421, 4294967295
  store i64 %1424, i64* %1419, align 8
  store %struct.Memory* %loadMem_46bfc0, %struct.Memory** %MEMORY
  %loadMem_46bfc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 1
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %1430 to i32*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 19
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %R9D.i443 = bitcast %union.anon* %1433 to i32*
  %1434 = bitcast i32* %R9D.i443 to i64*
  %1435 = load i32, i32* %EAX.i442
  %1436 = zext i32 %1435 to i64
  %1437 = load i64, i64* %PC.i441
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC.i441
  %1439 = and i64 %1436, 4294967295
  store i64 %1439, i64* %1434, align 8
  store %struct.Memory* %loadMem_46bfc3, %struct.Memory** %MEMORY
  %loadMem1_46bfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %PC.i440
  %1444 = add i64 %1443, -405910
  %1445 = load i64, i64* %PC.i440
  %1446 = add i64 %1445, 5
  %1447 = load i64, i64* %PC.i440
  %1448 = add i64 %1447, 5
  store i64 %1448, i64* %PC.i440
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1450 = load i64, i64* %1449, align 8
  %1451 = add i64 %1450, -8
  %1452 = inttoptr i64 %1451 to i64*
  store i64 %1446, i64* %1452
  store i64 %1451, i64* %1449, align 8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1444, i64* %1453, align 8
  store %struct.Memory* %loadMem1_46bfc6, %struct.Memory** %MEMORY
  %loadMem2_46bfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bfc6 = load i64, i64* %3
  %call2_46bfc6 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46bfc6, %struct.Memory* %loadMem2_46bfc6)
  store %struct.Memory* %call2_46bfc6, %struct.Memory** %MEMORY
  %loadMem_46bfcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 1
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %1459 to i32*
  %1460 = load i32, i32* %EAX.i439
  %1461 = zext i32 %1460 to i64
  %1462 = load i64, i64* %PC.i438
  %1463 = add i64 %1462, 3
  store i64 %1463, i64* %PC.i438
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1464, align 1
  %1465 = and i32 %1460, 255
  %1466 = call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1469, i8* %1470, align 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1471, align 1
  %1472 = icmp eq i32 %1460, 0
  %1473 = zext i1 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1473, i8* %1474, align 1
  %1475 = lshr i32 %1460, 31
  %1476 = trunc i32 %1475 to i8
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1476, i8* %1477, align 1
  %1478 = lshr i32 %1460, 31
  %1479 = xor i32 %1475, %1478
  %1480 = add i32 %1479, %1478
  %1481 = icmp eq i32 %1480, 2
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1482, i8* %1483, align 1
  store %struct.Memory* %loadMem_46bfcb, %struct.Memory** %MEMORY
  %loadMem_46bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1486 to i64*
  %1487 = load i64, i64* %PC.i437
  %1488 = add i64 %1487, 70
  %1489 = load i64, i64* %PC.i437
  %1490 = add i64 %1489, 6
  %1491 = load i64, i64* %PC.i437
  %1492 = add i64 %1491, 6
  store i64 %1492, i64* %PC.i437
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1494 = load i8, i8* %1493, align 1
  store i8 %1494, i8* %BRANCH_TAKEN, align 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1496 = icmp ne i8 %1494, 0
  %1497 = select i1 %1496, i64 %1488, i64 %1490
  store i64 %1497, i64* %1495, align 8
  store %struct.Memory* %loadMem_46bfce, %struct.Memory** %MEMORY
  %loadBr_46bfce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bfce = icmp eq i8 %loadBr_46bfce, 1
  br i1 %cmpBr_46bfce, label %block_.L_46c014, label %block_46bfd4

block_46bfd4:                                     ; preds = %block_46bf94
  %loadMem_46bfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %EAX.i435 = bitcast %union.anon* %1503 to i32*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 1
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %1506 to i64*
  %1507 = load i64, i64* %RAX.i436
  %1508 = load i32, i32* %EAX.i435
  %1509 = zext i32 %1508 to i64
  %1510 = load i64, i64* %PC.i434
  %1511 = add i64 %1510, 2
  store i64 %1511, i64* %PC.i434
  %1512 = xor i64 %1509, %1507
  %1513 = trunc i64 %1512 to i32
  %1514 = and i64 %1512, 4294967295
  store i64 %1514, i64* %RAX.i436, align 8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1515, align 1
  %1516 = and i32 %1513, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1
  %1522 = icmp eq i32 %1513, 0
  %1523 = zext i1 %1522 to i8
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1523, i8* %1524, align 1
  %1525 = lshr i32 %1513, 31
  %1526 = trunc i32 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1526, i8* %1527, align 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1528, align 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1529, align 1
  store %struct.Memory* %loadMem_46bfd4, %struct.Memory** %MEMORY
  %loadMem_46bfd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 1
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %1535 to i32*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 9
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RSI.i433 = bitcast %union.anon* %1538 to i64*
  %1539 = load i32, i32* %EAX.i432
  %1540 = zext i32 %1539 to i64
  %1541 = load i64, i64* %PC.i431
  %1542 = add i64 %1541, 2
  store i64 %1542, i64* %PC.i431
  %1543 = and i64 %1540, 4294967295
  store i64 %1543, i64* %RSI.i433, align 8
  store %struct.Memory* %loadMem_46bfd6, %struct.Memory** %MEMORY
  %loadMem_46bfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 11
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RDI.i429 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 15
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RBP.i430
  %1554 = sub i64 %1553, 8
  %1555 = load i64, i64* %PC.i428
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i428
  %1557 = inttoptr i64 %1554 to i32*
  %1558 = load i32, i32* %1557
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RDI.i429, align 8
  store %struct.Memory* %loadMem_46bfd8, %struct.Memory** %MEMORY
  %loadMem1_46bfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %PC.i427
  %1564 = add i64 %1563, -58523
  %1565 = load i64, i64* %PC.i427
  %1566 = add i64 %1565, 5
  %1567 = load i64, i64* %PC.i427
  %1568 = add i64 %1567, 5
  store i64 %1568, i64* %PC.i427
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1570 = load i64, i64* %1569, align 8
  %1571 = add i64 %1570, -8
  %1572 = inttoptr i64 %1571 to i64*
  store i64 %1566, i64* %1572
  store i64 %1571, i64* %1569, align 8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1564, i64* %1573, align 8
  store %struct.Memory* %loadMem1_46bfdb, %struct.Memory** %MEMORY
  %loadMem2_46bfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bfdb = load i64, i64* %3
  %call2_46bfdb = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46bfdb, %struct.Memory* %loadMem2_46bfdb)
  store %struct.Memory* %call2_46bfdb, %struct.Memory** %MEMORY
  %loadMem_46bfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 1
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %EAX.i425 = bitcast %union.anon* %1579 to i32*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 15
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %RBP.i426
  %1584 = sub i64 %1583, 1684
  %1585 = load i32, i32* %EAX.i425
  %1586 = zext i32 %1585 to i64
  %1587 = load i64, i64* %PC.i424
  %1588 = add i64 %1587, 6
  store i64 %1588, i64* %PC.i424
  %1589 = inttoptr i64 %1584 to i32*
  store i32 %1585, i32* %1589
  store %struct.Memory* %loadMem_46bfe0, %struct.Memory** %MEMORY
  %loadMem_46bfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 15
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RBP.i423
  %1597 = sub i64 %1596, 1684
  %1598 = load i64, i64* %PC.i422
  %1599 = add i64 %1598, 7
  store i64 %1599, i64* %PC.i422
  %1600 = inttoptr i64 %1597 to i32*
  %1601 = load i32, i32* %1600
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1602, align 1
  %1603 = and i32 %1601, 255
  %1604 = call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1607, i8* %1608, align 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1609, align 1
  %1610 = icmp eq i32 %1601, 0
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1611, i8* %1612, align 1
  %1613 = lshr i32 %1601, 31
  %1614 = trunc i32 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1614, i8* %1615, align 1
  %1616 = lshr i32 %1601, 31
  %1617 = xor i32 %1613, %1616
  %1618 = add i32 %1617, %1616
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1
  store %struct.Memory* %loadMem_46bfe6, %struct.Memory** %MEMORY
  %loadMem_46bfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %PC.i421
  %1626 = add i64 %1625, 34
  %1627 = load i64, i64* %PC.i421
  %1628 = add i64 %1627, 6
  %1629 = load i64, i64* %PC.i421
  %1630 = add i64 %1629, 6
  store i64 %1630, i64* %PC.i421
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1632 = load i8, i8* %1631, align 1
  store i8 %1632, i8* %BRANCH_TAKEN, align 1
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1634 = icmp ne i8 %1632, 0
  %1635 = select i1 %1634, i64 %1626, i64 %1628
  store i64 %1635, i64* %1633, align 8
  store %struct.Memory* %loadMem_46bfed, %struct.Memory** %MEMORY
  %loadBr_46bfed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bfed = icmp eq i8 %loadBr_46bfed, 1
  br i1 %cmpBr_46bfed, label %block_.L_46c00f, label %block_46bff3

block_46bff3:                                     ; preds = %block_46bfd4
  %loadMem_46bff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 11
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RDI.i419 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 15
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %RBP.i420
  %1646 = sub i64 %1645, 1680
  %1647 = load i64, i64* %PC.i418
  %1648 = add i64 %1647, 6
  store i64 %1648, i64* %PC.i418
  %1649 = inttoptr i64 %1646 to i32*
  %1650 = load i32, i32* %1649
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RDI.i419, align 8
  store %struct.Memory* %loadMem_46bff3, %struct.Memory** %MEMORY
  %loadMem_46bff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 9
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RSI.i416 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 15
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RBP.i417
  %1662 = sub i64 %1661, 1684
  %1663 = load i64, i64* %PC.i415
  %1664 = add i64 %1663, 6
  store i64 %1664, i64* %PC.i415
  %1665 = inttoptr i64 %1662 to i32*
  %1666 = load i32, i32* %1665
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RSI.i416, align 8
  store %struct.Memory* %loadMem_46bff9, %struct.Memory** %MEMORY
  %loadMem_46bfff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 7
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RDX.i413 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 15
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %1676 to i64*
  %1677 = load i64, i64* %RBP.i414
  %1678 = sub i64 %1677, 12
  %1679 = load i64, i64* %PC.i412
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC.i412
  %1681 = inttoptr i64 %1678 to i32*
  %1682 = load i32, i32* %1681
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RDX.i413, align 8
  store %struct.Memory* %loadMem_46bfff, %struct.Memory** %MEMORY
  %loadMem_46c002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 5
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 15
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1692 to i64*
  %1693 = load i64, i64* %RBP.i411
  %1694 = sub i64 %1693, 24
  %1695 = load i64, i64* %PC.i409
  %1696 = add i64 %1695, 4
  store i64 %1696, i64* %PC.i409
  %1697 = inttoptr i64 %1694 to i64*
  %1698 = load i64, i64* %1697
  store i64 %1698, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_46c002, %struct.Memory** %MEMORY
  %loadMem_46c006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 17
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %R8.i408 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %RBP.i407
  %1709 = sub i64 %1708, 32
  %1710 = load i64, i64* %PC.i406
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC.i406
  %1712 = inttoptr i64 %1709 to i64*
  %1713 = load i64, i64* %1712
  store i64 %1713, i64* %R8.i408, align 8
  store %struct.Memory* %loadMem_46c006, %struct.Memory** %MEMORY
  %loadMem1_46c00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1716 to i64*
  %1717 = load i64, i64* %PC.i405
  %1718 = add i64 %1717, -214650
  %1719 = load i64, i64* %PC.i405
  %1720 = add i64 %1719, 5
  %1721 = load i64, i64* %PC.i405
  %1722 = add i64 %1721, 5
  store i64 %1722, i64* %PC.i405
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1724 = load i64, i64* %1723, align 8
  %1725 = add i64 %1724, -8
  %1726 = inttoptr i64 %1725 to i64*
  store i64 %1720, i64* %1726
  store i64 %1725, i64* %1723, align 8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1718, i64* %1727, align 8
  store %struct.Memory* %loadMem1_46c00a, %struct.Memory** %MEMORY
  %loadMem2_46c00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c00a = load i64, i64* %3
  %call2_46c00a = call %struct.Memory* @sub_437990.movelist_change_point(%struct.State* %0, i64 %loadPC_46c00a, %struct.Memory* %loadMem2_46c00a)
  store %struct.Memory* %call2_46c00a, %struct.Memory** %MEMORY
  br label %block_.L_46c00f

block_.L_46c00f:                                  ; preds = %block_46bff3, %block_46bfd4
  %loadMem1_46c00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %PC.i404
  %1732 = add i64 %1731, -385711
  %1733 = load i64, i64* %PC.i404
  %1734 = add i64 %1733, 5
  %1735 = load i64, i64* %PC.i404
  %1736 = add i64 %1735, 5
  store i64 %1736, i64* %PC.i404
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1738 = load i64, i64* %1737, align 8
  %1739 = add i64 %1738, -8
  %1740 = inttoptr i64 %1739 to i64*
  store i64 %1734, i64* %1740
  store i64 %1739, i64* %1737, align 8
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1732, i64* %1741, align 8
  store %struct.Memory* %loadMem1_46c00f, %struct.Memory** %MEMORY
  %loadMem2_46c00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c00f = load i64, i64* %3
  %call2_46c00f = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46c00f, %struct.Memory* %loadMem2_46c00f)
  store %struct.Memory* %call2_46c00f, %struct.Memory** %MEMORY
  br label %block_.L_46c014

block_.L_46c014:                                  ; preds = %block_.L_46c00f, %block_46bf94
  %loadMem_46c014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 15
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RBP.i403
  %1749 = sub i64 %1748, 1672
  %1750 = load i64, i64* %PC.i402
  %1751 = add i64 %1750, 10
  store i64 %1751, i64* %PC.i402
  %1752 = inttoptr i64 %1749 to i32*
  store i32 0, i32* %1752
  store %struct.Memory* %loadMem_46c014, %struct.Memory** %MEMORY
  br label %block_.L_46c01e

block_.L_46c01e:                                  ; preds = %block_.L_46c122, %block_.L_46c014
  %loadMem_46c01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 15
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %RBP.i401
  %1760 = sub i64 %1759, 1672
  %1761 = load i64, i64* %PC.i400
  %1762 = add i64 %1761, 7
  store i64 %1762, i64* %PC.i400
  %1763 = inttoptr i64 %1760 to i32*
  %1764 = load i32, i32* %1763
  %1765 = sub i32 %1764, 4
  %1766 = icmp ult i32 %1764, 4
  %1767 = zext i1 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1767, i8* %1768, align 1
  %1769 = and i32 %1765, 255
  %1770 = call i32 @llvm.ctpop.i32(i32 %1769)
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  %1773 = xor i8 %1772, 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1773, i8* %1774, align 1
  %1775 = xor i32 %1764, 4
  %1776 = xor i32 %1775, %1765
  %1777 = lshr i32 %1776, 4
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1779, i8* %1780, align 1
  %1781 = icmp eq i32 %1765, 0
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1782, i8* %1783, align 1
  %1784 = lshr i32 %1765, 31
  %1785 = trunc i32 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1785, i8* %1786, align 1
  %1787 = lshr i32 %1764, 31
  %1788 = xor i32 %1784, %1787
  %1789 = add i32 %1788, %1787
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1791, i8* %1792, align 1
  store %struct.Memory* %loadMem_46c01e, %struct.Memory** %MEMORY
  %loadMem_46c025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %PC.i399
  %1797 = add i64 %1796, 273
  %1798 = load i64, i64* %PC.i399
  %1799 = add i64 %1798, 6
  %1800 = load i64, i64* %PC.i399
  %1801 = add i64 %1800, 6
  store i64 %1801, i64* %PC.i399
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1803 = load i8, i8* %1802, align 1
  %1804 = icmp ne i8 %1803, 0
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1806 = load i8, i8* %1805, align 1
  %1807 = icmp ne i8 %1806, 0
  %1808 = xor i1 %1804, %1807
  %1809 = xor i1 %1808, true
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %BRANCH_TAKEN, align 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1812 = select i1 %1808, i64 %1799, i64 %1797
  store i64 %1812, i64* %1811, align 8
  store %struct.Memory* %loadMem_46c025, %struct.Memory** %MEMORY
  %loadBr_46c025 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c025 = icmp eq i8 %loadBr_46c025, 1
  br i1 %cmpBr_46c025, label %block_.L_46c136, label %block_46c02b

block_46c02b:                                     ; preds = %block_.L_46c01e
  %loadMem_46c02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 1
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 15
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1821 to i64*
  %1822 = load i64, i64* %RBP.i398
  %1823 = sub i64 %1822, 1668
  %1824 = load i64, i64* %PC.i396
  %1825 = add i64 %1824, 7
  store i64 %1825, i64* %PC.i396
  %1826 = inttoptr i64 %1823 to i32*
  %1827 = load i32, i32* %1826
  %1828 = sext i32 %1827 to i64
  store i64 %1828, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_46c02b, %struct.Memory** %MEMORY
  %loadMem_46c032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 1
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 5
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 15
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1840 to i64*
  %1841 = load i64, i64* %RBP.i395
  %1842 = load i64, i64* %RAX.i393
  %1843 = mul i64 %1842, 4
  %1844 = add i64 %1841, -1008
  %1845 = add i64 %1844, %1843
  %1846 = load i64, i64* %PC.i392
  %1847 = add i64 %1846, 7
  store i64 %1847, i64* %PC.i392
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848
  %1850 = zext i32 %1849 to i64
  store i64 %1850, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_46c032, %struct.Memory** %MEMORY
  %loadMem_46c039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 1
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 15
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RBP.i391
  %1861 = sub i64 %1860, 1672
  %1862 = load i64, i64* %PC.i389
  %1863 = add i64 %1862, 7
  store i64 %1863, i64* %PC.i389
  %1864 = inttoptr i64 %1861 to i32*
  %1865 = load i32, i32* %1864
  %1866 = sext i32 %1865 to i64
  store i64 %1866, i64* %RAX.i390, align 8
  store %struct.Memory* %loadMem_46c039, %struct.Memory** %MEMORY
  %loadMem_46c040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 1
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 5
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %RCX.i388
  %1877 = load i64, i64* %RAX.i387
  %1878 = mul i64 %1877, 4
  %1879 = add i64 %1878, 8053168
  %1880 = load i64, i64* %PC.i386
  %1881 = add i64 %1880, 7
  store i64 %1881, i64* %PC.i386
  %1882 = trunc i64 %1876 to i32
  %1883 = inttoptr i64 %1879 to i32*
  %1884 = load i32, i32* %1883
  %1885 = add i32 %1884, %1882
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RCX.i388, align 8
  %1887 = icmp ult i32 %1885, %1882
  %1888 = icmp ult i32 %1885, %1884
  %1889 = or i1 %1887, %1888
  %1890 = zext i1 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1890, i8* %1891, align 1
  %1892 = and i32 %1885, 255
  %1893 = call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1896, i8* %1897, align 1
  %1898 = xor i32 %1884, %1882
  %1899 = xor i32 %1898, %1885
  %1900 = lshr i32 %1899, 4
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1902, i8* %1903, align 1
  %1904 = icmp eq i32 %1885, 0
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1905, i8* %1906, align 1
  %1907 = lshr i32 %1885, 31
  %1908 = trunc i32 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1908, i8* %1909, align 1
  %1910 = lshr i32 %1882, 31
  %1911 = lshr i32 %1884, 31
  %1912 = xor i32 %1907, %1910
  %1913 = xor i32 %1907, %1911
  %1914 = add i32 %1912, %1913
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1916, i8* %1917, align 1
  store %struct.Memory* %loadMem_46c040, %struct.Memory** %MEMORY
  %loadMem_46c047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 5
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %ECX.i384 = bitcast %union.anon* %1923 to i32*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i385
  %1928 = sub i64 %1927, 1688
  %1929 = load i32, i32* %ECX.i384
  %1930 = zext i32 %1929 to i64
  %1931 = load i64, i64* %PC.i383
  %1932 = add i64 %1931, 6
  store i64 %1932, i64* %PC.i383
  %1933 = inttoptr i64 %1928 to i32*
  store i32 %1929, i32* %1933
  store %struct.Memory* %loadMem_46c047, %struct.Memory** %MEMORY
  %loadMem_46c04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RBP.i382
  %1944 = sub i64 %1943, 1688
  %1945 = load i64, i64* %PC.i380
  %1946 = add i64 %1945, 7
  store i64 %1946, i64* %PC.i380
  %1947 = inttoptr i64 %1944 to i32*
  %1948 = load i32, i32* %1947
  %1949 = sext i32 %1948 to i64
  store i64 %1949, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_46c04d, %struct.Memory** %MEMORY
  %loadMem_46c054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 1
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 5
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %RAX.i378
  %1960 = add i64 %1959, 12099168
  %1961 = load i64, i64* %PC.i377
  %1962 = add i64 %1961, 8
  store i64 %1962, i64* %PC.i377
  %1963 = inttoptr i64 %1960 to i8*
  %1964 = load i8, i8* %1963
  %1965 = zext i8 %1964 to i64
  store i64 %1965, i64* %RCX.i379, align 8
  store %struct.Memory* %loadMem_46c054, %struct.Memory** %MEMORY
  %loadMem_46c05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 5
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %ECX.i376 = bitcast %union.anon* %1971 to i32*
  %1972 = load i32, i32* %ECX.i376
  %1973 = zext i32 %1972 to i64
  %1974 = load i64, i64* %PC.i375
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %PC.i375
  %1976 = sub i32 %1972, 3
  %1977 = icmp ult i32 %1972, 3
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1978, i8* %1979, align 1
  %1980 = and i32 %1976, 255
  %1981 = call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1984, i8* %1985, align 1
  %1986 = xor i64 3, %1973
  %1987 = trunc i64 %1986 to i32
  %1988 = xor i32 %1987, %1976
  %1989 = lshr i32 %1988, 4
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1991, i8* %1992, align 1
  %1993 = icmp eq i32 %1976, 0
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1994, i8* %1995, align 1
  %1996 = lshr i32 %1976, 31
  %1997 = trunc i32 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1997, i8* %1998, align 1
  %1999 = lshr i32 %1972, 31
  %2000 = xor i32 %1996, %1999
  %2001 = add i32 %2000, %1999
  %2002 = icmp eq i32 %2001, 2
  %2003 = zext i1 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2003, i8* %2004, align 1
  store %struct.Memory* %loadMem_46c05c, %struct.Memory** %MEMORY
  %loadMem_46c05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %PC.i374
  %2009 = add i64 %2008, 77
  %2010 = load i64, i64* %PC.i374
  %2011 = add i64 %2010, 6
  %2012 = load i64, i64* %PC.i374
  %2013 = add i64 %2012, 6
  store i64 %2013, i64* %PC.i374
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2015 = load i8, i8* %2014, align 1
  store i8 %2015, i8* %BRANCH_TAKEN, align 1
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2017 = icmp ne i8 %2015, 0
  %2018 = select i1 %2017, i64 %2009, i64 %2011
  store i64 %2018, i64* %2016, align 8
  store %struct.Memory* %loadMem_46c05f, %struct.Memory** %MEMORY
  %loadBr_46c05f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c05f = icmp eq i8 %loadBr_46c05f, 1
  br i1 %cmpBr_46c05f, label %block_.L_46c0ac, label %block_46c065

block_46c065:                                     ; preds = %block_46c02b
  %loadMem_46c065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 1
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 15
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RBP.i373
  %2029 = sub i64 %2028, 1688
  %2030 = load i64, i64* %PC.i371
  %2031 = add i64 %2030, 7
  store i64 %2031, i64* %PC.i371
  %2032 = inttoptr i64 %2029 to i32*
  %2033 = load i32, i32* %2032
  %2034 = sext i32 %2033 to i64
  store i64 %2034, i64* %RAX.i372, align 8
  store %struct.Memory* %loadMem_46c065, %struct.Memory** %MEMORY
  %loadMem_46c06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 1
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 5
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RAX.i369
  %2045 = add i64 %2044, 12099168
  %2046 = load i64, i64* %PC.i368
  %2047 = add i64 %2046, 8
  store i64 %2047, i64* %PC.i368
  %2048 = inttoptr i64 %2045 to i8*
  %2049 = load i8, i8* %2048
  %2050 = zext i8 %2049 to i64
  store i64 %2050, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_46c06c, %struct.Memory** %MEMORY
  %loadMem_46c074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 5
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %ECX.i367 = bitcast %union.anon* %2056 to i32*
  %2057 = load i32, i32* %ECX.i367
  %2058 = zext i32 %2057 to i64
  %2059 = load i64, i64* %PC.i366
  %2060 = add i64 %2059, 3
  store i64 %2060, i64* %PC.i366
  %2061 = sub i32 %2057, 1
  %2062 = icmp ult i32 %2057, 1
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2063, i8* %2064, align 1
  %2065 = and i32 %2061, 255
  %2066 = call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2069, i8* %2070, align 1
  %2071 = xor i64 1, %2058
  %2072 = trunc i64 %2071 to i32
  %2073 = xor i32 %2072, %2061
  %2074 = lshr i32 %2073, 4
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2076, i8* %2077, align 1
  %2078 = icmp eq i32 %2061, 0
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i32 %2061, 31
  %2082 = trunc i32 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2082, i8* %2083, align 1
  %2084 = lshr i32 %2057, 31
  %2085 = xor i32 %2081, %2084
  %2086 = add i32 %2085, %2084
  %2087 = icmp eq i32 %2086, 2
  %2088 = zext i1 %2087 to i8
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2088, i8* %2089, align 1
  store %struct.Memory* %loadMem_46c074, %struct.Memory** %MEMORY
  %loadMem_46c077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %PC.i365
  %2094 = add i64 %2093, 53
  %2095 = load i64, i64* %PC.i365
  %2096 = add i64 %2095, 6
  %2097 = load i64, i64* %PC.i365
  %2098 = add i64 %2097, 6
  store i64 %2098, i64* %PC.i365
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2100 = load i8, i8* %2099, align 1
  store i8 %2100, i8* %BRANCH_TAKEN, align 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2102 = icmp ne i8 %2100, 0
  %2103 = select i1 %2102, i64 %2094, i64 %2096
  store i64 %2103, i64* %2101, align 8
  store %struct.Memory* %loadMem_46c077, %struct.Memory** %MEMORY
  %loadBr_46c077 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c077 = icmp eq i8 %loadBr_46c077, 1
  br i1 %cmpBr_46c077, label %block_.L_46c0ac, label %block_46c07d

block_46c07d:                                     ; preds = %block_46c065
  %loadMem_46c07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 15
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %RBP.i364
  %2114 = sub i64 %2113, 1688
  %2115 = load i64, i64* %PC.i362
  %2116 = add i64 %2115, 7
  store i64 %2116, i64* %PC.i362
  %2117 = inttoptr i64 %2114 to i32*
  %2118 = load i32, i32* %2117
  %2119 = sext i32 %2118 to i64
  store i64 %2119, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_46c07d, %struct.Memory** %MEMORY
  %loadMem_46c084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 33
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 1
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 5
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RAX.i360
  %2130 = add i64 %2129, 12099168
  %2131 = load i64, i64* %PC.i359
  %2132 = add i64 %2131, 8
  store i64 %2132, i64* %PC.i359
  %2133 = inttoptr i64 %2130 to i8*
  %2134 = load i8, i8* %2133
  %2135 = zext i8 %2134 to i64
  store i64 %2135, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_46c084, %struct.Memory** %MEMORY
  %loadMem_46c08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 5
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %ECX.i358 = bitcast %union.anon* %2141 to i32*
  %2142 = load i32, i32* %ECX.i358
  %2143 = zext i32 %2142 to i64
  %2144 = load i64, i64* %PC.i357
  %2145 = add i64 %2144, 3
  store i64 %2145, i64* %PC.i357
  %2146 = sub i32 %2142, 2
  %2147 = icmp ult i32 %2142, 2
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2148, i8* %2149, align 1
  %2150 = and i32 %2146, 255
  %2151 = call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2154, i8* %2155, align 1
  %2156 = xor i64 2, %2143
  %2157 = trunc i64 %2156 to i32
  %2158 = xor i32 %2157, %2146
  %2159 = lshr i32 %2158, 4
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2161, i8* %2162, align 1
  %2163 = icmp eq i32 %2146, 0
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2164, i8* %2165, align 1
  %2166 = lshr i32 %2146, 31
  %2167 = trunc i32 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2167, i8* %2168, align 1
  %2169 = lshr i32 %2142, 31
  %2170 = xor i32 %2166, %2169
  %2171 = add i32 %2170, %2169
  %2172 = icmp eq i32 %2171, 2
  %2173 = zext i1 %2172 to i8
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2173, i8* %2174, align 1
  store %struct.Memory* %loadMem_46c08c, %struct.Memory** %MEMORY
  %loadMem_46c08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %PC.i356
  %2179 = add i64 %2178, 29
  %2180 = load i64, i64* %PC.i356
  %2181 = add i64 %2180, 6
  %2182 = load i64, i64* %PC.i356
  %2183 = add i64 %2182, 6
  store i64 %2183, i64* %PC.i356
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2185 = load i8, i8* %2184, align 1
  store i8 %2185, i8* %BRANCH_TAKEN, align 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2187 = icmp ne i8 %2185, 0
  %2188 = select i1 %2187, i64 %2179, i64 %2181
  store i64 %2188, i64* %2186, align 8
  store %struct.Memory* %loadMem_46c08f, %struct.Memory** %MEMORY
  %loadBr_46c08f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c08f = icmp eq i8 %loadBr_46c08f, 1
  br i1 %cmpBr_46c08f, label %block_.L_46c0ac, label %block_46c095

block_46c095:                                     ; preds = %block_46c07d
  %loadMem_46c095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 11
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RDI.i354 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 15
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %RBP.i355
  %2199 = sub i64 %2198, 1688
  %2200 = load i64, i64* %PC.i353
  %2201 = add i64 %2200, 6
  store i64 %2201, i64* %PC.i353
  %2202 = inttoptr i64 %2199 to i32*
  %2203 = load i32, i32* %2202
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RDI.i354, align 8
  store %struct.Memory* %loadMem_46c095, %struct.Memory** %MEMORY
  %loadMem_46c09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 9
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RSI.i351 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i352
  %2215 = sub i64 %2214, 8
  %2216 = load i64, i64* %PC.i350
  %2217 = add i64 %2216, 3
  store i64 %2217, i64* %PC.i350
  %2218 = inttoptr i64 %2215 to i32*
  %2219 = load i32, i32* %2218
  %2220 = zext i32 %2219 to i64
  store i64 %2220, i64* %RSI.i351, align 8
  store %struct.Memory* %loadMem_46c09b, %struct.Memory** %MEMORY
  %loadMem1_46c09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %PC.i349
  %2225 = add i64 %2224, -357870
  %2226 = load i64, i64* %PC.i349
  %2227 = add i64 %2226, 5
  %2228 = load i64, i64* %PC.i349
  %2229 = add i64 %2228, 5
  store i64 %2229, i64* %PC.i349
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2231 = load i64, i64* %2230, align 8
  %2232 = add i64 %2231, -8
  %2233 = inttoptr i64 %2232 to i64*
  store i64 %2227, i64* %2233
  store i64 %2232, i64* %2230, align 8
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2225, i64* %2234, align 8
  store %struct.Memory* %loadMem1_46c09e, %struct.Memory** %MEMORY
  %loadMem2_46c09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c09e = load i64, i64* %3
  %call2_46c09e = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64 %loadPC_46c09e, %struct.Memory* %loadMem2_46c09e)
  store %struct.Memory* %call2_46c09e, %struct.Memory** %MEMORY
  %loadMem_46c0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %EAX.i348 = bitcast %union.anon* %2240 to i32*
  %2241 = load i32, i32* %EAX.i348
  %2242 = zext i32 %2241 to i64
  %2243 = load i64, i64* %PC.i347
  %2244 = add i64 %2243, 3
  store i64 %2244, i64* %PC.i347
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2245, align 1
  %2246 = and i32 %2241, 255
  %2247 = call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2250, i8* %2251, align 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2252, align 1
  %2253 = icmp eq i32 %2241, 0
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2254, i8* %2255, align 1
  %2256 = lshr i32 %2241, 31
  %2257 = trunc i32 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2257, i8* %2258, align 1
  %2259 = lshr i32 %2241, 31
  %2260 = xor i32 %2256, %2259
  %2261 = add i32 %2260, %2259
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2263, i8* %2264, align 1
  store %struct.Memory* %loadMem_46c0a3, %struct.Memory** %MEMORY
  %loadMem_46c0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %PC.i346
  %2269 = add i64 %2268, 11
  %2270 = load i64, i64* %PC.i346
  %2271 = add i64 %2270, 6
  %2272 = load i64, i64* %PC.i346
  %2273 = add i64 %2272, 6
  store i64 %2273, i64* %PC.i346
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2275 = load i8, i8* %2274, align 1
  store i8 %2275, i8* %BRANCH_TAKEN, align 1
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2277 = icmp ne i8 %2275, 0
  %2278 = select i1 %2277, i64 %2269, i64 %2271
  store i64 %2278, i64* %2276, align 8
  store %struct.Memory* %loadMem_46c0a6, %struct.Memory** %MEMORY
  %loadBr_46c0a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c0a6 = icmp eq i8 %loadBr_46c0a6, 1
  br i1 %cmpBr_46c0a6, label %block_.L_46c0b1, label %block_.L_46c0ac

block_.L_46c0ac:                                  ; preds = %block_46c095, %block_46c07d, %block_46c065, %block_46c02b
  %loadMem_46c0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %PC.i345
  %2283 = add i64 %2282, 118
  %2284 = load i64, i64* %PC.i345
  %2285 = add i64 %2284, 5
  store i64 %2285, i64* %PC.i345
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2283, i64* %2286, align 8
  store %struct.Memory* %loadMem_46c0ac, %struct.Memory** %MEMORY
  br label %block_.L_46c122

block_.L_46c0b1:                                  ; preds = %block_46c095
  %loadMem_46c0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 7
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %PC.i343
  %2294 = add i64 %2293, 10
  store i64 %2294, i64* %PC.i343
  store i64 ptrtoint (%G__0x58015b_type* @G__0x58015b to i64), i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_46c0b1, %struct.Memory** %MEMORY
  %loadMem_46c0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 1
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %2300 to i32*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 1
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %RAX.i342
  %2305 = load i32, i32* %EAX.i341
  %2306 = zext i32 %2305 to i64
  %2307 = load i64, i64* %PC.i340
  %2308 = add i64 %2307, 2
  store i64 %2308, i64* %PC.i340
  %2309 = xor i64 %2306, %2304
  %2310 = trunc i64 %2309 to i32
  %2311 = and i64 %2309, 4294967295
  store i64 %2311, i64* %RAX.i342, align 8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2312, align 1
  %2313 = and i32 %2310, 255
  %2314 = call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2317, i8* %2318, align 1
  %2319 = icmp eq i32 %2310, 0
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2320, i8* %2321, align 1
  %2322 = lshr i32 %2310, 31
  %2323 = trunc i32 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2323, i8* %2324, align 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2325, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2326, align 1
  store %struct.Memory* %loadMem_46c0bb, %struct.Memory** %MEMORY
  %loadMem_46c0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 11
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 15
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2335 to i64*
  %2336 = load i64, i64* %RBP.i339
  %2337 = sub i64 %2336, 1688
  %2338 = load i64, i64* %PC.i337
  %2339 = add i64 %2338, 6
  store i64 %2339, i64* %PC.i337
  %2340 = inttoptr i64 %2337 to i32*
  %2341 = load i32, i32* %2340
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RDI.i338, align 8
  store %struct.Memory* %loadMem_46c0bd, %struct.Memory** %MEMORY
  %loadMem_46c0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 9
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RSI.i335 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 15
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2351 to i64*
  %2352 = load i64, i64* %RBP.i336
  %2353 = sub i64 %2352, 36
  %2354 = load i64, i64* %PC.i334
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC.i334
  %2356 = inttoptr i64 %2353 to i32*
  %2357 = load i32, i32* %2356
  %2358 = zext i32 %2357 to i64
  store i64 %2358, i64* %RSI.i335, align 8
  store %struct.Memory* %loadMem_46c0c3, %struct.Memory** %MEMORY
  %loadMem_46c0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 5
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RBP.i333
  %2369 = sub i64 %2368, 8
  %2370 = load i64, i64* %PC.i331
  %2371 = add i64 %2370, 3
  store i64 %2371, i64* %PC.i331
  %2372 = inttoptr i64 %2369 to i32*
  %2373 = load i32, i32* %2372
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_46c0c6, %struct.Memory** %MEMORY
  %loadMem_46c0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 1
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %2380 to i32*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 17
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %R8D.i330 = bitcast %union.anon* %2383 to i32*
  %2384 = bitcast i32* %R8D.i330 to i64*
  %2385 = load i32, i32* %EAX.i329
  %2386 = zext i32 %2385 to i64
  %2387 = load i64, i64* %PC.i328
  %2388 = add i64 %2387, 3
  store i64 %2388, i64* %PC.i328
  %2389 = and i64 %2386, 4294967295
  store i64 %2389, i64* %2384, align 8
  store %struct.Memory* %loadMem_46c0c9, %struct.Memory** %MEMORY
  %loadMem_46c0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 1
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %EAX.i326 = bitcast %union.anon* %2395 to i32*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 19
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %R9D.i327 = bitcast %union.anon* %2398 to i32*
  %2399 = bitcast i32* %R9D.i327 to i64*
  %2400 = load i32, i32* %EAX.i326
  %2401 = zext i32 %2400 to i64
  %2402 = load i64, i64* %PC.i325
  %2403 = add i64 %2402, 3
  store i64 %2403, i64* %PC.i325
  %2404 = and i64 %2401, 4294967295
  store i64 %2404, i64* %2399, align 8
  store %struct.Memory* %loadMem_46c0cc, %struct.Memory** %MEMORY
  %loadMem1_46c0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %PC.i324
  %2409 = add i64 %2408, -406175
  %2410 = load i64, i64* %PC.i324
  %2411 = add i64 %2410, 5
  %2412 = load i64, i64* %PC.i324
  %2413 = add i64 %2412, 5
  store i64 %2413, i64* %PC.i324
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2415 = load i64, i64* %2414, align 8
  %2416 = add i64 %2415, -8
  %2417 = inttoptr i64 %2416 to i64*
  store i64 %2411, i64* %2417
  store i64 %2416, i64* %2414, align 8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2409, i64* %2418, align 8
  store %struct.Memory* %loadMem1_46c0cf, %struct.Memory** %MEMORY
  %loadMem2_46c0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c0cf = load i64, i64* %3
  %call2_46c0cf = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46c0cf, %struct.Memory* %loadMem2_46c0cf)
  store %struct.Memory* %call2_46c0cf, %struct.Memory** %MEMORY
  %loadMem_46c0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 1
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %EAX.i323 = bitcast %union.anon* %2424 to i32*
  %2425 = load i32, i32* %EAX.i323
  %2426 = zext i32 %2425 to i64
  %2427 = load i64, i64* %PC.i322
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i322
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2429, align 1
  %2430 = and i32 %2425, 255
  %2431 = call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2434, i8* %2435, align 1
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2436, align 1
  %2437 = icmp eq i32 %2425, 0
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2438, i8* %2439, align 1
  %2440 = lshr i32 %2425, 31
  %2441 = trunc i32 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2441, i8* %2442, align 1
  %2443 = lshr i32 %2425, 31
  %2444 = xor i32 %2440, %2443
  %2445 = add i32 %2444, %2443
  %2446 = icmp eq i32 %2445, 2
  %2447 = zext i1 %2446 to i8
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2447, i8* %2448, align 1
  store %struct.Memory* %loadMem_46c0d4, %struct.Memory** %MEMORY
  %loadMem_46c0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %PC.i321
  %2453 = add i64 %2452, 70
  %2454 = load i64, i64* %PC.i321
  %2455 = add i64 %2454, 6
  %2456 = load i64, i64* %PC.i321
  %2457 = add i64 %2456, 6
  store i64 %2457, i64* %PC.i321
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2459 = load i8, i8* %2458, align 1
  store i8 %2459, i8* %BRANCH_TAKEN, align 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2461 = icmp ne i8 %2459, 0
  %2462 = select i1 %2461, i64 %2453, i64 %2455
  store i64 %2462, i64* %2460, align 8
  store %struct.Memory* %loadMem_46c0d7, %struct.Memory** %MEMORY
  %loadBr_46c0d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c0d7 = icmp eq i8 %loadBr_46c0d7, 1
  br i1 %cmpBr_46c0d7, label %block_.L_46c11d, label %block_46c0dd

block_46c0dd:                                     ; preds = %block_.L_46c0b1
  %loadMem_46c0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %2468 to i32*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 1
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RAX.i320
  %2473 = load i32, i32* %EAX.i319
  %2474 = zext i32 %2473 to i64
  %2475 = load i64, i64* %PC.i318
  %2476 = add i64 %2475, 2
  store i64 %2476, i64* %PC.i318
  %2477 = xor i64 %2474, %2472
  %2478 = trunc i64 %2477 to i32
  %2479 = and i64 %2477, 4294967295
  store i64 %2479, i64* %RAX.i320, align 8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2480, align 1
  %2481 = and i32 %2478, 255
  %2482 = call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2485, i8* %2486, align 1
  %2487 = icmp eq i32 %2478, 0
  %2488 = zext i1 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2488, i8* %2489, align 1
  %2490 = lshr i32 %2478, 31
  %2491 = trunc i32 %2490 to i8
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2491, i8* %2492, align 1
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2493, align 1
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2494, align 1
  store %struct.Memory* %loadMem_46c0dd, %struct.Memory** %MEMORY
  %loadMem_46c0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %2500 to i32*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 9
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RSI.i317 = bitcast %union.anon* %2503 to i64*
  %2504 = load i32, i32* %EAX.i316
  %2505 = zext i32 %2504 to i64
  %2506 = load i64, i64* %PC.i315
  %2507 = add i64 %2506, 2
  store i64 %2507, i64* %PC.i315
  %2508 = and i64 %2505, 4294967295
  store i64 %2508, i64* %RSI.i317, align 8
  store %struct.Memory* %loadMem_46c0df, %struct.Memory** %MEMORY
  %loadMem_46c0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 11
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RDI.i313 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 15
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %RBP.i314
  %2519 = sub i64 %2518, 8
  %2520 = load i64, i64* %PC.i312
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i312
  %2522 = inttoptr i64 %2519 to i32*
  %2523 = load i32, i32* %2522
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RDI.i313, align 8
  store %struct.Memory* %loadMem_46c0e1, %struct.Memory** %MEMORY
  %loadMem1_46c0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %PC.i311
  %2529 = add i64 %2528, -58788
  %2530 = load i64, i64* %PC.i311
  %2531 = add i64 %2530, 5
  %2532 = load i64, i64* %PC.i311
  %2533 = add i64 %2532, 5
  store i64 %2533, i64* %PC.i311
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2535 = load i64, i64* %2534, align 8
  %2536 = add i64 %2535, -8
  %2537 = inttoptr i64 %2536 to i64*
  store i64 %2531, i64* %2537
  store i64 %2536, i64* %2534, align 8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2529, i64* %2538, align 8
  store %struct.Memory* %loadMem1_46c0e4, %struct.Memory** %MEMORY
  %loadMem2_46c0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c0e4 = load i64, i64* %3
  %call2_46c0e4 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46c0e4, %struct.Memory* %loadMem2_46c0e4)
  store %struct.Memory* %call2_46c0e4, %struct.Memory** %MEMORY
  %loadMem_46c0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 1
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %2544 to i32*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 15
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %2547 to i64*
  %2548 = load i64, i64* %RBP.i310
  %2549 = sub i64 %2548, 1692
  %2550 = load i32, i32* %EAX.i309
  %2551 = zext i32 %2550 to i64
  %2552 = load i64, i64* %PC.i308
  %2553 = add i64 %2552, 6
  store i64 %2553, i64* %PC.i308
  %2554 = inttoptr i64 %2549 to i32*
  store i32 %2550, i32* %2554
  store %struct.Memory* %loadMem_46c0e9, %struct.Memory** %MEMORY
  %loadMem_46c0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 33
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2557 to i64*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 15
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2560 to i64*
  %2561 = load i64, i64* %RBP.i307
  %2562 = sub i64 %2561, 1692
  %2563 = load i64, i64* %PC.i306
  %2564 = add i64 %2563, 7
  store i64 %2564, i64* %PC.i306
  %2565 = inttoptr i64 %2562 to i32*
  %2566 = load i32, i32* %2565
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2567, align 1
  %2568 = and i32 %2566, 255
  %2569 = call i32 @llvm.ctpop.i32(i32 %2568)
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = xor i8 %2571, 1
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2572, i8* %2573, align 1
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2574, align 1
  %2575 = icmp eq i32 %2566, 0
  %2576 = zext i1 %2575 to i8
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2576, i8* %2577, align 1
  %2578 = lshr i32 %2566, 31
  %2579 = trunc i32 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2566, 31
  %2582 = xor i32 %2578, %2581
  %2583 = add i32 %2582, %2581
  %2584 = icmp eq i32 %2583, 2
  %2585 = zext i1 %2584 to i8
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2585, i8* %2586, align 1
  store %struct.Memory* %loadMem_46c0ef, %struct.Memory** %MEMORY
  %loadMem_46c0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2589 to i64*
  %2590 = load i64, i64* %PC.i305
  %2591 = add i64 %2590, 34
  %2592 = load i64, i64* %PC.i305
  %2593 = add i64 %2592, 6
  %2594 = load i64, i64* %PC.i305
  %2595 = add i64 %2594, 6
  store i64 %2595, i64* %PC.i305
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2597 = load i8, i8* %2596, align 1
  store i8 %2597, i8* %BRANCH_TAKEN, align 1
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2599 = icmp ne i8 %2597, 0
  %2600 = select i1 %2599, i64 %2591, i64 %2593
  store i64 %2600, i64* %2598, align 8
  store %struct.Memory* %loadMem_46c0f6, %struct.Memory** %MEMORY
  %loadBr_46c0f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c0f6 = icmp eq i8 %loadBr_46c0f6, 1
  br i1 %cmpBr_46c0f6, label %block_.L_46c118, label %block_46c0fc

block_46c0fc:                                     ; preds = %block_46c0dd
  %loadMem_46c0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 11
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 15
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RBP.i304
  %2611 = sub i64 %2610, 1688
  %2612 = load i64, i64* %PC.i302
  %2613 = add i64 %2612, 6
  store i64 %2613, i64* %PC.i302
  %2614 = inttoptr i64 %2611 to i32*
  %2615 = load i32, i32* %2614
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_46c0fc, %struct.Memory** %MEMORY
  %loadMem_46c102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 9
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %RBP.i301
  %2627 = sub i64 %2626, 1692
  %2628 = load i64, i64* %PC.i299
  %2629 = add i64 %2628, 6
  store i64 %2629, i64* %PC.i299
  %2630 = inttoptr i64 %2627 to i32*
  %2631 = load i32, i32* %2630
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RSI.i300, align 8
  store %struct.Memory* %loadMem_46c102, %struct.Memory** %MEMORY
  %loadMem_46c108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 7
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i298
  %2643 = sub i64 %2642, 12
  %2644 = load i64, i64* %PC.i296
  %2645 = add i64 %2644, 3
  store i64 %2645, i64* %PC.i296
  %2646 = inttoptr i64 %2643 to i32*
  %2647 = load i32, i32* %2646
  %2648 = zext i32 %2647 to i64
  store i64 %2648, i64* %RDX.i297, align 8
  store %struct.Memory* %loadMem_46c108, %struct.Memory** %MEMORY
  %loadMem_46c10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 5
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 15
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RBP.i295
  %2659 = sub i64 %2658, 24
  %2660 = load i64, i64* %PC.i293
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i293
  %2662 = inttoptr i64 %2659 to i64*
  %2663 = load i64, i64* %2662
  store i64 %2663, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_46c10b, %struct.Memory** %MEMORY
  %loadMem_46c10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 15
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 17
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %R8.i292 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %RBP.i291
  %2674 = sub i64 %2673, 32
  %2675 = load i64, i64* %PC.i290
  %2676 = add i64 %2675, 4
  store i64 %2676, i64* %PC.i290
  %2677 = inttoptr i64 %2674 to i64*
  %2678 = load i64, i64* %2677
  store i64 %2678, i64* %R8.i292, align 8
  store %struct.Memory* %loadMem_46c10f, %struct.Memory** %MEMORY
  %loadMem1_46c113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %PC.i289
  %2683 = add i64 %2682, -214915
  %2684 = load i64, i64* %PC.i289
  %2685 = add i64 %2684, 5
  %2686 = load i64, i64* %PC.i289
  %2687 = add i64 %2686, 5
  store i64 %2687, i64* %PC.i289
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2689 = load i64, i64* %2688, align 8
  %2690 = add i64 %2689, -8
  %2691 = inttoptr i64 %2690 to i64*
  store i64 %2685, i64* %2691
  store i64 %2690, i64* %2688, align 8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2683, i64* %2692, align 8
  store %struct.Memory* %loadMem1_46c113, %struct.Memory** %MEMORY
  %loadMem2_46c113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c113 = load i64, i64* %3
  %call2_46c113 = call %struct.Memory* @sub_437990.movelist_change_point(%struct.State* %0, i64 %loadPC_46c113, %struct.Memory* %loadMem2_46c113)
  store %struct.Memory* %call2_46c113, %struct.Memory** %MEMORY
  br label %block_.L_46c118

block_.L_46c118:                                  ; preds = %block_46c0fc, %block_46c0dd
  %loadMem1_46c118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %PC.i288
  %2697 = add i64 %2696, -385976
  %2698 = load i64, i64* %PC.i288
  %2699 = add i64 %2698, 5
  %2700 = load i64, i64* %PC.i288
  %2701 = add i64 %2700, 5
  store i64 %2701, i64* %PC.i288
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2703 = load i64, i64* %2702, align 8
  %2704 = add i64 %2703, -8
  %2705 = inttoptr i64 %2704 to i64*
  store i64 %2699, i64* %2705
  store i64 %2704, i64* %2702, align 8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2697, i64* %2706, align 8
  store %struct.Memory* %loadMem1_46c118, %struct.Memory** %MEMORY
  %loadMem2_46c118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c118 = load i64, i64* %3
  %call2_46c118 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46c118, %struct.Memory* %loadMem2_46c118)
  store %struct.Memory* %call2_46c118, %struct.Memory** %MEMORY
  br label %block_.L_46c11d

block_.L_46c11d:                                  ; preds = %block_.L_46c118, %block_.L_46c0b1
  %loadMem_46c11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %PC.i287
  %2711 = add i64 %2710, 5
  %2712 = load i64, i64* %PC.i287
  %2713 = add i64 %2712, 5
  store i64 %2713, i64* %PC.i287
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2711, i64* %2714, align 8
  store %struct.Memory* %loadMem_46c11d, %struct.Memory** %MEMORY
  br label %block_.L_46c122

block_.L_46c122:                                  ; preds = %block_.L_46c11d, %block_.L_46c0ac
  %loadMem_46c122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 1
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 15
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %RBP.i286
  %2725 = sub i64 %2724, 1672
  %2726 = load i64, i64* %PC.i284
  %2727 = add i64 %2726, 6
  store i64 %2727, i64* %PC.i284
  %2728 = inttoptr i64 %2725 to i32*
  %2729 = load i32, i32* %2728
  %2730 = zext i32 %2729 to i64
  store i64 %2730, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_46c122, %struct.Memory** %MEMORY
  %loadMem_46c128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 33
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 1
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %2736 to i64*
  %2737 = load i64, i64* %RAX.i283
  %2738 = load i64, i64* %PC.i282
  %2739 = add i64 %2738, 3
  store i64 %2739, i64* %PC.i282
  %2740 = trunc i64 %2737 to i32
  %2741 = add i32 1, %2740
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RAX.i283, align 8
  %2743 = icmp ult i32 %2741, %2740
  %2744 = icmp ult i32 %2741, 1
  %2745 = or i1 %2743, %2744
  %2746 = zext i1 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2746, i8* %2747, align 1
  %2748 = and i32 %2741, 255
  %2749 = call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2752, i8* %2753, align 1
  %2754 = xor i64 1, %2737
  %2755 = trunc i64 %2754 to i32
  %2756 = xor i32 %2755, %2741
  %2757 = lshr i32 %2756, 4
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2759, i8* %2760, align 1
  %2761 = icmp eq i32 %2741, 0
  %2762 = zext i1 %2761 to i8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2762, i8* %2763, align 1
  %2764 = lshr i32 %2741, 31
  %2765 = trunc i32 %2764 to i8
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2765, i8* %2766, align 1
  %2767 = lshr i32 %2740, 31
  %2768 = xor i32 %2764, %2767
  %2769 = add i32 %2768, %2764
  %2770 = icmp eq i32 %2769, 2
  %2771 = zext i1 %2770 to i8
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2771, i8* %2772, align 1
  store %struct.Memory* %loadMem_46c128, %struct.Memory** %MEMORY
  %loadMem_46c12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 1
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %2778 to i32*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 15
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %RBP.i281
  %2783 = sub i64 %2782, 1672
  %2784 = load i32, i32* %EAX.i280
  %2785 = zext i32 %2784 to i64
  %2786 = load i64, i64* %PC.i279
  %2787 = add i64 %2786, 6
  store i64 %2787, i64* %PC.i279
  %2788 = inttoptr i64 %2783 to i32*
  store i32 %2784, i32* %2788
  store %struct.Memory* %loadMem_46c12b, %struct.Memory** %MEMORY
  %loadMem_46c131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2791 to i64*
  %2792 = load i64, i64* %PC.i278
  %2793 = add i64 %2792, -275
  %2794 = load i64, i64* %PC.i278
  %2795 = add i64 %2794, 5
  store i64 %2795, i64* %PC.i278
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2793, i64* %2796, align 8
  store %struct.Memory* %loadMem_46c131, %struct.Memory** %MEMORY
  br label %block_.L_46c01e

block_.L_46c136:                                  ; preds = %block_.L_46c01e
  %loadMem_46c136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %PC.i277
  %2801 = add i64 %2800, 5
  %2802 = load i64, i64* %PC.i277
  %2803 = add i64 %2802, 5
  store i64 %2803, i64* %PC.i277
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2801, i64* %2804, align 8
  store %struct.Memory* %loadMem_46c136, %struct.Memory** %MEMORY
  br label %block_.L_46c13b

block_.L_46c13b:                                  ; preds = %block_.L_46c136
  %loadMem_46c13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 1
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 15
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RBP.i276
  %2815 = sub i64 %2814, 1668
  %2816 = load i64, i64* %PC.i274
  %2817 = add i64 %2816, 6
  store i64 %2817, i64* %PC.i274
  %2818 = inttoptr i64 %2815 to i32*
  %2819 = load i32, i32* %2818
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_46c13b, %struct.Memory** %MEMORY
  %loadMem_46c141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 1
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RAX.i273
  %2828 = load i64, i64* %PC.i272
  %2829 = add i64 %2828, 3
  store i64 %2829, i64* %PC.i272
  %2830 = trunc i64 %2827 to i32
  %2831 = add i32 1, %2830
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RAX.i273, align 8
  %2833 = icmp ult i32 %2831, %2830
  %2834 = icmp ult i32 %2831, 1
  %2835 = or i1 %2833, %2834
  %2836 = zext i1 %2835 to i8
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2836, i8* %2837, align 1
  %2838 = and i32 %2831, 255
  %2839 = call i32 @llvm.ctpop.i32(i32 %2838)
  %2840 = trunc i32 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = xor i8 %2841, 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2842, i8* %2843, align 1
  %2844 = xor i64 1, %2827
  %2845 = trunc i64 %2844 to i32
  %2846 = xor i32 %2845, %2831
  %2847 = lshr i32 %2846, 4
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2849, i8* %2850, align 1
  %2851 = icmp eq i32 %2831, 0
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2852, i8* %2853, align 1
  %2854 = lshr i32 %2831, 31
  %2855 = trunc i32 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2855, i8* %2856, align 1
  %2857 = lshr i32 %2830, 31
  %2858 = xor i32 %2854, %2857
  %2859 = add i32 %2858, %2854
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2861, i8* %2862, align 1
  store %struct.Memory* %loadMem_46c141, %struct.Memory** %MEMORY
  %loadMem_46c144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %2868 to i32*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 15
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RBP.i271
  %2873 = sub i64 %2872, 1668
  %2874 = load i32, i32* %EAX.i270
  %2875 = zext i32 %2874 to i64
  %2876 = load i64, i64* %PC.i269
  %2877 = add i64 %2876, 6
  store i64 %2877, i64* %PC.i269
  %2878 = inttoptr i64 %2873 to i32*
  store i32 %2874, i32* %2878
  store %struct.Memory* %loadMem_46c144, %struct.Memory** %MEMORY
  %loadMem_46c14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2881 to i64*
  %2882 = load i64, i64* %PC.i268
  %2883 = add i64 %2882, -453
  %2884 = load i64, i64* %PC.i268
  %2885 = add i64 %2884, 5
  store i64 %2885, i64* %PC.i268
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2883, i64* %2886, align 8
  store %struct.Memory* %loadMem_46c14a, %struct.Memory** %MEMORY
  br label %block_.L_46bf85

block_.L_46c14f:                                  ; preds = %block_.L_46bf85
  %loadMem_46c14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %PC.i267
  %2891 = add i64 %2890, 5
  %2892 = load i64, i64* %PC.i267
  %2893 = add i64 %2892, 5
  store i64 %2893, i64* %PC.i267
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2891, i64* %2894, align 8
  store %struct.Memory* %loadMem_46c14f, %struct.Memory** %MEMORY
  br label %block_.L_46c154

block_.L_46c154:                                  ; preds = %block_.L_46c14f, %block_46bf71, %block_.L_46bf50
  %loadMem_46c154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 9
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 15
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %2903 to i64*
  %2904 = load i64, i64* %RBP.i266
  %2905 = sub i64 %2904, 1664
  %2906 = load i64, i64* %PC.i264
  %2907 = add i64 %2906, 7
  store i64 %2907, i64* %PC.i264
  store i64 %2905, i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_46c154, %struct.Memory** %MEMORY
  %loadMem_46c15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 11
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RBP.i263
  %2918 = sub i64 %2917, 8
  %2919 = load i64, i64* %PC.i261
  %2920 = add i64 %2919, 3
  store i64 %2920, i64* %PC.i261
  %2921 = inttoptr i64 %2918 to i32*
  %2922 = load i32, i32* %2921
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RDI.i262, align 8
  store %struct.Memory* %loadMem_46c15b, %struct.Memory** %MEMORY
  %loadMem1_46c15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %PC.i260
  %2928 = add i64 %2927, -362078
  %2929 = load i64, i64* %PC.i260
  %2930 = add i64 %2929, 5
  %2931 = load i64, i64* %PC.i260
  %2932 = add i64 %2931, 5
  store i64 %2932, i64* %PC.i260
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2934 = load i64, i64* %2933, align 8
  %2935 = add i64 %2934, -8
  %2936 = inttoptr i64 %2935 to i64*
  store i64 %2930, i64* %2936
  store i64 %2935, i64* %2933, align 8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2928, i64* %2937, align 8
  store %struct.Memory* %loadMem1_46c15e, %struct.Memory** %MEMORY
  %loadMem2_46c15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c15e = load i64, i64* %3
  %call2_46c15e = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64 %loadPC_46c15e, %struct.Memory* %loadMem2_46c15e)
  store %struct.Memory* %call2_46c15e, %struct.Memory** %MEMORY
  %loadMem_46c163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %2943 to i32*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 15
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RBP.i259
  %2948 = sub i64 %2947, 1012
  %2949 = load i32, i32* %EAX.i258
  %2950 = zext i32 %2949 to i64
  %2951 = load i64, i64* %PC.i257
  %2952 = add i64 %2951, 6
  store i64 %2952, i64* %PC.i257
  %2953 = inttoptr i64 %2948 to i32*
  store i32 %2949, i32* %2953
  store %struct.Memory* %loadMem_46c163, %struct.Memory** %MEMORY
  %loadMem_46c169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 15
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %RBP.i256
  %2961 = sub i64 %2960, 1668
  %2962 = load i64, i64* %PC.i255
  %2963 = add i64 %2962, 10
  store i64 %2963, i64* %PC.i255
  %2964 = inttoptr i64 %2961 to i32*
  store i32 0, i32* %2964
  store %struct.Memory* %loadMem_46c169, %struct.Memory** %MEMORY
  br label %block_.L_46c173

block_.L_46c173:                                  ; preds = %block_.L_46c35e, %block_.L_46c154
  %loadMem_46c173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 33
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 1
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 15
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %RBP.i254
  %2975 = sub i64 %2974, 1668
  %2976 = load i64, i64* %PC.i252
  %2977 = add i64 %2976, 6
  store i64 %2977, i64* %PC.i252
  %2978 = inttoptr i64 %2975 to i32*
  %2979 = load i32, i32* %2978
  %2980 = zext i32 %2979 to i64
  store i64 %2980, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_46c173, %struct.Memory** %MEMORY
  %loadMem_46c179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 1
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %2986 to i32*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 15
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2989 to i64*
  %2990 = load i32, i32* %EAX.i250
  %2991 = zext i32 %2990 to i64
  %2992 = load i64, i64* %RBP.i251
  %2993 = sub i64 %2992, 1012
  %2994 = load i64, i64* %PC.i249
  %2995 = add i64 %2994, 6
  store i64 %2995, i64* %PC.i249
  %2996 = inttoptr i64 %2993 to i32*
  %2997 = load i32, i32* %2996
  %2998 = sub i32 %2990, %2997
  %2999 = icmp ult i32 %2990, %2997
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3000, i8* %3001, align 1
  %3002 = and i32 %2998, 255
  %3003 = call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3006, i8* %3007, align 1
  %3008 = xor i32 %2997, %2990
  %3009 = xor i32 %3008, %2998
  %3010 = lshr i32 %3009, 4
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3012, i8* %3013, align 1
  %3014 = icmp eq i32 %2998, 0
  %3015 = zext i1 %3014 to i8
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3015, i8* %3016, align 1
  %3017 = lshr i32 %2998, 31
  %3018 = trunc i32 %3017 to i8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3018, i8* %3019, align 1
  %3020 = lshr i32 %2990, 31
  %3021 = lshr i32 %2997, 31
  %3022 = xor i32 %3021, %3020
  %3023 = xor i32 %3017, %3020
  %3024 = add i32 %3023, %3022
  %3025 = icmp eq i32 %3024, 2
  %3026 = zext i1 %3025 to i8
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3026, i8* %3027, align 1
  store %struct.Memory* %loadMem_46c179, %struct.Memory** %MEMORY
  %loadMem_46c17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %PC.i248
  %3032 = add i64 %3031, 499
  %3033 = load i64, i64* %PC.i248
  %3034 = add i64 %3033, 6
  %3035 = load i64, i64* %PC.i248
  %3036 = add i64 %3035, 6
  store i64 %3036, i64* %PC.i248
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3038 = load i8, i8* %3037, align 1
  %3039 = icmp ne i8 %3038, 0
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3041 = load i8, i8* %3040, align 1
  %3042 = icmp ne i8 %3041, 0
  %3043 = xor i1 %3039, %3042
  %3044 = xor i1 %3043, true
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %BRANCH_TAKEN, align 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3047 = select i1 %3043, i64 %3034, i64 %3032
  store i64 %3047, i64* %3046, align 8
  store %struct.Memory* %loadMem_46c17f, %struct.Memory** %MEMORY
  %loadBr_46c17f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c17f = icmp eq i8 %loadBr_46c17f, 1
  br i1 %cmpBr_46c17f, label %block_.L_46c372, label %block_46c185

block_46c185:                                     ; preds = %block_.L_46c173
  %loadMem_46c185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 33
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 9
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RSI.i246 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 15
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %RBP.i247
  %3058 = sub i64 %3057, 1704
  %3059 = load i64, i64* %PC.i245
  %3060 = add i64 %3059, 7
  store i64 %3060, i64* %PC.i245
  store i64 %3058, i64* %RSI.i246, align 8
  store %struct.Memory* %loadMem_46c185, %struct.Memory** %MEMORY
  %loadMem_46c18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 1
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %EAX.i243 = bitcast %union.anon* %3066 to i32*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 1
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RAX.i244
  %3071 = load i32, i32* %EAX.i243
  %3072 = zext i32 %3071 to i64
  %3073 = load i64, i64* %PC.i242
  %3074 = add i64 %3073, 2
  store i64 %3074, i64* %PC.i242
  %3075 = xor i64 %3072, %3070
  %3076 = trunc i64 %3075 to i32
  %3077 = and i64 %3075, 4294967295
  store i64 %3077, i64* %RAX.i244, align 8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3078, align 1
  %3079 = and i32 %3076, 255
  %3080 = call i32 @llvm.ctpop.i32(i32 %3079)
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3083, i8* %3084, align 1
  %3085 = icmp eq i32 %3076, 0
  %3086 = zext i1 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i32 %3076, 31
  %3089 = trunc i32 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3089, i8* %3090, align 1
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3091, align 1
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3092, align 1
  store %struct.Memory* %loadMem_46c18c, %struct.Memory** %MEMORY
  %loadMem_46c18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %3098 to i32*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 7
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %3101 to i64*
  %3102 = load i32, i32* %EAX.i240
  %3103 = zext i32 %3102 to i64
  %3104 = load i64, i64* %PC.i239
  %3105 = add i64 %3104, 2
  store i64 %3105, i64* %PC.i239
  %3106 = and i64 %3103, 4294967295
  store i64 %3106, i64* %RDX.i241, align 8
  store %struct.Memory* %loadMem_46c18e, %struct.Memory** %MEMORY
  %loadMem_46c190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 5
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 15
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %RBP.i238
  %3117 = sub i64 %3116, 1708
  %3118 = load i64, i64* %PC.i236
  %3119 = add i64 %3118, 7
  store i64 %3119, i64* %PC.i236
  store i64 %3117, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_46c190, %struct.Memory** %MEMORY
  %loadMem_46c197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 17
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %R8.i235 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %RBP.i234
  %3130 = sub i64 %3129, 1700
  %3131 = load i64, i64* %PC.i233
  %3132 = add i64 %3131, 7
  store i64 %3132, i64* %PC.i233
  store i64 %3130, i64* %R8.i235, align 8
  store %struct.Memory* %loadMem_46c197, %struct.Memory** %MEMORY
  %loadMem_46c19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 11
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 15
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %3141 to i64*
  %3142 = load i64, i64* %RBP.i232
  %3143 = sub i64 %3142, 1668
  %3144 = load i64, i64* %PC.i230
  %3145 = add i64 %3144, 7
  store i64 %3145, i64* %PC.i230
  %3146 = inttoptr i64 %3143 to i32*
  %3147 = load i32, i32* %3146
  %3148 = sext i32 %3147 to i64
  store i64 %3148, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_46c19e, %struct.Memory** %MEMORY
  %loadMem_46c1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 11
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RDI.i228 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 15
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %3157 to i64*
  %3158 = load i64, i64* %RBP.i229
  %3159 = load i64, i64* %RDI.i228
  %3160 = mul i64 %3159, 4
  %3161 = add i64 %3158, -1664
  %3162 = add i64 %3161, %3160
  %3163 = load i64, i64* %PC.i227
  %3164 = add i64 %3163, 7
  store i64 %3164, i64* %PC.i227
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = zext i32 %3166 to i64
  store i64 %3167, i64* %RDI.i228, align 8
  store %struct.Memory* %loadMem_46c1a5, %struct.Memory** %MEMORY
  %loadMem1_46c1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %PC.i226
  %3172 = add i64 %3171, -6268
  %3173 = load i64, i64* %PC.i226
  %3174 = add i64 %3173, 5
  %3175 = load i64, i64* %PC.i226
  %3176 = add i64 %3175, 5
  store i64 %3176, i64* %PC.i226
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3178 = load i64, i64* %3177, align 8
  %3179 = add i64 %3178, -8
  %3180 = inttoptr i64 %3179 to i64*
  store i64 %3174, i64* %3180
  store i64 %3179, i64* %3177, align 8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3172, i64* %3181, align 8
  store %struct.Memory* %loadMem1_46c1ac, %struct.Memory** %MEMORY
  %loadMem2_46c1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c1ac = load i64, i64* %3
  %call2_46c1ac = call %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* %0, i64 %loadPC_46c1ac, %struct.Memory* %loadMem2_46c1ac)
  store %struct.Memory* %call2_46c1ac, %struct.Memory** %MEMORY
  %loadMem_46c1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 15
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %RBP.i225
  %3189 = sub i64 %3188, 1704
  %3190 = load i64, i64* %PC.i224
  %3191 = add i64 %3190, 7
  store i64 %3191, i64* %PC.i224
  %3192 = inttoptr i64 %3189 to i32*
  %3193 = load i32, i32* %3192
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3194, align 1
  %3195 = and i32 %3193, 255
  %3196 = call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3199, i8* %3200, align 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3201, align 1
  %3202 = icmp eq i32 %3193, 0
  %3203 = zext i1 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3203, i8* %3204, align 1
  %3205 = lshr i32 %3193, 31
  %3206 = trunc i32 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3206, i8* %3207, align 1
  %3208 = lshr i32 %3193, 31
  %3209 = xor i32 %3205, %3208
  %3210 = add i32 %3209, %3208
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3212, i8* %3213, align 1
  store %struct.Memory* %loadMem_46c1b1, %struct.Memory** %MEMORY
  %loadMem_46c1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 1
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %3219 to i32*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 15
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %RBP.i223
  %3224 = sub i64 %3223, 1732
  %3225 = load i32, i32* %EAX.i222
  %3226 = zext i32 %3225 to i64
  %3227 = load i64, i64* %PC.i221
  %3228 = add i64 %3227, 6
  store i64 %3228, i64* %PC.i221
  %3229 = inttoptr i64 %3224 to i32*
  store i32 %3225, i32* %3229
  store %struct.Memory* %loadMem_46c1b8, %struct.Memory** %MEMORY
  %loadMem_46c1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %PC.i220
  %3234 = add i64 %3233, 19
  %3235 = load i64, i64* %PC.i220
  %3236 = add i64 %3235, 6
  %3237 = load i64, i64* %PC.i220
  %3238 = add i64 %3237, 6
  store i64 %3238, i64* %PC.i220
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3240 = load i8, i8* %3239, align 1
  store i8 %3240, i8* %BRANCH_TAKEN, align 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3242 = icmp ne i8 %3240, 0
  %3243 = select i1 %3242, i64 %3234, i64 %3236
  store i64 %3243, i64* %3241, align 8
  store %struct.Memory* %loadMem_46c1be, %struct.Memory** %MEMORY
  %loadBr_46c1be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c1be = icmp eq i8 %loadBr_46c1be, 1
  br i1 %cmpBr_46c1be, label %block_.L_46c1d1, label %block_46c1c4

block_46c1c4:                                     ; preds = %block_46c185
  %loadMem_46c1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 15
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %RBP.i219
  %3251 = sub i64 %3250, 1708
  %3252 = load i64, i64* %PC.i218
  %3253 = add i64 %3252, 7
  store i64 %3253, i64* %PC.i218
  %3254 = inttoptr i64 %3251 to i32*
  %3255 = load i32, i32* %3254
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3256, align 1
  %3257 = and i32 %3255, 255
  %3258 = call i32 @llvm.ctpop.i32(i32 %3257)
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = xor i8 %3260, 1
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3261, i8* %3262, align 1
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3263, align 1
  %3264 = icmp eq i32 %3255, 0
  %3265 = zext i1 %3264 to i8
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3265, i8* %3266, align 1
  %3267 = lshr i32 %3255, 31
  %3268 = trunc i32 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3268, i8* %3269, align 1
  %3270 = lshr i32 %3255, 31
  %3271 = xor i32 %3267, %3270
  %3272 = add i32 %3271, %3270
  %3273 = icmp eq i32 %3272, 2
  %3274 = zext i1 %3273 to i8
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3274, i8* %3275, align 1
  store %struct.Memory* %loadMem_46c1c4, %struct.Memory** %MEMORY
  %loadMem_46c1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %PC.i217
  %3280 = add i64 %3279, 11
  %3281 = load i64, i64* %PC.i217
  %3282 = add i64 %3281, 6
  %3283 = load i64, i64* %PC.i217
  %3284 = add i64 %3283, 6
  store i64 %3284, i64* %PC.i217
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3286 = load i8, i8* %3285, align 1
  %3287 = icmp eq i8 %3286, 0
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %BRANCH_TAKEN, align 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3290 = select i1 %3287, i64 %3280, i64 %3282
  store i64 %3290, i64* %3289, align 8
  store %struct.Memory* %loadMem_46c1cb, %struct.Memory** %MEMORY
  %loadBr_46c1cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c1cb = icmp eq i8 %loadBr_46c1cb, 1
  br i1 %cmpBr_46c1cb, label %block_.L_46c1d6, label %block_.L_46c1d1

block_.L_46c1d1:                                  ; preds = %block_46c1c4, %block_46c185
  %loadMem_46c1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %PC.i216
  %3295 = add i64 %3294, 397
  %3296 = load i64, i64* %PC.i216
  %3297 = add i64 %3296, 5
  store i64 %3297, i64* %PC.i216
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3295, i64* %3298, align 8
  store %struct.Memory* %loadMem_46c1d1, %struct.Memory** %MEMORY
  br label %block_.L_46c35e

block_.L_46c1d6:                                  ; preds = %block_46c1c4
  %loadMem_46c1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 15
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RBP.i215
  %3306 = sub i64 %3305, 1676
  %3307 = load i64, i64* %PC.i214
  %3308 = add i64 %3307, 10
  store i64 %3308, i64* %PC.i214
  %3309 = inttoptr i64 %3306 to i32*
  store i32 -1, i32* %3309
  store %struct.Memory* %loadMem_46c1d6, %struct.Memory** %MEMORY
  br label %block_.L_46c1e0

block_.L_46c1e0:                                  ; preds = %block_.L_46c345, %block_.L_46c1d6
  %loadMem_46c1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 1
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %3315 to i64*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 15
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %RBP.i213
  %3320 = sub i64 %3319, 1676
  %3321 = load i64, i64* %PC.i211
  %3322 = add i64 %3321, 6
  store i64 %3322, i64* %PC.i211
  %3323 = inttoptr i64 %3320 to i32*
  %3324 = load i32, i32* %3323
  %3325 = zext i32 %3324 to i64
  store i64 %3325, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_46c1e0, %struct.Memory** %MEMORY
  %loadMem_46c1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 1
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %3331 to i32*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 15
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3334 to i64*
  %3335 = load i32, i32* %EAX.i209
  %3336 = zext i32 %3335 to i64
  %3337 = load i64, i64* %RBP.i210
  %3338 = sub i64 %3337, 12
  %3339 = load i64, i64* %PC.i208
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC.i208
  %3341 = inttoptr i64 %3338 to i32*
  %3342 = load i32, i32* %3341
  %3343 = sub i32 %3335, %3342
  %3344 = icmp ult i32 %3335, %3342
  %3345 = zext i1 %3344 to i8
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3345, i8* %3346, align 1
  %3347 = and i32 %3343, 255
  %3348 = call i32 @llvm.ctpop.i32(i32 %3347)
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = xor i8 %3350, 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3351, i8* %3352, align 1
  %3353 = xor i32 %3342, %3335
  %3354 = xor i32 %3353, %3343
  %3355 = lshr i32 %3354, 4
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3357, i8* %3358, align 1
  %3359 = icmp eq i32 %3343, 0
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3360, i8* %3361, align 1
  %3362 = lshr i32 %3343, 31
  %3363 = trunc i32 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3363, i8* %3364, align 1
  %3365 = lshr i32 %3335, 31
  %3366 = lshr i32 %3342, 31
  %3367 = xor i32 %3366, %3365
  %3368 = xor i32 %3362, %3365
  %3369 = add i32 %3368, %3367
  %3370 = icmp eq i32 %3369, 2
  %3371 = zext i1 %3370 to i8
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3371, i8* %3372, align 1
  store %struct.Memory* %loadMem_46c1e6, %struct.Memory** %MEMORY
  %loadMem_46c1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %PC.i207
  %3377 = add i64 %3376, 368
  %3378 = load i64, i64* %PC.i207
  %3379 = add i64 %3378, 6
  %3380 = load i64, i64* %PC.i207
  %3381 = add i64 %3380, 6
  store i64 %3381, i64* %PC.i207
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3383 = load i8, i8* %3382, align 1
  %3384 = icmp ne i8 %3383, 0
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3386 = load i8, i8* %3385, align 1
  %3387 = icmp ne i8 %3386, 0
  %3388 = xor i1 %3384, %3387
  %3389 = xor i1 %3388, true
  %3390 = zext i1 %3389 to i8
  store i8 %3390, i8* %BRANCH_TAKEN, align 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3392 = select i1 %3388, i64 %3379, i64 %3377
  store i64 %3392, i64* %3391, align 8
  store %struct.Memory* %loadMem_46c1e9, %struct.Memory** %MEMORY
  %loadBr_46c1e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c1e9 = icmp eq i8 %loadBr_46c1e9, 1
  br i1 %cmpBr_46c1e9, label %block_.L_46c359, label %block_46c1ef

block_46c1ef:                                     ; preds = %block_.L_46c1e0
  %loadMem_46c1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %PC.i206
  %3397 = add i64 %3396, 8
  store i64 %3397, i64* %PC.i206
  %3398 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3399, align 1
  %3400 = and i32 %3398, 255
  %3401 = call i32 @llvm.ctpop.i32(i32 %3400)
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  %3404 = xor i8 %3403, 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3404, i8* %3405, align 1
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3406, align 1
  %3407 = icmp eq i32 %3398, 0
  %3408 = zext i1 %3407 to i8
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3408, i8* %3409, align 1
  %3410 = lshr i32 %3398, 31
  %3411 = trunc i32 %3410 to i8
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3411, i8* %3412, align 1
  %3413 = lshr i32 %3398, 31
  %3414 = xor i32 %3410, %3413
  %3415 = add i32 %3414, %3413
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3417, i8* %3418, align 1
  store %struct.Memory* %loadMem_46c1ef, %struct.Memory** %MEMORY
  %loadMem_46c1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %PC.i205
  %3423 = add i64 %3422, 145
  %3424 = load i64, i64* %PC.i205
  %3425 = add i64 %3424, 6
  %3426 = load i64, i64* %PC.i205
  %3427 = add i64 %3426, 6
  store i64 %3427, i64* %PC.i205
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3429 = load i8, i8* %3428, align 1
  %3430 = icmp eq i8 %3429, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %BRANCH_TAKEN, align 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3433 = select i1 %3430, i64 %3423, i64 %3425
  store i64 %3433, i64* %3432, align 8
  store %struct.Memory* %loadMem_46c1f7, %struct.Memory** %MEMORY
  %loadBr_46c1f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c1f7 = icmp eq i8 %loadBr_46c1f7, 1
  br i1 %cmpBr_46c1f7, label %block_.L_46c288, label %block_46c1fd

block_46c1fd:                                     ; preds = %block_46c1ef
  %loadMem_46c1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 15
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RBP.i204
  %3441 = sub i64 %3440, 1676
  %3442 = load i64, i64* %PC.i203
  %3443 = add i64 %3442, 7
  store i64 %3443, i64* %PC.i203
  %3444 = inttoptr i64 %3441 to i32*
  %3445 = load i32, i32* %3444
  %3446 = sub i32 %3445, -1
  %3447 = icmp ult i32 %3445, -1
  %3448 = zext i1 %3447 to i8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3448, i8* %3449, align 1
  %3450 = and i32 %3446, 255
  %3451 = call i32 @llvm.ctpop.i32(i32 %3450)
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  %3454 = xor i8 %3453, 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3454, i8* %3455, align 1
  %3456 = xor i32 %3445, -1
  %3457 = xor i32 %3456, %3446
  %3458 = lshr i32 %3457, 4
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3460, i8* %3461, align 1
  %3462 = icmp eq i32 %3446, 0
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3463, i8* %3464, align 1
  %3465 = lshr i32 %3446, 31
  %3466 = trunc i32 %3465 to i8
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3466, i8* %3467, align 1
  %3468 = lshr i32 %3445, 31
  %3469 = xor i32 %3468, 1
  %3470 = xor i32 %3465, %3468
  %3471 = add i32 %3470, %3469
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3473, i8* %3474, align 1
  store %struct.Memory* %loadMem_46c1fd, %struct.Memory** %MEMORY
  %loadMem_46c204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %PC.i202
  %3479 = add i64 %3478, 11
  %3480 = load i64, i64* %PC.i202
  %3481 = add i64 %3480, 6
  %3482 = load i64, i64* %PC.i202
  %3483 = add i64 %3482, 6
  store i64 %3483, i64* %PC.i202
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3485 = load i8, i8* %3484, align 1
  %3486 = icmp eq i8 %3485, 0
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %BRANCH_TAKEN, align 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3489 = select i1 %3486, i64 %3479, i64 %3481
  store i64 %3489, i64* %3488, align 8
  store %struct.Memory* %loadMem_46c204, %struct.Memory** %MEMORY
  %loadBr_46c204 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c204 = icmp eq i8 %loadBr_46c204, 1
  br i1 %cmpBr_46c204, label %block_.L_46c20f, label %block_46c20a

block_46c20a:                                     ; preds = %block_46c1fd
  %loadMem_46c20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3492 to i64*
  %3493 = load i64, i64* %PC.i201
  %3494 = add i64 %3493, 315
  %3495 = load i64, i64* %PC.i201
  %3496 = add i64 %3495, 5
  store i64 %3496, i64* %PC.i201
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3494, i64* %3497, align 8
  store %struct.Memory* %loadMem_46c20a, %struct.Memory** %MEMORY
  br label %block_.L_46c345

block_.L_46c20f:                                  ; preds = %block_46c1fd
  %loadMem_46c20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 1
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %PC.i199
  %3505 = add i64 %3504, 10
  store i64 %3505, i64* %PC.i199
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_46c20f, %struct.Memory** %MEMORY
  %loadMem_46c219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 5
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 15
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %RBP.i198
  %3516 = sub i64 %3515, 1668
  %3517 = load i64, i64* %PC.i196
  %3518 = add i64 %3517, 7
  store i64 %3518, i64* %PC.i196
  %3519 = inttoptr i64 %3516 to i32*
  %3520 = load i32, i32* %3519
  %3521 = sext i32 %3520 to i64
  store i64 %3521, i64* %RCX.i197, align 8
  store %struct.Memory* %loadMem_46c219, %struct.Memory** %MEMORY
  %loadMem_46c220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 5
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 15
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %RBP.i195
  %3532 = load i64, i64* %RCX.i194
  %3533 = mul i64 %3532, 4
  %3534 = add i64 %3531, -1664
  %3535 = add i64 %3534, %3533
  %3536 = load i64, i64* %PC.i193
  %3537 = add i64 %3536, 8
  store i64 %3537, i64* %PC.i193
  %3538 = inttoptr i64 %3535 to i32*
  %3539 = load i32, i32* %3538
  %3540 = sext i32 %3539 to i64
  store i64 %3540, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_46c220, %struct.Memory** %MEMORY
  %loadMem_46c228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 5
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %3546 to i64*
  %3547 = load i64, i64* %RCX.i192
  %3548 = load i64, i64* %PC.i191
  %3549 = add i64 %3548, 7
  store i64 %3549, i64* %PC.i191
  %3550 = sext i64 %3547 to i128
  %3551 = and i128 %3550, -18446744073709551616
  %3552 = zext i64 %3547 to i128
  %3553 = or i128 %3551, %3552
  %3554 = mul i128 380, %3553
  %3555 = trunc i128 %3554 to i64
  store i64 %3555, i64* %RCX.i192, align 8
  %3556 = sext i64 %3555 to i128
  %3557 = icmp ne i128 %3556, %3554
  %3558 = zext i1 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3558, i8* %3559, align 1
  %3560 = trunc i128 %3554 to i32
  %3561 = and i32 %3560, 255
  %3562 = call i32 @llvm.ctpop.i32(i32 %3561)
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = xor i8 %3564, 1
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3565, i8* %3566, align 1
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3567, align 1
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3568, align 1
  %3569 = lshr i64 %3555, 63
  %3570 = trunc i64 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3570, i8* %3571, align 1
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3558, i8* %3572, align 1
  store %struct.Memory* %loadMem_46c228, %struct.Memory** %MEMORY
  %loadMem_46c22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 1
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 5
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %RAX.i189
  %3583 = load i64, i64* %RCX.i190
  %3584 = load i64, i64* %PC.i188
  %3585 = add i64 %3584, 3
  store i64 %3585, i64* %PC.i188
  %3586 = add i64 %3583, %3582
  store i64 %3586, i64* %RAX.i189, align 8
  %3587 = icmp ult i64 %3586, %3582
  %3588 = icmp ult i64 %3586, %3583
  %3589 = or i1 %3587, %3588
  %3590 = zext i1 %3589 to i8
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3590, i8* %3591, align 1
  %3592 = trunc i64 %3586 to i32
  %3593 = and i32 %3592, 255
  %3594 = call i32 @llvm.ctpop.i32(i32 %3593)
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  %3597 = xor i8 %3596, 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3597, i8* %3598, align 1
  %3599 = xor i64 %3583, %3582
  %3600 = xor i64 %3599, %3586
  %3601 = lshr i64 %3600, 4
  %3602 = trunc i64 %3601 to i8
  %3603 = and i8 %3602, 1
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3603, i8* %3604, align 1
  %3605 = icmp eq i64 %3586, 0
  %3606 = zext i1 %3605 to i8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3606, i8* %3607, align 1
  %3608 = lshr i64 %3586, 63
  %3609 = trunc i64 %3608 to i8
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3609, i8* %3610, align 1
  %3611 = lshr i64 %3582, 63
  %3612 = lshr i64 %3583, 63
  %3613 = xor i64 %3608, %3611
  %3614 = xor i64 %3608, %3612
  %3615 = add i64 %3613, %3614
  %3616 = icmp eq i64 %3615, 2
  %3617 = zext i1 %3616 to i8
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3617, i8* %3618, align 1
  store %struct.Memory* %loadMem_46c22f, %struct.Memory** %MEMORY
  %loadMem_46c232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 5
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 15
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3627 to i64*
  %3628 = load i64, i64* %RBP.i187
  %3629 = sub i64 %3628, 1676
  %3630 = load i64, i64* %PC.i185
  %3631 = add i64 %3630, 7
  store i64 %3631, i64* %PC.i185
  %3632 = inttoptr i64 %3629 to i32*
  %3633 = load i32, i32* %3632
  %3634 = sext i32 %3633 to i64
  store i64 %3634, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_46c232, %struct.Memory** %MEMORY
  %loadMem_46c239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 1
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 5
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RAX.i183
  %3645 = load i64, i64* %RCX.i184
  %3646 = mul i64 %3645, 4
  %3647 = add i64 %3644, 180
  %3648 = add i64 %3647, %3646
  %3649 = load i64, i64* %PC.i182
  %3650 = add i64 %3649, 8
  store i64 %3650, i64* %PC.i182
  %3651 = inttoptr i64 %3648 to i32*
  %3652 = load i32, i32* %3651
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3653, align 1
  %3654 = and i32 %3652, 255
  %3655 = call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3658, i8* %3659, align 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3660, align 1
  %3661 = icmp eq i32 %3652, 0
  %3662 = zext i1 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i32 %3652, 31
  %3665 = trunc i32 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3665, i8* %3666, align 1
  %3667 = lshr i32 %3652, 31
  %3668 = xor i32 %3664, %3667
  %3669 = add i32 %3668, %3667
  %3670 = icmp eq i32 %3669, 2
  %3671 = zext i1 %3670 to i8
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3671, i8* %3672, align 1
  store %struct.Memory* %loadMem_46c239, %struct.Memory** %MEMORY
  %loadMem_46c241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 33
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %PC.i181
  %3677 = add i64 %3676, 11
  %3678 = load i64, i64* %PC.i181
  %3679 = add i64 %3678, 6
  %3680 = load i64, i64* %PC.i181
  %3681 = add i64 %3680, 6
  store i64 %3681, i64* %PC.i181
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3683 = load i8, i8* %3682, align 1
  %3684 = icmp eq i8 %3683, 0
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %BRANCH_TAKEN, align 1
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3687 = select i1 %3684, i64 %3677, i64 %3679
  store i64 %3687, i64* %3686, align 8
  store %struct.Memory* %loadMem_46c241, %struct.Memory** %MEMORY
  %loadBr_46c241 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c241 = icmp eq i8 %loadBr_46c241, 1
  br i1 %cmpBr_46c241, label %block_.L_46c24c, label %block_46c247

block_46c247:                                     ; preds = %block_.L_46c20f
  %loadMem_46c247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %PC.i180
  %3692 = add i64 %3691, 274
  %3693 = load i64, i64* %PC.i180
  %3694 = add i64 %3693, 5
  store i64 %3694, i64* %PC.i180
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3692, i64* %3695, align 8
  store %struct.Memory* %loadMem_46c247, %struct.Memory** %MEMORY
  br label %block_.L_46c359

block_.L_46c24c:                                  ; preds = %block_.L_46c20f
  %loadMem_46c24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 1
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %PC.i178
  %3703 = add i64 %3702, 10
  store i64 %3703, i64* %PC.i178
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_46c24c, %struct.Memory** %MEMORY
  %loadMem_46c256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 33
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 5
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 15
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %RBP.i177
  %3714 = sub i64 %3713, 1668
  %3715 = load i64, i64* %PC.i175
  %3716 = add i64 %3715, 7
  store i64 %3716, i64* %PC.i175
  %3717 = inttoptr i64 %3714 to i32*
  %3718 = load i32, i32* %3717
  %3719 = sext i32 %3718 to i64
  store i64 %3719, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_46c256, %struct.Memory** %MEMORY
  %loadMem_46c25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3722 to i64*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 5
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 15
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3728 to i64*
  %3729 = load i64, i64* %RBP.i174
  %3730 = load i64, i64* %RCX.i173
  %3731 = mul i64 %3730, 4
  %3732 = add i64 %3729, -1664
  %3733 = add i64 %3732, %3731
  %3734 = load i64, i64* %PC.i172
  %3735 = add i64 %3734, 8
  store i64 %3735, i64* %PC.i172
  %3736 = inttoptr i64 %3733 to i32*
  %3737 = load i32, i32* %3736
  %3738 = sext i32 %3737 to i64
  store i64 %3738, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_46c25d, %struct.Memory** %MEMORY
  %loadMem_46c265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 5
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %3744 to i64*
  %3745 = load i64, i64* %RCX.i171
  %3746 = load i64, i64* %PC.i170
  %3747 = add i64 %3746, 7
  store i64 %3747, i64* %PC.i170
  %3748 = sext i64 %3745 to i128
  %3749 = and i128 %3748, -18446744073709551616
  %3750 = zext i64 %3745 to i128
  %3751 = or i128 %3749, %3750
  %3752 = mul i128 380, %3751
  %3753 = trunc i128 %3752 to i64
  store i64 %3753, i64* %RCX.i171, align 8
  %3754 = sext i64 %3753 to i128
  %3755 = icmp ne i128 %3754, %3752
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3756, i8* %3757, align 1
  %3758 = trunc i128 %3752 to i32
  %3759 = and i32 %3758, 255
  %3760 = call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3763, i8* %3764, align 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3765, align 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3766, align 1
  %3767 = lshr i64 %3753, 63
  %3768 = trunc i64 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3768, i8* %3769, align 1
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3756, i8* %3770, align 1
  store %struct.Memory* %loadMem_46c265, %struct.Memory** %MEMORY
  %loadMem_46c26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 1
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 5
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RAX.i168
  %3781 = load i64, i64* %RCX.i169
  %3782 = load i64, i64* %PC.i167
  %3783 = add i64 %3782, 3
  store i64 %3783, i64* %PC.i167
  %3784 = add i64 %3781, %3780
  store i64 %3784, i64* %RAX.i168, align 8
  %3785 = icmp ult i64 %3784, %3780
  %3786 = icmp ult i64 %3784, %3781
  %3787 = or i1 %3785, %3786
  %3788 = zext i1 %3787 to i8
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3788, i8* %3789, align 1
  %3790 = trunc i64 %3784 to i32
  %3791 = and i32 %3790, 255
  %3792 = call i32 @llvm.ctpop.i32(i32 %3791)
  %3793 = trunc i32 %3792 to i8
  %3794 = and i8 %3793, 1
  %3795 = xor i8 %3794, 1
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3795, i8* %3796, align 1
  %3797 = xor i64 %3781, %3780
  %3798 = xor i64 %3797, %3784
  %3799 = lshr i64 %3798, 4
  %3800 = trunc i64 %3799 to i8
  %3801 = and i8 %3800, 1
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3801, i8* %3802, align 1
  %3803 = icmp eq i64 %3784, 0
  %3804 = zext i1 %3803 to i8
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3804, i8* %3805, align 1
  %3806 = lshr i64 %3784, 63
  %3807 = trunc i64 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3807, i8* %3808, align 1
  %3809 = lshr i64 %3780, 63
  %3810 = lshr i64 %3781, 63
  %3811 = xor i64 %3806, %3809
  %3812 = xor i64 %3806, %3810
  %3813 = add i64 %3811, %3812
  %3814 = icmp eq i64 %3813, 2
  %3815 = zext i1 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3815, i8* %3816, align 1
  store %struct.Memory* %loadMem_46c26c, %struct.Memory** %MEMORY
  %loadMem_46c26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 5
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 15
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RBP.i166
  %3827 = sub i64 %3826, 1676
  %3828 = load i64, i64* %PC.i164
  %3829 = add i64 %3828, 7
  store i64 %3829, i64* %PC.i164
  %3830 = inttoptr i64 %3827 to i32*
  %3831 = load i32, i32* %3830
  %3832 = sext i32 %3831 to i64
  store i64 %3832, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_46c26f, %struct.Memory** %MEMORY
  %loadMem_46c276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 1
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 5
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 7
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RAX.i161
  %3846 = load i64, i64* %RCX.i162
  %3847 = mul i64 %3846, 4
  %3848 = add i64 %3845, 140
  %3849 = add i64 %3848, %3847
  %3850 = load i64, i64* %PC.i160
  %3851 = add i64 %3850, 7
  store i64 %3851, i64* %PC.i160
  %3852 = inttoptr i64 %3849 to i32*
  %3853 = load i32, i32* %3852
  %3854 = zext i32 %3853 to i64
  store i64 %3854, i64* %RDX.i163, align 8
  store %struct.Memory* %loadMem_46c276, %struct.Memory** %MEMORY
  %loadMem_46c27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 7
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3860 to i32*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 15
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RBP.i159
  %3865 = sub i64 %3864, 1696
  %3866 = load i32, i32* %EDX.i
  %3867 = zext i32 %3866 to i64
  %3868 = load i64, i64* %PC.i158
  %3869 = add i64 %3868, 6
  store i64 %3869, i64* %PC.i158
  %3870 = inttoptr i64 %3865 to i32*
  store i32 %3866, i32* %3870
  store %struct.Memory* %loadMem_46c27d, %struct.Memory** %MEMORY
  %loadMem_46c283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 33
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %PC.i157
  %3875 = add i64 %3874, 45
  %3876 = load i64, i64* %PC.i157
  %3877 = add i64 %3876, 5
  store i64 %3877, i64* %PC.i157
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3875, i64* %3878, align 8
  store %struct.Memory* %loadMem_46c283, %struct.Memory** %MEMORY
  br label %block_.L_46c2b0

block_.L_46c288:                                  ; preds = %block_46c1ef
  %loadMem_46c288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 15
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %RBP.i156
  %3886 = sub i64 %3885, 1676
  %3887 = load i64, i64* %PC.i155
  %3888 = add i64 %3887, 7
  store i64 %3888, i64* %PC.i155
  %3889 = inttoptr i64 %3886 to i32*
  %3890 = load i32, i32* %3889
  %3891 = sub i32 %3890, -1
  %3892 = icmp ult i32 %3890, -1
  %3893 = zext i1 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3893, i8* %3894, align 1
  %3895 = and i32 %3891, 255
  %3896 = call i32 @llvm.ctpop.i32(i32 %3895)
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3899, i8* %3900, align 1
  %3901 = xor i32 %3890, -1
  %3902 = xor i32 %3901, %3891
  %3903 = lshr i32 %3902, 4
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3905, i8* %3906, align 1
  %3907 = icmp eq i32 %3891, 0
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3908, i8* %3909, align 1
  %3910 = lshr i32 %3891, 31
  %3911 = trunc i32 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3911, i8* %3912, align 1
  %3913 = lshr i32 %3890, 31
  %3914 = xor i32 %3913, 1
  %3915 = xor i32 %3910, %3913
  %3916 = add i32 %3915, %3914
  %3917 = icmp eq i32 %3916, 2
  %3918 = zext i1 %3917 to i8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3918, i8* %3919, align 1
  store %struct.Memory* %loadMem_46c288, %struct.Memory** %MEMORY
  %loadMem_46c28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3922 to i64*
  %3923 = load i64, i64* %PC.i154
  %3924 = add i64 %3923, 23
  %3925 = load i64, i64* %PC.i154
  %3926 = add i64 %3925, 6
  %3927 = load i64, i64* %PC.i154
  %3928 = add i64 %3927, 6
  store i64 %3928, i64* %PC.i154
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3930 = load i8, i8* %3929, align 1
  %3931 = icmp eq i8 %3930, 0
  %3932 = zext i1 %3931 to i8
  store i8 %3932, i8* %BRANCH_TAKEN, align 1
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3934 = select i1 %3931, i64 %3924, i64 %3926
  store i64 %3934, i64* %3933, align 8
  store %struct.Memory* %loadMem_46c28f, %struct.Memory** %MEMORY
  %loadBr_46c28f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c28f = icmp eq i8 %loadBr_46c28f, 1
  br i1 %cmpBr_46c28f, label %block_.L_46c2a6, label %block_46c295

block_46c295:                                     ; preds = %block_.L_46c288
  %loadMem_46c295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i153
  %3945 = sub i64 %3944, 1700
  %3946 = load i64, i64* %PC.i151
  %3947 = add i64 %3946, 6
  store i64 %3947, i64* %PC.i151
  %3948 = inttoptr i64 %3945 to i32*
  %3949 = load i32, i32* %3948
  %3950 = zext i32 %3949 to i64
  store i64 %3950, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_46c295, %struct.Memory** %MEMORY
  %loadMem_46c29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 1
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %3956 to i32*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 15
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3959 to i64*
  %3960 = load i64, i64* %RBP.i150
  %3961 = sub i64 %3960, 1696
  %3962 = load i32, i32* %EAX.i149
  %3963 = zext i32 %3962 to i64
  %3964 = load i64, i64* %PC.i148
  %3965 = add i64 %3964, 6
  store i64 %3965, i64* %PC.i148
  %3966 = inttoptr i64 %3961 to i32*
  store i32 %3962, i32* %3966
  store %struct.Memory* %loadMem_46c29b, %struct.Memory** %MEMORY
  %loadMem_46c2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3969 to i64*
  %3970 = load i64, i64* %PC.i147
  %3971 = add i64 %3970, 10
  %3972 = load i64, i64* %PC.i147
  %3973 = add i64 %3972, 5
  store i64 %3973, i64* %PC.i147
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3971, i64* %3974, align 8
  store %struct.Memory* %loadMem_46c2a1, %struct.Memory** %MEMORY
  br label %block_.L_46c2ab

block_.L_46c2a6:                                  ; preds = %block_.L_46c288
  %loadMem_46c2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 33
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %PC.i146
  %3979 = add i64 %3978, 179
  %3980 = load i64, i64* %PC.i146
  %3981 = add i64 %3980, 5
  store i64 %3981, i64* %PC.i146
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3979, i64* %3982, align 8
  store %struct.Memory* %loadMem_46c2a6, %struct.Memory** %MEMORY
  br label %block_.L_46c359

block_.L_46c2ab:                                  ; preds = %block_46c295
  %loadMem_46c2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %PC.i145
  %3987 = add i64 %3986, 5
  %3988 = load i64, i64* %PC.i145
  %3989 = add i64 %3988, 5
  store i64 %3989, i64* %PC.i145
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3987, i64* %3990, align 8
  store %struct.Memory* %loadMem_46c2ab, %struct.Memory** %MEMORY
  br label %block_.L_46c2b0

block_.L_46c2b0:                                  ; preds = %block_.L_46c2ab, %block_.L_46c24c
  %loadMem_46c2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 7
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %PC.i143
  %3998 = add i64 %3997, 10
  store i64 %3998, i64* %PC.i143
  store i64 ptrtoint (%G__0x58016c_type* @G__0x58016c to i64), i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_46c2b0, %struct.Memory** %MEMORY
  %loadMem_46c2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 1
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %4004 to i32*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 1
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %4007 to i64*
  %4008 = load i64, i64* %RAX.i142
  %4009 = load i32, i32* %EAX.i141
  %4010 = zext i32 %4009 to i64
  %4011 = load i64, i64* %PC.i140
  %4012 = add i64 %4011, 2
  store i64 %4012, i64* %PC.i140
  %4013 = xor i64 %4010, %4008
  %4014 = trunc i64 %4013 to i32
  %4015 = and i64 %4013, 4294967295
  store i64 %4015, i64* %RAX.i142, align 8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4016, align 1
  %4017 = and i32 %4014, 255
  %4018 = call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4021, i8* %4022, align 1
  %4023 = icmp eq i32 %4014, 0
  %4024 = zext i1 %4023 to i8
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4024, i8* %4025, align 1
  %4026 = lshr i32 %4014, 31
  %4027 = trunc i32 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4027, i8* %4028, align 1
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4029, align 1
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4030, align 1
  store %struct.Memory* %loadMem_46c2ba, %struct.Memory** %MEMORY
  %loadMem_46c2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 33
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 11
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %RDI.i138 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 15
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RBP.i139
  %4041 = sub i64 %4040, 1696
  %4042 = load i64, i64* %PC.i137
  %4043 = add i64 %4042, 6
  store i64 %4043, i64* %PC.i137
  %4044 = inttoptr i64 %4041 to i32*
  %4045 = load i32, i32* %4044
  %4046 = zext i32 %4045 to i64
  store i64 %4046, i64* %RDI.i138, align 8
  store %struct.Memory* %loadMem_46c2bc, %struct.Memory** %MEMORY
  %loadMem_46c2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 33
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 9
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 15
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %4055 to i64*
  %4056 = load i64, i64* %RBP.i136
  %4057 = sub i64 %4056, 36
  %4058 = load i64, i64* %PC.i134
  %4059 = add i64 %4058, 3
  store i64 %4059, i64* %PC.i134
  %4060 = inttoptr i64 %4057 to i32*
  %4061 = load i32, i32* %4060
  %4062 = zext i32 %4061 to i64
  store i64 %4062, i64* %RSI.i135, align 8
  store %struct.Memory* %loadMem_46c2c2, %struct.Memory** %MEMORY
  %loadMem_46c2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 5
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 15
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RBP.i133
  %4073 = sub i64 %4072, 8
  %4074 = load i64, i64* %PC.i131
  %4075 = add i64 %4074, 3
  store i64 %4075, i64* %PC.i131
  %4076 = inttoptr i64 %4073 to i32*
  %4077 = load i32, i32* %4076
  %4078 = zext i32 %4077 to i64
  store i64 %4078, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_46c2c5, %struct.Memory** %MEMORY
  %loadMem_46c2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 1
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %4084 to i32*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 17
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4087 to i32*
  %4088 = bitcast i32* %R8D.i to i64*
  %4089 = load i32, i32* %EAX.i130
  %4090 = zext i32 %4089 to i64
  %4091 = load i64, i64* %PC.i129
  %4092 = add i64 %4091, 3
  store i64 %4092, i64* %PC.i129
  %4093 = and i64 %4090, 4294967295
  store i64 %4093, i64* %4088, align 8
  store %struct.Memory* %loadMem_46c2c8, %struct.Memory** %MEMORY
  %loadMem_46c2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 1
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %4099 to i32*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 19
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %4102 to i32*
  %4103 = bitcast i32* %R9D.i to i64*
  %4104 = load i32, i32* %EAX.i128
  %4105 = zext i32 %4104 to i64
  %4106 = load i64, i64* %PC.i127
  %4107 = add i64 %4106, 3
  store i64 %4107, i64* %PC.i127
  %4108 = and i64 %4105, 4294967295
  store i64 %4108, i64* %4103, align 8
  store %struct.Memory* %loadMem_46c2cb, %struct.Memory** %MEMORY
  %loadMem1_46c2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %PC.i126
  %4113 = add i64 %4112, -406686
  %4114 = load i64, i64* %PC.i126
  %4115 = add i64 %4114, 5
  %4116 = load i64, i64* %PC.i126
  %4117 = add i64 %4116, 5
  store i64 %4117, i64* %PC.i126
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4119 = load i64, i64* %4118, align 8
  %4120 = add i64 %4119, -8
  %4121 = inttoptr i64 %4120 to i64*
  store i64 %4115, i64* %4121
  store i64 %4120, i64* %4118, align 8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4113, i64* %4122, align 8
  store %struct.Memory* %loadMem1_46c2ce, %struct.Memory** %MEMORY
  %loadMem2_46c2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c2ce = load i64, i64* %3
  %call2_46c2ce = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46c2ce, %struct.Memory* %loadMem2_46c2ce)
  store %struct.Memory* %call2_46c2ce, %struct.Memory** %MEMORY
  %loadMem_46c2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 33
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 1
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %4128 to i32*
  %4129 = load i32, i32* %EAX.i125
  %4130 = zext i32 %4129 to i64
  %4131 = load i64, i64* %PC.i124
  %4132 = add i64 %4131, 3
  store i64 %4132, i64* %PC.i124
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4133, align 1
  %4134 = and i32 %4129, 255
  %4135 = call i32 @llvm.ctpop.i32(i32 %4134)
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = xor i8 %4137, 1
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4138, i8* %4139, align 1
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4140, align 1
  %4141 = icmp eq i32 %4129, 0
  %4142 = zext i1 %4141 to i8
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4142, i8* %4143, align 1
  %4144 = lshr i32 %4129, 31
  %4145 = trunc i32 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4145, i8* %4146, align 1
  %4147 = lshr i32 %4129, 31
  %4148 = xor i32 %4144, %4147
  %4149 = add i32 %4148, %4147
  %4150 = icmp eq i32 %4149, 2
  %4151 = zext i1 %4150 to i8
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4151, i8* %4152, align 1
  store %struct.Memory* %loadMem_46c2d3, %struct.Memory** %MEMORY
  %loadMem_46c2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %PC.i123
  %4157 = add i64 %4156, 106
  %4158 = load i64, i64* %PC.i123
  %4159 = add i64 %4158, 6
  %4160 = load i64, i64* %PC.i123
  %4161 = add i64 %4160, 6
  store i64 %4161, i64* %PC.i123
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4163 = load i8, i8* %4162, align 1
  store i8 %4163, i8* %BRANCH_TAKEN, align 1
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4165 = icmp ne i8 %4163, 0
  %4166 = select i1 %4165, i64 %4157, i64 %4159
  store i64 %4166, i64* %4164, align 8
  store %struct.Memory* %loadMem_46c2d6, %struct.Memory** %MEMORY
  %loadBr_46c2d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c2d6 = icmp eq i8 %loadBr_46c2d6, 1
  br i1 %cmpBr_46c2d6, label %block_.L_46c340, label %block_46c2dc

block_46c2dc:                                     ; preds = %block_.L_46c2b0
  %loadMem_46c2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 33
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 1
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 15
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %RBP.i122
  %4177 = sub i64 %4176, 8
  %4178 = load i64, i64* %PC.i120
  %4179 = add i64 %4178, 4
  store i64 %4179, i64* %PC.i120
  %4180 = inttoptr i64 %4177 to i32*
  %4181 = load i32, i32* %4180
  %4182 = sext i32 %4181 to i64
  store i64 %4182, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_46c2dc, %struct.Memory** %MEMORY
  %loadMem_46c2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 33
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 1
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 5
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %4191 to i64*
  %4192 = load i64, i64* %RAX.i118
  %4193 = add i64 %4192, 12099168
  %4194 = load i64, i64* %PC.i117
  %4195 = add i64 %4194, 8
  store i64 %4195, i64* %PC.i117
  %4196 = inttoptr i64 %4193 to i8*
  %4197 = load i8, i8* %4196
  %4198 = zext i8 %4197 to i64
  store i64 %4198, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_46c2e0, %struct.Memory** %MEMORY
  %loadMem_46c2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 5
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %ECX.i116 = bitcast %union.anon* %4204 to i32*
  %4205 = load i32, i32* %ECX.i116
  %4206 = zext i32 %4205 to i64
  %4207 = load i64, i64* %PC.i115
  %4208 = add i64 %4207, 3
  store i64 %4208, i64* %PC.i115
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4209, align 1
  %4210 = and i32 %4205, 255
  %4211 = call i32 @llvm.ctpop.i32(i32 %4210)
  %4212 = trunc i32 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = xor i8 %4213, 1
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4214, i8* %4215, align 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4216, align 1
  %4217 = icmp eq i32 %4205, 0
  %4218 = zext i1 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4218, i8* %4219, align 1
  %4220 = lshr i32 %4205, 31
  %4221 = trunc i32 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4221, i8* %4222, align 1
  %4223 = lshr i32 %4205, 31
  %4224 = xor i32 %4220, %4223
  %4225 = add i32 %4224, %4223
  %4226 = icmp eq i32 %4225, 2
  %4227 = zext i1 %4226 to i8
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4227, i8* %4228, align 1
  store %struct.Memory* %loadMem_46c2e8, %struct.Memory** %MEMORY
  %loadMem_46c2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 33
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4231 to i64*
  %4232 = load i64, i64* %PC.i114
  %4233 = add i64 %4232, 21
  %4234 = load i64, i64* %PC.i114
  %4235 = add i64 %4234, 6
  %4236 = load i64, i64* %PC.i114
  %4237 = add i64 %4236, 6
  store i64 %4237, i64* %PC.i114
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4239 = load i8, i8* %4238, align 1
  %4240 = icmp eq i8 %4239, 0
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %BRANCH_TAKEN, align 1
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4243 = select i1 %4240, i64 %4233, i64 %4235
  store i64 %4243, i64* %4242, align 8
  store %struct.Memory* %loadMem_46c2eb, %struct.Memory** %MEMORY
  %loadBr_46c2eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c2eb = icmp eq i8 %loadBr_46c2eb, 1
  br i1 %cmpBr_46c2eb, label %block_.L_46c300, label %block_46c2f1

block_46c2f1:                                     ; preds = %block_46c2dc
  %loadMem_46c2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 15
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %RBP.i113
  %4251 = sub i64 %4250, 1704
  %4252 = load i64, i64* %PC.i112
  %4253 = add i64 %4252, 10
  store i64 %4253, i64* %PC.i112
  %4254 = inttoptr i64 %4251 to i32*
  store i32 5, i32* %4254
  store %struct.Memory* %loadMem_46c2f1, %struct.Memory** %MEMORY
  %loadMem_46c2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 33
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4257 to i64*
  %4258 = load i64, i64* %PC.i111
  %4259 = add i64 %4258, 23
  %4260 = load i64, i64* %PC.i111
  %4261 = add i64 %4260, 5
  store i64 %4261, i64* %PC.i111
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4259, i64* %4262, align 8
  store %struct.Memory* %loadMem_46c2fb, %struct.Memory** %MEMORY
  br label %block_.L_46c312

block_.L_46c300:                                  ; preds = %block_46c2dc
  %loadMem_46c300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 1
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %4268 to i32*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 1
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RAX.i110
  %4273 = load i32, i32* %EAX.i109
  %4274 = zext i32 %4273 to i64
  %4275 = load i64, i64* %PC.i108
  %4276 = add i64 %4275, 2
  store i64 %4276, i64* %PC.i108
  %4277 = xor i64 %4274, %4272
  %4278 = trunc i64 %4277 to i32
  %4279 = and i64 %4277, 4294967295
  store i64 %4279, i64* %RAX.i110, align 8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4280, align 1
  %4281 = and i32 %4278, 255
  %4282 = call i32 @llvm.ctpop.i32(i32 %4281)
  %4283 = trunc i32 %4282 to i8
  %4284 = and i8 %4283, 1
  %4285 = xor i8 %4284, 1
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4285, i8* %4286, align 1
  %4287 = icmp eq i32 %4278, 0
  %4288 = zext i1 %4287 to i8
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4288, i8* %4289, align 1
  %4290 = lshr i32 %4278, 31
  %4291 = trunc i32 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4291, i8* %4292, align 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4293, align 1
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4294, align 1
  store %struct.Memory* %loadMem_46c300, %struct.Memory** %MEMORY
  %loadMem_46c302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 1
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %4300 to i32*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 9
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %RSI.i107 = bitcast %union.anon* %4303 to i64*
  %4304 = load i32, i32* %EAX.i106
  %4305 = zext i32 %4304 to i64
  %4306 = load i64, i64* %PC.i105
  %4307 = add i64 %4306, 2
  store i64 %4307, i64* %PC.i105
  %4308 = and i64 %4305, 4294967295
  store i64 %4308, i64* %RSI.i107, align 8
  store %struct.Memory* %loadMem_46c302, %struct.Memory** %MEMORY
  %loadMem_46c304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 11
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RDI.i103 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 15
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %4317 to i64*
  %4318 = load i64, i64* %RBP.i104
  %4319 = sub i64 %4318, 8
  %4320 = load i64, i64* %PC.i102
  %4321 = add i64 %4320, 3
  store i64 %4321, i64* %PC.i102
  %4322 = inttoptr i64 %4319 to i32*
  %4323 = load i32, i32* %4322
  %4324 = zext i32 %4323 to i64
  store i64 %4324, i64* %RDI.i103, align 8
  store %struct.Memory* %loadMem_46c304, %struct.Memory** %MEMORY
  %loadMem1_46c307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4327 to i64*
  %4328 = load i64, i64* %PC.i101
  %4329 = add i64 %4328, -59335
  %4330 = load i64, i64* %PC.i101
  %4331 = add i64 %4330, 5
  %4332 = load i64, i64* %PC.i101
  %4333 = add i64 %4332, 5
  store i64 %4333, i64* %PC.i101
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4335 = load i64, i64* %4334, align 8
  %4336 = add i64 %4335, -8
  %4337 = inttoptr i64 %4336 to i64*
  store i64 %4331, i64* %4337
  store i64 %4336, i64* %4334, align 8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4329, i64* %4338, align 8
  store %struct.Memory* %loadMem1_46c307, %struct.Memory** %MEMORY
  %loadMem2_46c307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c307 = load i64, i64* %3
  %call2_46c307 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46c307, %struct.Memory* %loadMem2_46c307)
  store %struct.Memory* %call2_46c307, %struct.Memory** %MEMORY
  %loadMem_46c30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 1
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %4344 to i32*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 15
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RBP.i100
  %4349 = sub i64 %4348, 1704
  %4350 = load i32, i32* %EAX.i99
  %4351 = zext i32 %4350 to i64
  %4352 = load i64, i64* %PC.i98
  %4353 = add i64 %4352, 6
  store i64 %4353, i64* %PC.i98
  %4354 = inttoptr i64 %4349 to i32*
  store i32 %4350, i32* %4354
  store %struct.Memory* %loadMem_46c30c, %struct.Memory** %MEMORY
  br label %block_.L_46c312

block_.L_46c312:                                  ; preds = %block_.L_46c300, %block_46c2f1
  %loadMem_46c312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RBP.i97
  %4362 = sub i64 %4361, 1704
  %4363 = load i64, i64* %PC.i96
  %4364 = add i64 %4363, 7
  store i64 %4364, i64* %PC.i96
  %4365 = inttoptr i64 %4362 to i32*
  %4366 = load i32, i32* %4365
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4367, align 1
  %4368 = and i32 %4366, 255
  %4369 = call i32 @llvm.ctpop.i32(i32 %4368)
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  %4372 = xor i8 %4371, 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4372, i8* %4373, align 1
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4374, align 1
  %4375 = icmp eq i32 %4366, 0
  %4376 = zext i1 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4376, i8* %4377, align 1
  %4378 = lshr i32 %4366, 31
  %4379 = trunc i32 %4378 to i8
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4379, i8* %4380, align 1
  %4381 = lshr i32 %4366, 31
  %4382 = xor i32 %4378, %4381
  %4383 = add i32 %4382, %4381
  %4384 = icmp eq i32 %4383, 2
  %4385 = zext i1 %4384 to i8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4385, i8* %4386, align 1
  store %struct.Memory* %loadMem_46c312, %struct.Memory** %MEMORY
  %loadMem_46c319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 33
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %PC.i95
  %4391 = add i64 %4390, 34
  %4392 = load i64, i64* %PC.i95
  %4393 = add i64 %4392, 6
  %4394 = load i64, i64* %PC.i95
  %4395 = add i64 %4394, 6
  store i64 %4395, i64* %PC.i95
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4397 = load i8, i8* %4396, align 1
  store i8 %4397, i8* %BRANCH_TAKEN, align 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4399 = icmp ne i8 %4397, 0
  %4400 = select i1 %4399, i64 %4391, i64 %4393
  store i64 %4400, i64* %4398, align 8
  store %struct.Memory* %loadMem_46c319, %struct.Memory** %MEMORY
  %loadBr_46c319 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c319 = icmp eq i8 %loadBr_46c319, 1
  br i1 %cmpBr_46c319, label %block_.L_46c33b, label %block_46c31f

block_46c31f:                                     ; preds = %block_.L_46c312
  %loadMem_46c31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 11
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 15
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %4409 to i64*
  %4410 = load i64, i64* %RBP.i94
  %4411 = sub i64 %4410, 1696
  %4412 = load i64, i64* %PC.i93
  %4413 = add i64 %4412, 6
  store i64 %4413, i64* %PC.i93
  %4414 = inttoptr i64 %4411 to i32*
  %4415 = load i32, i32* %4414
  %4416 = zext i32 %4415 to i64
  store i64 %4416, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_46c31f, %struct.Memory** %MEMORY
  %loadMem_46c325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 33
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 9
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4422 to i64*
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 15
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4425 to i64*
  %4426 = load i64, i64* %RBP.i92
  %4427 = sub i64 %4426, 1704
  %4428 = load i64, i64* %PC.i91
  %4429 = add i64 %4428, 6
  store i64 %4429, i64* %PC.i91
  %4430 = inttoptr i64 %4427 to i32*
  %4431 = load i32, i32* %4430
  %4432 = zext i32 %4431 to i64
  store i64 %4432, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_46c325, %struct.Memory** %MEMORY
  %loadMem_46c32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 7
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 15
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %RBP.i90
  %4443 = sub i64 %4442, 12
  %4444 = load i64, i64* %PC.i88
  %4445 = add i64 %4444, 3
  store i64 %4445, i64* %PC.i88
  %4446 = inttoptr i64 %4443 to i32*
  %4447 = load i32, i32* %4446
  %4448 = zext i32 %4447 to i64
  store i64 %4448, i64* %RDX.i89, align 8
  store %struct.Memory* %loadMem_46c32b, %struct.Memory** %MEMORY
  %loadMem_46c32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 5
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 15
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4457 to i64*
  %4458 = load i64, i64* %RBP.i87
  %4459 = sub i64 %4458, 24
  %4460 = load i64, i64* %PC.i85
  %4461 = add i64 %4460, 4
  store i64 %4461, i64* %PC.i85
  %4462 = inttoptr i64 %4459 to i64*
  %4463 = load i64, i64* %4462
  store i64 %4463, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_46c32e, %struct.Memory** %MEMORY
  %loadMem_46c332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 15
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 17
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RBP.i84
  %4474 = sub i64 %4473, 32
  %4475 = load i64, i64* %PC.i83
  %4476 = add i64 %4475, 4
  store i64 %4476, i64* %PC.i83
  %4477 = inttoptr i64 %4474 to i64*
  %4478 = load i64, i64* %4477
  store i64 %4478, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_46c332, %struct.Memory** %MEMORY
  %loadMem1_46c336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 33
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %PC.i82
  %4483 = add i64 %4482, -215462
  %4484 = load i64, i64* %PC.i82
  %4485 = add i64 %4484, 5
  %4486 = load i64, i64* %PC.i82
  %4487 = add i64 %4486, 5
  store i64 %4487, i64* %PC.i82
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4489 = load i64, i64* %4488, align 8
  %4490 = add i64 %4489, -8
  %4491 = inttoptr i64 %4490 to i64*
  store i64 %4485, i64* %4491
  store i64 %4490, i64* %4488, align 8
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4483, i64* %4492, align 8
  store %struct.Memory* %loadMem1_46c336, %struct.Memory** %MEMORY
  %loadMem2_46c336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c336 = load i64, i64* %3
  %call2_46c336 = call %struct.Memory* @sub_437990.movelist_change_point(%struct.State* %0, i64 %loadPC_46c336, %struct.Memory* %loadMem2_46c336)
  store %struct.Memory* %call2_46c336, %struct.Memory** %MEMORY
  br label %block_.L_46c33b

block_.L_46c33b:                                  ; preds = %block_46c31f, %block_.L_46c312
  %loadMem1_46c33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %PC.i81
  %4497 = add i64 %4496, -386523
  %4498 = load i64, i64* %PC.i81
  %4499 = add i64 %4498, 5
  %4500 = load i64, i64* %PC.i81
  %4501 = add i64 %4500, 5
  store i64 %4501, i64* %PC.i81
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4503 = load i64, i64* %4502, align 8
  %4504 = add i64 %4503, -8
  %4505 = inttoptr i64 %4504 to i64*
  store i64 %4499, i64* %4505
  store i64 %4504, i64* %4502, align 8
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4497, i64* %4506, align 8
  store %struct.Memory* %loadMem1_46c33b, %struct.Memory** %MEMORY
  %loadMem2_46c33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46c33b = load i64, i64* %3
  %call2_46c33b = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46c33b, %struct.Memory* %loadMem2_46c33b)
  store %struct.Memory* %call2_46c33b, %struct.Memory** %MEMORY
  br label %block_.L_46c340

block_.L_46c340:                                  ; preds = %block_.L_46c33b, %block_.L_46c2b0
  %loadMem_46c340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %PC.i80
  %4511 = add i64 %4510, 5
  %4512 = load i64, i64* %PC.i80
  %4513 = add i64 %4512, 5
  store i64 %4513, i64* %PC.i80
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4511, i64* %4514, align 8
  store %struct.Memory* %loadMem_46c340, %struct.Memory** %MEMORY
  br label %block_.L_46c345

block_.L_46c345:                                  ; preds = %block_.L_46c340, %block_46c20a
  %loadMem_46c345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 33
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4517 to i64*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 1
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 15
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4523 to i64*
  %4524 = load i64, i64* %RBP.i79
  %4525 = sub i64 %4524, 1676
  %4526 = load i64, i64* %PC.i77
  %4527 = add i64 %4526, 6
  store i64 %4527, i64* %PC.i77
  %4528 = inttoptr i64 %4525 to i32*
  %4529 = load i32, i32* %4528
  %4530 = zext i32 %4529 to i64
  store i64 %4530, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_46c345, %struct.Memory** %MEMORY
  %loadMem_46c34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 1
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4536 to i64*
  %4537 = load i64, i64* %RAX.i76
  %4538 = load i64, i64* %PC.i75
  %4539 = add i64 %4538, 3
  store i64 %4539, i64* %PC.i75
  %4540 = trunc i64 %4537 to i32
  %4541 = add i32 1, %4540
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RAX.i76, align 8
  %4543 = icmp ult i32 %4541, %4540
  %4544 = icmp ult i32 %4541, 1
  %4545 = or i1 %4543, %4544
  %4546 = zext i1 %4545 to i8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4546, i8* %4547, align 1
  %4548 = and i32 %4541, 255
  %4549 = call i32 @llvm.ctpop.i32(i32 %4548)
  %4550 = trunc i32 %4549 to i8
  %4551 = and i8 %4550, 1
  %4552 = xor i8 %4551, 1
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4552, i8* %4553, align 1
  %4554 = xor i64 1, %4537
  %4555 = trunc i64 %4554 to i32
  %4556 = xor i32 %4555, %4541
  %4557 = lshr i32 %4556, 4
  %4558 = trunc i32 %4557 to i8
  %4559 = and i8 %4558, 1
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4559, i8* %4560, align 1
  %4561 = icmp eq i32 %4541, 0
  %4562 = zext i1 %4561 to i8
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4562, i8* %4563, align 1
  %4564 = lshr i32 %4541, 31
  %4565 = trunc i32 %4564 to i8
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4565, i8* %4566, align 1
  %4567 = lshr i32 %4540, 31
  %4568 = xor i32 %4564, %4567
  %4569 = add i32 %4568, %4564
  %4570 = icmp eq i32 %4569, 2
  %4571 = zext i1 %4570 to i8
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4571, i8* %4572, align 1
  store %struct.Memory* %loadMem_46c34b, %struct.Memory** %MEMORY
  %loadMem_46c34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 33
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4575 to i64*
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 1
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %EAX.i73 = bitcast %union.anon* %4578 to i32*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 15
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %4581 to i64*
  %4582 = load i64, i64* %RBP.i74
  %4583 = sub i64 %4582, 1676
  %4584 = load i32, i32* %EAX.i73
  %4585 = zext i32 %4584 to i64
  %4586 = load i64, i64* %PC.i72
  %4587 = add i64 %4586, 6
  store i64 %4587, i64* %PC.i72
  %4588 = inttoptr i64 %4583 to i32*
  store i32 %4584, i32* %4588
  store %struct.Memory* %loadMem_46c34e, %struct.Memory** %MEMORY
  %loadMem_46c354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %PC.i71
  %4593 = add i64 %4592, -372
  %4594 = load i64, i64* %PC.i71
  %4595 = add i64 %4594, 5
  store i64 %4595, i64* %PC.i71
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4593, i64* %4596, align 8
  store %struct.Memory* %loadMem_46c354, %struct.Memory** %MEMORY
  br label %block_.L_46c1e0

block_.L_46c359:                                  ; preds = %block_.L_46c2a6, %block_46c247, %block_.L_46c1e0
  %loadMem_46c359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 33
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4599 to i64*
  %4600 = load i64, i64* %PC.i70
  %4601 = add i64 %4600, 5
  %4602 = load i64, i64* %PC.i70
  %4603 = add i64 %4602, 5
  store i64 %4603, i64* %PC.i70
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4601, i64* %4604, align 8
  store %struct.Memory* %loadMem_46c359, %struct.Memory** %MEMORY
  br label %block_.L_46c35e

block_.L_46c35e:                                  ; preds = %block_.L_46c359, %block_.L_46c1d1
  %loadMem_46c35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 1
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 15
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RBP.i69
  %4615 = sub i64 %4614, 1668
  %4616 = load i64, i64* %PC.i67
  %4617 = add i64 %4616, 6
  store i64 %4617, i64* %PC.i67
  %4618 = inttoptr i64 %4615 to i32*
  %4619 = load i32, i32* %4618
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_46c35e, %struct.Memory** %MEMORY
  %loadMem_46c364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 1
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %4626 to i64*
  %4627 = load i64, i64* %RAX.i66
  %4628 = load i64, i64* %PC.i65
  %4629 = add i64 %4628, 3
  store i64 %4629, i64* %PC.i65
  %4630 = trunc i64 %4627 to i32
  %4631 = add i32 1, %4630
  %4632 = zext i32 %4631 to i64
  store i64 %4632, i64* %RAX.i66, align 8
  %4633 = icmp ult i32 %4631, %4630
  %4634 = icmp ult i32 %4631, 1
  %4635 = or i1 %4633, %4634
  %4636 = zext i1 %4635 to i8
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4636, i8* %4637, align 1
  %4638 = and i32 %4631, 255
  %4639 = call i32 @llvm.ctpop.i32(i32 %4638)
  %4640 = trunc i32 %4639 to i8
  %4641 = and i8 %4640, 1
  %4642 = xor i8 %4641, 1
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4642, i8* %4643, align 1
  %4644 = xor i64 1, %4627
  %4645 = trunc i64 %4644 to i32
  %4646 = xor i32 %4645, %4631
  %4647 = lshr i32 %4646, 4
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4649, i8* %4650, align 1
  %4651 = icmp eq i32 %4631, 0
  %4652 = zext i1 %4651 to i8
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4652, i8* %4653, align 1
  %4654 = lshr i32 %4631, 31
  %4655 = trunc i32 %4654 to i8
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4655, i8* %4656, align 1
  %4657 = lshr i32 %4630, 31
  %4658 = xor i32 %4654, %4657
  %4659 = add i32 %4658, %4654
  %4660 = icmp eq i32 %4659, 2
  %4661 = zext i1 %4660 to i8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4661, i8* %4662, align 1
  store %struct.Memory* %loadMem_46c364, %struct.Memory** %MEMORY
  %loadMem_46c367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 33
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 1
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %4668 to i32*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 15
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RBP.i64
  %4673 = sub i64 %4672, 1668
  %4674 = load i32, i32* %EAX.i63
  %4675 = zext i32 %4674 to i64
  %4676 = load i64, i64* %PC.i62
  %4677 = add i64 %4676, 6
  store i64 %4677, i64* %PC.i62
  %4678 = inttoptr i64 %4673 to i32*
  store i32 %4674, i32* %4678
  store %struct.Memory* %loadMem_46c367, %struct.Memory** %MEMORY
  %loadMem_46c36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 33
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %PC.i61
  %4683 = add i64 %4682, -506
  %4684 = load i64, i64* %PC.i61
  %4685 = add i64 %4684, 5
  store i64 %4685, i64* %PC.i61
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4683, i64* %4686, align 8
  store %struct.Memory* %loadMem_46c36d, %struct.Memory** %MEMORY
  br label %block_.L_46c173

block_.L_46c372:                                  ; preds = %block_.L_46c173
  %loadMem_46c372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 1
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 15
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %4695 to i64*
  %4696 = load i64, i64* %RBP.i60
  %4697 = sub i64 %4696, 32
  %4698 = load i64, i64* %PC.i58
  %4699 = add i64 %4698, 4
  store i64 %4699, i64* %PC.i58
  %4700 = inttoptr i64 %4697 to i64*
  %4701 = load i64, i64* %4700
  store i64 %4701, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_46c372, %struct.Memory** %MEMORY
  %loadMem_46c376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 5
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 15
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %4710 to i64*
  %4711 = load i64, i64* %RBP.i57
  %4712 = sub i64 %4711, 12
  %4713 = load i64, i64* %PC.i55
  %4714 = add i64 %4713, 3
  store i64 %4714, i64* %PC.i55
  %4715 = inttoptr i64 %4712 to i32*
  %4716 = load i32, i32* %4715
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_46c376, %struct.Memory** %MEMORY
  %loadMem_46c379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 33
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 5
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RCX.i54
  %4725 = load i64, i64* %PC.i53
  %4726 = add i64 %4725, 3
  store i64 %4726, i64* %PC.i53
  %4727 = trunc i64 %4724 to i32
  %4728 = sub i32 %4727, 1
  %4729 = zext i32 %4728 to i64
  store i64 %4729, i64* %RCX.i54, align 8
  %4730 = icmp ult i32 %4727, 1
  %4731 = zext i1 %4730 to i8
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4731, i8* %4732, align 1
  %4733 = and i32 %4728, 255
  %4734 = call i32 @llvm.ctpop.i32(i32 %4733)
  %4735 = trunc i32 %4734 to i8
  %4736 = and i8 %4735, 1
  %4737 = xor i8 %4736, 1
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4737, i8* %4738, align 1
  %4739 = xor i64 1, %4724
  %4740 = trunc i64 %4739 to i32
  %4741 = xor i32 %4740, %4728
  %4742 = lshr i32 %4741, 4
  %4743 = trunc i32 %4742 to i8
  %4744 = and i8 %4743, 1
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4744, i8* %4745, align 1
  %4746 = icmp eq i32 %4728, 0
  %4747 = zext i1 %4746 to i8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4747, i8* %4748, align 1
  %4749 = lshr i32 %4728, 31
  %4750 = trunc i32 %4749 to i8
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4750, i8* %4751, align 1
  %4752 = lshr i32 %4727, 31
  %4753 = xor i32 %4749, %4752
  %4754 = add i32 %4753, %4752
  %4755 = icmp eq i32 %4754, 2
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4756, i8* %4757, align 1
  store %struct.Memory* %loadMem_46c379, %struct.Memory** %MEMORY
  %loadMem_46c37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 5
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4763 to i32*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 7
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RDX.i52 = bitcast %union.anon* %4766 to i64*
  %4767 = load i32, i32* %ECX.i
  %4768 = zext i32 %4767 to i64
  %4769 = load i64, i64* %PC.i51
  %4770 = add i64 %4769, 3
  store i64 %4770, i64* %PC.i51
  %4771 = shl i64 %4768, 32
  %4772 = ashr exact i64 %4771, 32
  store i64 %4772, i64* %RDX.i52, align 8
  store %struct.Memory* %loadMem_46c37c, %struct.Memory** %MEMORY
  %loadMem_46c37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 1
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 7
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RAX.i50
  %4783 = load i64, i64* %RDX.i
  %4784 = mul i64 %4783, 4
  %4785 = add i64 %4784, %4782
  %4786 = load i64, i64* %PC.i49
  %4787 = add i64 %4786, 4
  store i64 %4787, i64* %PC.i49
  %4788 = inttoptr i64 %4785 to i32*
  %4789 = load i32, i32* %4788
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4790, align 1
  %4791 = and i32 %4789, 255
  %4792 = call i32 @llvm.ctpop.i32(i32 %4791)
  %4793 = trunc i32 %4792 to i8
  %4794 = and i8 %4793, 1
  %4795 = xor i8 %4794, 1
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4795, i8* %4796, align 1
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4797, align 1
  %4798 = icmp eq i32 %4789, 0
  %4799 = zext i1 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4799, i8* %4800, align 1
  %4801 = lshr i32 %4789, 31
  %4802 = trunc i32 %4801 to i8
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4802, i8* %4803, align 1
  %4804 = lshr i32 %4789, 31
  %4805 = xor i32 %4801, %4804
  %4806 = add i32 %4805, %4804
  %4807 = icmp eq i32 %4806, 2
  %4808 = zext i1 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4808, i8* %4809, align 1
  store %struct.Memory* %loadMem_46c37f, %struct.Memory** %MEMORY
  %loadMem_46c383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 33
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4812 to i64*
  %4813 = load i64, i64* %PC.i48
  %4814 = add i64 %4813, 17
  %4815 = load i64, i64* %PC.i48
  %4816 = add i64 %4815, 6
  %4817 = load i64, i64* %PC.i48
  %4818 = add i64 %4817, 6
  store i64 %4818, i64* %PC.i48
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4820 = load i8, i8* %4819, align 1
  %4821 = icmp ne i8 %4820, 0
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4823 = load i8, i8* %4822, align 1
  %4824 = icmp ne i8 %4823, 0
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4826 = load i8, i8* %4825, align 1
  %4827 = icmp ne i8 %4826, 0
  %4828 = xor i1 %4824, %4827
  %4829 = or i1 %4821, %4828
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %BRANCH_TAKEN, align 1
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4832 = select i1 %4829, i64 %4814, i64 %4816
  store i64 %4832, i64* %4831, align 8
  store %struct.Memory* %loadMem_46c383, %struct.Memory** %MEMORY
  %loadBr_46c383 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c383 = icmp eq i8 %loadBr_46c383, 1
  br i1 %cmpBr_46c383, label %block_.L_46c394, label %block_46c389

block_46c389:                                     ; preds = %block_.L_46c372
  %loadMem_46c389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4835 to i64*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 1
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4838 to i64*
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 15
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %4841 to i64*
  %4842 = load i64, i64* %RBP.i47
  %4843 = sub i64 %4842, 12
  %4844 = load i64, i64* %PC.i45
  %4845 = add i64 %4844, 3
  store i64 %4845, i64* %PC.i45
  %4846 = inttoptr i64 %4843 to i32*
  %4847 = load i32, i32* %4846
  %4848 = zext i32 %4847 to i64
  store i64 %4848, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_46c389, %struct.Memory** %MEMORY
  %loadMem_46c38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 33
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 1
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %4854 to i32*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 15
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %RBP.i44
  %4859 = sub i64 %4858, 4
  %4860 = load i32, i32* %EAX.i43
  %4861 = zext i32 %4860 to i64
  %4862 = load i64, i64* %PC.i42
  %4863 = add i64 %4862, 3
  store i64 %4863, i64* %PC.i42
  %4864 = inttoptr i64 %4859 to i32*
  store i32 %4860, i32* %4864
  store %struct.Memory* %loadMem_46c38c, %struct.Memory** %MEMORY
  %loadMem_46c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %PC.i41
  %4869 = add i64 %4868, 72
  %4870 = load i64, i64* %PC.i41
  %4871 = add i64 %4870, 5
  store i64 %4871, i64* %PC.i41
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4869, i64* %4872, align 8
  store %struct.Memory* %loadMem_46c38f, %struct.Memory** %MEMORY
  br label %block_.L_46c3d7

block_.L_46c394:                                  ; preds = %block_.L_46c372
  %loadMem_46c394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 15
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4878 to i64*
  %4879 = load i64, i64* %RBP.i40
  %4880 = sub i64 %4879, 40
  %4881 = load i64, i64* %PC.i39
  %4882 = add i64 %4881, 7
  store i64 %4882, i64* %PC.i39
  %4883 = inttoptr i64 %4880 to i32*
  store i32 0, i32* %4883
  store %struct.Memory* %loadMem_46c394, %struct.Memory** %MEMORY
  br label %block_.L_46c39b

block_.L_46c39b:                                  ; preds = %block_.L_46c3c3, %block_.L_46c394
  %loadMem_46c39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 1
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 15
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %RBP.i38
  %4894 = sub i64 %4893, 40
  %4895 = load i64, i64* %PC.i36
  %4896 = add i64 %4895, 3
  store i64 %4896, i64* %PC.i36
  %4897 = inttoptr i64 %4894 to i32*
  %4898 = load i32, i32* %4897
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_46c39b, %struct.Memory** %MEMORY
  %loadMem_46c39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 1
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %4905 to i32*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 15
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4908 to i64*
  %4909 = load i32, i32* %EAX.i34
  %4910 = zext i32 %4909 to i64
  %4911 = load i64, i64* %RBP.i35
  %4912 = sub i64 %4911, 12
  %4913 = load i64, i64* %PC.i33
  %4914 = add i64 %4913, 3
  store i64 %4914, i64* %PC.i33
  %4915 = inttoptr i64 %4912 to i32*
  %4916 = load i32, i32* %4915
  %4917 = sub i32 %4909, %4916
  %4918 = icmp ult i32 %4909, %4916
  %4919 = zext i1 %4918 to i8
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4919, i8* %4920, align 1
  %4921 = and i32 %4917, 255
  %4922 = call i32 @llvm.ctpop.i32(i32 %4921)
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  %4925 = xor i8 %4924, 1
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4925, i8* %4926, align 1
  %4927 = xor i32 %4916, %4909
  %4928 = xor i32 %4927, %4917
  %4929 = lshr i32 %4928, 4
  %4930 = trunc i32 %4929 to i8
  %4931 = and i8 %4930, 1
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4931, i8* %4932, align 1
  %4933 = icmp eq i32 %4917, 0
  %4934 = zext i1 %4933 to i8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4934, i8* %4935, align 1
  %4936 = lshr i32 %4917, 31
  %4937 = trunc i32 %4936 to i8
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4937, i8* %4938, align 1
  %4939 = lshr i32 %4909, 31
  %4940 = lshr i32 %4916, 31
  %4941 = xor i32 %4940, %4939
  %4942 = xor i32 %4936, %4939
  %4943 = add i32 %4942, %4941
  %4944 = icmp eq i32 %4943, 2
  %4945 = zext i1 %4944 to i8
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4945, i8* %4946, align 1
  store %struct.Memory* %loadMem_46c39e, %struct.Memory** %MEMORY
  %loadMem_46c3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 33
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4949 to i64*
  %4950 = load i64, i64* %PC.i32
  %4951 = add i64 %4950, 48
  %4952 = load i64, i64* %PC.i32
  %4953 = add i64 %4952, 6
  %4954 = load i64, i64* %PC.i32
  %4955 = add i64 %4954, 6
  store i64 %4955, i64* %PC.i32
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4957 = load i8, i8* %4956, align 1
  %4958 = icmp ne i8 %4957, 0
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4960 = load i8, i8* %4959, align 1
  %4961 = icmp ne i8 %4960, 0
  %4962 = xor i1 %4958, %4961
  %4963 = xor i1 %4962, true
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %BRANCH_TAKEN, align 1
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4966 = select i1 %4962, i64 %4953, i64 %4951
  store i64 %4966, i64* %4965, align 8
  store %struct.Memory* %loadMem_46c3a1, %struct.Memory** %MEMORY
  %loadBr_46c3a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c3a1 = icmp eq i8 %loadBr_46c3a1, 1
  br i1 %cmpBr_46c3a1, label %block_.L_46c3d1, label %block_46c3a7

block_46c3a7:                                     ; preds = %block_.L_46c39b
  %loadMem_46c3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 33
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4969 to i64*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 1
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 15
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4975 to i64*
  %4976 = load i64, i64* %RBP.i31
  %4977 = sub i64 %4976, 32
  %4978 = load i64, i64* %PC.i29
  %4979 = add i64 %4978, 4
  store i64 %4979, i64* %PC.i29
  %4980 = inttoptr i64 %4977 to i64*
  %4981 = load i64, i64* %4980
  store i64 %4981, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_46c3a7, %struct.Memory** %MEMORY
  %loadMem_46c3ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 33
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 5
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %4987 to i64*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 15
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %4990 to i64*
  %4991 = load i64, i64* %RBP.i28
  %4992 = sub i64 %4991, 40
  %4993 = load i64, i64* %PC.i26
  %4994 = add i64 %4993, 4
  store i64 %4994, i64* %PC.i26
  %4995 = inttoptr i64 %4992 to i32*
  %4996 = load i32, i32* %4995
  %4997 = sext i32 %4996 to i64
  store i64 %4997, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_46c3ab, %struct.Memory** %MEMORY
  %loadMem_46c3af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 33
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5000 to i64*
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 1
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 5
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5006 to i64*
  %5007 = load i64, i64* %RAX.i25
  %5008 = load i64, i64* %RCX.i
  %5009 = mul i64 %5008, 4
  %5010 = add i64 %5009, %5007
  %5011 = load i64, i64* %PC.i24
  %5012 = add i64 %5011, 4
  store i64 %5012, i64* %PC.i24
  %5013 = inttoptr i64 %5010 to i32*
  %5014 = load i32, i32* %5013
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5015, align 1
  %5016 = and i32 %5014, 255
  %5017 = call i32 @llvm.ctpop.i32(i32 %5016)
  %5018 = trunc i32 %5017 to i8
  %5019 = and i8 %5018, 1
  %5020 = xor i8 %5019, 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5020, i8* %5021, align 1
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5022, align 1
  %5023 = icmp eq i32 %5014, 0
  %5024 = zext i1 %5023 to i8
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5024, i8* %5025, align 1
  %5026 = lshr i32 %5014, 31
  %5027 = trunc i32 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5027, i8* %5028, align 1
  %5029 = lshr i32 %5014, 31
  %5030 = xor i32 %5026, %5029
  %5031 = add i32 %5030, %5029
  %5032 = icmp eq i32 %5031, 2
  %5033 = zext i1 %5032 to i8
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5033, i8* %5034, align 1
  store %struct.Memory* %loadMem_46c3af, %struct.Memory** %MEMORY
  %loadMem_46c3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 33
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %PC.i23
  %5039 = add i64 %5038, 11
  %5040 = load i64, i64* %PC.i23
  %5041 = add i64 %5040, 6
  %5042 = load i64, i64* %PC.i23
  %5043 = add i64 %5042, 6
  store i64 %5043, i64* %PC.i23
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5045 = load i8, i8* %5044, align 1
  %5046 = icmp eq i8 %5045, 0
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %BRANCH_TAKEN, align 1
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5049 = select i1 %5046, i64 %5039, i64 %5041
  store i64 %5049, i64* %5048, align 8
  store %struct.Memory* %loadMem_46c3b3, %struct.Memory** %MEMORY
  %loadBr_46c3b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46c3b3 = icmp eq i8 %loadBr_46c3b3, 1
  br i1 %cmpBr_46c3b3, label %block_.L_46c3be, label %block_46c3b9

block_46c3b9:                                     ; preds = %block_46c3a7
  %loadMem_46c3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 33
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5052 to i64*
  %5053 = load i64, i64* %PC.i22
  %5054 = add i64 %5053, 24
  %5055 = load i64, i64* %PC.i22
  %5056 = add i64 %5055, 5
  store i64 %5056, i64* %PC.i22
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5054, i64* %5057, align 8
  store %struct.Memory* %loadMem_46c3b9, %struct.Memory** %MEMORY
  br label %block_.L_46c3d1

block_.L_46c3be:                                  ; preds = %block_46c3a7
  %loadMem_46c3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 33
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %PC.i21
  %5062 = add i64 %5061, 5
  %5063 = load i64, i64* %PC.i21
  %5064 = add i64 %5063, 5
  store i64 %5064, i64* %PC.i21
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5062, i64* %5065, align 8
  store %struct.Memory* %loadMem_46c3be, %struct.Memory** %MEMORY
  br label %block_.L_46c3c3

block_.L_46c3c3:                                  ; preds = %block_.L_46c3be
  %loadMem_46c3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 33
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5068 to i64*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 1
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 15
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %5074 to i64*
  %5075 = load i64, i64* %RBP.i20
  %5076 = sub i64 %5075, 40
  %5077 = load i64, i64* %PC.i18
  %5078 = add i64 %5077, 3
  store i64 %5078, i64* %PC.i18
  %5079 = inttoptr i64 %5076 to i32*
  %5080 = load i32, i32* %5079
  %5081 = zext i32 %5080 to i64
  store i64 %5081, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_46c3c3, %struct.Memory** %MEMORY
  %loadMem_46c3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 33
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5084 to i64*
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 1
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5087 to i64*
  %5088 = load i64, i64* %RAX.i17
  %5089 = load i64, i64* %PC.i16
  %5090 = add i64 %5089, 3
  store i64 %5090, i64* %PC.i16
  %5091 = trunc i64 %5088 to i32
  %5092 = add i32 1, %5091
  %5093 = zext i32 %5092 to i64
  store i64 %5093, i64* %RAX.i17, align 8
  %5094 = icmp ult i32 %5092, %5091
  %5095 = icmp ult i32 %5092, 1
  %5096 = or i1 %5094, %5095
  %5097 = zext i1 %5096 to i8
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5097, i8* %5098, align 1
  %5099 = and i32 %5092, 255
  %5100 = call i32 @llvm.ctpop.i32(i32 %5099)
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  %5103 = xor i8 %5102, 1
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5103, i8* %5104, align 1
  %5105 = xor i64 1, %5088
  %5106 = trunc i64 %5105 to i32
  %5107 = xor i32 %5106, %5092
  %5108 = lshr i32 %5107, 4
  %5109 = trunc i32 %5108 to i8
  %5110 = and i8 %5109, 1
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5110, i8* %5111, align 1
  %5112 = icmp eq i32 %5092, 0
  %5113 = zext i1 %5112 to i8
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5113, i8* %5114, align 1
  %5115 = lshr i32 %5092, 31
  %5116 = trunc i32 %5115 to i8
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5116, i8* %5117, align 1
  %5118 = lshr i32 %5091, 31
  %5119 = xor i32 %5115, %5118
  %5120 = add i32 %5119, %5115
  %5121 = icmp eq i32 %5120, 2
  %5122 = zext i1 %5121 to i8
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5122, i8* %5123, align 1
  store %struct.Memory* %loadMem_46c3c6, %struct.Memory** %MEMORY
  %loadMem_46c3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 33
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5126 to i64*
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 1
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %5129 to i32*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 15
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5132 to i64*
  %5133 = load i64, i64* %RBP.i15
  %5134 = sub i64 %5133, 40
  %5135 = load i32, i32* %EAX.i14
  %5136 = zext i32 %5135 to i64
  %5137 = load i64, i64* %PC.i13
  %5138 = add i64 %5137, 3
  store i64 %5138, i64* %PC.i13
  %5139 = inttoptr i64 %5134 to i32*
  store i32 %5135, i32* %5139
  store %struct.Memory* %loadMem_46c3c9, %struct.Memory** %MEMORY
  %loadMem_46c3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5142 to i64*
  %5143 = load i64, i64* %PC.i12
  %5144 = add i64 %5143, -49
  %5145 = load i64, i64* %PC.i12
  %5146 = add i64 %5145, 5
  store i64 %5146, i64* %PC.i12
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5144, i64* %5147, align 8
  store %struct.Memory* %loadMem_46c3cc, %struct.Memory** %MEMORY
  br label %block_.L_46c39b

block_.L_46c3d1:                                  ; preds = %block_46c3b9, %block_.L_46c39b
  %loadMem_46c3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 1
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 15
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5156 to i64*
  %5157 = load i64, i64* %RBP.i11
  %5158 = sub i64 %5157, 40
  %5159 = load i64, i64* %PC.i9
  %5160 = add i64 %5159, 3
  store i64 %5160, i64* %PC.i9
  %5161 = inttoptr i64 %5158 to i32*
  %5162 = load i32, i32* %5161
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_46c3d1, %struct.Memory** %MEMORY
  %loadMem_46c3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 33
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 1
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5169 to i32*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 15
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5172 to i64*
  %5173 = load i64, i64* %RBP.i8
  %5174 = sub i64 %5173, 4
  %5175 = load i32, i32* %EAX.i
  %5176 = zext i32 %5175 to i64
  %5177 = load i64, i64* %PC.i7
  %5178 = add i64 %5177, 3
  store i64 %5178, i64* %PC.i7
  %5179 = inttoptr i64 %5174 to i32*
  store i32 %5175, i32* %5179
  store %struct.Memory* %loadMem_46c3d4, %struct.Memory** %MEMORY
  br label %block_.L_46c3d7

block_.L_46c3d7:                                  ; preds = %block_.L_46c3d1, %block_46c389, %block_46bf44
  %loadMem_46c3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 33
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5182 to i64*
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 1
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 15
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5188 to i64*
  %5189 = load i64, i64* %RBP.i6
  %5190 = sub i64 %5189, 4
  %5191 = load i64, i64* %PC.i5
  %5192 = add i64 %5191, 3
  store i64 %5192, i64* %PC.i5
  %5193 = inttoptr i64 %5190 to i32*
  %5194 = load i32, i32* %5193
  %5195 = zext i32 %5194 to i64
  store i64 %5195, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_46c3d7, %struct.Memory** %MEMORY
  %loadMem_46c3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 13
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RSP.i
  %5203 = load i64, i64* %PC.i4
  %5204 = add i64 %5203, 7
  store i64 %5204, i64* %PC.i4
  %5205 = add i64 1744, %5202
  store i64 %5205, i64* %RSP.i, align 8
  %5206 = icmp ult i64 %5205, %5202
  %5207 = icmp ult i64 %5205, 1744
  %5208 = or i1 %5206, %5207
  %5209 = zext i1 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5209, i8* %5210, align 1
  %5211 = trunc i64 %5205 to i32
  %5212 = and i32 %5211, 255
  %5213 = call i32 @llvm.ctpop.i32(i32 %5212)
  %5214 = trunc i32 %5213 to i8
  %5215 = and i8 %5214, 1
  %5216 = xor i8 %5215, 1
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5216, i8* %5217, align 1
  %5218 = xor i64 1744, %5202
  %5219 = xor i64 %5218, %5205
  %5220 = lshr i64 %5219, 4
  %5221 = trunc i64 %5220 to i8
  %5222 = and i8 %5221, 1
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5222, i8* %5223, align 1
  %5224 = icmp eq i64 %5205, 0
  %5225 = zext i1 %5224 to i8
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5225, i8* %5226, align 1
  %5227 = lshr i64 %5205, 63
  %5228 = trunc i64 %5227 to i8
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5228, i8* %5229, align 1
  %5230 = lshr i64 %5202, 63
  %5231 = xor i64 %5227, %5230
  %5232 = add i64 %5231, %5227
  %5233 = icmp eq i64 %5232, 2
  %5234 = zext i1 %5233 to i8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5234, i8* %5235, align 1
  store %struct.Memory* %loadMem_46c3da, %struct.Memory** %MEMORY
  %loadMem_46c3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 33
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5238 to i64*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 15
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5241 to i64*
  %5242 = load i64, i64* %PC.i2
  %5243 = add i64 %5242, 1
  store i64 %5243, i64* %PC.i2
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5245 = load i64, i64* %5244, align 8
  %5246 = add i64 %5245, 8
  %5247 = inttoptr i64 %5245 to i64*
  %5248 = load i64, i64* %5247
  store i64 %5248, i64* %RBP.i3, align 8
  store i64 %5246, i64* %5244, align 8
  store %struct.Memory* %loadMem_46c3e1, %struct.Memory** %MEMORY
  %loadMem_46c3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 33
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5251 to i64*
  %5252 = load i64, i64* %PC.i1
  %5253 = add i64 %5252, 1
  store i64 %5253, i64* %PC.i1
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5256 = load i64, i64* %5255, align 8
  %5257 = inttoptr i64 %5256 to i64*
  %5258 = load i64, i64* %5257
  store i64 %5258, i64* %5254, align 8
  %5259 = add i64 %5256, 8
  store i64 %5259, i64* %5255, align 8
  store %struct.Memory* %loadMem_46c3e2, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_46c3e2
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

define %struct.Memory* @routine_subq__0x6d0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1744
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1744
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
  %23 = xor i64 1744, %9
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46bea3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46bea8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46bf19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x367___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 871, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1712
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

define %struct.Memory* @routine_movq__rdx__MINUS0x6b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1720
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

define %struct.Memory* @routine_movl_MINUS0x6b0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1712
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

define %struct.Memory* @routine_movl__eax__MINUS0x6bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1724
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

define %struct.Memory* @routine_movq_MINUS0x6b8__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x6c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1728
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

define %struct.Memory* @routine_movl_MINUS0x6bc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c0__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1728
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EDX
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

define %struct.Memory* @routine_je_.L_46bf50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46c3d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1008
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_46c154(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jge_.L_46c154(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1668
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_jge_.L_46c14f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x58014a___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58014a_type* @G__0x58014a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x684__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1008
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x690__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1680
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x690__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_je_.L_46c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x694__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1684
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

define %struct.Memory* @routine_je_.L_46c00f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x694__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.movelist_change_point(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x688__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1672
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x688__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1672
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

define %struct.Memory* @routine_jge_.L_46c136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x684__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -1008
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

define %struct.Memory* @routine_movslq_MINUS0x688__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %22, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x698__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1688
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x698__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_46c0ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x698__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_je_.L_46c0b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46c122(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58015b___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58015b_type* @G__0x58015b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46c11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1692
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x69c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1692
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

define %struct.Memory* @routine_je_.L_46c118(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x69c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1672
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

define %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1672
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46c01e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46c13b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46bf85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46c154(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x680__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1664
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

define %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1012
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1012
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

define %struct.Memory* @routine_jge_.L_46c372(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x6a8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x6ac__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x6a4__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x684__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x680__rbp__rdi_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1664
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack_and_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x6a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1704
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1732
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46c1d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x6ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1708
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

define %struct.Memory* @routine_jne_.L_46c1d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46c35e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x68c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1676
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x68c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jge_.L_46c359(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46c288(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x68c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1676
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46c20f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46c345(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x680__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1664
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_movslq_MINUS0x68c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xb4__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 180
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46c24c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46c359(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x8c__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 140
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x6a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1696
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46c2b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46c2a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x6a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1696
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46c2ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58016c___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58016c_type* @G__0x58016c to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6a0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46c340(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46c300(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5__MINUS0x6a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1704
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46c312(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1704
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46c33b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x6a8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1676
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46c1e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46c173(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_46c394(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_46c3d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_46c3be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46c3d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46c3c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46c39b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x6d0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1744, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1744
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
  %25 = xor i64 1744, %9
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
