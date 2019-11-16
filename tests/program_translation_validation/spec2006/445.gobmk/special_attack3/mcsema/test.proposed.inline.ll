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
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fd27_type = type <{ [8 x i8] }>
%G__0x57fe8a_type = type <{ [8 x i8] }>
%G__0x57fe9c_type = type <{ [8 x i8] }>
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
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fd27 = global %G__0x57fd27_type zeroinitializer
@G__0x57fe8a = global %G__0x57fe8a_type zeroinitializer
@G__0x57fe9c = global %G__0x57fe9c_type zeroinitializer

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

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_463620.do_find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @special_attack3(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_469b40 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_469b40, %struct.Memory** %MEMORY
  %loadMem_469b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i508 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i508
  %27 = load i64, i64* %PC.i507
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i507
  store i64 %26, i64* %RBP.i509, align 8
  store %struct.Memory* %loadMem_469b41, %struct.Memory** %MEMORY
  %loadMem_469b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i506 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i506
  %36 = load i64, i64* %PC.i505
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i505
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i506, align 8
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
  store %struct.Memory* %loadMem_469b44, %struct.Memory** %MEMORY
  %loadMem_469b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i503
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i503
  store i64 3, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_469b48, %struct.Memory** %MEMORY
  %loadMem_469b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i502
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i501
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i501
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_469b4d, %struct.Memory** %MEMORY
  %loadMem_469b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i499 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i500
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i499
  %103 = load i64, i64* %PC.i498
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i498
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_469b50, %struct.Memory** %MEMORY
  %loadMem_469b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i497
  %116 = sub i64 %115, 24
  %117 = load i64, i64* %RDX.i496
  %118 = load i64, i64* %PC.i495
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i495
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  store %struct.Memory* %loadMem_469b54, %struct.Memory** %MEMORY
  %loadMem_469b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %ECX.i493 = bitcast %union.anon* %126 to i32*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i494
  %131 = sub i64 %130, 28
  %132 = load i32, i32* %ECX.i493
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* %PC.i492
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC.i492
  %136 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %136
  store %struct.Memory* %loadMem_469b58, %struct.Memory** %MEMORY
  %loadMem_469b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 17
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %R8D.i490 = bitcast %union.anon* %142 to i32*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i491
  %147 = sub i64 %146, 32
  %148 = load i32, i32* %R8D.i490
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* %PC.i489
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i489
  %152 = inttoptr i64 %147 to i32*
  store i32 %148, i32* %152
  store %struct.Memory* %loadMem_469b5b, %struct.Memory** %MEMORY
  %loadMem_469b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i488
  %163 = sub i64 %162, 8
  %164 = load i64, i64* %PC.i486
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC.i486
  %166 = inttoptr i64 %163 to i32*
  %167 = load i32, i32* %166
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_469b5f, %struct.Memory** %MEMORY
  %loadMem_469b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RDX.i485
  %179 = add i64 %178, 12099168
  %180 = load i64, i64* %PC.i483
  %181 = add i64 %180, 8
  store i64 %181, i64* %PC.i483
  %182 = inttoptr i64 %179 to i8*
  %183 = load i8, i8* %182
  %184 = zext i8 %183 to i64
  store i64 %184, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_469b63, %struct.Memory** %MEMORY
  %loadMem_469b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %ECX.i481 = bitcast %union.anon* %190 to i32*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i482
  %195 = sub i64 %194, 36
  %196 = load i32, i32* %ECX.i481
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC.i480
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i480
  %200 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %200
  store %struct.Memory* %loadMem_469b6b, %struct.Memory** %MEMORY
  %loadMem_469b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RAX.i478
  %211 = load i64, i64* %RBP.i479
  %212 = sub i64 %211, 36
  %213 = load i64, i64* %PC.i477
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i477
  %215 = trunc i64 %210 to i32
  %216 = inttoptr i64 %212 to i32*
  %217 = load i32, i32* %216
  %218 = sub i32 %215, %217
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX.i478, align 8
  %220 = icmp ult i32 %215, %217
  %221 = zext i1 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %221, i8* %222, align 1
  %223 = and i32 %218, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1
  %229 = xor i32 %217, %215
  %230 = xor i32 %229, %218
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %233, i8* %234, align 1
  %235 = icmp eq i32 %218, 0
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %236, i8* %237, align 1
  %238 = lshr i32 %218, 31
  %239 = trunc i32 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %239, i8* %240, align 1
  %241 = lshr i32 %215, 31
  %242 = lshr i32 %217, 31
  %243 = xor i32 %242, %241
  %244 = xor i32 %238, %241
  %245 = add i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %247, i8* %248, align 1
  store %struct.Memory* %loadMem_469b6e, %struct.Memory** %MEMORY
  %loadMem_469b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %EAX.i475 = bitcast %union.anon* %254 to i32*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RBP.i476
  %259 = sub i64 %258, 40
  %260 = load i32, i32* %EAX.i475
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %PC.i474
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC.i474
  %264 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %264
  store %struct.Memory* %loadMem_469b71, %struct.Memory** %MEMORY
  %loadMem_469b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RBP.i473
  %272 = sub i64 %271, 52
  %273 = load i64, i64* %PC.i472
  %274 = add i64 %273, 7
  store i64 %274, i64* %PC.i472
  %275 = inttoptr i64 %272 to i32*
  store i32 0, i32* %275
  store %struct.Memory* %loadMem_469b74, %struct.Memory** %MEMORY
  %loadMem_469b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i471
  %283 = sub i64 %282, 56
  %284 = load i64, i64* %PC.i470
  %285 = add i64 %284, 7
  store i64 %285, i64* %PC.i470
  %286 = inttoptr i64 %283 to i32*
  store i32 0, i32* %286
  store %struct.Memory* %loadMem_469b7b, %struct.Memory** %MEMORY
  %loadMem_469b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 11
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RDI.i468 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 15
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RBP.i469
  %297 = sub i64 %296, 8
  %298 = load i64, i64* %PC.i467
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC.i467
  %300 = inttoptr i64 %297 to i32*
  %301 = load i32, i32* %300
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RDI.i468, align 8
  store %struct.Memory* %loadMem_469b82, %struct.Memory** %MEMORY
  %loadMem1_469b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %PC.i466
  %307 = add i64 %306, -369669
  %308 = load i64, i64* %PC.i466
  %309 = add i64 %308, 5
  %310 = load i64, i64* %PC.i466
  %311 = add i64 %310, 5
  store i64 %311, i64* %PC.i466
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = add i64 %313, -8
  %315 = inttoptr i64 %314 to i64*
  store i64 %309, i64* %315
  store i64 %314, i64* %312, align 8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %307, i64* %316, align 8
  store %struct.Memory* %loadMem1_469b85, %struct.Memory** %MEMORY
  %loadMem2_469b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469b85 = load i64, i64* %3
  %call2_469b85 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_469b85, %struct.Memory* %loadMem2_469b85)
  store %struct.Memory* %call2_469b85, %struct.Memory** %MEMORY
  %loadMem_469b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %322 to i32*
  %323 = load i32, i32* %EAX.i465
  %324 = zext i32 %323 to i64
  %325 = load i64, i64* %PC.i464
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC.i464
  %327 = sub i32 %323, 2
  %328 = icmp ult i32 %323, 2
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1
  %331 = and i32 %327, 255
  %332 = call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %335, i8* %336, align 1
  %337 = xor i64 2, %324
  %338 = trunc i64 %337 to i32
  %339 = xor i32 %338, %327
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1
  %344 = icmp eq i32 %327, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1
  %347 = lshr i32 %327, 31
  %348 = trunc i32 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1
  %350 = lshr i32 %323, 31
  %351 = xor i32 %347, %350
  %352 = add i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %354, i8* %355, align 1
  store %struct.Memory* %loadMem_469b8a, %struct.Memory** %MEMORY
  %loadMem_469b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %PC.i463
  %360 = add i64 %359, 11
  %361 = load i64, i64* %PC.i463
  %362 = add i64 %361, 6
  %363 = load i64, i64* %PC.i463
  %364 = add i64 %363, 6
  store i64 %364, i64* %PC.i463
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %366 = load i8, i8* %365, align 1
  %367 = icmp eq i8 %366, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %BRANCH_TAKEN, align 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %370 = select i1 %367, i64 %360, i64 %362
  store i64 %370, i64* %369, align 8
  store %struct.Memory* %loadMem_469b8d, %struct.Memory** %MEMORY
  %loadBr_469b8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469b8d = icmp eq i8 %loadBr_469b8d, 1
  br i1 %cmpBr_469b8d, label %block_.L_469b98, label %block_469b93

block_469b93:                                     ; preds = %entry
  %loadMem_469b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %PC.i462
  %375 = add i64 %374, 45
  %376 = load i64, i64* %PC.i462
  %377 = add i64 %376, 5
  store i64 %377, i64* %PC.i462
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %375, i64* %378, align 8
  store %struct.Memory* %loadMem_469b93, %struct.Memory** %MEMORY
  br label %block_.L_469bc0

block_.L_469b98:                                  ; preds = %entry
  %loadMem_469b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 11
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RDI.i461 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %PC.i460
  %386 = add i64 %385, 10
  store i64 %386, i64* %PC.i460
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i461, align 8
  store %struct.Memory* %loadMem_469b98, %struct.Memory** %MEMORY
  %loadMem_469ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 9
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RSI.i459 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %PC.i458
  %394 = add i64 %393, 5
  store i64 %394, i64* %PC.i458
  store i64 3326, i64* %RSI.i459, align 8
  store %struct.Memory* %loadMem_469ba2, %struct.Memory** %MEMORY
  %loadMem_469ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 7
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RDX.i457 = bitcast %union.anon* %400 to i64*
  %401 = load i64, i64* %PC.i456
  %402 = add i64 %401, 10
  store i64 %402, i64* %PC.i456
  store i64 ptrtoint (%G__0x57fd27_type* @G__0x57fd27 to i64), i64* %RDX.i457, align 8
  store %struct.Memory* %loadMem_469ba7, %struct.Memory** %MEMORY
  %loadMem_469bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %PC.i454
  %410 = add i64 %409, 5
  store i64 %410, i64* %PC.i454
  store i64 4294967295, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_469bb1, %struct.Memory** %MEMORY
  %loadMem_469bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %EAX.i452 = bitcast %union.anon* %416 to i32*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %419 to i64*
  %420 = load i32, i32* %EAX.i452
  %421 = zext i32 %420 to i64
  %422 = load i64, i64* %PC.i451
  %423 = add i64 %422, 2
  store i64 %423, i64* %PC.i451
  %424 = and i64 %421, 4294967295
  store i64 %424, i64* %RCX.i453, align 8
  store %struct.Memory* %loadMem_469bb6, %struct.Memory** %MEMORY
  %loadMem_469bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %430 to i32*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 17
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %R8D.i450 = bitcast %union.anon* %433 to i32*
  %434 = bitcast i32* %R8D.i450 to i64*
  %435 = load i32, i32* %EAX.i449
  %436 = zext i32 %435 to i64
  %437 = load i64, i64* %PC.i448
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC.i448
  %439 = and i64 %436, 4294967295
  store i64 %439, i64* %434, align 8
  store %struct.Memory* %loadMem_469bb8, %struct.Memory** %MEMORY
  %loadMem1_469bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i447
  %444 = add i64 %443, -97067
  %445 = load i64, i64* %PC.i447
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i447
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i447
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 %446, i64* %452
  store i64 %451, i64* %449, align 8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %444, i64* %453, align 8
  store %struct.Memory* %loadMem1_469bbb, %struct.Memory** %MEMORY
  %loadMem2_469bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469bbb = load i64, i64* %3
  %call2_469bbb = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_469bbb, %struct.Memory* %loadMem2_469bbb)
  store %struct.Memory* %call2_469bbb, %struct.Memory** %MEMORY
  br label %block_.L_469bc0

block_.L_469bc0:                                  ; preds = %block_.L_469b98, %block_469b93
  %loadMem_469bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 15
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %RBP.i446
  %461 = sub i64 %460, 84
  %462 = load i64, i64* %PC.i445
  %463 = add i64 %462, 7
  store i64 %463, i64* %PC.i445
  %464 = inttoptr i64 %461 to i32*
  store i32 0, i32* %464
  store %struct.Memory* %loadMem_469bc0, %struct.Memory** %MEMORY
  br label %block_.L_469bc7

block_.L_469bc7:                                  ; preds = %block_.L_469eb6, %block_.L_469bc0
  %loadMem_469bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 15
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %RBP.i444
  %472 = sub i64 %471, 84
  %473 = load i64, i64* %PC.i443
  %474 = add i64 %473, 4
  store i64 %474, i64* %PC.i443
  %475 = inttoptr i64 %472 to i32*
  %476 = load i32, i32* %475
  %477 = sub i32 %476, 2
  %478 = icmp ult i32 %476, 2
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %479, i8* %480, align 1
  %481 = and i32 %477, 255
  %482 = call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %485, i8* %486, align 1
  %487 = xor i32 %476, 2
  %488 = xor i32 %487, %477
  %489 = lshr i32 %488, 4
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %491, i8* %492, align 1
  %493 = icmp eq i32 %477, 0
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %494, i8* %495, align 1
  %496 = lshr i32 %477, 31
  %497 = trunc i32 %496 to i8
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %497, i8* %498, align 1
  %499 = lshr i32 %476, 31
  %500 = xor i32 %496, %499
  %501 = add i32 %500, %499
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %503, i8* %504, align 1
  store %struct.Memory* %loadMem_469bc7, %struct.Memory** %MEMORY
  %loadMem_469bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %PC.i442
  %509 = add i64 %508, 761
  %510 = load i64, i64* %PC.i442
  %511 = add i64 %510, 6
  %512 = load i64, i64* %PC.i442
  %513 = add i64 %512, 6
  store i64 %513, i64* %PC.i442
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %515 = load i8, i8* %514, align 1
  %516 = icmp ne i8 %515, 0
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %518 = load i8, i8* %517, align 1
  %519 = icmp ne i8 %518, 0
  %520 = xor i1 %516, %519
  %521 = xor i1 %520, true
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %BRANCH_TAKEN, align 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %524 = select i1 %520, i64 %511, i64 %509
  store i64 %524, i64* %523, align 8
  store %struct.Memory* %loadMem_469bcb, %struct.Memory** %MEMORY
  %loadBr_469bcb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469bcb = icmp eq i8 %loadBr_469bcb, 1
  br i1 %cmpBr_469bcb, label %block_.L_469ec4, label %block_469bd1

block_469bd1:                                     ; preds = %block_.L_469bc7
  %loadMem_469bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %530 to i64*
  %531 = load i64, i64* %PC.i440
  %532 = add i64 %531, 5
  store i64 %532, i64* %PC.i440
  store i64 1, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_469bd1, %struct.Memory** %MEMORY
  %loadMem_469bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 5
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 15
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RBP.i439
  %543 = sub i64 %542, 16
  %544 = load i64, i64* %PC.i437
  %545 = add i64 %544, 4
  store i64 %545, i64* %PC.i437
  %546 = inttoptr i64 %543 to i64*
  %547 = load i64, i64* %546
  store i64 %547, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_469bd6, %struct.Memory** %MEMORY
  %loadMem_469bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 7
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 15
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RBP.i436
  %558 = sub i64 %557, 84
  %559 = load i64, i64* %PC.i434
  %560 = add i64 %559, 4
  store i64 %560, i64* %PC.i434
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561
  %563 = sext i32 %562 to i64
  store i64 %563, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_469bda, %struct.Memory** %MEMORY
  %loadMem_469bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 7
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 9
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RSI.i433 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %RCX.i431
  %577 = load i64, i64* %RDX.i432
  %578 = mul i64 %577, 4
  %579 = add i64 %578, %576
  %580 = load i64, i64* %PC.i430
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC.i430
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RSI.i433, align 8
  store %struct.Memory* %loadMem_469bde, %struct.Memory** %MEMORY
  %loadMem_469be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 9
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %ESI.i428 = bitcast %union.anon* %590 to i32*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 15
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RBP.i429
  %595 = sub i64 %594, 76
  %596 = load i32, i32* %ESI.i428
  %597 = zext i32 %596 to i64
  %598 = load i64, i64* %PC.i427
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC.i427
  %600 = inttoptr i64 %595 to i32*
  store i32 %596, i32* %600
  store %struct.Memory* %loadMem_469be1, %struct.Memory** %MEMORY
  %loadMem_469be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 5
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 15
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %RBP.i426
  %611 = sub i64 %610, 16
  %612 = load i64, i64* %PC.i424
  %613 = add i64 %612, 4
  store i64 %613, i64* %PC.i424
  %614 = inttoptr i64 %611 to i64*
  %615 = load i64, i64* %614
  store i64 %615, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_469be4, %struct.Memory** %MEMORY
  %loadMem_469be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RAX.i422
  %626 = load i64, i64* %RBP.i423
  %627 = sub i64 %626, 84
  %628 = load i64, i64* %PC.i421
  %629 = add i64 %628, 3
  store i64 %629, i64* %PC.i421
  %630 = trunc i64 %625 to i32
  %631 = inttoptr i64 %627 to i32*
  %632 = load i32, i32* %631
  %633 = sub i32 %630, %632
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX.i422, align 8
  %635 = icmp ult i32 %630, %632
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %636, i8* %637, align 1
  %638 = and i32 %633, 255
  %639 = call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %642, i8* %643, align 1
  %644 = xor i32 %632, %630
  %645 = xor i32 %644, %633
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %648, i8* %649, align 1
  %650 = icmp eq i32 %633, 0
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %651, i8* %652, align 1
  %653 = lshr i32 %633, 31
  %654 = trunc i32 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %654, i8* %655, align 1
  %656 = lshr i32 %630, 31
  %657 = lshr i32 %632, 31
  %658 = xor i32 %657, %656
  %659 = xor i32 %653, %656
  %660 = add i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %662, i8* %663, align 1
  store %struct.Memory* %loadMem_469be8, %struct.Memory** %MEMORY
  %loadMem_469beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 1
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %EAX.i419 = bitcast %union.anon* %669 to i32*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 7
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %672 to i64*
  %673 = load i32, i32* %EAX.i419
  %674 = zext i32 %673 to i64
  %675 = load i64, i64* %PC.i418
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC.i418
  %677 = shl i64 %674, 32
  %678 = ashr exact i64 %677, 32
  store i64 %678, i64* %RDX.i420, align 8
  store %struct.Memory* %loadMem_469beb, %struct.Memory** %MEMORY
  %loadMem_469bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 5
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 7
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RDX.i417 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RCX.i416
  %692 = load i64, i64* %RDX.i417
  %693 = mul i64 %692, 4
  %694 = add i64 %693, %691
  %695 = load i64, i64* %PC.i414
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i414
  %697 = inttoptr i64 %694 to i32*
  %698 = load i32, i32* %697
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_469bee, %struct.Memory** %MEMORY
  %loadMem_469bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %EAX.i412 = bitcast %union.anon* %705 to i32*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 15
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RBP.i413
  %710 = sub i64 %709, 80
  %711 = load i32, i32* %EAX.i412
  %712 = zext i32 %711 to i64
  %713 = load i64, i64* %PC.i411
  %714 = add i64 %713, 3
  store i64 %714, i64* %PC.i411
  %715 = inttoptr i64 %710 to i32*
  store i32 %711, i32* %715
  store %struct.Memory* %loadMem_469bf1, %struct.Memory** %MEMORY
  %loadMem_469bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 1
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 15
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %RBP.i410
  %726 = sub i64 %725, 76
  %727 = load i64, i64* %PC.i408
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC.i408
  %729 = inttoptr i64 %726 to i32*
  %730 = load i32, i32* %729
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_469bf4, %struct.Memory** %MEMORY
  %loadMem_469bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 33
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 9
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RSI.i406 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 15
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %740 to i64*
  %741 = load i64, i64* %RBP.i407
  %742 = sub i64 %741, 80
  %743 = load i64, i64* %PC.i405
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC.i405
  %745 = inttoptr i64 %742 to i32*
  %746 = load i32, i32* %745
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RSI.i406, align 8
  store %struct.Memory* %loadMem_469bf7, %struct.Memory** %MEMORY
  %loadMem_469bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 9
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RSI.i404 = bitcast %union.anon* %753 to i64*
  %754 = load i64, i64* %RSI.i404
  %755 = load i64, i64* %PC.i403
  %756 = add i64 %755, 3
  store i64 %756, i64* %PC.i403
  %757 = trunc i64 %754 to i32
  %758 = add i32 20, %757
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RSI.i404, align 8
  %760 = icmp ult i32 %758, %757
  %761 = icmp ult i32 %758, 20
  %762 = or i1 %760, %761
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %763, i8* %764, align 1
  %765 = and i32 %758, 255
  %766 = call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %769, i8* %770, align 1
  %771 = xor i64 20, %754
  %772 = trunc i64 %771 to i32
  %773 = xor i32 %772, %758
  %774 = lshr i32 %773, 4
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %776, i8* %777, align 1
  %778 = icmp eq i32 %758, 0
  %779 = zext i1 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %779, i8* %780, align 1
  %781 = lshr i32 %758, 31
  %782 = trunc i32 %781 to i8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %782, i8* %783, align 1
  %784 = lshr i32 %757, 31
  %785 = xor i32 %781, %784
  %786 = add i32 %785, %781
  %787 = icmp eq i32 %786, 2
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %788, i8* %789, align 1
  store %struct.Memory* %loadMem_469bfa, %struct.Memory** %MEMORY
  %loadMem_469bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %795 to i32*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 9
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %ESI.i402 = bitcast %union.anon* %798 to i32*
  %799 = load i32, i32* %EAX.i401
  %800 = zext i32 %799 to i64
  %801 = load i32, i32* %ESI.i402
  %802 = zext i32 %801 to i64
  %803 = load i64, i64* %PC.i400
  %804 = add i64 %803, 2
  store i64 %804, i64* %PC.i400
  %805 = sub i32 %799, %801
  %806 = icmp ult i32 %799, %801
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %807, i8* %808, align 1
  %809 = and i32 %805, 255
  %810 = call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %813, i8* %814, align 1
  %815 = xor i64 %802, %800
  %816 = trunc i64 %815 to i32
  %817 = xor i32 %816, %805
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %820, i8* %821, align 1
  %822 = icmp eq i32 %805, 0
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %823, i8* %824, align 1
  %825 = lshr i32 %805, 31
  %826 = trunc i32 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1
  %828 = lshr i32 %799, 31
  %829 = lshr i32 %801, 31
  %830 = xor i32 %829, %828
  %831 = xor i32 %825, %828
  %832 = add i32 %831, %830
  %833 = icmp eq i32 %832, 2
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %834, i8* %835, align 1
  store %struct.Memory* %loadMem_469bfd, %struct.Memory** %MEMORY
  %loadMem_469bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %PC.i399
  %840 = add i64 %839, 23
  %841 = load i64, i64* %PC.i399
  %842 = add i64 %841, 6
  %843 = load i64, i64* %PC.i399
  %844 = add i64 %843, 6
  store i64 %844, i64* %PC.i399
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %846 = load i8, i8* %845, align 1
  store i8 %846, i8* %BRANCH_TAKEN, align 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %848 = icmp ne i8 %846, 0
  %849 = select i1 %848, i64 %840, i64 %842
  store i64 %849, i64* %847, align 8
  store %struct.Memory* %loadMem_469bff, %struct.Memory** %MEMORY
  %loadBr_469bff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469bff = icmp eq i8 %loadBr_469bff, 1
  br i1 %cmpBr_469bff, label %block_.L_469c16, label %block_469c05

block_469c05:                                     ; preds = %block_469bd1
  %loadMem_469c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 15
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %RBP.i398
  %860 = sub i64 %859, 76
  %861 = load i64, i64* %PC.i396
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC.i396
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_469c05, %struct.Memory** %MEMORY
  %loadMem_469c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 5
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 15
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RBP.i395
  %876 = sub i64 %875, 80
  %877 = load i64, i64* %PC.i393
  %878 = add i64 %877, 3
  store i64 %878, i64* %PC.i393
  %879 = inttoptr i64 %876 to i32*
  %880 = load i32, i32* %879
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_469c08, %struct.Memory** %MEMORY
  %loadMem_469c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 5
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RCX.i392
  %889 = load i64, i64* %PC.i391
  %890 = add i64 %889, 3
  store i64 %890, i64* %PC.i391
  %891 = trunc i64 %888 to i32
  %892 = sub i32 %891, 20
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RCX.i392, align 8
  %894 = icmp ult i32 %891, 20
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %895, i8* %896, align 1
  %897 = and i32 %892, 255
  %898 = call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %901, i8* %902, align 1
  %903 = xor i64 20, %888
  %904 = trunc i64 %903 to i32
  %905 = xor i32 %904, %892
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %908, i8* %909, align 1
  %910 = icmp eq i32 %892, 0
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %911, i8* %912, align 1
  %913 = lshr i32 %892, 31
  %914 = trunc i32 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %914, i8* %915, align 1
  %916 = lshr i32 %891, 31
  %917 = xor i32 %913, %916
  %918 = add i32 %917, %916
  %919 = icmp eq i32 %918, 2
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %920, i8* %921, align 1
  store %struct.Memory* %loadMem_469c0b, %struct.Memory** %MEMORY
  %loadMem_469c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 1
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %EAX.i389 = bitcast %union.anon* %927 to i32*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 5
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %ECX.i390 = bitcast %union.anon* %930 to i32*
  %931 = load i32, i32* %EAX.i389
  %932 = zext i32 %931 to i64
  %933 = load i32, i32* %ECX.i390
  %934 = zext i32 %933 to i64
  %935 = load i64, i64* %PC.i388
  %936 = add i64 %935, 2
  store i64 %936, i64* %PC.i388
  %937 = sub i32 %931, %933
  %938 = icmp ult i32 %931, %933
  %939 = zext i1 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %939, i8* %940, align 1
  %941 = and i32 %937, 255
  %942 = call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %945, i8* %946, align 1
  %947 = xor i64 %934, %932
  %948 = trunc i64 %947 to i32
  %949 = xor i32 %948, %937
  %950 = lshr i32 %949, 4
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %952, i8* %953, align 1
  %954 = icmp eq i32 %937, 0
  %955 = zext i1 %954 to i8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %955, i8* %956, align 1
  %957 = lshr i32 %937, 31
  %958 = trunc i32 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %931, 31
  %961 = lshr i32 %933, 31
  %962 = xor i32 %961, %960
  %963 = xor i32 %957, %960
  %964 = add i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %966, i8* %967, align 1
  store %struct.Memory* %loadMem_469c0e, %struct.Memory** %MEMORY
  %loadMem_469c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %PC.i387
  %972 = add i64 %971, 101
  %973 = load i64, i64* %PC.i387
  %974 = add i64 %973, 6
  %975 = load i64, i64* %PC.i387
  %976 = add i64 %975, 6
  store i64 %976, i64* %PC.i387
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %978 = load i8, i8* %977, align 1
  %979 = icmp eq i8 %978, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %BRANCH_TAKEN, align 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %982 = select i1 %979, i64 %972, i64 %974
  store i64 %982, i64* %981, align 8
  store %struct.Memory* %loadMem_469c10, %struct.Memory** %MEMORY
  %loadBr_469c10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469c10 = icmp eq i8 %loadBr_469c10, 1
  br i1 %cmpBr_469c10, label %block_.L_469c75, label %block_.L_469c16

block_.L_469c16:                                  ; preds = %block_469c05, %block_469bd1
  %loadMem_469c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 15
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %RBP.i386
  %993 = sub i64 %992, 76
  %994 = load i64, i64* %PC.i384
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i384
  %996 = inttoptr i64 %993 to i32*
  %997 = load i32, i32* %996
  %998 = zext i32 %997 to i64
  store i64 %998, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_469c16, %struct.Memory** %MEMORY
  %loadMem_469c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %RAX.i383
  %1006 = load i64, i64* %PC.i382
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC.i382
  %1008 = trunc i64 %1005 to i32
  %1009 = sub i32 %1008, 1
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RAX.i383, align 8
  %1011 = icmp ult i32 %1008, 1
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1012, i8* %1013, align 1
  %1014 = and i32 %1009, 255
  %1015 = call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1018, i8* %1019, align 1
  %1020 = xor i64 1, %1005
  %1021 = trunc i64 %1020 to i32
  %1022 = xor i32 %1021, %1009
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1025, i8* %1026, align 1
  %1027 = icmp eq i32 %1009, 0
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1028, i8* %1029, align 1
  %1030 = lshr i32 %1009, 31
  %1031 = trunc i32 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1031, i8* %1032, align 1
  %1033 = lshr i32 %1008, 31
  %1034 = xor i32 %1030, %1033
  %1035 = add i32 %1034, %1033
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1037, i8* %1038, align 1
  store %struct.Memory* %loadMem_469c19, %struct.Memory** %MEMORY
  %loadMem_469c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 1
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %1044 to i32*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 5
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %1047 to i64*
  %1048 = load i32, i32* %EAX.i380
  %1049 = zext i32 %1048 to i64
  %1050 = load i64, i64* %PC.i379
  %1051 = add i64 %1050, 3
  store i64 %1051, i64* %PC.i379
  %1052 = shl i64 %1049, 32
  %1053 = ashr exact i64 %1052, 32
  store i64 %1053, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_469c1c, %struct.Memory** %MEMORY
  %loadMem_469c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 1
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 5
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RCX.i378
  %1064 = add i64 %1063, 12099168
  %1065 = load i64, i64* %PC.i376
  %1066 = add i64 %1065, 8
  store i64 %1066, i64* %PC.i376
  %1067 = inttoptr i64 %1064 to i8*
  %1068 = load i8, i8* %1067
  %1069 = zext i8 %1068 to i64
  store i64 %1069, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_469c1f, %struct.Memory** %MEMORY
  %loadMem_469c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %EAX.i375 = bitcast %union.anon* %1075 to i32*
  %1076 = load i32, i32* %EAX.i375
  %1077 = zext i32 %1076 to i64
  %1078 = load i64, i64* %PC.i374
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %PC.i374
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1080, align 1
  %1081 = and i32 %1076, 255
  %1082 = call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1085, i8* %1086, align 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1087, align 1
  %1088 = icmp eq i32 %1076, 0
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1089, i8* %1090, align 1
  %1091 = lshr i32 %1076, 31
  %1092 = trunc i32 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1092, i8* %1093, align 1
  %1094 = lshr i32 %1076, 31
  %1095 = xor i32 %1091, %1094
  %1096 = add i32 %1095, %1094
  %1097 = icmp eq i32 %1096, 2
  %1098 = zext i1 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1098, i8* %1099, align 1
  store %struct.Memory* %loadMem_469c27, %struct.Memory** %MEMORY
  %loadMem_469c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %PC.i373
  %1104 = add i64 %1103, 20
  %1105 = load i64, i64* %PC.i373
  %1106 = add i64 %1105, 6
  %1107 = load i64, i64* %PC.i373
  %1108 = add i64 %1107, 6
  store i64 %1108, i64* %PC.i373
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1110 = load i8, i8* %1109, align 1
  %1111 = icmp eq i8 %1110, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %BRANCH_TAKEN, align 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1114 = select i1 %1111, i64 %1104, i64 %1106
  store i64 %1114, i64* %1113, align 8
  store %struct.Memory* %loadMem_469c2a, %struct.Memory** %MEMORY
  %loadBr_469c2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469c2a = icmp eq i8 %loadBr_469c2a, 1
  br i1 %cmpBr_469c2a, label %block_.L_469c3e, label %block_469c30

block_469c30:                                     ; preds = %block_.L_469c16
  %loadMem_469c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 1
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 15
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %RBP.i372
  %1125 = sub i64 %1124, 76
  %1126 = load i64, i64* %PC.i370
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %PC.i370
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_469c30, %struct.Memory** %MEMORY
  %loadMem_469c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 1
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %RAX.i369
  %1138 = load i64, i64* %PC.i368
  %1139 = add i64 %1138, 3
  store i64 %1139, i64* %PC.i368
  %1140 = trunc i64 %1137 to i32
  %1141 = sub i32 %1140, 1
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RAX.i369, align 8
  %1143 = icmp ult i32 %1140, 1
  %1144 = zext i1 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1144, i8* %1145, align 1
  %1146 = and i32 %1141, 255
  %1147 = call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1150, i8* %1151, align 1
  %1152 = xor i64 1, %1137
  %1153 = trunc i64 %1152 to i32
  %1154 = xor i32 %1153, %1141
  %1155 = lshr i32 %1154, 4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1157, i8* %1158, align 1
  %1159 = icmp eq i32 %1141, 0
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1160, i8* %1161, align 1
  %1162 = lshr i32 %1141, 31
  %1163 = trunc i32 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1163, i8* %1164, align 1
  %1165 = lshr i32 %1140, 31
  %1166 = xor i32 %1162, %1165
  %1167 = add i32 %1166, %1165
  %1168 = icmp eq i32 %1167, 2
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1169, i8* %1170, align 1
  store %struct.Memory* %loadMem_469c33, %struct.Memory** %MEMORY
  %loadMem_469c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 1
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %EAX.i366 = bitcast %union.anon* %1176 to i32*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 15
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RBP.i367
  %1181 = sub i64 %1180, 68
  %1182 = load i32, i32* %EAX.i366
  %1183 = zext i32 %1182 to i64
  %1184 = load i64, i64* %PC.i365
  %1185 = add i64 %1184, 3
  store i64 %1185, i64* %PC.i365
  %1186 = inttoptr i64 %1181 to i32*
  store i32 %1182, i32* %1186
  store %struct.Memory* %loadMem_469c36, %struct.Memory** %MEMORY
  %loadMem_469c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %PC.i364
  %1191 = add i64 %1190, 55
  %1192 = load i64, i64* %PC.i364
  %1193 = add i64 %1192, 5
  store i64 %1193, i64* %PC.i364
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1191, i64* %1194, align 8
  store %struct.Memory* %loadMem_469c39, %struct.Memory** %MEMORY
  br label %block_.L_469c70

block_.L_469c3e:                                  ; preds = %block_.L_469c16
  %loadMem_469c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 1
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 15
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %RBP.i363
  %1205 = sub i64 %1204, 76
  %1206 = load i64, i64* %PC.i361
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %PC.i361
  %1208 = inttoptr i64 %1205 to i32*
  %1209 = load i32, i32* %1208
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_469c3e, %struct.Memory** %MEMORY
  %loadMem_469c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RAX.i360
  %1218 = load i64, i64* %PC.i359
  %1219 = add i64 %1218, 3
  store i64 %1219, i64* %PC.i359
  %1220 = trunc i64 %1217 to i32
  %1221 = add i32 1, %1220
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RAX.i360, align 8
  %1223 = icmp ult i32 %1221, %1220
  %1224 = icmp ult i32 %1221, 1
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1226, i8* %1227, align 1
  %1228 = and i32 %1221, 255
  %1229 = call i32 @llvm.ctpop.i32(i32 %1228)
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  %1232 = xor i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1232, i8* %1233, align 1
  %1234 = xor i64 1, %1217
  %1235 = trunc i64 %1234 to i32
  %1236 = xor i32 %1235, %1221
  %1237 = lshr i32 %1236, 4
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1239, i8* %1240, align 1
  %1241 = icmp eq i32 %1221, 0
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1242, i8* %1243, align 1
  %1244 = lshr i32 %1221, 31
  %1245 = trunc i32 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1245, i8* %1246, align 1
  %1247 = lshr i32 %1220, 31
  %1248 = xor i32 %1244, %1247
  %1249 = add i32 %1248, %1244
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1251, i8* %1252, align 1
  store %struct.Memory* %loadMem_469c41, %struct.Memory** %MEMORY
  %loadMem_469c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 33
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 1
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %EAX.i357 = bitcast %union.anon* %1258 to i32*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 5
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %1261 to i64*
  %1262 = load i32, i32* %EAX.i357
  %1263 = zext i32 %1262 to i64
  %1264 = load i64, i64* %PC.i356
  %1265 = add i64 %1264, 3
  store i64 %1265, i64* %PC.i356
  %1266 = shl i64 %1263, 32
  %1267 = ashr exact i64 %1266, 32
  store i64 %1267, i64* %RCX.i358, align 8
  store %struct.Memory* %loadMem_469c44, %struct.Memory** %MEMORY
  %loadMem_469c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 5
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RCX.i355
  %1278 = add i64 %1277, 12099168
  %1279 = load i64, i64* %PC.i353
  %1280 = add i64 %1279, 8
  store i64 %1280, i64* %PC.i353
  %1281 = inttoptr i64 %1278 to i8*
  %1282 = load i8, i8* %1281
  %1283 = zext i8 %1282 to i64
  store i64 %1283, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_469c47, %struct.Memory** %MEMORY
  %loadMem_469c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 1
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %1289 to i32*
  %1290 = load i32, i32* %EAX.i352
  %1291 = zext i32 %1290 to i64
  %1292 = load i64, i64* %PC.i351
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC.i351
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1294, align 1
  %1295 = and i32 %1290, 255
  %1296 = call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1299, i8* %1300, align 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1301, align 1
  %1302 = icmp eq i32 %1290, 0
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1303, i8* %1304, align 1
  %1305 = lshr i32 %1290, 31
  %1306 = trunc i32 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1306, i8* %1307, align 1
  %1308 = lshr i32 %1290, 31
  %1309 = xor i32 %1305, %1308
  %1310 = add i32 %1309, %1308
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1312, i8* %1313, align 1
  store %struct.Memory* %loadMem_469c4f, %struct.Memory** %MEMORY
  %loadMem_469c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %PC.i350
  %1318 = add i64 %1317, 20
  %1319 = load i64, i64* %PC.i350
  %1320 = add i64 %1319, 6
  %1321 = load i64, i64* %PC.i350
  %1322 = add i64 %1321, 6
  store i64 %1322, i64* %PC.i350
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1324 = load i8, i8* %1323, align 1
  %1325 = icmp eq i8 %1324, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %BRANCH_TAKEN, align 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1328 = select i1 %1325, i64 %1318, i64 %1320
  store i64 %1328, i64* %1327, align 8
  store %struct.Memory* %loadMem_469c52, %struct.Memory** %MEMORY
  %loadBr_469c52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469c52 = icmp eq i8 %loadBr_469c52, 1
  br i1 %cmpBr_469c52, label %block_.L_469c66, label %block_469c58

block_469c58:                                     ; preds = %block_.L_469c3e
  %loadMem_469c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 1
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 15
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %RBP.i349
  %1339 = sub i64 %1338, 76
  %1340 = load i64, i64* %PC.i347
  %1341 = add i64 %1340, 3
  store i64 %1341, i64* %PC.i347
  %1342 = inttoptr i64 %1339 to i32*
  %1343 = load i32, i32* %1342
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_469c58, %struct.Memory** %MEMORY
  %loadMem_469c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %RAX.i346
  %1352 = load i64, i64* %PC.i345
  %1353 = add i64 %1352, 3
  store i64 %1353, i64* %PC.i345
  %1354 = trunc i64 %1351 to i32
  %1355 = add i32 1, %1354
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RAX.i346, align 8
  %1357 = icmp ult i32 %1355, %1354
  %1358 = icmp ult i32 %1355, 1
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1360, i8* %1361, align 1
  %1362 = and i32 %1355, 255
  %1363 = call i32 @llvm.ctpop.i32(i32 %1362)
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1366, i8* %1367, align 1
  %1368 = xor i64 1, %1351
  %1369 = trunc i64 %1368 to i32
  %1370 = xor i32 %1369, %1355
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1373, i8* %1374, align 1
  %1375 = icmp eq i32 %1355, 0
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1376, i8* %1377, align 1
  %1378 = lshr i32 %1355, 31
  %1379 = trunc i32 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i32 %1354, 31
  %1382 = xor i32 %1378, %1381
  %1383 = add i32 %1382, %1378
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1385, i8* %1386, align 1
  store %struct.Memory* %loadMem_469c5b, %struct.Memory** %MEMORY
  %loadMem_469c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 1
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %1392 to i32*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 15
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %RBP.i344
  %1397 = sub i64 %1396, 68
  %1398 = load i32, i32* %EAX.i343
  %1399 = zext i32 %1398 to i64
  %1400 = load i64, i64* %PC.i342
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC.i342
  %1402 = inttoptr i64 %1397 to i32*
  store i32 %1398, i32* %1402
  store %struct.Memory* %loadMem_469c5e, %struct.Memory** %MEMORY
  %loadMem_469c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %PC.i341
  %1407 = add i64 %1406, 10
  %1408 = load i64, i64* %PC.i341
  %1409 = add i64 %1408, 5
  store i64 %1409, i64* %PC.i341
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1407, i64* %1410, align 8
  store %struct.Memory* %loadMem_469c61, %struct.Memory** %MEMORY
  br label %block_.L_469c6b

block_.L_469c66:                                  ; preds = %block_.L_469c3e
  %loadMem_469c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %PC.i340
  %1415 = add i64 %1414, 592
  %1416 = load i64, i64* %PC.i340
  %1417 = add i64 %1416, 5
  store i64 %1417, i64* %PC.i340
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1415, i64* %1418, align 8
  store %struct.Memory* %loadMem_469c66, %struct.Memory** %MEMORY
  br label %block_.L_469eb6

block_.L_469c6b:                                  ; preds = %block_469c58
  %loadMem_469c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i339
  %1423 = add i64 %1422, 5
  %1424 = load i64, i64* %PC.i339
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i339
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1426, align 8
  store %struct.Memory* %loadMem_469c6b, %struct.Memory** %MEMORY
  br label %block_.L_469c70

block_.L_469c70:                                  ; preds = %block_.L_469c6b, %block_469c30
  %loadMem_469c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %PC.i338
  %1431 = add i64 %1430, 151
  %1432 = load i64, i64* %PC.i338
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC.i338
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1431, i64* %1434, align 8
  store %struct.Memory* %loadMem_469c70, %struct.Memory** %MEMORY
  br label %block_.L_469d07

block_.L_469c75:                                  ; preds = %block_469c05
  %loadMem_469c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 1
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 15
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RBP.i337
  %1445 = sub i64 %1444, 76
  %1446 = load i64, i64* %PC.i335
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC.i335
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448
  %1450 = zext i32 %1449 to i64
  store i64 %1450, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_469c75, %struct.Memory** %MEMORY
  %loadMem_469c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 5
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 15
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %RBP.i334
  %1461 = sub i64 %1460, 80
  %1462 = load i64, i64* %PC.i332
  %1463 = add i64 %1462, 3
  store i64 %1463, i64* %PC.i332
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_469c78, %struct.Memory** %MEMORY
  %loadMem_469c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 5
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RCX.i331
  %1474 = load i64, i64* %PC.i330
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %PC.i330
  %1476 = trunc i64 %1473 to i32
  %1477 = sub i32 %1476, 1
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RCX.i331, align 8
  %1479 = icmp ult i32 %1476, 1
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1480, i8* %1481, align 1
  %1482 = and i32 %1477, 255
  %1483 = call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1486, i8* %1487, align 1
  %1488 = xor i64 1, %1473
  %1489 = trunc i64 %1488 to i32
  %1490 = xor i32 %1489, %1477
  %1491 = lshr i32 %1490, 4
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1493, i8* %1494, align 1
  %1495 = icmp eq i32 %1477, 0
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1496, i8* %1497, align 1
  %1498 = lshr i32 %1477, 31
  %1499 = trunc i32 %1498 to i8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1499, i8* %1500, align 1
  %1501 = lshr i32 %1476, 31
  %1502 = xor i32 %1498, %1501
  %1503 = add i32 %1502, %1501
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1505, i8* %1506, align 1
  store %struct.Memory* %loadMem_469c7b, %struct.Memory** %MEMORY
  %loadMem_469c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 1
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %1512 to i32*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %ECX.i329 = bitcast %union.anon* %1515 to i32*
  %1516 = load i32, i32* %EAX.i328
  %1517 = zext i32 %1516 to i64
  %1518 = load i32, i32* %ECX.i329
  %1519 = zext i32 %1518 to i64
  %1520 = load i64, i64* %PC.i327
  %1521 = add i64 %1520, 2
  store i64 %1521, i64* %PC.i327
  %1522 = sub i32 %1516, %1518
  %1523 = icmp ult i32 %1516, %1518
  %1524 = zext i1 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1524, i8* %1525, align 1
  %1526 = and i32 %1522, 255
  %1527 = call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1530, i8* %1531, align 1
  %1532 = xor i64 %1519, %1517
  %1533 = trunc i64 %1532 to i32
  %1534 = xor i32 %1533, %1522
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1537, i8* %1538, align 1
  %1539 = icmp eq i32 %1522, 0
  %1540 = zext i1 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1540, i8* %1541, align 1
  %1542 = lshr i32 %1522, 31
  %1543 = trunc i32 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1543, i8* %1544, align 1
  %1545 = lshr i32 %1516, 31
  %1546 = lshr i32 %1518, 31
  %1547 = xor i32 %1546, %1545
  %1548 = xor i32 %1542, %1545
  %1549 = add i32 %1548, %1547
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1551, i8* %1552, align 1
  store %struct.Memory* %loadMem_469c7e, %struct.Memory** %MEMORY
  %loadMem_469c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %PC.i326
  %1557 = add i64 %1556, 23
  %1558 = load i64, i64* %PC.i326
  %1559 = add i64 %1558, 6
  %1560 = load i64, i64* %PC.i326
  %1561 = add i64 %1560, 6
  store i64 %1561, i64* %PC.i326
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1563 = load i8, i8* %1562, align 1
  store i8 %1563, i8* %BRANCH_TAKEN, align 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1565 = icmp ne i8 %1563, 0
  %1566 = select i1 %1565, i64 %1557, i64 %1559
  store i64 %1566, i64* %1564, align 8
  store %struct.Memory* %loadMem_469c80, %struct.Memory** %MEMORY
  %loadBr_469c80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469c80 = icmp eq i8 %loadBr_469c80, 1
  br i1 %cmpBr_469c80, label %block_.L_469c97, label %block_469c86

block_469c86:                                     ; preds = %block_.L_469c75
  %loadMem_469c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 1
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 15
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %RBP.i325
  %1577 = sub i64 %1576, 76
  %1578 = load i64, i64* %PC.i323
  %1579 = add i64 %1578, 3
  store i64 %1579, i64* %PC.i323
  %1580 = inttoptr i64 %1577 to i32*
  %1581 = load i32, i32* %1580
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_469c86, %struct.Memory** %MEMORY
  %loadMem_469c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 5
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 15
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %RBP.i322
  %1593 = sub i64 %1592, 80
  %1594 = load i64, i64* %PC.i320
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i320
  %1596 = inttoptr i64 %1593 to i32*
  %1597 = load i32, i32* %1596
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_469c89, %struct.Memory** %MEMORY
  %loadMem_469c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 5
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RCX.i319
  %1606 = load i64, i64* %PC.i318
  %1607 = add i64 %1606, 3
  store i64 %1607, i64* %PC.i318
  %1608 = trunc i64 %1605 to i32
  %1609 = add i32 1, %1608
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RCX.i319, align 8
  %1611 = icmp ult i32 %1609, %1608
  %1612 = icmp ult i32 %1609, 1
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1614, i8* %1615, align 1
  %1616 = and i32 %1609, 255
  %1617 = call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1620, i8* %1621, align 1
  %1622 = xor i64 1, %1605
  %1623 = trunc i64 %1622 to i32
  %1624 = xor i32 %1623, %1609
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1627, i8* %1628, align 1
  %1629 = icmp eq i32 %1609, 0
  %1630 = zext i1 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1630, i8* %1631, align 1
  %1632 = lshr i32 %1609, 31
  %1633 = trunc i32 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1633, i8* %1634, align 1
  %1635 = lshr i32 %1608, 31
  %1636 = xor i32 %1632, %1635
  %1637 = add i32 %1636, %1632
  %1638 = icmp eq i32 %1637, 2
  %1639 = zext i1 %1638 to i8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1639, i8* %1640, align 1
  store %struct.Memory* %loadMem_469c8c, %struct.Memory** %MEMORY
  %loadMem_469c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 1
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %1646 to i32*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 5
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %ECX.i317 = bitcast %union.anon* %1649 to i32*
  %1650 = load i32, i32* %EAX.i316
  %1651 = zext i32 %1650 to i64
  %1652 = load i32, i32* %ECX.i317
  %1653 = zext i32 %1652 to i64
  %1654 = load i64, i64* %PC.i315
  %1655 = add i64 %1654, 2
  store i64 %1655, i64* %PC.i315
  %1656 = sub i32 %1650, %1652
  %1657 = icmp ult i32 %1650, %1652
  %1658 = zext i1 %1657 to i8
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1658, i8* %1659, align 1
  %1660 = and i32 %1656, 255
  %1661 = call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1664, i8* %1665, align 1
  %1666 = xor i64 %1653, %1651
  %1667 = trunc i64 %1666 to i32
  %1668 = xor i32 %1667, %1656
  %1669 = lshr i32 %1668, 4
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1671, i8* %1672, align 1
  %1673 = icmp eq i32 %1656, 0
  %1674 = zext i1 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1674, i8* %1675, align 1
  %1676 = lshr i32 %1656, 31
  %1677 = trunc i32 %1676 to i8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1677, i8* %1678, align 1
  %1679 = lshr i32 %1650, 31
  %1680 = lshr i32 %1652, 31
  %1681 = xor i32 %1680, %1679
  %1682 = xor i32 %1676, %1679
  %1683 = add i32 %1682, %1681
  %1684 = icmp eq i32 %1683, 2
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1685, i8* %1686, align 1
  store %struct.Memory* %loadMem_469c8f, %struct.Memory** %MEMORY
  %loadMem_469c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1689 to i64*
  %1690 = load i64, i64* %PC.i314
  %1691 = add i64 %1690, 101
  %1692 = load i64, i64* %PC.i314
  %1693 = add i64 %1692, 6
  %1694 = load i64, i64* %PC.i314
  %1695 = add i64 %1694, 6
  store i64 %1695, i64* %PC.i314
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1697 = load i8, i8* %1696, align 1
  %1698 = icmp eq i8 %1697, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %BRANCH_TAKEN, align 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1701 = select i1 %1698, i64 %1691, i64 %1693
  store i64 %1701, i64* %1700, align 8
  store %struct.Memory* %loadMem_469c91, %struct.Memory** %MEMORY
  %loadBr_469c91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469c91 = icmp eq i8 %loadBr_469c91, 1
  br i1 %cmpBr_469c91, label %block_.L_469cf6, label %block_.L_469c97

block_.L_469c97:                                  ; preds = %block_469c86, %block_.L_469c75
  %loadMem_469c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 1
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 15
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %RBP.i313
  %1712 = sub i64 %1711, 76
  %1713 = load i64, i64* %PC.i311
  %1714 = add i64 %1713, 3
  store i64 %1714, i64* %PC.i311
  %1715 = inttoptr i64 %1712 to i32*
  %1716 = load i32, i32* %1715
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_469c97, %struct.Memory** %MEMORY
  %loadMem_469c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 1
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RAX.i310
  %1725 = load i64, i64* %PC.i309
  %1726 = add i64 %1725, 3
  store i64 %1726, i64* %PC.i309
  %1727 = trunc i64 %1724 to i32
  %1728 = add i32 20, %1727
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RAX.i310, align 8
  %1730 = icmp ult i32 %1728, %1727
  %1731 = icmp ult i32 %1728, 20
  %1732 = or i1 %1730, %1731
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1733, i8* %1734, align 1
  %1735 = and i32 %1728, 255
  %1736 = call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1739, i8* %1740, align 1
  %1741 = xor i64 20, %1724
  %1742 = trunc i64 %1741 to i32
  %1743 = xor i32 %1742, %1728
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1746, i8* %1747, align 1
  %1748 = icmp eq i32 %1728, 0
  %1749 = zext i1 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1749, i8* %1750, align 1
  %1751 = lshr i32 %1728, 31
  %1752 = trunc i32 %1751 to i8
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1752, i8* %1753, align 1
  %1754 = lshr i32 %1727, 31
  %1755 = xor i32 %1751, %1754
  %1756 = add i32 %1755, %1751
  %1757 = icmp eq i32 %1756, 2
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1758, i8* %1759, align 1
  store %struct.Memory* %loadMem_469c9a, %struct.Memory** %MEMORY
  %loadMem_469c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 1
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %EAX.i307 = bitcast %union.anon* %1765 to i32*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 5
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %1768 to i64*
  %1769 = load i32, i32* %EAX.i307
  %1770 = zext i32 %1769 to i64
  %1771 = load i64, i64* %PC.i306
  %1772 = add i64 %1771, 3
  store i64 %1772, i64* %PC.i306
  %1773 = shl i64 %1770, 32
  %1774 = ashr exact i64 %1773, 32
  store i64 %1774, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_469c9d, %struct.Memory** %MEMORY
  %loadMem_469ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 1
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 5
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RCX.i305
  %1785 = add i64 %1784, 12099168
  %1786 = load i64, i64* %PC.i303
  %1787 = add i64 %1786, 8
  store i64 %1787, i64* %PC.i303
  %1788 = inttoptr i64 %1785 to i8*
  %1789 = load i8, i8* %1788
  %1790 = zext i8 %1789 to i64
  store i64 %1790, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_469ca0, %struct.Memory** %MEMORY
  %loadMem_469ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 1
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %1796 to i32*
  %1797 = load i32, i32* %EAX.i302
  %1798 = zext i32 %1797 to i64
  %1799 = load i64, i64* %PC.i301
  %1800 = add i64 %1799, 3
  store i64 %1800, i64* %PC.i301
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1801, align 1
  %1802 = and i32 %1797, 255
  %1803 = call i32 @llvm.ctpop.i32(i32 %1802)
  %1804 = trunc i32 %1803 to i8
  %1805 = and i8 %1804, 1
  %1806 = xor i8 %1805, 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1806, i8* %1807, align 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1808, align 1
  %1809 = icmp eq i32 %1797, 0
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1810, i8* %1811, align 1
  %1812 = lshr i32 %1797, 31
  %1813 = trunc i32 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1813, i8* %1814, align 1
  %1815 = lshr i32 %1797, 31
  %1816 = xor i32 %1812, %1815
  %1817 = add i32 %1816, %1815
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1819, i8* %1820, align 1
  store %struct.Memory* %loadMem_469ca8, %struct.Memory** %MEMORY
  %loadMem_469cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1823 to i64*
  %1824 = load i64, i64* %PC.i300
  %1825 = add i64 %1824, 20
  %1826 = load i64, i64* %PC.i300
  %1827 = add i64 %1826, 6
  %1828 = load i64, i64* %PC.i300
  %1829 = add i64 %1828, 6
  store i64 %1829, i64* %PC.i300
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1831 = load i8, i8* %1830, align 1
  %1832 = icmp eq i8 %1831, 0
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %BRANCH_TAKEN, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1835 = select i1 %1832, i64 %1825, i64 %1827
  store i64 %1835, i64* %1834, align 8
  store %struct.Memory* %loadMem_469cab, %struct.Memory** %MEMORY
  %loadBr_469cab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469cab = icmp eq i8 %loadBr_469cab, 1
  br i1 %cmpBr_469cab, label %block_.L_469cbf, label %block_469cb1

block_469cb1:                                     ; preds = %block_.L_469c97
  %loadMem_469cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 15
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %RBP.i299
  %1846 = sub i64 %1845, 76
  %1847 = load i64, i64* %PC.i297
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i297
  %1849 = inttoptr i64 %1846 to i32*
  %1850 = load i32, i32* %1849
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_469cb1, %struct.Memory** %MEMORY
  %loadMem_469cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %RAX.i296
  %1859 = load i64, i64* %PC.i295
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %PC.i295
  %1861 = trunc i64 %1858 to i32
  %1862 = add i32 20, %1861
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RAX.i296, align 8
  %1864 = icmp ult i32 %1862, %1861
  %1865 = icmp ult i32 %1862, 20
  %1866 = or i1 %1864, %1865
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1867, i8* %1868, align 1
  %1869 = and i32 %1862, 255
  %1870 = call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1873, i8* %1874, align 1
  %1875 = xor i64 20, %1858
  %1876 = trunc i64 %1875 to i32
  %1877 = xor i32 %1876, %1862
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1880, i8* %1881, align 1
  %1882 = icmp eq i32 %1862, 0
  %1883 = zext i1 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1883, i8* %1884, align 1
  %1885 = lshr i32 %1862, 31
  %1886 = trunc i32 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1886, i8* %1887, align 1
  %1888 = lshr i32 %1861, 31
  %1889 = xor i32 %1885, %1888
  %1890 = add i32 %1889, %1885
  %1891 = icmp eq i32 %1890, 2
  %1892 = zext i1 %1891 to i8
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1892, i8* %1893, align 1
  store %struct.Memory* %loadMem_469cb4, %struct.Memory** %MEMORY
  %loadMem_469cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 33
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 1
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %1899 to i32*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 15
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1902 to i64*
  %1903 = load i64, i64* %RBP.i294
  %1904 = sub i64 %1903, 68
  %1905 = load i32, i32* %EAX.i293
  %1906 = zext i32 %1905 to i64
  %1907 = load i64, i64* %PC.i292
  %1908 = add i64 %1907, 3
  store i64 %1908, i64* %PC.i292
  %1909 = inttoptr i64 %1904 to i32*
  store i32 %1905, i32* %1909
  store %struct.Memory* %loadMem_469cb7, %struct.Memory** %MEMORY
  %loadMem_469cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %PC.i291
  %1914 = add i64 %1913, 55
  %1915 = load i64, i64* %PC.i291
  %1916 = add i64 %1915, 5
  store i64 %1916, i64* %PC.i291
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1914, i64* %1917, align 8
  store %struct.Memory* %loadMem_469cba, %struct.Memory** %MEMORY
  br label %block_.L_469cf1

block_.L_469cbf:                                  ; preds = %block_.L_469c97
  %loadMem_469cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i290
  %1928 = sub i64 %1927, 76
  %1929 = load i64, i64* %PC.i288
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i288
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_469cbf, %struct.Memory** %MEMORY
  %loadMem_469cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RAX.i287
  %1941 = load i64, i64* %PC.i286
  %1942 = add i64 %1941, 3
  store i64 %1942, i64* %PC.i286
  %1943 = trunc i64 %1940 to i32
  %1944 = sub i32 %1943, 20
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i287, align 8
  %1946 = icmp ult i32 %1943, 20
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1947, i8* %1948, align 1
  %1949 = and i32 %1944, 255
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = xor i64 20, %1940
  %1956 = trunc i64 %1955 to i32
  %1957 = xor i32 %1956, %1944
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1960, i8* %1961, align 1
  %1962 = icmp eq i32 %1944, 0
  %1963 = zext i1 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1963, i8* %1964, align 1
  %1965 = lshr i32 %1944, 31
  %1966 = trunc i32 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1966, i8* %1967, align 1
  %1968 = lshr i32 %1943, 31
  %1969 = xor i32 %1965, %1968
  %1970 = add i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1972, i8* %1973, align 1
  store %struct.Memory* %loadMem_469cc2, %struct.Memory** %MEMORY
  %loadMem_469cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 1
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %EAX.i284 = bitcast %union.anon* %1979 to i32*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 5
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %1982 to i64*
  %1983 = load i32, i32* %EAX.i284
  %1984 = zext i32 %1983 to i64
  %1985 = load i64, i64* %PC.i283
  %1986 = add i64 %1985, 3
  store i64 %1986, i64* %PC.i283
  %1987 = shl i64 %1984, 32
  %1988 = ashr exact i64 %1987, 32
  store i64 %1988, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_469cc5, %struct.Memory** %MEMORY
  %loadMem_469cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 1
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 5
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RCX.i282
  %1999 = add i64 %1998, 12099168
  %2000 = load i64, i64* %PC.i280
  %2001 = add i64 %2000, 8
  store i64 %2001, i64* %PC.i280
  %2002 = inttoptr i64 %1999 to i8*
  %2003 = load i8, i8* %2002
  %2004 = zext i8 %2003 to i64
  store i64 %2004, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_469cc8, %struct.Memory** %MEMORY
  %loadMem_469cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 1
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %2010 to i32*
  %2011 = load i32, i32* %EAX.i279
  %2012 = zext i32 %2011 to i64
  %2013 = load i64, i64* %PC.i278
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC.i278
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2015, align 1
  %2016 = and i32 %2011, 255
  %2017 = call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2020, i8* %2021, align 1
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2022, align 1
  %2023 = icmp eq i32 %2011, 0
  %2024 = zext i1 %2023 to i8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2024, i8* %2025, align 1
  %2026 = lshr i32 %2011, 31
  %2027 = trunc i32 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2027, i8* %2028, align 1
  %2029 = lshr i32 %2011, 31
  %2030 = xor i32 %2026, %2029
  %2031 = add i32 %2030, %2029
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2033, i8* %2034, align 1
  store %struct.Memory* %loadMem_469cd0, %struct.Memory** %MEMORY
  %loadMem_469cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %PC.i277
  %2039 = add i64 %2038, 20
  %2040 = load i64, i64* %PC.i277
  %2041 = add i64 %2040, 6
  %2042 = load i64, i64* %PC.i277
  %2043 = add i64 %2042, 6
  store i64 %2043, i64* %PC.i277
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2045 = load i8, i8* %2044, align 1
  %2046 = icmp eq i8 %2045, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %BRANCH_TAKEN, align 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2049 = select i1 %2046, i64 %2039, i64 %2041
  store i64 %2049, i64* %2048, align 8
  store %struct.Memory* %loadMem_469cd3, %struct.Memory** %MEMORY
  %loadBr_469cd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469cd3 = icmp eq i8 %loadBr_469cd3, 1
  br i1 %cmpBr_469cd3, label %block_.L_469ce7, label %block_469cd9

block_469cd9:                                     ; preds = %block_.L_469cbf
  %loadMem_469cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 1
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 15
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %RBP.i276
  %2060 = sub i64 %2059, 76
  %2061 = load i64, i64* %PC.i274
  %2062 = add i64 %2061, 3
  store i64 %2062, i64* %PC.i274
  %2063 = inttoptr i64 %2060 to i32*
  %2064 = load i32, i32* %2063
  %2065 = zext i32 %2064 to i64
  store i64 %2065, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_469cd9, %struct.Memory** %MEMORY
  %loadMem_469cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 1
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %RAX.i273
  %2073 = load i64, i64* %PC.i272
  %2074 = add i64 %2073, 3
  store i64 %2074, i64* %PC.i272
  %2075 = trunc i64 %2072 to i32
  %2076 = sub i32 %2075, 20
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RAX.i273, align 8
  %2078 = icmp ult i32 %2075, 20
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2079, i8* %2080, align 1
  %2081 = and i32 %2076, 255
  %2082 = call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2085, i8* %2086, align 1
  %2087 = xor i64 20, %2072
  %2088 = trunc i64 %2087 to i32
  %2089 = xor i32 %2088, %2076
  %2090 = lshr i32 %2089, 4
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2092, i8* %2093, align 1
  %2094 = icmp eq i32 %2076, 0
  %2095 = zext i1 %2094 to i8
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2095, i8* %2096, align 1
  %2097 = lshr i32 %2076, 31
  %2098 = trunc i32 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2098, i8* %2099, align 1
  %2100 = lshr i32 %2075, 31
  %2101 = xor i32 %2097, %2100
  %2102 = add i32 %2101, %2100
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2104, i8* %2105, align 1
  store %struct.Memory* %loadMem_469cdc, %struct.Memory** %MEMORY
  %loadMem_469cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %2111 to i32*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 15
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RBP.i271
  %2116 = sub i64 %2115, 68
  %2117 = load i32, i32* %EAX.i270
  %2118 = zext i32 %2117 to i64
  %2119 = load i64, i64* %PC.i269
  %2120 = add i64 %2119, 3
  store i64 %2120, i64* %PC.i269
  %2121 = inttoptr i64 %2116 to i32*
  store i32 %2117, i32* %2121
  store %struct.Memory* %loadMem_469cdf, %struct.Memory** %MEMORY
  %loadMem_469ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %PC.i268
  %2126 = add i64 %2125, 10
  %2127 = load i64, i64* %PC.i268
  %2128 = add i64 %2127, 5
  store i64 %2128, i64* %PC.i268
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2126, i64* %2129, align 8
  store %struct.Memory* %loadMem_469ce2, %struct.Memory** %MEMORY
  br label %block_.L_469cec

block_.L_469ce7:                                  ; preds = %block_.L_469cbf
  %loadMem_469ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %PC.i267
  %2134 = add i64 %2133, 463
  %2135 = load i64, i64* %PC.i267
  %2136 = add i64 %2135, 5
  store i64 %2136, i64* %PC.i267
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2134, i64* %2137, align 8
  store %struct.Memory* %loadMem_469ce7, %struct.Memory** %MEMORY
  br label %block_.L_469eb6

block_.L_469cec:                                  ; preds = %block_469cd9
  %loadMem_469cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 33
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %PC.i266
  %2142 = add i64 %2141, 5
  %2143 = load i64, i64* %PC.i266
  %2144 = add i64 %2143, 5
  store i64 %2144, i64* %PC.i266
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2142, i64* %2145, align 8
  store %struct.Memory* %loadMem_469cec, %struct.Memory** %MEMORY
  br label %block_.L_469cf1

block_.L_469cf1:                                  ; preds = %block_.L_469cec, %block_469cb1
  %loadMem_469cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %PC.i265
  %2150 = add i64 %2149, 17
  %2151 = load i64, i64* %PC.i265
  %2152 = add i64 %2151, 5
  store i64 %2152, i64* %PC.i265
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2150, i64* %2153, align 8
  store %struct.Memory* %loadMem_469cf1, %struct.Memory** %MEMORY
  br label %block_.L_469d02

block_.L_469cf6:                                  ; preds = %block_469c86
  %loadMem_469cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 15
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %RBP.i264
  %2161 = sub i64 %2160, 4
  %2162 = load i64, i64* %PC.i263
  %2163 = add i64 %2162, 7
  store i64 %2163, i64* %PC.i263
  %2164 = inttoptr i64 %2161 to i32*
  store i32 0, i32* %2164
  store %struct.Memory* %loadMem_469cf6, %struct.Memory** %MEMORY
  %loadMem_469cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %PC.i262
  %2169 = add i64 %2168, 480
  %2170 = load i64, i64* %PC.i262
  %2171 = add i64 %2170, 5
  store i64 %2171, i64* %PC.i262
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2169, i64* %2172, align 8
  store %struct.Memory* %loadMem_469cfd, %struct.Memory** %MEMORY
  br label %block_.L_469edd

block_.L_469d02:                                  ; preds = %block_.L_469cf1
  %loadMem_469d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %PC.i261
  %2177 = add i64 %2176, 5
  %2178 = load i64, i64* %PC.i261
  %2179 = add i64 %2178, 5
  store i64 %2179, i64* %PC.i261
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2177, i64* %2180, align 8
  store %struct.Memory* %loadMem_469d02, %struct.Memory** %MEMORY
  br label %block_.L_469d07

block_.L_469d07:                                  ; preds = %block_.L_469d02, %block_.L_469c70
  %loadMem_469d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 11
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 15
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RBP.i260
  %2191 = sub i64 %2190, 68
  %2192 = load i64, i64* %PC.i258
  %2193 = add i64 %2192, 3
  store i64 %2193, i64* %PC.i258
  %2194 = inttoptr i64 %2191 to i32*
  %2195 = load i32, i32* %2194
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RDI.i259, align 8
  store %struct.Memory* %loadMem_469d07, %struct.Memory** %MEMORY
  %loadMem_469d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 9
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 15
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2205 to i64*
  %2206 = load i64, i64* %RBP.i257
  %2207 = sub i64 %2206, 40
  %2208 = load i64, i64* %PC.i255
  %2209 = add i64 %2208, 3
  store i64 %2209, i64* %PC.i255
  %2210 = inttoptr i64 %2207 to i32*
  %2211 = load i32, i32* %2210
  %2212 = zext i32 %2211 to i64
  store i64 %2212, i64* %RSI.i256, align 8
  store %struct.Memory* %loadMem_469d0a, %struct.Memory** %MEMORY
  %loadMem1_469d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %PC.i254
  %2217 = add i64 %2216, -350829
  %2218 = load i64, i64* %PC.i254
  %2219 = add i64 %2218, 5
  %2220 = load i64, i64* %PC.i254
  %2221 = add i64 %2220, 5
  store i64 %2221, i64* %PC.i254
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2223 = load i64, i64* %2222, align 8
  %2224 = add i64 %2223, -8
  %2225 = inttoptr i64 %2224 to i64*
  store i64 %2219, i64* %2225
  store i64 %2224, i64* %2222, align 8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2217, i64* %2226, align 8
  store %struct.Memory* %loadMem1_469d0d, %struct.Memory** %MEMORY
  %loadMem2_469d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469d0d = load i64, i64* %3
  %call2_469d0d = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_469d0d, %struct.Memory* %loadMem2_469d0d)
  store %struct.Memory* %call2_469d0d, %struct.Memory** %MEMORY
  %loadMem_469d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 1
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %EAX.i253 = bitcast %union.anon* %2232 to i32*
  %2233 = load i32, i32* %EAX.i253
  %2234 = zext i32 %2233 to i64
  %2235 = load i64, i64* %PC.i252
  %2236 = add i64 %2235, 3
  store i64 %2236, i64* %PC.i252
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2237, align 1
  %2238 = and i32 %2233, 255
  %2239 = call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2242, i8* %2243, align 1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2244, align 1
  %2245 = icmp eq i32 %2233, 0
  %2246 = zext i1 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2246, i8* %2247, align 1
  %2248 = lshr i32 %2233, 31
  %2249 = trunc i32 %2248 to i8
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2249, i8* %2250, align 1
  %2251 = lshr i32 %2233, 31
  %2252 = xor i32 %2248, %2251
  %2253 = add i32 %2252, %2251
  %2254 = icmp eq i32 %2253, 2
  %2255 = zext i1 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2255, i8* %2256, align 1
  store %struct.Memory* %loadMem_469d12, %struct.Memory** %MEMORY
  %loadMem_469d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %PC.i251
  %2261 = add i64 %2260, 47
  %2262 = load i64, i64* %PC.i251
  %2263 = add i64 %2262, 6
  %2264 = load i64, i64* %PC.i251
  %2265 = add i64 %2264, 6
  store i64 %2265, i64* %PC.i251
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2267 = load i8, i8* %2266, align 1
  %2268 = icmp eq i8 %2267, 0
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %BRANCH_TAKEN, align 1
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2271 = select i1 %2268, i64 %2261, i64 %2263
  store i64 %2271, i64* %2270, align 8
  store %struct.Memory* %loadMem_469d15, %struct.Memory** %MEMORY
  %loadBr_469d15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469d15 = icmp eq i8 %loadBr_469d15, 1
  br i1 %cmpBr_469d15, label %block_.L_469d44, label %block_469d1b

block_469d1b:                                     ; preds = %block_.L_469d07
  %loadMem_469d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 7
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %PC.i249
  %2279 = add i64 %2278, 10
  store i64 %2279, i64* %PC.i249
  store i64 ptrtoint (%G__0x57fe8a_type* @G__0x57fe8a to i64), i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_469d1b, %struct.Memory** %MEMORY
  %loadMem_469d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 11
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 15
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RBP.i248
  %2290 = sub i64 %2289, 68
  %2291 = load i64, i64* %PC.i246
  %2292 = add i64 %2291, 3
  store i64 %2292, i64* %PC.i246
  %2293 = inttoptr i64 %2290 to i32*
  %2294 = load i32, i32* %2293
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_469d25, %struct.Memory** %MEMORY
  %loadMem_469d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 9
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RSI.i244 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 15
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %RBP.i245
  %2306 = sub i64 %2305, 40
  %2307 = load i64, i64* %PC.i243
  %2308 = add i64 %2307, 3
  store i64 %2308, i64* %PC.i243
  %2309 = inttoptr i64 %2306 to i32*
  %2310 = load i32, i32* %2309
  %2311 = zext i32 %2310 to i64
  store i64 %2311, i64* %RSI.i244, align 8
  store %struct.Memory* %loadMem_469d28, %struct.Memory** %MEMORY
  %loadMem_469d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 5
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 15
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2320 to i64*
  %2321 = load i64, i64* %RBP.i242
  %2322 = sub i64 %2321, 8
  %2323 = load i64, i64* %PC.i240
  %2324 = add i64 %2323, 3
  store i64 %2324, i64* %PC.i240
  %2325 = inttoptr i64 %2322 to i32*
  %2326 = load i32, i32* %2325
  %2327 = zext i32 %2326 to i64
  store i64 %2327, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_469d2b, %struct.Memory** %MEMORY
  %loadMem_469d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 17
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %R8D.i238 = bitcast %union.anon* %2333 to i32*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 15
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2336 to i64*
  %2337 = bitcast i32* %R8D.i238 to i64*
  %2338 = load i64, i64* %RBP.i239
  %2339 = sub i64 %2338, 28
  %2340 = load i64, i64* %PC.i237
  %2341 = add i64 %2340, 4
  store i64 %2341, i64* %PC.i237
  %2342 = inttoptr i64 %2339 to i32*
  %2343 = load i32, i32* %2342
  %2344 = zext i32 %2343 to i64
  store i64 %2344, i64* %2337, align 8
  store %struct.Memory* %loadMem_469d2e, %struct.Memory** %MEMORY
  %loadMem_469d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 19
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %R9D.i235 = bitcast %union.anon* %2350 to i32*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 15
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %2353 to i64*
  %2354 = bitcast i32* %R9D.i235 to i64*
  %2355 = load i64, i64* %RBP.i236
  %2356 = sub i64 %2355, 32
  %2357 = load i64, i64* %PC.i234
  %2358 = add i64 %2357, 4
  store i64 %2358, i64* %PC.i234
  %2359 = inttoptr i64 %2356 to i32*
  %2360 = load i32, i32* %2359
  %2361 = zext i32 %2360 to i64
  store i64 %2361, i64* %2354, align 8
  store %struct.Memory* %loadMem_469d32, %struct.Memory** %MEMORY
  %loadMem1_469d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %PC.i233
  %2366 = add i64 %2365, -397062
  %2367 = load i64, i64* %PC.i233
  %2368 = add i64 %2367, 5
  %2369 = load i64, i64* %PC.i233
  %2370 = add i64 %2369, 5
  store i64 %2370, i64* %PC.i233
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2372 = load i64, i64* %2371, align 8
  %2373 = add i64 %2372, -8
  %2374 = inttoptr i64 %2373 to i64*
  store i64 %2368, i64* %2374
  store i64 %2373, i64* %2371, align 8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2366, i64* %2375, align 8
  store %struct.Memory* %loadMem1_469d36, %struct.Memory** %MEMORY
  %loadMem2_469d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469d36 = load i64, i64* %3
  %call2_469d36 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_469d36, %struct.Memory* %loadMem2_469d36)
  store %struct.Memory* %call2_469d36, %struct.Memory** %MEMORY
  %loadMem_469d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 1
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %2381 to i32*
  %2382 = load i32, i32* %EAX.i232
  %2383 = zext i32 %2382 to i64
  %2384 = load i64, i64* %PC.i231
  %2385 = add i64 %2384, 3
  store i64 %2385, i64* %PC.i231
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2386, align 1
  %2387 = and i32 %2382, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2393, align 1
  %2394 = icmp eq i32 %2382, 0
  %2395 = zext i1 %2394 to i8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2395, i8* %2396, align 1
  %2397 = lshr i32 %2382, 31
  %2398 = trunc i32 %2397 to i8
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2398, i8* %2399, align 1
  %2400 = lshr i32 %2382, 31
  %2401 = xor i32 %2397, %2400
  %2402 = add i32 %2401, %2400
  %2403 = icmp eq i32 %2402, 2
  %2404 = zext i1 %2403 to i8
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2404, i8* %2405, align 1
  store %struct.Memory* %loadMem_469d3b, %struct.Memory** %MEMORY
  %loadMem_469d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %PC.i230
  %2410 = add i64 %2409, 11
  %2411 = load i64, i64* %PC.i230
  %2412 = add i64 %2411, 6
  %2413 = load i64, i64* %PC.i230
  %2414 = add i64 %2413, 6
  store i64 %2414, i64* %PC.i230
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2416 = load i8, i8* %2415, align 1
  %2417 = icmp eq i8 %2416, 0
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %BRANCH_TAKEN, align 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2420 = select i1 %2417, i64 %2410, i64 %2412
  store i64 %2420, i64* %2419, align 8
  store %struct.Memory* %loadMem_469d3e, %struct.Memory** %MEMORY
  %loadBr_469d3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469d3e = icmp eq i8 %loadBr_469d3e, 1
  br i1 %cmpBr_469d3e, label %block_.L_469d49, label %block_.L_469d44

block_.L_469d44:                                  ; preds = %block_469d1b, %block_.L_469d07
  %loadMem_469d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %PC.i229
  %2425 = add i64 %2424, 370
  %2426 = load i64, i64* %PC.i229
  %2427 = add i64 %2426, 5
  store i64 %2427, i64* %PC.i229
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2425, i64* %2428, align 8
  store %struct.Memory* %loadMem_469d44, %struct.Memory** %MEMORY
  br label %block_.L_469eb6

block_.L_469d49:                                  ; preds = %block_469d1b
  %loadMem_469d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 11
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RDI.i227 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RBP.i228
  %2439 = sub i64 %2438, 68
  %2440 = load i64, i64* %PC.i226
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC.i226
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RDI.i227, align 8
  store %struct.Memory* %loadMem_469d49, %struct.Memory** %MEMORY
  %loadMem1_469d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2447 to i64*
  %2448 = load i64, i64* %PC.i225
  %2449 = add i64 %2448, -370124
  %2450 = load i64, i64* %PC.i225
  %2451 = add i64 %2450, 5
  %2452 = load i64, i64* %PC.i225
  %2453 = add i64 %2452, 5
  store i64 %2453, i64* %PC.i225
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2455 = load i64, i64* %2454, align 8
  %2456 = add i64 %2455, -8
  %2457 = inttoptr i64 %2456 to i64*
  store i64 %2451, i64* %2457
  store i64 %2456, i64* %2454, align 8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2449, i64* %2458, align 8
  store %struct.Memory* %loadMem1_469d4c, %struct.Memory** %MEMORY
  %loadMem2_469d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469d4c = load i64, i64* %3
  %call2_469d4c = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_469d4c, %struct.Memory* %loadMem2_469d4c)
  store %struct.Memory* %call2_469d4c, %struct.Memory** %MEMORY
  %loadMem_469d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 1
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %2464 to i32*
  %2465 = load i32, i32* %EAX.i224
  %2466 = zext i32 %2465 to i64
  %2467 = load i64, i64* %PC.i223
  %2468 = add i64 %2467, 3
  store i64 %2468, i64* %PC.i223
  %2469 = sub i32 %2465, 2
  %2470 = icmp ult i32 %2465, 2
  %2471 = zext i1 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2471, i8* %2472, align 1
  %2473 = and i32 %2469, 255
  %2474 = call i32 @llvm.ctpop.i32(i32 %2473)
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = xor i8 %2476, 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2477, i8* %2478, align 1
  %2479 = xor i64 2, %2466
  %2480 = trunc i64 %2479 to i32
  %2481 = xor i32 %2480, %2469
  %2482 = lshr i32 %2481, 4
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2484, i8* %2485, align 1
  %2486 = icmp eq i32 %2469, 0
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2487, i8* %2488, align 1
  %2489 = lshr i32 %2469, 31
  %2490 = trunc i32 %2489 to i8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2490, i8* %2491, align 1
  %2492 = lshr i32 %2465, 31
  %2493 = xor i32 %2489, %2492
  %2494 = add i32 %2493, %2492
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2496, i8* %2497, align 1
  store %struct.Memory* %loadMem_469d51, %struct.Memory** %MEMORY
  %loadMem_469d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i222
  %2502 = add i64 %2501, 206
  %2503 = load i64, i64* %PC.i222
  %2504 = add i64 %2503, 6
  %2505 = load i64, i64* %PC.i222
  %2506 = add i64 %2505, 6
  store i64 %2506, i64* %PC.i222
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2508 = load i8, i8* %2507, align 1
  %2509 = icmp eq i8 %2508, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %BRANCH_TAKEN, align 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2512 = select i1 %2509, i64 %2502, i64 %2504
  store i64 %2512, i64* %2511, align 8
  store %struct.Memory* %loadMem_469d54, %struct.Memory** %MEMORY
  %loadBr_469d54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469d54 = icmp eq i8 %loadBr_469d54, 1
  br i1 %cmpBr_469d54, label %block_.L_469e22, label %block_469d5a

block_469d5a:                                     ; preds = %block_.L_469d49
  %loadMem_469d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 9
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RSI.i221 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %PC.i220
  %2520 = add i64 %2519, 5
  store i64 %2520, i64* %PC.i220
  store i64 2, i64* %RSI.i221, align 8
  store %struct.Memory* %loadMem_469d5a, %struct.Memory** %MEMORY
  %loadMem_469d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 7
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 15
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %2529 to i64*
  %2530 = load i64, i64* %RBP.i219
  %2531 = sub i64 %2530, 64
  %2532 = load i64, i64* %PC.i217
  %2533 = add i64 %2532, 4
  store i64 %2533, i64* %PC.i217
  store i64 %2531, i64* %RDX.i218, align 8
  store %struct.Memory* %loadMem_469d5f, %struct.Memory** %MEMORY
  %loadMem_469d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 11
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RDI.i215 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 15
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RBP.i216
  %2544 = sub i64 %2543, 68
  %2545 = load i64, i64* %PC.i214
  %2546 = add i64 %2545, 3
  store i64 %2546, i64* %PC.i214
  %2547 = inttoptr i64 %2544 to i32*
  %2548 = load i32, i32* %2547
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %RDI.i215, align 8
  store %struct.Memory* %loadMem_469d63, %struct.Memory** %MEMORY
  %loadMem1_469d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2552 to i64*
  %2553 = load i64, i64* %PC.i213
  %2554 = add i64 %2553, -369958
  %2555 = load i64, i64* %PC.i213
  %2556 = add i64 %2555, 5
  %2557 = load i64, i64* %PC.i213
  %2558 = add i64 %2557, 5
  store i64 %2558, i64* %PC.i213
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2560 = load i64, i64* %2559, align 8
  %2561 = add i64 %2560, -8
  %2562 = inttoptr i64 %2561 to i64*
  store i64 %2556, i64* %2562
  store i64 %2561, i64* %2559, align 8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2554, i64* %2563, align 8
  store %struct.Memory* %loadMem1_469d66, %struct.Memory** %MEMORY
  %loadMem2_469d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469d66 = load i64, i64* %3
  %call2_469d66 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_469d66, %struct.Memory* %loadMem2_469d66)
  store %struct.Memory* %call2_469d66, %struct.Memory** %MEMORY
  %loadMem_469d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 9
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RSI.i211 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RBP.i212
  %2574 = sub i64 %2573, 64
  %2575 = load i64, i64* %PC.i210
  %2576 = add i64 %2575, 3
  store i64 %2576, i64* %PC.i210
  %2577 = inttoptr i64 %2574 to i32*
  %2578 = load i32, i32* %2577
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RSI.i211, align 8
  store %struct.Memory* %loadMem_469d6b, %struct.Memory** %MEMORY
  %loadMem_469d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 9
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2585 to i32*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 15
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %2588 to i64*
  %2589 = load i32, i32* %ESI.i
  %2590 = zext i32 %2589 to i64
  %2591 = load i64, i64* %RBP.i209
  %2592 = sub i64 %2591, 76
  %2593 = load i64, i64* %PC.i208
  %2594 = add i64 %2593, 3
  store i64 %2594, i64* %PC.i208
  %2595 = inttoptr i64 %2592 to i32*
  %2596 = load i32, i32* %2595
  %2597 = sub i32 %2589, %2596
  %2598 = icmp ult i32 %2589, %2596
  %2599 = zext i1 %2598 to i8
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2599, i8* %2600, align 1
  %2601 = and i32 %2597, 255
  %2602 = call i32 @llvm.ctpop.i32(i32 %2601)
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = xor i8 %2604, 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2605, i8* %2606, align 1
  %2607 = xor i32 %2596, %2589
  %2608 = xor i32 %2607, %2597
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2611, i8* %2612, align 1
  %2613 = icmp eq i32 %2597, 0
  %2614 = zext i1 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2614, i8* %2615, align 1
  %2616 = lshr i32 %2597, 31
  %2617 = trunc i32 %2616 to i8
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2617, i8* %2618, align 1
  %2619 = lshr i32 %2589, 31
  %2620 = lshr i32 %2596, 31
  %2621 = xor i32 %2620, %2619
  %2622 = xor i32 %2616, %2619
  %2623 = add i32 %2622, %2621
  %2624 = icmp eq i32 %2623, 2
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2625, i8* %2626, align 1
  store %struct.Memory* %loadMem_469d6e, %struct.Memory** %MEMORY
  %loadMem_469d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 1
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %2632 to i32*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 15
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %RBP.i207
  %2637 = sub i64 %2636, 88
  %2638 = load i32, i32* %EAX.i206
  %2639 = zext i32 %2638 to i64
  %2640 = load i64, i64* %PC.i205
  %2641 = add i64 %2640, 3
  store i64 %2641, i64* %PC.i205
  %2642 = inttoptr i64 %2637 to i32*
  store i32 %2638, i32* %2642
  store %struct.Memory* %loadMem_469d71, %struct.Memory** %MEMORY
  %loadMem_469d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %PC.i204
  %2647 = add i64 %2646, 17
  %2648 = load i64, i64* %PC.i204
  %2649 = add i64 %2648, 6
  %2650 = load i64, i64* %PC.i204
  %2651 = add i64 %2650, 6
  store i64 %2651, i64* %PC.i204
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2653 = load i8, i8* %2652, align 1
  %2654 = icmp eq i8 %2653, 0
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %BRANCH_TAKEN, align 1
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2657 = select i1 %2654, i64 %2647, i64 %2649
  store i64 %2657, i64* %2656, align 8
  store %struct.Memory* %loadMem_469d74, %struct.Memory** %MEMORY
  %loadBr_469d74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469d74 = icmp eq i8 %loadBr_469d74, 1
  br i1 %cmpBr_469d74, label %block_.L_469d85, label %block_469d7a

block_469d7a:                                     ; preds = %block_469d5a
  %loadMem_469d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 33
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 1
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 15
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RBP.i203
  %2668 = sub i64 %2667, 60
  %2669 = load i64, i64* %PC.i201
  %2670 = add i64 %2669, 3
  store i64 %2670, i64* %PC.i201
  %2671 = inttoptr i64 %2668 to i32*
  %2672 = load i32, i32* %2671
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_469d7a, %struct.Memory** %MEMORY
  %loadMem_469d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %EAX.i199 = bitcast %union.anon* %2679 to i32*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i200
  %2684 = sub i64 %2683, 72
  %2685 = load i32, i32* %EAX.i199
  %2686 = zext i32 %2685 to i64
  %2687 = load i64, i64* %PC.i198
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC.i198
  %2689 = inttoptr i64 %2684 to i32*
  store i32 %2685, i32* %2689
  store %struct.Memory* %loadMem_469d7d, %struct.Memory** %MEMORY
  %loadMem_469d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2692 to i64*
  %2693 = load i64, i64* %PC.i197
  %2694 = add i64 %2693, 11
  %2695 = load i64, i64* %PC.i197
  %2696 = add i64 %2695, 5
  store i64 %2696, i64* %PC.i197
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2694, i64* %2697, align 8
  store %struct.Memory* %loadMem_469d80, %struct.Memory** %MEMORY
  br label %block_.L_469d8b

block_.L_469d85:                                  ; preds = %block_469d5a
  %loadMem_469d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 1
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i196
  %2708 = sub i64 %2707, 64
  %2709 = load i64, i64* %PC.i194
  %2710 = add i64 %2709, 3
  store i64 %2710, i64* %PC.i194
  %2711 = inttoptr i64 %2708 to i32*
  %2712 = load i32, i32* %2711
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RAX.i195, align 8
  store %struct.Memory* %loadMem_469d85, %struct.Memory** %MEMORY
  %loadMem_469d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %2719 to i32*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i193
  %2724 = sub i64 %2723, 72
  %2725 = load i32, i32* %EAX.i192
  %2726 = zext i32 %2725 to i64
  %2727 = load i64, i64* %PC.i191
  %2728 = add i64 %2727, 3
  store i64 %2728, i64* %PC.i191
  %2729 = inttoptr i64 %2724 to i32*
  store i32 %2725, i32* %2729
  store %struct.Memory* %loadMem_469d88, %struct.Memory** %MEMORY
  br label %block_.L_469d8b

block_.L_469d8b:                                  ; preds = %block_.L_469d85, %block_469d7a
  %loadMem_469d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 11
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RDI.i189 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 15
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %RBP.i190
  %2740 = sub i64 %2739, 72
  %2741 = load i64, i64* %PC.i188
  %2742 = add i64 %2741, 3
  store i64 %2742, i64* %PC.i188
  %2743 = inttoptr i64 %2740 to i32*
  %2744 = load i32, i32* %2743
  %2745 = zext i32 %2744 to i64
  store i64 %2745, i64* %RDI.i189, align 8
  store %struct.Memory* %loadMem_469d8b, %struct.Memory** %MEMORY
  %loadMem_469d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 9
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 15
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RBP.i187
  %2756 = sub i64 %2755, 36
  %2757 = load i64, i64* %PC.i185
  %2758 = add i64 %2757, 3
  store i64 %2758, i64* %PC.i185
  %2759 = inttoptr i64 %2756 to i32*
  %2760 = load i32, i32* %2759
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RSI.i186, align 8
  store %struct.Memory* %loadMem_469d8e, %struct.Memory** %MEMORY
  %loadMem1_469d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %PC.i184
  %2766 = add i64 %2765, -350961
  %2767 = load i64, i64* %PC.i184
  %2768 = add i64 %2767, 5
  %2769 = load i64, i64* %PC.i184
  %2770 = add i64 %2769, 5
  store i64 %2770, i64* %PC.i184
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2772 = load i64, i64* %2771, align 8
  %2773 = add i64 %2772, -8
  %2774 = inttoptr i64 %2773 to i64*
  store i64 %2768, i64* %2774
  store i64 %2773, i64* %2771, align 8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2766, i64* %2775, align 8
  store %struct.Memory* %loadMem1_469d91, %struct.Memory** %MEMORY
  %loadMem2_469d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469d91 = load i64, i64* %3
  %call2_469d91 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_469d91, %struct.Memory* %loadMem2_469d91)
  store %struct.Memory* %call2_469d91, %struct.Memory** %MEMORY
  %loadMem_469d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 1
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %2781 to i32*
  %2782 = load i32, i32* %EAX.i183
  %2783 = zext i32 %2782 to i64
  %2784 = load i64, i64* %PC.i182
  %2785 = add i64 %2784, 3
  store i64 %2785, i64* %PC.i182
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2786, align 1
  %2787 = and i32 %2782, 255
  %2788 = call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2791, i8* %2792, align 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2793, align 1
  %2794 = icmp eq i32 %2782, 0
  %2795 = zext i1 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2795, i8* %2796, align 1
  %2797 = lshr i32 %2782, 31
  %2798 = trunc i32 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2798, i8* %2799, align 1
  %2800 = lshr i32 %2782, 31
  %2801 = xor i32 %2797, %2800
  %2802 = add i32 %2801, %2800
  %2803 = icmp eq i32 %2802, 2
  %2804 = zext i1 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2804, i8* %2805, align 1
  store %struct.Memory* %loadMem_469d96, %struct.Memory** %MEMORY
  %loadMem_469d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %PC.i181
  %2810 = add i64 %2809, 132
  %2811 = load i64, i64* %PC.i181
  %2812 = add i64 %2811, 6
  %2813 = load i64, i64* %PC.i181
  %2814 = add i64 %2813, 6
  store i64 %2814, i64* %PC.i181
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2816 = load i8, i8* %2815, align 1
  %2817 = icmp eq i8 %2816, 0
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %BRANCH_TAKEN, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2820 = select i1 %2817, i64 %2810, i64 %2812
  store i64 %2820, i64* %2819, align 8
  store %struct.Memory* %loadMem_469d99, %struct.Memory** %MEMORY
  %loadBr_469d99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469d99 = icmp eq i8 %loadBr_469d99, 1
  br i1 %cmpBr_469d99, label %block_.L_469e1d, label %block_469d9f

block_469d9f:                                     ; preds = %block_.L_469d8b
  %loadMem_469d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 7
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %PC.i179
  %2828 = add i64 %2827, 10
  store i64 %2828, i64* %PC.i179
  store i64 ptrtoint (%G__0x57fe9c_type* @G__0x57fe9c to i64), i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_469d9f, %struct.Memory** %MEMORY
  %loadMem_469da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 11
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 15
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RBP.i178
  %2839 = sub i64 %2838, 72
  %2840 = load i64, i64* %PC.i176
  %2841 = add i64 %2840, 3
  store i64 %2841, i64* %PC.i176
  %2842 = inttoptr i64 %2839 to i32*
  %2843 = load i32, i32* %2842
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_469da9, %struct.Memory** %MEMORY
  %loadMem_469dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 9
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RSI.i174 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 15
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %RBP.i175
  %2855 = sub i64 %2854, 36
  %2856 = load i64, i64* %PC.i173
  %2857 = add i64 %2856, 3
  store i64 %2857, i64* %PC.i173
  %2858 = inttoptr i64 %2855 to i32*
  %2859 = load i32, i32* %2858
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RSI.i174, align 8
  store %struct.Memory* %loadMem_469dac, %struct.Memory** %MEMORY
  %loadMem_469daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 5
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i172
  %2871 = sub i64 %2870, 8
  %2872 = load i64, i64* %PC.i170
  %2873 = add i64 %2872, 3
  store i64 %2873, i64* %PC.i170
  %2874 = inttoptr i64 %2871 to i32*
  %2875 = load i32, i32* %2874
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_469daf, %struct.Memory** %MEMORY
  %loadMem_469db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 17
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2882 to i32*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 15
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2885 to i64*
  %2886 = bitcast i32* %R8D.i to i64*
  %2887 = load i64, i64* %RBP.i169
  %2888 = sub i64 %2887, 28
  %2889 = load i64, i64* %PC.i168
  %2890 = add i64 %2889, 4
  store i64 %2890, i64* %PC.i168
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %2886, align 8
  store %struct.Memory* %loadMem_469db2, %struct.Memory** %MEMORY
  %loadMem_469db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 19
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %2899 to i32*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 15
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2902 to i64*
  %2903 = bitcast i32* %R9D.i to i64*
  %2904 = load i64, i64* %RBP.i167
  %2905 = sub i64 %2904, 32
  %2906 = load i64, i64* %PC.i166
  %2907 = add i64 %2906, 4
  store i64 %2907, i64* %PC.i166
  %2908 = inttoptr i64 %2905 to i32*
  %2909 = load i32, i32* %2908
  %2910 = zext i32 %2909 to i64
  store i64 %2910, i64* %2903, align 8
  store %struct.Memory* %loadMem_469db6, %struct.Memory** %MEMORY
  %loadMem1_469dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2913 to i64*
  %2914 = load i64, i64* %PC.i165
  %2915 = add i64 %2914, -397194
  %2916 = load i64, i64* %PC.i165
  %2917 = add i64 %2916, 5
  %2918 = load i64, i64* %PC.i165
  %2919 = add i64 %2918, 5
  store i64 %2919, i64* %PC.i165
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2921 = load i64, i64* %2920, align 8
  %2922 = add i64 %2921, -8
  %2923 = inttoptr i64 %2922 to i64*
  store i64 %2917, i64* %2923
  store i64 %2922, i64* %2920, align 8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2915, i64* %2924, align 8
  store %struct.Memory* %loadMem1_469dba, %struct.Memory** %MEMORY
  %loadMem2_469dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469dba = load i64, i64* %3
  %call2_469dba = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_469dba, %struct.Memory* %loadMem2_469dba)
  store %struct.Memory* %call2_469dba, %struct.Memory** %MEMORY
  %loadMem_469dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 1
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %2930 to i32*
  %2931 = load i32, i32* %EAX.i164
  %2932 = zext i32 %2931 to i64
  %2933 = load i64, i64* %PC.i163
  %2934 = add i64 %2933, 3
  store i64 %2934, i64* %PC.i163
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2935, align 1
  %2936 = and i32 %2931, 255
  %2937 = call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2940, i8* %2941, align 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2942, align 1
  %2943 = icmp eq i32 %2931, 0
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2931, 31
  %2947 = trunc i32 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2931, 31
  %2950 = xor i32 %2946, %2949
  %2951 = add i32 %2950, %2949
  %2952 = icmp eq i32 %2951, 2
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2953, i8* %2954, align 1
  store %struct.Memory* %loadMem_469dbf, %struct.Memory** %MEMORY
  %loadMem_469dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i162
  %2959 = add i64 %2958, 91
  %2960 = load i64, i64* %PC.i162
  %2961 = add i64 %2960, 6
  %2962 = load i64, i64* %PC.i162
  %2963 = add i64 %2962, 6
  store i64 %2963, i64* %PC.i162
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2965 = load i8, i8* %2964, align 1
  store i8 %2965, i8* %BRANCH_TAKEN, align 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2967 = icmp ne i8 %2965, 0
  %2968 = select i1 %2967, i64 %2959, i64 %2961
  store i64 %2968, i64* %2966, align 8
  store %struct.Memory* %loadMem_469dc2, %struct.Memory** %MEMORY
  %loadBr_469dc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469dc2 = icmp eq i8 %loadBr_469dc2, 1
  br i1 %cmpBr_469dc2, label %block_.L_469e1d, label %block_469dc8

block_469dc8:                                     ; preds = %block_469d9f
  %loadMem_469dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 1
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %2974 to i32*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 1
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RAX.i161
  %2979 = load i32, i32* %EAX.i160
  %2980 = zext i32 %2979 to i64
  %2981 = load i64, i64* %PC.i159
  %2982 = add i64 %2981, 2
  store i64 %2982, i64* %PC.i159
  %2983 = xor i64 %2980, %2978
  %2984 = trunc i64 %2983 to i32
  %2985 = and i64 %2983, 4294967295
  store i64 %2985, i64* %RAX.i161, align 8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2986, align 1
  %2987 = and i32 %2984, 255
  %2988 = call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2991, i8* %2992, align 1
  %2993 = icmp eq i32 %2984, 0
  %2994 = zext i1 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i32 %2984, 31
  %2997 = trunc i32 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2997, i8* %2998, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2999, align 1
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3000, align 1
  store %struct.Memory* %loadMem_469dc8, %struct.Memory** %MEMORY
  %loadMem_469dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %3006 to i32*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 9
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RSI.i158 = bitcast %union.anon* %3009 to i64*
  %3010 = load i32, i32* %EAX.i157
  %3011 = zext i32 %3010 to i64
  %3012 = load i64, i64* %PC.i156
  %3013 = add i64 %3012, 2
  store i64 %3013, i64* %PC.i156
  %3014 = and i64 %3011, 4294967295
  store i64 %3014, i64* %RSI.i158, align 8
  store %struct.Memory* %loadMem_469dca, %struct.Memory** %MEMORY
  %loadMem_469dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 33
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 11
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 15
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RBP.i155
  %3025 = sub i64 %3024, 8
  %3026 = load i64, i64* %PC.i153
  %3027 = add i64 %3026, 3
  store i64 %3027, i64* %PC.i153
  %3028 = inttoptr i64 %3025 to i32*
  %3029 = load i32, i32* %3028
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RDI.i154, align 8
  store %struct.Memory* %loadMem_469dcc, %struct.Memory** %MEMORY
  %loadMem_469dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 7
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 15
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i152
  %3041 = sub i64 %3040, 28
  %3042 = load i64, i64* %PC.i150
  %3043 = add i64 %3042, 3
  store i64 %3043, i64* %PC.i150
  %3044 = inttoptr i64 %3041 to i32*
  %3045 = load i32, i32* %3044
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_469dcf, %struct.Memory** %MEMORY
  %loadMem_469dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 5
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 15
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %RBP.i149
  %3057 = sub i64 %3056, 32
  %3058 = load i64, i64* %PC.i147
  %3059 = add i64 %3058, 3
  store i64 %3059, i64* %PC.i147
  %3060 = inttoptr i64 %3057 to i32*
  %3061 = load i32, i32* %3060
  %3062 = zext i32 %3061 to i64
  store i64 %3062, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_469dd2, %struct.Memory** %MEMORY
  %loadMem1_469dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %PC.i146
  %3067 = add i64 %3066, -49397
  %3068 = load i64, i64* %PC.i146
  %3069 = add i64 %3068, 5
  %3070 = load i64, i64* %PC.i146
  %3071 = add i64 %3070, 5
  store i64 %3071, i64* %PC.i146
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3073 = load i64, i64* %3072, align 8
  %3074 = add i64 %3073, -8
  %3075 = inttoptr i64 %3074 to i64*
  store i64 %3069, i64* %3075
  store i64 %3074, i64* %3072, align 8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3067, i64* %3076, align 8
  store %struct.Memory* %loadMem1_469dd5, %struct.Memory** %MEMORY
  %loadMem2_469dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469dd5 = load i64, i64* %3
  %call2_469dd5 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_469dd5, %struct.Memory* %loadMem2_469dd5)
  store %struct.Memory* %call2_469dd5, %struct.Memory** %MEMORY
  %loadMem_469dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 1
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %3082 to i32*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 15
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %3085 to i64*
  %3086 = load i64, i64* %RBP.i145
  %3087 = sub i64 %3086, 44
  %3088 = load i32, i32* %EAX.i144
  %3089 = zext i32 %3088 to i64
  %3090 = load i64, i64* %PC.i143
  %3091 = add i64 %3090, 3
  store i64 %3091, i64* %PC.i143
  %3092 = inttoptr i64 %3087 to i32*
  store i32 %3088, i32* %3092
  store %struct.Memory* %loadMem_469dda, %struct.Memory** %MEMORY
  %loadMem_469ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 15
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RBP.i142
  %3100 = sub i64 %3099, 44
  %3101 = load i64, i64* %PC.i141
  %3102 = add i64 %3101, 4
  store i64 %3102, i64* %PC.i141
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3105, align 1
  %3106 = and i32 %3104, 255
  %3107 = call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3110, i8* %3111, align 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3112, align 1
  %3113 = icmp eq i32 %3104, 0
  %3114 = zext i1 %3113 to i8
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3114, i8* %3115, align 1
  %3116 = lshr i32 %3104, 31
  %3117 = trunc i32 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3117, i8* %3118, align 1
  %3119 = lshr i32 %3104, 31
  %3120 = xor i32 %3116, %3119
  %3121 = add i32 %3120, %3119
  %3122 = icmp eq i32 %3121, 2
  %3123 = zext i1 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3123, i8* %3124, align 1
  store %struct.Memory* %loadMem_469ddd, %struct.Memory** %MEMORY
  %loadMem_469de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %PC.i140
  %3129 = add i64 %3128, 21
  %3130 = load i64, i64* %PC.i140
  %3131 = add i64 %3130, 6
  %3132 = load i64, i64* %PC.i140
  %3133 = add i64 %3132, 6
  store i64 %3133, i64* %PC.i140
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3135 = load i8, i8* %3134, align 1
  %3136 = icmp eq i8 %3135, 0
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %BRANCH_TAKEN, align 1
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3139 = select i1 %3136, i64 %3129, i64 %3131
  store i64 %3139, i64* %3138, align 8
  store %struct.Memory* %loadMem_469de1, %struct.Memory** %MEMORY
  %loadBr_469de1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469de1 = icmp eq i8 %loadBr_469de1, 1
  br i1 %cmpBr_469de1, label %block_.L_469df6, label %block_469de7

block_469de7:                                     ; preds = %block_469dc8
  %loadMem1_469de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %PC.i139
  %3144 = add i64 %3143, -376967
  %3145 = load i64, i64* %PC.i139
  %3146 = add i64 %3145, 5
  %3147 = load i64, i64* %PC.i139
  %3148 = add i64 %3147, 5
  store i64 %3148, i64* %PC.i139
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3150 = load i64, i64* %3149, align 8
  %3151 = add i64 %3150, -8
  %3152 = inttoptr i64 %3151 to i64*
  store i64 %3146, i64* %3152
  store i64 %3151, i64* %3149, align 8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3144, i64* %3153, align 8
  store %struct.Memory* %loadMem1_469de7, %struct.Memory** %MEMORY
  %loadMem2_469de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469de7 = load i64, i64* %3
  %call2_469de7 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_469de7, %struct.Memory* %loadMem2_469de7)
  store %struct.Memory* %call2_469de7, %struct.Memory** %MEMORY
  %loadMem1_469dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %PC.i138
  %3158 = add i64 %3157, -376972
  %3159 = load i64, i64* %PC.i138
  %3160 = add i64 %3159, 5
  %3161 = load i64, i64* %PC.i138
  %3162 = add i64 %3161, 5
  store i64 %3162, i64* %PC.i138
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3164 = load i64, i64* %3163, align 8
  %3165 = add i64 %3164, -8
  %3166 = inttoptr i64 %3165 to i64*
  store i64 %3160, i64* %3166
  store i64 %3165, i64* %3163, align 8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3158, i64* %3167, align 8
  store %struct.Memory* %loadMem1_469dec, %struct.Memory** %MEMORY
  %loadMem2_469dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469dec = load i64, i64* %3
  %call2_469dec = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_469dec, %struct.Memory* %loadMem2_469dec)
  store %struct.Memory* %call2_469dec, %struct.Memory** %MEMORY
  %loadMem_469df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %PC.i137
  %3172 = add i64 %3171, 197
  %3173 = load i64, i64* %PC.i137
  %3174 = add i64 %3173, 5
  store i64 %3174, i64* %PC.i137
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3172, i64* %3175, align 8
  store %struct.Memory* %loadMem_469df1, %struct.Memory** %MEMORY
  br label %block_.L_469eb6

block_.L_469df6:                                  ; preds = %block_469dc8
  %loadMem_469df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 15
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %3181 to i64*
  %3182 = load i64, i64* %RBP.i136
  %3183 = sub i64 %3182, 44
  %3184 = load i64, i64* %PC.i135
  %3185 = add i64 %3184, 4
  store i64 %3185, i64* %PC.i135
  %3186 = inttoptr i64 %3183 to i32*
  %3187 = load i32, i32* %3186
  %3188 = sub i32 %3187, 5
  %3189 = icmp ult i32 %3187, 5
  %3190 = zext i1 %3189 to i8
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3190, i8* %3191, align 1
  %3192 = and i32 %3188, 255
  %3193 = call i32 @llvm.ctpop.i32(i32 %3192)
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  %3196 = xor i8 %3195, 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3196, i8* %3197, align 1
  %3198 = xor i32 %3187, 5
  %3199 = xor i32 %3198, %3188
  %3200 = lshr i32 %3199, 4
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3202, i8* %3203, align 1
  %3204 = icmp eq i32 %3188, 0
  %3205 = zext i1 %3204 to i8
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3205, i8* %3206, align 1
  %3207 = lshr i32 %3188, 31
  %3208 = trunc i32 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3208, i8* %3209, align 1
  %3210 = lshr i32 %3187, 31
  %3211 = xor i32 %3207, %3210
  %3212 = add i32 %3211, %3210
  %3213 = icmp eq i32 %3212, 2
  %3214 = zext i1 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3214, i8* %3215, align 1
  store %struct.Memory* %loadMem_469df6, %struct.Memory** %MEMORY
  %loadMem_469dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %PC.i134
  %3220 = add i64 %3219, 30
  %3221 = load i64, i64* %PC.i134
  %3222 = add i64 %3221, 6
  %3223 = load i64, i64* %PC.i134
  %3224 = add i64 %3223, 6
  store i64 %3224, i64* %PC.i134
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3226 = load i8, i8* %3225, align 1
  store i8 %3226, i8* %BRANCH_TAKEN, align 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3228 = icmp ne i8 %3226, 0
  %3229 = select i1 %3228, i64 %3220, i64 %3222
  store i64 %3229, i64* %3227, align 8
  store %struct.Memory* %loadMem_469dfa, %struct.Memory** %MEMORY
  %loadBr_469dfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469dfa = icmp eq i8 %loadBr_469dfa, 1
  br i1 %cmpBr_469dfa, label %block_.L_469e18, label %block_469e00

block_469e00:                                     ; preds = %block_.L_469df6
  %loadMem_469e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 1
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 15
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %RBP.i133
  %3240 = sub i64 %3239, 44
  %3241 = load i64, i64* %PC.i131
  %3242 = add i64 %3241, 3
  store i64 %3242, i64* %PC.i131
  %3243 = inttoptr i64 %3240 to i32*
  %3244 = load i32, i32* %3243
  %3245 = zext i32 %3244 to i64
  store i64 %3245, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_469e00, %struct.Memory** %MEMORY
  %loadMem_469e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 1
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %3251 to i32*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 15
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3254 to i64*
  %3255 = load i32, i32* %EAX.i129
  %3256 = zext i32 %3255 to i64
  %3257 = load i64, i64* %RBP.i130
  %3258 = sub i64 %3257, 56
  %3259 = load i64, i64* %PC.i128
  %3260 = add i64 %3259, 3
  store i64 %3260, i64* %PC.i128
  %3261 = inttoptr i64 %3258 to i32*
  %3262 = load i32, i32* %3261
  %3263 = sub i32 %3255, %3262
  %3264 = icmp ult i32 %3255, %3262
  %3265 = zext i1 %3264 to i8
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3265, i8* %3266, align 1
  %3267 = and i32 %3263, 255
  %3268 = call i32 @llvm.ctpop.i32(i32 %3267)
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3271, i8* %3272, align 1
  %3273 = xor i32 %3262, %3255
  %3274 = xor i32 %3273, %3263
  %3275 = lshr i32 %3274, 4
  %3276 = trunc i32 %3275 to i8
  %3277 = and i8 %3276, 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3277, i8* %3278, align 1
  %3279 = icmp eq i32 %3263, 0
  %3280 = zext i1 %3279 to i8
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3280, i8* %3281, align 1
  %3282 = lshr i32 %3263, 31
  %3283 = trunc i32 %3282 to i8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3283, i8* %3284, align 1
  %3285 = lshr i32 %3255, 31
  %3286 = lshr i32 %3262, 31
  %3287 = xor i32 %3286, %3285
  %3288 = xor i32 %3282, %3285
  %3289 = add i32 %3288, %3287
  %3290 = icmp eq i32 %3289, 2
  %3291 = zext i1 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3291, i8* %3292, align 1
  store %struct.Memory* %loadMem_469e03, %struct.Memory** %MEMORY
  %loadMem_469e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3295 to i64*
  %3296 = load i64, i64* %PC.i127
  %3297 = add i64 %3296, 18
  %3298 = load i64, i64* %PC.i127
  %3299 = add i64 %3298, 6
  %3300 = load i64, i64* %PC.i127
  %3301 = add i64 %3300, 6
  store i64 %3301, i64* %PC.i127
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3303 = load i8, i8* %3302, align 1
  %3304 = icmp ne i8 %3303, 0
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3306 = load i8, i8* %3305, align 1
  %3307 = icmp ne i8 %3306, 0
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3309 = load i8, i8* %3308, align 1
  %3310 = icmp ne i8 %3309, 0
  %3311 = xor i1 %3307, %3310
  %3312 = or i1 %3304, %3311
  %3313 = zext i1 %3312 to i8
  store i8 %3313, i8* %BRANCH_TAKEN, align 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3315 = select i1 %3312, i64 %3297, i64 %3299
  store i64 %3315, i64* %3314, align 8
  store %struct.Memory* %loadMem_469e06, %struct.Memory** %MEMORY
  %loadBr_469e06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469e06 = icmp eq i8 %loadBr_469e06, 1
  br i1 %cmpBr_469e06, label %block_.L_469e18, label %block_469e0c

block_469e0c:                                     ; preds = %block_469e00
  %loadMem_469e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 1
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 15
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %RBP.i126
  %3326 = sub i64 %3325, 68
  %3327 = load i64, i64* %PC.i124
  %3328 = add i64 %3327, 3
  store i64 %3328, i64* %PC.i124
  %3329 = inttoptr i64 %3326 to i32*
  %3330 = load i32, i32* %3329
  %3331 = zext i32 %3330 to i64
  store i64 %3331, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_469e0c, %struct.Memory** %MEMORY
  %loadMem_469e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 33
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 1
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %EAX.i122 = bitcast %union.anon* %3337 to i32*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 15
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %3340 to i64*
  %3341 = load i64, i64* %RBP.i123
  %3342 = sub i64 %3341, 52
  %3343 = load i32, i32* %EAX.i122
  %3344 = zext i32 %3343 to i64
  %3345 = load i64, i64* %PC.i121
  %3346 = add i64 %3345, 3
  store i64 %3346, i64* %PC.i121
  %3347 = inttoptr i64 %3342 to i32*
  store i32 %3343, i32* %3347
  store %struct.Memory* %loadMem_469e0f, %struct.Memory** %MEMORY
  %loadMem_469e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 1
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RBP.i120
  %3358 = sub i64 %3357, 44
  %3359 = load i64, i64* %PC.i118
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i118
  %3361 = inttoptr i64 %3358 to i32*
  %3362 = load i32, i32* %3361
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_469e12, %struct.Memory** %MEMORY
  %loadMem_469e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 1
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %3369 to i32*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 15
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %RBP.i117
  %3374 = sub i64 %3373, 56
  %3375 = load i32, i32* %EAX.i116
  %3376 = zext i32 %3375 to i64
  %3377 = load i64, i64* %PC.i115
  %3378 = add i64 %3377, 3
  store i64 %3378, i64* %PC.i115
  %3379 = inttoptr i64 %3374 to i32*
  store i32 %3375, i32* %3379
  store %struct.Memory* %loadMem_469e15, %struct.Memory** %MEMORY
  br label %block_.L_469e18

block_.L_469e18:                                  ; preds = %block_469e0c, %block_469e00, %block_.L_469df6
  %loadMem1_469e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3382 to i64*
  %3383 = load i64, i64* %PC.i114
  %3384 = add i64 %3383, -377016
  %3385 = load i64, i64* %PC.i114
  %3386 = add i64 %3385, 5
  %3387 = load i64, i64* %PC.i114
  %3388 = add i64 %3387, 5
  store i64 %3388, i64* %PC.i114
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3390 = load i64, i64* %3389, align 8
  %3391 = add i64 %3390, -8
  %3392 = inttoptr i64 %3391 to i64*
  store i64 %3386, i64* %3392
  store i64 %3391, i64* %3389, align 8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3384, i64* %3393, align 8
  store %struct.Memory* %loadMem1_469e18, %struct.Memory** %MEMORY
  %loadMem2_469e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469e18 = load i64, i64* %3
  %call2_469e18 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_469e18, %struct.Memory* %loadMem2_469e18)
  store %struct.Memory* %call2_469e18, %struct.Memory** %MEMORY
  br label %block_.L_469e1d

block_.L_469e1d:                                  ; preds = %block_.L_469e18, %block_469d9f, %block_.L_469d8b
  %loadMem_469e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %PC.i113
  %3398 = add i64 %3397, 5
  %3399 = load i64, i64* %PC.i113
  %3400 = add i64 %3399, 5
  store i64 %3400, i64* %PC.i113
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3398, i64* %3401, align 8
  store %struct.Memory* %loadMem_469e1d, %struct.Memory** %MEMORY
  br label %block_.L_469e22

block_.L_469e22:                                  ; preds = %block_.L_469e1d, %block_.L_469d49
  %loadMem_469e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 1
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %EAX.i111 = bitcast %union.anon* %3407 to i32*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RAX.i112
  %3412 = load i32, i32* %EAX.i111
  %3413 = zext i32 %3412 to i64
  %3414 = load i64, i64* %PC.i110
  %3415 = add i64 %3414, 2
  store i64 %3415, i64* %PC.i110
  %3416 = xor i64 %3413, %3411
  %3417 = trunc i64 %3416 to i32
  %3418 = and i64 %3416, 4294967295
  store i64 %3418, i64* %RAX.i112, align 8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3419, align 1
  %3420 = and i32 %3417, 255
  %3421 = call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3424, i8* %3425, align 1
  %3426 = icmp eq i32 %3417, 0
  %3427 = zext i1 %3426 to i8
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3427, i8* %3428, align 1
  %3429 = lshr i32 %3417, 31
  %3430 = trunc i32 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3430, i8* %3431, align 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3432, align 1
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3433, align 1
  store %struct.Memory* %loadMem_469e22, %struct.Memory** %MEMORY
  %loadMem_469e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 1
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %3439 to i32*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 9
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RSI.i109 = bitcast %union.anon* %3442 to i64*
  %3443 = load i32, i32* %EAX.i108
  %3444 = zext i32 %3443 to i64
  %3445 = load i64, i64* %PC.i107
  %3446 = add i64 %3445, 2
  store i64 %3446, i64* %PC.i107
  %3447 = and i64 %3444, 4294967295
  store i64 %3447, i64* %RSI.i109, align 8
  store %struct.Memory* %loadMem_469e24, %struct.Memory** %MEMORY
  %loadMem_469e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 11
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RDI.i105 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 15
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RBP.i106
  %3458 = sub i64 %3457, 8
  %3459 = load i64, i64* %PC.i104
  %3460 = add i64 %3459, 3
  store i64 %3460, i64* %PC.i104
  %3461 = inttoptr i64 %3458 to i32*
  %3462 = load i32, i32* %3461
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RDI.i105, align 8
  store %struct.Memory* %loadMem_469e26, %struct.Memory** %MEMORY
  %loadMem_469e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 33
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3466 to i64*
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 7
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %RDX.i102 = bitcast %union.anon* %3469 to i64*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 15
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3472 to i64*
  %3473 = load i64, i64* %RBP.i103
  %3474 = sub i64 %3473, 28
  %3475 = load i64, i64* %PC.i101
  %3476 = add i64 %3475, 3
  store i64 %3476, i64* %PC.i101
  %3477 = inttoptr i64 %3474 to i32*
  %3478 = load i32, i32* %3477
  %3479 = zext i32 %3478 to i64
  store i64 %3479, i64* %RDX.i102, align 8
  store %struct.Memory* %loadMem_469e29, %struct.Memory** %MEMORY
  %loadMem_469e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 33
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3482 to i64*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 5
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 15
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %3488 to i64*
  %3489 = load i64, i64* %RBP.i100
  %3490 = sub i64 %3489, 32
  %3491 = load i64, i64* %PC.i98
  %3492 = add i64 %3491, 3
  store i64 %3492, i64* %PC.i98
  %3493 = inttoptr i64 %3490 to i32*
  %3494 = load i32, i32* %3493
  %3495 = zext i32 %3494 to i64
  store i64 %3495, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_469e2c, %struct.Memory** %MEMORY
  %loadMem1_469e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %PC.i97
  %3500 = add i64 %3499, -26639
  %3501 = load i64, i64* %PC.i97
  %3502 = add i64 %3501, 5
  %3503 = load i64, i64* %PC.i97
  %3504 = add i64 %3503, 5
  store i64 %3504, i64* %PC.i97
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3506 = load i64, i64* %3505, align 8
  %3507 = add i64 %3506, -8
  %3508 = inttoptr i64 %3507 to i64*
  store i64 %3502, i64* %3508
  store i64 %3507, i64* %3505, align 8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3500, i64* %3509, align 8
  store %struct.Memory* %loadMem1_469e2f, %struct.Memory** %MEMORY
  %loadMem2_469e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469e2f = load i64, i64* %3
  %call2_469e2f = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64 %loadPC_469e2f, %struct.Memory* %loadMem2_469e2f)
  store %struct.Memory* %call2_469e2f, %struct.Memory** %MEMORY
  %loadMem_469e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 1
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %3515 to i32*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 15
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %RBP.i96
  %3520 = sub i64 %3519, 48
  %3521 = load i32, i32* %EAX.i95
  %3522 = zext i32 %3521 to i64
  %3523 = load i64, i64* %PC.i94
  %3524 = add i64 %3523, 3
  store i64 %3524, i64* %PC.i94
  %3525 = inttoptr i64 %3520 to i32*
  store i32 %3521, i32* %3525
  store %struct.Memory* %loadMem_469e34, %struct.Memory** %MEMORY
  %loadMem_469e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 15
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RBP.i93
  %3533 = sub i64 %3532, 48
  %3534 = load i64, i64* %PC.i92
  %3535 = add i64 %3534, 4
  store i64 %3535, i64* %PC.i92
  %3536 = inttoptr i64 %3533 to i32*
  %3537 = load i32, i32* %3536
  %3538 = sub i32 %3537, 5
  %3539 = icmp ult i32 %3537, 5
  %3540 = zext i1 %3539 to i8
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3540, i8* %3541, align 1
  %3542 = and i32 %3538, 255
  %3543 = call i32 @llvm.ctpop.i32(i32 %3542)
  %3544 = trunc i32 %3543 to i8
  %3545 = and i8 %3544, 1
  %3546 = xor i8 %3545, 1
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3546, i8* %3547, align 1
  %3548 = xor i32 %3537, 5
  %3549 = xor i32 %3548, %3538
  %3550 = lshr i32 %3549, 4
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3552, i8* %3553, align 1
  %3554 = icmp eq i32 %3538, 0
  %3555 = zext i1 %3554 to i8
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3555, i8* %3556, align 1
  %3557 = lshr i32 %3538, 31
  %3558 = trunc i32 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3558, i8* %3559, align 1
  %3560 = lshr i32 %3537, 31
  %3561 = xor i32 %3557, %3560
  %3562 = add i32 %3561, %3560
  %3563 = icmp eq i32 %3562, 2
  %3564 = zext i1 %3563 to i8
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3564, i8* %3565, align 1
  store %struct.Memory* %loadMem_469e37, %struct.Memory** %MEMORY
  %loadMem_469e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3568 to i64*
  %3569 = load i64, i64* %PC.i91
  %3570 = add i64 %3569, 118
  %3571 = load i64, i64* %PC.i91
  %3572 = add i64 %3571, 6
  %3573 = load i64, i64* %PC.i91
  %3574 = add i64 %3573, 6
  store i64 %3574, i64* %PC.i91
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3576 = load i8, i8* %3575, align 1
  store i8 %3576, i8* %BRANCH_TAKEN, align 1
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3578 = icmp ne i8 %3576, 0
  %3579 = select i1 %3578, i64 %3570, i64 %3572
  store i64 %3579, i64* %3577, align 8
  store %struct.Memory* %loadMem_469e3b, %struct.Memory** %MEMORY
  %loadBr_469e3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469e3b = icmp eq i8 %loadBr_469e3b, 1
  br i1 %cmpBr_469e3b, label %block_.L_469eb1, label %block_469e41

block_469e41:                                     ; preds = %block_.L_469e22
  %loadMem_469e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 1
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %EAX.i89 = bitcast %union.anon* %3585 to i32*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 1
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RAX.i90
  %3590 = load i32, i32* %EAX.i89
  %3591 = zext i32 %3590 to i64
  %3592 = load i64, i64* %PC.i88
  %3593 = add i64 %3592, 2
  store i64 %3593, i64* %PC.i88
  %3594 = xor i64 %3591, %3589
  %3595 = trunc i64 %3594 to i32
  %3596 = and i64 %3594, 4294967295
  store i64 %3596, i64* %RAX.i90, align 8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3597, align 1
  %3598 = and i32 %3595, 255
  %3599 = call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3602, i8* %3603, align 1
  %3604 = icmp eq i32 %3595, 0
  %3605 = zext i1 %3604 to i8
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3605, i8* %3606, align 1
  %3607 = lshr i32 %3595, 31
  %3608 = trunc i32 %3607 to i8
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3608, i8* %3609, align 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3610, align 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3611, align 1
  store %struct.Memory* %loadMem_469e41, %struct.Memory** %MEMORY
  %loadMem_469e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 1
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %3617 to i32*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 9
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3620 to i64*
  %3621 = load i32, i32* %EAX.i87
  %3622 = zext i32 %3621 to i64
  %3623 = load i64, i64* %PC.i86
  %3624 = add i64 %3623, 2
  store i64 %3624, i64* %PC.i86
  %3625 = and i64 %3622, 4294967295
  store i64 %3625, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_469e43, %struct.Memory** %MEMORY
  %loadMem_469e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 11
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 15
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RBP.i85
  %3636 = sub i64 %3635, 8
  %3637 = load i64, i64* %PC.i84
  %3638 = add i64 %3637, 3
  store i64 %3638, i64* %PC.i84
  %3639 = inttoptr i64 %3636 to i32*
  %3640 = load i32, i32* %3639
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_469e45, %struct.Memory** %MEMORY
  %loadMem_469e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 33
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 7
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3647 to i64*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 15
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3650 to i64*
  %3651 = load i64, i64* %RBP.i83
  %3652 = sub i64 %3651, 28
  %3653 = load i64, i64* %PC.i82
  %3654 = add i64 %3653, 3
  store i64 %3654, i64* %PC.i82
  %3655 = inttoptr i64 %3652 to i32*
  %3656 = load i32, i32* %3655
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_469e48, %struct.Memory** %MEMORY
  %loadMem_469e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 5
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 15
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %3666 to i64*
  %3667 = load i64, i64* %RBP.i81
  %3668 = sub i64 %3667, 32
  %3669 = load i64, i64* %PC.i79
  %3670 = add i64 %3669, 3
  store i64 %3670, i64* %PC.i79
  %3671 = inttoptr i64 %3668 to i32*
  %3672 = load i32, i32* %3671
  %3673 = zext i32 %3672 to i64
  store i64 %3673, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_469e4b, %struct.Memory** %MEMORY
  %loadMem1_469e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %PC.i78
  %3678 = add i64 %3677, -49518
  %3679 = load i64, i64* %PC.i78
  %3680 = add i64 %3679, 5
  %3681 = load i64, i64* %PC.i78
  %3682 = add i64 %3681, 5
  store i64 %3682, i64* %PC.i78
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3684 = load i64, i64* %3683, align 8
  %3685 = add i64 %3684, -8
  %3686 = inttoptr i64 %3685 to i64*
  store i64 %3680, i64* %3686
  store i64 %3685, i64* %3683, align 8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3678, i64* %3687, align 8
  store %struct.Memory* %loadMem1_469e4e, %struct.Memory** %MEMORY
  %loadMem2_469e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469e4e = load i64, i64* %3
  %call2_469e4e = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_469e4e, %struct.Memory* %loadMem2_469e4e)
  store %struct.Memory* %call2_469e4e, %struct.Memory** %MEMORY
  %loadMem_469e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 1
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %3693 to i32*
  %3694 = load i32, i32* %EAX.i77
  %3695 = zext i32 %3694 to i64
  %3696 = load i64, i64* %PC.i76
  %3697 = add i64 %3696, 3
  store i64 %3697, i64* %PC.i76
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3698, align 1
  %3699 = and i32 %3694, 255
  %3700 = call i32 @llvm.ctpop.i32(i32 %3699)
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = xor i8 %3702, 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3703, i8* %3704, align 1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3705, align 1
  %3706 = icmp eq i32 %3694, 0
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3707, i8* %3708, align 1
  %3709 = lshr i32 %3694, 31
  %3710 = trunc i32 %3709 to i8
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3710, i8* %3711, align 1
  %3712 = lshr i32 %3694, 31
  %3713 = xor i32 %3709, %3712
  %3714 = add i32 %3713, %3712
  %3715 = icmp eq i32 %3714, 2
  %3716 = zext i1 %3715 to i8
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3716, i8* %3717, align 1
  store %struct.Memory* %loadMem_469e53, %struct.Memory** %MEMORY
  %loadMem_469e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %PC.i75
  %3722 = add i64 %3721, 91
  %3723 = load i64, i64* %PC.i75
  %3724 = add i64 %3723, 6
  %3725 = load i64, i64* %PC.i75
  %3726 = add i64 %3725, 6
  store i64 %3726, i64* %PC.i75
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3728 = load i8, i8* %3727, align 1
  store i8 %3728, i8* %BRANCH_TAKEN, align 1
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3730 = icmp ne i8 %3728, 0
  %3731 = select i1 %3730, i64 %3722, i64 %3724
  store i64 %3731, i64* %3729, align 8
  store %struct.Memory* %loadMem_469e56, %struct.Memory** %MEMORY
  %loadBr_469e56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469e56 = icmp eq i8 %loadBr_469e56, 1
  br i1 %cmpBr_469e56, label %block_.L_469eb1, label %block_469e5c

block_469e5c:                                     ; preds = %block_469e41
  %loadMem_469e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 15
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %RBP.i74
  %3739 = sub i64 %3738, 48
  %3740 = load i64, i64* %PC.i73
  %3741 = add i64 %3740, 4
  store i64 %3741, i64* %PC.i73
  %3742 = inttoptr i64 %3739 to i32*
  %3743 = load i32, i32* %3742
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3744, align 1
  %3745 = and i32 %3743, 255
  %3746 = call i32 @llvm.ctpop.i32(i32 %3745)
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3749, i8* %3750, align 1
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3751, align 1
  %3752 = icmp eq i32 %3743, 0
  %3753 = zext i1 %3752 to i8
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3753, i8* %3754, align 1
  %3755 = lshr i32 %3743, 31
  %3756 = trunc i32 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3756, i8* %3757, align 1
  %3758 = lshr i32 %3743, 31
  %3759 = xor i32 %3755, %3758
  %3760 = add i32 %3759, %3758
  %3761 = icmp eq i32 %3760, 2
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3762, i8* %3763, align 1
  store %struct.Memory* %loadMem_469e5c, %struct.Memory** %MEMORY
  %loadMem_469e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %PC.i72
  %3768 = add i64 %3767, 32
  %3769 = load i64, i64* %PC.i72
  %3770 = add i64 %3769, 6
  %3771 = load i64, i64* %PC.i72
  %3772 = add i64 %3771, 6
  store i64 %3772, i64* %PC.i72
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3774 = load i8, i8* %3773, align 1
  %3775 = icmp eq i8 %3774, 0
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %BRANCH_TAKEN, align 1
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3778 = select i1 %3775, i64 %3768, i64 %3770
  store i64 %3778, i64* %3777, align 8
  store %struct.Memory* %loadMem_469e60, %struct.Memory** %MEMORY
  %loadBr_469e60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469e60 = icmp eq i8 %loadBr_469e60, 1
  br i1 %cmpBr_469e60, label %block_.L_469e80, label %block_469e66

block_469e66:                                     ; preds = %block_469e5c
  %loadMem1_469e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %PC.i71
  %3783 = add i64 %3782, -377094
  %3784 = load i64, i64* %PC.i71
  %3785 = add i64 %3784, 5
  %3786 = load i64, i64* %PC.i71
  %3787 = add i64 %3786, 5
  store i64 %3787, i64* %PC.i71
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3789 = load i64, i64* %3788, align 8
  %3790 = add i64 %3789, -8
  %3791 = inttoptr i64 %3790 to i64*
  store i64 %3785, i64* %3791
  store i64 %3790, i64* %3788, align 8
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3783, i64* %3792, align 8
  store %struct.Memory* %loadMem1_469e66, %struct.Memory** %MEMORY
  %loadMem2_469e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469e66 = load i64, i64* %3
  %call2_469e66 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_469e66, %struct.Memory* %loadMem2_469e66)
  store %struct.Memory* %call2_469e66, %struct.Memory** %MEMORY
  %loadMem_469e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 1
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 15
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %3801 to i64*
  %3802 = load i64, i64* %RBP.i70
  %3803 = sub i64 %3802, 68
  %3804 = load i64, i64* %PC.i68
  %3805 = add i64 %3804, 3
  store i64 %3805, i64* %PC.i68
  %3806 = inttoptr i64 %3803 to i32*
  %3807 = load i32, i32* %3806
  %3808 = zext i32 %3807 to i64
  store i64 %3808, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_469e6b, %struct.Memory** %MEMORY
  %loadMem_469e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 5
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 15
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %RBP.i67
  %3819 = sub i64 %3818, 24
  %3820 = load i64, i64* %PC.i65
  %3821 = add i64 %3820, 4
  store i64 %3821, i64* %PC.i65
  %3822 = inttoptr i64 %3819 to i64*
  %3823 = load i64, i64* %3822
  store i64 %3823, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_469e6e, %struct.Memory** %MEMORY
  %loadMem_469e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 1
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %3829 to i32*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 5
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %RCX.i64
  %3834 = load i32, i32* %EAX.i63
  %3835 = zext i32 %3834 to i64
  %3836 = load i64, i64* %PC.i62
  %3837 = add i64 %3836, 2
  store i64 %3837, i64* %PC.i62
  %3838 = inttoptr i64 %3833 to i32*
  store i32 %3834, i32* %3838
  store %struct.Memory* %loadMem_469e72, %struct.Memory** %MEMORY
  %loadMem_469e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 15
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RBP.i61
  %3846 = sub i64 %3845, 4
  %3847 = load i64, i64* %PC.i60
  %3848 = add i64 %3847, 7
  store i64 %3848, i64* %PC.i60
  %3849 = inttoptr i64 %3846 to i32*
  store i32 5, i32* %3849
  store %struct.Memory* %loadMem_469e74, %struct.Memory** %MEMORY
  %loadMem_469e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %PC.i59
  %3854 = add i64 %3853, 98
  %3855 = load i64, i64* %PC.i59
  %3856 = add i64 %3855, 5
  store i64 %3856, i64* %PC.i59
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3854, i64* %3857, align 8
  store %struct.Memory* %loadMem_469e7b, %struct.Memory** %MEMORY
  br label %block_.L_469edd

block_.L_469e80:                                  ; preds = %block_469e5c
  %loadMem_469e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 15
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RBP.i58
  %3865 = sub i64 %3864, 48
  %3866 = load i64, i64* %PC.i57
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i57
  %3868 = inttoptr i64 %3865 to i32*
  %3869 = load i32, i32* %3868
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3870, align 1
  %3871 = and i32 %3869, 255
  %3872 = call i32 @llvm.ctpop.i32(i32 %3871)
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = xor i8 %3874, 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3875, i8* %3876, align 1
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3877, align 1
  %3878 = icmp eq i32 %3869, 0
  %3879 = zext i1 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3879, i8* %3880, align 1
  %3881 = lshr i32 %3869, 31
  %3882 = trunc i32 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3882, i8* %3883, align 1
  %3884 = lshr i32 %3869, 31
  %3885 = xor i32 %3881, %3884
  %3886 = add i32 %3885, %3884
  %3887 = icmp eq i32 %3886, 2
  %3888 = zext i1 %3887 to i8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3888, i8* %3889, align 1
  store %struct.Memory* %loadMem_469e80, %struct.Memory** %MEMORY
  %loadMem_469e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %PC.i56
  %3894 = add i64 %3893, 40
  %3895 = load i64, i64* %PC.i56
  %3896 = add i64 %3895, 6
  %3897 = load i64, i64* %PC.i56
  %3898 = add i64 %3897, 6
  store i64 %3898, i64* %PC.i56
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3900 = load i8, i8* %3899, align 1
  store i8 %3900, i8* %BRANCH_TAKEN, align 1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3902 = icmp ne i8 %3900, 0
  %3903 = select i1 %3902, i64 %3894, i64 %3896
  store i64 %3903, i64* %3901, align 8
  store %struct.Memory* %loadMem_469e84, %struct.Memory** %MEMORY
  %loadBr_469e84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469e84 = icmp eq i8 %loadBr_469e84, 1
  br i1 %cmpBr_469e84, label %block_.L_469eac, label %block_469e8a

block_469e8a:                                     ; preds = %block_.L_469e80
  %loadMem_469e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 1
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %PC.i54
  %3911 = add i64 %3910, 5
  store i64 %3911, i64* %PC.i54
  store i64 5, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_469e8a, %struct.Memory** %MEMORY
  %loadMem_469e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %3917 to i64*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 15
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %RAX.i52
  %3922 = load i64, i64* %RBP.i53
  %3923 = sub i64 %3922, 48
  %3924 = load i64, i64* %PC.i51
  %3925 = add i64 %3924, 3
  store i64 %3925, i64* %PC.i51
  %3926 = trunc i64 %3921 to i32
  %3927 = inttoptr i64 %3923 to i32*
  %3928 = load i32, i32* %3927
  %3929 = sub i32 %3926, %3928
  %3930 = zext i32 %3929 to i64
  store i64 %3930, i64* %RAX.i52, align 8
  %3931 = icmp ult i32 %3926, %3928
  %3932 = zext i1 %3931 to i8
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3932, i8* %3933, align 1
  %3934 = and i32 %3929, 255
  %3935 = call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3938, i8* %3939, align 1
  %3940 = xor i32 %3928, %3926
  %3941 = xor i32 %3940, %3929
  %3942 = lshr i32 %3941, 4
  %3943 = trunc i32 %3942 to i8
  %3944 = and i8 %3943, 1
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3944, i8* %3945, align 1
  %3946 = icmp eq i32 %3929, 0
  %3947 = zext i1 %3946 to i8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3947, i8* %3948, align 1
  %3949 = lshr i32 %3929, 31
  %3950 = trunc i32 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3950, i8* %3951, align 1
  %3952 = lshr i32 %3926, 31
  %3953 = lshr i32 %3928, 31
  %3954 = xor i32 %3953, %3952
  %3955 = xor i32 %3949, %3952
  %3956 = add i32 %3955, %3954
  %3957 = icmp eq i32 %3956, 2
  %3958 = zext i1 %3957 to i8
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3958, i8* %3959, align 1
  store %struct.Memory* %loadMem_469e8f, %struct.Memory** %MEMORY
  %loadMem_469e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 1
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %3965 to i32*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 15
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %3968 to i64*
  %3969 = load i32, i32* %EAX.i49
  %3970 = zext i32 %3969 to i64
  %3971 = load i64, i64* %RBP.i50
  %3972 = sub i64 %3971, 56
  %3973 = load i64, i64* %PC.i48
  %3974 = add i64 %3973, 3
  store i64 %3974, i64* %PC.i48
  %3975 = inttoptr i64 %3972 to i32*
  %3976 = load i32, i32* %3975
  %3977 = sub i32 %3969, %3976
  %3978 = icmp ult i32 %3969, %3976
  %3979 = zext i1 %3978 to i8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3979, i8* %3980, align 1
  %3981 = and i32 %3977, 255
  %3982 = call i32 @llvm.ctpop.i32(i32 %3981)
  %3983 = trunc i32 %3982 to i8
  %3984 = and i8 %3983, 1
  %3985 = xor i8 %3984, 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3985, i8* %3986, align 1
  %3987 = xor i32 %3976, %3969
  %3988 = xor i32 %3987, %3977
  %3989 = lshr i32 %3988, 4
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3991, i8* %3992, align 1
  %3993 = icmp eq i32 %3977, 0
  %3994 = zext i1 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3994, i8* %3995, align 1
  %3996 = lshr i32 %3977, 31
  %3997 = trunc i32 %3996 to i8
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3997, i8* %3998, align 1
  %3999 = lshr i32 %3969, 31
  %4000 = lshr i32 %3976, 31
  %4001 = xor i32 %4000, %3999
  %4002 = xor i32 %3996, %3999
  %4003 = add i32 %4002, %4001
  %4004 = icmp eq i32 %4003, 2
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4005, i8* %4006, align 1
  store %struct.Memory* %loadMem_469e92, %struct.Memory** %MEMORY
  %loadMem_469e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %PC.i47
  %4011 = add i64 %4010, 23
  %4012 = load i64, i64* %PC.i47
  %4013 = add i64 %4012, 6
  %4014 = load i64, i64* %PC.i47
  %4015 = add i64 %4014, 6
  store i64 %4015, i64* %PC.i47
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4017 = load i8, i8* %4016, align 1
  %4018 = icmp ne i8 %4017, 0
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4020 = load i8, i8* %4019, align 1
  %4021 = icmp ne i8 %4020, 0
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4023 = load i8, i8* %4022, align 1
  %4024 = icmp ne i8 %4023, 0
  %4025 = xor i1 %4021, %4024
  %4026 = or i1 %4018, %4025
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %BRANCH_TAKEN, align 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4029 = select i1 %4026, i64 %4011, i64 %4013
  store i64 %4029, i64* %4028, align 8
  store %struct.Memory* %loadMem_469e95, %struct.Memory** %MEMORY
  %loadBr_469e95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469e95 = icmp eq i8 %loadBr_469e95, 1
  br i1 %cmpBr_469e95, label %block_.L_469eac, label %block_469e9b

block_469e9b:                                     ; preds = %block_469e8a
  %loadMem_469e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 1
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %PC.i45
  %4037 = add i64 %4036, 5
  store i64 %4037, i64* %PC.i45
  store i64 5, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_469e9b, %struct.Memory** %MEMORY
  %loadMem_469ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 5
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 15
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %RBP.i44
  %4048 = sub i64 %4047, 68
  %4049 = load i64, i64* %PC.i42
  %4050 = add i64 %4049, 3
  store i64 %4050, i64* %PC.i42
  %4051 = inttoptr i64 %4048 to i32*
  %4052 = load i32, i32* %4051
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_469ea0, %struct.Memory** %MEMORY
  %loadMem_469ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 5
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4059 to i32*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i41
  %4064 = sub i64 %4063, 52
  %4065 = load i32, i32* %ECX.i
  %4066 = zext i32 %4065 to i64
  %4067 = load i64, i64* %PC.i40
  %4068 = add i64 %4067, 3
  store i64 %4068, i64* %PC.i40
  %4069 = inttoptr i64 %4064 to i32*
  store i32 %4065, i32* %4069
  store %struct.Memory* %loadMem_469ea3, %struct.Memory** %MEMORY
  %loadMem_469ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 1
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 15
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RAX.i38
  %4080 = load i64, i64* %RBP.i39
  %4081 = sub i64 %4080, 48
  %4082 = load i64, i64* %PC.i37
  %4083 = add i64 %4082, 3
  store i64 %4083, i64* %PC.i37
  %4084 = trunc i64 %4079 to i32
  %4085 = inttoptr i64 %4081 to i32*
  %4086 = load i32, i32* %4085
  %4087 = sub i32 %4084, %4086
  %4088 = zext i32 %4087 to i64
  store i64 %4088, i64* %RAX.i38, align 8
  %4089 = icmp ult i32 %4084, %4086
  %4090 = zext i1 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4090, i8* %4091, align 1
  %4092 = and i32 %4087, 255
  %4093 = call i32 @llvm.ctpop.i32(i32 %4092)
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  %4096 = xor i8 %4095, 1
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4096, i8* %4097, align 1
  %4098 = xor i32 %4086, %4084
  %4099 = xor i32 %4098, %4087
  %4100 = lshr i32 %4099, 4
  %4101 = trunc i32 %4100 to i8
  %4102 = and i8 %4101, 1
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4102, i8* %4103, align 1
  %4104 = icmp eq i32 %4087, 0
  %4105 = zext i1 %4104 to i8
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4105, i8* %4106, align 1
  %4107 = lshr i32 %4087, 31
  %4108 = trunc i32 %4107 to i8
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4108, i8* %4109, align 1
  %4110 = lshr i32 %4084, 31
  %4111 = lshr i32 %4086, 31
  %4112 = xor i32 %4111, %4110
  %4113 = xor i32 %4107, %4110
  %4114 = add i32 %4113, %4112
  %4115 = icmp eq i32 %4114, 2
  %4116 = zext i1 %4115 to i8
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4116, i8* %4117, align 1
  store %struct.Memory* %loadMem_469ea6, %struct.Memory** %MEMORY
  %loadMem_469ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4120 to i64*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 1
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %EAX.i35 = bitcast %union.anon* %4123 to i32*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 15
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4126 to i64*
  %4127 = load i64, i64* %RBP.i36
  %4128 = sub i64 %4127, 56
  %4129 = load i32, i32* %EAX.i35
  %4130 = zext i32 %4129 to i64
  %4131 = load i64, i64* %PC.i34
  %4132 = add i64 %4131, 3
  store i64 %4132, i64* %PC.i34
  %4133 = inttoptr i64 %4128 to i32*
  store i32 %4129, i32* %4133
  store %struct.Memory* %loadMem_469ea9, %struct.Memory** %MEMORY
  br label %block_.L_469eac

block_.L_469eac:                                  ; preds = %block_469e9b, %block_469e8a, %block_.L_469e80
  %loadMem_469eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4136 to i64*
  %4137 = load i64, i64* %PC.i33
  %4138 = add i64 %4137, 5
  %4139 = load i64, i64* %PC.i33
  %4140 = add i64 %4139, 5
  store i64 %4140, i64* %PC.i33
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4138, i64* %4141, align 8
  store %struct.Memory* %loadMem_469eac, %struct.Memory** %MEMORY
  br label %block_.L_469eb1

block_.L_469eb1:                                  ; preds = %block_.L_469eac, %block_469e41, %block_.L_469e22
  %loadMem1_469eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 33
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %PC.i32
  %4146 = add i64 %4145, -377169
  %4147 = load i64, i64* %PC.i32
  %4148 = add i64 %4147, 5
  %4149 = load i64, i64* %PC.i32
  %4150 = add i64 %4149, 5
  store i64 %4150, i64* %PC.i32
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4152 = load i64, i64* %4151, align 8
  %4153 = add i64 %4152, -8
  %4154 = inttoptr i64 %4153 to i64*
  store i64 %4148, i64* %4154
  store i64 %4153, i64* %4151, align 8
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4146, i64* %4155, align 8
  store %struct.Memory* %loadMem1_469eb1, %struct.Memory** %MEMORY
  %loadMem2_469eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469eb1 = load i64, i64* %3
  %call2_469eb1 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_469eb1, %struct.Memory* %loadMem2_469eb1)
  store %struct.Memory* %call2_469eb1, %struct.Memory** %MEMORY
  br label %block_.L_469eb6

block_.L_469eb6:                                  ; preds = %block_.L_469eb1, %block_469de7, %block_.L_469d44, %block_.L_469ce7, %block_.L_469c66
  %loadMem_469eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 15
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RBP.i31
  %4166 = sub i64 %4165, 84
  %4167 = load i64, i64* %PC.i29
  %4168 = add i64 %4167, 3
  store i64 %4168, i64* %PC.i29
  %4169 = inttoptr i64 %4166 to i32*
  %4170 = load i32, i32* %4169
  %4171 = zext i32 %4170 to i64
  store i64 %4171, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_469eb6, %struct.Memory** %MEMORY
  %loadMem_469eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 33
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4174 to i64*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 1
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %4177 to i64*
  %4178 = load i64, i64* %RAX.i28
  %4179 = load i64, i64* %PC.i27
  %4180 = add i64 %4179, 3
  store i64 %4180, i64* %PC.i27
  %4181 = trunc i64 %4178 to i32
  %4182 = add i32 1, %4181
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RAX.i28, align 8
  %4184 = icmp ult i32 %4182, %4181
  %4185 = icmp ult i32 %4182, 1
  %4186 = or i1 %4184, %4185
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4187, i8* %4188, align 1
  %4189 = and i32 %4182, 255
  %4190 = call i32 @llvm.ctpop.i32(i32 %4189)
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = xor i8 %4192, 1
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4193, i8* %4194, align 1
  %4195 = xor i64 1, %4178
  %4196 = trunc i64 %4195 to i32
  %4197 = xor i32 %4196, %4182
  %4198 = lshr i32 %4197, 4
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4200, i8* %4201, align 1
  %4202 = icmp eq i32 %4182, 0
  %4203 = zext i1 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4203, i8* %4204, align 1
  %4205 = lshr i32 %4182, 31
  %4206 = trunc i32 %4205 to i8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4206, i8* %4207, align 1
  %4208 = lshr i32 %4181, 31
  %4209 = xor i32 %4205, %4208
  %4210 = add i32 %4209, %4205
  %4211 = icmp eq i32 %4210, 2
  %4212 = zext i1 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4212, i8* %4213, align 1
  store %struct.Memory* %loadMem_469eb9, %struct.Memory** %MEMORY
  %loadMem_469ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 1
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %4219 to i32*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 15
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %RBP.i26
  %4224 = sub i64 %4223, 84
  %4225 = load i32, i32* %EAX.i25
  %4226 = zext i32 %4225 to i64
  %4227 = load i64, i64* %PC.i24
  %4228 = add i64 %4227, 3
  store i64 %4228, i64* %PC.i24
  %4229 = inttoptr i64 %4224 to i32*
  store i32 %4225, i32* %4229
  store %struct.Memory* %loadMem_469ebc, %struct.Memory** %MEMORY
  %loadMem_469ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %PC.i23
  %4234 = add i64 %4233, -760
  %4235 = load i64, i64* %PC.i23
  %4236 = add i64 %4235, 5
  store i64 %4236, i64* %PC.i23
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4234, i64* %4237, align 8
  store %struct.Memory* %loadMem_469ebf, %struct.Memory** %MEMORY
  br label %block_.L_469bc7

block_.L_469ec4:                                  ; preds = %block_.L_469bc7
  %loadMem_469ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 15
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RBP.i22
  %4245 = sub i64 %4244, 56
  %4246 = load i64, i64* %PC.i21
  %4247 = add i64 %4246, 4
  store i64 %4247, i64* %PC.i21
  %4248 = inttoptr i64 %4245 to i32*
  %4249 = load i32, i32* %4248
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4250, align 1
  %4251 = and i32 %4249, 255
  %4252 = call i32 @llvm.ctpop.i32(i32 %4251)
  %4253 = trunc i32 %4252 to i8
  %4254 = and i8 %4253, 1
  %4255 = xor i8 %4254, 1
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4255, i8* %4256, align 1
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4257, align 1
  %4258 = icmp eq i32 %4249, 0
  %4259 = zext i1 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4259, i8* %4260, align 1
  %4261 = lshr i32 %4249, 31
  %4262 = trunc i32 %4261 to i8
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4262, i8* %4263, align 1
  %4264 = lshr i32 %4249, 31
  %4265 = xor i32 %4261, %4264
  %4266 = add i32 %4265, %4264
  %4267 = icmp eq i32 %4266, 2
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4268, i8* %4269, align 1
  store %struct.Memory* %loadMem_469ec4, %struct.Memory** %MEMORY
  %loadMem_469ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %PC.i20
  %4274 = add i64 %4273, 15
  %4275 = load i64, i64* %PC.i20
  %4276 = add i64 %4275, 6
  %4277 = load i64, i64* %PC.i20
  %4278 = add i64 %4277, 6
  store i64 %4278, i64* %PC.i20
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4280 = load i8, i8* %4279, align 1
  store i8 %4280, i8* %BRANCH_TAKEN, align 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4282 = icmp ne i8 %4280, 0
  %4283 = select i1 %4282, i64 %4274, i64 %4276
  store i64 %4283, i64* %4281, align 8
  store %struct.Memory* %loadMem_469ec8, %struct.Memory** %MEMORY
  %loadBr_469ec8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_469ec8 = icmp eq i8 %loadBr_469ec8, 1
  br i1 %cmpBr_469ec8, label %block_.L_469ed7, label %block_469ece

block_469ece:                                     ; preds = %block_.L_469ec4
  %loadMem_469ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 1
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %4289 to i64*
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 15
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %4292 to i64*
  %4293 = load i64, i64* %RBP.i19
  %4294 = sub i64 %4293, 52
  %4295 = load i64, i64* %PC.i17
  %4296 = add i64 %4295, 3
  store i64 %4296, i64* %PC.i17
  %4297 = inttoptr i64 %4294 to i32*
  %4298 = load i32, i32* %4297
  %4299 = zext i32 %4298 to i64
  store i64 %4299, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_469ece, %struct.Memory** %MEMORY
  %loadMem_469ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 5
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 15
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %RBP.i16
  %4310 = sub i64 %4309, 24
  %4311 = load i64, i64* %PC.i14
  %4312 = add i64 %4311, 4
  store i64 %4312, i64* %PC.i14
  %4313 = inttoptr i64 %4310 to i64*
  %4314 = load i64, i64* %4313
  store i64 %4314, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_469ed1, %struct.Memory** %MEMORY
  %loadMem_469ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 33
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 1
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %4320 to i32*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 5
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4323 to i64*
  %4324 = load i64, i64* %RCX.i
  %4325 = load i32, i32* %EAX.i13
  %4326 = zext i32 %4325 to i64
  %4327 = load i64, i64* %PC.i12
  %4328 = add i64 %4327, 2
  store i64 %4328, i64* %PC.i12
  %4329 = inttoptr i64 %4324 to i32*
  store i32 %4325, i32* %4329
  store %struct.Memory* %loadMem_469ed5, %struct.Memory** %MEMORY
  br label %block_.L_469ed7

block_.L_469ed7:                                  ; preds = %block_469ece, %block_.L_469ec4
  %loadMem_469ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 1
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 15
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %RBP.i11
  %4340 = sub i64 %4339, 56
  %4341 = load i64, i64* %PC.i9
  %4342 = add i64 %4341, 3
  store i64 %4342, i64* %PC.i9
  %4343 = inttoptr i64 %4340 to i32*
  %4344 = load i32, i32* %4343
  %4345 = zext i32 %4344 to i64
  store i64 %4345, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_469ed7, %struct.Memory** %MEMORY
  %loadMem_469eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 1
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4351 to i32*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 15
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4354 to i64*
  %4355 = load i64, i64* %RBP.i8
  %4356 = sub i64 %4355, 4
  %4357 = load i32, i32* %EAX.i
  %4358 = zext i32 %4357 to i64
  %4359 = load i64, i64* %PC.i7
  %4360 = add i64 %4359, 3
  store i64 %4360, i64* %PC.i7
  %4361 = inttoptr i64 %4356 to i32*
  store i32 %4357, i32* %4361
  store %struct.Memory* %loadMem_469eda, %struct.Memory** %MEMORY
  br label %block_.L_469edd

block_.L_469edd:                                  ; preds = %block_.L_469ed7, %block_469e66, %block_.L_469cf6
  %loadMem_469edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 1
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 15
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4370 to i64*
  %4371 = load i64, i64* %RBP.i6
  %4372 = sub i64 %4371, 4
  %4373 = load i64, i64* %PC.i5
  %4374 = add i64 %4373, 3
  store i64 %4374, i64* %PC.i5
  %4375 = inttoptr i64 %4372 to i32*
  %4376 = load i32, i32* %4375
  %4377 = zext i32 %4376 to i64
  store i64 %4377, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_469edd, %struct.Memory** %MEMORY
  %loadMem_469ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 13
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RSP.i
  %4385 = load i64, i64* %PC.i4
  %4386 = add i64 %4385, 4
  store i64 %4386, i64* %PC.i4
  %4387 = add i64 96, %4384
  store i64 %4387, i64* %RSP.i, align 8
  %4388 = icmp ult i64 %4387, %4384
  %4389 = icmp ult i64 %4387, 96
  %4390 = or i1 %4388, %4389
  %4391 = zext i1 %4390 to i8
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4391, i8* %4392, align 1
  %4393 = trunc i64 %4387 to i32
  %4394 = and i32 %4393, 255
  %4395 = call i32 @llvm.ctpop.i32(i32 %4394)
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  %4398 = xor i8 %4397, 1
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4398, i8* %4399, align 1
  %4400 = xor i64 96, %4384
  %4401 = xor i64 %4400, %4387
  %4402 = lshr i64 %4401, 4
  %4403 = trunc i64 %4402 to i8
  %4404 = and i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4404, i8* %4405, align 1
  %4406 = icmp eq i64 %4387, 0
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4407, i8* %4408, align 1
  %4409 = lshr i64 %4387, 63
  %4410 = trunc i64 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4410, i8* %4411, align 1
  %4412 = lshr i64 %4384, 63
  %4413 = xor i64 %4409, %4412
  %4414 = add i64 %4413, %4409
  %4415 = icmp eq i64 %4414, 2
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4416, i8* %4417, align 1
  store %struct.Memory* %loadMem_469ee0, %struct.Memory** %MEMORY
  %loadMem_469ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 33
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 15
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4423 to i64*
  %4424 = load i64, i64* %PC.i2
  %4425 = add i64 %4424, 1
  store i64 %4425, i64* %PC.i2
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4427 = load i64, i64* %4426, align 8
  %4428 = add i64 %4427, 8
  %4429 = inttoptr i64 %4427 to i64*
  %4430 = load i64, i64* %4429
  store i64 %4430, i64* %RBP.i3, align 8
  store i64 %4428, i64* %4426, align 8
  store %struct.Memory* %loadMem_469ee4, %struct.Memory** %MEMORY
  %loadMem_469ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 33
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4433 to i64*
  %4434 = load i64, i64* %PC.i1
  %4435 = add i64 %4434, 1
  store i64 %4435, i64* %PC.i1
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4438 = load i64, i64* %4437, align 8
  %4439 = inttoptr i64 %4438 to i64*
  %4440 = load i64, i64* %4439
  store i64 %4440, i64* %4436, align 8
  %4441 = add i64 %4438, 8
  store i64 %4441, i64* %4437, align 8
  store %struct.Memory* %loadMem_469ee5, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_469ee5
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_469b98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469bc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xcfe___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3326, i64* %RSI, align 8
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

define %struct.Memory* @routine_jge_.L_469ec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_je_.L_469c16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_469c75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_469c3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469c70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_469c66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469c6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469eb6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469d07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_469c97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_469cf6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_469cbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469cf1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_469ce7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469cec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469d02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469edd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_469d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57fe8a___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fe8a_type* @G__0x57fe8a to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_jne_.L_469d49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_469e22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_469d85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469d8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_jne_.L_469e1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57fe9c___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fe9c_type* @G__0x57fe9c to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_469e1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.do_attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_469df6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_469e18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jle_.L_469e18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_469e22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.do_find_defense(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_469eb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_469e80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_469eac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_jle_.L_469eac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
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

define %struct.Memory* @routine_jmpq_.L_469eb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469bc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_469ed7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
