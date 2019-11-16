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
%G_0x5dda1__rip__type = type <{ [4 x i8] }>
%G_0x5ddd6__rip__type = type <{ [4 x i8] }>
%G_0x5de3f__rip__type = type <{ [4 x i8] }>
%G_0x5de71__rip__type = type <{ [4 x i8] }>
%G_0x5df47__rip__type = type <{ [4 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x5dda1__rip_ = global %G_0x5dda1__rip__type zeroinitializer
@G_0x5ddd6__rip_ = global %G_0x5ddd6__rip__type zeroinitializer
@G_0x5de3f__rip_ = global %G_0x5de3f__rip__type zeroinitializer
@G_0x5de71__rip_ = global %G_0x5de71__rip__type zeroinitializer
@G_0x5df47__rip_ = global %G_0x5df47__rip__type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

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

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_477550.does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @adjusted_worm_attack_value(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4851d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4851d0, %struct.Memory** %MEMORY
  %loadMem_4851d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i23 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i23
  %27 = load i64, i64* %PC.i22
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i22
  store i64 %26, i64* %RBP.i24, align 8
  store %struct.Memory* %loadMem_4851d1, %struct.Memory** %MEMORY
  %loadMem_4851d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i82 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i82
  %36 = load i64, i64* %PC.i81
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i81
  %38 = sub i64 %35, 688
  store i64 %38, i64* %RSP.i82, align 8
  %39 = icmp ult i64 %35, 688
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
  %49 = xor i64 688, %35
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
  store %struct.Memory* %loadMem_4851d4, %struct.Memory** %MEMORY
  %loadMem_4851db = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i143
  %77 = sub i64 %76, 656
  %78 = load i64, i64* %PC.i141
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC.i141
  store i64 %77, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_4851db, %struct.Memory** %MEMORY
  %loadMem_4851e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %84 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %83, i64 0, i64 0
  %YMM0.i245 = bitcast %union.VectorReg* %84 to %"class.std::bitset"*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %86 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %85, i64 0, i64 0
  %XMM0.i246 = bitcast %union.VectorReg* %86 to %union.vec128_t*
  %87 = bitcast %"class.std::bitset"* %YMM0.i245 to i8*
  %88 = bitcast %"class.std::bitset"* %YMM0.i245 to i8*
  %89 = bitcast %union.vec128_t* %XMM0.i246 to i8*
  %90 = load i64, i64* %PC.i244
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC.i244
  %92 = bitcast i8* %88 to i64*
  %93 = load i64, i64* %92, align 1
  %94 = getelementptr inbounds i8, i8* %88, i64 8
  %95 = bitcast i8* %94 to i64*
  %96 = load i64, i64* %95, align 1
  %97 = bitcast i8* %89 to i64*
  %98 = load i64, i64* %97, align 1
  %99 = getelementptr inbounds i8, i8* %89, i64 8
  %100 = bitcast i8* %99 to i64*
  %101 = load i64, i64* %100, align 1
  %102 = xor i64 %98, %93
  %103 = xor i64 %101, %96
  %104 = trunc i64 %102 to i32
  %105 = lshr i64 %102, 32
  %106 = trunc i64 %105 to i32
  %107 = bitcast i8* %87 to i32*
  store i32 %104, i32* %107, align 1
  %108 = getelementptr inbounds i8, i8* %87, i64 4
  %109 = bitcast i8* %108 to i32*
  store i32 %106, i32* %109, align 1
  %110 = trunc i64 %103 to i32
  %111 = getelementptr inbounds i8, i8* %87, i64 8
  %112 = bitcast i8* %111 to i32*
  store i32 %110, i32* %112, align 1
  %113 = lshr i64 %103, 32
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds i8, i8* %87, i64 12
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 1
  store %struct.Memory* %loadMem_4851e2, %struct.Memory** %MEMORY
  %loadMem_4851e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %120, i64 0, i64 1
  %YMM1.i243 = bitcast %union.VectorReg* %121 to %"class.std::bitset"*
  %122 = bitcast %"class.std::bitset"* %YMM1.i243 to i8*
  %123 = load i64, i64* %PC.i242
  %124 = add i64 %123, ptrtoint (%G_0x5df47__rip__type* @G_0x5df47__rip_ to i64)
  %125 = load i64, i64* %PC.i242
  %126 = add i64 %125, 8
  store i64 %126, i64* %PC.i242
  %127 = inttoptr i64 %124 to float*
  %128 = load float, float* %127
  %129 = bitcast i8* %122 to float*
  store float %128, float* %129, align 1
  %130 = getelementptr inbounds i8, i8* %122, i64 4
  %131 = bitcast i8* %130 to float*
  store float 0.000000e+00, float* %131, align 1
  %132 = getelementptr inbounds i8, i8* %122, i64 8
  %133 = bitcast i8* %132 to float*
  store float 0.000000e+00, float* %133, align 1
  %134 = getelementptr inbounds i8, i8* %122, i64 12
  %135 = bitcast i8* %134 to float*
  store float 0.000000e+00, float* %135, align 1
  store %struct.Memory* %loadMem_4851e5, %struct.Memory** %MEMORY
  %loadMem_4851ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %PC.i240
  %143 = add i64 %142, 10
  store i64 %143, i64* %PC.i240
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_4851ed, %struct.Memory** %MEMORY
  %loadMem_4851f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 11
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i239
  %154 = sub i64 %153, 8
  %155 = load i32, i32* %EDI.i
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %PC.i238
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC.i238
  %159 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %159
  store %struct.Memory* %loadMem_4851f7, %struct.Memory** %MEMORY
  %loadMem_4851fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %165 to i32*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 15
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RBP.i237
  %170 = sub i64 %169, 12
  %171 = load i32, i32* %ESI.i
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %PC.i236
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC.i236
  %175 = inttoptr i64 %170 to i32*
  store i32 %171, i32* %175
  store %struct.Memory* %loadMem_4851fa, %struct.Memory** %MEMORY
  %loadMem_4851fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 15
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RBP.i235
  %183 = sub i64 %182, 660
  %184 = load i64, i64* %PC.i234
  %185 = add i64 %184, 10
  store i64 %185, i64* %PC.i234
  %186 = inttoptr i64 %183 to i32*
  store i32 0, i32* %186
  store %struct.Memory* %loadMem_4851fd, %struct.Memory** %MEMORY
  %loadMem_485207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i233
  %197 = sub i64 %196, 12
  %198 = load i64, i64* %PC.i231
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC.i231
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %RDX.i232, align 8
  store %struct.Memory* %loadMem_485207, %struct.Memory** %MEMORY
  %loadMem_48520b = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 7
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RDX.i230
  %210 = load i64, i64* %PC.i229
  %211 = add i64 %210, 7
  store i64 %211, i64* %PC.i229
  %212 = sext i64 %209 to i128
  %213 = and i128 %212, -18446744073709551616
  %214 = zext i64 %209 to i128
  %215 = or i128 %213, %214
  %216 = mul i128 380, %215
  %217 = trunc i128 %216 to i64
  store i64 %217, i64* %RDX.i230, align 8
  %218 = sext i64 %217 to i128
  %219 = icmp ne i128 %218, %216
  %220 = zext i1 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %220, i8* %221, align 1
  %222 = trunc i128 %216 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %229, align 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %230, align 1
  %231 = lshr i64 %217, 63
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %220, i8* %234, align 1
  store %struct.Memory* %loadMem_48520b, %struct.Memory** %MEMORY
  %loadMem_485212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 7
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RCX.i227
  %245 = load i64, i64* %RDX.i228
  %246 = load i64, i64* %PC.i226
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC.i226
  %248 = add i64 %245, %244
  store i64 %248, i64* %RCX.i227, align 8
  %249 = icmp ult i64 %248, %244
  %250 = icmp ult i64 %248, %245
  %251 = or i1 %249, %250
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %252, i8* %253, align 1
  %254 = trunc i64 %248 to i32
  %255 = and i32 %254, 255
  %256 = call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %259, i8* %260, align 1
  %261 = xor i64 %245, %244
  %262 = xor i64 %261, %248
  %263 = lshr i64 %262, 4
  %264 = trunc i64 %263 to i8
  %265 = and i8 %264, 1
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %265, i8* %266, align 1
  %267 = icmp eq i64 %248, 0
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %268, i8* %269, align 1
  %270 = lshr i64 %248, 63
  %271 = trunc i64 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %271, i8* %272, align 1
  %273 = lshr i64 %244, 63
  %274 = lshr i64 %245, 63
  %275 = xor i64 %270, %273
  %276 = xor i64 %270, %274
  %277 = add i64 %275, %276
  %278 = icmp eq i64 %277, 2
  %279 = zext i1 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %279, i8* %280, align 1
  store %struct.Memory* %loadMem_485212, %struct.Memory** %MEMORY
  %loadMem_485215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %287, i64 0, i64 1
  %YMM1.i225 = bitcast %union.VectorReg* %288 to %"class.std::bitset"*
  %289 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %290 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %291 = load i64, i64* %RCX.i224
  %292 = add i64 %291, 8
  %293 = load i64, i64* %PC.i223
  %294 = add i64 %293, 5
  store i64 %294, i64* %PC.i223
  %295 = bitcast i8* %290 to <2 x float>*
  %296 = load <2 x float>, <2 x float>* %295, align 1
  %297 = getelementptr inbounds i8, i8* %290, i64 8
  %298 = bitcast i8* %297 to <2 x i32>*
  %299 = load <2 x i32>, <2 x i32>* %298, align 1
  %300 = inttoptr i64 %292 to float*
  %301 = load float, float* %300
  %302 = extractelement <2 x float> %296, i32 0
  %303 = fmul float %302, %301
  %304 = bitcast i8* %289 to float*
  store float %303, float* %304, align 1
  %305 = bitcast <2 x float> %296 to <2 x i32>
  %306 = extractelement <2 x i32> %305, i32 1
  %307 = getelementptr inbounds i8, i8* %289, i64 4
  %308 = bitcast i8* %307 to i32*
  store i32 %306, i32* %308, align 1
  %309 = extractelement <2 x i32> %299, i32 0
  %310 = getelementptr inbounds i8, i8* %289, i64 8
  %311 = bitcast i8* %310 to i32*
  store i32 %309, i32* %311, align 1
  %312 = extractelement <2 x i32> %299, i32 1
  %313 = getelementptr inbounds i8, i8* %289, i64 12
  %314 = bitcast i8* %313 to i32*
  store i32 %312, i32* %314, align 1
  store %struct.Memory* %loadMem_485215, %struct.Memory** %MEMORY
  %loadMem_48521a = load %struct.Memory*, %struct.Memory** %MEMORY
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 33
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %321, i64 0, i64 1
  %XMM1.i222 = bitcast %union.VectorReg* %322 to %union.vec128_t*
  %323 = load i64, i64* %RBP.i221
  %324 = sub i64 %323, 664
  %325 = bitcast %union.vec128_t* %XMM1.i222 to i8*
  %326 = load i64, i64* %PC.i220
  %327 = add i64 %326, 8
  store i64 %327, i64* %PC.i220
  %328 = bitcast i8* %325 to <2 x float>*
  %329 = load <2 x float>, <2 x float>* %328, align 1
  %330 = extractelement <2 x float> %329, i32 0
  %331 = inttoptr i64 %324 to float*
  store float %330, float* %331
  store %struct.Memory* %loadMem_48521a, %struct.Memory** %MEMORY
  %loadMem_485222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %338, i64 0, i64 0
  %XMM0.i219 = bitcast %union.VectorReg* %339 to %union.vec128_t*
  %340 = load i64, i64* %RBP.i218
  %341 = sub i64 %340, 668
  %342 = bitcast %union.vec128_t* %XMM0.i219 to i8*
  %343 = load i64, i64* %PC.i217
  %344 = add i64 %343, 8
  store i64 %344, i64* %PC.i217
  %345 = bitcast i8* %342 to <2 x float>*
  %346 = load <2 x float>, <2 x float>* %345, align 1
  %347 = extractelement <2 x float> %346, i32 0
  %348 = inttoptr i64 %341 to float*
  store float %347, float* %348
  store %struct.Memory* %loadMem_485222, %struct.Memory** %MEMORY
  %loadMem_48522a = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 15
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %356 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %355, i64 0, i64 0
  %XMM0.i216 = bitcast %union.VectorReg* %356 to %union.vec128_t*
  %357 = load i64, i64* %RBP.i215
  %358 = sub i64 %357, 672
  %359 = bitcast %union.vec128_t* %XMM0.i216 to i8*
  %360 = load i64, i64* %PC.i214
  %361 = add i64 %360, 8
  store i64 %361, i64* %PC.i214
  %362 = bitcast i8* %359 to <2 x float>*
  %363 = load <2 x float>, <2 x float>* %362, align 1
  %364 = extractelement <2 x float> %363, i32 0
  %365 = inttoptr i64 %358 to float*
  store float %364, float* %365
  store %struct.Memory* %loadMem_48522a, %struct.Memory** %MEMORY
  %loadMem_485232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 11
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i213
  %376 = sub i64 %375, 12
  %377 = load i64, i64* %PC.i211
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC.i211
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_485232, %struct.Memory** %MEMORY
  %loadMem_485235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 9
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RSI.i210 = bitcast %union.anon* %390 to i64*
  %391 = load i64, i64* %RAX.i209
  %392 = load i64, i64* %PC.i208
  %393 = add i64 %392, 3
  store i64 %393, i64* %PC.i208
  store i64 %391, i64* %RSI.i210, align 8
  store %struct.Memory* %loadMem_485235, %struct.Memory** %MEMORY
  %loadMem1_485238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i207
  %398 = add i64 %397, -464696
  %399 = load i64, i64* %PC.i207
  %400 = add i64 %399, 5
  %401 = load i64, i64* %PC.i207
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC.i207
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %400, i64* %406
  store i64 %405, i64* %403, align 8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %398, i64* %407, align 8
  store %struct.Memory* %loadMem1_485238, %struct.Memory** %MEMORY
  %loadMem2_485238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_485238 = load i64, i64* %3
  %call2_485238 = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64 %loadPC_485238, %struct.Memory* %loadMem2_485238)
  store %struct.Memory* %call2_485238, %struct.Memory** %MEMORY
  %loadMem_48523d = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %413 to i32*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 15
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RBP.i206
  %418 = sub i64 %417, 16
  %419 = load i32, i32* %EAX.i205
  %420 = zext i32 %419 to i64
  %421 = load i64, i64* %PC.i204
  %422 = add i64 %421, 3
  store i64 %422, i64* %PC.i204
  %423 = inttoptr i64 %418 to i32*
  store i32 %419, i32* %423
  store %struct.Memory* %loadMem_48523d, %struct.Memory** %MEMORY
  %loadMem_485240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %RBP.i203
  %431 = sub i64 %430, 676
  %432 = load i64, i64* %PC.i202
  %433 = add i64 %432, 10
  store i64 %433, i64* %PC.i202
  %434 = inttoptr i64 %431 to i32*
  store i32 0, i32* %434
  store %struct.Memory* %loadMem_485240, %struct.Memory** %MEMORY
  br label %block_.L_48524a

block_.L_48524a:                                  ; preds = %block_.L_4853c0, %entry
  %loadMem_48524a = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i201
  %445 = sub i64 %444, 676
  %446 = load i64, i64* %PC.i199
  %447 = add i64 %446, 6
  store i64 %447, i64* %PC.i199
  %448 = inttoptr i64 %445 to i32*
  %449 = load i32, i32* %448
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_48524a, %struct.Memory** %MEMORY
  %loadMem_485250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %EAX.i197 = bitcast %union.anon* %456 to i32*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 15
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %459 to i64*
  %460 = load i32, i32* %EAX.i197
  %461 = zext i32 %460 to i64
  %462 = load i64, i64* %RBP.i198
  %463 = sub i64 %462, 16
  %464 = load i64, i64* %PC.i196
  %465 = add i64 %464, 3
  store i64 %465, i64* %PC.i196
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466
  %468 = sub i32 %460, %467
  %469 = icmp ult i32 %460, %467
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %470, i8* %471, align 1
  %472 = and i32 %468, 255
  %473 = call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %476, i8* %477, align 1
  %478 = xor i32 %467, %460
  %479 = xor i32 %478, %468
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1
  %484 = icmp eq i32 %468, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1
  %487 = lshr i32 %468, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1
  %490 = lshr i32 %460, 31
  %491 = lshr i32 %467, 31
  %492 = xor i32 %491, %490
  %493 = xor i32 %487, %490
  %494 = add i32 %493, %492
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %496, i8* %497, align 1
  store %struct.Memory* %loadMem_485250, %struct.Memory** %MEMORY
  %loadMem_485253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %PC.i195
  %502 = add i64 %501, 385
  %503 = load i64, i64* %PC.i195
  %504 = add i64 %503, 6
  %505 = load i64, i64* %PC.i195
  %506 = add i64 %505, 6
  store i64 %506, i64* %PC.i195
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %508 = load i8, i8* %507, align 1
  %509 = icmp ne i8 %508, 0
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %511 = load i8, i8* %510, align 1
  %512 = icmp ne i8 %511, 0
  %513 = xor i1 %509, %512
  %514 = xor i1 %513, true
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %BRANCH_TAKEN, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %517 = select i1 %513, i64 %504, i64 %502
  store i64 %517, i64* %516, align 8
  store %struct.Memory* %loadMem_485253, %struct.Memory** %MEMORY
  %loadBr_485253 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485253 = icmp eq i8 %loadBr_485253, 1
  br i1 %cmpBr_485253, label %block_.L_4853d4, label %block_485259

block_485259:                                     ; preds = %block_.L_48524a
  %loadMem_485259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %PC.i193
  %525 = add i64 %524, 10
  store i64 %525, i64* %PC.i193
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_485259, %struct.Memory** %MEMORY
  %loadMem_485263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 15
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RBP.i192
  %536 = sub i64 %535, 676
  %537 = load i64, i64* %PC.i190
  %538 = add i64 %537, 7
  store i64 %538, i64* %PC.i190
  %539 = inttoptr i64 %536 to i32*
  %540 = load i32, i32* %539
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_485263, %struct.Memory** %MEMORY
  %loadMem_48526a = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 5
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 7
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 15
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RBP.i189
  %555 = load i64, i64* %RCX.i188
  %556 = mul i64 %555, 4
  %557 = add i64 %554, -656
  %558 = add i64 %557, %556
  %559 = load i64, i64* %PC.i187
  %560 = add i64 %559, 7
  store i64 %560, i64* %PC.i187
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_48526a, %struct.Memory** %MEMORY
  %loadMem_485271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 7
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %569 to i32*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 15
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %572 to i64*
  %573 = load i64, i64* %RBP.i186
  %574 = sub i64 %573, 680
  %575 = load i32, i32* %EDX.i
  %576 = zext i32 %575 to i64
  %577 = load i64, i64* %PC.i185
  %578 = add i64 %577, 6
  store i64 %578, i64* %PC.i185
  %579 = inttoptr i64 %574 to i32*
  store i32 %575, i32* %579
  store %struct.Memory* %loadMem_485271, %struct.Memory** %MEMORY
  %loadMem_485277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 5
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 15
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %RBP.i184
  %590 = sub i64 %589, 680
  %591 = load i64, i64* %PC.i182
  %592 = add i64 %591, 7
  store i64 %592, i64* %PC.i182
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_485277, %struct.Memory** %MEMORY
  %loadMem_48527e = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 5
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RCX.i181
  %603 = load i64, i64* %PC.i180
  %604 = add i64 %603, 4
  store i64 %604, i64* %PC.i180
  %605 = sext i64 %602 to i128
  %606 = and i128 %605, -18446744073709551616
  %607 = zext i64 %602 to i128
  %608 = or i128 %606, %607
  %609 = mul i128 76, %608
  %610 = trunc i128 %609 to i64
  store i64 %610, i64* %RCX.i181, align 8
  %611 = sext i64 %610 to i128
  %612 = icmp ne i128 %611, %609
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %613, i8* %614, align 1
  %615 = trunc i128 %609 to i32
  %616 = and i32 %615, 255
  %617 = call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %620, i8* %621, align 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %622, align 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %623, align 1
  %624 = lshr i64 %610, 63
  %625 = trunc i64 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %625, i8* %626, align 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %627, align 1
  store %struct.Memory* %loadMem_48527e, %struct.Memory** %MEMORY
  %loadMem_485282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 5
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RAX.i178
  %638 = load i64, i64* %RCX.i179
  %639 = load i64, i64* %PC.i177
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC.i177
  %641 = add i64 %638, %637
  store i64 %641, i64* %RAX.i178, align 8
  %642 = icmp ult i64 %641, %637
  %643 = icmp ult i64 %641, %638
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %645, i8* %646, align 1
  %647 = trunc i64 %641 to i32
  %648 = and i32 %647, 255
  %649 = call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %652, i8* %653, align 1
  %654 = xor i64 %638, %637
  %655 = xor i64 %654, %641
  %656 = lshr i64 %655, 4
  %657 = trunc i64 %656 to i8
  %658 = and i8 %657, 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %658, i8* %659, align 1
  %660 = icmp eq i64 %641, 0
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %661, i8* %662, align 1
  %663 = lshr i64 %641, 63
  %664 = trunc i64 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %664, i8* %665, align 1
  %666 = lshr i64 %637, 63
  %667 = lshr i64 %638, 63
  %668 = xor i64 %663, %666
  %669 = xor i64 %663, %667
  %670 = add i64 %668, %669
  %671 = icmp eq i64 %670, 2
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %672, i8* %673, align 1
  store %struct.Memory* %loadMem_485282, %struct.Memory** %MEMORY
  %loadMem_485285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RAX.i176
  %681 = add i64 %680, 64
  %682 = load i64, i64* %PC.i175
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i175
  %684 = inttoptr i64 %681 to i32*
  %685 = load i32, i32* %684
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %686, align 1
  %687 = and i32 %685, 255
  %688 = call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %691, i8* %692, align 1
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %693, align 1
  %694 = icmp eq i32 %685, 0
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %695, i8* %696, align 1
  %697 = lshr i32 %685, 31
  %698 = trunc i32 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %698, i8* %699, align 1
  %700 = lshr i32 %685, 31
  %701 = xor i32 %697, %700
  %702 = add i32 %701, %700
  %703 = icmp eq i32 %702, 2
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %704, i8* %705, align 1
  store %struct.Memory* %loadMem_485285, %struct.Memory** %MEMORY
  %loadMem_485289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %PC.i174
  %710 = add i64 %709, 16
  %711 = load i64, i64* %PC.i174
  %712 = add i64 %711, 6
  %713 = load i64, i64* %PC.i174
  %714 = add i64 %713, 6
  store i64 %714, i64* %PC.i174
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %716 = load i8, i8* %715, align 1
  store i8 %716, i8* %BRANCH_TAKEN, align 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %718 = icmp ne i8 %716, 0
  %719 = select i1 %718, i64 %710, i64 %712
  store i64 %719, i64* %717, align 8
  store %struct.Memory* %loadMem_485289, %struct.Memory** %MEMORY
  %loadBr_485289 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485289 = icmp eq i8 %loadBr_485289, 1
  br i1 %cmpBr_485289, label %block_.L_485299, label %block_48528f

block_48528f:                                     ; preds = %block_485259
  %loadMem_48528f = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 15
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %RBP.i173
  %727 = sub i64 %726, 660
  %728 = load i64, i64* %PC.i172
  %729 = add i64 %728, 10
  store i64 %729, i64* %PC.i172
  %730 = inttoptr i64 %727 to i32*
  store i32 1, i32* %730
  store %struct.Memory* %loadMem_48528f, %struct.Memory** %MEMORY
  br label %block_.L_485299

block_.L_485299:                                  ; preds = %block_48528f, %block_485259
  %loadMem_485299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %PC.i170
  %738 = add i64 %737, 10
  store i64 %738, i64* %PC.i170
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_485299, %struct.Memory** %MEMORY
  %loadMem_4852a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RBP.i169
  %749 = sub i64 %748, 680
  %750 = load i64, i64* %PC.i167
  %751 = add i64 %750, 7
  store i64 %751, i64* %PC.i167
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_4852a3, %struct.Memory** %MEMORY
  %loadMem_4852aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 5
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RCX.i166
  %762 = load i64, i64* %PC.i165
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC.i165
  %764 = sext i64 %761 to i128
  %765 = and i128 %764, -18446744073709551616
  %766 = zext i64 %761 to i128
  %767 = or i128 %765, %766
  %768 = mul i128 76, %767
  %769 = trunc i128 %768 to i64
  store i64 %769, i64* %RCX.i166, align 8
  %770 = sext i64 %769 to i128
  %771 = icmp ne i128 %770, %768
  %772 = zext i1 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %772, i8* %773, align 1
  %774 = trunc i128 %768 to i32
  %775 = and i32 %774, 255
  %776 = call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %779, i8* %780, align 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %782, align 1
  %783 = lshr i64 %769, 63
  %784 = trunc i64 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %784, i8* %785, align 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %772, i8* %786, align 1
  store %struct.Memory* %loadMem_4852aa, %struct.Memory** %MEMORY
  %loadMem_4852ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 5
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RAX.i163
  %797 = load i64, i64* %RCX.i164
  %798 = load i64, i64* %PC.i162
  %799 = add i64 %798, 3
  store i64 %799, i64* %PC.i162
  %800 = add i64 %797, %796
  store i64 %800, i64* %RAX.i163, align 8
  %801 = icmp ult i64 %800, %796
  %802 = icmp ult i64 %800, %797
  %803 = or i1 %801, %802
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %804, i8* %805, align 1
  %806 = trunc i64 %800 to i32
  %807 = and i32 %806, 255
  %808 = call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %811, i8* %812, align 1
  %813 = xor i64 %797, %796
  %814 = xor i64 %813, %800
  %815 = lshr i64 %814, 4
  %816 = trunc i64 %815 to i8
  %817 = and i8 %816, 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %817, i8* %818, align 1
  %819 = icmp eq i64 %800, 0
  %820 = zext i1 %819 to i8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %820, i8* %821, align 1
  %822 = lshr i64 %800, 63
  %823 = trunc i64 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %823, i8* %824, align 1
  %825 = lshr i64 %796, 63
  %826 = lshr i64 %797, 63
  %827 = xor i64 %822, %825
  %828 = xor i64 %822, %826
  %829 = add i64 %827, %828
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %831, i8* %832, align 1
  store %struct.Memory* %loadMem_4852ae, %struct.Memory** %MEMORY
  %loadMem_4852b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RAX.i161
  %840 = add i64 %839, 64
  %841 = load i64, i64* %PC.i160
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC.i160
  %843 = inttoptr i64 %840 to i32*
  %844 = load i32, i32* %843
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %845, align 1
  %846 = and i32 %844, 255
  %847 = call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %850, i8* %851, align 1
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %852, align 1
  %853 = icmp eq i32 %844, 0
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %854, i8* %855, align 1
  %856 = lshr i32 %844, 31
  %857 = trunc i32 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %857, i8* %858, align 1
  %859 = lshr i32 %844, 31
  %860 = xor i32 %856, %859
  %861 = add i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %863, i8* %864, align 1
  store %struct.Memory* %loadMem_4852b1, %struct.Memory** %MEMORY
  %loadMem_4852b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %PC.i159
  %869 = add i64 %868, 101
  %870 = load i64, i64* %PC.i159
  %871 = add i64 %870, 6
  %872 = load i64, i64* %PC.i159
  %873 = add i64 %872, 6
  store i64 %873, i64* %PC.i159
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %875 = load i8, i8* %874, align 1
  %876 = icmp eq i8 %875, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %BRANCH_TAKEN, align 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %879 = select i1 %876, i64 %869, i64 %871
  store i64 %879, i64* %878, align 8
  store %struct.Memory* %loadMem_4852b5, %struct.Memory** %MEMORY
  %loadBr_4852b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4852b5 = icmp eq i8 %loadBr_4852b5, 1
  br i1 %cmpBr_4852b5, label %block_.L_48531a, label %block_4852bb

block_4852bb:                                     ; preds = %block_.L_485299
  %loadMem_4852bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %883, i64 0, i64 0
  %YMM0.i158 = bitcast %union.VectorReg* %884 to %"class.std::bitset"*
  %885 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %886 = load i64, i64* %PC.i157
  %887 = add i64 %886, ptrtoint (%G_0x5de71__rip__type* @G_0x5de71__rip_ to i64)
  %888 = load i64, i64* %PC.i157
  %889 = add i64 %888, 8
  store i64 %889, i64* %PC.i157
  %890 = inttoptr i64 %887 to float*
  %891 = load float, float* %890
  %892 = bitcast i8* %885 to float*
  store float %891, float* %892, align 1
  %893 = getelementptr inbounds i8, i8* %885, i64 4
  %894 = bitcast i8* %893 to float*
  store float 0.000000e+00, float* %894, align 1
  %895 = getelementptr inbounds i8, i8* %885, i64 8
  %896 = bitcast i8* %895 to float*
  store float 0.000000e+00, float* %896, align 1
  %897 = getelementptr inbounds i8, i8* %885, i64 12
  %898 = bitcast i8* %897 to float*
  store float 0.000000e+00, float* %898, align 1
  store %struct.Memory* %loadMem_4852bb, %struct.Memory** %MEMORY
  %loadMem_4852c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %PC.i155
  %906 = add i64 %905, 10
  store i64 %906, i64* %PC.i155
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_4852c3, %struct.Memory** %MEMORY
  %loadMem_4852cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 5
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 15
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %915 to i64*
  %916 = load i64, i64* %RBP.i154
  %917 = sub i64 %916, 680
  %918 = load i64, i64* %PC.i152
  %919 = add i64 %918, 7
  store i64 %919, i64* %PC.i152
  %920 = inttoptr i64 %917 to i32*
  %921 = load i32, i32* %920
  %922 = sext i32 %921 to i64
  store i64 %922, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_4852cd, %struct.Memory** %MEMORY
  %loadMem_4852d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 5
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RCX.i151
  %930 = load i64, i64* %PC.i150
  %931 = add i64 %930, 4
  store i64 %931, i64* %PC.i150
  %932 = sext i64 %929 to i128
  %933 = and i128 %932, -18446744073709551616
  %934 = zext i64 %929 to i128
  %935 = or i128 %933, %934
  %936 = mul i128 76, %935
  %937 = trunc i128 %936 to i64
  store i64 %937, i64* %RCX.i151, align 8
  %938 = sext i64 %937 to i128
  %939 = icmp ne i128 %938, %936
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %940, i8* %941, align 1
  %942 = trunc i128 %936 to i32
  %943 = and i32 %942, 255
  %944 = call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %947, i8* %948, align 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %949, align 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %950, align 1
  %951 = lshr i64 %937, 63
  %952 = trunc i64 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %952, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %940, i8* %954, align 1
  store %struct.Memory* %loadMem_4852d4, %struct.Memory** %MEMORY
  %loadMem_4852d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 5
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RAX.i148
  %965 = load i64, i64* %RCX.i149
  %966 = load i64, i64* %PC.i147
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC.i147
  %968 = add i64 %965, %964
  store i64 %968, i64* %RAX.i148, align 8
  %969 = icmp ult i64 %968, %964
  %970 = icmp ult i64 %968, %965
  %971 = or i1 %969, %970
  %972 = zext i1 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %972, i8* %973, align 1
  %974 = trunc i64 %968 to i32
  %975 = and i32 %974, 255
  %976 = call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %979, i8* %980, align 1
  %981 = xor i64 %965, %964
  %982 = xor i64 %981, %968
  %983 = lshr i64 %982, 4
  %984 = trunc i64 %983 to i8
  %985 = and i8 %984, 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %985, i8* %986, align 1
  %987 = icmp eq i64 %968, 0
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %988, i8* %989, align 1
  %990 = lshr i64 %968, 63
  %991 = trunc i64 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %991, i8* %992, align 1
  %993 = lshr i64 %964, 63
  %994 = lshr i64 %965, 63
  %995 = xor i64 %990, %993
  %996 = xor i64 %990, %994
  %997 = add i64 %995, %996
  %998 = icmp eq i64 %997, 2
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %999, i8* %1000, align 1
  store %struct.Memory* %loadMem_4852d8, %struct.Memory** %MEMORY
  %loadMem_4852db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 1
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1007, i64 0, i64 0
  %YMM0.i146 = bitcast %union.VectorReg* %1008 to %"class.std::bitset"*
  %1009 = bitcast %"class.std::bitset"* %YMM0.i146 to i8*
  %1010 = bitcast %"class.std::bitset"* %YMM0.i146 to i8*
  %1011 = load i64, i64* %RAX.i145
  %1012 = add i64 %1011, 16
  %1013 = load i64, i64* %PC.i144
  %1014 = add i64 %1013, 5
  store i64 %1014, i64* %PC.i144
  %1015 = bitcast i8* %1010 to <2 x float>*
  %1016 = load <2 x float>, <2 x float>* %1015, align 1
  %1017 = getelementptr inbounds i8, i8* %1010, i64 8
  %1018 = bitcast i8* %1017 to <2 x i32>*
  %1019 = load <2 x i32>, <2 x i32>* %1018, align 1
  %1020 = inttoptr i64 %1012 to float*
  %1021 = load float, float* %1020
  %1022 = extractelement <2 x float> %1016, i32 0
  %1023 = fmul float %1022, %1021
  %1024 = bitcast i8* %1009 to float*
  store float %1023, float* %1024, align 1
  %1025 = bitcast <2 x float> %1016 to <2 x i32>
  %1026 = extractelement <2 x i32> %1025, i32 1
  %1027 = getelementptr inbounds i8, i8* %1009, i64 4
  %1028 = bitcast i8* %1027 to i32*
  store i32 %1026, i32* %1028, align 1
  %1029 = extractelement <2 x i32> %1019, i32 0
  %1030 = getelementptr inbounds i8, i8* %1009, i64 8
  %1031 = bitcast i8* %1030 to i32*
  store i32 %1029, i32* %1031, align 1
  %1032 = extractelement <2 x i32> %1019, i32 1
  %1033 = getelementptr inbounds i8, i8* %1009, i64 12
  %1034 = bitcast i8* %1033 to i32*
  store i32 %1032, i32* %1034, align 1
  store %struct.Memory* %loadMem_4852db, %struct.Memory** %MEMORY
  %loadMem_4852e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1041, i64 0, i64 0
  %XMM0.i140 = bitcast %union.VectorReg* %1042 to %union.vec128_t*
  %1043 = bitcast %union.vec128_t* %XMM0.i140 to i8*
  %1044 = load i64, i64* %RBP.i139
  %1045 = sub i64 %1044, 668
  %1046 = load i64, i64* %PC.i138
  %1047 = add i64 %1046, 7
  store i64 %1047, i64* %PC.i138
  %1048 = bitcast i8* %1043 to <2 x float>*
  %1049 = load <2 x float>, <2 x float>* %1048, align 1
  %1050 = extractelement <2 x float> %1049, i32 0
  %1051 = inttoptr i64 %1045 to float*
  %1052 = load float, float* %1051
  %1053 = fcmp uno float %1050, %1052
  br i1 %1053, label %1054, label %1066

; <label>:1054:                                   ; preds = %block_4852bb
  %1055 = fadd float %1050, %1052
  %1056 = bitcast float %1055 to i32
  %1057 = and i32 %1056, 2143289344
  %1058 = icmp eq i32 %1057, 2139095040
  %1059 = and i32 %1056, 4194303
  %1060 = icmp ne i32 %1059, 0
  %1061 = and i1 %1058, %1060
  br i1 %1061, label %1062, label %1072

; <label>:1062:                                   ; preds = %1054
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1064 = load i64, i64* %1063, align 8
  %1065 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1064, %struct.Memory* %loadMem_4852e0)
  br label %routine_ucomiss_MINUS0x29c__rbp____xmm0.exit

; <label>:1066:                                   ; preds = %block_4852bb
  %1067 = fcmp ogt float %1050, %1052
  br i1 %1067, label %1072, label %1068

; <label>:1068:                                   ; preds = %1066
  %1069 = fcmp olt float %1050, %1052
  br i1 %1069, label %1072, label %1070

; <label>:1070:                                   ; preds = %1068
  %1071 = fcmp oeq float %1050, %1052
  br i1 %1071, label %1072, label %1079

; <label>:1072:                                   ; preds = %1070, %1068, %1066, %1054
  %1073 = phi i8 [ 0, %1066 ], [ 0, %1068 ], [ 1, %1070 ], [ 1, %1054 ]
  %1074 = phi i8 [ 0, %1066 ], [ 0, %1068 ], [ 0, %1070 ], [ 1, %1054 ]
  %1075 = phi i8 [ 0, %1066 ], [ 1, %1068 ], [ 0, %1070 ], [ 1, %1054 ]
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1073, i8* %1076, align 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1074, i8* %1077, align 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1075, i8* %1078, align 1
  br label %1079

; <label>:1079:                                   ; preds = %1072, %1070
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1080, align 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1081, align 1
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1082, align 1
  br label %routine_ucomiss_MINUS0x29c__rbp____xmm0.exit

routine_ucomiss_MINUS0x29c__rbp____xmm0.exit:     ; preds = %1062, %1079
  %1083 = phi %struct.Memory* [ %1065, %1062 ], [ %loadMem_4852e0, %1079 ]
  store %struct.Memory* %1083, %struct.Memory** %MEMORY
  %loadMem_4852e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %PC.i137
  %1088 = add i64 %1087, 51
  %1089 = load i64, i64* %PC.i137
  %1090 = add i64 %1089, 6
  %1091 = load i64, i64* %PC.i137
  %1092 = add i64 %1091, 6
  store i64 %1092, i64* %PC.i137
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1094 = load i8, i8* %1093, align 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1096 = load i8, i8* %1095, align 1
  %1097 = or i8 %1096, %1094
  %1098 = icmp ne i8 %1097, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %BRANCH_TAKEN, align 1
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1101 = select i1 %1098, i64 %1088, i64 %1090
  store i64 %1101, i64* %1100, align 8
  store %struct.Memory* %loadMem_4852e7, %struct.Memory** %MEMORY
  %loadBr_4852e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4852e7 = icmp eq i8 %loadBr_4852e7, 1
  br i1 %cmpBr_4852e7, label %block_.L_48531a, label %block_4852ed

block_4852ed:                                     ; preds = %routine_ucomiss_MINUS0x29c__rbp____xmm0.exit
  %loadMem_4852ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1105, i64 0, i64 0
  %YMM0.i136 = bitcast %union.VectorReg* %1106 to %"class.std::bitset"*
  %1107 = bitcast %"class.std::bitset"* %YMM0.i136 to i8*
  %1108 = load i64, i64* %PC.i135
  %1109 = add i64 %1108, ptrtoint (%G_0x5de3f__rip__type* @G_0x5de3f__rip_ to i64)
  %1110 = load i64, i64* %PC.i135
  %1111 = add i64 %1110, 8
  store i64 %1111, i64* %PC.i135
  %1112 = inttoptr i64 %1109 to float*
  %1113 = load float, float* %1112
  %1114 = bitcast i8* %1107 to float*
  store float %1113, float* %1114, align 1
  %1115 = getelementptr inbounds i8, i8* %1107, i64 4
  %1116 = bitcast i8* %1115 to float*
  store float 0.000000e+00, float* %1116, align 1
  %1117 = getelementptr inbounds i8, i8* %1107, i64 8
  %1118 = bitcast i8* %1117 to float*
  store float 0.000000e+00, float* %1118, align 1
  %1119 = getelementptr inbounds i8, i8* %1107, i64 12
  %1120 = bitcast i8* %1119 to float*
  store float 0.000000e+00, float* %1120, align 1
  store %struct.Memory* %loadMem_4852ed, %struct.Memory** %MEMORY
  %loadMem_4852f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 1
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %PC.i133
  %1128 = add i64 %1127, 10
  store i64 %1128, i64* %PC.i133
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_4852f5, %struct.Memory** %MEMORY
  %loadMem_4852ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 5
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i132
  %1139 = sub i64 %1138, 680
  %1140 = load i64, i64* %PC.i130
  %1141 = add i64 %1140, 7
  store i64 %1141, i64* %PC.i130
  %1142 = inttoptr i64 %1139 to i32*
  %1143 = load i32, i32* %1142
  %1144 = sext i32 %1143 to i64
  store i64 %1144, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_4852ff, %struct.Memory** %MEMORY
  %loadMem_485306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 5
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RCX.i129
  %1152 = load i64, i64* %PC.i128
  %1153 = add i64 %1152, 4
  store i64 %1153, i64* %PC.i128
  %1154 = sext i64 %1151 to i128
  %1155 = and i128 %1154, -18446744073709551616
  %1156 = zext i64 %1151 to i128
  %1157 = or i128 %1155, %1156
  %1158 = mul i128 76, %1157
  %1159 = trunc i128 %1158 to i64
  store i64 %1159, i64* %RCX.i129, align 8
  %1160 = sext i64 %1159 to i128
  %1161 = icmp ne i128 %1160, %1158
  %1162 = zext i1 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1162, i8* %1163, align 1
  %1164 = trunc i128 %1158 to i32
  %1165 = and i32 %1164, 255
  %1166 = call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1169, i8* %1170, align 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1171, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1172, align 1
  %1173 = lshr i64 %1159, 63
  %1174 = trunc i64 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1174, i8* %1175, align 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1162, i8* %1176, align 1
  store %struct.Memory* %loadMem_485306, %struct.Memory** %MEMORY
  %loadMem_48530a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 1
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 5
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RAX.i126
  %1187 = load i64, i64* %RCX.i127
  %1188 = load i64, i64* %PC.i125
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %PC.i125
  %1190 = add i64 %1187, %1186
  store i64 %1190, i64* %RAX.i126, align 8
  %1191 = icmp ult i64 %1190, %1186
  %1192 = icmp ult i64 %1190, %1187
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1194, i8* %1195, align 1
  %1196 = trunc i64 %1190 to i32
  %1197 = and i32 %1196, 255
  %1198 = call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1201, i8* %1202, align 1
  %1203 = xor i64 %1187, %1186
  %1204 = xor i64 %1203, %1190
  %1205 = lshr i64 %1204, 4
  %1206 = trunc i64 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1207, i8* %1208, align 1
  %1209 = icmp eq i64 %1190, 0
  %1210 = zext i1 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1210, i8* %1211, align 1
  %1212 = lshr i64 %1190, 63
  %1213 = trunc i64 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1213, i8* %1214, align 1
  %1215 = lshr i64 %1186, 63
  %1216 = lshr i64 %1187, 63
  %1217 = xor i64 %1212, %1215
  %1218 = xor i64 %1212, %1216
  %1219 = add i64 %1217, %1218
  %1220 = icmp eq i64 %1219, 2
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1221, i8* %1222, align 1
  store %struct.Memory* %loadMem_48530a, %struct.Memory** %MEMORY
  %loadMem_48530d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 1
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1229, i64 0, i64 0
  %YMM0.i124 = bitcast %union.VectorReg* %1230 to %"class.std::bitset"*
  %1231 = bitcast %"class.std::bitset"* %YMM0.i124 to i8*
  %1232 = bitcast %"class.std::bitset"* %YMM0.i124 to i8*
  %1233 = load i64, i64* %RAX.i123
  %1234 = add i64 %1233, 16
  %1235 = load i64, i64* %PC.i122
  %1236 = add i64 %1235, 5
  store i64 %1236, i64* %PC.i122
  %1237 = bitcast i8* %1232 to <2 x float>*
  %1238 = load <2 x float>, <2 x float>* %1237, align 1
  %1239 = getelementptr inbounds i8, i8* %1232, i64 8
  %1240 = bitcast i8* %1239 to <2 x i32>*
  %1241 = load <2 x i32>, <2 x i32>* %1240, align 1
  %1242 = inttoptr i64 %1234 to float*
  %1243 = load float, float* %1242
  %1244 = extractelement <2 x float> %1238, i32 0
  %1245 = fmul float %1244, %1243
  %1246 = bitcast i8* %1231 to float*
  store float %1245, float* %1246, align 1
  %1247 = bitcast <2 x float> %1238 to <2 x i32>
  %1248 = extractelement <2 x i32> %1247, i32 1
  %1249 = getelementptr inbounds i8, i8* %1231, i64 4
  %1250 = bitcast i8* %1249 to i32*
  store i32 %1248, i32* %1250, align 1
  %1251 = extractelement <2 x i32> %1241, i32 0
  %1252 = getelementptr inbounds i8, i8* %1231, i64 8
  %1253 = bitcast i8* %1252 to i32*
  store i32 %1251, i32* %1253, align 1
  %1254 = extractelement <2 x i32> %1241, i32 1
  %1255 = getelementptr inbounds i8, i8* %1231, i64 12
  %1256 = bitcast i8* %1255 to i32*
  store i32 %1254, i32* %1256, align 1
  store %struct.Memory* %loadMem_48530d, %struct.Memory** %MEMORY
  %loadMem_485312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1263, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %1264 to %union.vec128_t*
  %1265 = load i64, i64* %RBP.i120
  %1266 = sub i64 %1265, 668
  %1267 = bitcast %union.vec128_t* %XMM0.i121 to i8*
  %1268 = load i64, i64* %PC.i119
  %1269 = add i64 %1268, 8
  store i64 %1269, i64* %PC.i119
  %1270 = bitcast i8* %1267 to <2 x float>*
  %1271 = load <2 x float>, <2 x float>* %1270, align 1
  %1272 = extractelement <2 x float> %1271, i32 0
  %1273 = inttoptr i64 %1266 to float*
  store float %1272, float* %1273
  store %struct.Memory* %loadMem_485312, %struct.Memory** %MEMORY
  br label %block_.L_48531a

block_.L_48531a:                                  ; preds = %block_4852ed, %routine_ucomiss_MINUS0x29c__rbp____xmm0.exit, %block_.L_485299
  %loadMem_48531a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 1
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %PC.i117
  %1281 = add i64 %1280, 10
  store i64 %1281, i64* %PC.i117
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_48531a, %struct.Memory** %MEMORY
  %loadMem_485324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 33
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 5
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 15
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1290 to i64*
  %1291 = load i64, i64* %RBP.i116
  %1292 = sub i64 %1291, 680
  %1293 = load i64, i64* %PC.i114
  %1294 = add i64 %1293, 7
  store i64 %1294, i64* %PC.i114
  %1295 = inttoptr i64 %1292 to i32*
  %1296 = load i32, i32* %1295
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_485324, %struct.Memory** %MEMORY
  %loadMem_48532b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 5
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RCX.i113
  %1305 = load i64, i64* %PC.i112
  %1306 = add i64 %1305, 7
  store i64 %1306, i64* %PC.i112
  %1307 = sext i64 %1304 to i128
  %1308 = and i128 %1307, -18446744073709551616
  %1309 = zext i64 %1304 to i128
  %1310 = or i128 %1308, %1309
  %1311 = mul i128 380, %1310
  %1312 = trunc i128 %1311 to i64
  store i64 %1312, i64* %RCX.i113, align 8
  %1313 = sext i64 %1312 to i128
  %1314 = icmp ne i128 %1313, %1311
  %1315 = zext i1 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1315, i8* %1316, align 1
  %1317 = trunc i128 %1311 to i32
  %1318 = and i32 %1317, 255
  %1319 = call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1322, i8* %1323, align 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1324, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1325, align 1
  %1326 = lshr i64 %1312, 63
  %1327 = trunc i64 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1327, i8* %1328, align 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1315, i8* %1329, align 1
  store %struct.Memory* %loadMem_48532b, %struct.Memory** %MEMORY
  %loadMem_485332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RAX.i110
  %1340 = load i64, i64* %RCX.i111
  %1341 = load i64, i64* %PC.i109
  %1342 = add i64 %1341, 3
  store i64 %1342, i64* %PC.i109
  %1343 = add i64 %1340, %1339
  store i64 %1343, i64* %RAX.i110, align 8
  %1344 = icmp ult i64 %1343, %1339
  %1345 = icmp ult i64 %1343, %1340
  %1346 = or i1 %1344, %1345
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1347, i8* %1348, align 1
  %1349 = trunc i64 %1343 to i32
  %1350 = and i32 %1349, 255
  %1351 = call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1354, i8* %1355, align 1
  %1356 = xor i64 %1340, %1339
  %1357 = xor i64 %1356, %1343
  %1358 = lshr i64 %1357, 4
  %1359 = trunc i64 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1360, i8* %1361, align 1
  %1362 = icmp eq i64 %1343, 0
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1363, i8* %1364, align 1
  %1365 = lshr i64 %1343, 63
  %1366 = trunc i64 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1366, i8* %1367, align 1
  %1368 = lshr i64 %1339, 63
  %1369 = lshr i64 %1340, 63
  %1370 = xor i64 %1365, %1368
  %1371 = xor i64 %1365, %1369
  %1372 = add i64 %1370, %1371
  %1373 = icmp eq i64 %1372, 2
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1374, i8* %1375, align 1
  store %struct.Memory* %loadMem_485332, %struct.Memory** %MEMORY
  %loadMem_485335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 1
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RAX.i108
  %1383 = add i64 %1382, 100
  %1384 = load i64, i64* %PC.i107
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i107
  %1386 = inttoptr i64 %1383 to i32*
  %1387 = load i32, i32* %1386
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1388, align 1
  %1389 = and i32 %1387, 255
  %1390 = call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1393, i8* %1394, align 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1395, align 1
  %1396 = icmp eq i32 %1387, 0
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1397, i8* %1398, align 1
  %1399 = lshr i32 %1387, 31
  %1400 = trunc i32 %1399 to i8
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1400, i8* %1401, align 1
  %1402 = lshr i32 %1387, 31
  %1403 = xor i32 %1399, %1402
  %1404 = add i32 %1403, %1402
  %1405 = icmp eq i32 %1404, 2
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1406, i8* %1407, align 1
  store %struct.Memory* %loadMem_485335, %struct.Memory** %MEMORY
  %loadMem_485339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %PC.i106
  %1412 = add i64 %1411, 130
  %1413 = load i64, i64* %PC.i106
  %1414 = add i64 %1413, 6
  %1415 = load i64, i64* %PC.i106
  %1416 = add i64 %1415, 6
  store i64 %1416, i64* %PC.i106
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1418 = load i8, i8* %1417, align 1
  store i8 %1418, i8* %BRANCH_TAKEN, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1420 = icmp ne i8 %1418, 0
  %1421 = select i1 %1420, i64 %1412, i64 %1414
  store i64 %1421, i64* %1419, align 8
  store %struct.Memory* %loadMem_485339, %struct.Memory** %MEMORY
  %loadBr_485339 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485339 = icmp eq i8 %loadBr_485339, 1
  br i1 %cmpBr_485339, label %block_.L_4853bb, label %block_48533f

block_48533f:                                     ; preds = %block_.L_48531a
  %loadMem_48533f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 11
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 15
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %1430 to i64*
  %1431 = load i64, i64* %RBP.i105
  %1432 = sub i64 %1431, 8
  %1433 = load i64, i64* %PC.i104
  %1434 = add i64 %1433, 3
  store i64 %1434, i64* %PC.i104
  %1435 = inttoptr i64 %1432 to i32*
  %1436 = load i32, i32* %1435
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_48533f, %struct.Memory** %MEMORY
  %loadMem_485342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 9
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 15
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %1446 to i64*
  %1447 = load i64, i64* %RBP.i103
  %1448 = sub i64 %1447, 680
  %1449 = load i64, i64* %PC.i102
  %1450 = add i64 %1449, 6
  store i64 %1450, i64* %PC.i102
  %1451 = inttoptr i64 %1448 to i32*
  %1452 = load i32, i32* %1451
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_485342, %struct.Memory** %MEMORY
  %loadMem1_485348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %PC.i101
  %1458 = add i64 %1457, -56824
  %1459 = load i64, i64* %PC.i101
  %1460 = add i64 %1459, 5
  %1461 = load i64, i64* %PC.i101
  %1462 = add i64 %1461, 5
  store i64 %1462, i64* %PC.i101
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1464 = load i64, i64* %1463, align 8
  %1465 = add i64 %1464, -8
  %1466 = inttoptr i64 %1465 to i64*
  store i64 %1460, i64* %1466
  store i64 %1465, i64* %1463, align 8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1458, i64* %1467, align 8
  store %struct.Memory* %loadMem1_485348, %struct.Memory** %MEMORY
  %loadMem2_485348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_485348 = load i64, i64* %3
  %call2_485348 = call %struct.Memory* @sub_477550.does_defend(%struct.State* %0, i64 %loadPC_485348, %struct.Memory* %loadMem2_485348)
  store %struct.Memory* %call2_485348, %struct.Memory** %MEMORY
  %loadMem_48534d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 1
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %EAX.i100 = bitcast %union.anon* %1473 to i32*
  %1474 = load i32, i32* %EAX.i100
  %1475 = zext i32 %1474 to i64
  %1476 = load i64, i64* %PC.i99
  %1477 = add i64 %1476, 3
  store i64 %1477, i64* %PC.i99
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1478, align 1
  %1479 = and i32 %1474, 255
  %1480 = call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1483, i8* %1484, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1485, align 1
  %1486 = icmp eq i32 %1474, 0
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1487, i8* %1488, align 1
  %1489 = lshr i32 %1474, 31
  %1490 = trunc i32 %1489 to i8
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1490, i8* %1491, align 1
  %1492 = lshr i32 %1474, 31
  %1493 = xor i32 %1489, %1492
  %1494 = add i32 %1493, %1492
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1496, i8* %1497, align 1
  store %struct.Memory* %loadMem_48534d, %struct.Memory** %MEMORY
  %loadMem_485350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %PC.i98
  %1502 = add i64 %1501, 107
  %1503 = load i64, i64* %PC.i98
  %1504 = add i64 %1503, 6
  %1505 = load i64, i64* %PC.i98
  %1506 = add i64 %1505, 6
  store i64 %1506, i64* %PC.i98
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1508 = load i8, i8* %1507, align 1
  %1509 = icmp eq i8 %1508, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %BRANCH_TAKEN, align 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1512 = select i1 %1509, i64 %1502, i64 %1504
  store i64 %1512, i64* %1511, align 8
  store %struct.Memory* %loadMem_485350, %struct.Memory** %MEMORY
  %loadBr_485350 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485350 = icmp eq i8 %loadBr_485350, 1
  br i1 %cmpBr_485350, label %block_.L_4853bb, label %block_485356

block_485356:                                     ; preds = %block_48533f
  %loadMem_485356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1516, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %1517 to %"class.std::bitset"*
  %1518 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %1519 = load i64, i64* %PC.i96
  %1520 = add i64 %1519, ptrtoint (%G_0x5ddd6__rip__type* @G_0x5ddd6__rip_ to i64)
  %1521 = load i64, i64* %PC.i96
  %1522 = add i64 %1521, 8
  store i64 %1522, i64* %PC.i96
  %1523 = inttoptr i64 %1520 to float*
  %1524 = load float, float* %1523
  %1525 = bitcast i8* %1518 to float*
  store float %1524, float* %1525, align 1
  %1526 = getelementptr inbounds i8, i8* %1518, i64 4
  %1527 = bitcast i8* %1526 to float*
  store float 0.000000e+00, float* %1527, align 1
  %1528 = getelementptr inbounds i8, i8* %1518, i64 8
  %1529 = bitcast i8* %1528 to float*
  store float 0.000000e+00, float* %1529, align 1
  %1530 = getelementptr inbounds i8, i8* %1518, i64 12
  %1531 = bitcast i8* %1530 to float*
  store float 0.000000e+00, float* %1531, align 1
  store %struct.Memory* %loadMem_485356, %struct.Memory** %MEMORY
  %loadMem_48535e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 1
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %PC.i94
  %1539 = add i64 %1538, 10
  store i64 %1539, i64* %PC.i94
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_48535e, %struct.Memory** %MEMORY
  %loadMem_485368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 5
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i93
  %1550 = sub i64 %1549, 680
  %1551 = load i64, i64* %PC.i91
  %1552 = add i64 %1551, 7
  store i64 %1552, i64* %PC.i91
  %1553 = inttoptr i64 %1550 to i32*
  %1554 = load i32, i32* %1553
  %1555 = sext i32 %1554 to i64
  store i64 %1555, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_485368, %struct.Memory** %MEMORY
  %loadMem_48536f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 5
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RCX.i90
  %1563 = load i64, i64* %PC.i89
  %1564 = add i64 %1563, 7
  store i64 %1564, i64* %PC.i89
  %1565 = sext i64 %1562 to i128
  %1566 = and i128 %1565, -18446744073709551616
  %1567 = zext i64 %1562 to i128
  %1568 = or i128 %1566, %1567
  %1569 = mul i128 380, %1568
  %1570 = trunc i128 %1569 to i64
  store i64 %1570, i64* %RCX.i90, align 8
  %1571 = sext i64 %1570 to i128
  %1572 = icmp ne i128 %1571, %1569
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1573, i8* %1574, align 1
  %1575 = trunc i128 %1569 to i32
  %1576 = and i32 %1575, 255
  %1577 = call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1580, i8* %1581, align 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1582, align 1
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1583, align 1
  %1584 = lshr i64 %1570, 63
  %1585 = trunc i64 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1585, i8* %1586, align 1
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1573, i8* %1587, align 1
  store %struct.Memory* %loadMem_48536f, %struct.Memory** %MEMORY
  %loadMem_485376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 1
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 5
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RAX.i87
  %1598 = load i64, i64* %RCX.i88
  %1599 = load i64, i64* %PC.i86
  %1600 = add i64 %1599, 3
  store i64 %1600, i64* %PC.i86
  %1601 = add i64 %1598, %1597
  store i64 %1601, i64* %RAX.i87, align 8
  %1602 = icmp ult i64 %1601, %1597
  %1603 = icmp ult i64 %1601, %1598
  %1604 = or i1 %1602, %1603
  %1605 = zext i1 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1605, i8* %1606, align 1
  %1607 = trunc i64 %1601 to i32
  %1608 = and i32 %1607, 255
  %1609 = call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1612, i8* %1613, align 1
  %1614 = xor i64 %1598, %1597
  %1615 = xor i64 %1614, %1601
  %1616 = lshr i64 %1615, 4
  %1617 = trunc i64 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1618, i8* %1619, align 1
  %1620 = icmp eq i64 %1601, 0
  %1621 = zext i1 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1621, i8* %1622, align 1
  %1623 = lshr i64 %1601, 63
  %1624 = trunc i64 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1624, i8* %1625, align 1
  %1626 = lshr i64 %1597, 63
  %1627 = lshr i64 %1598, 63
  %1628 = xor i64 %1623, %1626
  %1629 = xor i64 %1623, %1627
  %1630 = add i64 %1628, %1629
  %1631 = icmp eq i64 %1630, 2
  %1632 = zext i1 %1631 to i8
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1632, i8* %1633, align 1
  store %struct.Memory* %loadMem_485376, %struct.Memory** %MEMORY
  %loadMem_485379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 1
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1640, i64 0, i64 0
  %YMM0.i85 = bitcast %union.VectorReg* %1641 to %"class.std::bitset"*
  %1642 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %1643 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %1644 = load i64, i64* %RAX.i84
  %1645 = add i64 %1644, 8
  %1646 = load i64, i64* %PC.i83
  %1647 = add i64 %1646, 5
  store i64 %1647, i64* %PC.i83
  %1648 = bitcast i8* %1643 to <2 x float>*
  %1649 = load <2 x float>, <2 x float>* %1648, align 1
  %1650 = getelementptr inbounds i8, i8* %1643, i64 8
  %1651 = bitcast i8* %1650 to <2 x i32>*
  %1652 = load <2 x i32>, <2 x i32>* %1651, align 1
  %1653 = inttoptr i64 %1645 to float*
  %1654 = load float, float* %1653
  %1655 = extractelement <2 x float> %1649, i32 0
  %1656 = fmul float %1655, %1654
  %1657 = bitcast i8* %1642 to float*
  store float %1656, float* %1657, align 1
  %1658 = bitcast <2 x float> %1649 to <2 x i32>
  %1659 = extractelement <2 x i32> %1658, i32 1
  %1660 = getelementptr inbounds i8, i8* %1642, i64 4
  %1661 = bitcast i8* %1660 to i32*
  store i32 %1659, i32* %1661, align 1
  %1662 = extractelement <2 x i32> %1652, i32 0
  %1663 = getelementptr inbounds i8, i8* %1642, i64 8
  %1664 = bitcast i8* %1663 to i32*
  store i32 %1662, i32* %1664, align 1
  %1665 = extractelement <2 x i32> %1652, i32 1
  %1666 = getelementptr inbounds i8, i8* %1642, i64 12
  %1667 = bitcast i8* %1666 to i32*
  store i32 %1665, i32* %1667, align 1
  store %struct.Memory* %loadMem_485379, %struct.Memory** %MEMORY
  %loadMem_48537e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1675 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1674, i64 0, i64 0
  %XMM0.i80 = bitcast %union.VectorReg* %1675 to %union.vec128_t*
  %1676 = bitcast %union.vec128_t* %XMM0.i80 to i8*
  %1677 = load i64, i64* %RBP.i79
  %1678 = sub i64 %1677, 672
  %1679 = load i64, i64* %PC.i78
  %1680 = add i64 %1679, 7
  store i64 %1680, i64* %PC.i78
  %1681 = bitcast i8* %1676 to <2 x float>*
  %1682 = load <2 x float>, <2 x float>* %1681, align 1
  %1683 = extractelement <2 x float> %1682, i32 0
  %1684 = inttoptr i64 %1678 to float*
  %1685 = load float, float* %1684
  %1686 = fcmp uno float %1683, %1685
  br i1 %1686, label %1687, label %1699

; <label>:1687:                                   ; preds = %block_485356
  %1688 = fadd float %1683, %1685
  %1689 = bitcast float %1688 to i32
  %1690 = and i32 %1689, 2143289344
  %1691 = icmp eq i32 %1690, 2139095040
  %1692 = and i32 %1689, 4194303
  %1693 = icmp ne i32 %1692, 0
  %1694 = and i1 %1691, %1693
  br i1 %1694, label %1695, label %1705

; <label>:1695:                                   ; preds = %1687
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1697 = load i64, i64* %1696, align 8
  %1698 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1697, %struct.Memory* %loadMem_48537e)
  br label %routine_ucomiss_MINUS0x2a0__rbp____xmm0.exit

; <label>:1699:                                   ; preds = %block_485356
  %1700 = fcmp ogt float %1683, %1685
  br i1 %1700, label %1705, label %1701

; <label>:1701:                                   ; preds = %1699
  %1702 = fcmp olt float %1683, %1685
  br i1 %1702, label %1705, label %1703

; <label>:1703:                                   ; preds = %1701
  %1704 = fcmp oeq float %1683, %1685
  br i1 %1704, label %1705, label %1712

; <label>:1705:                                   ; preds = %1703, %1701, %1699, %1687
  %1706 = phi i8 [ 0, %1699 ], [ 0, %1701 ], [ 1, %1703 ], [ 1, %1687 ]
  %1707 = phi i8 [ 0, %1699 ], [ 0, %1701 ], [ 0, %1703 ], [ 1, %1687 ]
  %1708 = phi i8 [ 0, %1699 ], [ 1, %1701 ], [ 0, %1703 ], [ 1, %1687 ]
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1706, i8* %1709, align 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1707, i8* %1710, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1708, i8* %1711, align 1
  br label %1712

; <label>:1712:                                   ; preds = %1705, %1703
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1713, align 1
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1714, align 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1715, align 1
  br label %routine_ucomiss_MINUS0x2a0__rbp____xmm0.exit

routine_ucomiss_MINUS0x2a0__rbp____xmm0.exit:     ; preds = %1695, %1712
  %1716 = phi %struct.Memory* [ %1698, %1695 ], [ %loadMem_48537e, %1712 ]
  store %struct.Memory* %1716, %struct.Memory** %MEMORY
  %loadMem_485385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %PC.i77
  %1721 = add i64 %1720, 54
  %1722 = load i64, i64* %PC.i77
  %1723 = add i64 %1722, 6
  %1724 = load i64, i64* %PC.i77
  %1725 = add i64 %1724, 6
  store i64 %1725, i64* %PC.i77
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1727 = load i8, i8* %1726, align 1
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1729 = load i8, i8* %1728, align 1
  %1730 = or i8 %1729, %1727
  %1731 = icmp ne i8 %1730, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %BRANCH_TAKEN, align 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1734 = select i1 %1731, i64 %1721, i64 %1723
  store i64 %1734, i64* %1733, align 8
  store %struct.Memory* %loadMem_485385, %struct.Memory** %MEMORY
  %loadBr_485385 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485385 = icmp eq i8 %loadBr_485385, 1
  br i1 %cmpBr_485385, label %block_.L_4853bb, label %block_48538b

block_48538b:                                     ; preds = %routine_ucomiss_MINUS0x2a0__rbp____xmm0.exit
  %loadMem_48538b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1738, i64 0, i64 0
  %YMM0.i76 = bitcast %union.VectorReg* %1739 to %"class.std::bitset"*
  %1740 = bitcast %"class.std::bitset"* %YMM0.i76 to i8*
  %1741 = load i64, i64* %PC.i75
  %1742 = add i64 %1741, ptrtoint (%G_0x5dda1__rip__type* @G_0x5dda1__rip_ to i64)
  %1743 = load i64, i64* %PC.i75
  %1744 = add i64 %1743, 8
  store i64 %1744, i64* %PC.i75
  %1745 = inttoptr i64 %1742 to float*
  %1746 = load float, float* %1745
  %1747 = bitcast i8* %1740 to float*
  store float %1746, float* %1747, align 1
  %1748 = getelementptr inbounds i8, i8* %1740, i64 4
  %1749 = bitcast i8* %1748 to float*
  store float 0.000000e+00, float* %1749, align 1
  %1750 = getelementptr inbounds i8, i8* %1740, i64 8
  %1751 = bitcast i8* %1750 to float*
  store float 0.000000e+00, float* %1751, align 1
  %1752 = getelementptr inbounds i8, i8* %1740, i64 12
  %1753 = bitcast i8* %1752 to float*
  store float 0.000000e+00, float* %1753, align 1
  store %struct.Memory* %loadMem_48538b, %struct.Memory** %MEMORY
  %loadMem_485393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 1
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %PC.i73
  %1761 = add i64 %1760, 10
  store i64 %1761, i64* %PC.i73
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_485393, %struct.Memory** %MEMORY
  %loadMem_48539d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 5
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RBP.i72
  %1772 = sub i64 %1771, 680
  %1773 = load i64, i64* %PC.i70
  %1774 = add i64 %1773, 7
  store i64 %1774, i64* %PC.i70
  %1775 = inttoptr i64 %1772 to i32*
  %1776 = load i32, i32* %1775
  %1777 = sext i32 %1776 to i64
  store i64 %1777, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_48539d, %struct.Memory** %MEMORY
  %loadMem_4853a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 5
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RCX.i69
  %1785 = load i64, i64* %PC.i68
  %1786 = add i64 %1785, 7
  store i64 %1786, i64* %PC.i68
  %1787 = sext i64 %1784 to i128
  %1788 = and i128 %1787, -18446744073709551616
  %1789 = zext i64 %1784 to i128
  %1790 = or i128 %1788, %1789
  %1791 = mul i128 380, %1790
  %1792 = trunc i128 %1791 to i64
  store i64 %1792, i64* %RCX.i69, align 8
  %1793 = sext i64 %1792 to i128
  %1794 = icmp ne i128 %1793, %1791
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1795, i8* %1796, align 1
  %1797 = trunc i128 %1791 to i32
  %1798 = and i32 %1797, 255
  %1799 = call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1802, i8* %1803, align 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1804, align 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1805, align 1
  %1806 = lshr i64 %1792, 63
  %1807 = trunc i64 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1807, i8* %1808, align 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1795, i8* %1809, align 1
  store %struct.Memory* %loadMem_4853a4, %struct.Memory** %MEMORY
  %loadMem_4853ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 1
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 5
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1818 to i64*
  %1819 = load i64, i64* %RAX.i67
  %1820 = load i64, i64* %RCX.i
  %1821 = load i64, i64* %PC.i66
  %1822 = add i64 %1821, 3
  store i64 %1822, i64* %PC.i66
  %1823 = add i64 %1820, %1819
  store i64 %1823, i64* %RAX.i67, align 8
  %1824 = icmp ult i64 %1823, %1819
  %1825 = icmp ult i64 %1823, %1820
  %1826 = or i1 %1824, %1825
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1827, i8* %1828, align 1
  %1829 = trunc i64 %1823 to i32
  %1830 = and i32 %1829, 255
  %1831 = call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1834, i8* %1835, align 1
  %1836 = xor i64 %1820, %1819
  %1837 = xor i64 %1836, %1823
  %1838 = lshr i64 %1837, 4
  %1839 = trunc i64 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1840, i8* %1841, align 1
  %1842 = icmp eq i64 %1823, 0
  %1843 = zext i1 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1843, i8* %1844, align 1
  %1845 = lshr i64 %1823, 63
  %1846 = trunc i64 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1846, i8* %1847, align 1
  %1848 = lshr i64 %1819, 63
  %1849 = lshr i64 %1820, 63
  %1850 = xor i64 %1845, %1848
  %1851 = xor i64 %1845, %1849
  %1852 = add i64 %1850, %1851
  %1853 = icmp eq i64 %1852, 2
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1854, i8* %1855, align 1
  store %struct.Memory* %loadMem_4853ab, %struct.Memory** %MEMORY
  %loadMem_4853ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 1
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1862, i64 0, i64 0
  %YMM0.i65 = bitcast %union.VectorReg* %1863 to %"class.std::bitset"*
  %1864 = bitcast %"class.std::bitset"* %YMM0.i65 to i8*
  %1865 = bitcast %"class.std::bitset"* %YMM0.i65 to i8*
  %1866 = load i64, i64* %RAX.i64
  %1867 = add i64 %1866, 8
  %1868 = load i64, i64* %PC.i63
  %1869 = add i64 %1868, 5
  store i64 %1869, i64* %PC.i63
  %1870 = bitcast i8* %1865 to <2 x float>*
  %1871 = load <2 x float>, <2 x float>* %1870, align 1
  %1872 = getelementptr inbounds i8, i8* %1865, i64 8
  %1873 = bitcast i8* %1872 to <2 x i32>*
  %1874 = load <2 x i32>, <2 x i32>* %1873, align 1
  %1875 = inttoptr i64 %1867 to float*
  %1876 = load float, float* %1875
  %1877 = extractelement <2 x float> %1871, i32 0
  %1878 = fmul float %1877, %1876
  %1879 = bitcast i8* %1864 to float*
  store float %1878, float* %1879, align 1
  %1880 = bitcast <2 x float> %1871 to <2 x i32>
  %1881 = extractelement <2 x i32> %1880, i32 1
  %1882 = getelementptr inbounds i8, i8* %1864, i64 4
  %1883 = bitcast i8* %1882 to i32*
  store i32 %1881, i32* %1883, align 1
  %1884 = extractelement <2 x i32> %1874, i32 0
  %1885 = getelementptr inbounds i8, i8* %1864, i64 8
  %1886 = bitcast i8* %1885 to i32*
  store i32 %1884, i32* %1886, align 1
  %1887 = extractelement <2 x i32> %1874, i32 1
  %1888 = getelementptr inbounds i8, i8* %1864, i64 12
  %1889 = bitcast i8* %1888 to i32*
  store i32 %1887, i32* %1889, align 1
  store %struct.Memory* %loadMem_4853ae, %struct.Memory** %MEMORY
  %loadMem_4853b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 15
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1896, i64 0, i64 0
  %XMM0.i62 = bitcast %union.VectorReg* %1897 to %union.vec128_t*
  %1898 = load i64, i64* %RBP.i61
  %1899 = sub i64 %1898, 672
  %1900 = bitcast %union.vec128_t* %XMM0.i62 to i8*
  %1901 = load i64, i64* %PC.i60
  %1902 = add i64 %1901, 8
  store i64 %1902, i64* %PC.i60
  %1903 = bitcast i8* %1900 to <2 x float>*
  %1904 = load <2 x float>, <2 x float>* %1903, align 1
  %1905 = extractelement <2 x float> %1904, i32 0
  %1906 = inttoptr i64 %1899 to float*
  store float %1905, float* %1906
  store %struct.Memory* %loadMem_4853b3, %struct.Memory** %MEMORY
  br label %block_.L_4853bb

block_.L_4853bb:                                  ; preds = %block_48538b, %routine_ucomiss_MINUS0x2a0__rbp____xmm0.exit, %block_48533f, %block_.L_48531a
  %loadMem_4853bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %PC.i59
  %1911 = add i64 %1910, 5
  %1912 = load i64, i64* %PC.i59
  %1913 = add i64 %1912, 5
  store i64 %1913, i64* %PC.i59
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1911, i64* %1914, align 8
  store %struct.Memory* %loadMem_4853bb, %struct.Memory** %MEMORY
  br label %block_.L_4853c0

block_.L_4853c0:                                  ; preds = %block_.L_4853bb
  %loadMem_4853c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 1
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RBP.i58
  %1925 = sub i64 %1924, 676
  %1926 = load i64, i64* %PC.i56
  %1927 = add i64 %1926, 6
  store i64 %1927, i64* %PC.i56
  %1928 = inttoptr i64 %1925 to i32*
  %1929 = load i32, i32* %1928
  %1930 = zext i32 %1929 to i64
  store i64 %1930, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_4853c0, %struct.Memory** %MEMORY
  %loadMem_4853c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 1
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %RAX.i
  %1938 = load i64, i64* %PC.i55
  %1939 = add i64 %1938, 3
  store i64 %1939, i64* %PC.i55
  %1940 = trunc i64 %1937 to i32
  %1941 = add i32 1, %1940
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RAX.i, align 8
  %1943 = icmp ult i32 %1941, %1940
  %1944 = icmp ult i32 %1941, 1
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1946, i8* %1947, align 1
  %1948 = and i32 %1941, 255
  %1949 = call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1952, i8* %1953, align 1
  %1954 = xor i64 1, %1937
  %1955 = trunc i64 %1954 to i32
  %1956 = xor i32 %1955, %1941
  %1957 = lshr i32 %1956, 4
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1959, i8* %1960, align 1
  %1961 = icmp eq i32 %1941, 0
  %1962 = zext i1 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1962, i8* %1963, align 1
  %1964 = lshr i32 %1941, 31
  %1965 = trunc i32 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1965, i8* %1966, align 1
  %1967 = lshr i32 %1940, 31
  %1968 = xor i32 %1964, %1967
  %1969 = add i32 %1968, %1964
  %1970 = icmp eq i32 %1969, 2
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1971, i8* %1972, align 1
  store %struct.Memory* %loadMem_4853c6, %struct.Memory** %MEMORY
  %loadMem_4853c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1978 to i32*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 15
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %RBP.i54
  %1983 = sub i64 %1982, 676
  %1984 = load i32, i32* %EAX.i
  %1985 = zext i32 %1984 to i64
  %1986 = load i64, i64* %PC.i53
  %1987 = add i64 %1986, 6
  store i64 %1987, i64* %PC.i53
  %1988 = inttoptr i64 %1983 to i32*
  store i32 %1984, i32* %1988
  store %struct.Memory* %loadMem_4853c9, %struct.Memory** %MEMORY
  %loadMem_4853cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1991 to i64*
  %1992 = load i64, i64* %PC.i52
  %1993 = add i64 %1992, -389
  %1994 = load i64, i64* %PC.i52
  %1995 = add i64 %1994, 5
  store i64 %1995, i64* %PC.i52
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1993, i64* %1996, align 8
  store %struct.Memory* %loadMem_4853cf, %struct.Memory** %MEMORY
  br label %block_.L_48524a

block_.L_4853d4:                                  ; preds = %block_.L_48524a
  %loadMem_4853d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RBP.i51
  %2004 = sub i64 %2003, 660
  %2005 = load i64, i64* %PC.i50
  %2006 = add i64 %2005, 7
  store i64 %2006, i64* %PC.i50
  %2007 = inttoptr i64 %2004 to i32*
  %2008 = load i32, i32* %2007
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2009, align 1
  %2010 = and i32 %2008, 255
  %2011 = call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2014, i8* %2015, align 1
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2016, align 1
  %2017 = icmp eq i32 %2008, 0
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2018, i8* %2019, align 1
  %2020 = lshr i32 %2008, 31
  %2021 = trunc i32 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2021, i8* %2022, align 1
  %2023 = lshr i32 %2008, 31
  %2024 = xor i32 %2020, %2023
  %2025 = add i32 %2024, %2023
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2027, i8* %2028, align 1
  store %struct.Memory* %loadMem_4853d4, %struct.Memory** %MEMORY
  %loadMem_4853db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %PC.i49
  %2033 = add i64 %2032, 30
  %2034 = load i64, i64* %PC.i49
  %2035 = add i64 %2034, 6
  %2036 = load i64, i64* %PC.i49
  %2037 = add i64 %2036, 6
  store i64 %2037, i64* %PC.i49
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2039 = load i8, i8* %2038, align 1
  store i8 %2039, i8* %BRANCH_TAKEN, align 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2041 = icmp ne i8 %2039, 0
  %2042 = select i1 %2041, i64 %2033, i64 %2035
  store i64 %2042, i64* %2040, align 8
  store %struct.Memory* %loadMem_4853db, %struct.Memory** %MEMORY
  %loadBr_4853db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4853db = icmp eq i8 %loadBr_4853db, 1
  br i1 %cmpBr_4853db, label %block_.L_4853f9, label %block_4853e1

block_4853e1:                                     ; preds = %block_.L_4853d4
  %loadMem_4853e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 15
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2049, i64 0, i64 0
  %YMM0.i48 = bitcast %union.VectorReg* %2050 to %"class.std::bitset"*
  %2051 = bitcast %"class.std::bitset"* %YMM0.i48 to i8*
  %2052 = load i64, i64* %RBP.i47
  %2053 = sub i64 %2052, 668
  %2054 = load i64, i64* %PC.i46
  %2055 = add i64 %2054, 8
  store i64 %2055, i64* %PC.i46
  %2056 = inttoptr i64 %2053 to float*
  %2057 = load float, float* %2056
  %2058 = bitcast i8* %2051 to float*
  store float %2057, float* %2058, align 1
  %2059 = getelementptr inbounds i8, i8* %2051, i64 4
  %2060 = bitcast i8* %2059 to float*
  store float 0.000000e+00, float* %2060, align 1
  %2061 = getelementptr inbounds i8, i8* %2051, i64 8
  %2062 = bitcast i8* %2061 to float*
  store float 0.000000e+00, float* %2062, align 1
  %2063 = getelementptr inbounds i8, i8* %2051, i64 12
  %2064 = bitcast i8* %2063 to float*
  store float 0.000000e+00, float* %2064, align 1
  store %struct.Memory* %loadMem_4853e1, %struct.Memory** %MEMORY
  %loadMem_4853e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 33
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 15
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2072 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2071, i64 0, i64 0
  %YMM0.i45 = bitcast %union.VectorReg* %2072 to %"class.std::bitset"*
  %2073 = bitcast %"class.std::bitset"* %YMM0.i45 to i8*
  %2074 = bitcast %"class.std::bitset"* %YMM0.i45 to i8*
  %2075 = load i64, i64* %RBP.i44
  %2076 = sub i64 %2075, 664
  %2077 = load i64, i64* %PC.i43
  %2078 = add i64 %2077, 8
  store i64 %2078, i64* %PC.i43
  %2079 = bitcast i8* %2074 to <2 x float>*
  %2080 = load <2 x float>, <2 x float>* %2079, align 1
  %2081 = getelementptr inbounds i8, i8* %2074, i64 8
  %2082 = bitcast i8* %2081 to <2 x i32>*
  %2083 = load <2 x i32>, <2 x i32>* %2082, align 1
  %2084 = inttoptr i64 %2076 to float*
  %2085 = load float, float* %2084
  %2086 = extractelement <2 x float> %2080, i32 0
  %2087 = fadd float %2086, %2085
  %2088 = bitcast i8* %2073 to float*
  store float %2087, float* %2088, align 1
  %2089 = bitcast <2 x float> %2080 to <2 x i32>
  %2090 = extractelement <2 x i32> %2089, i32 1
  %2091 = getelementptr inbounds i8, i8* %2073, i64 4
  %2092 = bitcast i8* %2091 to i32*
  store i32 %2090, i32* %2092, align 1
  %2093 = extractelement <2 x i32> %2083, i32 0
  %2094 = getelementptr inbounds i8, i8* %2073, i64 8
  %2095 = bitcast i8* %2094 to i32*
  store i32 %2093, i32* %2095, align 1
  %2096 = extractelement <2 x i32> %2083, i32 1
  %2097 = getelementptr inbounds i8, i8* %2073, i64 12
  %2098 = bitcast i8* %2097 to i32*
  store i32 %2096, i32* %2098, align 1
  store %struct.Memory* %loadMem_4853e9, %struct.Memory** %MEMORY
  %loadMem_4853f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 15
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2105, i64 0, i64 0
  %XMM0.i42 = bitcast %union.VectorReg* %2106 to %union.vec128_t*
  %2107 = load i64, i64* %RBP.i41
  %2108 = sub i64 %2107, 664
  %2109 = bitcast %union.vec128_t* %XMM0.i42 to i8*
  %2110 = load i64, i64* %PC.i40
  %2111 = add i64 %2110, 8
  store i64 %2111, i64* %PC.i40
  %2112 = bitcast i8* %2109 to <2 x float>*
  %2113 = load <2 x float>, <2 x float>* %2112, align 1
  %2114 = extractelement <2 x float> %2113, i32 0
  %2115 = inttoptr i64 %2108 to float*
  store float %2114, float* %2115
  store %struct.Memory* %loadMem_4853f1, %struct.Memory** %MEMORY
  br label %block_.L_4853f9

block_.L_4853f9:                                  ; preds = %block_4853e1, %block_.L_4853d4
  %loadMem_4853f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2119, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %2120 to %"class.std::bitset"*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2121, i64 0, i64 0
  %XMM0.i39 = bitcast %union.VectorReg* %2122 to %union.vec128_t*
  %2123 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %2124 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %2125 = bitcast %union.vec128_t* %XMM0.i39 to i8*
  %2126 = load i64, i64* %PC.i37
  %2127 = add i64 %2126, 3
  store i64 %2127, i64* %PC.i37
  %2128 = bitcast i8* %2124 to i64*
  %2129 = load i64, i64* %2128, align 1
  %2130 = getelementptr inbounds i8, i8* %2124, i64 8
  %2131 = bitcast i8* %2130 to i64*
  %2132 = load i64, i64* %2131, align 1
  %2133 = bitcast i8* %2125 to i64*
  %2134 = load i64, i64* %2133, align 1
  %2135 = getelementptr inbounds i8, i8* %2125, i64 8
  %2136 = bitcast i8* %2135 to i64*
  %2137 = load i64, i64* %2136, align 1
  %2138 = xor i64 %2134, %2129
  %2139 = xor i64 %2137, %2132
  %2140 = trunc i64 %2138 to i32
  %2141 = lshr i64 %2138, 32
  %2142 = trunc i64 %2141 to i32
  %2143 = bitcast i8* %2123 to i32*
  store i32 %2140, i32* %2143, align 1
  %2144 = getelementptr inbounds i8, i8* %2123, i64 4
  %2145 = bitcast i8* %2144 to i32*
  store i32 %2142, i32* %2145, align 1
  %2146 = trunc i64 %2139 to i32
  %2147 = getelementptr inbounds i8, i8* %2123, i64 8
  %2148 = bitcast i8* %2147 to i32*
  store i32 %2146, i32* %2148, align 1
  %2149 = lshr i64 %2139, 32
  %2150 = trunc i64 %2149 to i32
  %2151 = getelementptr inbounds i8, i8* %2123, i64 12
  %2152 = bitcast i8* %2151 to i32*
  store i32 %2150, i32* %2152, align 1
  store %struct.Memory* %loadMem_4853f9, %struct.Memory** %MEMORY
  %loadMem_4853fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 15
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2159, i64 0, i64 1
  %YMM1.i36 = bitcast %union.VectorReg* %2160 to %"class.std::bitset"*
  %2161 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %2162 = load i64, i64* %RBP.i35
  %2163 = sub i64 %2162, 672
  %2164 = load i64, i64* %PC.i34
  %2165 = add i64 %2164, 8
  store i64 %2165, i64* %PC.i34
  %2166 = inttoptr i64 %2163 to float*
  %2167 = load float, float* %2166
  %2168 = bitcast i8* %2161 to float*
  store float %2167, float* %2168, align 1
  %2169 = getelementptr inbounds i8, i8* %2161, i64 4
  %2170 = bitcast i8* %2169 to float*
  store float 0.000000e+00, float* %2170, align 1
  %2171 = getelementptr inbounds i8, i8* %2161, i64 8
  %2172 = bitcast i8* %2171 to float*
  store float 0.000000e+00, float* %2172, align 1
  %2173 = getelementptr inbounds i8, i8* %2161, i64 12
  %2174 = bitcast i8* %2173 to float*
  store float 0.000000e+00, float* %2174, align 1
  store %struct.Memory* %loadMem_4853fc, %struct.Memory** %MEMORY
  %loadMem_485404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 15
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2181, i64 0, i64 2
  %YMM2.i33 = bitcast %union.VectorReg* %2182 to %"class.std::bitset"*
  %2183 = bitcast %"class.std::bitset"* %YMM2.i33 to i8*
  %2184 = load i64, i64* %RBP.i32
  %2185 = sub i64 %2184, 664
  %2186 = load i64, i64* %PC.i31
  %2187 = add i64 %2186, 8
  store i64 %2187, i64* %PC.i31
  %2188 = inttoptr i64 %2185 to float*
  %2189 = load float, float* %2188
  %2190 = bitcast i8* %2183 to float*
  store float %2189, float* %2190, align 1
  %2191 = getelementptr inbounds i8, i8* %2183, i64 4
  %2192 = bitcast i8* %2191 to float*
  store float 0.000000e+00, float* %2192, align 1
  %2193 = getelementptr inbounds i8, i8* %2183, i64 8
  %2194 = bitcast i8* %2193 to float*
  store float 0.000000e+00, float* %2194, align 1
  %2195 = getelementptr inbounds i8, i8* %2183, i64 12
  %2196 = bitcast i8* %2195 to float*
  store float 0.000000e+00, float* %2196, align 1
  store %struct.Memory* %loadMem_485404, %struct.Memory** %MEMORY
  %loadMem_48540c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2200, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2201 to %"class.std::bitset"*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2203 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2202, i64 0, i64 1
  %XMM1.i30 = bitcast %union.VectorReg* %2203 to %union.vec128_t*
  %2204 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2205 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2206 = bitcast %union.vec128_t* %XMM1.i30 to i8*
  %2207 = load i64, i64* %PC.i29
  %2208 = add i64 %2207, 4
  store i64 %2208, i64* %PC.i29
  %2209 = bitcast i8* %2205 to <2 x float>*
  %2210 = load <2 x float>, <2 x float>* %2209, align 1
  %2211 = getelementptr inbounds i8, i8* %2205, i64 8
  %2212 = bitcast i8* %2211 to <2 x i32>*
  %2213 = load <2 x i32>, <2 x i32>* %2212, align 1
  %2214 = bitcast i8* %2206 to <2 x float>*
  %2215 = load <2 x float>, <2 x float>* %2214, align 1
  %2216 = extractelement <2 x float> %2210, i32 0
  %2217 = extractelement <2 x float> %2215, i32 0
  %2218 = fsub float %2216, %2217
  %2219 = bitcast i8* %2204 to float*
  store float %2218, float* %2219, align 1
  %2220 = bitcast <2 x float> %2210 to <2 x i32>
  %2221 = extractelement <2 x i32> %2220, i32 1
  %2222 = getelementptr inbounds i8, i8* %2204, i64 4
  %2223 = bitcast i8* %2222 to i32*
  store i32 %2221, i32* %2223, align 1
  %2224 = extractelement <2 x i32> %2213, i32 0
  %2225 = getelementptr inbounds i8, i8* %2204, i64 8
  %2226 = bitcast i8* %2225 to i32*
  store i32 %2224, i32* %2226, align 1
  %2227 = extractelement <2 x i32> %2213, i32 1
  %2228 = getelementptr inbounds i8, i8* %2204, i64 12
  %2229 = bitcast i8* %2228 to i32*
  store i32 %2227, i32* %2229, align 1
  store %struct.Memory* %loadMem_48540c, %struct.Memory** %MEMORY
  %loadMem_485410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 15
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2236, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2237 to %union.vec128_t*
  %2238 = load i64, i64* %RBP.i28
  %2239 = sub i64 %2238, 664
  %2240 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2241 = load i64, i64* %PC.i27
  %2242 = add i64 %2241, 8
  store i64 %2242, i64* %PC.i27
  %2243 = bitcast i8* %2240 to <2 x float>*
  %2244 = load <2 x float>, <2 x float>* %2243, align 1
  %2245 = extractelement <2 x float> %2244, i32 0
  %2246 = inttoptr i64 %2239 to float*
  store float %2245, float* %2246
  store %struct.Memory* %loadMem_485410, %struct.Memory** %MEMORY
  %loadMem_485418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 15
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2253, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2254 to %"class.std::bitset"*
  %2255 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2256 = load i64, i64* %RBP.i26
  %2257 = sub i64 %2256, 664
  %2258 = load i64, i64* %PC.i25
  %2259 = add i64 %2258, 8
  store i64 %2259, i64* %PC.i25
  %2260 = inttoptr i64 %2257 to float*
  %2261 = load float, float* %2260
  %2262 = fpext float %2261 to double
  %2263 = bitcast i8* %2255 to double*
  store double %2262, double* %2263, align 1
  store %struct.Memory* %loadMem_485418, %struct.Memory** %MEMORY
  %loadMem_485420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2267, i64 0, i64 0
  %XMM0.i21 = bitcast %union.VectorReg* %2268 to %union.vec128_t*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2269, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2270 to %union.vec128_t*
  %2271 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2272 = bitcast %union.vec128_t* %XMM0.i21 to i8*
  %2273 = load i64, i64* %PC.i20
  %2274 = add i64 %2273, 4
  store i64 %2274, i64* %PC.i20
  %2275 = bitcast i8* %2271 to double*
  %2276 = load double, double* %2275, align 1
  %2277 = bitcast i8* %2272 to double*
  %2278 = load double, double* %2277, align 1
  %2279 = fcmp uno double %2276, %2278
  br i1 %2279, label %2280, label %2292

; <label>:2280:                                   ; preds = %block_.L_4853f9
  %2281 = fadd double %2276, %2278
  %2282 = bitcast double %2281 to i64
  %2283 = and i64 %2282, 9221120237041090560
  %2284 = icmp eq i64 %2283, 9218868437227405312
  %2285 = and i64 %2282, 2251799813685247
  %2286 = icmp ne i64 %2285, 0
  %2287 = and i1 %2284, %2286
  br i1 %2287, label %2288, label %2298

; <label>:2288:                                   ; preds = %2280
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2290 = load i64, i64* %2289, align 8
  %2291 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2290, %struct.Memory* %loadMem_485420)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2292:                                   ; preds = %block_.L_4853f9
  %2293 = fcmp ogt double %2276, %2278
  br i1 %2293, label %2298, label %2294

; <label>:2294:                                   ; preds = %2292
  %2295 = fcmp olt double %2276, %2278
  br i1 %2295, label %2298, label %2296

; <label>:2296:                                   ; preds = %2294
  %2297 = fcmp oeq double %2276, %2278
  br i1 %2297, label %2298, label %2305

; <label>:2298:                                   ; preds = %2296, %2294, %2292, %2280
  %2299 = phi i8 [ 0, %2292 ], [ 0, %2294 ], [ 1, %2296 ], [ 1, %2280 ]
  %2300 = phi i8 [ 0, %2292 ], [ 0, %2294 ], [ 0, %2296 ], [ 1, %2280 ]
  %2301 = phi i8 [ 0, %2292 ], [ 1, %2294 ], [ 0, %2296 ], [ 1, %2280 ]
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2299, i8* %2302, align 1
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2300, i8* %2303, align 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2301, i8* %2304, align 1
  br label %2305

; <label>:2305:                                   ; preds = %2298, %2296
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2306, align 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2307, align 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2308, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2288, %2305
  %2309 = phi %struct.Memory* [ %2291, %2288 ], [ %loadMem_485420, %2305 ]
  store %struct.Memory* %2309, %struct.Memory** %MEMORY
  %loadMem_485424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %PC.i19
  %2314 = add i64 %2313, 24
  %2315 = load i64, i64* %PC.i19
  %2316 = add i64 %2315, 6
  %2317 = load i64, i64* %PC.i19
  %2318 = add i64 %2317, 6
  store i64 %2318, i64* %PC.i19
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2320 = load i8, i8* %2319, align 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2322 = load i8, i8* %2321, align 1
  %2323 = or i8 %2322, %2320
  %2324 = icmp ne i8 %2323, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %BRANCH_TAKEN, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2327 = select i1 %2324, i64 %2314, i64 %2316
  store i64 %2327, i64* %2326, align 8
  store %struct.Memory* %loadMem_485424, %struct.Memory** %MEMORY
  %loadBr_485424 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485424 = icmp eq i8 %loadBr_485424, 1
  br i1 %cmpBr_485424, label %block_.L_48543c, label %block_48542a

block_48542a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_48542a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 15
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2334, i64 0, i64 0
  %YMM0.i18 = bitcast %union.VectorReg* %2335 to %"class.std::bitset"*
  %2336 = bitcast %"class.std::bitset"* %YMM0.i18 to i8*
  %2337 = load i64, i64* %RBP.i17
  %2338 = sub i64 %2337, 664
  %2339 = load i64, i64* %PC.i16
  %2340 = add i64 %2339, 8
  store i64 %2340, i64* %PC.i16
  %2341 = inttoptr i64 %2338 to float*
  %2342 = load float, float* %2341
  %2343 = bitcast i8* %2336 to float*
  store float %2342, float* %2343, align 1
  %2344 = getelementptr inbounds i8, i8* %2336, i64 4
  %2345 = bitcast i8* %2344 to float*
  store float 0.000000e+00, float* %2345, align 1
  %2346 = getelementptr inbounds i8, i8* %2336, i64 8
  %2347 = bitcast i8* %2346 to float*
  store float 0.000000e+00, float* %2347, align 1
  %2348 = getelementptr inbounds i8, i8* %2336, i64 12
  %2349 = bitcast i8* %2348 to float*
  store float 0.000000e+00, float* %2349, align 1
  store %struct.Memory* %loadMem_48542a, %struct.Memory** %MEMORY
  %loadMem_485432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 15
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2357 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2356, i64 0, i64 0
  %XMM0.i15 = bitcast %union.VectorReg* %2357 to %union.vec128_t*
  %2358 = load i64, i64* %RBP.i14
  %2359 = sub i64 %2358, 4
  %2360 = bitcast %union.vec128_t* %XMM0.i15 to i8*
  %2361 = load i64, i64* %PC.i13
  %2362 = add i64 %2361, 5
  store i64 %2362, i64* %PC.i13
  %2363 = bitcast i8* %2360 to <2 x float>*
  %2364 = load <2 x float>, <2 x float>* %2363, align 1
  %2365 = extractelement <2 x float> %2364, i32 0
  %2366 = inttoptr i64 %2359 to float*
  store float %2365, float* %2366
  store %struct.Memory* %loadMem_485432, %struct.Memory** %MEMORY
  %loadMem_485437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %PC.i12
  %2371 = add i64 %2370, 13
  %2372 = load i64, i64* %PC.i12
  %2373 = add i64 %2372, 5
  store i64 %2373, i64* %PC.i12
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2371, i64* %2374, align 8
  store %struct.Memory* %loadMem_485437, %struct.Memory** %MEMORY
  br label %block_.L_485444

block_.L_48543c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_48543c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2379 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2378, i64 0, i64 0
  %YMM0.i10 = bitcast %union.VectorReg* %2379 to %"class.std::bitset"*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2380, i64 0, i64 0
  %XMM0.i11 = bitcast %union.VectorReg* %2381 to %union.vec128_t*
  %2382 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %2383 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %2384 = bitcast %union.vec128_t* %XMM0.i11 to i8*
  %2385 = load i64, i64* %PC.i9
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC.i9
  %2387 = bitcast i8* %2383 to i64*
  %2388 = load i64, i64* %2387, align 1
  %2389 = getelementptr inbounds i8, i8* %2383, i64 8
  %2390 = bitcast i8* %2389 to i64*
  %2391 = load i64, i64* %2390, align 1
  %2392 = bitcast i8* %2384 to i64*
  %2393 = load i64, i64* %2392, align 1
  %2394 = getelementptr inbounds i8, i8* %2384, i64 8
  %2395 = bitcast i8* %2394 to i64*
  %2396 = load i64, i64* %2395, align 1
  %2397 = xor i64 %2393, %2388
  %2398 = xor i64 %2396, %2391
  %2399 = trunc i64 %2397 to i32
  %2400 = lshr i64 %2397, 32
  %2401 = trunc i64 %2400 to i32
  %2402 = bitcast i8* %2382 to i32*
  store i32 %2399, i32* %2402, align 1
  %2403 = getelementptr inbounds i8, i8* %2382, i64 4
  %2404 = bitcast i8* %2403 to i32*
  store i32 %2401, i32* %2404, align 1
  %2405 = trunc i64 %2398 to i32
  %2406 = getelementptr inbounds i8, i8* %2382, i64 8
  %2407 = bitcast i8* %2406 to i32*
  store i32 %2405, i32* %2407, align 1
  %2408 = lshr i64 %2398, 32
  %2409 = trunc i64 %2408 to i32
  %2410 = getelementptr inbounds i8, i8* %2382, i64 12
  %2411 = bitcast i8* %2410 to i32*
  store i32 %2409, i32* %2411, align 1
  store %struct.Memory* %loadMem_48543c, %struct.Memory** %MEMORY
  %loadMem_48543f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 15
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2418, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2419 to %union.vec128_t*
  %2420 = load i64, i64* %RBP.i8
  %2421 = sub i64 %2420, 4
  %2422 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2423 = load i64, i64* %PC.i7
  %2424 = add i64 %2423, 5
  store i64 %2424, i64* %PC.i7
  %2425 = bitcast i8* %2422 to <2 x float>*
  %2426 = load <2 x float>, <2 x float>* %2425, align 1
  %2427 = extractelement <2 x float> %2426, i32 0
  %2428 = inttoptr i64 %2421 to float*
  store float %2427, float* %2428
  store %struct.Memory* %loadMem_48543f, %struct.Memory** %MEMORY
  br label %block_.L_485444

block_.L_485444:                                  ; preds = %block_.L_48543c, %block_48542a
  %loadMem_485444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 15
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2435, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2436 to %"class.std::bitset"*
  %2437 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2438 = load i64, i64* %RBP.i6
  %2439 = sub i64 %2438, 4
  %2440 = load i64, i64* %PC.i5
  %2441 = add i64 %2440, 5
  store i64 %2441, i64* %PC.i5
  %2442 = inttoptr i64 %2439 to float*
  %2443 = load float, float* %2442
  %2444 = bitcast i8* %2437 to float*
  store float %2443, float* %2444, align 1
  %2445 = getelementptr inbounds i8, i8* %2437, i64 4
  %2446 = bitcast i8* %2445 to float*
  store float 0.000000e+00, float* %2446, align 1
  %2447 = getelementptr inbounds i8, i8* %2437, i64 8
  %2448 = bitcast i8* %2447 to float*
  store float 0.000000e+00, float* %2448, align 1
  %2449 = getelementptr inbounds i8, i8* %2437, i64 12
  %2450 = bitcast i8* %2449 to float*
  store float 0.000000e+00, float* %2450, align 1
  store %struct.Memory* %loadMem_485444, %struct.Memory** %MEMORY
  %loadMem_485449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 13
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %RSP.i
  %2458 = load i64, i64* %PC.i4
  %2459 = add i64 %2458, 7
  store i64 %2459, i64* %PC.i4
  %2460 = add i64 688, %2457
  store i64 %2460, i64* %RSP.i, align 8
  %2461 = icmp ult i64 %2460, %2457
  %2462 = icmp ult i64 %2460, 688
  %2463 = or i1 %2461, %2462
  %2464 = zext i1 %2463 to i8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2464, i8* %2465, align 1
  %2466 = trunc i64 %2460 to i32
  %2467 = and i32 %2466, 255
  %2468 = call i32 @llvm.ctpop.i32(i32 %2467)
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  %2471 = xor i8 %2470, 1
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2471, i8* %2472, align 1
  %2473 = xor i64 688, %2457
  %2474 = xor i64 %2473, %2460
  %2475 = lshr i64 %2474, 4
  %2476 = trunc i64 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2477, i8* %2478, align 1
  %2479 = icmp eq i64 %2460, 0
  %2480 = zext i1 %2479 to i8
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2480, i8* %2481, align 1
  %2482 = lshr i64 %2460, 63
  %2483 = trunc i64 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2483, i8* %2484, align 1
  %2485 = lshr i64 %2457, 63
  %2486 = xor i64 %2482, %2485
  %2487 = add i64 %2486, %2482
  %2488 = icmp eq i64 %2487, 2
  %2489 = zext i1 %2488 to i8
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2489, i8* %2490, align 1
  store %struct.Memory* %loadMem_485449, %struct.Memory** %MEMORY
  %loadMem_485450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 15
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2496 to i64*
  %2497 = load i64, i64* %PC.i2
  %2498 = add i64 %2497, 1
  store i64 %2498, i64* %PC.i2
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2500 = load i64, i64* %2499, align 8
  %2501 = add i64 %2500, 8
  %2502 = inttoptr i64 %2500 to i64*
  %2503 = load i64, i64* %2502
  store i64 %2503, i64* %RBP.i3, align 8
  store i64 %2501, i64* %2499, align 8
  store %struct.Memory* %loadMem_485450, %struct.Memory** %MEMORY
  %loadMem_485451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %PC.i1
  %2508 = add i64 %2507, 1
  store i64 %2508, i64* %PC.i1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2511 = load i64, i64* %2510, align 8
  %2512 = inttoptr i64 %2511 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %2509, align 8
  %2514 = add i64 %2511, 8
  store i64 %2514, i64* %2510, align 8
  store %struct.Memory* %loadMem_485451, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_485451
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

define %struct.Memory* @routine_subq__0x2b0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 688
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 688
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
  %23 = xor i64 688, %9
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

define %struct.Memory* @routine_leaq_MINUS0x290__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x5df47__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x5df47__rip__type* @G_0x5df47__rip_ to i64)
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

define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x294__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_mulss_0x8__rcx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fmul float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x298__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 664
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x29c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 668
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x2a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 672
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 676
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_4853d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2a4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x290__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -656
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

define %struct.Memory* @routine_movl__edx__MINUS0x2a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2a8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
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

define %struct.Memory* @routine_je_.L_485299(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__MINUS0x294__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_48531a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x5de71__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5de71__rip__type* @G_0x5de71__rip_ to i64)
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

define %struct.Memory* @routine_mulss_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fmul float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x29c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %13 to float*
  %20 = load float, float* %19
  %21 = fcmp uno float %18, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %block_400488
  %23 = fadd float %18, %20
  %24 = bitcast float %23 to i32
  %25 = and i32 %24, 2143289344
  %26 = icmp eq i32 %25, 2139095040
  %27 = and i32 %24, 4194303
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = fcmp ogt float %18, %20
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %34
  %37 = fcmp olt float %18, %20
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %36
  %39 = fcmp oeq float %18, %20
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %38, %36, %34, %22
  %41 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 1, %38 ], [ 1, %22 ]
  %42 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 0, %38 ], [ 1, %22 ]
  %43 = phi i8 [ 0, %34 ], [ 1, %36 ], [ 0, %38 ], [ 1, %22 ]
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %42, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %40, %38
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %50, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %30, %47
  %51 = phi %struct.Memory* [ %33, %30 ], [ %2, %47 ]
  ret %struct.Memory* %51
}

define %struct.Memory* @routine_jbe_.L_48531a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x5de3f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5de3f__rip__type* @G_0x5de3f__rip_ to i64)
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

define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 100
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

define %struct.Memory* @routine_je_.L_4853bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x2a8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.does_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_4853bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x5ddd6__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5ddd6__rip__type* @G_0x5ddd6__rip_ to i64)
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

define %struct.Memory* @routine_mulss_0x8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fmul float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x2a0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %13 to float*
  %20 = load float, float* %19
  %21 = fcmp uno float %18, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %block_400488
  %23 = fadd float %18, %20
  %24 = bitcast float %23 to i32
  %25 = and i32 %24, 2143289344
  %26 = icmp eq i32 %25, 2139095040
  %27 = and i32 %24, 4194303
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = fcmp ogt float %18, %20
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %34
  %37 = fcmp olt float %18, %20
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %36
  %39 = fcmp oeq float %18, %20
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %38, %36, %34, %22
  %41 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 1, %38 ], [ 1, %22 ]
  %42 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 0, %38 ], [ 1, %22 ]
  %43 = phi i8 [ 0, %34 ], [ 1, %36 ], [ 0, %38 ], [ 1, %22 ]
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %42, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %40, %38
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %50, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %30, %47
  %51 = phi %struct.Memory* [ %33, %30 ], [ %2, %47 ]
  ret %struct.Memory* %51
}

define %struct.Memory* @routine_jbe_.L_4853bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x5dda1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5dda1__rip__type* @G_0x5dda1__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_4853c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 676
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48524a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x294__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 660
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

define %struct.Memory* @routine_je_.L_4853f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_MINUS0x29c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x298__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x298__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 664
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

define %struct.Memory* @routine_movss_MINUS0x2a0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x298__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x298__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 664
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x298__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_jbe_.L_48543c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x298__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_485444(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x2b0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 688, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 688
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
  %25 = xor i64 688, %9
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
