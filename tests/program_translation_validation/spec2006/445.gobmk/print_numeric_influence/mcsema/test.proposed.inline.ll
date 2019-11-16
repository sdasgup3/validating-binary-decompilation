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
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xb8079__rip__type = type <{ [8 x i8] }>
%G__0x57c6b7_type = type <{ [8 x i8] }>
%G__0x57c6bc_type = type <{ [8 x i8] }>
%G__0x57c6c0_type = type <{ [8 x i8] }>
%G__0x57f23e_type = type <{ [8 x i8] }>
%G__0x57f240_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0x99c0a0 = global %G_0x99c0a0_type zeroinitializer
@G_0xb8079__rip_ = global %G_0xb8079__rip__type zeroinitializer
@G__0x57c6b7 = global %G__0x57c6b7_type zeroinitializer
@G__0x57c6bc = global %G__0x57c6bc_type zeroinitializer
@G__0x57c6c0 = global %G__0x57c6c0_type zeroinitializer
@G__0x57f23e = global %G__0x57f23e_type zeroinitializer
@G__0x57f240 = global %G__0x57f240_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer

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

; Function Attrs: alwaysinline
define %struct.Memory* @print_numeric_influence(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42acb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42acb0, %struct.Memory** %MEMORY
  %loadMem_42acb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i11 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i11
  %27 = load i64, i64* %PC.i10
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i10
  store i64 %26, i64* %RBP.i12, align 8
  store %struct.Memory* %loadMem_42acb1, %struct.Memory** %MEMORY
  %loadMem_42acb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i36 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i36
  %36 = load i64, i64* %PC.i35
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i35
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_42acb4, %struct.Memory** %MEMORY
  %loadMem_42acb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i75 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i75
  %49 = load i64, i64* %PC.i74
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i74
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_42acb6, %struct.Memory** %MEMORY
  %loadMem_42acb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i96 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i96
  %62 = load i64, i64* %PC.i95
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i95
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_42acb8, %struct.Memory** %MEMORY
  %loadMem_42acb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RSP.i121 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %RSP.i121
  %75 = load i64, i64* %PC.i120
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i120
  %77 = sub i64 %74, 152
  store i64 %77, i64* %RSP.i121, align 8
  %78 = icmp ult i64 %74, 152
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
  %88 = xor i64 152, %74
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
  store %struct.Memory* %loadMem_42acb9, %struct.Memory** %MEMORY
  %loadMem_42acc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %PC.i132
  %113 = add i64 %112, 10
  store i64 %113, i64* %PC.i132
  store i64 ptrtoint (%G__0x57f23e_type* @G__0x57f23e to i64), i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_42acc0, %struct.Memory** %MEMORY
  %loadMem_42acca = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %119 to i32*
  %120 = bitcast i32* %R10D.i to i64*
  %121 = load i64, i64* %PC.i154
  %122 = add i64 %121, 6
  store i64 %122, i64* %PC.i154
  store i64 2, i64* %120, align 8
  store %struct.Memory* %loadMem_42acca, %struct.Memory** %MEMORY
  %loadMem_42acd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 23
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %128 to i32*
  %129 = bitcast i32* %R11D.i to i64*
  %130 = load i64, i64* %PC.i164
  %131 = add i64 %130, 6
  store i64 %131, i64* %PC.i164
  store i64 32, i64* %129, align 8
  store %struct.Memory* %loadMem_42acd0, %struct.Memory** %MEMORY
  %loadMem_42acd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBX.i181 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i180
  %139 = add i64 %138, 5
  store i64 %139, i64* %PC.i180
  store i64 20, i64* %RBX.i181, align 8
  store %struct.Memory* %loadMem_42acd6, %struct.Memory** %MEMORY
  %loadMem_42acdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %145 to i32*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 29
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %148 to i32*
  %149 = bitcast i32* %R14D.i to i64*
  %150 = load i32, i32* %EBX.i
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC.i202
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC.i202
  %154 = and i64 %151, 4294967295
  store i64 %154, i64* %149, align 8
  store %struct.Memory* %loadMem_42acdb, %struct.Memory** %MEMORY
  %loadMem_42acde = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 31
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %R15.i219 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i218
  %165 = sub i64 %164, 96
  %166 = load i64, i64* %PC.i217
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC.i217
  store i64 %165, i64* %R15.i219, align 8
  store %struct.Memory* %loadMem_42acde, %struct.Memory** %MEMORY
  %loadMem_42ace2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 11
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RDI.i276 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i277
  %178 = sub i64 %177, 32
  %179 = load i64, i64* %RDI.i276
  %180 = load i64, i64* %PC.i275
  %181 = add i64 %180, 4
  store i64 %181, i64* %PC.i275
  %182 = inttoptr i64 %178 to i64*
  store i64 %179, i64* %182
  store %struct.Memory* %loadMem_42ace2, %struct.Memory** %MEMORY
  %loadMem_42ace6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %RBP.i309
  %193 = sub i64 %192, 40
  %194 = load i64, i64* %RSI.i308
  %195 = load i64, i64* %PC.i307
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC.i307
  %197 = inttoptr i64 %193 to i64*
  store i64 %194, i64* %197
  store %struct.Memory* %loadMem_42ace6, %struct.Memory** %MEMORY
  %loadMem_42acea = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i339
  %208 = sub i64 %207, 48
  %209 = load i64, i64* %RDX.i338
  %210 = load i64, i64* %PC.i337
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC.i337
  %212 = inttoptr i64 %208 to i64*
  store i64 %209, i64* %212
  store %struct.Memory* %loadMem_42acea, %struct.Memory** %MEMORY
  %loadMem_42acee = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %ECX.i379 = bitcast %union.anon* %218 to i32*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 15
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %RBP.i380
  %223 = sub i64 %222, 52
  %224 = load i32, i32* %ECX.i379
  %225 = zext i32 %224 to i64
  %226 = load i64, i64* %PC.i378
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i378
  %228 = inttoptr i64 %223 to i32*
  store i32 %224, i32* %228
  store %struct.Memory* %loadMem_42acee, %struct.Memory** %MEMORY
  %loadMem_42acf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 17
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %234 to i32*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 15
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %237 to i64*
  %238 = load i64, i64* %RBP.i409
  %239 = sub i64 %238, 56
  %240 = load i32, i32* %R8D.i
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %PC.i408
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC.i408
  %244 = inttoptr i64 %239 to i32*
  store i32 %240, i32* %244
  store %struct.Memory* %loadMem_42acf1, %struct.Memory** %MEMORY
  %loadMem_42acf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 19
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %250 to i32*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i426
  %255 = sub i64 %254, 60
  %256 = load i32, i32* %R9D.i
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %PC.i425
  %259 = add i64 %258, 4
  store i64 %259, i64* %PC.i425
  %260 = inttoptr i64 %255 to i32*
  store i32 %256, i32* %260
  store %struct.Memory* %loadMem_42acf5, %struct.Memory** %MEMORY
  %loadMem_42acf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 11
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RDI.i440 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 31
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %R15.i441 = bitcast %union.anon* %269 to i64*
  %270 = load i64, i64* %R15.i441
  %271 = load i64, i64* %PC.i439
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC.i439
  store i64 %270, i64* %RDI.i440, align 8
  store %struct.Memory* %loadMem_42acf9, %struct.Memory** %MEMORY
  %loadMem_42acfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 23
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %R11D.i453 = bitcast %union.anon* %278 to i32*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RSI.i454 = bitcast %union.anon* %281 to i64*
  %282 = load i32, i32* %R11D.i453
  %283 = zext i32 %282 to i64
  %284 = load i64, i64* %PC.i452
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC.i452
  %286 = and i64 %283, 4294967295
  store i64 %286, i64* %RSI.i454, align 8
  store %struct.Memory* %loadMem_42acfc, %struct.Memory** %MEMORY
  %loadMem_42acff = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 29
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %R14.i451 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %R14.i451
  %297 = load i64, i64* %PC.i449
  %298 = add i64 %297, 3
  store i64 %298, i64* %PC.i449
  store i64 %296, i64* %RDX.i450, align 8
  store %struct.Memory* %loadMem_42acff, %struct.Memory** %MEMORY
  %loadMem_42ad02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 15
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %RBP.i448
  %309 = sub i64 %308, 112
  %310 = load i64, i64* %RAX.i447
  %311 = load i64, i64* %PC.i446
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC.i446
  %313 = inttoptr i64 %309 to i64*
  store i64 %310, i64* %313
  store %struct.Memory* %loadMem_42ad02, %struct.Memory** %MEMORY
  %loadMem_42ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 21
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %R10D.i444 = bitcast %union.anon* %319 to i32*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RBP.i445
  %324 = sub i64 %323, 116
  %325 = load i32, i32* %R10D.i444
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %PC.i443
  %328 = add i64 %327, 4
  store i64 %328, i64* %PC.i443
  %329 = inttoptr i64 %324 to i32*
  store i32 %325, i32* %329
  store %struct.Memory* %loadMem_42ad06, %struct.Memory** %MEMORY
  %loadMem1_42ad0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i442
  %334 = add i64 %333, -171162
  %335 = load i64, i64* %PC.i442
  %336 = add i64 %335, 5
  %337 = load i64, i64* %PC.i442
  %338 = add i64 %337, 5
  store i64 %338, i64* %PC.i442
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %336, i64* %342
  store i64 %341, i64* %339, align 8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %334, i64* %343, align 8
  store %struct.Memory* %loadMem1_42ad0a, %struct.Memory** %MEMORY
  %loadMem2_42ad0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ad0a = load i64, i64* %3
  %344 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_42ad0a)
  store %struct.Memory* %344, %struct.Memory** %MEMORY
  %loadMem_42ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i438
  %355 = sub i64 %354, 52
  %356 = load i64, i64* %PC.i436
  %357 = add i64 %356, 3
  store i64 %357, i64* %PC.i436
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_42ad0f, %struct.Memory** %MEMORY
  %loadMem_42ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RCX.i435
  %368 = load i64, i64* %PC.i434
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC.i434
  %370 = trunc i64 %367 to i32
  %371 = add i32 1, %370
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RCX.i435, align 8
  %373 = icmp ult i32 %371, %370
  %374 = icmp ult i32 %371, 1
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %376, i8* %377, align 1
  %378 = and i32 %371, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %382, i8* %383, align 1
  %384 = xor i64 1, %367
  %385 = trunc i64 %384 to i32
  %386 = xor i32 %385, %371
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i32 %371, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %371, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1
  %397 = lshr i32 %370, 31
  %398 = xor i32 %394, %397
  %399 = add i32 %398, %394
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %401, i8* %402, align 1
  store %struct.Memory* %loadMem_42ad12, %struct.Memory** %MEMORY
  %loadMem_42ad15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %ECX.i432 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %411 to i64*
  %412 = load i32, i32* %ECX.i432
  %413 = zext i32 %412 to i64
  %414 = load i64, i64* %PC.i431
  %415 = add i64 %414, 2
  store i64 %415, i64* %PC.i431
  %416 = and i64 %413, 4294967295
  store i64 %416, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_42ad15, %struct.Memory** %MEMORY
  %loadMem_42ad17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %PC.i430
  %421 = add i64 %420, 1
  store i64 %421, i64* %PC.i430
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %424 = bitcast %union.anon* %423 to i32*
  %425 = load i32, i32* %424, align 8
  %426 = sext i32 %425 to i64
  %427 = lshr i64 %426, 32
  store i64 %427, i64* %422, align 8
  store %struct.Memory* %loadMem_42ad17, %struct.Memory** %MEMORY
  %loadMem_42ad18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i429
  %438 = sub i64 %437, 116
  %439 = load i64, i64* %PC.i427
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC.i427
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_42ad18, %struct.Memory** %MEMORY
  %loadMem_42ad1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %ECX.i423 = bitcast %union.anon* %449 to i32*
  %450 = load i32, i32* %ECX.i423
  %451 = zext i32 %450 to i64
  %452 = load i64, i64* %PC.i422
  %453 = add i64 %452, 2
  store i64 %453, i64* %PC.i422
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %455 = bitcast %union.anon* %454 to i32*
  %456 = load i32, i32* %455, align 8
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %459 = bitcast %union.anon* %458 to i32*
  %460 = load i32, i32* %459, align 8
  %461 = zext i32 %460 to i64
  %462 = shl i64 %451, 32
  %463 = ashr exact i64 %462, 32
  %464 = shl i64 %461, 32
  %465 = or i64 %464, %457
  %466 = sdiv i64 %465, %463
  %467 = shl i64 %466, 32
  %468 = ashr exact i64 %467, 32
  %469 = icmp eq i64 %466, %468
  br i1 %469, label %474, label %470

; <label>:470:                                    ; preds = %entry
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %472, %struct.Memory* %loadMem_42ad1b)
  br label %routine_idivl__ecx.exit424

; <label>:474:                                    ; preds = %entry
  %475 = srem i64 %465, %463
  %476 = getelementptr inbounds %union.anon, %union.anon* %454, i64 0, i32 0
  %477 = and i64 %466, 4294967295
  store i64 %477, i64* %476, align 8
  %478 = getelementptr inbounds %union.anon, %union.anon* %458, i64 0, i32 0
  %479 = and i64 %475, 4294967295
  store i64 %479, i64* %478, align 8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %480, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %481, align 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %482, align 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %483, align 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %485, align 1
  br label %routine_idivl__ecx.exit424

routine_idivl__ecx.exit424:                       ; preds = %470, %474
  %486 = phi %struct.Memory* [ %473, %470 ], [ %loadMem_42ad1b, %474 ]
  store %struct.Memory* %486, %struct.Memory** %MEMORY
  %loadMem_42ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %492 to i32*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 11
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RDI.i421 = bitcast %union.anon* %495 to i64*
  %496 = load i32, i32* %EAX.i420
  %497 = zext i32 %496 to i64
  %498 = load i64, i64* %PC.i419
  %499 = add i64 %498, 3
  store i64 %499, i64* %PC.i419
  %500 = shl i64 %497, 32
  %501 = ashr exact i64 %500, 32
  store i64 %501, i64* %RDI.i421, align 8
  store %struct.Memory* %loadMem_42ad1d, %struct.Memory** %MEMORY
  %loadMem_42ad20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 11
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RDI.i417 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 15
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RBP.i418
  %512 = load i64, i64* %RDI.i417
  %513 = add i64 %511, -96
  %514 = add i64 %513, %512
  %515 = load i64, i64* %PC.i416
  %516 = add i64 %515, 5
  store i64 %516, i64* %PC.i416
  %517 = inttoptr i64 %514 to i8*
  store i8 37, i8* %517
  store %struct.Memory* %loadMem_42ad20, %struct.Memory** %MEMORY
  %loadMem_42ad25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 15
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RBP.i415
  %528 = sub i64 %527, 52
  %529 = load i64, i64* %PC.i413
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC.i413
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_42ad25, %struct.Memory** %MEMORY
  %loadMem_42ad28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %539 to i64*
  %540 = load i64, i64* %RAX.i412
  %541 = load i64, i64* %PC.i411
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC.i411
  %543 = trunc i64 %540 to i32
  %544 = add i32 3, %543
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i412, align 8
  %546 = icmp ult i32 %544, %543
  %547 = icmp ult i32 %544, 3
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %549, i8* %550, align 1
  %551 = and i32 %544, 255
  %552 = call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %555, i8* %556, align 1
  %557 = xor i64 3, %540
  %558 = trunc i64 %557 to i32
  %559 = xor i32 %558, %544
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %562, i8* %563, align 1
  %564 = icmp eq i32 %544, 0
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %565, i8* %566, align 1
  %567 = lshr i32 %544, 31
  %568 = trunc i32 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %568, i8* %569, align 1
  %570 = lshr i32 %543, 31
  %571 = xor i32 %567, %570
  %572 = add i32 %571, %567
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %574, i8* %575, align 1
  store %struct.Memory* %loadMem_42ad28, %struct.Memory** %MEMORY
  %loadMem_42ad2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %PC.i410
  %580 = add i64 %579, 1
  store i64 %580, i64* %PC.i410
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %583 = bitcast %union.anon* %582 to i32*
  %584 = load i32, i32* %583, align 8
  %585 = sext i32 %584 to i64
  %586 = lshr i64 %585, 32
  store i64 %586, i64* %581, align 8
  store %struct.Memory* %loadMem_42ad2b, %struct.Memory** %MEMORY
  %loadMem_42ad2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 5
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %ECX.i407 = bitcast %union.anon* %592 to i32*
  %593 = load i32, i32* %ECX.i407
  %594 = zext i32 %593 to i64
  %595 = load i64, i64* %PC.i406
  %596 = add i64 %595, 2
  store i64 %596, i64* %PC.i406
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %598 = bitcast %union.anon* %597 to i32*
  %599 = load i32, i32* %598, align 8
  %600 = zext i32 %599 to i64
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %602 = bitcast %union.anon* %601 to i32*
  %603 = load i32, i32* %602, align 8
  %604 = zext i32 %603 to i64
  %605 = shl i64 %594, 32
  %606 = ashr exact i64 %605, 32
  %607 = shl i64 %604, 32
  %608 = or i64 %607, %600
  %609 = sdiv i64 %608, %606
  %610 = shl i64 %609, 32
  %611 = ashr exact i64 %610, 32
  %612 = icmp eq i64 %609, %611
  br i1 %612, label %617, label %613

; <label>:613:                                    ; preds = %routine_idivl__ecx.exit424
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %615, %struct.Memory* %loadMem_42ad2c)
  br label %routine_idivl__ecx.exit

; <label>:617:                                    ; preds = %routine_idivl__ecx.exit424
  %618 = srem i64 %608, %606
  %619 = getelementptr inbounds %union.anon, %union.anon* %597, i64 0, i32 0
  %620 = and i64 %609, 4294967295
  store i64 %620, i64* %619, align 8
  %621 = getelementptr inbounds %union.anon, %union.anon* %601, i64 0, i32 0
  %622 = and i64 %618, 4294967295
  store i64 %622, i64* %621, align 8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %623, align 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %624, align 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %625, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %626, align 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %627, align 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %628, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %613, %617
  %629 = phi %struct.Memory* [ %616, %613 ], [ %loadMem_42ad2c, %617 ]
  store %struct.Memory* %629, %struct.Memory** %MEMORY
  %loadMem_42ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %635 to i32*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 11
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RDI.i405 = bitcast %union.anon* %638 to i64*
  %639 = load i32, i32* %EAX.i404
  %640 = zext i32 %639 to i64
  %641 = load i64, i64* %PC.i403
  %642 = add i64 %641, 3
  store i64 %642, i64* %PC.i403
  %643 = shl i64 %640, 32
  %644 = ashr exact i64 %643, 32
  store i64 %644, i64* %RDI.i405, align 8
  store %struct.Memory* %loadMem_42ad2e, %struct.Memory** %MEMORY
  %loadMem_42ad31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 11
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RDI.i401 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 15
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RBP.i402
  %655 = load i64, i64* %RDI.i401
  %656 = add i64 %654, -96
  %657 = add i64 %656, %655
  %658 = load i64, i64* %PC.i400
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC.i400
  %660 = inttoptr i64 %657 to i8*
  store i8 99, i8* %660
  store %struct.Memory* %loadMem_42ad31, %struct.Memory** %MEMORY
  %loadMem_42ad36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RBP.i399
  %671 = sub i64 %670, 52
  %672 = load i64, i64* %PC.i397
  %673 = add i64 %672, 3
  store i64 %673, i64* %PC.i397
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_42ad36, %struct.Memory** %MEMORY
  %loadMem_42ad39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %682 to i64*
  %683 = load i64, i64* %RAX.i396
  %684 = load i64, i64* %PC.i395
  %685 = add i64 %684, 3
  store i64 %685, i64* %PC.i395
  %686 = trunc i64 %683 to i32
  %687 = add i32 2, %686
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RAX.i396, align 8
  %689 = icmp ult i32 %687, %686
  %690 = icmp ult i32 %687, 2
  %691 = or i1 %689, %690
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %692, i8* %693, align 1
  %694 = and i32 %687, 255
  %695 = call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %698, i8* %699, align 1
  %700 = xor i64 2, %683
  %701 = trunc i64 %700 to i32
  %702 = xor i32 %701, %687
  %703 = lshr i32 %702, 4
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %705, i8* %706, align 1
  %707 = icmp eq i32 %687, 0
  %708 = zext i1 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %708, i8* %709, align 1
  %710 = lshr i32 %687, 31
  %711 = trunc i32 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %711, i8* %712, align 1
  %713 = lshr i32 %686, 31
  %714 = xor i32 %710, %713
  %715 = add i32 %714, %710
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %717, i8* %718, align 1
  store %struct.Memory* %loadMem_42ad39, %struct.Memory** %MEMORY
  %loadMem_42ad3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 33
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 1
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %EAX.i393 = bitcast %union.anon* %724 to i32*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 11
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RDI.i394 = bitcast %union.anon* %727 to i64*
  %728 = load i32, i32* %EAX.i393
  %729 = zext i32 %728 to i64
  %730 = load i64, i64* %PC.i392
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC.i392
  %732 = shl i64 %729, 32
  %733 = ashr exact i64 %732, 32
  store i64 %733, i64* %RDI.i394, align 8
  store %struct.Memory* %loadMem_42ad3c, %struct.Memory** %MEMORY
  %loadMem_42ad3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 11
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 15
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RBP.i391
  %744 = load i64, i64* %RDI.i390
  %745 = add i64 %743, -96
  %746 = add i64 %745, %744
  %747 = load i64, i64* %PC.i389
  %748 = add i64 %747, 5
  store i64 %748, i64* %PC.i389
  %749 = inttoptr i64 %746 to i8*
  store i8 0, i8* %749
  store %struct.Memory* %loadMem_42ad3f, %struct.Memory** %MEMORY
  %loadMem_42ad44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 11
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RDI.i388 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %PC.i387
  %757 = add i64 %756, 8
  store i64 %757, i64* %PC.i387
  %758 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %758, i64* %RDI.i388, align 8
  store %struct.Memory* %loadMem_42ad44, %struct.Memory** %MEMORY
  %loadMem_42ad4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 9
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RSI.i385 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %RBP.i386
  %769 = sub i64 %768, 112
  %770 = load i64, i64* %PC.i384
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC.i384
  %772 = inttoptr i64 %769 to i64*
  %773 = load i64, i64* %772
  store i64 %773, i64* %RSI.i385, align 8
  store %struct.Memory* %loadMem_42ad4c, %struct.Memory** %MEMORY
  %loadMem_42ad50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %780 = bitcast %union.anon* %779 to %struct.anon.2*
  %AL.i383 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %780, i32 0, i32 0
  %781 = load i64, i64* %PC.i382
  %782 = add i64 %781, 2
  store i64 %782, i64* %PC.i382
  store i8 0, i8* %AL.i383, align 1
  store %struct.Memory* %loadMem_42ad50, %struct.Memory** %MEMORY
  %loadMem1_42ad52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %PC.i381
  %787 = add i64 %786, -171138
  %788 = load i64, i64* %PC.i381
  %789 = add i64 %788, 5
  %790 = load i64, i64* %PC.i381
  %791 = add i64 %790, 5
  store i64 %791, i64* %PC.i381
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %793 = load i64, i64* %792, align 8
  %794 = add i64 %793, -8
  %795 = inttoptr i64 %794 to i64*
  store i64 %789, i64* %795
  store i64 %794, i64* %792, align 8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %787, i64* %796, align 8
  store %struct.Memory* %loadMem1_42ad52, %struct.Memory** %MEMORY
  %loadMem2_42ad52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ad52 = load i64, i64* %3
  %797 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42ad52)
  store %struct.Memory* %797, %struct.Memory** %MEMORY
  %loadMem_42ad57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RBP.i377
  %805 = sub i64 %804, 64
  %806 = load i64, i64* %PC.i376
  %807 = add i64 %806, 7
  store i64 %807, i64* %PC.i376
  %808 = inttoptr i64 %805 to i32*
  store i32 0, i32* %808
  store %struct.Memory* %loadMem_42ad57, %struct.Memory** %MEMORY
  %loadMem_42ad5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 15
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %814 to i64*
  %815 = load i64, i64* %RBP.i375
  %816 = sub i64 %815, 69
  %817 = load i64, i64* %PC.i374
  %818 = add i64 %817, 4
  store i64 %818, i64* %PC.i374
  %819 = inttoptr i64 %816 to i8*
  store i8 65, i8* %819
  store %struct.Memory* %loadMem_42ad5e, %struct.Memory** %MEMORY
  %loadMem_42ad62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 1
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %EAX.i372 = bitcast %union.anon* %825 to i32*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 15
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RBP.i373
  %830 = sub i64 %829, 120
  %831 = load i32, i32* %EAX.i372
  %832 = zext i32 %831 to i64
  %833 = load i64, i64* %PC.i371
  %834 = add i64 %833, 3
  store i64 %834, i64* %PC.i371
  %835 = inttoptr i64 %830 to i32*
  store i32 %831, i32* %835
  store %struct.Memory* %loadMem_42ad62, %struct.Memory** %MEMORY
  br label %block_.L_42ad65

block_.L_42ad65:                                  ; preds = %block_.L_42ad8a, %routine_idivl__ecx.exit
  %loadMem_42ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i370
  %846 = sub i64 %845, 64
  %847 = load i64, i64* %PC.i368
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC.i368
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_42ad65, %struct.Memory** %MEMORY
  %loadMem_42ad68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 1
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %857 to i32*
  %858 = load i32, i32* %EAX.i367
  %859 = zext i32 %858 to i64
  %860 = load i64, i64* %PC.i366
  %861 = add i64 %860, 7
  store i64 %861, i64* %PC.i366
  %862 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %863 = sub i32 %858, %862
  %864 = icmp ult i32 %858, %862
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %865, i8* %866, align 1
  %867 = and i32 %863, 255
  %868 = call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %871, i8* %872, align 1
  %873 = xor i32 %862, %858
  %874 = xor i32 %873, %863
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %877, i8* %878, align 1
  %879 = icmp eq i32 %863, 0
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %880, i8* %881, align 1
  %882 = lshr i32 %863, 31
  %883 = trunc i32 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %883, i8* %884, align 1
  %885 = lshr i32 %858, 31
  %886 = lshr i32 %862, 31
  %887 = xor i32 %886, %885
  %888 = xor i32 %882, %885
  %889 = add i32 %888, %887
  %890 = icmp eq i32 %889, 2
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %891, i8* %892, align 1
  store %struct.Memory* %loadMem_42ad68, %struct.Memory** %MEMORY
  %loadMem_42ad6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %895 to i64*
  %896 = load i64, i64* %PC.i365
  %897 = add i64 %896, 76
  %898 = load i64, i64* %PC.i365
  %899 = add i64 %898, 6
  %900 = load i64, i64* %PC.i365
  %901 = add i64 %900, 6
  store i64 %901, i64* %PC.i365
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %903 = load i8, i8* %902, align 1
  %904 = icmp ne i8 %903, 0
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %906 = load i8, i8* %905, align 1
  %907 = icmp ne i8 %906, 0
  %908 = xor i1 %904, %907
  %909 = xor i1 %908, true
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %BRANCH_TAKEN, align 1
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %912 = select i1 %908, i64 %899, i64 %897
  store i64 %912, i64* %911, align 8
  store %struct.Memory* %loadMem_42ad6f, %struct.Memory** %MEMORY
  %loadBr_42ad6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ad6f = icmp eq i8 %loadBr_42ad6f, 1
  br i1 %cmpBr_42ad6f, label %block_.L_42adbb, label %block_42ad75

block_42ad75:                                     ; preds = %block_.L_42ad65
  %loadMem_42ad75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RBP.i364
  %923 = sub i64 %922, 69
  %924 = load i64, i64* %PC.i362
  %925 = add i64 %924, 4
  store i64 %925, i64* %PC.i362
  %926 = inttoptr i64 %923 to i8*
  %927 = load i8, i8* %926
  %928 = sext i8 %927 to i64
  %929 = and i64 %928, 4294967295
  store i64 %929, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_42ad75, %struct.Memory** %MEMORY
  %loadMem_42ad79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 33
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 1
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %935 to i32*
  %936 = load i32, i32* %EAX.i361
  %937 = zext i32 %936 to i64
  %938 = load i64, i64* %PC.i360
  %939 = add i64 %938, 3
  store i64 %939, i64* %PC.i360
  %940 = sub i32 %936, 73
  %941 = icmp ult i32 %936, 73
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = and i32 %940, 255
  %945 = call i32 @llvm.ctpop.i32(i32 %944)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %948, i8* %949, align 1
  %950 = xor i64 73, %937
  %951 = trunc i64 %950 to i32
  %952 = xor i32 %951, %940
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i32 %940, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %940, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %936, 31
  %964 = xor i32 %960, %963
  %965 = add i32 %964, %963
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %967, i8* %968, align 1
  store %struct.Memory* %loadMem_42ad79, %struct.Memory** %MEMORY
  %loadMem_42ad7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %PC.i359
  %973 = add i64 %972, 14
  %974 = load i64, i64* %PC.i359
  %975 = add i64 %974, 6
  %976 = load i64, i64* %PC.i359
  %977 = add i64 %976, 6
  store i64 %977, i64* %PC.i359
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %979 = load i8, i8* %978, align 1
  %980 = icmp eq i8 %979, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %BRANCH_TAKEN, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %983 = select i1 %980, i64 %973, i64 %975
  store i64 %983, i64* %982, align 8
  store %struct.Memory* %loadMem_42ad7c, %struct.Memory** %MEMORY
  %loadBr_42ad7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ad7c = icmp eq i8 %loadBr_42ad7c, 1
  br i1 %cmpBr_42ad7c, label %block_.L_42ad8a, label %block_42ad82

block_42ad82:                                     ; preds = %block_42ad75
  %loadMem_42ad82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 1
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %990 = bitcast %union.anon* %989 to %struct.anon.2*
  %AL.i357 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %990, i32 0, i32 0
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 15
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %RBP.i358
  %995 = sub i64 %994, 69
  %996 = load i64, i64* %PC.i356
  %997 = add i64 %996, 3
  store i64 %997, i64* %PC.i356
  %998 = inttoptr i64 %995 to i8*
  %999 = load i8, i8* %998
  store i8 %999, i8* %AL.i357, align 1
  store %struct.Memory* %loadMem_42ad82, %struct.Memory** %MEMORY
  %loadMem_42ad85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %1006 = bitcast %union.anon* %1005 to %struct.anon.2*
  %AL.i355 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1006, i32 0, i32 0
  %1007 = load i8, i8* %AL.i355
  %1008 = zext i8 %1007 to i64
  %1009 = load i64, i64* %PC.i354
  %1010 = add i64 %1009, 2
  store i64 %1010, i64* %PC.i354
  %1011 = add i8 1, %1007
  store i8 %1011, i8* %AL.i355, align 1
  %1012 = icmp ult i8 %1011, %1007
  %1013 = icmp ult i8 %1011, 1
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1015, i8* %1016, align 1
  %1017 = zext i8 %1011 to i32
  %1018 = call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1021, i8* %1022, align 1
  %1023 = xor i64 1, %1008
  %1024 = trunc i64 %1023 to i8
  %1025 = xor i8 %1024, %1011
  %1026 = lshr i8 %1025, 4
  %1027 = and i8 %1026, 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1027, i8* %1028, align 1
  %1029 = icmp eq i8 %1011, 0
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1030, i8* %1031, align 1
  %1032 = lshr i8 %1011, 7
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1032, i8* %1033, align 1
  %1034 = lshr i8 %1007, 7
  %1035 = xor i8 %1032, %1034
  %1036 = add i8 %1035, %1032
  %1037 = icmp eq i8 %1036, 2
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1038, i8* %1039, align 1
  store %struct.Memory* %loadMem_42ad85, %struct.Memory** %MEMORY
  %loadMem_42ad87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %1046 = bitcast %union.anon* %1045 to %struct.anon.2*
  %AL.i352 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1046, i32 0, i32 0
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 15
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RBP.i353
  %1051 = sub i64 %1050, 69
  %1052 = load i8, i8* %AL.i352
  %1053 = zext i8 %1052 to i64
  %1054 = load i64, i64* %PC.i351
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC.i351
  %1056 = inttoptr i64 %1051 to i8*
  store i8 %1052, i8* %1056
  store %struct.Memory* %loadMem_42ad87, %struct.Memory** %MEMORY
  br label %block_.L_42ad8a

block_.L_42ad8a:                                  ; preds = %block_42ad82, %block_42ad75
  %loadMem_42ad8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 9
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RSI.i349 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %RBP.i350
  %1067 = sub i64 %1066, 96
  %1068 = load i64, i64* %PC.i348
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC.i348
  store i64 %1067, i64* %RSI.i349, align 8
  store %struct.Memory* %loadMem_42ad8a, %struct.Memory** %MEMORY
  %loadMem_42ad8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 11
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RDI.i347 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %PC.i346
  %1077 = add i64 %1076, 8
  store i64 %1077, i64* %PC.i346
  %1078 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %1078, i64* %RDI.i347, align 8
  store %struct.Memory* %loadMem_42ad8e, %struct.Memory** %MEMORY
  %loadMem_42ad96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 7
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 15
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %RBP.i345
  %1089 = sub i64 %1088, 69
  %1090 = load i64, i64* %PC.i343
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %PC.i343
  %1092 = inttoptr i64 %1089 to i8*
  %1093 = load i8, i8* %1092
  %1094 = sext i8 %1093 to i64
  %1095 = and i64 %1094, 4294967295
  store i64 %1095, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_42ad96, %struct.Memory** %MEMORY
  %loadMem_42ad9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %1102 = bitcast %union.anon* %1101 to %struct.anon.2*
  %AL.i342 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1102, i32 0, i32 0
  %1103 = load i64, i64* %PC.i341
  %1104 = add i64 %1103, 2
  store i64 %1104, i64* %PC.i341
  store i8 0, i8* %AL.i342, align 1
  store %struct.Memory* %loadMem_42ad9a, %struct.Memory** %MEMORY
  %loadMem1_42ad9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %PC.i340
  %1109 = add i64 %1108, -171212
  %1110 = load i64, i64* %PC.i340
  %1111 = add i64 %1110, 5
  %1112 = load i64, i64* %PC.i340
  %1113 = add i64 %1112, 5
  store i64 %1113, i64* %PC.i340
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1115 = load i64, i64* %1114, align 8
  %1116 = add i64 %1115, -8
  %1117 = inttoptr i64 %1116 to i64*
  store i64 %1111, i64* %1117
  store i64 %1116, i64* %1114, align 8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1109, i64* %1118, align 8
  store %struct.Memory* %loadMem1_42ad9c, %struct.Memory** %MEMORY
  %loadMem2_42ad9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ad9c = load i64, i64* %3
  %1119 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42ad9c)
  store %struct.Memory* %1119, %struct.Memory** %MEMORY
  %loadMem_42ada1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 1
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %EAX.i335 = bitcast %union.anon* %1125 to i32*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 15
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1128 to i64*
  %1129 = load i64, i64* %RBP.i336
  %1130 = sub i64 %1129, 124
  %1131 = load i32, i32* %EAX.i335
  %1132 = zext i32 %1131 to i64
  %1133 = load i64, i64* %PC.i334
  %1134 = add i64 %1133, 3
  store i64 %1134, i64* %PC.i334
  %1135 = inttoptr i64 %1130 to i32*
  store i32 %1131, i32* %1135
  store %struct.Memory* %loadMem_42ada1, %struct.Memory** %MEMORY
  %loadMem_42ada4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RBP.i333
  %1146 = sub i64 %1145, 64
  %1147 = load i64, i64* %PC.i331
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %PC.i331
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_42ada4, %struct.Memory** %MEMORY
  %loadMem_42ada7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 1
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RAX.i330
  %1159 = load i64, i64* %PC.i329
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC.i329
  %1161 = trunc i64 %1158 to i32
  %1162 = add i32 1, %1161
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RAX.i330, align 8
  %1164 = icmp ult i32 %1162, %1161
  %1165 = icmp ult i32 %1162, 1
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1167, i8* %1168, align 1
  %1169 = and i32 %1162, 255
  %1170 = call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1173, i8* %1174, align 1
  %1175 = xor i64 1, %1158
  %1176 = trunc i64 %1175 to i32
  %1177 = xor i32 %1176, %1162
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1180, i8* %1181, align 1
  %1182 = icmp eq i32 %1162, 0
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1183, i8* %1184, align 1
  %1185 = lshr i32 %1162, 31
  %1186 = trunc i32 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i32 %1161, 31
  %1189 = xor i32 %1185, %1188
  %1190 = add i32 %1189, %1185
  %1191 = icmp eq i32 %1190, 2
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1192, i8* %1193, align 1
  store %struct.Memory* %loadMem_42ada7, %struct.Memory** %MEMORY
  %loadMem_42adaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 1
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %1199 to i32*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RBP.i328
  %1204 = sub i64 %1203, 64
  %1205 = load i32, i32* %EAX.i327
  %1206 = zext i32 %1205 to i64
  %1207 = load i64, i64* %PC.i326
  %1208 = add i64 %1207, 3
  store i64 %1208, i64* %PC.i326
  %1209 = inttoptr i64 %1204 to i32*
  store i32 %1205, i32* %1209
  store %struct.Memory* %loadMem_42adaa, %struct.Memory** %MEMORY
  %loadMem_42adad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 5
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %1216 = bitcast %union.anon* %1215 to %struct.anon.2*
  %CL.i324 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1216, i32 0, i32 0
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 15
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %RBP.i325
  %1221 = sub i64 %1220, 69
  %1222 = load i64, i64* %PC.i323
  %1223 = add i64 %1222, 3
  store i64 %1223, i64* %PC.i323
  %1224 = inttoptr i64 %1221 to i8*
  %1225 = load i8, i8* %1224
  store i8 %1225, i8* %CL.i324, align 1
  store %struct.Memory* %loadMem_42adad, %struct.Memory** %MEMORY
  %loadMem_42adb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 5
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %1232 = bitcast %union.anon* %1231 to %struct.anon.2*
  %CL.i322 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1232, i32 0, i32 0
  %1233 = load i8, i8* %CL.i322
  %1234 = zext i8 %1233 to i64
  %1235 = load i64, i64* %PC.i321
  %1236 = add i64 %1235, 3
  store i64 %1236, i64* %PC.i321
  %1237 = add i8 1, %1233
  store i8 %1237, i8* %CL.i322, align 1
  %1238 = icmp ult i8 %1237, %1233
  %1239 = icmp ult i8 %1237, 1
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1241, i8* %1242, align 1
  %1243 = zext i8 %1237 to i32
  %1244 = call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1247, i8* %1248, align 1
  %1249 = xor i64 1, %1234
  %1250 = trunc i64 %1249 to i8
  %1251 = xor i8 %1250, %1237
  %1252 = lshr i8 %1251, 4
  %1253 = and i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1253, i8* %1254, align 1
  %1255 = icmp eq i8 %1237, 0
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1256, i8* %1257, align 1
  %1258 = lshr i8 %1237, 7
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1258, i8* %1259, align 1
  %1260 = lshr i8 %1233, 7
  %1261 = xor i8 %1258, %1260
  %1262 = add i8 %1261, %1258
  %1263 = icmp eq i8 %1262, 2
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1264, i8* %1265, align 1
  store %struct.Memory* %loadMem_42adb0, %struct.Memory** %MEMORY
  %loadMem_42adb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 5
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %1272 = bitcast %union.anon* %1271 to %struct.anon.2*
  %CL.i319 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1272, i32 0, i32 0
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 15
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %RBP.i320
  %1277 = sub i64 %1276, 69
  %1278 = load i8, i8* %CL.i319
  %1279 = zext i8 %1278 to i64
  %1280 = load i64, i64* %PC.i318
  %1281 = add i64 %1280, 3
  store i64 %1281, i64* %PC.i318
  %1282 = inttoptr i64 %1277 to i8*
  store i8 %1278, i8* %1282
  store %struct.Memory* %loadMem_42adb3, %struct.Memory** %MEMORY
  %loadMem_42adb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %PC.i317
  %1287 = add i64 %1286, -81
  %1288 = load i64, i64* %PC.i317
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC.i317
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1287, i64* %1290, align 8
  store %struct.Memory* %loadMem_42adb6, %struct.Memory** %MEMORY
  br label %block_.L_42ad65

block_.L_42adbb:                                  ; preds = %block_.L_42ad65
  %loadMem_42adbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 9
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %PC.i315
  %1298 = add i64 %1297, 10
  store i64 %1298, i64* %PC.i315
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI.i316, align 8
  store %struct.Memory* %loadMem_42adbb, %struct.Memory** %MEMORY
  %loadMem_42adc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 11
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RDI.i314 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %PC.i313
  %1306 = add i64 %1305, 8
  store i64 %1306, i64* %PC.i313
  %1307 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %1307, i64* %RDI.i314, align 8
  store %struct.Memory* %loadMem_42adc5, %struct.Memory** %MEMORY
  %loadMem_42adcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %1314 = bitcast %union.anon* %1313 to %struct.anon.2*
  %AL.i312 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1314, i32 0, i32 0
  %1315 = load i64, i64* %PC.i311
  %1316 = add i64 %1315, 2
  store i64 %1316, i64* %PC.i311
  store i8 0, i8* %AL.i312, align 1
  store %struct.Memory* %loadMem_42adcd, %struct.Memory** %MEMORY
  %loadMem1_42adcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %PC.i310
  %1321 = add i64 %1320, -171263
  %1322 = load i64, i64* %PC.i310
  %1323 = add i64 %1322, 5
  %1324 = load i64, i64* %PC.i310
  %1325 = add i64 %1324, 5
  store i64 %1325, i64* %PC.i310
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1327 = load i64, i64* %1326, align 8
  %1328 = add i64 %1327, -8
  %1329 = inttoptr i64 %1328 to i64*
  store i64 %1323, i64* %1329
  store i64 %1328, i64* %1326, align 8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1321, i64* %1330, align 8
  store %struct.Memory* %loadMem1_42adcf, %struct.Memory** %MEMORY
  %loadMem2_42adcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42adcf = load i64, i64* %3
  %1331 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42adcf)
  store %struct.Memory* %1331, %struct.Memory** %MEMORY
  %loadMem_42add4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 15
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %RBP.i306
  %1339 = sub i64 %1338, 64
  %1340 = load i64, i64* %PC.i305
  %1341 = add i64 %1340, 7
  store i64 %1341, i64* %PC.i305
  %1342 = inttoptr i64 %1339 to i32*
  store i32 0, i32* %1342
  store %struct.Memory* %loadMem_42add4, %struct.Memory** %MEMORY
  %loadMem_42addb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %EAX.i303 = bitcast %union.anon* %1348 to i32*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 15
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1351 to i64*
  %1352 = load i64, i64* %RBP.i304
  %1353 = sub i64 %1352, 128
  %1354 = load i32, i32* %EAX.i303
  %1355 = zext i32 %1354 to i64
  %1356 = load i64, i64* %PC.i302
  %1357 = add i64 %1356, 3
  store i64 %1357, i64* %PC.i302
  %1358 = inttoptr i64 %1353 to i32*
  store i32 %1354, i32* %1358
  store %struct.Memory* %loadMem_42addb, %struct.Memory** %MEMORY
  br label %block_.L_42adde

block_.L_42adde:                                  ; preds = %block_.L_42af7a, %block_.L_42adbb
  %loadMem_42adde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 1
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i301
  %1369 = sub i64 %1368, 64
  %1370 = load i64, i64* %PC.i299
  %1371 = add i64 %1370, 3
  store i64 %1371, i64* %PC.i299
  %1372 = inttoptr i64 %1369 to i32*
  %1373 = load i32, i32* %1372
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_42adde, %struct.Memory** %MEMORY
  %loadMem_42ade1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 1
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %1380 to i32*
  %1381 = load i32, i32* %EAX.i298
  %1382 = zext i32 %1381 to i64
  %1383 = load i64, i64* %PC.i297
  %1384 = add i64 %1383, 7
  store i64 %1384, i64* %PC.i297
  %1385 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1386 = sub i32 %1381, %1385
  %1387 = icmp ult i32 %1381, %1385
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1388, i8* %1389, align 1
  %1390 = and i32 %1386, 255
  %1391 = call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1394, i8* %1395, align 1
  %1396 = xor i32 %1385, %1381
  %1397 = xor i32 %1396, %1386
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1400, i8* %1401, align 1
  %1402 = icmp eq i32 %1386, 0
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1403, i8* %1404, align 1
  %1405 = lshr i32 %1386, 31
  %1406 = trunc i32 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1
  %1408 = lshr i32 %1381, 31
  %1409 = lshr i32 %1385, 31
  %1410 = xor i32 %1409, %1408
  %1411 = xor i32 %1405, %1408
  %1412 = add i32 %1411, %1410
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1414, i8* %1415, align 1
  store %struct.Memory* %loadMem_42ade1, %struct.Memory** %MEMORY
  %loadMem_42ade8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1418 to i64*
  %1419 = load i64, i64* %PC.i296
  %1420 = add i64 %1419, 450
  %1421 = load i64, i64* %PC.i296
  %1422 = add i64 %1421, 6
  %1423 = load i64, i64* %PC.i296
  %1424 = add i64 %1423, 6
  store i64 %1424, i64* %PC.i296
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1426 = load i8, i8* %1425, align 1
  %1427 = icmp ne i8 %1426, 0
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1429 = load i8, i8* %1428, align 1
  %1430 = icmp ne i8 %1429, 0
  %1431 = xor i1 %1427, %1430
  %1432 = xor i1 %1431, true
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %BRANCH_TAKEN, align 1
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1435 = select i1 %1431, i64 %1422, i64 %1420
  store i64 %1435, i64* %1434, align 8
  store %struct.Memory* %loadMem_42ade8, %struct.Memory** %MEMORY
  %loadBr_42ade8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ade8 = icmp eq i8 %loadBr_42ade8, 1
  br i1 %cmpBr_42ade8, label %block_.L_42afaa, label %block_42adee

block_42adee:                                     ; preds = %block_.L_42adde
  %loadMem_42adee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 9
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RSI.i295 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %PC.i294
  %1443 = add i64 %1442, 10
  store i64 %1443, i64* %PC.i294
  store i64 ptrtoint (%G__0x57c6b7_type* @G__0x57c6b7 to i64), i64* %RSI.i295, align 8
  store %struct.Memory* %loadMem_42adee, %struct.Memory** %MEMORY
  %loadMem_42adf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 1
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %PC.i292
  %1451 = add i64 %1450, 7
  store i64 %1451, i64* %PC.i292
  %1452 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_42adf8, %struct.Memory** %MEMORY
  %loadMem_42adff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 1
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RAX.i290
  %1464 = load i64, i64* %RBP.i291
  %1465 = sub i64 %1464, 64
  %1466 = load i64, i64* %PC.i289
  %1467 = add i64 %1466, 3
  store i64 %1467, i64* %PC.i289
  %1468 = trunc i64 %1463 to i32
  %1469 = inttoptr i64 %1465 to i32*
  %1470 = load i32, i32* %1469
  %1471 = sub i32 %1468, %1470
  %1472 = zext i32 %1471 to i64
  store i64 %1472, i64* %RAX.i290, align 8
  %1473 = icmp ult i32 %1468, %1470
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1474, i8* %1475, align 1
  %1476 = and i32 %1471, 255
  %1477 = call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1480, i8* %1481, align 1
  %1482 = xor i32 %1470, %1468
  %1483 = xor i32 %1482, %1471
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1486, i8* %1487, align 1
  %1488 = icmp eq i32 %1471, 0
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1489, i8* %1490, align 1
  %1491 = lshr i32 %1471, 31
  %1492 = trunc i32 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1492, i8* %1493, align 1
  %1494 = lshr i32 %1468, 31
  %1495 = lshr i32 %1470, 31
  %1496 = xor i32 %1495, %1494
  %1497 = xor i32 %1491, %1494
  %1498 = add i32 %1497, %1496
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1500, i8* %1501, align 1
  store %struct.Memory* %loadMem_42adff, %struct.Memory** %MEMORY
  %loadMem_42ae02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 1
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %1507 to i32*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 15
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1510 to i64*
  %1511 = load i64, i64* %RBP.i288
  %1512 = sub i64 %1511, 100
  %1513 = load i32, i32* %EAX.i287
  %1514 = zext i32 %1513 to i64
  %1515 = load i64, i64* %PC.i286
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %PC.i286
  %1517 = inttoptr i64 %1512 to i32*
  store i32 %1513, i32* %1517
  store %struct.Memory* %loadMem_42ae02, %struct.Memory** %MEMORY
  %loadMem_42ae05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 11
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %PC.i284
  %1525 = add i64 %1524, 8
  store i64 %1525, i64* %PC.i284
  %1526 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %1526, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_42ae05, %struct.Memory** %MEMORY
  %loadMem_42ae0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 7
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RBP.i283
  %1537 = sub i64 %1536, 100
  %1538 = load i64, i64* %PC.i281
  %1539 = add i64 %1538, 3
  store i64 %1539, i64* %PC.i281
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RDX.i282, align 8
  store %struct.Memory* %loadMem_42ae0d, %struct.Memory** %MEMORY
  %loadMem_42ae10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 1
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %1549 = bitcast %union.anon* %1548 to %struct.anon.2*
  %AL.i280 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1549, i32 0, i32 0
  %1550 = load i64, i64* %PC.i279
  %1551 = add i64 %1550, 2
  store i64 %1551, i64* %PC.i279
  store i8 0, i8* %AL.i280, align 1
  store %struct.Memory* %loadMem_42ae10, %struct.Memory** %MEMORY
  %loadMem1_42ae12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %PC.i278
  %1556 = add i64 %1555, -171330
  %1557 = load i64, i64* %PC.i278
  %1558 = add i64 %1557, 5
  %1559 = load i64, i64* %PC.i278
  %1560 = add i64 %1559, 5
  store i64 %1560, i64* %PC.i278
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1562 = load i64, i64* %1561, align 8
  %1563 = add i64 %1562, -8
  %1564 = inttoptr i64 %1563 to i64*
  store i64 %1558, i64* %1564
  store i64 %1563, i64* %1561, align 8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1556, i64* %1565, align 8
  store %struct.Memory* %loadMem1_42ae12, %struct.Memory** %MEMORY
  %loadMem2_42ae12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ae12 = load i64, i64* %3
  %1566 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42ae12)
  store %struct.Memory* %1566, %struct.Memory** %MEMORY
  %loadMem_42ae17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RBP.i274
  %1574 = sub i64 %1573, 68
  %1575 = load i64, i64* %PC.i273
  %1576 = add i64 %1575, 7
  store i64 %1576, i64* %PC.i273
  %1577 = inttoptr i64 %1574 to i32*
  store i32 0, i32* %1577
  store %struct.Memory* %loadMem_42ae17, %struct.Memory** %MEMORY
  %loadMem_42ae1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 33
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 1
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %1583 to i32*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 15
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %RBP.i272
  %1588 = sub i64 %1587, 132
  %1589 = load i32, i32* %EAX.i271
  %1590 = zext i32 %1589 to i64
  %1591 = load i64, i64* %PC.i270
  %1592 = add i64 %1591, 6
  store i64 %1592, i64* %PC.i270
  %1593 = inttoptr i64 %1588 to i32*
  store i32 %1589, i32* %1593
  store %struct.Memory* %loadMem_42ae1e, %struct.Memory** %MEMORY
  br label %block_.L_42ae24

block_.L_42ae24:                                  ; preds = %block_.L_42af6c, %block_42adee
  %loadMem_42ae24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 1
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 15
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %1602 to i64*
  %1603 = load i64, i64* %RBP.i269
  %1604 = sub i64 %1603, 68
  %1605 = load i64, i64* %PC.i267
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %PC.i267
  %1607 = inttoptr i64 %1604 to i32*
  %1608 = load i32, i32* %1607
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_42ae24, %struct.Memory** %MEMORY
  %loadMem_42ae27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 1
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %1615 to i32*
  %1616 = load i32, i32* %EAX.i266
  %1617 = zext i32 %1616 to i64
  %1618 = load i64, i64* %PC.i265
  %1619 = add i64 %1618, 7
  store i64 %1619, i64* %PC.i265
  %1620 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1621 = sub i32 %1616, %1620
  %1622 = icmp ult i32 %1616, %1620
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1623, i8* %1624, align 1
  %1625 = and i32 %1621, 255
  %1626 = call i32 @llvm.ctpop.i32(i32 %1625)
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1629, i8* %1630, align 1
  %1631 = xor i32 %1620, %1616
  %1632 = xor i32 %1631, %1621
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1635, i8* %1636, align 1
  %1637 = icmp eq i32 %1621, 0
  %1638 = zext i1 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1638, i8* %1639, align 1
  %1640 = lshr i32 %1621, 31
  %1641 = trunc i32 %1640 to i8
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1641, i8* %1642, align 1
  %1643 = lshr i32 %1616, 31
  %1644 = lshr i32 %1620, 31
  %1645 = xor i32 %1644, %1643
  %1646 = xor i32 %1640, %1643
  %1647 = add i32 %1646, %1645
  %1648 = icmp eq i32 %1647, 2
  %1649 = zext i1 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1649, i8* %1650, align 1
  store %struct.Memory* %loadMem_42ae27, %struct.Memory** %MEMORY
  %loadMem_42ae2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1653 to i64*
  %1654 = load i64, i64* %PC.i264
  %1655 = add i64 %1654, 332
  %1656 = load i64, i64* %PC.i264
  %1657 = add i64 %1656, 6
  %1658 = load i64, i64* %PC.i264
  %1659 = add i64 %1658, 6
  store i64 %1659, i64* %PC.i264
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1661 = load i8, i8* %1660, align 1
  %1662 = icmp ne i8 %1661, 0
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1664 = load i8, i8* %1663, align 1
  %1665 = icmp ne i8 %1664, 0
  %1666 = xor i1 %1662, %1665
  %1667 = xor i1 %1666, true
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %BRANCH_TAKEN, align 1
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1670 = select i1 %1666, i64 %1657, i64 %1655
  store i64 %1670, i64* %1669, align 8
  store %struct.Memory* %loadMem_42ae2e, %struct.Memory** %MEMORY
  %loadBr_42ae2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ae2e = icmp eq i8 %loadBr_42ae2e, 1
  br i1 %cmpBr_42ae2e, label %block_.L_42af7a, label %block_42ae34

block_42ae34:                                     ; preds = %block_.L_42ae24
  %loadMem_42ae34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 1
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 15
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %RBP.i263
  %1681 = sub i64 %1680, 64
  %1682 = load i64, i64* %PC.i261
  %1683 = add i64 %1682, 4
  store i64 %1683, i64* %PC.i261
  %1684 = inttoptr i64 %1681 to i32*
  %1685 = load i32, i32* %1684
  %1686 = sext i32 %1685 to i64
  %1687 = mul i64 %1686, 20
  %1688 = trunc i64 %1687 to i32
  %1689 = and i64 %1687, 4294967295
  store i64 %1689, i64* %RAX.i262, align 8
  %1690 = shl i64 %1687, 32
  %1691 = ashr exact i64 %1690, 32
  %1692 = icmp ne i64 %1691, %1687
  %1693 = zext i1 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1693, i8* %1694, align 1
  %1695 = and i32 %1688, 255
  %1696 = call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1699, i8* %1700, align 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1701, align 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1702, align 1
  %1703 = lshr i32 %1688, 31
  %1704 = trunc i32 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1704, i8* %1705, align 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1693, i8* %1706, align 1
  store %struct.Memory* %loadMem_42ae34, %struct.Memory** %MEMORY
  %loadMem_42ae38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 1
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RAX.i260
  %1714 = load i64, i64* %PC.i259
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC.i259
  %1716 = trunc i64 %1713 to i32
  %1717 = add i32 21, %1716
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RAX.i260, align 8
  %1719 = icmp ult i32 %1717, %1716
  %1720 = icmp ult i32 %1717, 21
  %1721 = or i1 %1719, %1720
  %1722 = zext i1 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1722, i8* %1723, align 1
  %1724 = and i32 %1717, 255
  %1725 = call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1728, i8* %1729, align 1
  %1730 = xor i64 21, %1713
  %1731 = trunc i64 %1730 to i32
  %1732 = xor i32 %1731, %1717
  %1733 = lshr i32 %1732, 4
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1735, i8* %1736, align 1
  %1737 = icmp eq i32 %1717, 0
  %1738 = zext i1 %1737 to i8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1738, i8* %1739, align 1
  %1740 = lshr i32 %1717, 31
  %1741 = trunc i32 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1741, i8* %1742, align 1
  %1743 = lshr i32 %1716, 31
  %1744 = xor i32 %1740, %1743
  %1745 = add i32 %1744, %1740
  %1746 = icmp eq i32 %1745, 2
  %1747 = zext i1 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1747, i8* %1748, align 1
  store %struct.Memory* %loadMem_42ae38, %struct.Memory** %MEMORY
  %loadMem_42ae3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 1
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 15
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RAX.i257
  %1759 = load i64, i64* %RBP.i258
  %1760 = sub i64 %1759, 68
  %1761 = load i64, i64* %PC.i256
  %1762 = add i64 %1761, 3
  store i64 %1762, i64* %PC.i256
  %1763 = trunc i64 %1758 to i32
  %1764 = inttoptr i64 %1760 to i32*
  %1765 = load i32, i32* %1764
  %1766 = add i32 %1765, %1763
  %1767 = zext i32 %1766 to i64
  store i64 %1767, i64* %RAX.i257, align 8
  %1768 = icmp ult i32 %1766, %1763
  %1769 = icmp ult i32 %1766, %1765
  %1770 = or i1 %1768, %1769
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1771, i8* %1772, align 1
  %1773 = and i32 %1766, 255
  %1774 = call i32 @llvm.ctpop.i32(i32 %1773)
  %1775 = trunc i32 %1774 to i8
  %1776 = and i8 %1775, 1
  %1777 = xor i8 %1776, 1
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1777, i8* %1778, align 1
  %1779 = xor i32 %1765, %1763
  %1780 = xor i32 %1779, %1766
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1783, i8* %1784, align 1
  %1785 = icmp eq i32 %1766, 0
  %1786 = zext i1 %1785 to i8
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1786, i8* %1787, align 1
  %1788 = lshr i32 %1766, 31
  %1789 = trunc i32 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1789, i8* %1790, align 1
  %1791 = lshr i32 %1763, 31
  %1792 = lshr i32 %1765, 31
  %1793 = xor i32 %1788, %1791
  %1794 = xor i32 %1788, %1792
  %1795 = add i32 %1793, %1794
  %1796 = icmp eq i32 %1795, 2
  %1797 = zext i1 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1797, i8* %1798, align 1
  store %struct.Memory* %loadMem_42ae3b, %struct.Memory** %MEMORY
  %loadMem_42ae3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 1
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %EAX.i254 = bitcast %union.anon* %1804 to i32*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RBP.i255
  %1809 = sub i64 %1808, 104
  %1810 = load i32, i32* %EAX.i254
  %1811 = zext i32 %1810 to i64
  %1812 = load i64, i64* %PC.i253
  %1813 = add i64 %1812, 3
  store i64 %1813, i64* %PC.i253
  %1814 = inttoptr i64 %1809 to i32*
  store i32 %1810, i32* %1814
  store %struct.Memory* %loadMem_42ae3e, %struct.Memory** %MEMORY
  %loadMem_42ae41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 33
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i252
  %1822 = sub i64 %1821, 56
  %1823 = load i64, i64* %PC.i251
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i251
  %1825 = inttoptr i64 %1822 to i32*
  %1826 = load i32, i32* %1825
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1827, align 1
  %1828 = and i32 %1826, 255
  %1829 = call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1832, i8* %1833, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1834, align 1
  %1835 = icmp eq i32 %1826, 0
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1836, i8* %1837, align 1
  %1838 = lshr i32 %1826, 31
  %1839 = trunc i32 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1839, i8* %1840, align 1
  %1841 = lshr i32 %1826, 31
  %1842 = xor i32 %1838, %1841
  %1843 = add i32 %1842, %1841
  %1844 = icmp eq i32 %1843, 2
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1845, i8* %1846, align 1
  store %struct.Memory* %loadMem_42ae41, %struct.Memory** %MEMORY
  %loadMem_42ae45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %PC.i250
  %1851 = add i64 %1850, 118
  %1852 = load i64, i64* %PC.i250
  %1853 = add i64 %1852, 6
  %1854 = load i64, i64* %PC.i250
  %1855 = add i64 %1854, 6
  store i64 %1855, i64* %PC.i250
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1857 = load i8, i8* %1856, align 1
  store i8 %1857, i8* %BRANCH_TAKEN, align 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1859 = icmp ne i8 %1857, 0
  %1860 = select i1 %1859, i64 %1851, i64 %1853
  store i64 %1860, i64* %1858, align 8
  store %struct.Memory* %loadMem_42ae45, %struct.Memory** %MEMORY
  %loadBr_42ae45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ae45 = icmp eq i8 %loadBr_42ae45, 1
  br i1 %cmpBr_42ae45, label %block_.L_42aebb, label %block_42ae4b

block_42ae4b:                                     ; preds = %block_42ae34
  %loadMem_42ae4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 1
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 15
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %RBP.i249
  %1871 = sub i64 %1870, 32
  %1872 = load i64, i64* %PC.i247
  %1873 = add i64 %1872, 4
  store i64 %1873, i64* %PC.i247
  %1874 = inttoptr i64 %1871 to i64*
  %1875 = load i64, i64* %1874
  store i64 %1875, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_42ae4b, %struct.Memory** %MEMORY
  %loadMem_42ae4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 5
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 15
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RBP.i246
  %1886 = sub i64 %1885, 104
  %1887 = load i64, i64* %PC.i244
  %1888 = add i64 %1887, 4
  store i64 %1888, i64* %PC.i244
  %1889 = inttoptr i64 %1886 to i32*
  %1890 = load i32, i32* %1889
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_42ae4f, %struct.Memory** %MEMORY
  %loadMem_42ae53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 5
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 7
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RAX.i241
  %1905 = load i64, i64* %RCX.i242
  %1906 = add i64 %1905, %1904
  %1907 = load i64, i64* %PC.i240
  %1908 = add i64 %1907, 4
  store i64 %1908, i64* %PC.i240
  %1909 = inttoptr i64 %1906 to i8*
  %1910 = load i8, i8* %1909
  %1911 = sext i8 %1910 to i64
  %1912 = and i64 %1911, 4294967295
  store i64 %1912, i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_42ae53, %struct.Memory** %MEMORY
  %loadMem_42ae57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 7
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1918 to i32*
  %1919 = load i32, i32* %EDX.i
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %PC.i239
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %PC.i239
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1923, align 1
  %1924 = and i32 %1919, 255
  %1925 = call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1928, i8* %1929, align 1
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1930, align 1
  %1931 = icmp eq i32 %1919, 0
  %1932 = zext i1 %1931 to i8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1932, i8* %1933, align 1
  %1934 = lshr i32 %1919, 31
  %1935 = trunc i32 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1935, i8* %1936, align 1
  %1937 = lshr i32 %1919, 31
  %1938 = xor i32 %1934, %1937
  %1939 = add i32 %1938, %1937
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1941, i8* %1942, align 1
  store %struct.Memory* %loadMem_42ae57, %struct.Memory** %MEMORY
  %loadMem_42ae5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1945 to i64*
  %1946 = load i64, i64* %PC.i238
  %1947 = add i64 %1946, 97
  %1948 = load i64, i64* %PC.i238
  %1949 = add i64 %1948, 6
  %1950 = load i64, i64* %PC.i238
  %1951 = add i64 %1950, 6
  store i64 %1951, i64* %PC.i238
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1953 = load i8, i8* %1952, align 1
  store i8 %1953, i8* %BRANCH_TAKEN, align 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1955 = icmp ne i8 %1953, 0
  %1956 = select i1 %1955, i64 %1947, i64 %1949
  store i64 %1956, i64* %1954, align 8
  store %struct.Memory* %loadMem_42ae5a, %struct.Memory** %MEMORY
  %loadBr_42ae5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ae5a = icmp eq i8 %loadBr_42ae5a, 1
  br i1 %cmpBr_42ae5a, label %block_.L_42aebb, label %block_42ae60

block_42ae60:                                     ; preds = %block_42ae4b
  %loadMem_42ae60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 1
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 15
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RBP.i237
  %1967 = sub i64 %1966, 104
  %1968 = load i64, i64* %PC.i235
  %1969 = add i64 %1968, 4
  store i64 %1969, i64* %PC.i235
  %1970 = inttoptr i64 %1967 to i32*
  %1971 = load i32, i32* %1970
  %1972 = sext i32 %1971 to i64
  store i64 %1972, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_42ae60, %struct.Memory** %MEMORY
  %loadMem_42ae64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 5
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %RAX.i233
  %1983 = add i64 %1982, 12099168
  %1984 = load i64, i64* %PC.i232
  %1985 = add i64 %1984, 8
  store i64 %1985, i64* %PC.i232
  %1986 = inttoptr i64 %1983 to i8*
  %1987 = load i8, i8* %1986
  %1988 = zext i8 %1987 to i64
  store i64 %1988, i64* %RCX.i234, align 8
  store %struct.Memory* %loadMem_42ae64, %struct.Memory** %MEMORY
  %loadMem_42ae6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 5
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1994 to i32*
  %1995 = load i32, i32* %ECX.i
  %1996 = zext i32 %1995 to i64
  %1997 = load i64, i64* %PC.i231
  %1998 = add i64 %1997, 3
  store i64 %1998, i64* %PC.i231
  %1999 = sub i32 %1995, 1
  %2000 = icmp ult i32 %1995, 1
  %2001 = zext i1 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2001, i8* %2002, align 1
  %2003 = and i32 %1999, 255
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2007, i8* %2008, align 1
  %2009 = xor i64 1, %1996
  %2010 = trunc i64 %2009 to i32
  %2011 = xor i32 %2010, %1999
  %2012 = lshr i32 %2011, 4
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2014, i8* %2015, align 1
  %2016 = icmp eq i32 %1999, 0
  %2017 = zext i1 %2016 to i8
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2017, i8* %2018, align 1
  %2019 = lshr i32 %1999, 31
  %2020 = trunc i32 %2019 to i8
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2020, i8* %2021, align 1
  %2022 = lshr i32 %1995, 31
  %2023 = xor i32 %2019, %2022
  %2024 = add i32 %2023, %2022
  %2025 = icmp eq i32 %2024, 2
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2026, i8* %2027, align 1
  store %struct.Memory* %loadMem_42ae6c, %struct.Memory** %MEMORY
  %loadMem_42ae6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %PC.i230
  %2032 = add i64 %2031, 41
  %2033 = load i64, i64* %PC.i230
  %2034 = add i64 %2033, 6
  %2035 = load i64, i64* %PC.i230
  %2036 = add i64 %2035, 6
  store i64 %2036, i64* %PC.i230
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2038 = load i8, i8* %2037, align 1
  %2039 = icmp eq i8 %2038, 0
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %BRANCH_TAKEN, align 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2042 = select i1 %2039, i64 %2032, i64 %2034
  store i64 %2042, i64* %2041, align 8
  store %struct.Memory* %loadMem_42ae6f, %struct.Memory** %MEMORY
  %loadBr_42ae6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ae6f = icmp eq i8 %loadBr_42ae6f, 1
  br i1 %cmpBr_42ae6f, label %block_.L_42ae98, label %block_42ae75

block_42ae75:                                     ; preds = %block_42ae60
  %loadMem_42ae75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 7
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %PC.i228
  %2050 = add i64 %2049, 5
  store i64 %2050, i64* %PC.i228
  store i64 79, i64* %RDX.i229, align 8
  store %struct.Memory* %loadMem_42ae75, %struct.Memory** %MEMORY
  %loadMem_42ae7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 9
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RSI.i226 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 15
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %2059 to i64*
  %2060 = load i64, i64* %RBP.i227
  %2061 = sub i64 %2060, 96
  %2062 = load i64, i64* %PC.i225
  %2063 = add i64 %2062, 4
  store i64 %2063, i64* %PC.i225
  store i64 %2061, i64* %RSI.i226, align 8
  store %struct.Memory* %loadMem_42ae7a, %struct.Memory** %MEMORY
  %loadMem_42ae7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 11
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %PC.i223
  %2071 = add i64 %2070, 8
  store i64 %2071, i64* %PC.i223
  %2072 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2072, i64* %RDI.i224, align 8
  store %struct.Memory* %loadMem_42ae7e, %struct.Memory** %MEMORY
  %loadMem_42ae86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 1
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %2079 = bitcast %union.anon* %2078 to %struct.anon.2*
  %AL.i222 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2079, i32 0, i32 0
  %2080 = load i64, i64* %PC.i221
  %2081 = add i64 %2080, 2
  store i64 %2081, i64* %PC.i221
  store i8 0, i8* %AL.i222, align 1
  store %struct.Memory* %loadMem_42ae86, %struct.Memory** %MEMORY
  %loadMem1_42ae88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %PC.i220
  %2086 = add i64 %2085, -171448
  %2087 = load i64, i64* %PC.i220
  %2088 = add i64 %2087, 5
  %2089 = load i64, i64* %PC.i220
  %2090 = add i64 %2089, 5
  store i64 %2090, i64* %PC.i220
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2092 = load i64, i64* %2091, align 8
  %2093 = add i64 %2092, -8
  %2094 = inttoptr i64 %2093 to i64*
  store i64 %2088, i64* %2094
  store i64 %2093, i64* %2091, align 8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2086, i64* %2095, align 8
  store %struct.Memory* %loadMem1_42ae88, %struct.Memory** %MEMORY
  %loadMem2_42ae88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ae88 = load i64, i64* %3
  %2096 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42ae88)
  store %struct.Memory* %2096, %struct.Memory** %MEMORY
  %loadMem_42ae8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 1
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %EAX.i215 = bitcast %union.anon* %2102 to i32*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 15
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RBP.i216
  %2107 = sub i64 %2106, 136
  %2108 = load i32, i32* %EAX.i215
  %2109 = zext i32 %2108 to i64
  %2110 = load i64, i64* %PC.i214
  %2111 = add i64 %2110, 6
  store i64 %2111, i64* %PC.i214
  %2112 = inttoptr i64 %2107 to i32*
  store i32 %2108, i32* %2112
  store %struct.Memory* %loadMem_42ae8d, %struct.Memory** %MEMORY
  %loadMem_42ae93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %PC.i213
  %2117 = add i64 %2116, 35
  %2118 = load i64, i64* %PC.i213
  %2119 = add i64 %2118, 5
  store i64 %2119, i64* %PC.i213
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2117, i64* %2120, align 8
  store %struct.Memory* %loadMem_42ae93, %struct.Memory** %MEMORY
  br label %block_.L_42aeb6

block_.L_42ae98:                                  ; preds = %block_42ae60
  %loadMem_42ae98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 7
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %PC.i211
  %2128 = add i64 %2127, 5
  store i64 %2128, i64* %PC.i211
  store i64 88, i64* %RDX.i212, align 8
  store %struct.Memory* %loadMem_42ae98, %struct.Memory** %MEMORY
  %loadMem_42ae9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 9
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RSI.i209 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i210
  %2139 = sub i64 %2138, 96
  %2140 = load i64, i64* %PC.i208
  %2141 = add i64 %2140, 4
  store i64 %2141, i64* %PC.i208
  store i64 %2139, i64* %RSI.i209, align 8
  store %struct.Memory* %loadMem_42ae9d, %struct.Memory** %MEMORY
  %loadMem_42aea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 11
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RDI.i207 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %PC.i206
  %2149 = add i64 %2148, 8
  store i64 %2149, i64* %PC.i206
  %2150 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2150, i64* %RDI.i207, align 8
  store %struct.Memory* %loadMem_42aea1, %struct.Memory** %MEMORY
  %loadMem_42aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %2157 = bitcast %union.anon* %2156 to %struct.anon.2*
  %AL.i205 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2157, i32 0, i32 0
  %2158 = load i64, i64* %PC.i204
  %2159 = add i64 %2158, 2
  store i64 %2159, i64* %PC.i204
  store i8 0, i8* %AL.i205, align 1
  store %struct.Memory* %loadMem_42aea9, %struct.Memory** %MEMORY
  %loadMem1_42aeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %PC.i203
  %2164 = add i64 %2163, -171483
  %2165 = load i64, i64* %PC.i203
  %2166 = add i64 %2165, 5
  %2167 = load i64, i64* %PC.i203
  %2168 = add i64 %2167, 5
  store i64 %2168, i64* %PC.i203
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2170 = load i64, i64* %2169, align 8
  %2171 = add i64 %2170, -8
  %2172 = inttoptr i64 %2171 to i64*
  store i64 %2166, i64* %2172
  store i64 %2171, i64* %2169, align 8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2164, i64* %2173, align 8
  store %struct.Memory* %loadMem1_42aeab, %struct.Memory** %MEMORY
  %loadMem2_42aeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aeab = load i64, i64* %3
  %2174 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42aeab)
  store %struct.Memory* %2174, %struct.Memory** %MEMORY
  %loadMem_42aeb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 1
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %2180 to i32*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RBP.i201
  %2185 = sub i64 %2184, 140
  %2186 = load i32, i32* %EAX.i200
  %2187 = zext i32 %2186 to i64
  %2188 = load i64, i64* %PC.i199
  %2189 = add i64 %2188, 6
  store i64 %2189, i64* %PC.i199
  %2190 = inttoptr i64 %2185 to i32*
  store i32 %2186, i32* %2190
  store %struct.Memory* %loadMem_42aeb0, %struct.Memory** %MEMORY
  br label %block_.L_42aeb6

block_.L_42aeb6:                                  ; preds = %block_.L_42ae98, %block_42ae75
  %loadMem_42aeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %PC.i198
  %2195 = add i64 %2194, 177
  %2196 = load i64, i64* %PC.i198
  %2197 = add i64 %2196, 5
  store i64 %2197, i64* %PC.i198
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2195, i64* %2198, align 8
  store %struct.Memory* %loadMem_42aeb6, %struct.Memory** %MEMORY
  br label %block_.L_42af67

block_.L_42aebb:                                  ; preds = %block_42ae4b, %block_42ae34
  %loadMem_42aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 33
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 15
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %RBP.i197
  %2206 = sub i64 %2205, 60
  %2207 = load i64, i64* %PC.i196
  %2208 = add i64 %2207, 4
  store i64 %2208, i64* %PC.i196
  %2209 = inttoptr i64 %2206 to i32*
  %2210 = load i32, i32* %2209
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2211, align 1
  %2212 = and i32 %2210, 255
  %2213 = call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2216, i8* %2217, align 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2218, align 1
  %2219 = icmp eq i32 %2210, 0
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2220, i8* %2221, align 1
  %2222 = lshr i32 %2210, 31
  %2223 = trunc i32 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2223, i8* %2224, align 1
  %2225 = lshr i32 %2210, 31
  %2226 = xor i32 %2222, %2225
  %2227 = add i32 %2226, %2225
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2229, i8* %2230, align 1
  store %struct.Memory* %loadMem_42aebb, %struct.Memory** %MEMORY
  %loadMem_42aebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %PC.i195
  %2235 = add i64 %2234, 99
  %2236 = load i64, i64* %PC.i195
  %2237 = add i64 %2236, 6
  %2238 = load i64, i64* %PC.i195
  %2239 = add i64 %2238, 6
  store i64 %2239, i64* %PC.i195
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2241 = load i8, i8* %2240, align 1
  store i8 %2241, i8* %BRANCH_TAKEN, align 1
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2243 = icmp ne i8 %2241, 0
  %2244 = select i1 %2243, i64 %2235, i64 %2237
  store i64 %2244, i64* %2242, align 8
  store %struct.Memory* %loadMem_42aebf, %struct.Memory** %MEMORY
  %loadBr_42aebf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aebf = icmp eq i8 %loadBr_42aebf, 1
  br i1 %cmpBr_42aebf, label %block_.L_42af22, label %block_42aec5

block_42aec5:                                     ; preds = %block_.L_42aebb
  %loadMem_42aec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2248, i64 0, i64 0
  %YMM0.i193 = bitcast %union.VectorReg* %2249 to %"class.std::bitset"*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2250, i64 0, i64 0
  %XMM0.i194 = bitcast %union.VectorReg* %2251 to %union.vec128_t*
  %2252 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %2253 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %2254 = bitcast %union.vec128_t* %XMM0.i194 to i8*
  %2255 = load i64, i64* %PC.i192
  %2256 = add i64 %2255, 3
  store i64 %2256, i64* %PC.i192
  %2257 = bitcast i8* %2253 to i64*
  %2258 = load i64, i64* %2257, align 1
  %2259 = getelementptr inbounds i8, i8* %2253, i64 8
  %2260 = bitcast i8* %2259 to i64*
  %2261 = load i64, i64* %2260, align 1
  %2262 = bitcast i8* %2254 to i64*
  %2263 = load i64, i64* %2262, align 1
  %2264 = getelementptr inbounds i8, i8* %2254, i64 8
  %2265 = bitcast i8* %2264 to i64*
  %2266 = load i64, i64* %2265, align 1
  %2267 = xor i64 %2263, %2258
  %2268 = xor i64 %2266, %2261
  %2269 = trunc i64 %2267 to i32
  %2270 = lshr i64 %2267, 32
  %2271 = trunc i64 %2270 to i32
  %2272 = bitcast i8* %2252 to i32*
  store i32 %2269, i32* %2272, align 1
  %2273 = getelementptr inbounds i8, i8* %2252, i64 4
  %2274 = bitcast i8* %2273 to i32*
  store i32 %2271, i32* %2274, align 1
  %2275 = trunc i64 %2268 to i32
  %2276 = getelementptr inbounds i8, i8* %2252, i64 8
  %2277 = bitcast i8* %2276 to i32*
  store i32 %2275, i32* %2277, align 1
  %2278 = lshr i64 %2268, 32
  %2279 = trunc i64 %2278 to i32
  %2280 = getelementptr inbounds i8, i8* %2252, i64 12
  %2281 = bitcast i8* %2280 to i32*
  store i32 %2279, i32* %2281, align 1
  store %struct.Memory* %loadMem_42aec5, %struct.Memory** %MEMORY
  %loadMem_42aec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 1
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 15
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %RBP.i191
  %2292 = sub i64 %2291, 40
  %2293 = load i64, i64* %PC.i189
  %2294 = add i64 %2293, 4
  store i64 %2294, i64* %PC.i189
  %2295 = inttoptr i64 %2292 to i64*
  %2296 = load i64, i64* %2295
  store i64 %2296, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_42aec8, %struct.Memory** %MEMORY
  %loadMem_42aecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 5
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RBP.i188
  %2307 = sub i64 %2306, 104
  %2308 = load i64, i64* %PC.i186
  %2309 = add i64 %2308, 4
  store i64 %2309, i64* %PC.i186
  %2310 = inttoptr i64 %2307 to i32*
  %2311 = load i32, i32* %2310
  %2312 = sext i32 %2311 to i64
  store i64 %2312, i64* %RCX.i187, align 8
  store %struct.Memory* %loadMem_42aecc, %struct.Memory** %MEMORY
  %loadMem_42aed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 1
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 5
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2322, i64 0, i64 1
  %YMM1.i185 = bitcast %union.VectorReg* %2323 to %"class.std::bitset"*
  %2324 = bitcast %"class.std::bitset"* %YMM1.i185 to i8*
  %2325 = load i64, i64* %RAX.i183
  %2326 = load i64, i64* %RCX.i184
  %2327 = mul i64 %2326, 4
  %2328 = add i64 %2327, %2325
  %2329 = load i64, i64* %PC.i182
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %PC.i182
  %2331 = inttoptr i64 %2328 to float*
  %2332 = load float, float* %2331
  %2333 = fpext float %2332 to double
  %2334 = bitcast i8* %2324 to double*
  store double %2333, double* %2334, align 1
  store %struct.Memory* %loadMem_42aed0, %struct.Memory** %MEMORY
  %loadMem_42aed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 0
  %XMM0.i178 = bitcast %union.VectorReg* %2339 to %union.vec128_t*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2340, i64 0, i64 1
  %XMM1.i179 = bitcast %union.VectorReg* %2341 to %union.vec128_t*
  %2342 = bitcast %union.vec128_t* %XMM1.i179 to i8*
  %2343 = bitcast %union.vec128_t* %XMM0.i178 to i8*
  %2344 = load i64, i64* %PC.i177
  %2345 = add i64 %2344, 4
  store i64 %2345, i64* %PC.i177
  %2346 = bitcast i8* %2342 to double*
  %2347 = load double, double* %2346, align 1
  %2348 = bitcast i8* %2343 to double*
  %2349 = load double, double* %2348, align 1
  %2350 = fcmp uno double %2347, %2349
  br i1 %2350, label %2351, label %2363

; <label>:2351:                                   ; preds = %block_42aec5
  %2352 = fadd double %2347, %2349
  %2353 = bitcast double %2352 to i64
  %2354 = and i64 %2353, 9221120237041090560
  %2355 = icmp eq i64 %2354, 9218868437227405312
  %2356 = and i64 %2353, 2251799813685247
  %2357 = icmp ne i64 %2356, 0
  %2358 = and i1 %2355, %2357
  br i1 %2358, label %2359, label %2369

; <label>:2359:                                   ; preds = %2351
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2361 = load i64, i64* %2360, align 8
  %2362 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2361, %struct.Memory* %loadMem_42aed5)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2363:                                   ; preds = %block_42aec5
  %2364 = fcmp ogt double %2347, %2349
  br i1 %2364, label %2369, label %2365

; <label>:2365:                                   ; preds = %2363
  %2366 = fcmp olt double %2347, %2349
  br i1 %2366, label %2369, label %2367

; <label>:2367:                                   ; preds = %2365
  %2368 = fcmp oeq double %2347, %2349
  br i1 %2368, label %2369, label %2376

; <label>:2369:                                   ; preds = %2367, %2365, %2363, %2351
  %2370 = phi i8 [ 0, %2363 ], [ 0, %2365 ], [ 1, %2367 ], [ 1, %2351 ]
  %2371 = phi i8 [ 0, %2363 ], [ 0, %2365 ], [ 0, %2367 ], [ 1, %2351 ]
  %2372 = phi i8 [ 0, %2363 ], [ 1, %2365 ], [ 0, %2367 ], [ 1, %2351 ]
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2370, i8* %2373, align 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2371, i8* %2374, align 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2372, i8* %2375, align 1
  br label %2376

; <label>:2376:                                   ; preds = %2369, %2367
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2377, align 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2378, align 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2379, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2359, %2376
  %2380 = phi %struct.Memory* [ %2362, %2359 ], [ %loadMem_42aed5, %2376 ]
  store %struct.Memory* %2380, %struct.Memory** %MEMORY
  %loadMem_42aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %PC.i176
  %2385 = add i64 %2384, 73
  %2386 = load i64, i64* %PC.i176
  %2387 = add i64 %2386, 6
  %2388 = load i64, i64* %PC.i176
  %2389 = add i64 %2388, 6
  store i64 %2389, i64* %PC.i176
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2391 = load i8, i8* %2390, align 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2393 = load i8, i8* %2392, align 1
  %2394 = or i8 %2393, %2391
  %2395 = icmp ne i8 %2394, 0
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %BRANCH_TAKEN, align 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2398 = select i1 %2395, i64 %2385, i64 %2387
  store i64 %2398, i64* %2397, align 8
  store %struct.Memory* %loadMem_42aed9, %struct.Memory** %MEMORY
  %loadBr_42aed9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aed9 = icmp eq i8 %loadBr_42aed9, 1
  br i1 %cmpBr_42aed9, label %block_.L_42af22, label %block_42aedf

block_42aedf:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_42aedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 33
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2402, i64 0, i64 0
  %YMM0.i175 = bitcast %union.VectorReg* %2403 to %"class.std::bitset"*
  %2404 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %2405 = load i64, i64* %PC.i174
  %2406 = add i64 %2405, ptrtoint (%G_0xb8079__rip__type* @G_0xb8079__rip_ to i64)
  %2407 = load i64, i64* %PC.i174
  %2408 = add i64 %2407, 8
  store i64 %2408, i64* %PC.i174
  %2409 = inttoptr i64 %2406 to double*
  %2410 = load double, double* %2409
  %2411 = bitcast i8* %2404 to double*
  store double %2410, double* %2411, align 1
  %2412 = getelementptr inbounds i8, i8* %2404, i64 8
  %2413 = bitcast i8* %2412 to double*
  store double 0.000000e+00, double* %2413, align 1
  store %struct.Memory* %loadMem_42aedf, %struct.Memory** %MEMORY
  %loadMem_42aee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 33
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 1
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %RBP.i173
  %2424 = sub i64 %2423, 40
  %2425 = load i64, i64* %PC.i171
  %2426 = add i64 %2425, 4
  store i64 %2426, i64* %PC.i171
  %2427 = inttoptr i64 %2424 to i64*
  %2428 = load i64, i64* %2427
  store i64 %2428, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_42aee7, %struct.Memory** %MEMORY
  %loadMem_42aeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 5
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RBP.i170
  %2439 = sub i64 %2438, 104
  %2440 = load i64, i64* %PC.i168
  %2441 = add i64 %2440, 4
  store i64 %2441, i64* %PC.i168
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442
  %2444 = sext i32 %2443 to i64
  store i64 %2444, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_42aeeb, %struct.Memory** %MEMORY
  %loadMem_42aeef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 1
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 5
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2454, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2455 to %"class.std::bitset"*
  %2456 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2457 = load i64, i64* %RAX.i166
  %2458 = load i64, i64* %RCX.i167
  %2459 = mul i64 %2458, 4
  %2460 = add i64 %2459, %2457
  %2461 = load i64, i64* %PC.i165
  %2462 = add i64 %2461, 5
  store i64 %2462, i64* %PC.i165
  %2463 = inttoptr i64 %2460 to float*
  %2464 = load float, float* %2463
  %2465 = fpext float %2464 to double
  %2466 = bitcast i8* %2456 to double*
  store double %2465, double* %2466, align 1
  store %struct.Memory* %loadMem_42aeef, %struct.Memory** %MEMORY
  %loadMem_42aef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2470, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2471 to %union.vec128_t*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2472, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2473 to %union.vec128_t*
  %2474 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2475 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2476 = load i64, i64* %PC.i163
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %PC.i163
  %2478 = bitcast i8* %2474 to double*
  %2479 = load double, double* %2478, align 1
  %2480 = bitcast i8* %2475 to double*
  %2481 = load double, double* %2480, align 1
  %2482 = fcmp uno double %2479, %2481
  br i1 %2482, label %2483, label %2495

; <label>:2483:                                   ; preds = %block_42aedf
  %2484 = fadd double %2479, %2481
  %2485 = bitcast double %2484 to i64
  %2486 = and i64 %2485, 9221120237041090560
  %2487 = icmp eq i64 %2486, 9218868437227405312
  %2488 = and i64 %2485, 2251799813685247
  %2489 = icmp ne i64 %2488, 0
  %2490 = and i1 %2487, %2489
  br i1 %2490, label %2491, label %2501

; <label>:2491:                                   ; preds = %2483
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2493 = load i64, i64* %2492, align 8
  %2494 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2493, %struct.Memory* %loadMem_42aef4)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:2495:                                   ; preds = %block_42aedf
  %2496 = fcmp ogt double %2479, %2481
  br i1 %2496, label %2501, label %2497

; <label>:2497:                                   ; preds = %2495
  %2498 = fcmp olt double %2479, %2481
  br i1 %2498, label %2501, label %2499

; <label>:2499:                                   ; preds = %2497
  %2500 = fcmp oeq double %2479, %2481
  br i1 %2500, label %2501, label %2508

; <label>:2501:                                   ; preds = %2499, %2497, %2495, %2483
  %2502 = phi i8 [ 0, %2495 ], [ 0, %2497 ], [ 1, %2499 ], [ 1, %2483 ]
  %2503 = phi i8 [ 0, %2495 ], [ 0, %2497 ], [ 0, %2499 ], [ 1, %2483 ]
  %2504 = phi i8 [ 0, %2495 ], [ 1, %2497 ], [ 0, %2499 ], [ 1, %2483 ]
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2502, i8* %2505, align 1
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2503, i8* %2506, align 1
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2504, i8* %2507, align 1
  br label %2508

; <label>:2508:                                   ; preds = %2501, %2499
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2509, align 1
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2510, align 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2511, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %2491, %2508
  %2512 = phi %struct.Memory* [ %2494, %2491 ], [ %loadMem_42aef4, %2508 ]
  store %struct.Memory* %2512, %struct.Memory** %MEMORY
  %loadMem_42aef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %PC.i162
  %2517 = add i64 %2516, 42
  %2518 = load i64, i64* %PC.i162
  %2519 = add i64 %2518, 6
  %2520 = load i64, i64* %PC.i162
  %2521 = add i64 %2520, 6
  store i64 %2521, i64* %PC.i162
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2523 = load i8, i8* %2522, align 1
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2525 = load i8, i8* %2524, align 1
  %2526 = or i8 %2525, %2523
  %2527 = icmp ne i8 %2526, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %BRANCH_TAKEN, align 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2530 = select i1 %2527, i64 %2517, i64 %2519
  store i64 %2530, i64* %2529, align 8
  store %struct.Memory* %loadMem_42aef8, %struct.Memory** %MEMORY
  %loadBr_42aef8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aef8 = icmp eq i8 %loadBr_42aef8, 1
  br i1 %cmpBr_42aef8, label %block_.L_42af22, label %block_42aefe

block_42aefe:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_42aefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 9
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RSI.i161 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %PC.i160
  %2538 = add i64 %2537, 10
  store i64 %2538, i64* %PC.i160
  store i64 ptrtoint (%G__0x57c6bc_type* @G__0x57c6bc to i64), i64* %RSI.i161, align 8
  store %struct.Memory* %loadMem_42aefe, %struct.Memory** %MEMORY
  %loadMem_42af08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 11
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RDI.i159 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %PC.i158
  %2546 = add i64 %2545, 8
  store i64 %2546, i64* %PC.i158
  %2547 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2547, i64* %RDI.i159, align 8
  store %struct.Memory* %loadMem_42af08, %struct.Memory** %MEMORY
  %loadMem_42af10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 1
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %2554 = bitcast %union.anon* %2553 to %struct.anon.2*
  %AL.i157 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2554, i32 0, i32 0
  %2555 = load i64, i64* %PC.i156
  %2556 = add i64 %2555, 2
  store i64 %2556, i64* %PC.i156
  store i8 0, i8* %AL.i157, align 1
  store %struct.Memory* %loadMem_42af10, %struct.Memory** %MEMORY
  %loadMem1_42af12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 33
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %PC.i155
  %2561 = add i64 %2560, -171586
  %2562 = load i64, i64* %PC.i155
  %2563 = add i64 %2562, 5
  %2564 = load i64, i64* %PC.i155
  %2565 = add i64 %2564, 5
  store i64 %2565, i64* %PC.i155
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2567 = load i64, i64* %2566, align 8
  %2568 = add i64 %2567, -8
  %2569 = inttoptr i64 %2568 to i64*
  store i64 %2563, i64* %2569
  store i64 %2568, i64* %2566, align 8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2561, i64* %2570, align 8
  store %struct.Memory* %loadMem1_42af12, %struct.Memory** %MEMORY
  %loadMem2_42af12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af12 = load i64, i64* %3
  %2571 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42af12)
  store %struct.Memory* %2571, %struct.Memory** %MEMORY
  %loadMem_42af17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %2577 to i32*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 15
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RBP.i153
  %2582 = sub i64 %2581, 144
  %2583 = load i32, i32* %EAX.i152
  %2584 = zext i32 %2583 to i64
  %2585 = load i64, i64* %PC.i151
  %2586 = add i64 %2585, 6
  store i64 %2586, i64* %PC.i151
  %2587 = inttoptr i64 %2582 to i32*
  store i32 %2583, i32* %2587
  store %struct.Memory* %loadMem_42af17, %struct.Memory** %MEMORY
  %loadMem_42af1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %PC.i150
  %2592 = add i64 %2591, 43
  %2593 = load i64, i64* %PC.i150
  %2594 = add i64 %2593, 5
  store i64 %2594, i64* %PC.i150
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2592, i64* %2595, align 8
  store %struct.Memory* %loadMem_42af1d, %struct.Memory** %MEMORY
  br label %block_.L_42af48

block_.L_42af22:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit, %routine_ucomisd__xmm0___xmm1.exit, %block_.L_42aebb
  %loadMem_42af22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 33
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 11
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RDI.i149 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %PC.i148
  %2603 = add i64 %2602, 8
  store i64 %2603, i64* %PC.i148
  %2604 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2604, i64* %RDI.i149, align 8
  store %struct.Memory* %loadMem_42af22, %struct.Memory** %MEMORY
  %loadMem_42af2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 9
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RSI.i146 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i147
  %2615 = sub i64 %2614, 48
  %2616 = load i64, i64* %PC.i145
  %2617 = add i64 %2616, 4
  store i64 %2617, i64* %PC.i145
  %2618 = inttoptr i64 %2615 to i64*
  %2619 = load i64, i64* %2618
  store i64 %2619, i64* %RSI.i146, align 8
  store %struct.Memory* %loadMem_42af2a, %struct.Memory** %MEMORY
  %loadMem_42af2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 1
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RBP.i144
  %2630 = sub i64 %2629, 40
  %2631 = load i64, i64* %PC.i142
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %PC.i142
  %2633 = inttoptr i64 %2630 to i64*
  %2634 = load i64, i64* %2633
  store i64 %2634, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_42af2e, %struct.Memory** %MEMORY
  %loadMem_42af32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 5
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 15
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %RBP.i141
  %2645 = sub i64 %2644, 104
  %2646 = load i64, i64* %PC.i139
  %2647 = add i64 %2646, 4
  store i64 %2647, i64* %PC.i139
  %2648 = inttoptr i64 %2645 to i32*
  %2649 = load i32, i32* %2648
  %2650 = sext i32 %2649 to i64
  store i64 %2650, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_42af32, %struct.Memory** %MEMORY
  %loadMem_42af36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 1
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 5
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2660, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2661 to %"class.std::bitset"*
  %2662 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2663 = load i64, i64* %RAX.i138
  %2664 = load i64, i64* %RCX.i
  %2665 = mul i64 %2664, 4
  %2666 = add i64 %2665, %2663
  %2667 = load i64, i64* %PC.i137
  %2668 = add i64 %2667, 5
  store i64 %2668, i64* %PC.i137
  %2669 = inttoptr i64 %2666 to float*
  %2670 = load float, float* %2669
  %2671 = fpext float %2670 to double
  %2672 = bitcast i8* %2662 to double*
  store double %2671, double* %2672, align 1
  store %struct.Memory* %loadMem_42af36, %struct.Memory** %MEMORY
  %loadMem_42af3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 33
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2675 to i64*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 1
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %2679 = bitcast %union.anon* %2678 to %struct.anon.2*
  %AL.i136 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2679, i32 0, i32 0
  %2680 = load i64, i64* %PC.i135
  %2681 = add i64 %2680, 2
  store i64 %2681, i64* %PC.i135
  store i8 1, i8* %AL.i136, align 1
  store %struct.Memory* %loadMem_42af3b, %struct.Memory** %MEMORY
  %loadMem1_42af3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %PC.i134
  %2686 = add i64 %2685, -171629
  %2687 = load i64, i64* %PC.i134
  %2688 = add i64 %2687, 5
  %2689 = load i64, i64* %PC.i134
  %2690 = add i64 %2689, 5
  store i64 %2690, i64* %PC.i134
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2692 = load i64, i64* %2691, align 8
  %2693 = add i64 %2692, -8
  %2694 = inttoptr i64 %2693 to i64*
  store i64 %2688, i64* %2694
  store i64 %2693, i64* %2691, align 8
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2686, i64* %2695, align 8
  store %struct.Memory* %loadMem1_42af3d, %struct.Memory** %MEMORY
  %loadMem2_42af3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af3d = load i64, i64* %3
  %2696 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42af3d)
  store %struct.Memory* %2696, %struct.Memory** %MEMORY
  %loadMem_42af42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 33
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 1
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %2702 to i32*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 15
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2705 to i64*
  %2706 = load i64, i64* %RBP.i131
  %2707 = sub i64 %2706, 148
  %2708 = load i32, i32* %EAX.i130
  %2709 = zext i32 %2708 to i64
  %2710 = load i64, i64* %PC.i129
  %2711 = add i64 %2710, 6
  store i64 %2711, i64* %PC.i129
  %2712 = inttoptr i64 %2707 to i32*
  store i32 %2708, i32* %2712
  store %struct.Memory* %loadMem_42af42, %struct.Memory** %MEMORY
  br label %block_.L_42af48

block_.L_42af48:                                  ; preds = %block_.L_42af22, %block_42aefe
  %loadMem_42af48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 9
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RSI.i128 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %PC.i127
  %2720 = add i64 %2719, 10
  store i64 %2720, i64* %PC.i127
  store i64 ptrtoint (%G__0x57f240_type* @G__0x57f240 to i64), i64* %RSI.i128, align 8
  store %struct.Memory* %loadMem_42af48, %struct.Memory** %MEMORY
  %loadMem_42af52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 33
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 11
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RDI.i126 = bitcast %union.anon* %2726 to i64*
  %2727 = load i64, i64* %PC.i125
  %2728 = add i64 %2727, 8
  store i64 %2728, i64* %PC.i125
  %2729 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2729, i64* %RDI.i126, align 8
  store %struct.Memory* %loadMem_42af52, %struct.Memory** %MEMORY
  %loadMem_42af5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 1
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %2736 = bitcast %union.anon* %2735 to %struct.anon.2*
  %AL.i124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2736, i32 0, i32 0
  %2737 = load i64, i64* %PC.i123
  %2738 = add i64 %2737, 2
  store i64 %2738, i64* %PC.i123
  store i8 0, i8* %AL.i124, align 1
  store %struct.Memory* %loadMem_42af5a, %struct.Memory** %MEMORY
  %loadMem1_42af5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %PC.i122
  %2743 = add i64 %2742, -171660
  %2744 = load i64, i64* %PC.i122
  %2745 = add i64 %2744, 5
  %2746 = load i64, i64* %PC.i122
  %2747 = add i64 %2746, 5
  store i64 %2747, i64* %PC.i122
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2749 = load i64, i64* %2748, align 8
  %2750 = add i64 %2749, -8
  %2751 = inttoptr i64 %2750 to i64*
  store i64 %2745, i64* %2751
  store i64 %2750, i64* %2748, align 8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2743, i64* %2752, align 8
  store %struct.Memory* %loadMem1_42af5c, %struct.Memory** %MEMORY
  %loadMem2_42af5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af5c = load i64, i64* %3
  %2753 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42af5c)
  store %struct.Memory* %2753, %struct.Memory** %MEMORY
  %loadMem_42af61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 1
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %2759 to i32*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 15
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %RBP.i119
  %2764 = sub i64 %2763, 152
  %2765 = load i32, i32* %EAX.i118
  %2766 = zext i32 %2765 to i64
  %2767 = load i64, i64* %PC.i117
  %2768 = add i64 %2767, 6
  store i64 %2768, i64* %PC.i117
  %2769 = inttoptr i64 %2764 to i32*
  store i32 %2765, i32* %2769
  store %struct.Memory* %loadMem_42af61, %struct.Memory** %MEMORY
  br label %block_.L_42af67

block_.L_42af67:                                  ; preds = %block_.L_42af48, %block_.L_42aeb6
  %loadMem_42af67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %PC.i116
  %2774 = add i64 %2773, 5
  %2775 = load i64, i64* %PC.i116
  %2776 = add i64 %2775, 5
  store i64 %2776, i64* %PC.i116
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2774, i64* %2777, align 8
  store %struct.Memory* %loadMem_42af67, %struct.Memory** %MEMORY
  br label %block_.L_42af6c

block_.L_42af6c:                                  ; preds = %block_.L_42af67
  %loadMem_42af6c = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %2788 = sub i64 %2787, 68
  %2789 = load i64, i64* %PC.i113
  %2790 = add i64 %2789, 3
  store i64 %2790, i64* %PC.i113
  %2791 = inttoptr i64 %2788 to i32*
  %2792 = load i32, i32* %2791
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_42af6c, %struct.Memory** %MEMORY
  %loadMem_42af6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 1
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RAX.i112
  %2801 = load i64, i64* %PC.i111
  %2802 = add i64 %2801, 3
  store i64 %2802, i64* %PC.i111
  %2803 = trunc i64 %2800 to i32
  %2804 = add i32 1, %2803
  %2805 = zext i32 %2804 to i64
  store i64 %2805, i64* %RAX.i112, align 8
  %2806 = icmp ult i32 %2804, %2803
  %2807 = icmp ult i32 %2804, 1
  %2808 = or i1 %2806, %2807
  %2809 = zext i1 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2809, i8* %2810, align 1
  %2811 = and i32 %2804, 255
  %2812 = call i32 @llvm.ctpop.i32(i32 %2811)
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2815, i8* %2816, align 1
  %2817 = xor i64 1, %2800
  %2818 = trunc i64 %2817 to i32
  %2819 = xor i32 %2818, %2804
  %2820 = lshr i32 %2819, 4
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2822, i8* %2823, align 1
  %2824 = icmp eq i32 %2804, 0
  %2825 = zext i1 %2824 to i8
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2825, i8* %2826, align 1
  %2827 = lshr i32 %2804, 31
  %2828 = trunc i32 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2828, i8* %2829, align 1
  %2830 = lshr i32 %2803, 31
  %2831 = xor i32 %2827, %2830
  %2832 = add i32 %2831, %2827
  %2833 = icmp eq i32 %2832, 2
  %2834 = zext i1 %2833 to i8
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2834, i8* %2835, align 1
  store %struct.Memory* %loadMem_42af6f, %struct.Memory** %MEMORY
  %loadMem_42af72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 1
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %2841 to i32*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 15
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2844 to i64*
  %2845 = load i64, i64* %RBP.i110
  %2846 = sub i64 %2845, 68
  %2847 = load i32, i32* %EAX.i109
  %2848 = zext i32 %2847 to i64
  %2849 = load i64, i64* %PC.i108
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i108
  %2851 = inttoptr i64 %2846 to i32*
  store i32 %2847, i32* %2851
  store %struct.Memory* %loadMem_42af72, %struct.Memory** %MEMORY
  %loadMem_42af75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %PC.i107
  %2856 = add i64 %2855, -337
  %2857 = load i64, i64* %PC.i107
  %2858 = add i64 %2857, 5
  store i64 %2858, i64* %PC.i107
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2856, i64* %2859, align 8
  store %struct.Memory* %loadMem_42af75, %struct.Memory** %MEMORY
  br label %block_.L_42ae24

block_.L_42af7a:                                  ; preds = %block_.L_42ae24
  %loadMem_42af7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 9
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RSI.i106 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %PC.i105
  %2867 = add i64 %2866, 10
  store i64 %2867, i64* %PC.i105
  store i64 ptrtoint (%G__0x57c6c0_type* @G__0x57c6c0 to i64), i64* %RSI.i106, align 8
  store %struct.Memory* %loadMem_42af7a, %struct.Memory** %MEMORY
  %loadMem_42af84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 33
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 11
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RDI.i104 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i103
  %2875 = add i64 %2874, 8
  store i64 %2875, i64* %PC.i103
  %2876 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2876, i64* %RDI.i104, align 8
  store %struct.Memory* %loadMem_42af84, %struct.Memory** %MEMORY
  %loadMem_42af8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 7
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 15
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %RBP.i102
  %2887 = sub i64 %2886, 100
  %2888 = load i64, i64* %PC.i100
  %2889 = add i64 %2888, 3
  store i64 %2889, i64* %PC.i100
  %2890 = inttoptr i64 %2887 to i32*
  %2891 = load i32, i32* %2890
  %2892 = zext i32 %2891 to i64
  store i64 %2892, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_42af8c, %struct.Memory** %MEMORY
  %loadMem_42af8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 1
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %2899 = bitcast %union.anon* %2898 to %struct.anon.2*
  %AL.i99 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2899, i32 0, i32 0
  %2900 = load i64, i64* %PC.i98
  %2901 = add i64 %2900, 2
  store i64 %2901, i64* %PC.i98
  store i8 0, i8* %AL.i99, align 1
  store %struct.Memory* %loadMem_42af8f, %struct.Memory** %MEMORY
  %loadMem1_42af91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %PC.i97
  %2906 = add i64 %2905, -171713
  %2907 = load i64, i64* %PC.i97
  %2908 = add i64 %2907, 5
  %2909 = load i64, i64* %PC.i97
  %2910 = add i64 %2909, 5
  store i64 %2910, i64* %PC.i97
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2912 = load i64, i64* %2911, align 8
  %2913 = add i64 %2912, -8
  %2914 = inttoptr i64 %2913 to i64*
  store i64 %2908, i64* %2914
  store i64 %2913, i64* %2911, align 8
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2906, i64* %2915, align 8
  store %struct.Memory* %loadMem1_42af91, %struct.Memory** %MEMORY
  %loadMem2_42af91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af91 = load i64, i64* %3
  %2916 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42af91)
  store %struct.Memory* %2916, %struct.Memory** %MEMORY
  %loadMem_42af96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 1
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %2922 to i32*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 15
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %RBP.i94
  %2927 = sub i64 %2926, 156
  %2928 = load i32, i32* %EAX.i93
  %2929 = zext i32 %2928 to i64
  %2930 = load i64, i64* %PC.i92
  %2931 = add i64 %2930, 6
  store i64 %2931, i64* %PC.i92
  %2932 = inttoptr i64 %2927 to i32*
  store i32 %2928, i32* %2932
  store %struct.Memory* %loadMem_42af96, %struct.Memory** %MEMORY
  %loadMem_42af9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 1
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 15
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %2941 to i64*
  %2942 = load i64, i64* %RBP.i91
  %2943 = sub i64 %2942, 64
  %2944 = load i64, i64* %PC.i89
  %2945 = add i64 %2944, 3
  store i64 %2945, i64* %PC.i89
  %2946 = inttoptr i64 %2943 to i32*
  %2947 = load i32, i32* %2946
  %2948 = zext i32 %2947 to i64
  store i64 %2948, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_42af9c, %struct.Memory** %MEMORY
  %loadMem_42af9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 33
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 1
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %RAX.i88
  %2956 = load i64, i64* %PC.i87
  %2957 = add i64 %2956, 3
  store i64 %2957, i64* %PC.i87
  %2958 = trunc i64 %2955 to i32
  %2959 = add i32 1, %2958
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RAX.i88, align 8
  %2961 = icmp ult i32 %2959, %2958
  %2962 = icmp ult i32 %2959, 1
  %2963 = or i1 %2961, %2962
  %2964 = zext i1 %2963 to i8
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2964, i8* %2965, align 1
  %2966 = and i32 %2959, 255
  %2967 = call i32 @llvm.ctpop.i32(i32 %2966)
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = xor i8 %2969, 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2970, i8* %2971, align 1
  %2972 = xor i64 1, %2955
  %2973 = trunc i64 %2972 to i32
  %2974 = xor i32 %2973, %2959
  %2975 = lshr i32 %2974, 4
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2977, i8* %2978, align 1
  %2979 = icmp eq i32 %2959, 0
  %2980 = zext i1 %2979 to i8
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2980, i8* %2981, align 1
  %2982 = lshr i32 %2959, 31
  %2983 = trunc i32 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2983, i8* %2984, align 1
  %2985 = lshr i32 %2958, 31
  %2986 = xor i32 %2982, %2985
  %2987 = add i32 %2986, %2982
  %2988 = icmp eq i32 %2987, 2
  %2989 = zext i1 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2989, i8* %2990, align 1
  store %struct.Memory* %loadMem_42af9f, %struct.Memory** %MEMORY
  %loadMem_42afa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 1
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %2996 to i32*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 15
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %RBP.i86
  %3001 = sub i64 %3000, 64
  %3002 = load i32, i32* %EAX.i85
  %3003 = zext i32 %3002 to i64
  %3004 = load i64, i64* %PC.i84
  %3005 = add i64 %3004, 3
  store i64 %3005, i64* %PC.i84
  %3006 = inttoptr i64 %3001 to i32*
  store i32 %3002, i32* %3006
  store %struct.Memory* %loadMem_42afa2, %struct.Memory** %MEMORY
  %loadMem_42afa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %PC.i83
  %3011 = add i64 %3010, -455
  %3012 = load i64, i64* %PC.i83
  %3013 = add i64 %3012, 5
  store i64 %3013, i64* %PC.i83
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3011, i64* %3014, align 8
  store %struct.Memory* %loadMem_42afa5, %struct.Memory** %MEMORY
  br label %block_.L_42adde

block_.L_42afaa:                                  ; preds = %block_.L_42adde
  %loadMem_42afaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 33
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 9
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %3020 to i64*
  %3021 = load i64, i64* %PC.i81
  %3022 = add i64 %3021, 10
  store i64 %3022, i64* %PC.i81
  store i64 ptrtoint (%G__0x57f23e_type* @G__0x57f23e to i64), i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_42afaa, %struct.Memory** %MEMORY
  %loadMem_42afb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 11
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %PC.i79
  %3030 = add i64 %3029, 8
  store i64 %3030, i64* %PC.i79
  %3031 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %3031, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_42afb4, %struct.Memory** %MEMORY
  %loadMem_42afbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %3038 = bitcast %union.anon* %3037 to %struct.anon.2*
  %AL.i78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3038, i32 0, i32 0
  %3039 = load i64, i64* %PC.i77
  %3040 = add i64 %3039, 2
  store i64 %3040, i64* %PC.i77
  store i8 0, i8* %AL.i78, align 1
  store %struct.Memory* %loadMem_42afbc, %struct.Memory** %MEMORY
  %loadMem1_42afbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %PC.i76
  %3045 = add i64 %3044, -171758
  %3046 = load i64, i64* %PC.i76
  %3047 = add i64 %3046, 5
  %3048 = load i64, i64* %PC.i76
  %3049 = add i64 %3048, 5
  store i64 %3049, i64* %PC.i76
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3051 = load i64, i64* %3050, align 8
  %3052 = add i64 %3051, -8
  %3053 = inttoptr i64 %3052 to i64*
  store i64 %3047, i64* %3053
  store i64 %3052, i64* %3050, align 8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3045, i64* %3054, align 8
  store %struct.Memory* %loadMem1_42afbe, %struct.Memory** %MEMORY
  %loadMem2_42afbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42afbe = load i64, i64* %3
  %3055 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42afbe)
  store %struct.Memory* %3055, %struct.Memory** %MEMORY
  %loadMem_42afc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 15
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %RBP.i73
  %3063 = sub i64 %3062, 64
  %3064 = load i64, i64* %PC.i72
  %3065 = add i64 %3064, 7
  store i64 %3065, i64* %PC.i72
  %3066 = inttoptr i64 %3063 to i32*
  store i32 0, i32* %3066
  store %struct.Memory* %loadMem_42afc3, %struct.Memory** %MEMORY
  %loadMem_42afca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 15
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3072 to i64*
  %3073 = load i64, i64* %RBP.i71
  %3074 = sub i64 %3073, 69
  %3075 = load i64, i64* %PC.i70
  %3076 = add i64 %3075, 4
  store i64 %3076, i64* %PC.i70
  %3077 = inttoptr i64 %3074 to i8*
  store i8 65, i8* %3077
  store %struct.Memory* %loadMem_42afca, %struct.Memory** %MEMORY
  %loadMem_42afce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 1
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %3083 to i32*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 15
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %RBP.i69
  %3088 = sub i64 %3087, 160
  %3089 = load i32, i32* %EAX.i68
  %3090 = zext i32 %3089 to i64
  %3091 = load i64, i64* %PC.i67
  %3092 = add i64 %3091, 6
  store i64 %3092, i64* %PC.i67
  %3093 = inttoptr i64 %3088 to i32*
  store i32 %3089, i32* %3093
  store %struct.Memory* %loadMem_42afce, %struct.Memory** %MEMORY
  br label %block_.L_42afd4

block_.L_42afd4:                                  ; preds = %block_.L_42aff9, %block_.L_42afaa
  %loadMem_42afd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 1
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 15
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RBP.i66
  %3104 = sub i64 %3103, 64
  %3105 = load i64, i64* %PC.i64
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i64
  %3107 = inttoptr i64 %3104 to i32*
  %3108 = load i32, i32* %3107
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_42afd4, %struct.Memory** %MEMORY
  %loadMem_42afd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 1
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %3115 to i32*
  %3116 = load i32, i32* %EAX.i63
  %3117 = zext i32 %3116 to i64
  %3118 = load i64, i64* %PC.i62
  %3119 = add i64 %3118, 7
  store i64 %3119, i64* %PC.i62
  %3120 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3121 = sub i32 %3116, %3120
  %3122 = icmp ult i32 %3116, %3120
  %3123 = zext i1 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3123, i8* %3124, align 1
  %3125 = and i32 %3121, 255
  %3126 = call i32 @llvm.ctpop.i32(i32 %3125)
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = xor i8 %3128, 1
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3129, i8* %3130, align 1
  %3131 = xor i32 %3120, %3116
  %3132 = xor i32 %3131, %3121
  %3133 = lshr i32 %3132, 4
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3135, i8* %3136, align 1
  %3137 = icmp eq i32 %3121, 0
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3138, i8* %3139, align 1
  %3140 = lshr i32 %3121, 31
  %3141 = trunc i32 %3140 to i8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3141, i8* %3142, align 1
  %3143 = lshr i32 %3116, 31
  %3144 = lshr i32 %3120, 31
  %3145 = xor i32 %3144, %3143
  %3146 = xor i32 %3140, %3143
  %3147 = add i32 %3146, %3145
  %3148 = icmp eq i32 %3147, 2
  %3149 = zext i1 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3149, i8* %3150, align 1
  store %struct.Memory* %loadMem_42afd7, %struct.Memory** %MEMORY
  %loadMem_42afde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %PC.i61
  %3155 = add i64 %3154, 79
  %3156 = load i64, i64* %PC.i61
  %3157 = add i64 %3156, 6
  %3158 = load i64, i64* %PC.i61
  %3159 = add i64 %3158, 6
  store i64 %3159, i64* %PC.i61
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3161 = load i8, i8* %3160, align 1
  %3162 = icmp ne i8 %3161, 0
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3164 = load i8, i8* %3163, align 1
  %3165 = icmp ne i8 %3164, 0
  %3166 = xor i1 %3162, %3165
  %3167 = xor i1 %3166, true
  %3168 = zext i1 %3167 to i8
  store i8 %3168, i8* %BRANCH_TAKEN, align 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3170 = select i1 %3166, i64 %3157, i64 %3155
  store i64 %3170, i64* %3169, align 8
  store %struct.Memory* %loadMem_42afde, %struct.Memory** %MEMORY
  %loadBr_42afde = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42afde = icmp eq i8 %loadBr_42afde, 1
  br i1 %cmpBr_42afde, label %block_.L_42b02d, label %block_42afe4

block_42afe4:                                     ; preds = %block_.L_42afd4
  %loadMem_42afe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 1
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 15
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RBP.i60
  %3181 = sub i64 %3180, 69
  %3182 = load i64, i64* %PC.i58
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i58
  %3184 = inttoptr i64 %3181 to i8*
  %3185 = load i8, i8* %3184
  %3186 = sext i8 %3185 to i64
  %3187 = and i64 %3186, 4294967295
  store i64 %3187, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_42afe4, %struct.Memory** %MEMORY
  %loadMem_42afe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 1
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %EAX.i57 = bitcast %union.anon* %3193 to i32*
  %3194 = load i32, i32* %EAX.i57
  %3195 = zext i32 %3194 to i64
  %3196 = load i64, i64* %PC.i56
  %3197 = add i64 %3196, 3
  store i64 %3197, i64* %PC.i56
  %3198 = sub i32 %3194, 73
  %3199 = icmp ult i32 %3194, 73
  %3200 = zext i1 %3199 to i8
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3200, i8* %3201, align 1
  %3202 = and i32 %3198, 255
  %3203 = call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3206, i8* %3207, align 1
  %3208 = xor i64 73, %3195
  %3209 = trunc i64 %3208 to i32
  %3210 = xor i32 %3209, %3198
  %3211 = lshr i32 %3210, 4
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3213, i8* %3214, align 1
  %3215 = icmp eq i32 %3198, 0
  %3216 = zext i1 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3216, i8* %3217, align 1
  %3218 = lshr i32 %3198, 31
  %3219 = trunc i32 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3219, i8* %3220, align 1
  %3221 = lshr i32 %3194, 31
  %3222 = xor i32 %3218, %3221
  %3223 = add i32 %3222, %3221
  %3224 = icmp eq i32 %3223, 2
  %3225 = zext i1 %3224 to i8
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3225, i8* %3226, align 1
  store %struct.Memory* %loadMem_42afe8, %struct.Memory** %MEMORY
  %loadMem_42afeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3229 to i64*
  %3230 = load i64, i64* %PC.i55
  %3231 = add i64 %3230, 14
  %3232 = load i64, i64* %PC.i55
  %3233 = add i64 %3232, 6
  %3234 = load i64, i64* %PC.i55
  %3235 = add i64 %3234, 6
  store i64 %3235, i64* %PC.i55
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3237 = load i8, i8* %3236, align 1
  %3238 = icmp eq i8 %3237, 0
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %BRANCH_TAKEN, align 1
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3241 = select i1 %3238, i64 %3231, i64 %3233
  store i64 %3241, i64* %3240, align 8
  store %struct.Memory* %loadMem_42afeb, %struct.Memory** %MEMORY
  %loadBr_42afeb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42afeb = icmp eq i8 %loadBr_42afeb, 1
  br i1 %cmpBr_42afeb, label %block_.L_42aff9, label %block_42aff1

block_42aff1:                                     ; preds = %block_42afe4
  %loadMem_42aff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 1
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %3248 = bitcast %union.anon* %3247 to %struct.anon.2*
  %AL.i53 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3248, i32 0, i32 0
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 15
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %RBP.i54
  %3253 = sub i64 %3252, 69
  %3254 = load i64, i64* %PC.i52
  %3255 = add i64 %3254, 3
  store i64 %3255, i64* %PC.i52
  %3256 = inttoptr i64 %3253 to i8*
  %3257 = load i8, i8* %3256
  store i8 %3257, i8* %AL.i53, align 1
  store %struct.Memory* %loadMem_42aff1, %struct.Memory** %MEMORY
  %loadMem_42aff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 1
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %3264 = bitcast %union.anon* %3263 to %struct.anon.2*
  %AL.i51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3264, i32 0, i32 0
  %3265 = load i8, i8* %AL.i51
  %3266 = zext i8 %3265 to i64
  %3267 = load i64, i64* %PC.i50
  %3268 = add i64 %3267, 2
  store i64 %3268, i64* %PC.i50
  %3269 = add i8 1, %3265
  store i8 %3269, i8* %AL.i51, align 1
  %3270 = icmp ult i8 %3269, %3265
  %3271 = icmp ult i8 %3269, 1
  %3272 = or i1 %3270, %3271
  %3273 = zext i1 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3273, i8* %3274, align 1
  %3275 = zext i8 %3269 to i32
  %3276 = call i32 @llvm.ctpop.i32(i32 %3275)
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  %3279 = xor i8 %3278, 1
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3279, i8* %3280, align 1
  %3281 = xor i64 1, %3266
  %3282 = trunc i64 %3281 to i8
  %3283 = xor i8 %3282, %3269
  %3284 = lshr i8 %3283, 4
  %3285 = and i8 %3284, 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3285, i8* %3286, align 1
  %3287 = icmp eq i8 %3269, 0
  %3288 = zext i1 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3288, i8* %3289, align 1
  %3290 = lshr i8 %3269, 7
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3290, i8* %3291, align 1
  %3292 = lshr i8 %3265, 7
  %3293 = xor i8 %3290, %3292
  %3294 = add i8 %3293, %3290
  %3295 = icmp eq i8 %3294, 2
  %3296 = zext i1 %3295 to i8
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3296, i8* %3297, align 1
  store %struct.Memory* %loadMem_42aff4, %struct.Memory** %MEMORY
  %loadMem_42aff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 1
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %3304 = bitcast %union.anon* %3303 to %struct.anon.2*
  %AL.i48 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3304, i32 0, i32 0
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 15
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %RBP.i49
  %3309 = sub i64 %3308, 69
  %3310 = load i8, i8* %AL.i48
  %3311 = zext i8 %3310 to i64
  %3312 = load i64, i64* %PC.i47
  %3313 = add i64 %3312, 3
  store i64 %3313, i64* %PC.i47
  %3314 = inttoptr i64 %3309 to i8*
  store i8 %3310, i8* %3314
  store %struct.Memory* %loadMem_42aff6, %struct.Memory** %MEMORY
  br label %block_.L_42aff9

block_.L_42aff9:                                  ; preds = %block_42aff1, %block_42afe4
  %loadMem_42aff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 9
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RBP.i46
  %3325 = sub i64 %3324, 96
  %3326 = load i64, i64* %PC.i44
  %3327 = add i64 %3326, 4
  store i64 %3327, i64* %PC.i44
  store i64 %3325, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_42aff9, %struct.Memory** %MEMORY
  %loadMem_42affd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 11
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RDI.i43 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %PC.i42
  %3335 = add i64 %3334, 8
  store i64 %3335, i64* %PC.i42
  %3336 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %3336, i64* %RDI.i43, align 8
  store %struct.Memory* %loadMem_42affd, %struct.Memory** %MEMORY
  %loadMem_42b005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 7
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i41
  %3347 = sub i64 %3346, 69
  %3348 = load i64, i64* %PC.i40
  %3349 = add i64 %3348, 4
  store i64 %3349, i64* %PC.i40
  %3350 = inttoptr i64 %3347 to i8*
  %3351 = load i8, i8* %3350
  %3352 = sext i8 %3351 to i64
  %3353 = and i64 %3352, 4294967295
  store i64 %3353, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42b005, %struct.Memory** %MEMORY
  %loadMem_42b009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 1
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %3360 = bitcast %union.anon* %3359 to %struct.anon.2*
  %AL.i39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3360, i32 0, i32 0
  %3361 = load i64, i64* %PC.i38
  %3362 = add i64 %3361, 2
  store i64 %3362, i64* %PC.i38
  store i8 0, i8* %AL.i39, align 1
  store %struct.Memory* %loadMem_42b009, %struct.Memory** %MEMORY
  %loadMem1_42b00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3365 to i64*
  %3366 = load i64, i64* %PC.i37
  %3367 = add i64 %3366, -171835
  %3368 = load i64, i64* %PC.i37
  %3369 = add i64 %3368, 5
  %3370 = load i64, i64* %PC.i37
  %3371 = add i64 %3370, 5
  store i64 %3371, i64* %PC.i37
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3373 = load i64, i64* %3372, align 8
  %3374 = add i64 %3373, -8
  %3375 = inttoptr i64 %3374 to i64*
  store i64 %3369, i64* %3375
  store i64 %3374, i64* %3372, align 8
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3367, i64* %3376, align 8
  store %struct.Memory* %loadMem1_42b00b, %struct.Memory** %MEMORY
  %loadMem2_42b00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b00b = load i64, i64* %3
  %3377 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42b00b)
  store %struct.Memory* %3377, %struct.Memory** %MEMORY
  %loadMem_42b010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 1
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %EAX.i33 = bitcast %union.anon* %3383 to i32*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 15
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3386 to i64*
  %3387 = load i64, i64* %RBP.i34
  %3388 = sub i64 %3387, 164
  %3389 = load i32, i32* %EAX.i33
  %3390 = zext i32 %3389 to i64
  %3391 = load i64, i64* %PC.i32
  %3392 = add i64 %3391, 6
  store i64 %3392, i64* %PC.i32
  %3393 = inttoptr i64 %3388 to i32*
  store i32 %3389, i32* %3393
  store %struct.Memory* %loadMem_42b010, %struct.Memory** %MEMORY
  %loadMem_42b016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RBP.i31
  %3404 = sub i64 %3403, 64
  %3405 = load i64, i64* %PC.i29
  %3406 = add i64 %3405, 3
  store i64 %3406, i64* %PC.i29
  %3407 = inttoptr i64 %3404 to i32*
  %3408 = load i32, i32* %3407
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_42b016, %struct.Memory** %MEMORY
  %loadMem_42b019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 1
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RAX.i
  %3417 = load i64, i64* %PC.i28
  %3418 = add i64 %3417, 3
  store i64 %3418, i64* %PC.i28
  %3419 = trunc i64 %3416 to i32
  %3420 = add i32 1, %3419
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RAX.i, align 8
  %3422 = icmp ult i32 %3420, %3419
  %3423 = icmp ult i32 %3420, 1
  %3424 = or i1 %3422, %3423
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3425, i8* %3426, align 1
  %3427 = and i32 %3420, 255
  %3428 = call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3431, i8* %3432, align 1
  %3433 = xor i64 1, %3416
  %3434 = trunc i64 %3433 to i32
  %3435 = xor i32 %3434, %3420
  %3436 = lshr i32 %3435, 4
  %3437 = trunc i32 %3436 to i8
  %3438 = and i8 %3437, 1
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3438, i8* %3439, align 1
  %3440 = icmp eq i32 %3420, 0
  %3441 = zext i1 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3441, i8* %3442, align 1
  %3443 = lshr i32 %3420, 31
  %3444 = trunc i32 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3444, i8* %3445, align 1
  %3446 = lshr i32 %3419, 31
  %3447 = xor i32 %3443, %3446
  %3448 = add i32 %3447, %3443
  %3449 = icmp eq i32 %3448, 2
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3450, i8* %3451, align 1
  store %struct.Memory* %loadMem_42b019, %struct.Memory** %MEMORY
  %loadMem_42b01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 1
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %3457 to i32*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 15
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RBP.i27
  %3462 = sub i64 %3461, 64
  %3463 = load i32, i32* %EAX.i26
  %3464 = zext i32 %3463 to i64
  %3465 = load i64, i64* %PC.i25
  %3466 = add i64 %3465, 3
  store i64 %3466, i64* %PC.i25
  %3467 = inttoptr i64 %3462 to i32*
  store i32 %3463, i32* %3467
  store %struct.Memory* %loadMem_42b01c, %struct.Memory** %MEMORY
  %loadMem_42b01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 5
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %3474 = bitcast %union.anon* %3473 to %struct.anon.2*
  %CL.i23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3474, i32 0, i32 0
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 15
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %RBP.i24
  %3479 = sub i64 %3478, 69
  %3480 = load i64, i64* %PC.i22
  %3481 = add i64 %3480, 3
  store i64 %3481, i64* %PC.i22
  %3482 = inttoptr i64 %3479 to i8*
  %3483 = load i8, i8* %3482
  store i8 %3483, i8* %CL.i23, align 1
  store %struct.Memory* %loadMem_42b01f, %struct.Memory** %MEMORY
  %loadMem_42b022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 5
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %3490 = bitcast %union.anon* %3489 to %struct.anon.2*
  %CL.i21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3490, i32 0, i32 0
  %3491 = load i8, i8* %CL.i21
  %3492 = zext i8 %3491 to i64
  %3493 = load i64, i64* %PC.i20
  %3494 = add i64 %3493, 3
  store i64 %3494, i64* %PC.i20
  %3495 = add i8 1, %3491
  store i8 %3495, i8* %CL.i21, align 1
  %3496 = icmp ult i8 %3495, %3491
  %3497 = icmp ult i8 %3495, 1
  %3498 = or i1 %3496, %3497
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3499, i8* %3500, align 1
  %3501 = zext i8 %3495 to i32
  %3502 = call i32 @llvm.ctpop.i32(i32 %3501)
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3505, i8* %3506, align 1
  %3507 = xor i64 1, %3492
  %3508 = trunc i64 %3507 to i8
  %3509 = xor i8 %3508, %3495
  %3510 = lshr i8 %3509, 4
  %3511 = and i8 %3510, 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3511, i8* %3512, align 1
  %3513 = icmp eq i8 %3495, 0
  %3514 = zext i1 %3513 to i8
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3514, i8* %3515, align 1
  %3516 = lshr i8 %3495, 7
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3516, i8* %3517, align 1
  %3518 = lshr i8 %3491, 7
  %3519 = xor i8 %3516, %3518
  %3520 = add i8 %3519, %3516
  %3521 = icmp eq i8 %3520, 2
  %3522 = zext i1 %3521 to i8
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3522, i8* %3523, align 1
  store %struct.Memory* %loadMem_42b022, %struct.Memory** %MEMORY
  %loadMem_42b025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 5
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %3530 = bitcast %union.anon* %3529 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3530, i32 0, i32 0
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 15
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %RBP.i19
  %3535 = sub i64 %3534, 69
  %3536 = load i8, i8* %CL.i
  %3537 = zext i8 %3536 to i64
  %3538 = load i64, i64* %PC.i18
  %3539 = add i64 %3538, 3
  store i64 %3539, i64* %PC.i18
  %3540 = inttoptr i64 %3535 to i8*
  store i8 %3536, i8* %3540
  store %struct.Memory* %loadMem_42b025, %struct.Memory** %MEMORY
  %loadMem_42b028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %PC.i17
  %3545 = add i64 %3544, -84
  %3546 = load i64, i64* %PC.i17
  %3547 = add i64 %3546, 5
  store i64 %3547, i64* %PC.i17
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3545, i64* %3548, align 8
  store %struct.Memory* %loadMem_42b028, %struct.Memory** %MEMORY
  br label %block_.L_42afd4

block_.L_42b02d:                                  ; preds = %block_.L_42afd4
  %loadMem_42b02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 9
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3554 to i64*
  %3555 = load i64, i64* %PC.i16
  %3556 = add i64 %3555, 10
  store i64 %3556, i64* %PC.i16
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42b02d, %struct.Memory** %MEMORY
  %loadMem_42b037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3559 to i64*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 11
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3562 to i64*
  %3563 = load i64, i64* %PC.i15
  %3564 = add i64 %3563, 8
  store i64 %3564, i64* %PC.i15
  %3565 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %3565, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42b037, %struct.Memory** %MEMORY
  %loadMem_42b03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 1
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %3572 = bitcast %union.anon* %3571 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3572, i32 0, i32 0
  %3573 = load i64, i64* %PC.i14
  %3574 = add i64 %3573, 2
  store i64 %3574, i64* %PC.i14
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_42b03f, %struct.Memory** %MEMORY
  %loadMem1_42b041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3577 to i64*
  %3578 = load i64, i64* %PC.i13
  %3579 = add i64 %3578, -171889
  %3580 = load i64, i64* %PC.i13
  %3581 = add i64 %3580, 5
  %3582 = load i64, i64* %PC.i13
  %3583 = add i64 %3582, 5
  store i64 %3583, i64* %PC.i13
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3585 = load i64, i64* %3584, align 8
  %3586 = add i64 %3585, -8
  %3587 = inttoptr i64 %3586 to i64*
  store i64 %3581, i64* %3587
  store i64 %3586, i64* %3584, align 8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3579, i64* %3588, align 8
  store %struct.Memory* %loadMem1_42b041, %struct.Memory** %MEMORY
  %loadMem2_42b041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b041 = load i64, i64* %3
  %3589 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_42b041)
  store %struct.Memory* %3589, %struct.Memory** %MEMORY
  %loadMem_42b046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3595 to i32*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i9
  %3600 = sub i64 %3599, 168
  %3601 = load i32, i32* %EAX.i
  %3602 = zext i32 %3601 to i64
  %3603 = load i64, i64* %PC.i8
  %3604 = add i64 %3603, 6
  store i64 %3604, i64* %PC.i8
  %3605 = inttoptr i64 %3600 to i32*
  store i32 %3601, i32* %3605
  store %struct.Memory* %loadMem_42b046, %struct.Memory** %MEMORY
  %loadMem_42b04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 13
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3611 to i64*
  %3612 = load i64, i64* %RSP.i
  %3613 = load i64, i64* %PC.i7
  %3614 = add i64 %3613, 7
  store i64 %3614, i64* %PC.i7
  %3615 = add i64 152, %3612
  store i64 %3615, i64* %RSP.i, align 8
  %3616 = icmp ult i64 %3615, %3612
  %3617 = icmp ult i64 %3615, 152
  %3618 = or i1 %3616, %3617
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3619, i8* %3620, align 1
  %3621 = trunc i64 %3615 to i32
  %3622 = and i32 %3621, 255
  %3623 = call i32 @llvm.ctpop.i32(i32 %3622)
  %3624 = trunc i32 %3623 to i8
  %3625 = and i8 %3624, 1
  %3626 = xor i8 %3625, 1
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3626, i8* %3627, align 1
  %3628 = xor i64 152, %3612
  %3629 = xor i64 %3628, %3615
  %3630 = lshr i64 %3629, 4
  %3631 = trunc i64 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3632, i8* %3633, align 1
  %3634 = icmp eq i64 %3615, 0
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3635, i8* %3636, align 1
  %3637 = lshr i64 %3615, 63
  %3638 = trunc i64 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3638, i8* %3639, align 1
  %3640 = lshr i64 %3612, 63
  %3641 = xor i64 %3637, %3640
  %3642 = add i64 %3641, %3637
  %3643 = icmp eq i64 %3642, 2
  %3644 = zext i1 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3644, i8* %3645, align 1
  store %struct.Memory* %loadMem_42b04c, %struct.Memory** %MEMORY
  %loadMem_42b053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 3
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %3651 to i64*
  %3652 = load i64, i64* %PC.i6
  %3653 = add i64 %3652, 1
  store i64 %3653, i64* %PC.i6
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3655 = load i64, i64* %3654, align 8
  %3656 = add i64 %3655, 8
  %3657 = inttoptr i64 %3655 to i64*
  %3658 = load i64, i64* %3657
  store i64 %3658, i64* %RBX.i, align 8
  store i64 %3656, i64* %3654, align 8
  store %struct.Memory* %loadMem_42b053, %struct.Memory** %MEMORY
  %loadMem_42b054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 29
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %R14.i = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i5
  %3666 = add i64 %3665, 2
  store i64 %3666, i64* %PC.i5
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3668 = load i64, i64* %3667, align 8
  %3669 = add i64 %3668, 8
  %3670 = inttoptr i64 %3668 to i64*
  %3671 = load i64, i64* %3670
  store i64 %3671, i64* %R14.i, align 8
  store i64 %3669, i64* %3667, align 8
  store %struct.Memory* %loadMem_42b054, %struct.Memory** %MEMORY
  %loadMem_42b056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 31
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %R15.i = bitcast %union.anon* %3677 to i64*
  %3678 = load i64, i64* %PC.i4
  %3679 = add i64 %3678, 2
  store i64 %3679, i64* %PC.i4
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3681 = load i64, i64* %3680, align 8
  %3682 = add i64 %3681, 8
  %3683 = inttoptr i64 %3681 to i64*
  %3684 = load i64, i64* %3683
  store i64 %3684, i64* %R15.i, align 8
  store i64 %3682, i64* %3680, align 8
  store %struct.Memory* %loadMem_42b056, %struct.Memory** %MEMORY
  %loadMem_42b058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %PC.i2
  %3692 = add i64 %3691, 1
  store i64 %3692, i64* %PC.i2
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3694 = load i64, i64* %3693, align 8
  %3695 = add i64 %3694, 8
  %3696 = inttoptr i64 %3694 to i64*
  %3697 = load i64, i64* %3696
  store i64 %3697, i64* %RBP.i3, align 8
  store i64 %3695, i64* %3693, align 8
  store %struct.Memory* %loadMem_42b058, %struct.Memory** %MEMORY
  %loadMem_42b059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3700 to i64*
  %3701 = load i64, i64* %PC.i1
  %3702 = add i64 %3701, 1
  store i64 %3702, i64* %PC.i1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3705 = load i64, i64* %3704, align 8
  %3706 = inttoptr i64 %3705 to i64*
  %3707 = load i64, i64* %3706
  store i64 %3707, i64* %3703, align 8
  %3708 = add i64 %3705, 8
  store i64 %3708, i64* %3704, align 8
  store %struct.Memory* %loadMem_42b059, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42b059
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

define %struct.Memory* @routine_movq__0x57f23e___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f23e_type* @G__0x57f23e to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 2, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x20___r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R11D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 32, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 20, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx___r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__r9d__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R15
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R14
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__r10d__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x25__MINUS0x60__rbp__rdi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -96
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 37, i8* %18
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

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 3, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 3
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
  %26 = xor i64 3, %9
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

define %struct.Memory* @routine_movb__0x63__MINUS0x60__rbp__rdi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -96
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 99, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_movb__0x0__MINUS0x60__rbp__rdi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, -96
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 0, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %11, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movb__0x41__MINUS0x45__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 69
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 65, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
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

define %struct.Memory* @routine_jge_.L_42adbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsbl_MINUS0x45__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 69
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x49___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 73
  %14 = icmp ult i32 %9, 73
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
  %23 = xor i64 73, %10
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

define %struct.Memory* @routine_jne_.L_42ad8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movb_MINUS0x45__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 69
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i8 1, %10
  store i8 %14, i8* %AL, align 1
  %15 = icmp ult i8 %14, %10
  %16 = icmp ult i8 %14, 1
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = zext i8 %14 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %11
  %27 = trunc i64 %26 to i8
  %28 = xor i8 %27, %14
  %29 = lshr i8 %28, 4
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i8 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i8 %14, 7
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i8 %10, 7
  %38 = xor i8 %35, %37
  %39 = add i8 %38, %35
  %40 = icmp eq i8 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0x45__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 69
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x45__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 69
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movb_MINUS0x45__rbp____cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 69
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addb__0x1___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = add i8 1, %10
  store i8 %14, i8* %CL, align 1
  %15 = icmp ult i8 %14, %10
  %16 = icmp ult i8 %14, 1
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = zext i8 %14 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %11
  %27 = trunc i64 %26 to i8
  %28 = xor i8 %27, %14
  %29 = lshr i8 %28, 4
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i8 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i8 %14, 7
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i8 %10, 7
  %38 = xor i8 %35, %37
  %39 = add i8 %38, %35
  %40 = icmp eq i8 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x45__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 69
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42ad65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x586073___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42afaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57c6b7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c6b7_type* @G__0x57c6b7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jge_.L_42af7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_imull__0x14__MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RAX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x15___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 21
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
  %26 = xor i64 21, %9
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

define %struct.Memory* @routine_addl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_42aebb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_42ae98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x4f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 79, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42aeb6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x58___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 88, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42af67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42af22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jbe_.L_42af22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0xb8079__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb8079__rip__type* @G_0xb8079__rip_ to i64)
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movq__0x57c6bc___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c6bc_type* @G__0x57c6bc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42af48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57f240___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f240_type* @G__0x57f240 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42af6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42ae24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57c6c0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c6c0_type* @G__0x57c6c0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42adde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57f23e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f23e_type* @G__0x57f23e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42b02d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42aff9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42afd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
