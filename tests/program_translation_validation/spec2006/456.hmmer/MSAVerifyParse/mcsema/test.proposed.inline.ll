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
%G_0x25e41__rip__type = type <{ [4 x i8] }>
%G_0x26449__rip__type = type <{ [8 x i8] }>
%G__0x4588f1_type = type <{ [8 x i8] }>
%G__0x458927_type = type <{ [8 x i8] }>
%G__0x458957_type = type <{ [8 x i8] }>
%G__0x4589a2_type = type <{ [8 x i8] }>
%G__0x4589e3_type = type <{ [8 x i8] }>
%G__0x458a32_type = type <{ [8 x i8] }>
%G__0x458a81_type = type <{ [8 x i8] }>
%G__0x458ace_type = type <{ [8 x i8] }>
%G__0x458b1b_type = type <{ [8 x i8] }>
%G__0x458d45_type = type <{ [8 x i8] }>
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
@G_0x25e41__rip_ = global %G_0x25e41__rip__type zeroinitializer
@G_0x26449__rip_ = global %G_0x26449__rip__type zeroinitializer
@G__0x4588f1 = global %G__0x4588f1_type zeroinitializer
@G__0x458927 = global %G__0x458927_type zeroinitializer
@G__0x458957 = global %G__0x458957_type zeroinitializer
@G__0x4589a2 = global %G__0x4589a2_type zeroinitializer
@G__0x4589e3 = global %G__0x4589e3_type zeroinitializer
@G__0x458a32 = global %G__0x458a32_type zeroinitializer
@G__0x458a81 = global %G__0x458a81_type zeroinitializer
@G__0x458ace = global %G__0x458ace_type zeroinitializer
@G__0x458b1b = global %G__0x458b1b_type zeroinitializer
@G__0x458d45 = global %G__0x458d45_type zeroinitializer

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

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @MSAVerifyParse(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42e2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42e2c0, %struct.Memory** %MEMORY
  %loadMem_42e2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42e2c1, %struct.Memory** %MEMORY
  %loadMem_42e2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i32 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i32
  %36 = load i64, i64* %PC.i31
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i31
  %38 = sub i64 %35, 208
  store i64 %38, i64* %RSP.i32, align 8
  %39 = icmp ult i64 %35, 208
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
  %49 = xor i64 208, %35
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
  store %struct.Memory* %loadMem_42e2c4, %struct.Memory** %MEMORY
  %loadMem_42e2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i55
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i54
  %79 = load i64, i64* %PC.i53
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i53
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_42e2cb, %struct.Memory** %MEMORY
  %loadMem_42e2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RDI.i141 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i142
  %92 = sub i64 %91, 8
  %93 = load i64, i64* %PC.i140
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC.i140
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RDI.i141, align 8
  store %struct.Memory* %loadMem_42e2cf, %struct.Memory** %MEMORY
  %loadMem_42e2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDI.i160 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RDI.i160
  %104 = add i64 %103, 28
  %105 = load i64, i64* %PC.i159
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC.i159
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %109, align 1
  %110 = and i32 %108, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %114, i8* %115, align 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %116, align 1
  %117 = icmp eq i32 %108, 0
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %118, i8* %119, align 1
  %120 = lshr i32 %108, 31
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %121, i8* %122, align 1
  %123 = lshr i32 %108, 31
  %124 = xor i32 %120, %123
  %125 = add i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %128, align 1
  store %struct.Memory* %loadMem_42e2d3, %struct.Memory** %MEMORY
  %loadMem_42e2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %PC.i224
  %133 = add i64 %132, 81
  %134 = load i64, i64* %PC.i224
  %135 = add i64 %134, 6
  %136 = load i64, i64* %PC.i224
  %137 = add i64 %136, 6
  store i64 %137, i64* %PC.i224
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %139 = load i8, i8* %138, align 1
  %140 = icmp eq i8 %139, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %BRANCH_TAKEN, align 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %143 = select i1 %140, i64 %133, i64 %135
  store i64 %143, i64* %142, align 8
  store %struct.Memory* %loadMem_42e2d7, %struct.Memory** %MEMORY
  %loadBr_42e2d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e2d7 = icmp eq i8 %loadBr_42e2d7, 1
  br i1 %cmpBr_42e2d7, label %block_.L_42e328, label %block_42e2dd

block_42e2dd:                                     ; preds = %entry
  %loadMem_42e2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i243
  %154 = sub i64 %153, 8
  %155 = load i64, i64* %PC.i241
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC.i241
  %157 = inttoptr i64 %154 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_42e2dd, %struct.Memory** %MEMORY
  %loadMem_42e2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RAX.i308
  %166 = add i64 %165, 40
  %167 = load i64, i64* %PC.i307
  %168 = add i64 %167, 5
  store i64 %168, i64* %PC.i307
  %169 = inttoptr i64 %166 to i64*
  %170 = load i64, i64* %169
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %171, align 1
  %172 = trunc i64 %170 to i32
  %173 = and i32 %172, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %179, align 1
  %180 = icmp eq i64 %170, 0
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %181, i8* %182, align 1
  %183 = lshr i64 %170, 63
  %184 = trunc i64 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %184, i8* %185, align 1
  %186 = lshr i64 %170, 63
  %187 = xor i64 %183, %186
  %188 = add i64 %187, %186
  %189 = icmp eq i64 %188, 2
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %190, i8* %191, align 1
  store %struct.Memory* %loadMem_42e2e1, %struct.Memory** %MEMORY
  %loadMem_42e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %PC.i325
  %196 = add i64 %195, 23
  %197 = load i64, i64* %PC.i325
  %198 = add i64 %197, 6
  %199 = load i64, i64* %PC.i325
  %200 = add i64 %199, 6
  store i64 %200, i64* %PC.i325
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %202 = load i8, i8* %201, align 1
  store i8 %202, i8* %BRANCH_TAKEN, align 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %204 = icmp ne i8 %202, 0
  %205 = select i1 %204, i64 %196, i64 %198
  store i64 %205, i64* %203, align 8
  store %struct.Memory* %loadMem_42e2e6, %struct.Memory** %MEMORY
  %loadBr_42e2e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e2e6 = icmp eq i8 %loadBr_42e2e6, 1
  br i1 %cmpBr_42e2e6, label %block_.L_42e2fd, label %block_42e2ec

block_42e2ec:                                     ; preds = %block_42e2dd
  %loadMem_42e2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 15
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %214 to i64*
  %215 = load i64, i64* %RBP.i735
  %216 = sub i64 %215, 8
  %217 = load i64, i64* %PC.i733
  %218 = add i64 %217, 4
  store i64 %218, i64* %PC.i733
  %219 = inttoptr i64 %216 to i64*
  %220 = load i64, i64* %219
  store i64 %220, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_42e2ec, %struct.Memory** %MEMORY
  %loadMem_42e2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RAX.i870 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RAX.i870
  %228 = add i64 %227, 40
  %229 = load i64, i64* %PC.i869
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i869
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RAX.i870, align 8
  store %struct.Memory* %loadMem_42e2f0, %struct.Memory** %MEMORY
  %loadMem_42e2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i868
  %243 = sub i64 %242, 24
  %244 = load i64, i64* %RAX.i867
  %245 = load i64, i64* %PC.i866
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC.i866
  %247 = inttoptr i64 %243 to i64*
  store i64 %244, i64* %247
  store %struct.Memory* %loadMem_42e2f4, %struct.Memory** %MEMORY
  %loadMem_42e2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %PC.i865
  %252 = add i64 %251, 24
  %253 = load i64, i64* %PC.i865
  %254 = add i64 %253, 5
  store i64 %254, i64* %PC.i865
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %252, i64* %255, align 8
  store %struct.Memory* %loadMem_42e2f8, %struct.Memory** %MEMORY
  br label %block_.L_42e310

block_.L_42e2fd:                                  ; preds = %block_42e2dd
  %loadMem_42e2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %PC.i863
  %263 = add i64 %262, 10
  store i64 %263, i64* %PC.i863
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_42e2fd, %struct.Memory** %MEMORY
  %loadMem_42e307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %RAX.i861 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 15
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RBP.i862 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %RBP.i862
  %274 = sub i64 %273, 24
  %275 = load i64, i64* %RAX.i861
  %276 = load i64, i64* %PC.i860
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC.i860
  %278 = inttoptr i64 %274 to i64*
  store i64 %275, i64* %278
  store %struct.Memory* %loadMem_42e307, %struct.Memory** %MEMORY
  %loadMem_42e30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %PC.i859
  %283 = add i64 %282, 5
  %284 = load i64, i64* %PC.i859
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC.i859
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  store %struct.Memory* %loadMem_42e30b, %struct.Memory** %MEMORY
  br label %block_.L_42e310

block_.L_42e310:                                  ; preds = %block_.L_42e2fd, %block_42e2ec
  %loadMem_42e310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 15
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RBP.i858
  %297 = sub i64 %296, 24
  %298 = load i64, i64* %PC.i856
  %299 = add i64 %298, 4
  store i64 %299, i64* %PC.i856
  %300 = inttoptr i64 %297 to i64*
  %301 = load i64, i64* %300
  store i64 %301, i64* %RAX.i857, align 8
  store %struct.Memory* %loadMem_42e310, %struct.Memory** %MEMORY
  %loadMem_42e314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 11
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RDI.i855 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %PC.i854
  %309 = add i64 %308, 10
  store i64 %309, i64* %PC.i854
  store i64 ptrtoint (%G__0x4588f1_type* @G__0x4588f1 to i64), i64* %RDI.i855, align 8
  store %struct.Memory* %loadMem_42e314, %struct.Memory** %MEMORY
  %loadMem_42e31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 9
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RSI.i853 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RAX.i852
  %320 = load i64, i64* %PC.i851
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i851
  store i64 %319, i64* %RSI.i853, align 8
  store %struct.Memory* %loadMem_42e31e, %struct.Memory** %MEMORY
  %loadMem_42e321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %328 = bitcast %union.anon* %327 to %struct.anon.2*
  %AL.i850 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %328, i32 0, i32 0
  %329 = load i64, i64* %PC.i849
  %330 = add i64 %329, 2
  store i64 %330, i64* %PC.i849
  store i8 0, i8* %AL.i850, align 1
  store %struct.Memory* %loadMem_42e321, %struct.Memory** %MEMORY
  %loadMem1_42e323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %PC.i848
  %335 = add i64 %334, 67309
  %336 = load i64, i64* %PC.i848
  %337 = add i64 %336, 5
  %338 = load i64, i64* %PC.i848
  %339 = add i64 %338, 5
  store i64 %339, i64* %PC.i848
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %337, i64* %343
  store i64 %342, i64* %340, align 8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %335, i64* %344, align 8
  store %struct.Memory* %loadMem1_42e323, %struct.Memory** %MEMORY
  %loadMem2_42e323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e323 = load i64, i64* %3
  %call2_42e323 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e323, %struct.Memory* %loadMem2_42e323)
  store %struct.Memory* %call2_42e323, %struct.Memory** %MEMORY
  br label %block_.L_42e328

block_.L_42e328:                                  ; preds = %block_.L_42e310, %entry
  %loadMem_42e328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i847
  %355 = sub i64 %354, 8
  %356 = load i64, i64* %PC.i845
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i845
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358
  store i64 %359, i64* %RAX.i846, align 8
  store %struct.Memory* %loadMem_42e328, %struct.Memory** %MEMORY
  %loadMem_42e32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i844 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RAX.i844
  %367 = add i64 %366, 328
  %368 = load i64, i64* %PC.i843
  %369 = add i64 %368, 7
  store i64 %369, i64* %PC.i843
  %370 = inttoptr i64 %367 to i64*
  %371 = load i64, i64* %370
  store i64 %371, i64* %RAX.i844, align 8
  store %struct.Memory* %loadMem_42e32c, %struct.Memory** %MEMORY
  %loadMem_42e333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RAX.i841 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RCX.i842 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RAX.i841
  %382 = load i64, i64* %PC.i840
  %383 = add i64 %382, 2
  store i64 %383, i64* %PC.i840
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RCX.i842, align 8
  store %struct.Memory* %loadMem_42e333, %struct.Memory** %MEMORY
  %loadMem_42e335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RAX.i838 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RBP.i839 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RBP.i839
  %397 = sub i64 %396, 8
  %398 = load i64, i64* %PC.i837
  %399 = add i64 %398, 4
  store i64 %399, i64* %PC.i837
  %400 = inttoptr i64 %397 to i64*
  %401 = load i64, i64* %400
  store i64 %401, i64* %RAX.i838, align 8
  store %struct.Memory* %loadMem_42e335, %struct.Memory** %MEMORY
  %loadMem_42e339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %ECX.i835 = bitcast %union.anon* %407 to i32*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %RAX.i836
  %412 = add i64 %411, 24
  %413 = load i32, i32* %ECX.i835
  %414 = zext i32 %413 to i64
  %415 = load i64, i64* %PC.i834
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC.i834
  %417 = inttoptr i64 %412 to i32*
  store i32 %413, i32* %417
  store %struct.Memory* %loadMem_42e339, %struct.Memory** %MEMORY
  %loadMem_42e33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i833 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i833
  %425 = sub i64 %424, 12
  %426 = load i64, i64* %PC.i832
  %427 = add i64 %426, 7
  store i64 %427, i64* %PC.i832
  %428 = inttoptr i64 %425 to i32*
  store i32 0, i32* %428
  store %struct.Memory* %loadMem_42e33c, %struct.Memory** %MEMORY
  br label %block_.L_42e343

block_.L_42e343:                                  ; preds = %block_.L_42e6b1, %block_.L_42e328
  %loadMem_42e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 15
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %RBP.i831
  %439 = sub i64 %438, 12
  %440 = load i64, i64* %PC.i829
  %441 = add i64 %440, 3
  store i64 %441, i64* %PC.i829
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX.i830, align 8
  store %struct.Memory* %loadMem_42e343, %struct.Memory** %MEMORY
  %loadMem_42e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RCX.i827 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i828
  %455 = sub i64 %454, 8
  %456 = load i64, i64* %PC.i826
  %457 = add i64 %456, 4
  store i64 %457, i64* %PC.i826
  %458 = inttoptr i64 %455 to i64*
  %459 = load i64, i64* %458
  store i64 %459, i64* %RCX.i827, align 8
  store %struct.Memory* %loadMem_42e346, %struct.Memory** %MEMORY
  %loadMem_42e34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %EAX.i824 = bitcast %union.anon* %465 to i32*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 5
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RCX.i825 = bitcast %union.anon* %468 to i64*
  %469 = load i32, i32* %EAX.i824
  %470 = zext i32 %469 to i64
  %471 = load i64, i64* %RCX.i825
  %472 = add i64 %471, 28
  %473 = load i64, i64* %PC.i823
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC.i823
  %475 = inttoptr i64 %472 to i32*
  %476 = load i32, i32* %475
  %477 = sub i32 %469, %476
  %478 = icmp ult i32 %469, %476
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
  %487 = xor i32 %476, %469
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
  %499 = lshr i32 %469, 31
  %500 = lshr i32 %476, 31
  %501 = xor i32 %500, %499
  %502 = xor i32 %496, %499
  %503 = add i32 %502, %501
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %505, i8* %506, align 1
  store %struct.Memory* %loadMem_42e34a, %struct.Memory** %MEMORY
  %loadMem_42e34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %PC.i822
  %511 = add i64 %510, 882
  %512 = load i64, i64* %PC.i822
  %513 = add i64 %512, 6
  %514 = load i64, i64* %PC.i822
  %515 = add i64 %514, 6
  store i64 %515, i64* %PC.i822
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %517 = load i8, i8* %516, align 1
  %518 = icmp ne i8 %517, 0
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %520 = load i8, i8* %519, align 1
  %521 = icmp ne i8 %520, 0
  %522 = xor i1 %518, %521
  %523 = xor i1 %522, true
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %BRANCH_TAKEN, align 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %526 = select i1 %522, i64 %513, i64 %511
  store i64 %526, i64* %525, align 8
  store %struct.Memory* %loadMem_42e34d, %struct.Memory** %MEMORY
  %loadBr_42e34d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e34d = icmp eq i8 %loadBr_42e34d, 1
  br i1 %cmpBr_42e34d, label %block_.L_42e6bf, label %block_42e353

block_42e353:                                     ; preds = %block_.L_42e343
  %loadMem_42e353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i821
  %537 = sub i64 %536, 8
  %538 = load i64, i64* %PC.i819
  %539 = add i64 %538, 4
  store i64 %539, i64* %PC.i819
  %540 = inttoptr i64 %537 to i64*
  %541 = load i64, i64* %540
  store i64 %541, i64* %RAX.i820, align 8
  store %struct.Memory* %loadMem_42e353, %struct.Memory** %MEMORY
  %loadMem_42e357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %RAX.i818
  %549 = load i64, i64* %PC.i817
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC.i817
  %551 = inttoptr i64 %548 to i64*
  %552 = load i64, i64* %551
  store i64 %552, i64* %RAX.i818, align 8
  store %struct.Memory* %loadMem_42e357, %struct.Memory** %MEMORY
  %loadMem_42e35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 5
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 15
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %RBP.i816
  %563 = sub i64 %562, 12
  %564 = load i64, i64* %PC.i814
  %565 = add i64 %564, 4
  store i64 %565, i64* %PC.i814
  %566 = inttoptr i64 %563 to i32*
  %567 = load i32, i32* %566
  %568 = sext i32 %567 to i64
  store i64 %568, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_42e35a, %struct.Memory** %MEMORY
  %loadMem_42e35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RAX.i812 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %RAX.i812
  %579 = load i64, i64* %RCX.i813
  %580 = mul i64 %579, 8
  %581 = add i64 %580, %578
  %582 = load i64, i64* %PC.i811
  %583 = add i64 %582, 5
  store i64 %583, i64* %PC.i811
  %584 = inttoptr i64 %581 to i64*
  %585 = load i64, i64* %584
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %586, align 1
  %587 = trunc i64 %585 to i32
  %588 = and i32 %587, 255
  %589 = call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %592, i8* %593, align 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %594, align 1
  %595 = icmp eq i64 %585, 0
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %596, i8* %597, align 1
  %598 = lshr i64 %585, 63
  %599 = trunc i64 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %599, i8* %600, align 1
  %601 = lshr i64 %585, 63
  %602 = xor i64 %598, %601
  %603 = add i64 %602, %601
  %604 = icmp eq i64 %603, 2
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %605, i8* %606, align 1
  store %struct.Memory* %loadMem_42e35e, %struct.Memory** %MEMORY
  %loadMem_42e363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %PC.i810
  %611 = add i64 %610, 105
  %612 = load i64, i64* %PC.i810
  %613 = add i64 %612, 6
  %614 = load i64, i64* %PC.i810
  %615 = add i64 %614, 6
  store i64 %615, i64* %PC.i810
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %617 = load i8, i8* %616, align 1
  %618 = icmp eq i8 %617, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %BRANCH_TAKEN, align 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %621 = select i1 %618, i64 %611, i64 %613
  store i64 %621, i64* %620, align 8
  store %struct.Memory* %loadMem_42e363, %struct.Memory** %MEMORY
  %loadBr_42e363 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e363 = icmp eq i8 %loadBr_42e363, 1
  br i1 %cmpBr_42e363, label %block_.L_42e3cc, label %block_42e369

block_42e369:                                     ; preds = %block_42e353
  %loadMem_42e369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 15
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RBP.i809
  %632 = sub i64 %631, 8
  %633 = load i64, i64* %PC.i807
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC.i807
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635
  store i64 %636, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_42e369, %struct.Memory** %MEMORY
  %loadMem_42e36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %642 to i64*
  %643 = load i64, i64* %RAX.i806
  %644 = add i64 %643, 8
  %645 = load i64, i64* %PC.i805
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC.i805
  %647 = inttoptr i64 %644 to i64*
  %648 = load i64, i64* %647
  store i64 %648, i64* %RAX.i806, align 8
  store %struct.Memory* %loadMem_42e36d, %struct.Memory** %MEMORY
  %loadMem_42e371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 5
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %657 to i64*
  %658 = load i64, i64* %RBP.i804
  %659 = sub i64 %658, 12
  %660 = load i64, i64* %PC.i802
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC.i802
  %662 = inttoptr i64 %659 to i32*
  %663 = load i32, i32* %662
  %664 = sext i32 %663 to i64
  store i64 %664, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_42e371, %struct.Memory** %MEMORY
  %loadMem_42e375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 1
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 5
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RCX.i800 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 9
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RSI.i801 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RAX.i799
  %678 = load i64, i64* %RCX.i800
  %679 = mul i64 %678, 8
  %680 = add i64 %679, %677
  %681 = load i64, i64* %PC.i798
  %682 = add i64 %681, 4
  store i64 %682, i64* %PC.i798
  %683 = inttoptr i64 %680 to i64*
  %684 = load i64, i64* %683
  store i64 %684, i64* %RSI.i801, align 8
  store %struct.Memory* %loadMem_42e375, %struct.Memory** %MEMORY
  %loadMem_42e379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 15
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RBP.i797
  %695 = sub i64 %694, 8
  %696 = load i64, i64* %PC.i795
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i795
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RAX.i796, align 8
  store %struct.Memory* %loadMem_42e379, %struct.Memory** %MEMORY
  %loadMem_42e37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RAX.i794
  %707 = add i64 %706, 40
  %708 = load i64, i64* %PC.i793
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC.i793
  %710 = inttoptr i64 %707 to i64*
  %711 = load i64, i64* %710
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %712, align 1
  %713 = trunc i64 %711 to i32
  %714 = and i32 %713, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %720, align 1
  %721 = icmp eq i64 %711, 0
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %722, i8* %723, align 1
  %724 = lshr i64 %711, 63
  %725 = trunc i64 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %725, i8* %726, align 1
  %727 = lshr i64 %711, 63
  %728 = xor i64 %724, %727
  %729 = add i64 %728, %727
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %731, i8* %732, align 1
  store %struct.Memory* %loadMem_42e37d, %struct.Memory** %MEMORY
  %loadMem_42e382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 9
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RSI.i791 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i792
  %743 = sub i64 %742, 32
  %744 = load i64, i64* %RSI.i791
  %745 = load i64, i64* %PC.i790
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC.i790
  %747 = inttoptr i64 %743 to i64*
  store i64 %744, i64* %747
  store %struct.Memory* %loadMem_42e382, %struct.Memory** %MEMORY
  %loadMem_42e386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %PC.i789
  %752 = add i64 %751, 23
  %753 = load i64, i64* %PC.i789
  %754 = add i64 %753, 6
  %755 = load i64, i64* %PC.i789
  %756 = add i64 %755, 6
  store i64 %756, i64* %PC.i789
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %758 = load i8, i8* %757, align 1
  store i8 %758, i8* %BRANCH_TAKEN, align 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %760 = icmp ne i8 %758, 0
  %761 = select i1 %760, i64 %752, i64 %754
  store i64 %761, i64* %759, align 8
  store %struct.Memory* %loadMem_42e386, %struct.Memory** %MEMORY
  %loadBr_42e386 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e386 = icmp eq i8 %loadBr_42e386, 1
  br i1 %cmpBr_42e386, label %block_.L_42e39d, label %block_42e38c

block_42e38c:                                     ; preds = %block_42e369
  %loadMem_42e38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 15
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %770 to i64*
  %771 = load i64, i64* %RBP.i788
  %772 = sub i64 %771, 8
  %773 = load i64, i64* %PC.i786
  %774 = add i64 %773, 4
  store i64 %774, i64* %PC.i786
  %775 = inttoptr i64 %772 to i64*
  %776 = load i64, i64* %775
  store i64 %776, i64* %RAX.i787, align 8
  store %struct.Memory* %loadMem_42e38c, %struct.Memory** %MEMORY
  %loadMem_42e390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 1
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RAX.i785
  %784 = add i64 %783, 40
  %785 = load i64, i64* %PC.i784
  %786 = add i64 %785, 4
  store i64 %786, i64* %PC.i784
  %787 = inttoptr i64 %784 to i64*
  %788 = load i64, i64* %787
  store i64 %788, i64* %RAX.i785, align 8
  store %struct.Memory* %loadMem_42e390, %struct.Memory** %MEMORY
  %loadMem_42e394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RAX.i782 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 15
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RBP.i783
  %799 = sub i64 %798, 40
  %800 = load i64, i64* %RAX.i782
  %801 = load i64, i64* %PC.i781
  %802 = add i64 %801, 4
  store i64 %802, i64* %PC.i781
  %803 = inttoptr i64 %799 to i64*
  store i64 %800, i64* %803
  store %struct.Memory* %loadMem_42e394, %struct.Memory** %MEMORY
  %loadMem_42e398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %PC.i780
  %808 = add i64 %807, 24
  %809 = load i64, i64* %PC.i780
  %810 = add i64 %809, 5
  store i64 %810, i64* %PC.i780
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %808, i64* %811, align 8
  store %struct.Memory* %loadMem_42e398, %struct.Memory** %MEMORY
  br label %block_.L_42e3b0

block_.L_42e39d:                                  ; preds = %block_42e369
  %loadMem_42e39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %PC.i778
  %819 = add i64 %818, 10
  store i64 %819, i64* %PC.i778
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i779, align 8
  store %struct.Memory* %loadMem_42e39d, %struct.Memory** %MEMORY
  %loadMem_42e3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 1
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 15
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RBP.i777
  %830 = sub i64 %829, 40
  %831 = load i64, i64* %RAX.i776
  %832 = load i64, i64* %PC.i775
  %833 = add i64 %832, 4
  store i64 %833, i64* %PC.i775
  %834 = inttoptr i64 %830 to i64*
  store i64 %831, i64* %834
  store %struct.Memory* %loadMem_42e3a7, %struct.Memory** %MEMORY
  %loadMem_42e3ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %PC.i774
  %839 = add i64 %838, 5
  %840 = load i64, i64* %PC.i774
  %841 = add i64 %840, 5
  store i64 %841, i64* %PC.i774
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %839, i64* %842, align 8
  store %struct.Memory* %loadMem_42e3ab, %struct.Memory** %MEMORY
  br label %block_.L_42e3b0

block_.L_42e3b0:                                  ; preds = %block_.L_42e39d, %block_42e38c
  %loadMem_42e3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 15
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %RBP.i773
  %853 = sub i64 %852, 40
  %854 = load i64, i64* %PC.i771
  %855 = add i64 %854, 4
  store i64 %855, i64* %PC.i771
  %856 = inttoptr i64 %853 to i64*
  %857 = load i64, i64* %856
  store i64 %857, i64* %RAX.i772, align 8
  store %struct.Memory* %loadMem_42e3b0, %struct.Memory** %MEMORY
  %loadMem_42e3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 11
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RDI.i770 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %PC.i769
  %865 = add i64 %864, 10
  store i64 %865, i64* %PC.i769
  store i64 ptrtoint (%G__0x458927_type* @G__0x458927 to i64), i64* %RDI.i770, align 8
  store %struct.Memory* %loadMem_42e3b4, %struct.Memory** %MEMORY
  %loadMem_42e3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 9
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RSI.i767 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 15
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RBP.i768
  %876 = sub i64 %875, 32
  %877 = load i64, i64* %PC.i766
  %878 = add i64 %877, 4
  store i64 %878, i64* %PC.i766
  %879 = inttoptr i64 %876 to i64*
  %880 = load i64, i64* %879
  store i64 %880, i64* %RSI.i767, align 8
  store %struct.Memory* %loadMem_42e3be, %struct.Memory** %MEMORY
  %loadMem_42e3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 7
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RDX.i765 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RAX.i764
  %891 = load i64, i64* %PC.i763
  %892 = add i64 %891, 3
  store i64 %892, i64* %PC.i763
  store i64 %890, i64* %RDX.i765, align 8
  store %struct.Memory* %loadMem_42e3c2, %struct.Memory** %MEMORY
  %loadMem_42e3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 1
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %899 = bitcast %union.anon* %898 to %struct.anon.2*
  %AL.i762 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %899, i32 0, i32 0
  %900 = load i64, i64* %PC.i761
  %901 = add i64 %900, 2
  store i64 %901, i64* %PC.i761
  store i8 0, i8* %AL.i762, align 1
  store %struct.Memory* %loadMem_42e3c5, %struct.Memory** %MEMORY
  %loadMem1_42e3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %PC.i760
  %906 = add i64 %905, 67145
  %907 = load i64, i64* %PC.i760
  %908 = add i64 %907, 5
  %909 = load i64, i64* %PC.i760
  %910 = add i64 %909, 5
  store i64 %910, i64* %PC.i760
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %912 = load i64, i64* %911, align 8
  %913 = add i64 %912, -8
  %914 = inttoptr i64 %913 to i64*
  store i64 %908, i64* %914
  store i64 %913, i64* %911, align 8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %906, i64* %915, align 8
  store %struct.Memory* %loadMem1_42e3c7, %struct.Memory** %MEMORY
  %loadMem2_42e3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e3c7 = load i64, i64* %3
  %call2_42e3c7 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e3c7, %struct.Memory* %loadMem2_42e3c7)
  store %struct.Memory* %call2_42e3c7, %struct.Memory** %MEMORY
  br label %block_.L_42e3cc

block_.L_42e3cc:                                  ; preds = %block_.L_42e3b0, %block_42e353
  %loadMem_42e3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i759
  %926 = sub i64 %925, 8
  %927 = load i64, i64* %PC.i757
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC.i757
  %929 = inttoptr i64 %926 to i64*
  %930 = load i64, i64* %929
  store i64 %930, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_42e3cc, %struct.Memory** %MEMORY
  %loadMem_42e3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 5
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RCX.i756 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RAX.i755
  %941 = add i64 %940, 32
  %942 = load i64, i64* %PC.i754
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i754
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RCX.i756, align 8
  store %struct.Memory* %loadMem_42e3d0, %struct.Memory** %MEMORY
  %loadMem_42e3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RCX.i753
  %954 = load i64, i64* %PC.i752
  %955 = add i64 %954, 3
  store i64 %955, i64* %PC.i752
  %956 = and i64 1, %953
  %957 = trunc i64 %956 to i32
  store i64 %956, i64* %RCX.i753, align 8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %958, align 1
  %959 = and i32 %957, 255
  %960 = call i32 @llvm.ctpop.i32(i32 %959)
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %963, i8* %964, align 1
  %965 = icmp eq i32 %957, 0
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %966, i8* %967, align 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %968, align 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %969, align 1
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %970, align 1
  store %struct.Memory* %loadMem_42e3d3, %struct.Memory** %MEMORY
  %loadMem_42e3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %ECX.i751 = bitcast %union.anon* %976 to i32*
  %977 = load i32, i32* %ECX.i751
  %978 = zext i32 %977 to i64
  %979 = load i64, i64* %PC.i750
  %980 = add i64 %979, 3
  store i64 %980, i64* %PC.i750
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %981, align 1
  %982 = and i32 %977, 255
  %983 = call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %986, i8* %987, align 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %988, align 1
  %989 = icmp eq i32 %977, 0
  %990 = zext i1 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %990, i8* %991, align 1
  %992 = lshr i32 %977, 31
  %993 = trunc i32 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %993, i8* %994, align 1
  %995 = lshr i32 %977, 31
  %996 = xor i32 %992, %995
  %997 = add i32 %996, %995
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %999, i8* %1000, align 1
  store %struct.Memory* %loadMem_42e3d6, %struct.Memory** %MEMORY
  %loadMem_42e3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %PC.i749
  %1005 = add i64 %1004, 146
  %1006 = load i64, i64* %PC.i749
  %1007 = add i64 %1006, 6
  %1008 = load i64, i64* %PC.i749
  %1009 = add i64 %1008, 6
  store i64 %1009, i64* %PC.i749
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1011 = load i8, i8* %1010, align 1
  store i8 %1011, i8* %BRANCH_TAKEN, align 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1013 = icmp ne i8 %1011, 0
  %1014 = select i1 %1013, i64 %1005, i64 %1007
  store i64 %1014, i64* %1012, align 8
  store %struct.Memory* %loadMem_42e3d9, %struct.Memory** %MEMORY
  %loadBr_42e3d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e3d9 = icmp eq i8 %loadBr_42e3d9, 1
  br i1 %cmpBr_42e3d9, label %block_.L_42e46b, label %block_42e3df

block_42e3df:                                     ; preds = %block_.L_42e3cc
  %loadMem_42e3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 33
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1018, i64 0, i64 0
  %YMM0.i748 = bitcast %union.VectorReg* %1019 to %"class.std::bitset"*
  %1020 = bitcast %"class.std::bitset"* %YMM0.i748 to i8*
  %1021 = load i64, i64* %PC.i747
  %1022 = add i64 %1021, ptrtoint (%G_0x26449__rip__type* @G_0x26449__rip_ to i64)
  %1023 = load i64, i64* %PC.i747
  %1024 = add i64 %1023, 8
  store i64 %1024, i64* %PC.i747
  %1025 = inttoptr i64 %1022 to double*
  %1026 = load double, double* %1025
  %1027 = bitcast i8* %1020 to double*
  store double %1026, double* %1027, align 1
  %1028 = getelementptr inbounds i8, i8* %1020, i64 8
  %1029 = bitcast i8* %1028 to double*
  store double 0.000000e+00, double* %1029, align 1
  store %struct.Memory* %loadMem_42e3df, %struct.Memory** %MEMORY
  %loadMem_42e3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 1
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RAX.i745 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RBP.i746
  %1040 = sub i64 %1039, 8
  %1041 = load i64, i64* %PC.i744
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %PC.i744
  %1043 = inttoptr i64 %1040 to i64*
  %1044 = load i64, i64* %1043
  store i64 %1044, i64* %RAX.i745, align 8
  store %struct.Memory* %loadMem_42e3e7, %struct.Memory** %MEMORY
  %loadMem_42e3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RAX.i743
  %1052 = add i64 %1051, 16
  %1053 = load i64, i64* %PC.i742
  %1054 = add i64 %1053, 4
  store i64 %1054, i64* %PC.i742
  %1055 = inttoptr i64 %1052 to i64*
  %1056 = load i64, i64* %1055
  store i64 %1056, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_42e3eb, %struct.Memory** %MEMORY
  %loadMem_42e3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 5
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RCX.i740 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %RBP.i741
  %1067 = sub i64 %1066, 12
  %1068 = load i64, i64* %PC.i739
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC.i739
  %1070 = inttoptr i64 %1067 to i32*
  %1071 = load i32, i32* %1070
  %1072 = sext i32 %1071 to i64
  store i64 %1072, i64* %RCX.i740, align 8
  store %struct.Memory* %loadMem_42e3ef, %struct.Memory** %MEMORY
  %loadMem_42e3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 1
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 5
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1082, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1083 to %"class.std::bitset"*
  %1084 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1085 = load i64, i64* %RAX.i737
  %1086 = load i64, i64* %RCX.i738
  %1087 = mul i64 %1086, 4
  %1088 = add i64 %1087, %1085
  %1089 = load i64, i64* %PC.i736
  %1090 = add i64 %1089, 5
  store i64 %1090, i64* %PC.i736
  %1091 = inttoptr i64 %1088 to float*
  %1092 = load float, float* %1091
  %1093 = fpext float %1092 to double
  %1094 = bitcast i8* %1084 to double*
  store double %1093, double* %1094, align 1
  store %struct.Memory* %loadMem_42e3f3, %struct.Memory** %MEMORY
  %loadMem_42e3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1098, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1099 to %union.vec128_t*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1100, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1101 to %union.vec128_t*
  %1102 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1103 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1104 = load i64, i64* %PC.i732
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %PC.i732
  %1106 = bitcast i8* %1102 to double*
  %1107 = load double, double* %1106, align 1
  %1108 = bitcast i8* %1103 to double*
  %1109 = load double, double* %1108, align 1
  %1110 = fcmp uno double %1107, %1109
  br i1 %1110, label %1111, label %1123

; <label>:1111:                                   ; preds = %block_42e3df
  %1112 = fadd double %1107, %1109
  %1113 = bitcast double %1112 to i64
  %1114 = and i64 %1113, 9221120237041090560
  %1115 = icmp eq i64 %1114, 9218868437227405312
  %1116 = and i64 %1113, 2251799813685247
  %1117 = icmp ne i64 %1116, 0
  %1118 = and i1 %1115, %1117
  br i1 %1118, label %1119, label %1129

; <label>:1119:                                   ; preds = %1111
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1121 = load i64, i64* %1120, align 8
  %1122 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1121, %struct.Memory* %loadMem_42e3f8)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1123:                                   ; preds = %block_42e3df
  %1124 = fcmp ogt double %1107, %1109
  br i1 %1124, label %1129, label %1125

; <label>:1125:                                   ; preds = %1123
  %1126 = fcmp olt double %1107, %1109
  br i1 %1126, label %1129, label %1127

; <label>:1127:                                   ; preds = %1125
  %1128 = fcmp oeq double %1107, %1109
  br i1 %1128, label %1129, label %1136

; <label>:1129:                                   ; preds = %1127, %1125, %1123, %1111
  %1130 = phi i8 [ 0, %1123 ], [ 0, %1125 ], [ 1, %1127 ], [ 1, %1111 ]
  %1131 = phi i8 [ 0, %1123 ], [ 0, %1125 ], [ 0, %1127 ], [ 1, %1111 ]
  %1132 = phi i8 [ 0, %1123 ], [ 1, %1125 ], [ 0, %1127 ], [ 1, %1111 ]
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1130, i8* %1133, align 1
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1131, i8* %1134, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1132, i8* %1135, align 1
  br label %1136

; <label>:1136:                                   ; preds = %1129, %1127
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1137, align 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1138, align 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1139, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1119, %1136
  %1140 = phi %struct.Memory* [ %1122, %1119 ], [ %loadMem_42e3f8, %1136 ]
  store %struct.Memory* %1140, %struct.Memory** %MEMORY
  %loadMem_42e3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %PC.i731
  %1145 = add i64 %1144, 111
  %1146 = load i64, i64* %PC.i731
  %1147 = add i64 %1146, 6
  %1148 = load i64, i64* %PC.i731
  %1149 = add i64 %1148, 6
  store i64 %1149, i64* %PC.i731
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1151 = load i8, i8* %1150, align 1
  %1152 = icmp eq i8 %1151, 0
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %BRANCH_TAKEN, align 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1155 = select i1 %1152, i64 %1145, i64 %1147
  store i64 %1155, i64* %1154, align 8
  store %struct.Memory* %loadMem_42e3fc, %struct.Memory** %MEMORY
  %loadBr_42e3fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e3fc = icmp eq i8 %loadBr_42e3fc, 1
  br i1 %cmpBr_42e3fc, label %block_.L_42e46b, label %block_42e402

block_42e402:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_42e402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i730
  %1160 = add i64 %1159, 105
  %1161 = load i64, i64* %PC.i730
  %1162 = add i64 %1161, 6
  %1163 = load i64, i64* %PC.i730
  %1164 = add i64 %1163, 6
  store i64 %1164, i64* %PC.i730
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1166 = load i8, i8* %1165, align 1
  store i8 %1166, i8* %BRANCH_TAKEN, align 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1168 = icmp ne i8 %1166, 0
  %1169 = select i1 %1168, i64 %1160, i64 %1162
  store i64 %1169, i64* %1167, align 8
  store %struct.Memory* %loadMem_42e402, %struct.Memory** %MEMORY
  %loadBr_42e402 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e402 = icmp eq i8 %loadBr_42e402, 1
  br i1 %cmpBr_42e402, label %block_.L_42e46b, label %block_42e408

block_42e408:                                     ; preds = %block_42e402
  %loadMem_42e408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 1
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 15
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RBP.i729
  %1180 = sub i64 %1179, 8
  %1181 = load i64, i64* %PC.i727
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i727
  %1183 = inttoptr i64 %1180 to i64*
  %1184 = load i64, i64* %1183
  store i64 %1184, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_42e408, %struct.Memory** %MEMORY
  %loadMem_42e40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %RAX.i726
  %1192 = add i64 %1191, 8
  %1193 = load i64, i64* %PC.i725
  %1194 = add i64 %1193, 4
  store i64 %1194, i64* %PC.i725
  %1195 = inttoptr i64 %1192 to i64*
  %1196 = load i64, i64* %1195
  store i64 %1196, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_42e40c, %struct.Memory** %MEMORY
  %loadMem_42e410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 5
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 15
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RBP.i724
  %1207 = sub i64 %1206, 12
  %1208 = load i64, i64* %PC.i722
  %1209 = add i64 %1208, 4
  store i64 %1209, i64* %PC.i722
  %1210 = inttoptr i64 %1207 to i32*
  %1211 = load i32, i32* %1210
  %1212 = sext i32 %1211 to i64
  store i64 %1212, i64* %RCX.i723, align 8
  store %struct.Memory* %loadMem_42e410, %struct.Memory** %MEMORY
  %loadMem_42e414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 1
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 5
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 9
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RSI.i721 = bitcast %union.anon* %1224 to i64*
  %1225 = load i64, i64* %RAX.i719
  %1226 = load i64, i64* %RCX.i720
  %1227 = mul i64 %1226, 8
  %1228 = add i64 %1227, %1225
  %1229 = load i64, i64* %PC.i718
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC.i718
  %1231 = inttoptr i64 %1228 to i64*
  %1232 = load i64, i64* %1231
  store i64 %1232, i64* %RSI.i721, align 8
  store %struct.Memory* %loadMem_42e414, %struct.Memory** %MEMORY
  %loadMem_42e418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i717
  %1243 = sub i64 %1242, 8
  %1244 = load i64, i64* %PC.i715
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC.i715
  %1246 = inttoptr i64 %1243 to i64*
  %1247 = load i64, i64* %1246
  store i64 %1247, i64* %RAX.i716, align 8
  store %struct.Memory* %loadMem_42e418, %struct.Memory** %MEMORY
  %loadMem_42e41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 1
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %1253 to i64*
  %1254 = load i64, i64* %RAX.i714
  %1255 = add i64 %1254, 40
  %1256 = load i64, i64* %PC.i713
  %1257 = add i64 %1256, 5
  store i64 %1257, i64* %PC.i713
  %1258 = inttoptr i64 %1255 to i64*
  %1259 = load i64, i64* %1258
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1260, align 1
  %1261 = trunc i64 %1259 to i32
  %1262 = and i32 %1261, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1268, align 1
  %1269 = icmp eq i64 %1259, 0
  %1270 = zext i1 %1269 to i8
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1270, i8* %1271, align 1
  %1272 = lshr i64 %1259, 63
  %1273 = trunc i64 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1273, i8* %1274, align 1
  %1275 = lshr i64 %1259, 63
  %1276 = xor i64 %1272, %1275
  %1277 = add i64 %1276, %1275
  %1278 = icmp eq i64 %1277, 2
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1279, i8* %1280, align 1
  store %struct.Memory* %loadMem_42e41c, %struct.Memory** %MEMORY
  %loadMem_42e421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 9
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RSI.i711 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 15
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %1289 to i64*
  %1290 = load i64, i64* %RBP.i712
  %1291 = sub i64 %1290, 48
  %1292 = load i64, i64* %RSI.i711
  %1293 = load i64, i64* %PC.i710
  %1294 = add i64 %1293, 4
  store i64 %1294, i64* %PC.i710
  %1295 = inttoptr i64 %1291 to i64*
  store i64 %1292, i64* %1295
  store %struct.Memory* %loadMem_42e421, %struct.Memory** %MEMORY
  %loadMem_42e425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %PC.i709
  %1300 = add i64 %1299, 23
  %1301 = load i64, i64* %PC.i709
  %1302 = add i64 %1301, 6
  %1303 = load i64, i64* %PC.i709
  %1304 = add i64 %1303, 6
  store i64 %1304, i64* %PC.i709
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1306 = load i8, i8* %1305, align 1
  store i8 %1306, i8* %BRANCH_TAKEN, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1308 = icmp ne i8 %1306, 0
  %1309 = select i1 %1308, i64 %1300, i64 %1302
  store i64 %1309, i64* %1307, align 8
  store %struct.Memory* %loadMem_42e425, %struct.Memory** %MEMORY
  %loadBr_42e425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e425 = icmp eq i8 %loadBr_42e425, 1
  br i1 %cmpBr_42e425, label %block_.L_42e43c, label %block_42e42b

block_42e42b:                                     ; preds = %block_42e408
  %loadMem_42e42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 1
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 15
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %RBP.i708
  %1320 = sub i64 %1319, 8
  %1321 = load i64, i64* %PC.i706
  %1322 = add i64 %1321, 4
  store i64 %1322, i64* %PC.i706
  %1323 = inttoptr i64 %1320 to i64*
  %1324 = load i64, i64* %1323
  store i64 %1324, i64* %RAX.i707, align 8
  store %struct.Memory* %loadMem_42e42b, %struct.Memory** %MEMORY
  %loadMem_42e42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 1
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RAX.i705
  %1332 = add i64 %1331, 40
  %1333 = load i64, i64* %PC.i704
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %PC.i704
  %1335 = inttoptr i64 %1332 to i64*
  %1336 = load i64, i64* %1335
  store i64 %1336, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_42e42f, %struct.Memory** %MEMORY
  %loadMem_42e433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 1
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 15
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %1345 to i64*
  %1346 = load i64, i64* %RBP.i703
  %1347 = sub i64 %1346, 56
  %1348 = load i64, i64* %RAX.i702
  %1349 = load i64, i64* %PC.i701
  %1350 = add i64 %1349, 4
  store i64 %1350, i64* %PC.i701
  %1351 = inttoptr i64 %1347 to i64*
  store i64 %1348, i64* %1351
  store %struct.Memory* %loadMem_42e433, %struct.Memory** %MEMORY
  %loadMem_42e437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %PC.i700
  %1356 = add i64 %1355, 24
  %1357 = load i64, i64* %PC.i700
  %1358 = add i64 %1357, 5
  store i64 %1358, i64* %PC.i700
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1356, i64* %1359, align 8
  store %struct.Memory* %loadMem_42e437, %struct.Memory** %MEMORY
  br label %block_.L_42e44f

block_.L_42e43c:                                  ; preds = %block_42e408
  %loadMem_42e43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 1
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %PC.i698
  %1367 = add i64 %1366, 10
  store i64 %1367, i64* %PC.i698
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_42e43c, %struct.Memory** %MEMORY
  %loadMem_42e446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 1
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1376 to i64*
  %1377 = load i64, i64* %RBP.i697
  %1378 = sub i64 %1377, 56
  %1379 = load i64, i64* %RAX.i696
  %1380 = load i64, i64* %PC.i695
  %1381 = add i64 %1380, 4
  store i64 %1381, i64* %PC.i695
  %1382 = inttoptr i64 %1378 to i64*
  store i64 %1379, i64* %1382
  store %struct.Memory* %loadMem_42e446, %struct.Memory** %MEMORY
  %loadMem_42e44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %PC.i694
  %1387 = add i64 %1386, 5
  %1388 = load i64, i64* %PC.i694
  %1389 = add i64 %1388, 5
  store i64 %1389, i64* %PC.i694
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1387, i64* %1390, align 8
  store %struct.Memory* %loadMem_42e44a, %struct.Memory** %MEMORY
  br label %block_.L_42e44f

block_.L_42e44f:                                  ; preds = %block_.L_42e43c, %block_42e42b
  %loadMem_42e44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 1
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 15
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %RBP.i693
  %1401 = sub i64 %1400, 56
  %1402 = load i64, i64* %PC.i691
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC.i691
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404
  store i64 %1405, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_42e44f, %struct.Memory** %MEMORY
  %loadMem_42e453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 11
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RDI.i690 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %PC.i689
  %1413 = add i64 %1412, 10
  store i64 %1413, i64* %PC.i689
  store i64 ptrtoint (%G__0x458957_type* @G__0x458957 to i64), i64* %RDI.i690, align 8
  store %struct.Memory* %loadMem_42e453, %struct.Memory** %MEMORY
  %loadMem_42e45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 9
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RSI.i687 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 15
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RBP.i688
  %1424 = sub i64 %1423, 48
  %1425 = load i64, i64* %PC.i686
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC.i686
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427
  store i64 %1428, i64* %RSI.i687, align 8
  store %struct.Memory* %loadMem_42e45d, %struct.Memory** %MEMORY
  %loadMem_42e461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 7
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RDX.i685 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RAX.i684
  %1439 = load i64, i64* %PC.i683
  %1440 = add i64 %1439, 3
  store i64 %1440, i64* %PC.i683
  store i64 %1438, i64* %RDX.i685, align 8
  store %struct.Memory* %loadMem_42e461, %struct.Memory** %MEMORY
  %loadMem_42e464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 1
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %1447 = bitcast %union.anon* %1446 to %struct.anon.2*
  %AL.i682 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1447, i32 0, i32 0
  %1448 = load i64, i64* %PC.i681
  %1449 = add i64 %1448, 2
  store i64 %1449, i64* %PC.i681
  store i8 0, i8* %AL.i682, align 1
  store %struct.Memory* %loadMem_42e464, %struct.Memory** %MEMORY
  %loadMem1_42e466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %PC.i680
  %1454 = add i64 %1453, 66986
  %1455 = load i64, i64* %PC.i680
  %1456 = add i64 %1455, 5
  %1457 = load i64, i64* %PC.i680
  %1458 = add i64 %1457, 5
  store i64 %1458, i64* %PC.i680
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1460 = load i64, i64* %1459, align 8
  %1461 = add i64 %1460, -8
  %1462 = inttoptr i64 %1461 to i64*
  store i64 %1456, i64* %1462
  store i64 %1461, i64* %1459, align 8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1454, i64* %1463, align 8
  store %struct.Memory* %loadMem1_42e466, %struct.Memory** %MEMORY
  %loadMem2_42e466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e466 = load i64, i64* %3
  %call2_42e466 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e466, %struct.Memory* %loadMem2_42e466)
  store %struct.Memory* %call2_42e466, %struct.Memory** %MEMORY
  br label %block_.L_42e46b

block_.L_42e46b:                                  ; preds = %block_.L_42e44f, %block_42e402, %routine_ucomisd__xmm0___xmm1.exit, %block_.L_42e3cc
  %loadMem_42e46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 1
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 15
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RBP.i679
  %1474 = sub i64 %1473, 8
  %1475 = load i64, i64* %PC.i677
  %1476 = add i64 %1475, 4
  store i64 %1476, i64* %PC.i677
  %1477 = inttoptr i64 %1474 to i64*
  %1478 = load i64, i64* %1477
  store i64 %1478, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_42e46b, %struct.Memory** %MEMORY
  %loadMem_42e46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RAX.i676
  %1486 = add i64 %1485, 328
  %1487 = load i64, i64* %PC.i675
  %1488 = add i64 %1487, 7
  store i64 %1488, i64* %PC.i675
  %1489 = inttoptr i64 %1486 to i64*
  %1490 = load i64, i64* %1489
  store i64 %1490, i64* %RAX.i676, align 8
  store %struct.Memory* %loadMem_42e46f, %struct.Memory** %MEMORY
  %loadMem_42e476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 5
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i674
  %1501 = sub i64 %1500, 12
  %1502 = load i64, i64* %PC.i672
  %1503 = add i64 %1502, 4
  store i64 %1503, i64* %PC.i672
  %1504 = inttoptr i64 %1501 to i32*
  %1505 = load i32, i32* %1504
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RCX.i673, align 8
  store %struct.Memory* %loadMem_42e476, %struct.Memory** %MEMORY
  %loadMem_42e47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 1
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 7
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RDX.i671 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RAX.i669
  %1520 = load i64, i64* %RCX.i670
  %1521 = mul i64 %1520, 4
  %1522 = add i64 %1521, %1519
  %1523 = load i64, i64* %PC.i668
  %1524 = add i64 %1523, 3
  store i64 %1524, i64* %PC.i668
  %1525 = inttoptr i64 %1522 to i32*
  %1526 = load i32, i32* %1525
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RDX.i671, align 8
  store %struct.Memory* %loadMem_42e47a, %struct.Memory** %MEMORY
  %loadMem_42e47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RBP.i667
  %1538 = sub i64 %1537, 8
  %1539 = load i64, i64* %PC.i665
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %PC.i665
  %1541 = inttoptr i64 %1538 to i64*
  %1542 = load i64, i64* %1541
  store i64 %1542, i64* %RAX.i666, align 8
  store %struct.Memory* %loadMem_42e47d, %struct.Memory** %MEMORY
  %loadMem_42e481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 7
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %EDX.i663 = bitcast %union.anon* %1548 to i32*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 1
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %1551 to i64*
  %1552 = load i32, i32* %EDX.i663
  %1553 = zext i32 %1552 to i64
  %1554 = load i64, i64* %RAX.i664
  %1555 = add i64 %1554, 24
  %1556 = load i64, i64* %PC.i662
  %1557 = add i64 %1556, 3
  store i64 %1557, i64* %PC.i662
  %1558 = inttoptr i64 %1555 to i32*
  %1559 = load i32, i32* %1558
  %1560 = sub i32 %1552, %1559
  %1561 = icmp ult i32 %1552, %1559
  %1562 = zext i1 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1562, i8* %1563, align 1
  %1564 = and i32 %1560, 255
  %1565 = call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1568, i8* %1569, align 1
  %1570 = xor i32 %1559, %1552
  %1571 = xor i32 %1570, %1560
  %1572 = lshr i32 %1571, 4
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1574, i8* %1575, align 1
  %1576 = icmp eq i32 %1560, 0
  %1577 = zext i1 %1576 to i8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1577, i8* %1578, align 1
  %1579 = lshr i32 %1560, 31
  %1580 = trunc i32 %1579 to i8
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1580, i8* %1581, align 1
  %1582 = lshr i32 %1552, 31
  %1583 = lshr i32 %1559, 31
  %1584 = xor i32 %1583, %1582
  %1585 = xor i32 %1579, %1582
  %1586 = add i32 %1585, %1584
  %1587 = icmp eq i32 %1586, 2
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1588, i8* %1589, align 1
  store %struct.Memory* %loadMem_42e481, %struct.Memory** %MEMORY
  %loadMem_42e484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %PC.i661
  %1594 = add i64 %1593, 142
  %1595 = load i64, i64* %PC.i661
  %1596 = add i64 %1595, 6
  %1597 = load i64, i64* %PC.i661
  %1598 = add i64 %1597, 6
  store i64 %1598, i64* %PC.i661
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1600 = load i8, i8* %1599, align 1
  store i8 %1600, i8* %BRANCH_TAKEN, align 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1602 = icmp ne i8 %1600, 0
  %1603 = select i1 %1602, i64 %1594, i64 %1596
  store i64 %1603, i64* %1601, align 8
  store %struct.Memory* %loadMem_42e484, %struct.Memory** %MEMORY
  %loadBr_42e484 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e484 = icmp eq i8 %loadBr_42e484, 1
  br i1 %cmpBr_42e484, label %block_.L_42e512, label %block_42e48a

block_42e48a:                                     ; preds = %block_.L_42e46b
  %loadMem_42e48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 15
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RBP.i660
  %1614 = sub i64 %1613, 8
  %1615 = load i64, i64* %PC.i658
  %1616 = add i64 %1615, 4
  store i64 %1616, i64* %PC.i658
  %1617 = inttoptr i64 %1614 to i64*
  %1618 = load i64, i64* %1617
  store i64 %1618, i64* %RAX.i659, align 8
  store %struct.Memory* %loadMem_42e48a, %struct.Memory** %MEMORY
  %loadMem_42e48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 1
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RAX.i657
  %1626 = add i64 %1625, 8
  %1627 = load i64, i64* %PC.i656
  %1628 = add i64 %1627, 4
  store i64 %1628, i64* %PC.i656
  %1629 = inttoptr i64 %1626 to i64*
  %1630 = load i64, i64* %1629
  store i64 %1630, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_42e48e, %struct.Memory** %MEMORY
  %loadMem_42e492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 5
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 15
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RBP.i655
  %1641 = sub i64 %1640, 12
  %1642 = load i64, i64* %PC.i653
  %1643 = add i64 %1642, 4
  store i64 %1643, i64* %PC.i653
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644
  %1646 = sext i32 %1645 to i64
  store i64 %1646, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_42e492, %struct.Memory** %MEMORY
  %loadMem_42e496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 1
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 5
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 9
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RSI.i652 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RAX.i650
  %1660 = load i64, i64* %RCX.i651
  %1661 = mul i64 %1660, 8
  %1662 = add i64 %1661, %1659
  %1663 = load i64, i64* %PC.i649
  %1664 = add i64 %1663, 4
  store i64 %1664, i64* %PC.i649
  %1665 = inttoptr i64 %1662 to i64*
  %1666 = load i64, i64* %1665
  store i64 %1666, i64* %RSI.i652, align 8
  store %struct.Memory* %loadMem_42e496, %struct.Memory** %MEMORY
  %loadMem_42e49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 1
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 15
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %RBP.i648
  %1677 = sub i64 %1676, 8
  %1678 = load i64, i64* %PC.i646
  %1679 = add i64 %1678, 4
  store i64 %1679, i64* %PC.i646
  %1680 = inttoptr i64 %1677 to i64*
  %1681 = load i64, i64* %1680
  store i64 %1681, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_42e49a, %struct.Memory** %MEMORY
  %loadMem_42e49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 1
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RAX.i645
  %1689 = add i64 %1688, 328
  %1690 = load i64, i64* %PC.i644
  %1691 = add i64 %1690, 7
  store i64 %1691, i64* %PC.i644
  %1692 = inttoptr i64 %1689 to i64*
  %1693 = load i64, i64* %1692
  store i64 %1693, i64* %RAX.i645, align 8
  store %struct.Memory* %loadMem_42e49e, %struct.Memory** %MEMORY
  %loadMem_42e4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 5
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 15
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %RBP.i643
  %1704 = sub i64 %1703, 12
  %1705 = load i64, i64* %PC.i641
  %1706 = add i64 %1705, 4
  store i64 %1706, i64* %PC.i641
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = sext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i642, align 8
  store %struct.Memory* %loadMem_42e4a5, %struct.Memory** %MEMORY
  %loadMem_42e4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 1
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 5
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 7
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RAX.i638
  %1723 = load i64, i64* %RCX.i639
  %1724 = mul i64 %1723, 4
  %1725 = add i64 %1724, %1722
  %1726 = load i64, i64* %PC.i637
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i637
  %1728 = inttoptr i64 %1725 to i32*
  %1729 = load i32, i32* %1728
  %1730 = zext i32 %1729 to i64
  store i64 %1730, i64* %RDX.i640, align 8
  store %struct.Memory* %loadMem_42e4a9, %struct.Memory** %MEMORY
  %loadMem_42e4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 1
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 15
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1739 to i64*
  %1740 = load i64, i64* %RBP.i636
  %1741 = sub i64 %1740, 8
  %1742 = load i64, i64* %PC.i634
  %1743 = add i64 %1742, 4
  store i64 %1743, i64* %PC.i634
  %1744 = inttoptr i64 %1741 to i64*
  %1745 = load i64, i64* %1744
  store i64 %1745, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_42e4ac, %struct.Memory** %MEMORY
  %loadMem_42e4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 5
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RAX.i632
  %1756 = add i64 %1755, 24
  %1757 = load i64, i64* %PC.i631
  %1758 = add i64 %1757, 3
  store i64 %1758, i64* %PC.i631
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_42e4b0, %struct.Memory** %MEMORY
  %loadMem_42e4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RBP.i630
  %1772 = sub i64 %1771, 8
  %1773 = load i64, i64* %PC.i628
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i628
  %1775 = inttoptr i64 %1772 to i64*
  %1776 = load i64, i64* %1775
  store i64 %1776, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_42e4b3, %struct.Memory** %MEMORY
  %loadMem_42e4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 1
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %RAX.i627
  %1784 = add i64 %1783, 40
  %1785 = load i64, i64* %PC.i626
  %1786 = add i64 %1785, 5
  store i64 %1786, i64* %PC.i626
  %1787 = inttoptr i64 %1784 to i64*
  %1788 = load i64, i64* %1787
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1789, align 1
  %1790 = trunc i64 %1788 to i32
  %1791 = and i32 %1790, 255
  %1792 = call i32 @llvm.ctpop.i32(i32 %1791)
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = xor i8 %1794, 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1795, i8* %1796, align 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1797, align 1
  %1798 = icmp eq i64 %1788, 0
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1799, i8* %1800, align 1
  %1801 = lshr i64 %1788, 63
  %1802 = trunc i64 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i64 %1788, 63
  %1805 = xor i64 %1801, %1804
  %1806 = add i64 %1805, %1804
  %1807 = icmp eq i64 %1806, 2
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1808, i8* %1809, align 1
  store %struct.Memory* %loadMem_42e4b7, %struct.Memory** %MEMORY
  %loadMem_42e4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 9
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RSI.i624 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 15
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %1818 to i64*
  %1819 = load i64, i64* %RBP.i625
  %1820 = sub i64 %1819, 64
  %1821 = load i64, i64* %RSI.i624
  %1822 = load i64, i64* %PC.i623
  %1823 = add i64 %1822, 4
  store i64 %1823, i64* %PC.i623
  %1824 = inttoptr i64 %1820 to i64*
  store i64 %1821, i64* %1824
  store %struct.Memory* %loadMem_42e4bc, %struct.Memory** %MEMORY
  %loadMem_42e4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 7
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %EDX.i621 = bitcast %union.anon* %1830 to i32*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 15
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %RBP.i622
  %1835 = sub i64 %1834, 68
  %1836 = load i32, i32* %EDX.i621
  %1837 = zext i32 %1836 to i64
  %1838 = load i64, i64* %PC.i620
  %1839 = add i64 %1838, 3
  store i64 %1839, i64* %PC.i620
  %1840 = inttoptr i64 %1835 to i32*
  store i32 %1836, i32* %1840
  store %struct.Memory* %loadMem_42e4c0, %struct.Memory** %MEMORY
  %loadMem_42e4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 5
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %ECX.i618 = bitcast %union.anon* %1846 to i32*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 15
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %RBP.i619
  %1851 = sub i64 %1850, 72
  %1852 = load i32, i32* %ECX.i618
  %1853 = zext i32 %1852 to i64
  %1854 = load i64, i64* %PC.i617
  %1855 = add i64 %1854, 3
  store i64 %1855, i64* %PC.i617
  %1856 = inttoptr i64 %1851 to i32*
  store i32 %1852, i32* %1856
  store %struct.Memory* %loadMem_42e4c3, %struct.Memory** %MEMORY
  %loadMem_42e4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 33
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %PC.i616
  %1861 = add i64 %1860, 23
  %1862 = load i64, i64* %PC.i616
  %1863 = add i64 %1862, 6
  %1864 = load i64, i64* %PC.i616
  %1865 = add i64 %1864, 6
  store i64 %1865, i64* %PC.i616
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1867 = load i8, i8* %1866, align 1
  store i8 %1867, i8* %BRANCH_TAKEN, align 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1869 = icmp ne i8 %1867, 0
  %1870 = select i1 %1869, i64 %1861, i64 %1863
  store i64 %1870, i64* %1868, align 8
  store %struct.Memory* %loadMem_42e4c6, %struct.Memory** %MEMORY
  %loadBr_42e4c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e4c6 = icmp eq i8 %loadBr_42e4c6, 1
  br i1 %cmpBr_42e4c6, label %block_.L_42e4dd, label %block_42e4cc

block_42e4cc:                                     ; preds = %block_42e48a
  %loadMem_42e4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 1
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i615
  %1881 = sub i64 %1880, 8
  %1882 = load i64, i64* %PC.i613
  %1883 = add i64 %1882, 4
  store i64 %1883, i64* %PC.i613
  %1884 = inttoptr i64 %1881 to i64*
  %1885 = load i64, i64* %1884
  store i64 %1885, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_42e4cc, %struct.Memory** %MEMORY
  %loadMem_42e4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RAX.i612
  %1893 = add i64 %1892, 40
  %1894 = load i64, i64* %PC.i611
  %1895 = add i64 %1894, 4
  store i64 %1895, i64* %PC.i611
  %1896 = inttoptr i64 %1893 to i64*
  %1897 = load i64, i64* %1896
  store i64 %1897, i64* %RAX.i612, align 8
  store %struct.Memory* %loadMem_42e4d0, %struct.Memory** %MEMORY
  %loadMem_42e4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 1
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 15
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %RBP.i610
  %1908 = sub i64 %1907, 80
  %1909 = load i64, i64* %RAX.i609
  %1910 = load i64, i64* %PC.i608
  %1911 = add i64 %1910, 4
  store i64 %1911, i64* %PC.i608
  %1912 = inttoptr i64 %1908 to i64*
  store i64 %1909, i64* %1912
  store %struct.Memory* %loadMem_42e4d4, %struct.Memory** %MEMORY
  %loadMem_42e4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %PC.i607
  %1917 = add i64 %1916, 24
  %1918 = load i64, i64* %PC.i607
  %1919 = add i64 %1918, 5
  store i64 %1919, i64* %PC.i607
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1917, i64* %1920, align 8
  store %struct.Memory* %loadMem_42e4d8, %struct.Memory** %MEMORY
  br label %block_.L_42e4f0

block_.L_42e4dd:                                  ; preds = %block_42e48a
  %loadMem_42e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 1
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %PC.i605
  %1928 = add i64 %1927, 10
  store i64 %1928, i64* %PC.i605
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i606, align 8
  store %struct.Memory* %loadMem_42e4dd, %struct.Memory** %MEMORY
  %loadMem_42e4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 1
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i604
  %1939 = sub i64 %1938, 80
  %1940 = load i64, i64* %RAX.i603
  %1941 = load i64, i64* %PC.i602
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %PC.i602
  %1943 = inttoptr i64 %1939 to i64*
  store i64 %1940, i64* %1943
  store %struct.Memory* %loadMem_42e4e7, %struct.Memory** %MEMORY
  %loadMem_42e4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1946 to i64*
  %1947 = load i64, i64* %PC.i601
  %1948 = add i64 %1947, 5
  %1949 = load i64, i64* %PC.i601
  %1950 = add i64 %1949, 5
  store i64 %1950, i64* %PC.i601
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1948, i64* %1951, align 8
  store %struct.Memory* %loadMem_42e4eb, %struct.Memory** %MEMORY
  br label %block_.L_42e4f0

block_.L_42e4f0:                                  ; preds = %block_.L_42e4dd, %block_42e4cc
  %loadMem_42e4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 1
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 15
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1960 to i64*
  %1961 = load i64, i64* %RBP.i600
  %1962 = sub i64 %1961, 80
  %1963 = load i64, i64* %PC.i598
  %1964 = add i64 %1963, 4
  store i64 %1964, i64* %PC.i598
  %1965 = inttoptr i64 %1962 to i64*
  %1966 = load i64, i64* %1965
  store i64 %1966, i64* %RAX.i599, align 8
  store %struct.Memory* %loadMem_42e4f0, %struct.Memory** %MEMORY
  %loadMem_42e4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 11
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RDI.i597 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %PC.i596
  %1974 = add i64 %1973, 10
  store i64 %1974, i64* %PC.i596
  store i64 ptrtoint (%G__0x4589a2_type* @G__0x4589a2 to i64), i64* %RDI.i597, align 8
  store %struct.Memory* %loadMem_42e4f4, %struct.Memory** %MEMORY
  %loadMem_42e4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 9
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RSI.i594 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 15
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RBP.i595
  %1985 = sub i64 %1984, 64
  %1986 = load i64, i64* %PC.i593
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %PC.i593
  %1988 = inttoptr i64 %1985 to i64*
  %1989 = load i64, i64* %1988
  store i64 %1989, i64* %RSI.i594, align 8
  store %struct.Memory* %loadMem_42e4fe, %struct.Memory** %MEMORY
  %loadMem_42e502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 7
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RDX.i591 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 15
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %RBP.i592
  %2000 = sub i64 %1999, 68
  %2001 = load i64, i64* %PC.i590
  %2002 = add i64 %2001, 3
  store i64 %2002, i64* %PC.i590
  %2003 = inttoptr i64 %2000 to i32*
  %2004 = load i32, i32* %2003
  %2005 = zext i32 %2004 to i64
  store i64 %2005, i64* %RDX.i591, align 8
  store %struct.Memory* %loadMem_42e502, %struct.Memory** %MEMORY
  %loadMem_42e505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 5
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i589
  %2016 = sub i64 %2015, 72
  %2017 = load i64, i64* %PC.i587
  %2018 = add i64 %2017, 3
  store i64 %2018, i64* %PC.i587
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_42e505, %struct.Memory** %MEMORY
  %loadMem_42e508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 17
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %R8.i586 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RAX.i585
  %2032 = load i64, i64* %PC.i584
  %2033 = add i64 %2032, 3
  store i64 %2033, i64* %PC.i584
  store i64 %2031, i64* %R8.i586, align 8
  store %struct.Memory* %loadMem_42e508, %struct.Memory** %MEMORY
  %loadMem_42e50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 1
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %2040 = bitcast %union.anon* %2039 to %struct.anon.2*
  %AL.i583 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2040, i32 0, i32 0
  %2041 = load i64, i64* %PC.i582
  %2042 = add i64 %2041, 2
  store i64 %2042, i64* %PC.i582
  store i8 0, i8* %AL.i583, align 1
  store %struct.Memory* %loadMem_42e50b, %struct.Memory** %MEMORY
  %loadMem1_42e50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %PC.i581
  %2047 = add i64 %2046, 66819
  %2048 = load i64, i64* %PC.i581
  %2049 = add i64 %2048, 5
  %2050 = load i64, i64* %PC.i581
  %2051 = add i64 %2050, 5
  store i64 %2051, i64* %PC.i581
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2053 = load i64, i64* %2052, align 8
  %2054 = add i64 %2053, -8
  %2055 = inttoptr i64 %2054 to i64*
  store i64 %2049, i64* %2055
  store i64 %2054, i64* %2052, align 8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2047, i64* %2056, align 8
  store %struct.Memory* %loadMem1_42e50d, %struct.Memory** %MEMORY
  %loadMem2_42e50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e50d = load i64, i64* %3
  %call2_42e50d = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e50d, %struct.Memory* %loadMem2_42e50d)
  store %struct.Memory* %call2_42e50d, %struct.Memory** %MEMORY
  br label %block_.L_42e512

block_.L_42e512:                                  ; preds = %block_.L_42e4f0, %block_.L_42e46b
  %loadMem_42e512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i580
  %2067 = sub i64 %2066, 8
  %2068 = load i64, i64* %PC.i578
  %2069 = add i64 %2068, 4
  store i64 %2069, i64* %PC.i578
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070
  store i64 %2071, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_42e512, %struct.Memory** %MEMORY
  %loadMem_42e516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 1
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RAX.i577
  %2079 = add i64 %2078, 112
  %2080 = load i64, i64* %PC.i576
  %2081 = add i64 %2080, 5
  store i64 %2081, i64* %PC.i576
  %2082 = inttoptr i64 %2079 to i64*
  %2083 = load i64, i64* %2082
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2084, align 1
  %2085 = trunc i64 %2083 to i32
  %2086 = and i32 %2085, 255
  %2087 = call i32 @llvm.ctpop.i32(i32 %2086)
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2090, i8* %2091, align 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2092, align 1
  %2093 = icmp eq i64 %2083, 0
  %2094 = zext i1 %2093 to i8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2094, i8* %2095, align 1
  %2096 = lshr i64 %2083, 63
  %2097 = trunc i64 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2097, i8* %2098, align 1
  %2099 = lshr i64 %2083, 63
  %2100 = xor i64 %2096, %2099
  %2101 = add i64 %2100, %2099
  %2102 = icmp eq i64 %2101, 2
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2103, i8* %2104, align 1
  store %struct.Memory* %loadMem_42e516, %struct.Memory** %MEMORY
  %loadMem_42e51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2107 to i64*
  %2108 = load i64, i64* %PC.i575
  %2109 = add i64 %2108, 196
  %2110 = load i64, i64* %PC.i575
  %2111 = add i64 %2110, 6
  %2112 = load i64, i64* %PC.i575
  %2113 = add i64 %2112, 6
  store i64 %2113, i64* %PC.i575
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2115 = load i8, i8* %2114, align 1
  store i8 %2115, i8* %BRANCH_TAKEN, align 1
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2117 = icmp ne i8 %2115, 0
  %2118 = select i1 %2117, i64 %2109, i64 %2111
  store i64 %2118, i64* %2116, align 8
  store %struct.Memory* %loadMem_42e51b, %struct.Memory** %MEMORY
  %loadBr_42e51b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e51b = icmp eq i8 %loadBr_42e51b, 1
  br i1 %cmpBr_42e51b, label %block_.L_42e5df, label %block_42e521

block_42e521:                                     ; preds = %block_.L_42e512
  %loadMem_42e521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 1
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RBP.i574
  %2129 = sub i64 %2128, 8
  %2130 = load i64, i64* %PC.i572
  %2131 = add i64 %2130, 4
  store i64 %2131, i64* %PC.i572
  %2132 = inttoptr i64 %2129 to i64*
  %2133 = load i64, i64* %2132
  store i64 %2133, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_42e521, %struct.Memory** %MEMORY
  %loadMem_42e525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 33
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 1
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %2139 to i64*
  %2140 = load i64, i64* %RAX.i571
  %2141 = add i64 %2140, 112
  %2142 = load i64, i64* %PC.i570
  %2143 = add i64 %2142, 4
  store i64 %2143, i64* %PC.i570
  %2144 = inttoptr i64 %2141 to i64*
  %2145 = load i64, i64* %2144
  store i64 %2145, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_42e525, %struct.Memory** %MEMORY
  %loadMem_42e529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 5
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 15
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RBP.i569
  %2156 = sub i64 %2155, 12
  %2157 = load i64, i64* %PC.i567
  %2158 = add i64 %2157, 4
  store i64 %2158, i64* %PC.i567
  %2159 = inttoptr i64 %2156 to i32*
  %2160 = load i32, i32* %2159
  %2161 = sext i32 %2160 to i64
  store i64 %2161, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_42e529, %struct.Memory** %MEMORY
  %loadMem_42e52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RAX.i565
  %2172 = load i64, i64* %RCX.i566
  %2173 = mul i64 %2172, 8
  %2174 = add i64 %2173, %2171
  %2175 = load i64, i64* %PC.i564
  %2176 = add i64 %2175, 5
  store i64 %2176, i64* %PC.i564
  %2177 = inttoptr i64 %2174 to i64*
  %2178 = load i64, i64* %2177
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2179, align 1
  %2180 = trunc i64 %2178 to i32
  %2181 = and i32 %2180, 255
  %2182 = call i32 @llvm.ctpop.i32(i32 %2181)
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = xor i8 %2184, 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2185, i8* %2186, align 1
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2187, align 1
  %2188 = icmp eq i64 %2178, 0
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2189, i8* %2190, align 1
  %2191 = lshr i64 %2178, 63
  %2192 = trunc i64 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i64 %2178, 63
  %2195 = xor i64 %2191, %2194
  %2196 = add i64 %2195, %2194
  %2197 = icmp eq i64 %2196, 2
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2198, i8* %2199, align 1
  store %struct.Memory* %loadMem_42e52d, %struct.Memory** %MEMORY
  %loadMem_42e532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %PC.i563
  %2204 = add i64 %2203, 173
  %2205 = load i64, i64* %PC.i563
  %2206 = add i64 %2205, 6
  %2207 = load i64, i64* %PC.i563
  %2208 = add i64 %2207, 6
  store i64 %2208, i64* %PC.i563
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2210 = load i8, i8* %2209, align 1
  store i8 %2210, i8* %BRANCH_TAKEN, align 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2212 = icmp ne i8 %2210, 0
  %2213 = select i1 %2212, i64 %2204, i64 %2206
  store i64 %2213, i64* %2211, align 8
  store %struct.Memory* %loadMem_42e532, %struct.Memory** %MEMORY
  %loadBr_42e532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e532 = icmp eq i8 %loadBr_42e532, 1
  br i1 %cmpBr_42e532, label %block_.L_42e5df, label %block_42e538

block_42e538:                                     ; preds = %block_42e521
  %loadMem_42e538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 33
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 1
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 15
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2222 to i64*
  %2223 = load i64, i64* %RBP.i562
  %2224 = sub i64 %2223, 8
  %2225 = load i64, i64* %PC.i560
  %2226 = add i64 %2225, 4
  store i64 %2226, i64* %PC.i560
  %2227 = inttoptr i64 %2224 to i64*
  %2228 = load i64, i64* %2227
  store i64 %2228, i64* %RAX.i561, align 8
  store %struct.Memory* %loadMem_42e538, %struct.Memory** %MEMORY
  %loadMem_42e53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 33
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 1
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RAX.i559
  %2236 = add i64 %2235, 336
  %2237 = load i64, i64* %PC.i558
  %2238 = add i64 %2237, 7
  store i64 %2238, i64* %PC.i558
  %2239 = inttoptr i64 %2236 to i64*
  %2240 = load i64, i64* %2239
  store i64 %2240, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_42e53c, %struct.Memory** %MEMORY
  %loadMem_42e543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 5
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 15
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RBP.i557
  %2251 = sub i64 %2250, 12
  %2252 = load i64, i64* %PC.i555
  %2253 = add i64 %2252, 4
  store i64 %2253, i64* %PC.i555
  %2254 = inttoptr i64 %2251 to i32*
  %2255 = load i32, i32* %2254
  %2256 = sext i32 %2255 to i64
  store i64 %2256, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_42e543, %struct.Memory** %MEMORY
  %loadMem_42e547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 5
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 7
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RAX.i552
  %2270 = load i64, i64* %RCX.i553
  %2271 = mul i64 %2270, 4
  %2272 = add i64 %2271, %2269
  %2273 = load i64, i64* %PC.i551
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC.i551
  %2275 = inttoptr i64 %2272 to i32*
  %2276 = load i32, i32* %2275
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RDX.i554, align 8
  store %struct.Memory* %loadMem_42e547, %struct.Memory** %MEMORY
  %loadMem_42e54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 1
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 15
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %RBP.i550
  %2288 = sub i64 %2287, 8
  %2289 = load i64, i64* %PC.i548
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %PC.i548
  %2291 = inttoptr i64 %2288 to i64*
  %2292 = load i64, i64* %2291
  store i64 %2292, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_42e54a, %struct.Memory** %MEMORY
  %loadMem_42e54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 7
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %EDX.i546 = bitcast %union.anon* %2298 to i32*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 1
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %2301 to i64*
  %2302 = load i32, i32* %EDX.i546
  %2303 = zext i32 %2302 to i64
  %2304 = load i64, i64* %RAX.i547
  %2305 = add i64 %2304, 24
  %2306 = load i64, i64* %PC.i545
  %2307 = add i64 %2306, 3
  store i64 %2307, i64* %PC.i545
  %2308 = inttoptr i64 %2305 to i32*
  %2309 = load i32, i32* %2308
  %2310 = sub i32 %2302, %2309
  %2311 = icmp ult i32 %2302, %2309
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2312, i8* %2313, align 1
  %2314 = and i32 %2310, 255
  %2315 = call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2318, i8* %2319, align 1
  %2320 = xor i32 %2309, %2302
  %2321 = xor i32 %2320, %2310
  %2322 = lshr i32 %2321, 4
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2324, i8* %2325, align 1
  %2326 = icmp eq i32 %2310, 0
  %2327 = zext i1 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2327, i8* %2328, align 1
  %2329 = lshr i32 %2310, 31
  %2330 = trunc i32 %2329 to i8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2330, i8* %2331, align 1
  %2332 = lshr i32 %2302, 31
  %2333 = lshr i32 %2309, 31
  %2334 = xor i32 %2333, %2332
  %2335 = xor i32 %2329, %2332
  %2336 = add i32 %2335, %2334
  %2337 = icmp eq i32 %2336, 2
  %2338 = zext i1 %2337 to i8
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2338, i8* %2339, align 1
  store %struct.Memory* %loadMem_42e54e, %struct.Memory** %MEMORY
  %loadMem_42e551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %PC.i544
  %2344 = add i64 %2343, 142
  %2345 = load i64, i64* %PC.i544
  %2346 = add i64 %2345, 6
  %2347 = load i64, i64* %PC.i544
  %2348 = add i64 %2347, 6
  store i64 %2348, i64* %PC.i544
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2350 = load i8, i8* %2349, align 1
  store i8 %2350, i8* %BRANCH_TAKEN, align 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2352 = icmp ne i8 %2350, 0
  %2353 = select i1 %2352, i64 %2344, i64 %2346
  store i64 %2353, i64* %2351, align 8
  store %struct.Memory* %loadMem_42e551, %struct.Memory** %MEMORY
  %loadBr_42e551 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e551 = icmp eq i8 %loadBr_42e551, 1
  br i1 %cmpBr_42e551, label %block_.L_42e5df, label %block_42e557

block_42e557:                                     ; preds = %block_42e538
  %loadMem_42e557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 33
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 1
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 15
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %RBP.i543
  %2364 = sub i64 %2363, 8
  %2365 = load i64, i64* %PC.i541
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %PC.i541
  %2367 = inttoptr i64 %2364 to i64*
  %2368 = load i64, i64* %2367
  store i64 %2368, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_42e557, %struct.Memory** %MEMORY
  %loadMem_42e55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 1
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %2374 to i64*
  %2375 = load i64, i64* %RAX.i540
  %2376 = add i64 %2375, 8
  %2377 = load i64, i64* %PC.i539
  %2378 = add i64 %2377, 4
  store i64 %2378, i64* %PC.i539
  %2379 = inttoptr i64 %2376 to i64*
  %2380 = load i64, i64* %2379
  store i64 %2380, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_42e55b, %struct.Memory** %MEMORY
  %loadMem_42e55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 5
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 15
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %RBP.i538
  %2391 = sub i64 %2390, 12
  %2392 = load i64, i64* %PC.i536
  %2393 = add i64 %2392, 4
  store i64 %2393, i64* %PC.i536
  %2394 = inttoptr i64 %2391 to i32*
  %2395 = load i32, i32* %2394
  %2396 = sext i32 %2395 to i64
  store i64 %2396, i64* %RCX.i537, align 8
  store %struct.Memory* %loadMem_42e55f, %struct.Memory** %MEMORY
  %loadMem_42e563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 5
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RCX.i534 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 9
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RSI.i535 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %RAX.i533
  %2410 = load i64, i64* %RCX.i534
  %2411 = mul i64 %2410, 8
  %2412 = add i64 %2411, %2409
  %2413 = load i64, i64* %PC.i532
  %2414 = add i64 %2413, 4
  store i64 %2414, i64* %PC.i532
  %2415 = inttoptr i64 %2412 to i64*
  %2416 = load i64, i64* %2415
  store i64 %2416, i64* %RSI.i535, align 8
  store %struct.Memory* %loadMem_42e563, %struct.Memory** %MEMORY
  %loadMem_42e567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 1
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 15
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RBP.i531
  %2427 = sub i64 %2426, 8
  %2428 = load i64, i64* %PC.i529
  %2429 = add i64 %2428, 4
  store i64 %2429, i64* %PC.i529
  %2430 = inttoptr i64 %2427 to i64*
  %2431 = load i64, i64* %2430
  store i64 %2431, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_42e567, %struct.Memory** %MEMORY
  %loadMem_42e56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RAX.i528
  %2439 = add i64 %2438, 336
  %2440 = load i64, i64* %PC.i527
  %2441 = add i64 %2440, 7
  store i64 %2441, i64* %PC.i527
  %2442 = inttoptr i64 %2439 to i64*
  %2443 = load i64, i64* %2442
  store i64 %2443, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_42e56b, %struct.Memory** %MEMORY
  %loadMem_42e572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 5
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RBP.i526
  %2454 = sub i64 %2453, 12
  %2455 = load i64, i64* %PC.i524
  %2456 = add i64 %2455, 4
  store i64 %2456, i64* %PC.i524
  %2457 = inttoptr i64 %2454 to i32*
  %2458 = load i32, i32* %2457
  %2459 = sext i32 %2458 to i64
  store i64 %2459, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_42e572, %struct.Memory** %MEMORY
  %loadMem_42e576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 5
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 7
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RDX.i523 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RAX.i521
  %2473 = load i64, i64* %RCX.i522
  %2474 = mul i64 %2473, 4
  %2475 = add i64 %2474, %2472
  %2476 = load i64, i64* %PC.i520
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i520
  %2478 = inttoptr i64 %2475 to i32*
  %2479 = load i32, i32* %2478
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RDX.i523, align 8
  store %struct.Memory* %loadMem_42e576, %struct.Memory** %MEMORY
  %loadMem_42e579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 15
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RBP.i519
  %2491 = sub i64 %2490, 8
  %2492 = load i64, i64* %PC.i517
  %2493 = add i64 %2492, 4
  store i64 %2493, i64* %PC.i517
  %2494 = inttoptr i64 %2491 to i64*
  %2495 = load i64, i64* %2494
  store i64 %2495, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_42e579, %struct.Memory** %MEMORY
  %loadMem_42e57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 5
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RAX.i515
  %2506 = add i64 %2505, 24
  %2507 = load i64, i64* %PC.i514
  %2508 = add i64 %2507, 3
  store i64 %2508, i64* %PC.i514
  %2509 = inttoptr i64 %2506 to i32*
  %2510 = load i32, i32* %2509
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_42e57d, %struct.Memory** %MEMORY
  %loadMem_42e580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 1
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 15
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %RBP.i513
  %2522 = sub i64 %2521, 8
  %2523 = load i64, i64* %PC.i511
  %2524 = add i64 %2523, 4
  store i64 %2524, i64* %PC.i511
  %2525 = inttoptr i64 %2522 to i64*
  %2526 = load i64, i64* %2525
  store i64 %2526, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_42e580, %struct.Memory** %MEMORY
  %loadMem_42e584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 1
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RAX.i510
  %2534 = add i64 %2533, 40
  %2535 = load i64, i64* %PC.i509
  %2536 = add i64 %2535, 5
  store i64 %2536, i64* %PC.i509
  %2537 = inttoptr i64 %2534 to i64*
  %2538 = load i64, i64* %2537
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2539, align 1
  %2540 = trunc i64 %2538 to i32
  %2541 = and i32 %2540, 255
  %2542 = call i32 @llvm.ctpop.i32(i32 %2541)
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2545, i8* %2546, align 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2547, align 1
  %2548 = icmp eq i64 %2538, 0
  %2549 = zext i1 %2548 to i8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2549, i8* %2550, align 1
  %2551 = lshr i64 %2538, 63
  %2552 = trunc i64 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2552, i8* %2553, align 1
  %2554 = lshr i64 %2538, 63
  %2555 = xor i64 %2551, %2554
  %2556 = add i64 %2555, %2554
  %2557 = icmp eq i64 %2556, 2
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2558, i8* %2559, align 1
  store %struct.Memory* %loadMem_42e584, %struct.Memory** %MEMORY
  %loadMem_42e589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 9
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %RSI.i507 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i508
  %2570 = sub i64 %2569, 88
  %2571 = load i64, i64* %RSI.i507
  %2572 = load i64, i64* %PC.i506
  %2573 = add i64 %2572, 4
  store i64 %2573, i64* %PC.i506
  %2574 = inttoptr i64 %2570 to i64*
  store i64 %2571, i64* %2574
  store %struct.Memory* %loadMem_42e589, %struct.Memory** %MEMORY
  %loadMem_42e58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 7
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %EDX.i504 = bitcast %union.anon* %2580 to i32*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 15
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2583 to i64*
  %2584 = load i64, i64* %RBP.i505
  %2585 = sub i64 %2584, 92
  %2586 = load i32, i32* %EDX.i504
  %2587 = zext i32 %2586 to i64
  %2588 = load i64, i64* %PC.i503
  %2589 = add i64 %2588, 3
  store i64 %2589, i64* %PC.i503
  %2590 = inttoptr i64 %2585 to i32*
  store i32 %2586, i32* %2590
  store %struct.Memory* %loadMem_42e58d, %struct.Memory** %MEMORY
  %loadMem_42e590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 5
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %ECX.i501 = bitcast %union.anon* %2596 to i32*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 15
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RBP.i502
  %2601 = sub i64 %2600, 96
  %2602 = load i32, i32* %ECX.i501
  %2603 = zext i32 %2602 to i64
  %2604 = load i64, i64* %PC.i500
  %2605 = add i64 %2604, 3
  store i64 %2605, i64* %PC.i500
  %2606 = inttoptr i64 %2601 to i32*
  store i32 %2602, i32* %2606
  store %struct.Memory* %loadMem_42e590, %struct.Memory** %MEMORY
  %loadMem_42e593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %PC.i499
  %2611 = add i64 %2610, 23
  %2612 = load i64, i64* %PC.i499
  %2613 = add i64 %2612, 6
  %2614 = load i64, i64* %PC.i499
  %2615 = add i64 %2614, 6
  store i64 %2615, i64* %PC.i499
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2617 = load i8, i8* %2616, align 1
  store i8 %2617, i8* %BRANCH_TAKEN, align 1
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2619 = icmp ne i8 %2617, 0
  %2620 = select i1 %2619, i64 %2611, i64 %2613
  store i64 %2620, i64* %2618, align 8
  store %struct.Memory* %loadMem_42e593, %struct.Memory** %MEMORY
  %loadBr_42e593 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e593 = icmp eq i8 %loadBr_42e593, 1
  br i1 %cmpBr_42e593, label %block_.L_42e5aa, label %block_42e599

block_42e599:                                     ; preds = %block_42e557
  %loadMem_42e599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i498
  %2631 = sub i64 %2630, 8
  %2632 = load i64, i64* %PC.i496
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %PC.i496
  %2634 = inttoptr i64 %2631 to i64*
  %2635 = load i64, i64* %2634
  store i64 %2635, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_42e599, %struct.Memory** %MEMORY
  %loadMem_42e59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 1
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RAX.i495
  %2643 = add i64 %2642, 40
  %2644 = load i64, i64* %PC.i494
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i494
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_42e59d, %struct.Memory** %MEMORY
  %loadMem_42e5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 1
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 15
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RBP.i493
  %2658 = sub i64 %2657, 104
  %2659 = load i64, i64* %RAX.i492
  %2660 = load i64, i64* %PC.i491
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i491
  %2662 = inttoptr i64 %2658 to i64*
  store i64 %2659, i64* %2662
  store %struct.Memory* %loadMem_42e5a1, %struct.Memory** %MEMORY
  %loadMem_42e5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %PC.i490
  %2667 = add i64 %2666, 24
  %2668 = load i64, i64* %PC.i490
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC.i490
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2667, i64* %2670, align 8
  store %struct.Memory* %loadMem_42e5a5, %struct.Memory** %MEMORY
  br label %block_.L_42e5bd

block_.L_42e5aa:                                  ; preds = %block_42e557
  %loadMem_42e5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 1
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2676 to i64*
  %2677 = load i64, i64* %PC.i488
  %2678 = add i64 %2677, 10
  store i64 %2678, i64* %PC.i488
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_42e5aa, %struct.Memory** %MEMORY
  %loadMem_42e5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i487
  %2689 = sub i64 %2688, 104
  %2690 = load i64, i64* %RAX.i486
  %2691 = load i64, i64* %PC.i485
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i485
  %2693 = inttoptr i64 %2689 to i64*
  store i64 %2690, i64* %2693
  store %struct.Memory* %loadMem_42e5b4, %struct.Memory** %MEMORY
  %loadMem_42e5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %PC.i484
  %2698 = add i64 %2697, 5
  %2699 = load i64, i64* %PC.i484
  %2700 = add i64 %2699, 5
  store i64 %2700, i64* %PC.i484
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2698, i64* %2701, align 8
  store %struct.Memory* %loadMem_42e5b8, %struct.Memory** %MEMORY
  br label %block_.L_42e5bd

block_.L_42e5bd:                                  ; preds = %block_.L_42e5aa, %block_42e599
  %loadMem_42e5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 1
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 15
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RBP.i483
  %2712 = sub i64 %2711, 104
  %2713 = load i64, i64* %PC.i481
  %2714 = add i64 %2713, 4
  store i64 %2714, i64* %PC.i481
  %2715 = inttoptr i64 %2712 to i64*
  %2716 = load i64, i64* %2715
  store i64 %2716, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_42e5bd, %struct.Memory** %MEMORY
  %loadMem_42e5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 11
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RDI.i480 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %PC.i479
  %2724 = add i64 %2723, 10
  store i64 %2724, i64* %PC.i479
  store i64 ptrtoint (%G__0x4589e3_type* @G__0x4589e3 to i64), i64* %RDI.i480, align 8
  store %struct.Memory* %loadMem_42e5c1, %struct.Memory** %MEMORY
  %loadMem_42e5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 9
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RSI.i477 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 15
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2733 to i64*
  %2734 = load i64, i64* %RBP.i478
  %2735 = sub i64 %2734, 88
  %2736 = load i64, i64* %PC.i476
  %2737 = add i64 %2736, 4
  store i64 %2737, i64* %PC.i476
  %2738 = inttoptr i64 %2735 to i64*
  %2739 = load i64, i64* %2738
  store i64 %2739, i64* %RSI.i477, align 8
  store %struct.Memory* %loadMem_42e5cb, %struct.Memory** %MEMORY
  %loadMem_42e5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 7
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RDX.i474 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 15
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RBP.i475
  %2750 = sub i64 %2749, 92
  %2751 = load i64, i64* %PC.i473
  %2752 = add i64 %2751, 3
  store i64 %2752, i64* %PC.i473
  %2753 = inttoptr i64 %2750 to i32*
  %2754 = load i32, i32* %2753
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RDX.i474, align 8
  store %struct.Memory* %loadMem_42e5cf, %struct.Memory** %MEMORY
  %loadMem_42e5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 5
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 15
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %RBP.i472
  %2766 = sub i64 %2765, 96
  %2767 = load i64, i64* %PC.i470
  %2768 = add i64 %2767, 3
  store i64 %2768, i64* %PC.i470
  %2769 = inttoptr i64 %2766 to i32*
  %2770 = load i32, i32* %2769
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_42e5d2, %struct.Memory** %MEMORY
  %loadMem_42e5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 1
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 17
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %R8.i469 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %RAX.i468
  %2782 = load i64, i64* %PC.i467
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %PC.i467
  store i64 %2781, i64* %R8.i469, align 8
  store %struct.Memory* %loadMem_42e5d5, %struct.Memory** %MEMORY
  %loadMem_42e5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 1
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %2790 = bitcast %union.anon* %2789 to %struct.anon.2*
  %AL.i466 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2790, i32 0, i32 0
  %2791 = load i64, i64* %PC.i465
  %2792 = add i64 %2791, 2
  store i64 %2792, i64* %PC.i465
  store i8 0, i8* %AL.i466, align 1
  store %struct.Memory* %loadMem_42e5d8, %struct.Memory** %MEMORY
  %loadMem1_42e5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %PC.i464
  %2797 = add i64 %2796, 66614
  %2798 = load i64, i64* %PC.i464
  %2799 = add i64 %2798, 5
  %2800 = load i64, i64* %PC.i464
  %2801 = add i64 %2800, 5
  store i64 %2801, i64* %PC.i464
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2803 = load i64, i64* %2802, align 8
  %2804 = add i64 %2803, -8
  %2805 = inttoptr i64 %2804 to i64*
  store i64 %2799, i64* %2805
  store i64 %2804, i64* %2802, align 8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2797, i64* %2806, align 8
  store %struct.Memory* %loadMem1_42e5da, %struct.Memory** %MEMORY
  %loadMem2_42e5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e5da = load i64, i64* %3
  %call2_42e5da = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e5da, %struct.Memory* %loadMem2_42e5da)
  store %struct.Memory* %call2_42e5da, %struct.Memory** %MEMORY
  br label %block_.L_42e5df

block_.L_42e5df:                                  ; preds = %block_.L_42e5bd, %block_42e538, %block_42e521, %block_.L_42e512
  %loadMem_42e5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 1
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RBP.i463
  %2817 = sub i64 %2816, 8
  %2818 = load i64, i64* %PC.i461
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %PC.i461
  %2820 = inttoptr i64 %2817 to i64*
  %2821 = load i64, i64* %2820
  store i64 %2821, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_42e5df, %struct.Memory** %MEMORY
  %loadMem_42e5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %RAX.i460
  %2829 = add i64 %2828, 120
  %2830 = load i64, i64* %PC.i459
  %2831 = add i64 %2830, 5
  store i64 %2831, i64* %PC.i459
  %2832 = inttoptr i64 %2829 to i64*
  %2833 = load i64, i64* %2832
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2834, align 1
  %2835 = trunc i64 %2833 to i32
  %2836 = and i32 %2835, 255
  %2837 = call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2840, i8* %2841, align 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2842, align 1
  %2843 = icmp eq i64 %2833, 0
  %2844 = zext i1 %2843 to i8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2844, i8* %2845, align 1
  %2846 = lshr i64 %2833, 63
  %2847 = trunc i64 %2846 to i8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2847, i8* %2848, align 1
  %2849 = lshr i64 %2833, 63
  %2850 = xor i64 %2846, %2849
  %2851 = add i64 %2850, %2849
  %2852 = icmp eq i64 %2851, 2
  %2853 = zext i1 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2853, i8* %2854, align 1
  store %struct.Memory* %loadMem_42e5e3, %struct.Memory** %MEMORY
  %loadMem_42e5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %PC.i458
  %2859 = add i64 %2858, 196
  %2860 = load i64, i64* %PC.i458
  %2861 = add i64 %2860, 6
  %2862 = load i64, i64* %PC.i458
  %2863 = add i64 %2862, 6
  store i64 %2863, i64* %PC.i458
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2865 = load i8, i8* %2864, align 1
  store i8 %2865, i8* %BRANCH_TAKEN, align 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2867 = icmp ne i8 %2865, 0
  %2868 = select i1 %2867, i64 %2859, i64 %2861
  store i64 %2868, i64* %2866, align 8
  store %struct.Memory* %loadMem_42e5e8, %struct.Memory** %MEMORY
  %loadBr_42e5e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e5e8 = icmp eq i8 %loadBr_42e5e8, 1
  br i1 %cmpBr_42e5e8, label %block_.L_42e6ac, label %block_42e5ee

block_42e5ee:                                     ; preds = %block_.L_42e5df
  %loadMem_42e5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 1
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 15
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RBP.i457
  %2879 = sub i64 %2878, 8
  %2880 = load i64, i64* %PC.i455
  %2881 = add i64 %2880, 4
  store i64 %2881, i64* %PC.i455
  %2882 = inttoptr i64 %2879 to i64*
  %2883 = load i64, i64* %2882
  store i64 %2883, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_42e5ee, %struct.Memory** %MEMORY
  %loadMem_42e5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 1
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %RAX.i454
  %2891 = add i64 %2890, 120
  %2892 = load i64, i64* %PC.i453
  %2893 = add i64 %2892, 4
  store i64 %2893, i64* %PC.i453
  %2894 = inttoptr i64 %2891 to i64*
  %2895 = load i64, i64* %2894
  store i64 %2895, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_42e5f2, %struct.Memory** %MEMORY
  %loadMem_42e5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 5
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 15
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %RBP.i452
  %2906 = sub i64 %2905, 12
  %2907 = load i64, i64* %PC.i450
  %2908 = add i64 %2907, 4
  store i64 %2908, i64* %PC.i450
  %2909 = inttoptr i64 %2906 to i32*
  %2910 = load i32, i32* %2909
  %2911 = sext i32 %2910 to i64
  store i64 %2911, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_42e5f6, %struct.Memory** %MEMORY
  %loadMem_42e5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 1
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 5
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RAX.i448
  %2922 = load i64, i64* %RCX.i449
  %2923 = mul i64 %2922, 8
  %2924 = add i64 %2923, %2921
  %2925 = load i64, i64* %PC.i447
  %2926 = add i64 %2925, 5
  store i64 %2926, i64* %PC.i447
  %2927 = inttoptr i64 %2924 to i64*
  %2928 = load i64, i64* %2927
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2929, align 1
  %2930 = trunc i64 %2928 to i32
  %2931 = and i32 %2930, 255
  %2932 = call i32 @llvm.ctpop.i32(i32 %2931)
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  %2935 = xor i8 %2934, 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2935, i8* %2936, align 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2937, align 1
  %2938 = icmp eq i64 %2928, 0
  %2939 = zext i1 %2938 to i8
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2939, i8* %2940, align 1
  %2941 = lshr i64 %2928, 63
  %2942 = trunc i64 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2942, i8* %2943, align 1
  %2944 = lshr i64 %2928, 63
  %2945 = xor i64 %2941, %2944
  %2946 = add i64 %2945, %2944
  %2947 = icmp eq i64 %2946, 2
  %2948 = zext i1 %2947 to i8
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2948, i8* %2949, align 1
  store %struct.Memory* %loadMem_42e5fa, %struct.Memory** %MEMORY
  %loadMem_42e5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %2952 to i64*
  %2953 = load i64, i64* %PC.i446
  %2954 = add i64 %2953, 173
  %2955 = load i64, i64* %PC.i446
  %2956 = add i64 %2955, 6
  %2957 = load i64, i64* %PC.i446
  %2958 = add i64 %2957, 6
  store i64 %2958, i64* %PC.i446
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2960 = load i8, i8* %2959, align 1
  store i8 %2960, i8* %BRANCH_TAKEN, align 1
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2962 = icmp ne i8 %2960, 0
  %2963 = select i1 %2962, i64 %2954, i64 %2956
  store i64 %2963, i64* %2961, align 8
  store %struct.Memory* %loadMem_42e5ff, %struct.Memory** %MEMORY
  %loadBr_42e5ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e5ff = icmp eq i8 %loadBr_42e5ff, 1
  br i1 %cmpBr_42e5ff, label %block_.L_42e6ac, label %block_42e605

block_42e605:                                     ; preds = %block_42e5ee
  %loadMem_42e605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 1
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 15
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RBP.i445
  %2974 = sub i64 %2973, 8
  %2975 = load i64, i64* %PC.i443
  %2976 = add i64 %2975, 4
  store i64 %2976, i64* %PC.i443
  %2977 = inttoptr i64 %2974 to i64*
  %2978 = load i64, i64* %2977
  store i64 %2978, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_42e605, %struct.Memory** %MEMORY
  %loadMem_42e609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 1
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %2984 to i64*
  %2985 = load i64, i64* %RAX.i442
  %2986 = add i64 %2985, 344
  %2987 = load i64, i64* %PC.i441
  %2988 = add i64 %2987, 7
  store i64 %2988, i64* %PC.i441
  %2989 = inttoptr i64 %2986 to i64*
  %2990 = load i64, i64* %2989
  store i64 %2990, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_42e609, %struct.Memory** %MEMORY
  %loadMem_42e610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 5
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 15
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %RBP.i440
  %3001 = sub i64 %3000, 12
  %3002 = load i64, i64* %PC.i438
  %3003 = add i64 %3002, 4
  store i64 %3003, i64* %PC.i438
  %3004 = inttoptr i64 %3001 to i32*
  %3005 = load i32, i32* %3004
  %3006 = sext i32 %3005 to i64
  store i64 %3006, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_42e610, %struct.Memory** %MEMORY
  %loadMem_42e614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 5
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 7
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %RAX.i435
  %3020 = load i64, i64* %RCX.i436
  %3021 = mul i64 %3020, 4
  %3022 = add i64 %3021, %3019
  %3023 = load i64, i64* %PC.i434
  %3024 = add i64 %3023, 3
  store i64 %3024, i64* %PC.i434
  %3025 = inttoptr i64 %3022 to i32*
  %3026 = load i32, i32* %3025
  %3027 = zext i32 %3026 to i64
  store i64 %3027, i64* %RDX.i437, align 8
  store %struct.Memory* %loadMem_42e614, %struct.Memory** %MEMORY
  %loadMem_42e617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 1
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 15
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %3036 to i64*
  %3037 = load i64, i64* %RBP.i433
  %3038 = sub i64 %3037, 8
  %3039 = load i64, i64* %PC.i431
  %3040 = add i64 %3039, 4
  store i64 %3040, i64* %PC.i431
  %3041 = inttoptr i64 %3038 to i64*
  %3042 = load i64, i64* %3041
  store i64 %3042, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_42e617, %struct.Memory** %MEMORY
  %loadMem_42e61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 7
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %EDX.i429 = bitcast %union.anon* %3048 to i32*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 1
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3051 to i64*
  %3052 = load i32, i32* %EDX.i429
  %3053 = zext i32 %3052 to i64
  %3054 = load i64, i64* %RAX.i430
  %3055 = add i64 %3054, 24
  %3056 = load i64, i64* %PC.i428
  %3057 = add i64 %3056, 3
  store i64 %3057, i64* %PC.i428
  %3058 = inttoptr i64 %3055 to i32*
  %3059 = load i32, i32* %3058
  %3060 = sub i32 %3052, %3059
  %3061 = icmp ult i32 %3052, %3059
  %3062 = zext i1 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3062, i8* %3063, align 1
  %3064 = and i32 %3060, 255
  %3065 = call i32 @llvm.ctpop.i32(i32 %3064)
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = xor i8 %3067, 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3068, i8* %3069, align 1
  %3070 = xor i32 %3059, %3052
  %3071 = xor i32 %3070, %3060
  %3072 = lshr i32 %3071, 4
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3074, i8* %3075, align 1
  %3076 = icmp eq i32 %3060, 0
  %3077 = zext i1 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3077, i8* %3078, align 1
  %3079 = lshr i32 %3060, 31
  %3080 = trunc i32 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3080, i8* %3081, align 1
  %3082 = lshr i32 %3052, 31
  %3083 = lshr i32 %3059, 31
  %3084 = xor i32 %3083, %3082
  %3085 = xor i32 %3079, %3082
  %3086 = add i32 %3085, %3084
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3088, i8* %3089, align 1
  store %struct.Memory* %loadMem_42e61b, %struct.Memory** %MEMORY
  %loadMem_42e61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %PC.i427
  %3094 = add i64 %3093, 142
  %3095 = load i64, i64* %PC.i427
  %3096 = add i64 %3095, 6
  %3097 = load i64, i64* %PC.i427
  %3098 = add i64 %3097, 6
  store i64 %3098, i64* %PC.i427
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3100 = load i8, i8* %3099, align 1
  store i8 %3100, i8* %BRANCH_TAKEN, align 1
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3102 = icmp ne i8 %3100, 0
  %3103 = select i1 %3102, i64 %3094, i64 %3096
  store i64 %3103, i64* %3101, align 8
  store %struct.Memory* %loadMem_42e61e, %struct.Memory** %MEMORY
  %loadBr_42e61e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e61e = icmp eq i8 %loadBr_42e61e, 1
  br i1 %cmpBr_42e61e, label %block_.L_42e6ac, label %block_42e624

block_42e624:                                     ; preds = %block_42e605
  %loadMem_42e624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 1
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 15
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %RBP.i426
  %3114 = sub i64 %3113, 8
  %3115 = load i64, i64* %PC.i424
  %3116 = add i64 %3115, 4
  store i64 %3116, i64* %PC.i424
  %3117 = inttoptr i64 %3114 to i64*
  %3118 = load i64, i64* %3117
  store i64 %3118, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_42e624, %struct.Memory** %MEMORY
  %loadMem_42e628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 1
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RAX.i423
  %3126 = add i64 %3125, 8
  %3127 = load i64, i64* %PC.i422
  %3128 = add i64 %3127, 4
  store i64 %3128, i64* %PC.i422
  %3129 = inttoptr i64 %3126 to i64*
  %3130 = load i64, i64* %3129
  store i64 %3130, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_42e628, %struct.Memory** %MEMORY
  %loadMem_42e62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 5
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 15
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %RBP.i421
  %3141 = sub i64 %3140, 12
  %3142 = load i64, i64* %PC.i419
  %3143 = add i64 %3142, 4
  store i64 %3143, i64* %PC.i419
  %3144 = inttoptr i64 %3141 to i32*
  %3145 = load i32, i32* %3144
  %3146 = sext i32 %3145 to i64
  store i64 %3146, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_42e62c, %struct.Memory** %MEMORY
  %loadMem_42e630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 1
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 5
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 9
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %RAX.i416
  %3160 = load i64, i64* %RCX.i417
  %3161 = mul i64 %3160, 8
  %3162 = add i64 %3161, %3159
  %3163 = load i64, i64* %PC.i415
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i415
  %3165 = inttoptr i64 %3162 to i64*
  %3166 = load i64, i64* %3165
  store i64 %3166, i64* %RSI.i418, align 8
  store %struct.Memory* %loadMem_42e630, %struct.Memory** %MEMORY
  %loadMem_42e634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 1
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 15
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %RBP.i414
  %3177 = sub i64 %3176, 8
  %3178 = load i64, i64* %PC.i412
  %3179 = add i64 %3178, 4
  store i64 %3179, i64* %PC.i412
  %3180 = inttoptr i64 %3177 to i64*
  %3181 = load i64, i64* %3180
  store i64 %3181, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_42e634, %struct.Memory** %MEMORY
  %loadMem_42e638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 1
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %RAX.i411
  %3189 = add i64 %3188, 344
  %3190 = load i64, i64* %PC.i410
  %3191 = add i64 %3190, 7
  store i64 %3191, i64* %PC.i410
  %3192 = inttoptr i64 %3189 to i64*
  %3193 = load i64, i64* %3192
  store i64 %3193, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_42e638, %struct.Memory** %MEMORY
  %loadMem_42e63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 5
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 15
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RBP.i409
  %3204 = sub i64 %3203, 12
  %3205 = load i64, i64* %PC.i407
  %3206 = add i64 %3205, 4
  store i64 %3206, i64* %PC.i407
  %3207 = inttoptr i64 %3204 to i32*
  %3208 = load i32, i32* %3207
  %3209 = sext i32 %3208 to i64
  store i64 %3209, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_42e63f, %struct.Memory** %MEMORY
  %loadMem_42e643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 5
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 7
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %RAX.i404
  %3223 = load i64, i64* %RCX.i405
  %3224 = mul i64 %3223, 4
  %3225 = add i64 %3224, %3222
  %3226 = load i64, i64* %PC.i403
  %3227 = add i64 %3226, 3
  store i64 %3227, i64* %PC.i403
  %3228 = inttoptr i64 %3225 to i32*
  %3229 = load i32, i32* %3228
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RDX.i406, align 8
  store %struct.Memory* %loadMem_42e643, %struct.Memory** %MEMORY
  %loadMem_42e646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 1
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 15
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RBP.i402
  %3241 = sub i64 %3240, 8
  %3242 = load i64, i64* %PC.i400
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i400
  %3244 = inttoptr i64 %3241 to i64*
  %3245 = load i64, i64* %3244
  store i64 %3245, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_42e646, %struct.Memory** %MEMORY
  %loadMem_42e64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 1
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 5
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %3254 to i64*
  %3255 = load i64, i64* %RAX.i398
  %3256 = add i64 %3255, 24
  %3257 = load i64, i64* %PC.i397
  %3258 = add i64 %3257, 3
  store i64 %3258, i64* %PC.i397
  %3259 = inttoptr i64 %3256 to i32*
  %3260 = load i32, i32* %3259
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_42e64a, %struct.Memory** %MEMORY
  %loadMem_42e64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 1
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 15
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RBP.i396
  %3272 = sub i64 %3271, 8
  %3273 = load i64, i64* %PC.i394
  %3274 = add i64 %3273, 4
  store i64 %3274, i64* %PC.i394
  %3275 = inttoptr i64 %3272 to i64*
  %3276 = load i64, i64* %3275
  store i64 %3276, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_42e64d, %struct.Memory** %MEMORY
  %loadMem_42e651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 1
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RAX.i393
  %3284 = add i64 %3283, 40
  %3285 = load i64, i64* %PC.i392
  %3286 = add i64 %3285, 5
  store i64 %3286, i64* %PC.i392
  %3287 = inttoptr i64 %3284 to i64*
  %3288 = load i64, i64* %3287
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3289, align 1
  %3290 = trunc i64 %3288 to i32
  %3291 = and i32 %3290, 255
  %3292 = call i32 @llvm.ctpop.i32(i32 %3291)
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = xor i8 %3294, 1
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3295, i8* %3296, align 1
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3297, align 1
  %3298 = icmp eq i64 %3288, 0
  %3299 = zext i1 %3298 to i8
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3299, i8* %3300, align 1
  %3301 = lshr i64 %3288, 63
  %3302 = trunc i64 %3301 to i8
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3302, i8* %3303, align 1
  %3304 = lshr i64 %3288, 63
  %3305 = xor i64 %3301, %3304
  %3306 = add i64 %3305, %3304
  %3307 = icmp eq i64 %3306, 2
  %3308 = zext i1 %3307 to i8
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3308, i8* %3309, align 1
  store %struct.Memory* %loadMem_42e651, %struct.Memory** %MEMORY
  %loadMem_42e656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 9
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RSI.i390 = bitcast %union.anon* %3315 to i64*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 15
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %RBP.i391
  %3320 = sub i64 %3319, 112
  %3321 = load i64, i64* %RSI.i390
  %3322 = load i64, i64* %PC.i389
  %3323 = add i64 %3322, 4
  store i64 %3323, i64* %PC.i389
  %3324 = inttoptr i64 %3320 to i64*
  store i64 %3321, i64* %3324
  store %struct.Memory* %loadMem_42e656, %struct.Memory** %MEMORY
  %loadMem_42e65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 7
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %EDX.i387 = bitcast %union.anon* %3330 to i32*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 15
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %RBP.i388
  %3335 = sub i64 %3334, 116
  %3336 = load i32, i32* %EDX.i387
  %3337 = zext i32 %3336 to i64
  %3338 = load i64, i64* %PC.i386
  %3339 = add i64 %3338, 3
  store i64 %3339, i64* %PC.i386
  %3340 = inttoptr i64 %3335 to i32*
  store i32 %3336, i32* %3340
  store %struct.Memory* %loadMem_42e65a, %struct.Memory** %MEMORY
  %loadMem_42e65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 5
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %ECX.i384 = bitcast %union.anon* %3346 to i32*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 15
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RBP.i385
  %3351 = sub i64 %3350, 120
  %3352 = load i32, i32* %ECX.i384
  %3353 = zext i32 %3352 to i64
  %3354 = load i64, i64* %PC.i383
  %3355 = add i64 %3354, 3
  store i64 %3355, i64* %PC.i383
  %3356 = inttoptr i64 %3351 to i32*
  store i32 %3352, i32* %3356
  store %struct.Memory* %loadMem_42e65d, %struct.Memory** %MEMORY
  %loadMem_42e660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %PC.i382
  %3361 = add i64 %3360, 23
  %3362 = load i64, i64* %PC.i382
  %3363 = add i64 %3362, 6
  %3364 = load i64, i64* %PC.i382
  %3365 = add i64 %3364, 6
  store i64 %3365, i64* %PC.i382
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3367 = load i8, i8* %3366, align 1
  store i8 %3367, i8* %BRANCH_TAKEN, align 1
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3369 = icmp ne i8 %3367, 0
  %3370 = select i1 %3369, i64 %3361, i64 %3363
  store i64 %3370, i64* %3368, align 8
  store %struct.Memory* %loadMem_42e660, %struct.Memory** %MEMORY
  %loadBr_42e660 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e660 = icmp eq i8 %loadBr_42e660, 1
  br i1 %cmpBr_42e660, label %block_.L_42e677, label %block_42e666

block_42e666:                                     ; preds = %block_42e624
  %loadMem_42e666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 1
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 15
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %RBP.i381
  %3381 = sub i64 %3380, 8
  %3382 = load i64, i64* %PC.i379
  %3383 = add i64 %3382, 4
  store i64 %3383, i64* %PC.i379
  %3384 = inttoptr i64 %3381 to i64*
  %3385 = load i64, i64* %3384
  store i64 %3385, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_42e666, %struct.Memory** %MEMORY
  %loadMem_42e66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RAX.i378
  %3393 = add i64 %3392, 40
  %3394 = load i64, i64* %PC.i377
  %3395 = add i64 %3394, 4
  store i64 %3395, i64* %PC.i377
  %3396 = inttoptr i64 %3393 to i64*
  %3397 = load i64, i64* %3396
  store i64 %3397, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_42e66a, %struct.Memory** %MEMORY
  %loadMem_42e66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 1
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 15
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RBP.i376
  %3408 = sub i64 %3407, 128
  %3409 = load i64, i64* %RAX.i375
  %3410 = load i64, i64* %PC.i374
  %3411 = add i64 %3410, 4
  store i64 %3411, i64* %PC.i374
  %3412 = inttoptr i64 %3408 to i64*
  store i64 %3409, i64* %3412
  store %struct.Memory* %loadMem_42e66e, %struct.Memory** %MEMORY
  %loadMem_42e672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %PC.i373
  %3417 = add i64 %3416, 24
  %3418 = load i64, i64* %PC.i373
  %3419 = add i64 %3418, 5
  store i64 %3419, i64* %PC.i373
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3417, i64* %3420, align 8
  store %struct.Memory* %loadMem_42e672, %struct.Memory** %MEMORY
  br label %block_.L_42e68a

block_.L_42e677:                                  ; preds = %block_42e624
  %loadMem_42e677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 33
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 1
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %PC.i371
  %3428 = add i64 %3427, 10
  store i64 %3428, i64* %PC.i371
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i372, align 8
  store %struct.Memory* %loadMem_42e677, %struct.Memory** %MEMORY
  %loadMem_42e681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 1
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 15
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %RBP.i370
  %3439 = sub i64 %3438, 128
  %3440 = load i64, i64* %RAX.i369
  %3441 = load i64, i64* %PC.i368
  %3442 = add i64 %3441, 4
  store i64 %3442, i64* %PC.i368
  %3443 = inttoptr i64 %3439 to i64*
  store i64 %3440, i64* %3443
  store %struct.Memory* %loadMem_42e681, %struct.Memory** %MEMORY
  %loadMem_42e685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3446 to i64*
  %3447 = load i64, i64* %PC.i367
  %3448 = add i64 %3447, 5
  %3449 = load i64, i64* %PC.i367
  %3450 = add i64 %3449, 5
  store i64 %3450, i64* %PC.i367
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3448, i64* %3451, align 8
  store %struct.Memory* %loadMem_42e685, %struct.Memory** %MEMORY
  br label %block_.L_42e68a

block_.L_42e68a:                                  ; preds = %block_.L_42e677, %block_42e666
  %loadMem_42e68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 1
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 15
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RBP.i366
  %3462 = sub i64 %3461, 128
  %3463 = load i64, i64* %PC.i364
  %3464 = add i64 %3463, 4
  store i64 %3464, i64* %PC.i364
  %3465 = inttoptr i64 %3462 to i64*
  %3466 = load i64, i64* %3465
  store i64 %3466, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_42e68a, %struct.Memory** %MEMORY
  %loadMem_42e68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 33
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3469 to i64*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 11
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RDI.i363 = bitcast %union.anon* %3472 to i64*
  %3473 = load i64, i64* %PC.i362
  %3474 = add i64 %3473, 10
  store i64 %3474, i64* %PC.i362
  store i64 ptrtoint (%G__0x458a32_type* @G__0x458a32 to i64), i64* %RDI.i363, align 8
  store %struct.Memory* %loadMem_42e68e, %struct.Memory** %MEMORY
  %loadMem_42e698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 9
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RSI.i360 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i361
  %3485 = sub i64 %3484, 112
  %3486 = load i64, i64* %PC.i359
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i359
  %3488 = inttoptr i64 %3485 to i64*
  %3489 = load i64, i64* %3488
  store i64 %3489, i64* %RSI.i360, align 8
  store %struct.Memory* %loadMem_42e698, %struct.Memory** %MEMORY
  %loadMem_42e69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 7
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i358
  %3500 = sub i64 %3499, 116
  %3501 = load i64, i64* %PC.i356
  %3502 = add i64 %3501, 3
  store i64 %3502, i64* %PC.i356
  %3503 = inttoptr i64 %3500 to i32*
  %3504 = load i32, i32* %3503
  %3505 = zext i32 %3504 to i64
  store i64 %3505, i64* %RDX.i357, align 8
  store %struct.Memory* %loadMem_42e69c, %struct.Memory** %MEMORY
  %loadMem_42e69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 5
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 15
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %RBP.i355
  %3516 = sub i64 %3515, 120
  %3517 = load i64, i64* %PC.i353
  %3518 = add i64 %3517, 3
  store i64 %3518, i64* %PC.i353
  %3519 = inttoptr i64 %3516 to i32*
  %3520 = load i32, i32* %3519
  %3521 = zext i32 %3520 to i64
  store i64 %3521, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_42e69f, %struct.Memory** %MEMORY
  %loadMem_42e6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 1
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 17
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %RAX.i352
  %3532 = load i64, i64* %PC.i351
  %3533 = add i64 %3532, 3
  store i64 %3533, i64* %PC.i351
  store i64 %3531, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_42e6a2, %struct.Memory** %MEMORY
  %loadMem_42e6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 1
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %3540 = bitcast %union.anon* %3539 to %struct.anon.2*
  %AL.i350 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3540, i32 0, i32 0
  %3541 = load i64, i64* %PC.i349
  %3542 = add i64 %3541, 2
  store i64 %3542, i64* %PC.i349
  store i8 0, i8* %AL.i350, align 1
  store %struct.Memory* %loadMem_42e6a5, %struct.Memory** %MEMORY
  %loadMem1_42e6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3545 to i64*
  %3546 = load i64, i64* %PC.i348
  %3547 = add i64 %3546, 66409
  %3548 = load i64, i64* %PC.i348
  %3549 = add i64 %3548, 5
  %3550 = load i64, i64* %PC.i348
  %3551 = add i64 %3550, 5
  store i64 %3551, i64* %PC.i348
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3553 = load i64, i64* %3552, align 8
  %3554 = add i64 %3553, -8
  %3555 = inttoptr i64 %3554 to i64*
  store i64 %3549, i64* %3555
  store i64 %3554, i64* %3552, align 8
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3547, i64* %3556, align 8
  store %struct.Memory* %loadMem1_42e6a7, %struct.Memory** %MEMORY
  %loadMem2_42e6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e6a7 = load i64, i64* %3
  %call2_42e6a7 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e6a7, %struct.Memory* %loadMem2_42e6a7)
  store %struct.Memory* %call2_42e6a7, %struct.Memory** %MEMORY
  br label %block_.L_42e6ac

block_.L_42e6ac:                                  ; preds = %block_.L_42e68a, %block_42e605, %block_42e5ee, %block_.L_42e5df
  %loadMem_42e6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %PC.i347
  %3561 = add i64 %3560, 5
  %3562 = load i64, i64* %PC.i347
  %3563 = add i64 %3562, 5
  store i64 %3563, i64* %PC.i347
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3561, i64* %3564, align 8
  store %struct.Memory* %loadMem_42e6ac, %struct.Memory** %MEMORY
  br label %block_.L_42e6b1

block_.L_42e6b1:                                  ; preds = %block_.L_42e6ac
  %loadMem_42e6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 1
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i346
  %3575 = sub i64 %3574, 12
  %3576 = load i64, i64* %PC.i344
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC.i344
  %3578 = inttoptr i64 %3575 to i32*
  %3579 = load i32, i32* %3578
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_42e6b1, %struct.Memory** %MEMORY
  %loadMem_42e6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 1
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RAX.i343
  %3588 = load i64, i64* %PC.i342
  %3589 = add i64 %3588, 3
  store i64 %3589, i64* %PC.i342
  %3590 = trunc i64 %3587 to i32
  %3591 = add i32 1, %3590
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RAX.i343, align 8
  %3593 = icmp ult i32 %3591, %3590
  %3594 = icmp ult i32 %3591, 1
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3596, i8* %3597, align 1
  %3598 = and i32 %3591, 255
  %3599 = call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3602, i8* %3603, align 1
  %3604 = xor i64 1, %3587
  %3605 = trunc i64 %3604 to i32
  %3606 = xor i32 %3605, %3591
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3609, i8* %3610, align 1
  %3611 = icmp eq i32 %3591, 0
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3612, i8* %3613, align 1
  %3614 = lshr i32 %3591, 31
  %3615 = trunc i32 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3590, 31
  %3618 = xor i32 %3614, %3617
  %3619 = add i32 %3618, %3614
  %3620 = icmp eq i32 %3619, 2
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3621, i8* %3622, align 1
  store %struct.Memory* %loadMem_42e6b4, %struct.Memory** %MEMORY
  %loadMem_42e6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 1
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3628 to i32*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 15
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %RBP.i341
  %3633 = sub i64 %3632, 12
  %3634 = load i32, i32* %EAX.i
  %3635 = zext i32 %3634 to i64
  %3636 = load i64, i64* %PC.i340
  %3637 = add i64 %3636, 3
  store i64 %3637, i64* %PC.i340
  %3638 = inttoptr i64 %3633 to i32*
  store i32 %3634, i32* %3638
  store %struct.Memory* %loadMem_42e6b7, %struct.Memory** %MEMORY
  %loadMem_42e6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 33
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %PC.i339
  %3643 = add i64 %3642, -887
  %3644 = load i64, i64* %PC.i339
  %3645 = add i64 %3644, 5
  store i64 %3645, i64* %PC.i339
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3643, i64* %3646, align 8
  store %struct.Memory* %loadMem_42e6ba, %struct.Memory** %MEMORY
  br label %block_.L_42e343

block_.L_42e6bf:                                  ; preds = %block_.L_42e343
  %loadMem_42e6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 1
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RBP.i338
  %3657 = sub i64 %3656, 8
  %3658 = load i64, i64* %PC.i336
  %3659 = add i64 %3658, 4
  store i64 %3659, i64* %PC.i336
  %3660 = inttoptr i64 %3657 to i64*
  %3661 = load i64, i64* %3660
  store i64 %3661, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_42e6bf, %struct.Memory** %MEMORY
  %loadMem_42e6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 1
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RAX.i335
  %3669 = add i64 %3668, 72
  %3670 = load i64, i64* %PC.i334
  %3671 = add i64 %3670, 5
  store i64 %3671, i64* %PC.i334
  %3672 = inttoptr i64 %3669 to i64*
  %3673 = load i64, i64* %3672
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3674, align 1
  %3675 = trunc i64 %3673 to i32
  %3676 = and i32 %3675, 255
  %3677 = call i32 @llvm.ctpop.i32(i32 %3676)
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = xor i8 %3679, 1
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3680, i8* %3681, align 1
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3682, align 1
  %3683 = icmp eq i64 %3673, 0
  %3684 = zext i1 %3683 to i8
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3684, i8* %3685, align 1
  %3686 = lshr i64 %3673, 63
  %3687 = trunc i64 %3686 to i8
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3687, i8* %3688, align 1
  %3689 = lshr i64 %3673, 63
  %3690 = xor i64 %3686, %3689
  %3691 = add i64 %3690, %3689
  %3692 = icmp eq i64 %3691, 2
  %3693 = zext i1 %3692 to i8
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3693, i8* %3694, align 1
  store %struct.Memory* %loadMem_42e6c3, %struct.Memory** %MEMORY
  %loadMem_42e6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3697 to i64*
  %3698 = load i64, i64* %PC.i333
  %3699 = add i64 %3698, 166
  %3700 = load i64, i64* %PC.i333
  %3701 = add i64 %3700, 6
  %3702 = load i64, i64* %PC.i333
  %3703 = add i64 %3702, 6
  store i64 %3703, i64* %PC.i333
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3705 = load i8, i8* %3704, align 1
  store i8 %3705, i8* %BRANCH_TAKEN, align 1
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3707 = icmp ne i8 %3705, 0
  %3708 = select i1 %3707, i64 %3699, i64 %3701
  store i64 %3708, i64* %3706, align 8
  store %struct.Memory* %loadMem_42e6c8, %struct.Memory** %MEMORY
  %loadBr_42e6c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e6c8 = icmp eq i8 %loadBr_42e6c8, 1
  br i1 %cmpBr_42e6c8, label %block_.L_42e76e, label %block_42e6ce

block_42e6ce:                                     ; preds = %block_.L_42e6bf
  %loadMem_42e6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 15
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %3717 to i64*
  %3718 = load i64, i64* %RBP.i332
  %3719 = sub i64 %3718, 8
  %3720 = load i64, i64* %PC.i330
  %3721 = add i64 %3720, 4
  store i64 %3721, i64* %PC.i330
  %3722 = inttoptr i64 %3719 to i64*
  %3723 = load i64, i64* %3722
  store i64 %3723, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_42e6ce, %struct.Memory** %MEMORY
  %loadMem_42e6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 1
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %3729 to i64*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 11
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RDI.i329 = bitcast %union.anon* %3732 to i64*
  %3733 = load i64, i64* %RAX.i328
  %3734 = add i64 %3733, 72
  %3735 = load i64, i64* %PC.i327
  %3736 = add i64 %3735, 4
  store i64 %3736, i64* %PC.i327
  %3737 = inttoptr i64 %3734 to i64*
  %3738 = load i64, i64* %3737
  store i64 %3738, i64* %RDI.i329, align 8
  store %struct.Memory* %loadMem_42e6d2, %struct.Memory** %MEMORY
  %loadMem1_42e6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3741 to i64*
  %3742 = load i64, i64* %PC.i326
  %3743 = add i64 %3742, -184950
  %3744 = load i64, i64* %PC.i326
  %3745 = add i64 %3744, 5
  %3746 = load i64, i64* %PC.i326
  %3747 = add i64 %3746, 5
  store i64 %3747, i64* %PC.i326
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3749 = load i64, i64* %3748, align 8
  %3750 = add i64 %3749, -8
  %3751 = inttoptr i64 %3750 to i64*
  store i64 %3745, i64* %3751
  store i64 %3750, i64* %3748, align 8
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3743, i64* %3752, align 8
  store %struct.Memory* %loadMem1_42e6d6, %struct.Memory** %MEMORY
  %loadMem2_42e6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e6d6 = load i64, i64* %3
  %3753 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_42e6d6)
  store %struct.Memory* %3753, %struct.Memory** %MEMORY
  %loadMem_42e6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 11
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RDI.i323 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 15
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RBP.i324
  %3764 = sub i64 %3763, 8
  %3765 = load i64, i64* %PC.i322
  %3766 = add i64 %3765, 4
  store i64 %3766, i64* %PC.i322
  %3767 = inttoptr i64 %3764 to i64*
  %3768 = load i64, i64* %3767
  store i64 %3768, i64* %RDI.i323, align 8
  store %struct.Memory* %loadMem_42e6db, %struct.Memory** %MEMORY
  %loadMem_42e6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 11
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RDI.i321 = bitcast %union.anon* %3774 to i64*
  %3775 = load i64, i64* %RDI.i321
  %3776 = add i64 %3775, 24
  %3777 = load i64, i64* %PC.i320
  %3778 = add i64 %3777, 4
  store i64 %3778, i64* %PC.i320
  %3779 = inttoptr i64 %3776 to i32*
  %3780 = load i32, i32* %3779
  %3781 = sext i32 %3780 to i64
  store i64 %3781, i64* %RDI.i321, align 8
  store %struct.Memory* %loadMem_42e6df, %struct.Memory** %MEMORY
  %loadMem_42e6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 1
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 11
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RDI.i319 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RAX.i318
  %3792 = load i64, i64* %RDI.i319
  %3793 = load i64, i64* %PC.i317
  %3794 = add i64 %3793, 3
  store i64 %3794, i64* %PC.i317
  %3795 = sub i64 %3791, %3792
  %3796 = icmp ult i64 %3791, %3792
  %3797 = zext i1 %3796 to i8
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3797, i8* %3798, align 1
  %3799 = trunc i64 %3795 to i32
  %3800 = and i32 %3799, 255
  %3801 = call i32 @llvm.ctpop.i32(i32 %3800)
  %3802 = trunc i32 %3801 to i8
  %3803 = and i8 %3802, 1
  %3804 = xor i8 %3803, 1
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3804, i8* %3805, align 1
  %3806 = xor i64 %3792, %3791
  %3807 = xor i64 %3806, %3795
  %3808 = lshr i64 %3807, 4
  %3809 = trunc i64 %3808 to i8
  %3810 = and i8 %3809, 1
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3810, i8* %3811, align 1
  %3812 = icmp eq i64 %3795, 0
  %3813 = zext i1 %3812 to i8
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3813, i8* %3814, align 1
  %3815 = lshr i64 %3795, 63
  %3816 = trunc i64 %3815 to i8
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3816, i8* %3817, align 1
  %3818 = lshr i64 %3791, 63
  %3819 = lshr i64 %3792, 63
  %3820 = xor i64 %3819, %3818
  %3821 = xor i64 %3815, %3818
  %3822 = add i64 %3821, %3820
  %3823 = icmp eq i64 %3822, 2
  %3824 = zext i1 %3823 to i8
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3824, i8* %3825, align 1
  store %struct.Memory* %loadMem_42e6e3, %struct.Memory** %MEMORY
  %loadMem_42e6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %PC.i316
  %3830 = add i64 %3829, 136
  %3831 = load i64, i64* %PC.i316
  %3832 = add i64 %3831, 6
  %3833 = load i64, i64* %PC.i316
  %3834 = add i64 %3833, 6
  store i64 %3834, i64* %PC.i316
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3836 = load i8, i8* %3835, align 1
  store i8 %3836, i8* %BRANCH_TAKEN, align 1
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3838 = icmp ne i8 %3836, 0
  %3839 = select i1 %3838, i64 %3830, i64 %3832
  store i64 %3839, i64* %3837, align 8
  store %struct.Memory* %loadMem_42e6e6, %struct.Memory** %MEMORY
  %loadBr_42e6e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e6e6 = icmp eq i8 %loadBr_42e6e6, 1
  br i1 %cmpBr_42e6e6, label %block_.L_42e76e, label %block_42e6ec

block_42e6ec:                                     ; preds = %block_42e6ce
  %loadMem_42e6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 33
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3842 to i64*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 1
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 15
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %RBP.i315
  %3850 = sub i64 %3849, 8
  %3851 = load i64, i64* %PC.i313
  %3852 = add i64 %3851, 4
  store i64 %3852, i64* %PC.i313
  %3853 = inttoptr i64 %3850 to i64*
  %3854 = load i64, i64* %3853
  store i64 %3854, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_42e6ec, %struct.Memory** %MEMORY
  %loadMem_42e6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 1
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 11
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RDI.i312 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RAX.i311
  %3865 = add i64 %3864, 72
  %3866 = load i64, i64* %PC.i310
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i310
  %3868 = inttoptr i64 %3865 to i64*
  %3869 = load i64, i64* %3868
  store i64 %3869, i64* %RDI.i312, align 8
  store %struct.Memory* %loadMem_42e6f0, %struct.Memory** %MEMORY
  %loadMem1_42e6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 33
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %PC.i309
  %3874 = add i64 %3873, -184980
  %3875 = load i64, i64* %PC.i309
  %3876 = add i64 %3875, 5
  %3877 = load i64, i64* %PC.i309
  %3878 = add i64 %3877, 5
  store i64 %3878, i64* %PC.i309
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3880 = load i64, i64* %3879, align 8
  %3881 = add i64 %3880, -8
  %3882 = inttoptr i64 %3881 to i64*
  store i64 %3876, i64* %3882
  store i64 %3881, i64* %3879, align 8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3874, i64* %3883, align 8
  store %struct.Memory* %loadMem1_42e6f4, %struct.Memory** %MEMORY
  %loadMem2_42e6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e6f4 = load i64, i64* %3
  %3884 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_42e6f4)
  store %struct.Memory* %3884, %struct.Memory** %MEMORY
  %loadMem_42e6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 33
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3887 to i64*
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 11
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %RDI.i305 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 15
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %3893 to i64*
  %3894 = load i64, i64* %RBP.i306
  %3895 = sub i64 %3894, 8
  %3896 = load i64, i64* %PC.i304
  %3897 = add i64 %3896, 4
  store i64 %3897, i64* %PC.i304
  %3898 = inttoptr i64 %3895 to i64*
  %3899 = load i64, i64* %3898
  store i64 %3899, i64* %RDI.i305, align 8
  store %struct.Memory* %loadMem_42e6f9, %struct.Memory** %MEMORY
  %loadMem_42e6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 7
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %3905 to i64*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 11
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %RDI.i303
  %3910 = add i64 %3909, 24
  %3911 = load i64, i64* %PC.i301
  %3912 = add i64 %3911, 3
  store i64 %3912, i64* %PC.i301
  %3913 = inttoptr i64 %3910 to i32*
  %3914 = load i32, i32* %3913
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_42e6fd, %struct.Memory** %MEMORY
  %loadMem_42e700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 33
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3918 to i64*
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 11
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %RDI.i299 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 15
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %3924 to i64*
  %3925 = load i64, i64* %RBP.i300
  %3926 = sub i64 %3925, 8
  %3927 = load i64, i64* %PC.i298
  %3928 = add i64 %3927, 4
  store i64 %3928, i64* %PC.i298
  %3929 = inttoptr i64 %3926 to i64*
  %3930 = load i64, i64* %3929
  store i64 %3930, i64* %RDI.i299, align 8
  store %struct.Memory* %loadMem_42e700, %struct.Memory** %MEMORY
  %loadMem_42e704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 11
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RDI.i297 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %RDI.i297
  %3938 = add i64 %3937, 40
  %3939 = load i64, i64* %PC.i296
  %3940 = add i64 %3939, 5
  store i64 %3940, i64* %PC.i296
  %3941 = inttoptr i64 %3938 to i64*
  %3942 = load i64, i64* %3941
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3943, align 1
  %3944 = trunc i64 %3942 to i32
  %3945 = and i32 %3944, 255
  %3946 = call i32 @llvm.ctpop.i32(i32 %3945)
  %3947 = trunc i32 %3946 to i8
  %3948 = and i8 %3947, 1
  %3949 = xor i8 %3948, 1
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3949, i8* %3950, align 1
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3951, align 1
  %3952 = icmp eq i64 %3942, 0
  %3953 = zext i1 %3952 to i8
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3953, i8* %3954, align 1
  %3955 = lshr i64 %3942, 63
  %3956 = trunc i64 %3955 to i8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3956, i8* %3957, align 1
  %3958 = lshr i64 %3942, 63
  %3959 = xor i64 %3955, %3958
  %3960 = add i64 %3959, %3958
  %3961 = icmp eq i64 %3960, 2
  %3962 = zext i1 %3961 to i8
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3962, i8* %3963, align 1
  store %struct.Memory* %loadMem_42e704, %struct.Memory** %MEMORY
  %loadMem_42e709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RBP.i295
  %3974 = sub i64 %3973, 136
  %3975 = load i64, i64* %RAX.i294
  %3976 = load i64, i64* %PC.i293
  %3977 = add i64 %3976, 7
  store i64 %3977, i64* %PC.i293
  %3978 = inttoptr i64 %3974 to i64*
  store i64 %3975, i64* %3978
  store %struct.Memory* %loadMem_42e709, %struct.Memory** %MEMORY
  %loadMem_42e710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 7
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %EDX.i291 = bitcast %union.anon* %3984 to i32*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 15
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %3987 to i64*
  %3988 = load i64, i64* %RBP.i292
  %3989 = sub i64 %3988, 140
  %3990 = load i32, i32* %EDX.i291
  %3991 = zext i32 %3990 to i64
  %3992 = load i64, i64* %PC.i290
  %3993 = add i64 %3992, 6
  store i64 %3993, i64* %PC.i290
  %3994 = inttoptr i64 %3989 to i32*
  store i32 %3990, i32* %3994
  store %struct.Memory* %loadMem_42e710, %struct.Memory** %MEMORY
  %loadMem_42e716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 33
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %PC.i289
  %3999 = add i64 %3998, 26
  %4000 = load i64, i64* %PC.i289
  %4001 = add i64 %4000, 6
  %4002 = load i64, i64* %PC.i289
  %4003 = add i64 %4002, 6
  store i64 %4003, i64* %PC.i289
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4005 = load i8, i8* %4004, align 1
  store i8 %4005, i8* %BRANCH_TAKEN, align 1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4007 = icmp ne i8 %4005, 0
  %4008 = select i1 %4007, i64 %3999, i64 %4001
  store i64 %4008, i64* %4006, align 8
  store %struct.Memory* %loadMem_42e716, %struct.Memory** %MEMORY
  %loadBr_42e716 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e716 = icmp eq i8 %loadBr_42e716, 1
  br i1 %cmpBr_42e716, label %block_.L_42e730, label %block_42e71c

block_42e71c:                                     ; preds = %block_42e6ec
  %loadMem_42e71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 1
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 15
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %4017 to i64*
  %4018 = load i64, i64* %RBP.i288
  %4019 = sub i64 %4018, 8
  %4020 = load i64, i64* %PC.i286
  %4021 = add i64 %4020, 4
  store i64 %4021, i64* %PC.i286
  %4022 = inttoptr i64 %4019 to i64*
  %4023 = load i64, i64* %4022
  store i64 %4023, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_42e71c, %struct.Memory** %MEMORY
  %loadMem_42e720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 1
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %4029 to i64*
  %4030 = load i64, i64* %RAX.i285
  %4031 = add i64 %4030, 40
  %4032 = load i64, i64* %PC.i284
  %4033 = add i64 %4032, 4
  store i64 %4033, i64* %PC.i284
  %4034 = inttoptr i64 %4031 to i64*
  %4035 = load i64, i64* %4034
  store i64 %4035, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_42e720, %struct.Memory** %MEMORY
  %loadMem_42e724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 1
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 15
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %4044 to i64*
  %4045 = load i64, i64* %RBP.i283
  %4046 = sub i64 %4045, 152
  %4047 = load i64, i64* %RAX.i282
  %4048 = load i64, i64* %PC.i281
  %4049 = add i64 %4048, 7
  store i64 %4049, i64* %PC.i281
  %4050 = inttoptr i64 %4046 to i64*
  store i64 %4047, i64* %4050
  store %struct.Memory* %loadMem_42e724, %struct.Memory** %MEMORY
  %loadMem_42e72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %PC.i280
  %4055 = add i64 %4054, 27
  %4056 = load i64, i64* %PC.i280
  %4057 = add i64 %4056, 5
  store i64 %4057, i64* %PC.i280
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4055, i64* %4058, align 8
  store %struct.Memory* %loadMem_42e72b, %struct.Memory** %MEMORY
  br label %block_.L_42e746

block_.L_42e730:                                  ; preds = %block_42e6ec
  %loadMem_42e730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 1
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %4064 to i64*
  %4065 = load i64, i64* %PC.i278
  %4066 = add i64 %4065, 10
  store i64 %4066, i64* %PC.i278
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_42e730, %struct.Memory** %MEMORY
  %loadMem_42e73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 33
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 1
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 15
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %RBP.i277
  %4077 = sub i64 %4076, 152
  %4078 = load i64, i64* %RAX.i276
  %4079 = load i64, i64* %PC.i275
  %4080 = add i64 %4079, 7
  store i64 %4080, i64* %PC.i275
  %4081 = inttoptr i64 %4077 to i64*
  store i64 %4078, i64* %4081
  store %struct.Memory* %loadMem_42e73a, %struct.Memory** %MEMORY
  %loadMem_42e741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 33
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %PC.i274
  %4086 = add i64 %4085, 5
  %4087 = load i64, i64* %PC.i274
  %4088 = add i64 %4087, 5
  store i64 %4088, i64* %PC.i274
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4086, i64* %4089, align 8
  store %struct.Memory* %loadMem_42e741, %struct.Memory** %MEMORY
  br label %block_.L_42e746

block_.L_42e746:                                  ; preds = %block_.L_42e730, %block_42e71c
  %loadMem_42e746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 1
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 15
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %4098 to i64*
  %4099 = load i64, i64* %RBP.i273
  %4100 = sub i64 %4099, 152
  %4101 = load i64, i64* %PC.i271
  %4102 = add i64 %4101, 7
  store i64 %4102, i64* %PC.i271
  %4103 = inttoptr i64 %4100 to i64*
  %4104 = load i64, i64* %4103
  store i64 %4104, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_42e746, %struct.Memory** %MEMORY
  %loadMem_42e74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 11
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RDI.i270 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %PC.i269
  %4112 = add i64 %4111, 10
  store i64 %4112, i64* %PC.i269
  store i64 ptrtoint (%G__0x458a81_type* @G__0x458a81 to i64), i64* %RDI.i270, align 8
  store %struct.Memory* %loadMem_42e74d, %struct.Memory** %MEMORY
  %loadMem_42e757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 9
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RSI.i267 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 15
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RBP.i268
  %4123 = sub i64 %4122, 136
  %4124 = load i64, i64* %PC.i266
  %4125 = add i64 %4124, 7
  store i64 %4125, i64* %PC.i266
  %4126 = inttoptr i64 %4123 to i64*
  %4127 = load i64, i64* %4126
  store i64 %4127, i64* %RSI.i267, align 8
  store %struct.Memory* %loadMem_42e757, %struct.Memory** %MEMORY
  %loadMem_42e75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 7
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 15
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %4136 to i64*
  %4137 = load i64, i64* %RBP.i265
  %4138 = sub i64 %4137, 140
  %4139 = load i64, i64* %PC.i263
  %4140 = add i64 %4139, 6
  store i64 %4140, i64* %PC.i263
  %4141 = inttoptr i64 %4138 to i32*
  %4142 = load i32, i32* %4141
  %4143 = zext i32 %4142 to i64
  store i64 %4143, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_42e75e, %struct.Memory** %MEMORY
  %loadMem_42e764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 1
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 5
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RAX.i261
  %4154 = load i64, i64* %PC.i260
  %4155 = add i64 %4154, 3
  store i64 %4155, i64* %PC.i260
  store i64 %4153, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_42e764, %struct.Memory** %MEMORY
  %loadMem_42e767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %4162 = bitcast %union.anon* %4161 to %struct.anon.2*
  %AL.i259 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4162, i32 0, i32 0
  %4163 = load i64, i64* %PC.i258
  %4164 = add i64 %4163, 2
  store i64 %4164, i64* %PC.i258
  store i8 0, i8* %AL.i259, align 1
  store %struct.Memory* %loadMem_42e767, %struct.Memory** %MEMORY
  %loadMem1_42e769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %PC.i257
  %4169 = add i64 %4168, 66215
  %4170 = load i64, i64* %PC.i257
  %4171 = add i64 %4170, 5
  %4172 = load i64, i64* %PC.i257
  %4173 = add i64 %4172, 5
  store i64 %4173, i64* %PC.i257
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4175 = load i64, i64* %4174, align 8
  %4176 = add i64 %4175, -8
  %4177 = inttoptr i64 %4176 to i64*
  store i64 %4171, i64* %4177
  store i64 %4176, i64* %4174, align 8
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4169, i64* %4178, align 8
  store %struct.Memory* %loadMem1_42e769, %struct.Memory** %MEMORY
  %loadMem2_42e769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e769 = load i64, i64* %3
  %call2_42e769 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e769, %struct.Memory* %loadMem2_42e769)
  store %struct.Memory* %call2_42e769, %struct.Memory** %MEMORY
  br label %block_.L_42e76e

block_.L_42e76e:                                  ; preds = %block_.L_42e746, %block_42e6ce, %block_.L_42e6bf
  %loadMem_42e76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 1
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 15
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RBP.i256
  %4189 = sub i64 %4188, 8
  %4190 = load i64, i64* %PC.i254
  %4191 = add i64 %4190, 4
  store i64 %4191, i64* %PC.i254
  %4192 = inttoptr i64 %4189 to i64*
  %4193 = load i64, i64* %4192
  store i64 %4193, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_42e76e, %struct.Memory** %MEMORY
  %loadMem_42e772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 1
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RAX.i253
  %4201 = add i64 %4200, 80
  %4202 = load i64, i64* %PC.i252
  %4203 = add i64 %4202, 5
  store i64 %4203, i64* %PC.i252
  %4204 = inttoptr i64 %4201 to i64*
  %4205 = load i64, i64* %4204
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4206, align 1
  %4207 = trunc i64 %4205 to i32
  %4208 = and i32 %4207, 255
  %4209 = call i32 @llvm.ctpop.i32(i32 %4208)
  %4210 = trunc i32 %4209 to i8
  %4211 = and i8 %4210, 1
  %4212 = xor i8 %4211, 1
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4212, i8* %4213, align 1
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4214, align 1
  %4215 = icmp eq i64 %4205, 0
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4216, i8* %4217, align 1
  %4218 = lshr i64 %4205, 63
  %4219 = trunc i64 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4219, i8* %4220, align 1
  %4221 = lshr i64 %4205, 63
  %4222 = xor i64 %4218, %4221
  %4223 = add i64 %4222, %4221
  %4224 = icmp eq i64 %4223, 2
  %4225 = zext i1 %4224 to i8
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4225, i8* %4226, align 1
  store %struct.Memory* %loadMem_42e772, %struct.Memory** %MEMORY
  %loadMem_42e777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %PC.i251
  %4231 = add i64 %4230, 166
  %4232 = load i64, i64* %PC.i251
  %4233 = add i64 %4232, 6
  %4234 = load i64, i64* %PC.i251
  %4235 = add i64 %4234, 6
  store i64 %4235, i64* %PC.i251
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4237 = load i8, i8* %4236, align 1
  store i8 %4237, i8* %BRANCH_TAKEN, align 1
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4239 = icmp ne i8 %4237, 0
  %4240 = select i1 %4239, i64 %4231, i64 %4233
  store i64 %4240, i64* %4238, align 8
  store %struct.Memory* %loadMem_42e777, %struct.Memory** %MEMORY
  %loadBr_42e777 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e777 = icmp eq i8 %loadBr_42e777, 1
  br i1 %cmpBr_42e777, label %block_.L_42e81d, label %block_42e77d

block_42e77d:                                     ; preds = %block_.L_42e76e
  %loadMem_42e77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 33
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 1
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 15
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %RBP.i250
  %4251 = sub i64 %4250, 8
  %4252 = load i64, i64* %PC.i248
  %4253 = add i64 %4252, 4
  store i64 %4253, i64* %PC.i248
  %4254 = inttoptr i64 %4251 to i64*
  %4255 = load i64, i64* %4254
  store i64 %4255, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_42e77d, %struct.Memory** %MEMORY
  %loadMem_42e781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 1
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 11
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %4264 to i64*
  %4265 = load i64, i64* %RAX.i246
  %4266 = add i64 %4265, 80
  %4267 = load i64, i64* %PC.i245
  %4268 = add i64 %4267, 4
  store i64 %4268, i64* %PC.i245
  %4269 = inttoptr i64 %4266 to i64*
  %4270 = load i64, i64* %4269
  store i64 %4270, i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_42e781, %struct.Memory** %MEMORY
  %loadMem1_42e785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 33
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4273 to i64*
  %4274 = load i64, i64* %PC.i244
  %4275 = add i64 %4274, -185125
  %4276 = load i64, i64* %PC.i244
  %4277 = add i64 %4276, 5
  %4278 = load i64, i64* %PC.i244
  %4279 = add i64 %4278, 5
  store i64 %4279, i64* %PC.i244
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4281 = load i64, i64* %4280, align 8
  %4282 = add i64 %4281, -8
  %4283 = inttoptr i64 %4282 to i64*
  store i64 %4277, i64* %4283
  store i64 %4282, i64* %4280, align 8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4275, i64* %4284, align 8
  store %struct.Memory* %loadMem1_42e785, %struct.Memory** %MEMORY
  %loadMem2_42e785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e785 = load i64, i64* %3
  %4285 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_42e785)
  store %struct.Memory* %4285, %struct.Memory** %MEMORY
  %loadMem_42e78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 11
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RDI.i239 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 15
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4294 to i64*
  %4295 = load i64, i64* %RBP.i240
  %4296 = sub i64 %4295, 8
  %4297 = load i64, i64* %PC.i238
  %4298 = add i64 %4297, 4
  store i64 %4298, i64* %PC.i238
  %4299 = inttoptr i64 %4296 to i64*
  %4300 = load i64, i64* %4299
  store i64 %4300, i64* %RDI.i239, align 8
  store %struct.Memory* %loadMem_42e78a, %struct.Memory** %MEMORY
  %loadMem_42e78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 11
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RDI.i237 = bitcast %union.anon* %4306 to i64*
  %4307 = load i64, i64* %RDI.i237
  %4308 = add i64 %4307, 24
  %4309 = load i64, i64* %PC.i236
  %4310 = add i64 %4309, 4
  store i64 %4310, i64* %PC.i236
  %4311 = inttoptr i64 %4308 to i32*
  %4312 = load i32, i32* %4311
  %4313 = sext i32 %4312 to i64
  store i64 %4313, i64* %RDI.i237, align 8
  store %struct.Memory* %loadMem_42e78e, %struct.Memory** %MEMORY
  %loadMem_42e792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 11
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RDI.i235 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RAX.i234
  %4324 = load i64, i64* %RDI.i235
  %4325 = load i64, i64* %PC.i233
  %4326 = add i64 %4325, 3
  store i64 %4326, i64* %PC.i233
  %4327 = sub i64 %4323, %4324
  %4328 = icmp ult i64 %4323, %4324
  %4329 = zext i1 %4328 to i8
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4329, i8* %4330, align 1
  %4331 = trunc i64 %4327 to i32
  %4332 = and i32 %4331, 255
  %4333 = call i32 @llvm.ctpop.i32(i32 %4332)
  %4334 = trunc i32 %4333 to i8
  %4335 = and i8 %4334, 1
  %4336 = xor i8 %4335, 1
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4336, i8* %4337, align 1
  %4338 = xor i64 %4324, %4323
  %4339 = xor i64 %4338, %4327
  %4340 = lshr i64 %4339, 4
  %4341 = trunc i64 %4340 to i8
  %4342 = and i8 %4341, 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4342, i8* %4343, align 1
  %4344 = icmp eq i64 %4327, 0
  %4345 = zext i1 %4344 to i8
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4345, i8* %4346, align 1
  %4347 = lshr i64 %4327, 63
  %4348 = trunc i64 %4347 to i8
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4348, i8* %4349, align 1
  %4350 = lshr i64 %4323, 63
  %4351 = lshr i64 %4324, 63
  %4352 = xor i64 %4351, %4350
  %4353 = xor i64 %4347, %4350
  %4354 = add i64 %4353, %4352
  %4355 = icmp eq i64 %4354, 2
  %4356 = zext i1 %4355 to i8
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4356, i8* %4357, align 1
  store %struct.Memory* %loadMem_42e792, %struct.Memory** %MEMORY
  %loadMem_42e795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %PC.i232
  %4362 = add i64 %4361, 136
  %4363 = load i64, i64* %PC.i232
  %4364 = add i64 %4363, 6
  %4365 = load i64, i64* %PC.i232
  %4366 = add i64 %4365, 6
  store i64 %4366, i64* %PC.i232
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4368 = load i8, i8* %4367, align 1
  store i8 %4368, i8* %BRANCH_TAKEN, align 1
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4370 = icmp ne i8 %4368, 0
  %4371 = select i1 %4370, i64 %4362, i64 %4364
  store i64 %4371, i64* %4369, align 8
  store %struct.Memory* %loadMem_42e795, %struct.Memory** %MEMORY
  %loadBr_42e795 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e795 = icmp eq i8 %loadBr_42e795, 1
  br i1 %cmpBr_42e795, label %block_.L_42e81d, label %block_42e79b

block_42e79b:                                     ; preds = %block_42e77d
  %loadMem_42e79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 15
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %4380 to i64*
  %4381 = load i64, i64* %RBP.i231
  %4382 = sub i64 %4381, 8
  %4383 = load i64, i64* %PC.i229
  %4384 = add i64 %4383, 4
  store i64 %4384, i64* %PC.i229
  %4385 = inttoptr i64 %4382 to i64*
  %4386 = load i64, i64* %4385
  store i64 %4386, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_42e79b, %struct.Memory** %MEMORY
  %loadMem_42e79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 33
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 1
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 11
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RDI.i228 = bitcast %union.anon* %4395 to i64*
  %4396 = load i64, i64* %RAX.i227
  %4397 = add i64 %4396, 80
  %4398 = load i64, i64* %PC.i226
  %4399 = add i64 %4398, 4
  store i64 %4399, i64* %PC.i226
  %4400 = inttoptr i64 %4397 to i64*
  %4401 = load i64, i64* %4400
  store i64 %4401, i64* %RDI.i228, align 8
  store %struct.Memory* %loadMem_42e79f, %struct.Memory** %MEMORY
  %loadMem1_42e7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 33
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %PC.i225
  %4406 = add i64 %4405, -185155
  %4407 = load i64, i64* %PC.i225
  %4408 = add i64 %4407, 5
  %4409 = load i64, i64* %PC.i225
  %4410 = add i64 %4409, 5
  store i64 %4410, i64* %PC.i225
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4412 = load i64, i64* %4411, align 8
  %4413 = add i64 %4412, -8
  %4414 = inttoptr i64 %4413 to i64*
  store i64 %4408, i64* %4414
  store i64 %4413, i64* %4411, align 8
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4406, i64* %4415, align 8
  store %struct.Memory* %loadMem1_42e7a3, %struct.Memory** %MEMORY
  %loadMem2_42e7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e7a3 = load i64, i64* %3
  %4416 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_42e7a3)
  store %struct.Memory* %4416, %struct.Memory** %MEMORY
  %loadMem_42e7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 33
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 11
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RDI.i222 = bitcast %union.anon* %4422 to i64*
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 15
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %4425 to i64*
  %4426 = load i64, i64* %RBP.i223
  %4427 = sub i64 %4426, 8
  %4428 = load i64, i64* %PC.i221
  %4429 = add i64 %4428, 4
  store i64 %4429, i64* %PC.i221
  %4430 = inttoptr i64 %4427 to i64*
  %4431 = load i64, i64* %4430
  store i64 %4431, i64* %RDI.i222, align 8
  store %struct.Memory* %loadMem_42e7a8, %struct.Memory** %MEMORY
  %loadMem_42e7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 33
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 7
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %RDX.i219 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 11
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RDI.i220 = bitcast %union.anon* %4440 to i64*
  %4441 = load i64, i64* %RDI.i220
  %4442 = add i64 %4441, 24
  %4443 = load i64, i64* %PC.i218
  %4444 = add i64 %4443, 3
  store i64 %4444, i64* %PC.i218
  %4445 = inttoptr i64 %4442 to i32*
  %4446 = load i32, i32* %4445
  %4447 = zext i32 %4446 to i64
  store i64 %4447, i64* %RDX.i219, align 8
  store %struct.Memory* %loadMem_42e7ac, %struct.Memory** %MEMORY
  %loadMem_42e7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 11
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 15
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4456 to i64*
  %4457 = load i64, i64* %RBP.i217
  %4458 = sub i64 %4457, 8
  %4459 = load i64, i64* %PC.i215
  %4460 = add i64 %4459, 4
  store i64 %4460, i64* %PC.i215
  %4461 = inttoptr i64 %4458 to i64*
  %4462 = load i64, i64* %4461
  store i64 %4462, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_42e7af, %struct.Memory** %MEMORY
  %loadMem_42e7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 33
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4465 to i64*
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 11
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %RDI.i214 = bitcast %union.anon* %4468 to i64*
  %4469 = load i64, i64* %RDI.i214
  %4470 = add i64 %4469, 40
  %4471 = load i64, i64* %PC.i213
  %4472 = add i64 %4471, 5
  store i64 %4472, i64* %PC.i213
  %4473 = inttoptr i64 %4470 to i64*
  %4474 = load i64, i64* %4473
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4475, align 1
  %4476 = trunc i64 %4474 to i32
  %4477 = and i32 %4476, 255
  %4478 = call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4481, i8* %4482, align 1
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4483, align 1
  %4484 = icmp eq i64 %4474, 0
  %4485 = zext i1 %4484 to i8
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4485, i8* %4486, align 1
  %4487 = lshr i64 %4474, 63
  %4488 = trunc i64 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4488, i8* %4489, align 1
  %4490 = lshr i64 %4474, 63
  %4491 = xor i64 %4487, %4490
  %4492 = add i64 %4491, %4490
  %4493 = icmp eq i64 %4492, 2
  %4494 = zext i1 %4493 to i8
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4494, i8* %4495, align 1
  store %struct.Memory* %loadMem_42e7b3, %struct.Memory** %MEMORY
  %loadMem_42e7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 33
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %4498 to i64*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 1
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 15
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %4504 to i64*
  %4505 = load i64, i64* %RBP.i212
  %4506 = sub i64 %4505, 160
  %4507 = load i64, i64* %RAX.i211
  %4508 = load i64, i64* %PC.i210
  %4509 = add i64 %4508, 7
  store i64 %4509, i64* %PC.i210
  %4510 = inttoptr i64 %4506 to i64*
  store i64 %4507, i64* %4510
  store %struct.Memory* %loadMem_42e7b8, %struct.Memory** %MEMORY
  %loadMem_42e7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 7
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %EDX.i208 = bitcast %union.anon* %4516 to i32*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 15
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %4519 to i64*
  %4520 = load i64, i64* %RBP.i209
  %4521 = sub i64 %4520, 164
  %4522 = load i32, i32* %EDX.i208
  %4523 = zext i32 %4522 to i64
  %4524 = load i64, i64* %PC.i207
  %4525 = add i64 %4524, 6
  store i64 %4525, i64* %PC.i207
  %4526 = inttoptr i64 %4521 to i32*
  store i32 %4522, i32* %4526
  store %struct.Memory* %loadMem_42e7bf, %struct.Memory** %MEMORY
  %loadMem_42e7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %PC.i206
  %4531 = add i64 %4530, 26
  %4532 = load i64, i64* %PC.i206
  %4533 = add i64 %4532, 6
  %4534 = load i64, i64* %PC.i206
  %4535 = add i64 %4534, 6
  store i64 %4535, i64* %PC.i206
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4537 = load i8, i8* %4536, align 1
  store i8 %4537, i8* %BRANCH_TAKEN, align 1
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4539 = icmp ne i8 %4537, 0
  %4540 = select i1 %4539, i64 %4531, i64 %4533
  store i64 %4540, i64* %4538, align 8
  store %struct.Memory* %loadMem_42e7c5, %struct.Memory** %MEMORY
  %loadBr_42e7c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e7c5 = icmp eq i8 %loadBr_42e7c5, 1
  br i1 %cmpBr_42e7c5, label %block_.L_42e7df, label %block_42e7cb

block_42e7cb:                                     ; preds = %block_42e79b
  %loadMem_42e7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 1
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 15
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %RBP.i205
  %4551 = sub i64 %4550, 8
  %4552 = load i64, i64* %PC.i203
  %4553 = add i64 %4552, 4
  store i64 %4553, i64* %PC.i203
  %4554 = inttoptr i64 %4551 to i64*
  %4555 = load i64, i64* %4554
  store i64 %4555, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_42e7cb, %struct.Memory** %MEMORY
  %loadMem_42e7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 33
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 1
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %4561 to i64*
  %4562 = load i64, i64* %RAX.i202
  %4563 = add i64 %4562, 40
  %4564 = load i64, i64* %PC.i201
  %4565 = add i64 %4564, 4
  store i64 %4565, i64* %PC.i201
  %4566 = inttoptr i64 %4563 to i64*
  %4567 = load i64, i64* %4566
  store i64 %4567, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_42e7cf, %struct.Memory** %MEMORY
  %loadMem_42e7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 1
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %4573 to i64*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 15
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %4576 to i64*
  %4577 = load i64, i64* %RBP.i200
  %4578 = sub i64 %4577, 176
  %4579 = load i64, i64* %RAX.i199
  %4580 = load i64, i64* %PC.i198
  %4581 = add i64 %4580, 7
  store i64 %4581, i64* %PC.i198
  %4582 = inttoptr i64 %4578 to i64*
  store i64 %4579, i64* %4582
  store %struct.Memory* %loadMem_42e7d3, %struct.Memory** %MEMORY
  %loadMem_42e7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %PC.i197
  %4587 = add i64 %4586, 27
  %4588 = load i64, i64* %PC.i197
  %4589 = add i64 %4588, 5
  store i64 %4589, i64* %PC.i197
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4587, i64* %4590, align 8
  store %struct.Memory* %loadMem_42e7da, %struct.Memory** %MEMORY
  br label %block_.L_42e7f5

block_.L_42e7df:                                  ; preds = %block_42e79b
  %loadMem_42e7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 1
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %PC.i195
  %4598 = add i64 %4597, 10
  store i64 %4598, i64* %PC.i195
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_42e7df, %struct.Memory** %MEMORY
  %loadMem_42e7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 1
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %4604 to i64*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 15
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %4607 to i64*
  %4608 = load i64, i64* %RBP.i194
  %4609 = sub i64 %4608, 176
  %4610 = load i64, i64* %RAX.i193
  %4611 = load i64, i64* %PC.i192
  %4612 = add i64 %4611, 7
  store i64 %4612, i64* %PC.i192
  %4613 = inttoptr i64 %4609 to i64*
  store i64 %4610, i64* %4613
  store %struct.Memory* %loadMem_42e7e9, %struct.Memory** %MEMORY
  %loadMem_42e7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %PC.i191
  %4618 = add i64 %4617, 5
  %4619 = load i64, i64* %PC.i191
  %4620 = add i64 %4619, 5
  store i64 %4620, i64* %PC.i191
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4618, i64* %4621, align 8
  store %struct.Memory* %loadMem_42e7f0, %struct.Memory** %MEMORY
  br label %block_.L_42e7f5

block_.L_42e7f5:                                  ; preds = %block_.L_42e7df, %block_42e7cb
  %loadMem_42e7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 1
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 15
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %4630 to i64*
  %4631 = load i64, i64* %RBP.i190
  %4632 = sub i64 %4631, 176
  %4633 = load i64, i64* %PC.i188
  %4634 = add i64 %4633, 7
  store i64 %4634, i64* %PC.i188
  %4635 = inttoptr i64 %4632 to i64*
  %4636 = load i64, i64* %4635
  store i64 %4636, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_42e7f5, %struct.Memory** %MEMORY
  %loadMem_42e7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 11
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RDI.i187 = bitcast %union.anon* %4642 to i64*
  %4643 = load i64, i64* %PC.i186
  %4644 = add i64 %4643, 10
  store i64 %4644, i64* %PC.i186
  store i64 ptrtoint (%G__0x458ace_type* @G__0x458ace to i64), i64* %RDI.i187, align 8
  store %struct.Memory* %loadMem_42e7fc, %struct.Memory** %MEMORY
  %loadMem_42e806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 9
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RSI.i184 = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 15
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %4653 to i64*
  %4654 = load i64, i64* %RBP.i185
  %4655 = sub i64 %4654, 160
  %4656 = load i64, i64* %PC.i183
  %4657 = add i64 %4656, 7
  store i64 %4657, i64* %PC.i183
  %4658 = inttoptr i64 %4655 to i64*
  %4659 = load i64, i64* %4658
  store i64 %4659, i64* %RSI.i184, align 8
  store %struct.Memory* %loadMem_42e806, %struct.Memory** %MEMORY
  %loadMem_42e80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 7
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 15
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %RBP.i182
  %4670 = sub i64 %4669, 164
  %4671 = load i64, i64* %PC.i180
  %4672 = add i64 %4671, 6
  store i64 %4672, i64* %PC.i180
  %4673 = inttoptr i64 %4670 to i32*
  %4674 = load i32, i32* %4673
  %4675 = zext i32 %4674 to i64
  store i64 %4675, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_42e80d, %struct.Memory** %MEMORY
  %loadMem_42e813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 1
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %4681 to i64*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 5
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %4684 to i64*
  %4685 = load i64, i64* %RAX.i178
  %4686 = load i64, i64* %PC.i177
  %4687 = add i64 %4686, 3
  store i64 %4687, i64* %PC.i177
  store i64 %4685, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_42e813, %struct.Memory** %MEMORY
  %loadMem_42e816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 1
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %4694 = bitcast %union.anon* %4693 to %struct.anon.2*
  %AL.i176 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4694, i32 0, i32 0
  %4695 = load i64, i64* %PC.i175
  %4696 = add i64 %4695, 2
  store i64 %4696, i64* %PC.i175
  store i8 0, i8* %AL.i176, align 1
  store %struct.Memory* %loadMem_42e816, %struct.Memory** %MEMORY
  %loadMem1_42e818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 33
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4699 to i64*
  %4700 = load i64, i64* %PC.i174
  %4701 = add i64 %4700, 66040
  %4702 = load i64, i64* %PC.i174
  %4703 = add i64 %4702, 5
  %4704 = load i64, i64* %PC.i174
  %4705 = add i64 %4704, 5
  store i64 %4705, i64* %PC.i174
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4707 = load i64, i64* %4706, align 8
  %4708 = add i64 %4707, -8
  %4709 = inttoptr i64 %4708 to i64*
  store i64 %4703, i64* %4709
  store i64 %4708, i64* %4706, align 8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4701, i64* %4710, align 8
  store %struct.Memory* %loadMem1_42e818, %struct.Memory** %MEMORY
  %loadMem2_42e818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e818 = load i64, i64* %3
  %call2_42e818 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e818, %struct.Memory* %loadMem2_42e818)
  store %struct.Memory* %call2_42e818, %struct.Memory** %MEMORY
  br label %block_.L_42e81d

block_.L_42e81d:                                  ; preds = %block_.L_42e7f5, %block_42e77d, %block_.L_42e76e
  %loadMem_42e81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 33
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 1
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 15
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %RBP.i173
  %4721 = sub i64 %4720, 8
  %4722 = load i64, i64* %PC.i171
  %4723 = add i64 %4722, 4
  store i64 %4723, i64* %PC.i171
  %4724 = inttoptr i64 %4721 to i64*
  %4725 = load i64, i64* %4724
  store i64 %4725, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_42e81d, %struct.Memory** %MEMORY
  %loadMem_42e821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 1
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %4731 to i64*
  %4732 = load i64, i64* %RAX.i170
  %4733 = add i64 %4732, 88
  %4734 = load i64, i64* %PC.i169
  %4735 = add i64 %4734, 5
  store i64 %4735, i64* %PC.i169
  %4736 = inttoptr i64 %4733 to i64*
  %4737 = load i64, i64* %4736
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4738, align 1
  %4739 = trunc i64 %4737 to i32
  %4740 = and i32 %4739, 255
  %4741 = call i32 @llvm.ctpop.i32(i32 %4740)
  %4742 = trunc i32 %4741 to i8
  %4743 = and i8 %4742, 1
  %4744 = xor i8 %4743, 1
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4744, i8* %4745, align 1
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4746, align 1
  %4747 = icmp eq i64 %4737, 0
  %4748 = zext i1 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4748, i8* %4749, align 1
  %4750 = lshr i64 %4737, 63
  %4751 = trunc i64 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4751, i8* %4752, align 1
  %4753 = lshr i64 %4737, 63
  %4754 = xor i64 %4750, %4753
  %4755 = add i64 %4754, %4753
  %4756 = icmp eq i64 %4755, 2
  %4757 = zext i1 %4756 to i8
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4757, i8* %4758, align 1
  store %struct.Memory* %loadMem_42e821, %struct.Memory** %MEMORY
  %loadMem_42e826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 33
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4761 to i64*
  %4762 = load i64, i64* %PC.i168
  %4763 = add i64 %4762, 166
  %4764 = load i64, i64* %PC.i168
  %4765 = add i64 %4764, 6
  %4766 = load i64, i64* %PC.i168
  %4767 = add i64 %4766, 6
  store i64 %4767, i64* %PC.i168
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4769 = load i8, i8* %4768, align 1
  store i8 %4769, i8* %BRANCH_TAKEN, align 1
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4771 = icmp ne i8 %4769, 0
  %4772 = select i1 %4771, i64 %4763, i64 %4765
  store i64 %4772, i64* %4770, align 8
  store %struct.Memory* %loadMem_42e826, %struct.Memory** %MEMORY
  %loadBr_42e826 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e826 = icmp eq i8 %loadBr_42e826, 1
  br i1 %cmpBr_42e826, label %block_.L_42e8cc, label %block_42e82c

block_42e82c:                                     ; preds = %block_.L_42e81d
  %loadMem_42e82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 1
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RBP.i167
  %4783 = sub i64 %4782, 8
  %4784 = load i64, i64* %PC.i165
  %4785 = add i64 %4784, 4
  store i64 %4785, i64* %PC.i165
  %4786 = inttoptr i64 %4783 to i64*
  %4787 = load i64, i64* %4786
  store i64 %4787, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_42e82c, %struct.Memory** %MEMORY
  %loadMem_42e830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %4793 to i64*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 11
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %RAX.i163
  %4798 = add i64 %4797, 88
  %4799 = load i64, i64* %PC.i162
  %4800 = add i64 %4799, 4
  store i64 %4800, i64* %PC.i162
  %4801 = inttoptr i64 %4798 to i64*
  %4802 = load i64, i64* %4801
  store i64 %4802, i64* %RDI.i164, align 8
  store %struct.Memory* %loadMem_42e830, %struct.Memory** %MEMORY
  %loadMem1_42e834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %PC.i161
  %4807 = add i64 %4806, -185300
  %4808 = load i64, i64* %PC.i161
  %4809 = add i64 %4808, 5
  %4810 = load i64, i64* %PC.i161
  %4811 = add i64 %4810, 5
  store i64 %4811, i64* %PC.i161
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4813 = load i64, i64* %4812, align 8
  %4814 = add i64 %4813, -8
  %4815 = inttoptr i64 %4814 to i64*
  store i64 %4809, i64* %4815
  store i64 %4814, i64* %4812, align 8
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4807, i64* %4816, align 8
  store %struct.Memory* %loadMem1_42e834, %struct.Memory** %MEMORY
  %loadMem2_42e834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e834 = load i64, i64* %3
  %4817 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_42e834)
  store %struct.Memory* %4817, %struct.Memory** %MEMORY
  %loadMem_42e839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 11
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RDI.i157 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 15
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4826 to i64*
  %4827 = load i64, i64* %RBP.i158
  %4828 = sub i64 %4827, 8
  %4829 = load i64, i64* %PC.i156
  %4830 = add i64 %4829, 4
  store i64 %4830, i64* %PC.i156
  %4831 = inttoptr i64 %4828 to i64*
  %4832 = load i64, i64* %4831
  store i64 %4832, i64* %RDI.i157, align 8
  store %struct.Memory* %loadMem_42e839, %struct.Memory** %MEMORY
  %loadMem_42e83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4835 to i64*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 11
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RDI.i155 = bitcast %union.anon* %4838 to i64*
  %4839 = load i64, i64* %RDI.i155
  %4840 = add i64 %4839, 24
  %4841 = load i64, i64* %PC.i154
  %4842 = add i64 %4841, 4
  store i64 %4842, i64* %PC.i154
  %4843 = inttoptr i64 %4840 to i32*
  %4844 = load i32, i32* %4843
  %4845 = sext i32 %4844 to i64
  store i64 %4845, i64* %RDI.i155, align 8
  store %struct.Memory* %loadMem_42e83d, %struct.Memory** %MEMORY
  %loadMem_42e841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 33
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4848 to i64*
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 1
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 11
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RDI.i153 = bitcast %union.anon* %4854 to i64*
  %4855 = load i64, i64* %RAX.i152
  %4856 = load i64, i64* %RDI.i153
  %4857 = load i64, i64* %PC.i151
  %4858 = add i64 %4857, 3
  store i64 %4858, i64* %PC.i151
  %4859 = sub i64 %4855, %4856
  %4860 = icmp ult i64 %4855, %4856
  %4861 = zext i1 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4861, i8* %4862, align 1
  %4863 = trunc i64 %4859 to i32
  %4864 = and i32 %4863, 255
  %4865 = call i32 @llvm.ctpop.i32(i32 %4864)
  %4866 = trunc i32 %4865 to i8
  %4867 = and i8 %4866, 1
  %4868 = xor i8 %4867, 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4868, i8* %4869, align 1
  %4870 = xor i64 %4856, %4855
  %4871 = xor i64 %4870, %4859
  %4872 = lshr i64 %4871, 4
  %4873 = trunc i64 %4872 to i8
  %4874 = and i8 %4873, 1
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4874, i8* %4875, align 1
  %4876 = icmp eq i64 %4859, 0
  %4877 = zext i1 %4876 to i8
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4877, i8* %4878, align 1
  %4879 = lshr i64 %4859, 63
  %4880 = trunc i64 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4880, i8* %4881, align 1
  %4882 = lshr i64 %4855, 63
  %4883 = lshr i64 %4856, 63
  %4884 = xor i64 %4883, %4882
  %4885 = xor i64 %4879, %4882
  %4886 = add i64 %4885, %4884
  %4887 = icmp eq i64 %4886, 2
  %4888 = zext i1 %4887 to i8
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4888, i8* %4889, align 1
  store %struct.Memory* %loadMem_42e841, %struct.Memory** %MEMORY
  %loadMem_42e844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %PC.i150
  %4894 = add i64 %4893, 136
  %4895 = load i64, i64* %PC.i150
  %4896 = add i64 %4895, 6
  %4897 = load i64, i64* %PC.i150
  %4898 = add i64 %4897, 6
  store i64 %4898, i64* %PC.i150
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4900 = load i8, i8* %4899, align 1
  store i8 %4900, i8* %BRANCH_TAKEN, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4902 = icmp ne i8 %4900, 0
  %4903 = select i1 %4902, i64 %4894, i64 %4896
  store i64 %4903, i64* %4901, align 8
  store %struct.Memory* %loadMem_42e844, %struct.Memory** %MEMORY
  %loadBr_42e844 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e844 = icmp eq i8 %loadBr_42e844, 1
  br i1 %cmpBr_42e844, label %block_.L_42e8cc, label %block_42e84a

block_42e84a:                                     ; preds = %block_42e82c
  %loadMem_42e84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 33
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 1
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 15
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %4912 to i64*
  %4913 = load i64, i64* %RBP.i149
  %4914 = sub i64 %4913, 8
  %4915 = load i64, i64* %PC.i147
  %4916 = add i64 %4915, 4
  store i64 %4916, i64* %PC.i147
  %4917 = inttoptr i64 %4914 to i64*
  %4918 = load i64, i64* %4917
  store i64 %4918, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_42e84a, %struct.Memory** %MEMORY
  %loadMem_42e84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 1
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 11
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RDI.i146 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %RAX.i145
  %4929 = add i64 %4928, 88
  %4930 = load i64, i64* %PC.i144
  %4931 = add i64 %4930, 4
  store i64 %4931, i64* %PC.i144
  %4932 = inttoptr i64 %4929 to i64*
  %4933 = load i64, i64* %4932
  store i64 %4933, i64* %RDI.i146, align 8
  store %struct.Memory* %loadMem_42e84e, %struct.Memory** %MEMORY
  %loadMem1_42e852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4936 to i64*
  %4937 = load i64, i64* %PC.i143
  %4938 = add i64 %4937, -185330
  %4939 = load i64, i64* %PC.i143
  %4940 = add i64 %4939, 5
  %4941 = load i64, i64* %PC.i143
  %4942 = add i64 %4941, 5
  store i64 %4942, i64* %PC.i143
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4944 = load i64, i64* %4943, align 8
  %4945 = add i64 %4944, -8
  %4946 = inttoptr i64 %4945 to i64*
  store i64 %4940, i64* %4946
  store i64 %4945, i64* %4943, align 8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4938, i64* %4947, align 8
  store %struct.Memory* %loadMem1_42e852, %struct.Memory** %MEMORY
  %loadMem2_42e852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e852 = load i64, i64* %3
  %4948 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_42e852)
  store %struct.Memory* %4948, %struct.Memory** %MEMORY
  %loadMem_42e857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 11
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %RDI.i138 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 15
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %4957 to i64*
  %4958 = load i64, i64* %RBP.i139
  %4959 = sub i64 %4958, 8
  %4960 = load i64, i64* %PC.i137
  %4961 = add i64 %4960, 4
  store i64 %4961, i64* %PC.i137
  %4962 = inttoptr i64 %4959 to i64*
  %4963 = load i64, i64* %4962
  store i64 %4963, i64* %RDI.i138, align 8
  store %struct.Memory* %loadMem_42e857, %struct.Memory** %MEMORY
  %loadMem_42e85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 33
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 7
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %4969 to i64*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 11
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RDI.i136 = bitcast %union.anon* %4972 to i64*
  %4973 = load i64, i64* %RDI.i136
  %4974 = add i64 %4973, 24
  %4975 = load i64, i64* %PC.i134
  %4976 = add i64 %4975, 3
  store i64 %4976, i64* %PC.i134
  %4977 = inttoptr i64 %4974 to i32*
  %4978 = load i32, i32* %4977
  %4979 = zext i32 %4978 to i64
  store i64 %4979, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_42e85b, %struct.Memory** %MEMORY
  %loadMem_42e85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 11
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %4985 to i64*
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 15
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4988 to i64*
  %4989 = load i64, i64* %RBP.i133
  %4990 = sub i64 %4989, 8
  %4991 = load i64, i64* %PC.i131
  %4992 = add i64 %4991, 4
  store i64 %4992, i64* %PC.i131
  %4993 = inttoptr i64 %4990 to i64*
  %4994 = load i64, i64* %4993
  store i64 %4994, i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_42e85e, %struct.Memory** %MEMORY
  %loadMem_42e862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 33
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 11
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %RDI.i130
  %5002 = add i64 %5001, 40
  %5003 = load i64, i64* %PC.i129
  %5004 = add i64 %5003, 5
  store i64 %5004, i64* %PC.i129
  %5005 = inttoptr i64 %5002 to i64*
  %5006 = load i64, i64* %5005
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5007, align 1
  %5008 = trunc i64 %5006 to i32
  %5009 = and i32 %5008, 255
  %5010 = call i32 @llvm.ctpop.i32(i32 %5009)
  %5011 = trunc i32 %5010 to i8
  %5012 = and i8 %5011, 1
  %5013 = xor i8 %5012, 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5013, i8* %5014, align 1
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5015, align 1
  %5016 = icmp eq i64 %5006, 0
  %5017 = zext i1 %5016 to i8
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5017, i8* %5018, align 1
  %5019 = lshr i64 %5006, 63
  %5020 = trunc i64 %5019 to i8
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5020, i8* %5021, align 1
  %5022 = lshr i64 %5006, 63
  %5023 = xor i64 %5019, %5022
  %5024 = add i64 %5023, %5022
  %5025 = icmp eq i64 %5024, 2
  %5026 = zext i1 %5025 to i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5026, i8* %5027, align 1
  store %struct.Memory* %loadMem_42e862, %struct.Memory** %MEMORY
  %loadMem_42e867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 33
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 1
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 15
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %5036 to i64*
  %5037 = load i64, i64* %RBP.i128
  %5038 = sub i64 %5037, 184
  %5039 = load i64, i64* %RAX.i127
  %5040 = load i64, i64* %PC.i126
  %5041 = add i64 %5040, 7
  store i64 %5041, i64* %PC.i126
  %5042 = inttoptr i64 %5038 to i64*
  store i64 %5039, i64* %5042
  store %struct.Memory* %loadMem_42e867, %struct.Memory** %MEMORY
  %loadMem_42e86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 7
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5048 to i32*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 15
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %RBP.i125
  %5053 = sub i64 %5052, 188
  %5054 = load i32, i32* %EDX.i
  %5055 = zext i32 %5054 to i64
  %5056 = load i64, i64* %PC.i124
  %5057 = add i64 %5056, 6
  store i64 %5057, i64* %PC.i124
  %5058 = inttoptr i64 %5053 to i32*
  store i32 %5054, i32* %5058
  store %struct.Memory* %loadMem_42e86e, %struct.Memory** %MEMORY
  %loadMem_42e874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 33
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5061 to i64*
  %5062 = load i64, i64* %PC.i123
  %5063 = add i64 %5062, 26
  %5064 = load i64, i64* %PC.i123
  %5065 = add i64 %5064, 6
  %5066 = load i64, i64* %PC.i123
  %5067 = add i64 %5066, 6
  store i64 %5067, i64* %PC.i123
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5069 = load i8, i8* %5068, align 1
  store i8 %5069, i8* %BRANCH_TAKEN, align 1
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5071 = icmp ne i8 %5069, 0
  %5072 = select i1 %5071, i64 %5063, i64 %5065
  store i64 %5072, i64* %5070, align 8
  store %struct.Memory* %loadMem_42e874, %struct.Memory** %MEMORY
  %loadBr_42e874 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e874 = icmp eq i8 %loadBr_42e874, 1
  br i1 %cmpBr_42e874, label %block_.L_42e88e, label %block_42e87a

block_42e87a:                                     ; preds = %block_42e84a
  %loadMem_42e87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 33
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 1
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 15
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %RBP.i122
  %5083 = sub i64 %5082, 8
  %5084 = load i64, i64* %PC.i120
  %5085 = add i64 %5084, 4
  store i64 %5085, i64* %PC.i120
  %5086 = inttoptr i64 %5083 to i64*
  %5087 = load i64, i64* %5086
  store i64 %5087, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_42e87a, %struct.Memory** %MEMORY
  %loadMem_42e87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 33
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 1
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %5093 to i64*
  %5094 = load i64, i64* %RAX.i119
  %5095 = add i64 %5094, 40
  %5096 = load i64, i64* %PC.i118
  %5097 = add i64 %5096, 4
  store i64 %5097, i64* %PC.i118
  %5098 = inttoptr i64 %5095 to i64*
  %5099 = load i64, i64* %5098
  store i64 %5099, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_42e87e, %struct.Memory** %MEMORY
  %loadMem_42e882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 1
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 15
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %5108 to i64*
  %5109 = load i64, i64* %RBP.i117
  %5110 = sub i64 %5109, 200
  %5111 = load i64, i64* %RAX.i116
  %5112 = load i64, i64* %PC.i115
  %5113 = add i64 %5112, 7
  store i64 %5113, i64* %PC.i115
  %5114 = inttoptr i64 %5110 to i64*
  store i64 %5111, i64* %5114
  store %struct.Memory* %loadMem_42e882, %struct.Memory** %MEMORY
  %loadMem_42e889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %PC.i114
  %5119 = add i64 %5118, 27
  %5120 = load i64, i64* %PC.i114
  %5121 = add i64 %5120, 5
  store i64 %5121, i64* %PC.i114
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5119, i64* %5122, align 8
  store %struct.Memory* %loadMem_42e889, %struct.Memory** %MEMORY
  br label %block_.L_42e8a4

block_.L_42e88e:                                  ; preds = %block_42e84a
  %loadMem_42e88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 33
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 1
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %5128 to i64*
  %5129 = load i64, i64* %PC.i112
  %5130 = add i64 %5129, 10
  store i64 %5130, i64* %PC.i112
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_42e88e, %struct.Memory** %MEMORY
  %loadMem_42e898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 1
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 15
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RBP.i111
  %5141 = sub i64 %5140, 200
  %5142 = load i64, i64* %RAX.i110
  %5143 = load i64, i64* %PC.i109
  %5144 = add i64 %5143, 7
  store i64 %5144, i64* %PC.i109
  %5145 = inttoptr i64 %5141 to i64*
  store i64 %5142, i64* %5145
  store %struct.Memory* %loadMem_42e898, %struct.Memory** %MEMORY
  %loadMem_42e89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 33
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5148 to i64*
  %5149 = load i64, i64* %PC.i108
  %5150 = add i64 %5149, 5
  %5151 = load i64, i64* %PC.i108
  %5152 = add i64 %5151, 5
  store i64 %5152, i64* %PC.i108
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5150, i64* %5153, align 8
  store %struct.Memory* %loadMem_42e89f, %struct.Memory** %MEMORY
  br label %block_.L_42e8a4

block_.L_42e8a4:                                  ; preds = %block_.L_42e88e, %block_42e87a
  %loadMem_42e8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 33
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 1
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %5159 to i64*
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 15
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %5162 to i64*
  %5163 = load i64, i64* %RBP.i107
  %5164 = sub i64 %5163, 200
  %5165 = load i64, i64* %PC.i105
  %5166 = add i64 %5165, 7
  store i64 %5166, i64* %PC.i105
  %5167 = inttoptr i64 %5164 to i64*
  %5168 = load i64, i64* %5167
  store i64 %5168, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_42e8a4, %struct.Memory** %MEMORY
  %loadMem_42e8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 11
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RDI.i104 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %PC.i103
  %5176 = add i64 %5175, 10
  store i64 %5176, i64* %PC.i103
  store i64 ptrtoint (%G__0x458b1b_type* @G__0x458b1b to i64), i64* %RDI.i104, align 8
  store %struct.Memory* %loadMem_42e8ab, %struct.Memory** %MEMORY
  %loadMem_42e8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 9
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RSI.i101 = bitcast %union.anon* %5182 to i64*
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 15
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5185 to i64*
  %5186 = load i64, i64* %RBP.i102
  %5187 = sub i64 %5186, 184
  %5188 = load i64, i64* %PC.i100
  %5189 = add i64 %5188, 7
  store i64 %5189, i64* %PC.i100
  %5190 = inttoptr i64 %5187 to i64*
  %5191 = load i64, i64* %5190
  store i64 %5191, i64* %RSI.i101, align 8
  store %struct.Memory* %loadMem_42e8b5, %struct.Memory** %MEMORY
  %loadMem_42e8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 33
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 7
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5197 to i64*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 15
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %5200 to i64*
  %5201 = load i64, i64* %RBP.i99
  %5202 = sub i64 %5201, 188
  %5203 = load i64, i64* %PC.i98
  %5204 = add i64 %5203, 6
  store i64 %5204, i64* %PC.i98
  %5205 = inttoptr i64 %5202 to i32*
  %5206 = load i32, i32* %5205
  %5207 = zext i32 %5206 to i64
  store i64 %5207, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42e8bc, %struct.Memory** %MEMORY
  %loadMem_42e8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 33
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5210 to i64*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 1
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %5213 to i64*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 5
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %5216 to i64*
  %5217 = load i64, i64* %RAX.i96
  %5218 = load i64, i64* %PC.i95
  %5219 = add i64 %5218, 3
  store i64 %5219, i64* %PC.i95
  store i64 %5217, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_42e8c2, %struct.Memory** %MEMORY
  %loadMem_42e8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 1
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %5226 = bitcast %union.anon* %5225 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5226, i32 0, i32 0
  %5227 = load i64, i64* %PC.i94
  %5228 = add i64 %5227, 2
  store i64 %5228, i64* %PC.i94
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_42e8c5, %struct.Memory** %MEMORY
  %loadMem1_42e8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 33
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %PC.i93
  %5233 = add i64 %5232, 65865
  %5234 = load i64, i64* %PC.i93
  %5235 = add i64 %5234, 5
  %5236 = load i64, i64* %PC.i93
  %5237 = add i64 %5236, 5
  store i64 %5237, i64* %PC.i93
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5239 = load i64, i64* %5238, align 8
  %5240 = add i64 %5239, -8
  %5241 = inttoptr i64 %5240 to i64*
  store i64 %5235, i64* %5241
  store i64 %5240, i64* %5238, align 8
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5233, i64* %5242, align 8
  store %struct.Memory* %loadMem1_42e8c7, %struct.Memory** %MEMORY
  %loadMem2_42e8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e8c7 = load i64, i64* %3
  %call2_42e8c7 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_42e8c7, %struct.Memory* %loadMem2_42e8c7)
  store %struct.Memory* %call2_42e8c7, %struct.Memory** %MEMORY
  br label %block_.L_42e8cc

block_.L_42e8cc:                                  ; preds = %block_.L_42e8a4, %block_42e82c, %block_.L_42e81d
  %loadMem_42e8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 33
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 1
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %5248 to i64*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 15
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %5251 to i64*
  %5252 = load i64, i64* %RBP.i92
  %5253 = sub i64 %5252, 8
  %5254 = load i64, i64* %PC.i90
  %5255 = add i64 %5254, 4
  store i64 %5255, i64* %PC.i90
  %5256 = inttoptr i64 %5253 to i64*
  %5257 = load i64, i64* %5256
  store i64 %5257, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_42e8cc, %struct.Memory** %MEMORY
  %loadMem_42e8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 33
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 1
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %5263 to i64*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 5
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %5266 to i64*
  %5267 = load i64, i64* %RAX.i88
  %5268 = add i64 %5267, 32
  %5269 = load i64, i64* %PC.i87
  %5270 = add i64 %5269, 3
  store i64 %5270, i64* %PC.i87
  %5271 = inttoptr i64 %5268 to i32*
  %5272 = load i32, i32* %5271
  %5273 = zext i32 %5272 to i64
  store i64 %5273, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_42e8d0, %struct.Memory** %MEMORY
  %loadMem_42e8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 33
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 5
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %RCX.i
  %5281 = load i64, i64* %PC.i86
  %5282 = add i64 %5281, 3
  store i64 %5282, i64* %PC.i86
  %5283 = and i64 1, %5280
  %5284 = trunc i64 %5283 to i32
  store i64 %5283, i64* %RCX.i, align 8
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5285, align 1
  %5286 = and i32 %5284, 255
  %5287 = call i32 @llvm.ctpop.i32(i32 %5286)
  %5288 = trunc i32 %5287 to i8
  %5289 = and i8 %5288, 1
  %5290 = xor i8 %5289, 1
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5290, i8* %5291, align 1
  %5292 = icmp eq i32 %5284, 0
  %5293 = zext i1 %5292 to i8
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5293, i8* %5294, align 1
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5295, align 1
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5296, align 1
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5297, align 1
  store %struct.Memory* %loadMem_42e8d3, %struct.Memory** %MEMORY
  %loadMem_42e8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 33
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5300 to i64*
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 5
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5303 to i32*
  %5304 = load i32, i32* %ECX.i
  %5305 = zext i32 %5304 to i64
  %5306 = load i64, i64* %PC.i85
  %5307 = add i64 %5306, 3
  store i64 %5307, i64* %PC.i85
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5308, align 1
  %5309 = and i32 %5304, 255
  %5310 = call i32 @llvm.ctpop.i32(i32 %5309)
  %5311 = trunc i32 %5310 to i8
  %5312 = and i8 %5311, 1
  %5313 = xor i8 %5312, 1
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5313, i8* %5314, align 1
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5315, align 1
  %5316 = icmp eq i32 %5304, 0
  %5317 = zext i1 %5316 to i8
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5317, i8* %5318, align 1
  %5319 = lshr i32 %5304, 31
  %5320 = trunc i32 %5319 to i8
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5320, i8* %5321, align 1
  %5322 = lshr i32 %5304, 31
  %5323 = xor i32 %5319, %5322
  %5324 = add i32 %5323, %5322
  %5325 = icmp eq i32 %5324, 2
  %5326 = zext i1 %5325 to i8
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5326, i8* %5327, align 1
  store %struct.Memory* %loadMem_42e8d6, %struct.Memory** %MEMORY
  %loadMem_42e8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5330 to i64*
  %5331 = load i64, i64* %PC.i84
  %5332 = add i64 %5331, 34
  %5333 = load i64, i64* %PC.i84
  %5334 = add i64 %5333, 6
  %5335 = load i64, i64* %PC.i84
  %5336 = add i64 %5335, 6
  store i64 %5336, i64* %PC.i84
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5338 = load i8, i8* %5337, align 1
  %5339 = icmp eq i8 %5338, 0
  %5340 = zext i1 %5339 to i8
  store i8 %5340, i8* %BRANCH_TAKEN, align 1
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5342 = select i1 %5339, i64 %5332, i64 %5334
  store i64 %5342, i64* %5341, align 8
  store %struct.Memory* %loadMem_42e8d9, %struct.Memory** %MEMORY
  %loadBr_42e8d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e8d9 = icmp eq i8 %loadBr_42e8d9, 1
  br i1 %cmpBr_42e8d9, label %block_.L_42e8fb, label %block_42e8df

block_42e8df:                                     ; preds = %block_.L_42e8cc
  %loadMem_42e8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 33
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5346, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5347 to %"class.std::bitset"*
  %5348 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5349 = load i64, i64* %PC.i83
  %5350 = add i64 %5349, ptrtoint (%G_0x25e41__rip__type* @G_0x25e41__rip_ to i64)
  %5351 = load i64, i64* %PC.i83
  %5352 = add i64 %5351, 8
  store i64 %5352, i64* %PC.i83
  %5353 = inttoptr i64 %5350 to float*
  %5354 = load float, float* %5353
  %5355 = bitcast i8* %5348 to float*
  store float %5354, float* %5355, align 1
  %5356 = getelementptr inbounds i8, i8* %5348, i64 4
  %5357 = bitcast i8* %5356 to float*
  store float 0.000000e+00, float* %5357, align 1
  %5358 = getelementptr inbounds i8, i8* %5348, i64 8
  %5359 = bitcast i8* %5358 to float*
  store float 0.000000e+00, float* %5359, align 1
  %5360 = getelementptr inbounds i8, i8* %5348, i64 12
  %5361 = bitcast i8* %5360 to float*
  store float 0.000000e+00, float* %5361, align 1
  store %struct.Memory* %loadMem_42e8df, %struct.Memory** %MEMORY
  %loadMem_42e8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 33
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 1
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 15
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %5370 to i64*
  %5371 = load i64, i64* %RBP.i82
  %5372 = sub i64 %5371, 8
  %5373 = load i64, i64* %PC.i80
  %5374 = add i64 %5373, 4
  store i64 %5374, i64* %PC.i80
  %5375 = inttoptr i64 %5372 to i64*
  %5376 = load i64, i64* %5375
  store i64 %5376, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_42e8e7, %struct.Memory** %MEMORY
  %loadMem_42e8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 33
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5379 to i64*
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 1
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %5382 to i64*
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 11
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %RDI.i79 = bitcast %union.anon* %5385 to i64*
  %5386 = load i64, i64* %RAX.i78
  %5387 = add i64 %5386, 16
  %5388 = load i64, i64* %PC.i77
  %5389 = add i64 %5388, 4
  store i64 %5389, i64* %PC.i77
  %5390 = inttoptr i64 %5387 to i64*
  %5391 = load i64, i64* %5390
  store i64 %5391, i64* %RDI.i79, align 8
  store %struct.Memory* %loadMem_42e8eb, %struct.Memory** %MEMORY
  %loadMem_42e8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 1
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 15
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %5400 to i64*
  %5401 = load i64, i64* %RBP.i76
  %5402 = sub i64 %5401, 8
  %5403 = load i64, i64* %PC.i74
  %5404 = add i64 %5403, 4
  store i64 %5404, i64* %PC.i74
  %5405 = inttoptr i64 %5402 to i64*
  %5406 = load i64, i64* %5405
  store i64 %5406, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_42e8ef, %struct.Memory** %MEMORY
  %loadMem_42e8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 1
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %5412 to i64*
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5414 = getelementptr inbounds %struct.GPR, %struct.GPR* %5413, i32 0, i32 9
  %5415 = getelementptr inbounds %struct.Reg, %struct.Reg* %5414, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5415 to i64*
  %5416 = load i64, i64* %RAX.i73
  %5417 = add i64 %5416, 28
  %5418 = load i64, i64* %PC.i72
  %5419 = add i64 %5418, 3
  store i64 %5419, i64* %PC.i72
  %5420 = inttoptr i64 %5417 to i32*
  %5421 = load i32, i32* %5420
  %5422 = zext i32 %5421 to i64
  store i64 %5422, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42e8f3, %struct.Memory** %MEMORY
  %loadMem1_42e8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5425 to i64*
  %5426 = load i64, i64* %PC.i71
  %5427 = add i64 %5426, 144970
  %5428 = load i64, i64* %PC.i71
  %5429 = add i64 %5428, 5
  %5430 = load i64, i64* %PC.i71
  %5431 = add i64 %5430, 5
  store i64 %5431, i64* %PC.i71
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5433 = load i64, i64* %5432, align 8
  %5434 = add i64 %5433, -8
  %5435 = inttoptr i64 %5434 to i64*
  store i64 %5429, i64* %5435
  store i64 %5434, i64* %5432, align 8
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5427, i64* %5436, align 8
  store %struct.Memory* %loadMem1_42e8f6, %struct.Memory** %MEMORY
  %loadMem2_42e8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e8f6 = load i64, i64* %3
  %call2_42e8f6 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %loadPC_42e8f6, %struct.Memory* %loadMem2_42e8f6)
  store %struct.Memory* %call2_42e8f6, %struct.Memory** %MEMORY
  br label %block_.L_42e8fb

block_.L_42e8fb:                                  ; preds = %block_42e8df, %block_.L_42e8cc
  %loadMem_42e8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 1
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %5442 to i64*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 15
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5445 to i64*
  %5446 = load i64, i64* %RBP.i70
  %5447 = sub i64 %5446, 8
  %5448 = load i64, i64* %PC.i68
  %5449 = add i64 %5448, 4
  store i64 %5449, i64* %PC.i68
  %5450 = inttoptr i64 %5447 to i64*
  %5451 = load i64, i64* %5450
  store i64 %5451, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_42e8fb, %struct.Memory** %MEMORY
  %loadMem_42e8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 1
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %5457 to i64*
  %5458 = load i64, i64* %RAX.i67
  %5459 = add i64 %5458, 328
  %5460 = load i64, i64* %PC.i66
  %5461 = add i64 %5460, 8
  store i64 %5461, i64* %PC.i66
  %5462 = inttoptr i64 %5459 to i64*
  %5463 = load i64, i64* %5462
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5464, align 1
  %5465 = trunc i64 %5463 to i32
  %5466 = and i32 %5465, 255
  %5467 = call i32 @llvm.ctpop.i32(i32 %5466)
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = xor i8 %5469, 1
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5470, i8* %5471, align 1
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5472, align 1
  %5473 = icmp eq i64 %5463, 0
  %5474 = zext i1 %5473 to i8
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5474, i8* %5475, align 1
  %5476 = lshr i64 %5463, 63
  %5477 = trunc i64 %5476 to i8
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5477, i8* %5478, align 1
  %5479 = lshr i64 %5463, 63
  %5480 = xor i64 %5476, %5479
  %5481 = add i64 %5480, %5479
  %5482 = icmp eq i64 %5481, 2
  %5483 = zext i1 %5482 to i8
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5483, i8* %5484, align 1
  store %struct.Memory* %loadMem_42e8ff, %struct.Memory** %MEMORY
  %loadMem_42e907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %PC.i65
  %5489 = add i64 %5488, 40
  %5490 = load i64, i64* %PC.i65
  %5491 = add i64 %5490, 6
  %5492 = load i64, i64* %PC.i65
  %5493 = add i64 %5492, 6
  store i64 %5493, i64* %PC.i65
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5495 = load i8, i8* %5494, align 1
  store i8 %5495, i8* %BRANCH_TAKEN, align 1
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5497 = icmp ne i8 %5495, 0
  %5498 = select i1 %5497, i64 %5489, i64 %5491
  store i64 %5498, i64* %5496, align 8
  store %struct.Memory* %loadMem_42e907, %struct.Memory** %MEMORY
  %loadBr_42e907 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e907 = icmp eq i8 %loadBr_42e907, 1
  br i1 %cmpBr_42e907, label %block_.L_42e92f, label %block_42e90d

block_42e90d:                                     ; preds = %block_.L_42e8fb
  %loadMem_42e90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 1
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 15
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %RBP.i64
  %5509 = sub i64 %5508, 8
  %5510 = load i64, i64* %PC.i62
  %5511 = add i64 %5510, 4
  store i64 %5511, i64* %PC.i62
  %5512 = inttoptr i64 %5509 to i64*
  %5513 = load i64, i64* %5512
  store i64 %5513, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_42e90d, %struct.Memory** %MEMORY
  %loadMem_42e911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 1
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %5519 to i64*
  %5520 = load i64, i64* %RAX.i61
  %5521 = add i64 %5520, 328
  %5522 = load i64, i64* %PC.i60
  %5523 = add i64 %5522, 7
  store i64 %5523, i64* %PC.i60
  %5524 = inttoptr i64 %5521 to i64*
  %5525 = load i64, i64* %5524
  store i64 %5525, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_42e911, %struct.Memory** %MEMORY
  %loadMem_42e918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 33
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5528 to i64*
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 1
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5531 to i64*
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 11
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %RDI.i59 = bitcast %union.anon* %5534 to i64*
  %5535 = load i64, i64* %RAX.i58
  %5536 = load i64, i64* %PC.i57
  %5537 = add i64 %5536, 3
  store i64 %5537, i64* %PC.i57
  store i64 %5535, i64* %RDI.i59, align 8
  store %struct.Memory* %loadMem_42e918, %struct.Memory** %MEMORY
  %loadMem1_42e91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 33
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5540 to i64*
  %5541 = load i64, i64* %PC.i56
  %5542 = add i64 %5541, -185755
  %5543 = load i64, i64* %PC.i56
  %5544 = add i64 %5543, 5
  %5545 = load i64, i64* %PC.i56
  %5546 = add i64 %5545, 5
  store i64 %5546, i64* %PC.i56
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5548 = load i64, i64* %5547, align 8
  %5549 = add i64 %5548, -8
  %5550 = inttoptr i64 %5549 to i64*
  store i64 %5544, i64* %5550
  store i64 %5549, i64* %5547, align 8
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5542, i64* %5551, align 8
  store %struct.Memory* %loadMem1_42e91b, %struct.Memory** %MEMORY
  %loadMem2_42e91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e91b = load i64, i64* %3
  %5552 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_42e91b)
  store %struct.Memory* %5552, %struct.Memory** %MEMORY
  %loadMem_42e920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 33
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5555 to i64*
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 1
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 15
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %5561 to i64*
  %5562 = load i64, i64* %RBP.i52
  %5563 = sub i64 %5562, 8
  %5564 = load i64, i64* %PC.i50
  %5565 = add i64 %5564, 4
  store i64 %5565, i64* %PC.i50
  %5566 = inttoptr i64 %5563 to i64*
  %5567 = load i64, i64* %5566
  store i64 %5567, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_42e920, %struct.Memory** %MEMORY
  %loadMem_42e924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 33
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 1
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RAX.i49
  %5575 = add i64 %5574, 328
  %5576 = load i64, i64* %PC.i48
  %5577 = add i64 %5576, 11
  store i64 %5577, i64* %PC.i48
  %5578 = inttoptr i64 %5575 to i64*
  store i64 0, i64* %5578
  store %struct.Memory* %loadMem_42e924, %struct.Memory** %MEMORY
  br label %block_.L_42e92f

block_.L_42e92f:                                  ; preds = %block_42e90d, %block_.L_42e8fb
  %loadMem_42e92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 33
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 1
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 15
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %RBP.i47
  %5589 = sub i64 %5588, 8
  %5590 = load i64, i64* %PC.i45
  %5591 = add i64 %5590, 4
  store i64 %5591, i64* %PC.i45
  %5592 = inttoptr i64 %5589 to i64*
  %5593 = load i64, i64* %5592
  store i64 %5593, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_42e92f, %struct.Memory** %MEMORY
  %loadMem_42e933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 33
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 1
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %5599 to i64*
  %5600 = load i64, i64* %RAX.i44
  %5601 = add i64 %5600, 336
  %5602 = load i64, i64* %PC.i43
  %5603 = add i64 %5602, 8
  store i64 %5603, i64* %PC.i43
  %5604 = inttoptr i64 %5601 to i64*
  %5605 = load i64, i64* %5604
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5606, align 1
  %5607 = trunc i64 %5605 to i32
  %5608 = and i32 %5607, 255
  %5609 = call i32 @llvm.ctpop.i32(i32 %5608)
  %5610 = trunc i32 %5609 to i8
  %5611 = and i8 %5610, 1
  %5612 = xor i8 %5611, 1
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5612, i8* %5613, align 1
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5614, align 1
  %5615 = icmp eq i64 %5605, 0
  %5616 = zext i1 %5615 to i8
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5616, i8* %5617, align 1
  %5618 = lshr i64 %5605, 63
  %5619 = trunc i64 %5618 to i8
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5619, i8* %5620, align 1
  %5621 = lshr i64 %5605, 63
  %5622 = xor i64 %5618, %5621
  %5623 = add i64 %5622, %5621
  %5624 = icmp eq i64 %5623, 2
  %5625 = zext i1 %5624 to i8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5625, i8* %5626, align 1
  store %struct.Memory* %loadMem_42e933, %struct.Memory** %MEMORY
  %loadMem_42e93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5629 to i64*
  %5630 = load i64, i64* %PC.i42
  %5631 = add i64 %5630, 40
  %5632 = load i64, i64* %PC.i42
  %5633 = add i64 %5632, 6
  %5634 = load i64, i64* %PC.i42
  %5635 = add i64 %5634, 6
  store i64 %5635, i64* %PC.i42
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5637 = load i8, i8* %5636, align 1
  store i8 %5637, i8* %BRANCH_TAKEN, align 1
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5639 = icmp ne i8 %5637, 0
  %5640 = select i1 %5639, i64 %5631, i64 %5633
  store i64 %5640, i64* %5638, align 8
  store %struct.Memory* %loadMem_42e93b, %struct.Memory** %MEMORY
  %loadBr_42e93b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e93b = icmp eq i8 %loadBr_42e93b, 1
  br i1 %cmpBr_42e93b, label %block_.L_42e963, label %block_42e941

block_42e941:                                     ; preds = %block_.L_42e92f
  %loadMem_42e941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 33
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5643 to i64*
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 1
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5646 to i64*
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 15
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %5649 to i64*
  %5650 = load i64, i64* %RBP.i41
  %5651 = sub i64 %5650, 8
  %5652 = load i64, i64* %PC.i39
  %5653 = add i64 %5652, 4
  store i64 %5653, i64* %PC.i39
  %5654 = inttoptr i64 %5651 to i64*
  %5655 = load i64, i64* %5654
  store i64 %5655, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_42e941, %struct.Memory** %MEMORY
  %loadMem_42e945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 1
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5661 to i64*
  %5662 = load i64, i64* %RAX.i38
  %5663 = add i64 %5662, 336
  %5664 = load i64, i64* %PC.i37
  %5665 = add i64 %5664, 7
  store i64 %5665, i64* %PC.i37
  %5666 = inttoptr i64 %5663 to i64*
  %5667 = load i64, i64* %5666
  store i64 %5667, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_42e945, %struct.Memory** %MEMORY
  %loadMem_42e94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 1
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 11
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %RAX.i35
  %5678 = load i64, i64* %PC.i34
  %5679 = add i64 %5678, 3
  store i64 %5679, i64* %PC.i34
  store i64 %5677, i64* %RDI.i36, align 8
  store %struct.Memory* %loadMem_42e94c, %struct.Memory** %MEMORY
  %loadMem1_42e94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 33
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5682 to i64*
  %5683 = load i64, i64* %PC.i33
  %5684 = add i64 %5683, -185807
  %5685 = load i64, i64* %PC.i33
  %5686 = add i64 %5685, 5
  %5687 = load i64, i64* %PC.i33
  %5688 = add i64 %5687, 5
  store i64 %5688, i64* %PC.i33
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5690 = load i64, i64* %5689, align 8
  %5691 = add i64 %5690, -8
  %5692 = inttoptr i64 %5691 to i64*
  store i64 %5686, i64* %5692
  store i64 %5691, i64* %5689, align 8
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5684, i64* %5693, align 8
  store %struct.Memory* %loadMem1_42e94f, %struct.Memory** %MEMORY
  %loadMem2_42e94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e94f = load i64, i64* %3
  %5694 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_42e94f)
  store %struct.Memory* %5694, %struct.Memory** %MEMORY
  %loadMem_42e954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 33
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5697 to i64*
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 1
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 15
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %5703 to i64*
  %5704 = load i64, i64* %RBP.i30
  %5705 = sub i64 %5704, 8
  %5706 = load i64, i64* %PC.i28
  %5707 = add i64 %5706, 4
  store i64 %5707, i64* %PC.i28
  %5708 = inttoptr i64 %5705 to i64*
  %5709 = load i64, i64* %5708
  store i64 %5709, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_42e954, %struct.Memory** %MEMORY
  %loadMem_42e958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 33
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5712 to i64*
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 1
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %5715 to i64*
  %5716 = load i64, i64* %RAX.i27
  %5717 = add i64 %5716, 336
  %5718 = load i64, i64* %PC.i26
  %5719 = add i64 %5718, 11
  store i64 %5719, i64* %PC.i26
  %5720 = inttoptr i64 %5717 to i64*
  store i64 0, i64* %5720
  store %struct.Memory* %loadMem_42e958, %struct.Memory** %MEMORY
  br label %block_.L_42e963

block_.L_42e963:                                  ; preds = %block_42e941, %block_.L_42e92f
  %loadMem_42e963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 33
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5723 to i64*
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 1
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %5726 to i64*
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 15
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5729 to i64*
  %5730 = load i64, i64* %RBP.i25
  %5731 = sub i64 %5730, 8
  %5732 = load i64, i64* %PC.i23
  %5733 = add i64 %5732, 4
  store i64 %5733, i64* %PC.i23
  %5734 = inttoptr i64 %5731 to i64*
  %5735 = load i64, i64* %5734
  store i64 %5735, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_42e963, %struct.Memory** %MEMORY
  %loadMem_42e967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 1
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RAX.i22
  %5743 = add i64 %5742, 344
  %5744 = load i64, i64* %PC.i21
  %5745 = add i64 %5744, 8
  store i64 %5745, i64* %PC.i21
  %5746 = inttoptr i64 %5743 to i64*
  %5747 = load i64, i64* %5746
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5748, align 1
  %5749 = trunc i64 %5747 to i32
  %5750 = and i32 %5749, 255
  %5751 = call i32 @llvm.ctpop.i32(i32 %5750)
  %5752 = trunc i32 %5751 to i8
  %5753 = and i8 %5752, 1
  %5754 = xor i8 %5753, 1
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5754, i8* %5755, align 1
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5756, align 1
  %5757 = icmp eq i64 %5747, 0
  %5758 = zext i1 %5757 to i8
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5758, i8* %5759, align 1
  %5760 = lshr i64 %5747, 63
  %5761 = trunc i64 %5760 to i8
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5761, i8* %5762, align 1
  %5763 = lshr i64 %5747, 63
  %5764 = xor i64 %5760, %5763
  %5765 = add i64 %5764, %5763
  %5766 = icmp eq i64 %5765, 2
  %5767 = zext i1 %5766 to i8
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5767, i8* %5768, align 1
  store %struct.Memory* %loadMem_42e967, %struct.Memory** %MEMORY
  %loadMem_42e96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 33
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5771 to i64*
  %5772 = load i64, i64* %PC.i20
  %5773 = add i64 %5772, 40
  %5774 = load i64, i64* %PC.i20
  %5775 = add i64 %5774, 6
  %5776 = load i64, i64* %PC.i20
  %5777 = add i64 %5776, 6
  store i64 %5777, i64* %PC.i20
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5779 = load i8, i8* %5778, align 1
  store i8 %5779, i8* %BRANCH_TAKEN, align 1
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5781 = icmp ne i8 %5779, 0
  %5782 = select i1 %5781, i64 %5773, i64 %5775
  store i64 %5782, i64* %5780, align 8
  store %struct.Memory* %loadMem_42e96f, %struct.Memory** %MEMORY
  %loadBr_42e96f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e96f = icmp eq i8 %loadBr_42e96f, 1
  br i1 %cmpBr_42e96f, label %block_.L_42e997, label %block_42e975

block_42e975:                                     ; preds = %block_.L_42e963
  %loadMem_42e975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 1
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 15
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %5791 to i64*
  %5792 = load i64, i64* %RBP.i19
  %5793 = sub i64 %5792, 8
  %5794 = load i64, i64* %PC.i17
  %5795 = add i64 %5794, 4
  store i64 %5795, i64* %PC.i17
  %5796 = inttoptr i64 %5793 to i64*
  %5797 = load i64, i64* %5796
  store i64 %5797, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_42e975, %struct.Memory** %MEMORY
  %loadMem_42e979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5799 = getelementptr inbounds %struct.GPR, %struct.GPR* %5798, i32 0, i32 33
  %5800 = getelementptr inbounds %struct.Reg, %struct.Reg* %5799, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5800 to i64*
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 1
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %5803 to i64*
  %5804 = load i64, i64* %RAX.i16
  %5805 = add i64 %5804, 344
  %5806 = load i64, i64* %PC.i15
  %5807 = add i64 %5806, 7
  store i64 %5807, i64* %PC.i15
  %5808 = inttoptr i64 %5805 to i64*
  %5809 = load i64, i64* %5808
  store i64 %5809, i64* %RAX.i16, align 8
  store %struct.Memory* %loadMem_42e979, %struct.Memory** %MEMORY
  %loadMem_42e980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 33
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5812 to i64*
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 1
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %5815 to i64*
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 11
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5818 to i64*
  %5819 = load i64, i64* %RAX.i14
  %5820 = load i64, i64* %PC.i13
  %5821 = add i64 %5820, 3
  store i64 %5821, i64* %PC.i13
  store i64 %5819, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42e980, %struct.Memory** %MEMORY
  %loadMem1_42e983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5824 to i64*
  %5825 = load i64, i64* %PC.i12
  %5826 = add i64 %5825, -185859
  %5827 = load i64, i64* %PC.i12
  %5828 = add i64 %5827, 5
  %5829 = load i64, i64* %PC.i12
  %5830 = add i64 %5829, 5
  store i64 %5830, i64* %PC.i12
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5832 = load i64, i64* %5831, align 8
  %5833 = add i64 %5832, -8
  %5834 = inttoptr i64 %5833 to i64*
  store i64 %5828, i64* %5834
  store i64 %5833, i64* %5831, align 8
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5826, i64* %5835, align 8
  store %struct.Memory* %loadMem1_42e983, %struct.Memory** %MEMORY
  %loadMem2_42e983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e983 = load i64, i64* %3
  %5836 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_42e983)
  store %struct.Memory* %5836, %struct.Memory** %MEMORY
  %loadMem_42e988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 33
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5839 to i64*
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 1
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 15
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %RBP.i8
  %5847 = sub i64 %5846, 8
  %5848 = load i64, i64* %PC.i6
  %5849 = add i64 %5848, 4
  store i64 %5849, i64* %PC.i6
  %5850 = inttoptr i64 %5847 to i64*
  %5851 = load i64, i64* %5850
  store i64 %5851, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_42e988, %struct.Memory** %MEMORY
  %loadMem_42e98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 33
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5854 to i64*
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 1
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5857 to i64*
  %5858 = load i64, i64* %RAX.i
  %5859 = add i64 %5858, 344
  %5860 = load i64, i64* %PC.i5
  %5861 = add i64 %5860, 11
  store i64 %5861, i64* %PC.i5
  %5862 = inttoptr i64 %5859 to i64*
  store i64 0, i64* %5862
  store %struct.Memory* %loadMem_42e98c, %struct.Memory** %MEMORY
  br label %block_.L_42e997

block_.L_42e997:                                  ; preds = %block_42e975, %block_.L_42e963
  %loadMem_42e997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 33
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5865 to i64*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 13
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5868 to i64*
  %5869 = load i64, i64* %RSP.i
  %5870 = load i64, i64* %PC.i4
  %5871 = add i64 %5870, 7
  store i64 %5871, i64* %PC.i4
  %5872 = add i64 208, %5869
  store i64 %5872, i64* %RSP.i, align 8
  %5873 = icmp ult i64 %5872, %5869
  %5874 = icmp ult i64 %5872, 208
  %5875 = or i1 %5873, %5874
  %5876 = zext i1 %5875 to i8
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5876, i8* %5877, align 1
  %5878 = trunc i64 %5872 to i32
  %5879 = and i32 %5878, 255
  %5880 = call i32 @llvm.ctpop.i32(i32 %5879)
  %5881 = trunc i32 %5880 to i8
  %5882 = and i8 %5881, 1
  %5883 = xor i8 %5882, 1
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5883, i8* %5884, align 1
  %5885 = xor i64 208, %5869
  %5886 = xor i64 %5885, %5872
  %5887 = lshr i64 %5886, 4
  %5888 = trunc i64 %5887 to i8
  %5889 = and i8 %5888, 1
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5889, i8* %5890, align 1
  %5891 = icmp eq i64 %5872, 0
  %5892 = zext i1 %5891 to i8
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5892, i8* %5893, align 1
  %5894 = lshr i64 %5872, 63
  %5895 = trunc i64 %5894 to i8
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5895, i8* %5896, align 1
  %5897 = lshr i64 %5869, 63
  %5898 = xor i64 %5894, %5897
  %5899 = add i64 %5898, %5894
  %5900 = icmp eq i64 %5899, 2
  %5901 = zext i1 %5900 to i8
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5901, i8* %5902, align 1
  store %struct.Memory* %loadMem_42e997, %struct.Memory** %MEMORY
  %loadMem_42e99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 33
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5905 to i64*
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 15
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5908 to i64*
  %5909 = load i64, i64* %PC.i2
  %5910 = add i64 %5909, 1
  store i64 %5910, i64* %PC.i2
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5912 = load i64, i64* %5911, align 8
  %5913 = add i64 %5912, 8
  %5914 = inttoptr i64 %5912 to i64*
  %5915 = load i64, i64* %5914
  store i64 %5915, i64* %RBP.i3, align 8
  store i64 %5913, i64* %5911, align 8
  store %struct.Memory* %loadMem_42e99e, %struct.Memory** %MEMORY
  %loadMem_42e99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 33
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %PC.i1
  %5920 = add i64 %5919, 1
  store i64 %5920, i64* %PC.i1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5923 = load i64, i64* %5922, align 8
  %5924 = inttoptr i64 %5923 to i64*
  %5925 = load i64, i64* %5924
  store i64 %5925, i64* %5921, align 8
  %5926 = add i64 %5923, 8
  store i64 %5926, i64* %5922, align 8
  store %struct.Memory* %loadMem_42e99f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42e99f
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

define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 208
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 208
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
  %23 = xor i64 208, %9
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x1c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
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

define %struct.Memory* @routine_jne_.L_42e328(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
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

define %struct.Memory* @routine_je_.L_42e2fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e310(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__0x4588f1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4588f1_type* @G__0x4588f1 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.Die(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_42e6bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = trunc i64 %19 to i32
  %22 = and i32 %21, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i64 %19, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %19, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %19, 63
  %36 = xor i64 %32, %35
  %37 = add i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42e3cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e39d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42e3b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x458927___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458927_type* @G__0x458927 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_je_.L_42e46b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x26449__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x26449__rip__type* @G_0x26449__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = fpext float %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jne_.L_42e46b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_42e46b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e43c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e44f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458957___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458957_type* @G__0x458957 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x18__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 24
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

define %struct.Memory* @routine_je_.L_42e512(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_je_.L_42e4dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e4f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4589a2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4589a2_type* @G__0x4589a2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
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

define %struct.Memory* @routine_je_.L_42e5df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e5aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e5bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4589e3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4589e3_type* @G__0x4589e3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
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

define %struct.Memory* @routine_je_.L_42e6ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e677(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42e68a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458a32___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458a32_type* @G__0x458a32 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e6b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42e343(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42e76e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_0x18__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__rdi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movl_0x18__rdi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x28__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
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

define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e730(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e746(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458a81___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458a81_type* @G__0x458a81 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 80
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

define %struct.Memory* @routine_je_.L_42e81d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e7df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e7f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458ace___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458ace_type* @G__0x458ace to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
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

define %struct.Memory* @routine_je_.L_42e8cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x58__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42e88e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42e8a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458b1b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458b1b_type* @G__0x458b1b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42e8fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x25e41__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x25e41__rip__type* @G_0x25e41__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FSet(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0__0x148__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_42e92f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x0__0x148__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x150__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_42e963(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x0__0x150__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x158__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_42e997(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x0__0x158__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 208, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 208
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
  %25 = xor i64 208, %9
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
