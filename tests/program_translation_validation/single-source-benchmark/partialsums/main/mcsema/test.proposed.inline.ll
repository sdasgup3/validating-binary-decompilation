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
%G__0x400c58_type = type <{ [8 x i8] }>
%G__0x400c61_type = type <{ [8 x i8] }>
%G__0x400c69_type = type <{ [8 x i8] }>
%G__0x400c70_type = type <{ [8 x i8] }>
%G__0x400c79_type = type <{ [8 x i8] }>
%G__0x400c85_type = type <{ [8 x i8] }>
%G__0x400c93_type = type <{ [8 x i8] }>
%G__0x400ca0_type = type <{ [8 x i8] }>
%G__0x400cac_type = type <{ [8 x i8] }>
%G__0x400cb5_type = type <{ [8 x i8] }>
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
@G__0x400c58 = global %G__0x400c58_type zeroinitializer
@G__0x400c61 = global %G__0x400c61_type zeroinitializer
@G__0x400c69 = global %G__0x400c69_type zeroinitializer
@G__0x400c70 = global %G__0x400c70_type zeroinitializer
@G__0x400c79 = global %G__0x400c79_type zeroinitializer
@G__0x400c85 = global %G__0x400c85_type zeroinitializer
@G__0x400c93 = global %G__0x400c93_type zeroinitializer
@G__0x400ca0 = global %G__0x400ca0_type zeroinitializer
@G__0x400cac = global %G__0x400cac_type zeroinitializer
@G__0x400cb5 = global %G__0x400cb5_type zeroinitializer

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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @sub_400660.make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4006a0.sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4006d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006d0, %struct.Memory** %MEMORY
  %loadMem_4006d1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006d1, %struct.Memory** %MEMORY
  %loadMem_4006d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i24 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i24
  %36 = load i64, i64* %PC.i23
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i23
  %38 = sub i64 %35, 336
  store i64 %38, i64* %RSP.i24, align 8
  %39 = icmp ult i64 %35, 336
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
  %49 = xor i64 336, %35
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
  store %struct.Memory* %loadMem_4006d4, %struct.Memory** %MEMORY
  %loadMem_4006db = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i to i8*
  %77 = load i64, i64* %PC.i39
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i39
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_4006db, %struct.Memory** %MEMORY
  %loadMem_4006de = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i56
  %111 = sub i64 %110, 4
  %112 = load i64, i64* %PC.i55
  %113 = add i64 %112, 7
  store i64 %113, i64* %PC.i55
  %114 = inttoptr i64 %111 to i32*
  store i32 0, i32* %114
  store %struct.Memory* %loadMem_4006de, %struct.Memory** %MEMORY
  %loadMem_4006e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %120 to i32*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i72
  %125 = sub i64 %124, 8
  %126 = load i32, i32* %EDI.i
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC.i71
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC.i71
  %130 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %130
  store %struct.Memory* %loadMem_4006e5, %struct.Memory** %MEMORY
  %loadMem_4006e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RSI.i87 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RBP.i88
  %141 = sub i64 %140, 16
  %142 = load i64, i64* %RSI.i87
  %143 = load i64, i64* %PC.i86
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i86
  %145 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %145
  store %struct.Memory* %loadMem_4006e8, %struct.Memory** %MEMORY
  %loadMem_4006ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %152, i64 0, i64 0
  %XMM0.i104 = bitcast %union.VectorReg* %153 to %union.vec128_t*
  %154 = load i64, i64* %RBP.i103
  %155 = sub i64 %154, 24
  %156 = bitcast %union.vec128_t* %XMM0.i104 to i8*
  %157 = load i64, i64* %PC.i102
  %158 = add i64 %157, 5
  store i64 %158, i64* %PC.i102
  %159 = bitcast i8* %156 to double*
  %160 = load double, double* %159, align 1
  %161 = inttoptr i64 %155 to double*
  store double %160, double* %161
  store %struct.Memory* %loadMem_4006ec, %struct.Memory** %MEMORY
  %loadMem_4006f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %169 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %168, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %169 to %union.vec128_t*
  %170 = load i64, i64* %RBP.i120
  %171 = sub i64 %170, 32
  %172 = bitcast %union.vec128_t* %XMM0.i121 to i8*
  %173 = load i64, i64* %PC.i119
  %174 = add i64 %173, 5
  store i64 %174, i64* %PC.i119
  %175 = bitcast i8* %172 to double*
  %176 = load double, double* %175, align 1
  %177 = inttoptr i64 %171 to double*
  store double %176, double* %177
  store %struct.Memory* %loadMem_4006f1, %struct.Memory** %MEMORY
  %loadMem_4006f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 33
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %184, i64 0, i64 0
  %XMM0.i137 = bitcast %union.VectorReg* %185 to %union.vec128_t*
  %186 = load i64, i64* %RBP.i136
  %187 = sub i64 %186, 40
  %188 = bitcast %union.vec128_t* %XMM0.i137 to i8*
  %189 = load i64, i64* %PC.i135
  %190 = add i64 %189, 5
  store i64 %190, i64* %PC.i135
  %191 = bitcast i8* %188 to double*
  %192 = load double, double* %191, align 1
  %193 = inttoptr i64 %187 to double*
  store double %192, double* %193
  store %struct.Memory* %loadMem_4006f6, %struct.Memory** %MEMORY
  %loadMem_4006fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %200, i64 0, i64 0
  %XMM0.i247 = bitcast %union.VectorReg* %201 to %union.vec128_t*
  %202 = load i64, i64* %RBP.i246
  %203 = sub i64 %202, 48
  %204 = bitcast %union.vec128_t* %XMM0.i247 to i8*
  %205 = load i64, i64* %PC.i245
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC.i245
  %207 = bitcast i8* %204 to double*
  %208 = load double, double* %207, align 1
  %209 = inttoptr i64 %203 to double*
  store double %208, double* %209
  store %struct.Memory* %loadMem_4006fb, %struct.Memory** %MEMORY
  %loadMem_400700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 15
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RBP.i365
  %217 = sub i64 %216, 276
  %218 = load i64, i64* %PC.i364
  %219 = add i64 %218, 10
  store i64 %219, i64* %PC.i364
  %220 = inttoptr i64 %217 to i32*
  store i32 2500000, i32* %220
  store %struct.Memory* %loadMem_400700, %struct.Memory** %MEMORY
  %loadMem_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 0
  %XMM0.i387 = bitcast %union.VectorReg* %228 to %union.vec128_t*
  %229 = load i64, i64* %RBP.i386
  %230 = sub i64 %229, 288
  %231 = bitcast %union.vec128_t* %XMM0.i387 to i8*
  %232 = load i64, i64* %PC.i385
  %233 = add i64 %232, 8
  store i64 %233, i64* %PC.i385
  %234 = bitcast i8* %231 to double*
  %235 = load double, double* %234, align 1
  %236 = inttoptr i64 %230 to double*
  store double %235, double* %236
  store %struct.Memory* %loadMem_40070a, %struct.Memory** %MEMORY
  %loadMem_400712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %243, i64 0, i64 1
  %YMM1.i478 = bitcast %union.VectorReg* %244 to %"class.std::bitset"*
  %245 = bitcast %"class.std::bitset"* %YMM1.i478 to i8*
  %246 = load i64, i64* %RBP.i477
  %247 = sub i64 %246, 288
  %248 = load i64, i64* %PC.i476
  %249 = add i64 %248, 8
  store i64 %249, i64* %PC.i476
  %250 = inttoptr i64 %247 to double*
  %251 = load double, double* %250
  %252 = bitcast i8* %245 to double*
  store double %251, double* %252, align 1
  %253 = getelementptr inbounds i8, i8* %245, i64 8
  %254 = bitcast i8* %253 to double*
  store double 0.000000e+00, double* %254, align 1
  store %struct.Memory* %loadMem_400712, %struct.Memory** %MEMORY
  %loadMem1_40071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %PC.i475
  %259 = add i64 %258, -186
  %260 = load i64, i64* %PC.i475
  %261 = add i64 %260, 5
  %262 = load i64, i64* %PC.i475
  %263 = add i64 %262, 5
  store i64 %263, i64* %PC.i475
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %261, i64* %267
  store i64 %266, i64* %264, align 8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %259, i64* %268, align 8
  store %struct.Memory* %loadMem1_40071a, %struct.Memory** %MEMORY
  %loadMem2_40071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40071a = load i64, i64* %3
  %call2_40071a = call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %loadPC_40071a, %struct.Memory* %loadMem2_40071a)
  store %struct.Memory* %call2_40071a, %struct.Memory** %MEMORY
  %loadMem_40071f = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 1
  %YMM1.i474 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = bitcast %"class.std::bitset"* %YMM1.i474 to i8*
  %275 = load i64, i64* %PC.i473
  %276 = add i64 %275, 1305
  %277 = load i64, i64* %PC.i473
  %278 = add i64 %277, 8
  store i64 %278, i64* %PC.i473
  %279 = inttoptr i64 %276 to double*
  %280 = load double, double* %279
  %281 = bitcast i8* %274 to double*
  store double %280, double* %281, align 1
  %282 = getelementptr inbounds i8, i8* %274, i64 8
  %283 = bitcast i8* %282 to double*
  store double 0.000000e+00, double* %283, align 1
  store %struct.Memory* %loadMem_40071f, %struct.Memory** %MEMORY
  %loadMem_400727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0.i472 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = load i64, i64* %RBP.i471
  %293 = sub i64 %292, 144
  %294 = bitcast %union.vec128_t* %XMM0.i472 to i8*
  %295 = load i64, i64* %PC.i470
  %296 = add i64 %295, 8
  store i64 %296, i64* %PC.i470
  %297 = bitcast i8* %294 to double*
  %298 = load double, double* %297, align 1
  %299 = getelementptr inbounds i8, i8* %294, i64 8
  %300 = bitcast i8* %299 to double*
  %301 = load double, double* %300, align 1
  %302 = inttoptr i64 %293 to double*
  store double %298, double* %302
  %303 = add i64 %293, 8
  %304 = inttoptr i64 %303 to double*
  store double %301, double* %304
  store %struct.Memory* %loadMem_400727, %struct.Memory** %MEMORY
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 0
  %YMM0.i468 = bitcast %union.VectorReg* %309 to %"class.std::bitset"*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 1
  %XMM1.i469 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = bitcast %"class.std::bitset"* %YMM0.i468 to i8*
  %313 = bitcast %union.vec128_t* %XMM1.i469 to i8*
  %314 = load i64, i64* %PC.i467
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC.i467
  %316 = bitcast i8* %313 to <2 x i32>*
  %317 = load <2 x i32>, <2 x i32>* %316, align 1
  %318 = getelementptr inbounds i8, i8* %313, i64 8
  %319 = bitcast i8* %318 to <2 x i32>*
  %320 = load <2 x i32>, <2 x i32>* %319, align 1
  %321 = extractelement <2 x i32> %317, i32 0
  %322 = bitcast i8* %312 to i32*
  store i32 %321, i32* %322, align 1
  %323 = extractelement <2 x i32> %317, i32 1
  %324 = getelementptr inbounds i8, i8* %312, i64 4
  %325 = bitcast i8* %324 to i32*
  store i32 %323, i32* %325, align 1
  %326 = extractelement <2 x i32> %320, i32 0
  %327 = getelementptr inbounds i8, i8* %312, i64 8
  %328 = bitcast i8* %327 to i32*
  store i32 %326, i32* %328, align 1
  %329 = extractelement <2 x i32> %320, i32 1
  %330 = getelementptr inbounds i8, i8* %312, i64 12
  %331 = bitcast i8* %330 to i32*
  store i32 %329, i32* %331, align 1
  store %struct.Memory* %loadMem_40072f, %struct.Memory** %MEMORY
  %loadMem1_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %PC.i466
  %336 = add i64 %335, -210
  %337 = load i64, i64* %PC.i466
  %338 = add i64 %337, 5
  %339 = load i64, i64* %PC.i466
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC.i466
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %338, i64* %344
  store i64 %343, i64* %341, align 8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %336, i64* %345, align 8
  store %struct.Memory* %loadMem1_400732, %struct.Memory** %MEMORY
  %loadMem2_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400732 = load i64, i64* %3
  %call2_400732 = call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %loadPC_400732, %struct.Memory* %loadMem2_400732)
  store %struct.Memory* %call2_400732, %struct.Memory** %MEMORY
  %loadMem_400737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %349, i64 0, i64 1
  %YMM1.i465 = bitcast %union.VectorReg* %350 to %"class.std::bitset"*
  %351 = bitcast %"class.std::bitset"* %YMM1.i465 to i8*
  %352 = load i64, i64* %PC.i464
  %353 = add i64 %352, 1297
  %354 = load i64, i64* %PC.i464
  %355 = add i64 %354, 8
  store i64 %355, i64* %PC.i464
  %356 = inttoptr i64 %353 to double*
  %357 = load double, double* %356
  %358 = bitcast i8* %351 to double*
  store double %357, double* %358, align 1
  %359 = getelementptr inbounds i8, i8* %351, i64 8
  %360 = bitcast i8* %359 to double*
  store double 0.000000e+00, double* %360, align 1
  store %struct.Memory* %loadMem_400737, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %367, i64 0, i64 0
  %XMM0.i463 = bitcast %union.VectorReg* %368 to %union.vec128_t*
  %369 = load i64, i64* %RBP.i462
  %370 = sub i64 %369, 160
  %371 = bitcast %union.vec128_t* %XMM0.i463 to i8*
  %372 = load i64, i64* %PC.i461
  %373 = add i64 %372, 8
  store i64 %373, i64* %PC.i461
  %374 = bitcast i8* %371 to double*
  %375 = load double, double* %374, align 1
  %376 = getelementptr inbounds i8, i8* %371, i64 8
  %377 = bitcast i8* %376 to double*
  %378 = load double, double* %377, align 1
  %379 = inttoptr i64 %370 to double*
  store double %375, double* %379
  %380 = add i64 %370, 8
  %381 = inttoptr i64 %380 to double*
  store double %378, double* %381
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %385, i64 0, i64 0
  %YMM0.i459 = bitcast %union.VectorReg* %386 to %"class.std::bitset"*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %387, i64 0, i64 1
  %XMM1.i460 = bitcast %union.VectorReg* %388 to %union.vec128_t*
  %389 = bitcast %"class.std::bitset"* %YMM0.i459 to i8*
  %390 = bitcast %union.vec128_t* %XMM1.i460 to i8*
  %391 = load i64, i64* %PC.i458
  %392 = add i64 %391, 3
  store i64 %392, i64* %PC.i458
  %393 = bitcast i8* %390 to <2 x i32>*
  %394 = load <2 x i32>, <2 x i32>* %393, align 1
  %395 = getelementptr inbounds i8, i8* %390, i64 8
  %396 = bitcast i8* %395 to <2 x i32>*
  %397 = load <2 x i32>, <2 x i32>* %396, align 1
  %398 = extractelement <2 x i32> %394, i32 0
  %399 = bitcast i8* %389 to i32*
  store i32 %398, i32* %399, align 1
  %400 = extractelement <2 x i32> %394, i32 1
  %401 = getelementptr inbounds i8, i8* %389, i64 4
  %402 = bitcast i8* %401 to i32*
  store i32 %400, i32* %402, align 1
  %403 = extractelement <2 x i32> %397, i32 0
  %404 = getelementptr inbounds i8, i8* %389, i64 8
  %405 = bitcast i8* %404 to i32*
  store i32 %403, i32* %405, align 1
  %406 = extractelement <2 x i32> %397, i32 1
  %407 = getelementptr inbounds i8, i8* %389, i64 12
  %408 = bitcast i8* %407 to i32*
  store i32 %406, i32* %408, align 1
  store %struct.Memory* %loadMem_400747, %struct.Memory** %MEMORY
  %loadMem1_40074a = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i457
  %413 = add i64 %412, -234
  %414 = load i64, i64* %PC.i457
  %415 = add i64 %414, 5
  %416 = load i64, i64* %PC.i457
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC.i457
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %415, i64* %421
  store i64 %420, i64* %418, align 8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %413, i64* %422, align 8
  store %struct.Memory* %loadMem1_40074a, %struct.Memory** %MEMORY
  %loadMem2_40074a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40074a = load i64, i64* %3
  %call2_40074a = call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %loadPC_40074a, %struct.Memory* %loadMem2_40074a)
  store %struct.Memory* %call2_40074a, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %426, i64 0, i64 1
  %YMM1.i456 = bitcast %union.VectorReg* %427 to %"class.std::bitset"*
  %428 = bitcast %"class.std::bitset"* %YMM1.i456 to i8*
  %429 = load i64, i64* %PC.i455
  %430 = add i64 %429, 1265
  %431 = load i64, i64* %PC.i455
  %432 = add i64 %431, 8
  store i64 %432, i64* %PC.i455
  %433 = inttoptr i64 %430 to double*
  %434 = load double, double* %433
  %435 = bitcast i8* %428 to double*
  store double %434, double* %435, align 1
  %436 = getelementptr inbounds i8, i8* %428, i64 8
  %437 = bitcast i8* %436 to double*
  store double 0.000000e+00, double* %437, align 1
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem_400757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %444, i64 0, i64 0
  %XMM0.i454 = bitcast %union.VectorReg* %445 to %union.vec128_t*
  %446 = load i64, i64* %RBP.i453
  %447 = sub i64 %446, 176
  %448 = bitcast %union.vec128_t* %XMM0.i454 to i8*
  %449 = load i64, i64* %PC.i452
  %450 = add i64 %449, 8
  store i64 %450, i64* %PC.i452
  %451 = bitcast i8* %448 to double*
  %452 = load double, double* %451, align 1
  %453 = getelementptr inbounds i8, i8* %448, i64 8
  %454 = bitcast i8* %453 to double*
  %455 = load double, double* %454, align 1
  %456 = inttoptr i64 %447 to double*
  store double %452, double* %456
  %457 = add i64 %447, 8
  %458 = inttoptr i64 %457 to double*
  store double %455, double* %458
  store %struct.Memory* %loadMem_400757, %struct.Memory** %MEMORY
  %loadMem_40075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %462, i64 0, i64 0
  %YMM0.i450 = bitcast %union.VectorReg* %463 to %"class.std::bitset"*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %464, i64 0, i64 1
  %XMM1.i451 = bitcast %union.VectorReg* %465 to %union.vec128_t*
  %466 = bitcast %"class.std::bitset"* %YMM0.i450 to i8*
  %467 = bitcast %union.vec128_t* %XMM1.i451 to i8*
  %468 = load i64, i64* %PC.i449
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i449
  %470 = bitcast i8* %467 to <2 x i32>*
  %471 = load <2 x i32>, <2 x i32>* %470, align 1
  %472 = getelementptr inbounds i8, i8* %467, i64 8
  %473 = bitcast i8* %472 to <2 x i32>*
  %474 = load <2 x i32>, <2 x i32>* %473, align 1
  %475 = extractelement <2 x i32> %471, i32 0
  %476 = bitcast i8* %466 to i32*
  store i32 %475, i32* %476, align 1
  %477 = extractelement <2 x i32> %471, i32 1
  %478 = getelementptr inbounds i8, i8* %466, i64 4
  %479 = bitcast i8* %478 to i32*
  store i32 %477, i32* %479, align 1
  %480 = extractelement <2 x i32> %474, i32 0
  %481 = getelementptr inbounds i8, i8* %466, i64 8
  %482 = bitcast i8* %481 to i32*
  store i32 %480, i32* %482, align 1
  %483 = extractelement <2 x i32> %474, i32 1
  %484 = getelementptr inbounds i8, i8* %466, i64 12
  %485 = bitcast i8* %484 to i32*
  store i32 %483, i32* %485, align 1
  store %struct.Memory* %loadMem_40075f, %struct.Memory** %MEMORY
  %loadMem1_400762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %PC.i448
  %490 = add i64 %489, -258
  %491 = load i64, i64* %PC.i448
  %492 = add i64 %491, 5
  %493 = load i64, i64* %PC.i448
  %494 = add i64 %493, 5
  store i64 %494, i64* %PC.i448
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = add i64 %496, -8
  %498 = inttoptr i64 %497 to i64*
  store i64 %492, i64* %498
  store i64 %497, i64* %495, align 8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %490, i64* %499, align 8
  store %struct.Memory* %loadMem1_400762, %struct.Memory** %MEMORY
  %loadMem2_400762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400762 = load i64, i64* %3
  %call2_400762 = call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %loadPC_400762, %struct.Memory* %loadMem2_400762)
  store %struct.Memory* %call2_400762, %struct.Memory** %MEMORY
  %loadMem_400767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %503, i64 0, i64 1
  %YMM1.i447 = bitcast %union.VectorReg* %504 to %"class.std::bitset"*
  %505 = bitcast %"class.std::bitset"* %YMM1.i447 to i8*
  %506 = load i64, i64* %PC.i446
  %507 = add i64 %506, 1233
  %508 = load i64, i64* %PC.i446
  %509 = add i64 %508, 8
  store i64 %509, i64* %PC.i446
  %510 = inttoptr i64 %507 to double*
  %511 = load double, double* %510
  %512 = bitcast i8* %505 to double*
  store double %511, double* %512, align 1
  %513 = getelementptr inbounds i8, i8* %505, i64 8
  %514 = bitcast i8* %513 to double*
  store double 0.000000e+00, double* %514, align 1
  store %struct.Memory* %loadMem_400767, %struct.Memory** %MEMORY
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %519 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %518, i64 0, i64 2
  %YMM2.i445 = bitcast %union.VectorReg* %519 to %"class.std::bitset"*
  %520 = bitcast %"class.std::bitset"* %YMM2.i445 to i8*
  %521 = load i64, i64* %PC.i444
  %522 = add i64 %521, 1241
  %523 = load i64, i64* %PC.i444
  %524 = add i64 %523, 8
  store i64 %524, i64* %PC.i444
  %525 = inttoptr i64 %522 to double*
  %526 = load double, double* %525
  %527 = bitcast i8* %520 to double*
  store double %526, double* %527, align 1
  %528 = getelementptr inbounds i8, i8* %520, i64 8
  %529 = bitcast i8* %528 to double*
  store double 0.000000e+00, double* %529, align 1
  store %struct.Memory* %loadMem_40076f, %struct.Memory** %MEMORY
  %loadMem_400777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %536, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %537 to %union.vec128_t*
  %538 = load i64, i64* %RBP.i442
  %539 = sub i64 %538, 208
  %540 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %541 = load i64, i64* %PC.i441
  %542 = add i64 %541, 8
  store i64 %542, i64* %PC.i441
  %543 = bitcast i8* %540 to double*
  %544 = load double, double* %543, align 1
  %545 = getelementptr inbounds i8, i8* %540, i64 8
  %546 = bitcast i8* %545 to double*
  %547 = load double, double* %546, align 1
  %548 = inttoptr i64 %539 to double*
  store double %544, double* %548
  %549 = add i64 %539, 8
  %550 = inttoptr i64 %549 to double*
  store double %547, double* %550
  store %struct.Memory* %loadMem_400777, %struct.Memory** %MEMORY
  %loadMem_40077f = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %554, i64 0, i64 0
  %YMM0.i439 = bitcast %union.VectorReg* %555 to %"class.std::bitset"*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %556, i64 0, i64 1
  %XMM1.i440 = bitcast %union.VectorReg* %557 to %union.vec128_t*
  %558 = bitcast %"class.std::bitset"* %YMM0.i439 to i8*
  %559 = bitcast %union.vec128_t* %XMM1.i440 to i8*
  %560 = load i64, i64* %PC.i438
  %561 = add i64 %560, 3
  store i64 %561, i64* %PC.i438
  %562 = bitcast i8* %559 to <2 x i32>*
  %563 = load <2 x i32>, <2 x i32>* %562, align 1
  %564 = getelementptr inbounds i8, i8* %559, i64 8
  %565 = bitcast i8* %564 to <2 x i32>*
  %566 = load <2 x i32>, <2 x i32>* %565, align 1
  %567 = extractelement <2 x i32> %563, i32 0
  %568 = bitcast i8* %558 to i32*
  store i32 %567, i32* %568, align 1
  %569 = extractelement <2 x i32> %563, i32 1
  %570 = getelementptr inbounds i8, i8* %558, i64 4
  %571 = bitcast i8* %570 to i32*
  store i32 %569, i32* %571, align 1
  %572 = extractelement <2 x i32> %566, i32 0
  %573 = getelementptr inbounds i8, i8* %558, i64 8
  %574 = bitcast i8* %573 to i32*
  store i32 %572, i32* %574, align 1
  %575 = extractelement <2 x i32> %566, i32 1
  %576 = getelementptr inbounds i8, i8* %558, i64 12
  %577 = bitcast i8* %576 to i32*
  store i32 %575, i32* %577, align 1
  store %struct.Memory* %loadMem_40077f, %struct.Memory** %MEMORY
  %loadMem_400782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %581, i64 0, i64 1
  %YMM1.i436 = bitcast %union.VectorReg* %582 to %"class.std::bitset"*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %584 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %583, i64 0, i64 2
  %XMM2.i437 = bitcast %union.VectorReg* %584 to %union.vec128_t*
  %585 = bitcast %"class.std::bitset"* %YMM1.i436 to i8*
  %586 = bitcast %union.vec128_t* %XMM2.i437 to i8*
  %587 = load i64, i64* %PC.i435
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC.i435
  %589 = bitcast i8* %586 to <2 x i32>*
  %590 = load <2 x i32>, <2 x i32>* %589, align 1
  %591 = getelementptr inbounds i8, i8* %586, i64 8
  %592 = bitcast i8* %591 to <2 x i32>*
  %593 = load <2 x i32>, <2 x i32>* %592, align 1
  %594 = extractelement <2 x i32> %590, i32 0
  %595 = bitcast i8* %585 to i32*
  store i32 %594, i32* %595, align 1
  %596 = extractelement <2 x i32> %590, i32 1
  %597 = getelementptr inbounds i8, i8* %585, i64 4
  %598 = bitcast i8* %597 to i32*
  store i32 %596, i32* %598, align 1
  %599 = extractelement <2 x i32> %593, i32 0
  %600 = getelementptr inbounds i8, i8* %585, i64 8
  %601 = bitcast i8* %600 to i32*
  store i32 %599, i32* %601, align 1
  %602 = extractelement <2 x i32> %593, i32 1
  %603 = getelementptr inbounds i8, i8* %585, i64 12
  %604 = bitcast i8* %603 to i32*
  store i32 %602, i32* %604, align 1
  store %struct.Memory* %loadMem_400782, %struct.Memory** %MEMORY
  %loadMem1_400785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %PC.i434
  %609 = add i64 %608, -293
  %610 = load i64, i64* %PC.i434
  %611 = add i64 %610, 5
  %612 = load i64, i64* %PC.i434
  %613 = add i64 %612, 5
  store i64 %613, i64* %PC.i434
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %611, i64* %617
  store i64 %616, i64* %614, align 8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %609, i64* %618, align 8
  store %struct.Memory* %loadMem1_400785, %struct.Memory** %MEMORY
  %loadMem2_400785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400785 = load i64, i64* %3
  %call2_400785 = call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %loadPC_400785, %struct.Memory* %loadMem2_400785)
  store %struct.Memory* %call2_400785, %struct.Memory** %MEMORY
  %loadMem_40078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %623 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %622, i64 0, i64 1
  %YMM1.i433 = bitcast %union.VectorReg* %623 to %"class.std::bitset"*
  %624 = bitcast %"class.std::bitset"* %YMM1.i433 to i8*
  %625 = load i64, i64* %PC.i432
  %626 = add i64 %625, 1198
  %627 = load i64, i64* %PC.i432
  %628 = add i64 %627, 8
  store i64 %628, i64* %PC.i432
  %629 = inttoptr i64 %626 to double*
  %630 = load double, double* %629
  %631 = bitcast i8* %624 to double*
  store double %630, double* %631, align 1
  %632 = getelementptr inbounds i8, i8* %624, i64 8
  %633 = bitcast i8* %632 to double*
  store double 0.000000e+00, double* %633, align 1
  store %struct.Memory* %loadMem_40078a, %struct.Memory** %MEMORY
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %637, i64 0, i64 2
  %YMM2.i431 = bitcast %union.VectorReg* %638 to %"class.std::bitset"*
  %639 = bitcast %"class.std::bitset"* %YMM2.i431 to i8*
  %640 = load i64, i64* %PC.i430
  %641 = add i64 %640, 1198
  %642 = load i64, i64* %PC.i430
  %643 = add i64 %642, 8
  store i64 %643, i64* %PC.i430
  %644 = inttoptr i64 %641 to double*
  %645 = load double, double* %644
  %646 = bitcast i8* %639 to double*
  store double %645, double* %646, align 1
  %647 = getelementptr inbounds i8, i8* %639, i64 8
  %648 = bitcast i8* %647 to double*
  store double 0.000000e+00, double* %648, align 1
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  %loadMem_40079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %655, i64 0, i64 0
  %XMM0.i429 = bitcast %union.VectorReg* %656 to %union.vec128_t*
  %657 = load i64, i64* %RBP.i428
  %658 = sub i64 %657, 192
  %659 = bitcast %union.vec128_t* %XMM0.i429 to i8*
  %660 = load i64, i64* %PC.i427
  %661 = add i64 %660, 8
  store i64 %661, i64* %PC.i427
  %662 = bitcast i8* %659 to double*
  %663 = load double, double* %662, align 1
  %664 = getelementptr inbounds i8, i8* %659, i64 8
  %665 = bitcast i8* %664 to double*
  %666 = load double, double* %665, align 1
  %667 = inttoptr i64 %658 to double*
  store double %663, double* %667
  %668 = add i64 %658, 8
  %669 = inttoptr i64 %668 to double*
  store double %666, double* %669
  store %struct.Memory* %loadMem_40079a, %struct.Memory** %MEMORY
  %loadMem_4007a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %673, i64 0, i64 0
  %YMM0.i425 = bitcast %union.VectorReg* %674 to %"class.std::bitset"*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %675, i64 0, i64 1
  %XMM1.i426 = bitcast %union.VectorReg* %676 to %union.vec128_t*
  %677 = bitcast %"class.std::bitset"* %YMM0.i425 to i8*
  %678 = bitcast %union.vec128_t* %XMM1.i426 to i8*
  %679 = load i64, i64* %PC.i424
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC.i424
  %681 = bitcast i8* %678 to <2 x i32>*
  %682 = load <2 x i32>, <2 x i32>* %681, align 1
  %683 = getelementptr inbounds i8, i8* %678, i64 8
  %684 = bitcast i8* %683 to <2 x i32>*
  %685 = load <2 x i32>, <2 x i32>* %684, align 1
  %686 = extractelement <2 x i32> %682, i32 0
  %687 = bitcast i8* %677 to i32*
  store i32 %686, i32* %687, align 1
  %688 = extractelement <2 x i32> %682, i32 1
  %689 = getelementptr inbounds i8, i8* %677, i64 4
  %690 = bitcast i8* %689 to i32*
  store i32 %688, i32* %690, align 1
  %691 = extractelement <2 x i32> %685, i32 0
  %692 = getelementptr inbounds i8, i8* %677, i64 8
  %693 = bitcast i8* %692 to i32*
  store i32 %691, i32* %693, align 1
  %694 = extractelement <2 x i32> %685, i32 1
  %695 = getelementptr inbounds i8, i8* %677, i64 12
  %696 = bitcast i8* %695 to i32*
  store i32 %694, i32* %696, align 1
  store %struct.Memory* %loadMem_4007a2, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %700, i64 0, i64 1
  %YMM1.i422 = bitcast %union.VectorReg* %701 to %"class.std::bitset"*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %702, i64 0, i64 2
  %XMM2.i423 = bitcast %union.VectorReg* %703 to %union.vec128_t*
  %704 = bitcast %"class.std::bitset"* %YMM1.i422 to i8*
  %705 = bitcast %union.vec128_t* %XMM2.i423 to i8*
  %706 = load i64, i64* %PC.i421
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i421
  %708 = bitcast i8* %705 to <2 x i32>*
  %709 = load <2 x i32>, <2 x i32>* %708, align 1
  %710 = getelementptr inbounds i8, i8* %705, i64 8
  %711 = bitcast i8* %710 to <2 x i32>*
  %712 = load <2 x i32>, <2 x i32>* %711, align 1
  %713 = extractelement <2 x i32> %709, i32 0
  %714 = bitcast i8* %704 to i32*
  store i32 %713, i32* %714, align 1
  %715 = extractelement <2 x i32> %709, i32 1
  %716 = getelementptr inbounds i8, i8* %704, i64 4
  %717 = bitcast i8* %716 to i32*
  store i32 %715, i32* %717, align 1
  %718 = extractelement <2 x i32> %712, i32 0
  %719 = getelementptr inbounds i8, i8* %704, i64 8
  %720 = bitcast i8* %719 to i32*
  store i32 %718, i32* %720, align 1
  %721 = extractelement <2 x i32> %712, i32 1
  %722 = getelementptr inbounds i8, i8* %704, i64 12
  %723 = bitcast i8* %722 to i32*
  store i32 %721, i32* %723, align 1
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem1_4007a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %PC.i420
  %728 = add i64 %727, -328
  %729 = load i64, i64* %PC.i420
  %730 = add i64 %729, 5
  %731 = load i64, i64* %PC.i420
  %732 = add i64 %731, 5
  store i64 %732, i64* %PC.i420
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = add i64 %734, -8
  %736 = inttoptr i64 %735 to i64*
  store i64 %730, i64* %736
  store i64 %735, i64* %733, align 8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %728, i64* %737, align 8
  store %struct.Memory* %loadMem1_4007a8, %struct.Memory** %MEMORY
  %loadMem2_4007a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007a8 = load i64, i64* %3
  %call2_4007a8 = call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %loadPC_4007a8, %struct.Memory* %loadMem2_4007a8)
  store %struct.Memory* %call2_4007a8, %struct.Memory** %MEMORY
  %loadMem_4007ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %741, i64 0, i64 1
  %YMM1.i419 = bitcast %union.VectorReg* %742 to %"class.std::bitset"*
  %743 = bitcast %"class.std::bitset"* %YMM1.i419 to i8*
  %744 = load i64, i64* %PC.i418
  %745 = add i64 %744, 1163
  %746 = load i64, i64* %PC.i418
  %747 = add i64 %746, 8
  store i64 %747, i64* %PC.i418
  %748 = inttoptr i64 %745 to double*
  %749 = load double, double* %748
  %750 = bitcast i8* %743 to double*
  store double %749, double* %750, align 1
  %751 = getelementptr inbounds i8, i8* %743, i64 8
  %752 = bitcast i8* %751 to double*
  store double 0.000000e+00, double* %752, align 1
  store %struct.Memory* %loadMem_4007ad, %struct.Memory** %MEMORY
  %loadMem_4007b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 15
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %759, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %760 to %union.vec128_t*
  %761 = load i64, i64* %RBP.i416
  %762 = sub i64 %761, 240
  %763 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %764 = load i64, i64* %PC.i415
  %765 = add i64 %764, 8
  store i64 %765, i64* %PC.i415
  %766 = bitcast i8* %763 to double*
  %767 = load double, double* %766, align 1
  %768 = getelementptr inbounds i8, i8* %763, i64 8
  %769 = bitcast i8* %768 to double*
  %770 = load double, double* %769, align 1
  %771 = inttoptr i64 %762 to double*
  store double %767, double* %771
  %772 = add i64 %762, 8
  %773 = inttoptr i64 %772 to double*
  store double %770, double* %773
  store %struct.Memory* %loadMem_4007b5, %struct.Memory** %MEMORY
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 0
  %YMM0.i414 = bitcast %union.VectorReg* %781 to %"class.std::bitset"*
  %782 = bitcast %"class.std::bitset"* %YMM0.i414 to i8*
  %783 = load i64, i64* %RBP.i413
  %784 = sub i64 %783, 144
  %785 = load i64, i64* %PC.i412
  %786 = add i64 %785, 8
  store i64 %786, i64* %PC.i412
  %787 = inttoptr i64 %784 to double*
  %788 = load double, double* %787
  %789 = add i64 %784, 8
  %790 = inttoptr i64 %789 to double*
  %791 = load double, double* %790
  %792 = bitcast i8* %782 to double*
  store double %788, double* %792, align 1
  %793 = getelementptr inbounds i8, i8* %782, i64 8
  %794 = bitcast i8* %793 to double*
  store double %791, double* %794, align 1
  store %struct.Memory* %loadMem_4007bd, %struct.Memory** %MEMORY
  %loadMem_4007c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %801, i64 0, i64 0
  %XMM0.i411 = bitcast %union.VectorReg* %802 to %union.vec128_t*
  %803 = load i64, i64* %RBP.i410
  %804 = sub i64 %803, 128
  %805 = bitcast %union.vec128_t* %XMM0.i411 to i8*
  %806 = load i64, i64* %PC.i409
  %807 = add i64 %806, 5
  store i64 %807, i64* %PC.i409
  %808 = bitcast i8* %805 to double*
  %809 = load double, double* %808, align 1
  %810 = getelementptr inbounds i8, i8* %805, i64 8
  %811 = bitcast i8* %810 to double*
  %812 = load double, double* %811, align 1
  %813 = inttoptr i64 %804 to double*
  store double %809, double* %813
  %814 = add i64 %804, 8
  %815 = inttoptr i64 %814 to double*
  store double %812, double* %815
  store %struct.Memory* %loadMem_4007c5, %struct.Memory** %MEMORY
  %loadMem_4007ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 15
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %822, i64 0, i64 0
  %XMM0.i408 = bitcast %union.VectorReg* %823 to %union.vec128_t*
  %824 = load i64, i64* %RBP.i407
  %825 = sub i64 %824, 112
  %826 = bitcast %union.vec128_t* %XMM0.i408 to i8*
  %827 = load i64, i64* %PC.i406
  %828 = add i64 %827, 5
  store i64 %828, i64* %PC.i406
  %829 = bitcast i8* %826 to double*
  %830 = load double, double* %829, align 1
  %831 = getelementptr inbounds i8, i8* %826, i64 8
  %832 = bitcast i8* %831 to double*
  %833 = load double, double* %832, align 1
  %834 = inttoptr i64 %825 to double*
  store double %830, double* %834
  %835 = add i64 %825, 8
  %836 = inttoptr i64 %835 to double*
  store double %833, double* %836
  store %struct.Memory* %loadMem_4007ca, %struct.Memory** %MEMORY
  %loadMem_4007cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 15
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %843, i64 0, i64 0
  %XMM0.i405 = bitcast %union.VectorReg* %844 to %union.vec128_t*
  %845 = load i64, i64* %RBP.i404
  %846 = sub i64 %845, 96
  %847 = bitcast %union.vec128_t* %XMM0.i405 to i8*
  %848 = load i64, i64* %PC.i403
  %849 = add i64 %848, 5
  store i64 %849, i64* %PC.i403
  %850 = bitcast i8* %847 to double*
  %851 = load double, double* %850, align 1
  %852 = getelementptr inbounds i8, i8* %847, i64 8
  %853 = bitcast i8* %852 to double*
  %854 = load double, double* %853, align 1
  %855 = inttoptr i64 %846 to double*
  store double %851, double* %855
  %856 = add i64 %846, 8
  %857 = inttoptr i64 %856 to double*
  store double %854, double* %857
  store %struct.Memory* %loadMem_4007cf, %struct.Memory** %MEMORY
  %loadMem_4007d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 15
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %865 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %864, i64 0, i64 0
  %XMM0.i402 = bitcast %union.VectorReg* %865 to %union.vec128_t*
  %866 = load i64, i64* %RBP.i401
  %867 = sub i64 %866, 80
  %868 = bitcast %union.vec128_t* %XMM0.i402 to i8*
  %869 = load i64, i64* %PC.i400
  %870 = add i64 %869, 5
  store i64 %870, i64* %PC.i400
  %871 = bitcast i8* %868 to double*
  %872 = load double, double* %871, align 1
  %873 = getelementptr inbounds i8, i8* %868, i64 8
  %874 = bitcast i8* %873 to double*
  %875 = load double, double* %874, align 1
  %876 = inttoptr i64 %867 to double*
  store double %872, double* %876
  %877 = add i64 %867, 8
  %878 = inttoptr i64 %877 to double*
  store double %875, double* %878
  store %struct.Memory* %loadMem_4007d4, %struct.Memory** %MEMORY
  %loadMem_4007d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %885, i64 0, i64 0
  %XMM0.i399 = bitcast %union.VectorReg* %886 to %union.vec128_t*
  %887 = load i64, i64* %RBP.i398
  %888 = sub i64 %887, 64
  %889 = bitcast %union.vec128_t* %XMM0.i399 to i8*
  %890 = load i64, i64* %PC.i397
  %891 = add i64 %890, 5
  store i64 %891, i64* %PC.i397
  %892 = bitcast i8* %889 to double*
  %893 = load double, double* %892, align 1
  %894 = getelementptr inbounds i8, i8* %889, i64 8
  %895 = bitcast i8* %894 to double*
  %896 = load double, double* %895, align 1
  %897 = inttoptr i64 %888 to double*
  store double %893, double* %897
  %898 = add i64 %888, 8
  %899 = inttoptr i64 %898 to double*
  store double %896, double* %899
  store %struct.Memory* %loadMem_4007d9, %struct.Memory** %MEMORY
  %loadMem_4007de = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %906, i64 0, i64 1
  %XMM1.i396 = bitcast %union.VectorReg* %907 to %union.vec128_t*
  %908 = load i64, i64* %RBP.i395
  %909 = sub i64 %908, 248
  %910 = bitcast %union.vec128_t* %XMM1.i396 to i8*
  %911 = load i64, i64* %PC.i394
  %912 = add i64 %911, 8
  store i64 %912, i64* %PC.i394
  %913 = bitcast i8* %910 to double*
  %914 = load double, double* %913, align 1
  %915 = inttoptr i64 %909 to double*
  store double %914, double* %915
  store %struct.Memory* %loadMem_4007de, %struct.Memory** %MEMORY
  br label %block_.L_4007e6

block_.L_4007e6:                                  ; preds = %block_400800, %entry
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %922, i64 0, i64 0
  %YMM0.i393 = bitcast %union.VectorReg* %923 to %"class.std::bitset"*
  %924 = bitcast %"class.std::bitset"* %YMM0.i393 to i8*
  %925 = load i64, i64* %RBP.i392
  %926 = sub i64 %925, 248
  %927 = load i64, i64* %PC.i391
  %928 = add i64 %927, 8
  store i64 %928, i64* %PC.i391
  %929 = inttoptr i64 %926 to double*
  %930 = load double, double* %929
  %931 = bitcast i8* %924 to double*
  store double %930, double* %931, align 1
  %932 = getelementptr inbounds i8, i8* %924, i64 8
  %933 = bitcast i8* %932 to double*
  store double 0.000000e+00, double* %933, align 1
  store %struct.Memory* %loadMem_4007e6, %struct.Memory** %MEMORY
  %loadMem_4007ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %940, i64 0, i64 1
  %YMM1.i390 = bitcast %union.VectorReg* %941 to %"class.std::bitset"*
  %942 = bitcast %"class.std::bitset"* %YMM1.i390 to i8*
  %943 = load i64, i64* %RBP.i389
  %944 = sub i64 %943, 276
  %945 = load i64, i64* %PC.i388
  %946 = add i64 %945, 8
  store i64 %946, i64* %PC.i388
  %947 = inttoptr i64 %944 to i32*
  %948 = load i32, i32* %947
  %949 = sitofp i32 %948 to double
  %950 = bitcast i8* %942 to double*
  store double %949, double* %950, align 1
  store %struct.Memory* %loadMem_4007ee, %struct.Memory** %MEMORY
  %loadMem_4007f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %954, i64 0, i64 0
  %XMM0.i382 = bitcast %union.VectorReg* %955 to %union.vec128_t*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %956, i64 0, i64 1
  %XMM1.i383 = bitcast %union.VectorReg* %957 to %union.vec128_t*
  %958 = bitcast %union.vec128_t* %XMM1.i383 to i8*
  %959 = bitcast %union.vec128_t* %XMM0.i382 to i8*
  %960 = load i64, i64* %PC.i381
  %961 = add i64 %960, 4
  store i64 %961, i64* %PC.i381
  %962 = bitcast i8* %958 to double*
  %963 = load double, double* %962, align 1
  %964 = bitcast i8* %959 to double*
  %965 = load double, double* %964, align 1
  %966 = fcmp uno double %963, %965
  br i1 %966, label %967, label %979

; <label>:967:                                    ; preds = %block_.L_4007e6
  %968 = fadd double %963, %965
  %969 = bitcast double %968 to i64
  %970 = and i64 %969, 9221120237041090560
  %971 = icmp eq i64 %970, 9218868437227405312
  %972 = and i64 %969, 2251799813685247
  %973 = icmp ne i64 %972, 0
  %974 = and i1 %971, %973
  br i1 %974, label %975, label %985

; <label>:975:                                    ; preds = %967
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %977 = load i64, i64* %976, align 8
  %978 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %977, %struct.Memory* %loadMem_4007f6)
  br label %routine_ucomisd__xmm0___xmm1.exit384

; <label>:979:                                    ; preds = %block_.L_4007e6
  %980 = fcmp ogt double %963, %965
  br i1 %980, label %985, label %981

; <label>:981:                                    ; preds = %979
  %982 = fcmp olt double %963, %965
  br i1 %982, label %985, label %983

; <label>:983:                                    ; preds = %981
  %984 = fcmp oeq double %963, %965
  br i1 %984, label %985, label %992

; <label>:985:                                    ; preds = %983, %981, %979, %967
  %986 = phi i8 [ 0, %979 ], [ 0, %981 ], [ 1, %983 ], [ 1, %967 ]
  %987 = phi i8 [ 0, %979 ], [ 0, %981 ], [ 0, %983 ], [ 1, %967 ]
  %988 = phi i8 [ 0, %979 ], [ 1, %981 ], [ 0, %983 ], [ 1, %967 ]
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %986, i8* %989, align 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %987, i8* %990, align 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %988, i8* %991, align 1
  br label %992

; <label>:992:                                    ; preds = %985, %983
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %993, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %994, align 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %995, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit384

routine_ucomisd__xmm0___xmm1.exit384:             ; preds = %975, %992
  %996 = phi %struct.Memory* [ %978, %975 ], [ %loadMem_4007f6, %992 ]
  store %struct.Memory* %996, %struct.Memory** %MEMORY
  %loadMem_4007fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %PC.i380
  %1001 = add i64 %1000, 298
  %1002 = load i64, i64* %PC.i380
  %1003 = add i64 %1002, 6
  %1004 = load i64, i64* %PC.i380
  %1005 = add i64 %1004, 6
  store i64 %1005, i64* %PC.i380
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1007 = load i8, i8* %1006, align 1
  store i8 %1007, i8* %BRANCH_TAKEN, align 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1009 = icmp ne i8 %1007, 0
  %1010 = select i1 %1009, i64 %1001, i64 %1003
  store i64 %1010, i64* %1008, align 8
  store %struct.Memory* %loadMem_4007fa, %struct.Memory** %MEMORY
  %loadBr_4007fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007fa = icmp eq i8 %loadBr_4007fa, 1
  br i1 %cmpBr_4007fa, label %block_.L_400924, label %block_400800

block_400800:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit384
  %loadMem_400800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1015 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1014, i64 0, i64 0
  %YMM0.i379 = bitcast %union.VectorReg* %1015 to %"class.std::bitset"*
  %1016 = bitcast %"class.std::bitset"* %YMM0.i379 to i8*
  %1017 = load i64, i64* %PC.i378
  %1018 = add i64 %1017, 1104
  %1019 = load i64, i64* %PC.i378
  %1020 = add i64 %1019, 8
  store i64 %1020, i64* %PC.i378
  %1021 = inttoptr i64 %1018 to double*
  %1022 = load double, double* %1021
  %1023 = bitcast i8* %1016 to double*
  store double %1022, double* %1023, align 1
  %1024 = getelementptr inbounds i8, i8* %1016, i64 8
  %1025 = bitcast i8* %1024 to double*
  store double 0.000000e+00, double* %1025, align 1
  store %struct.Memory* %loadMem_400800, %struct.Memory** %MEMORY
  %loadMem_400808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1029, i64 0, i64 1
  %YMM1.i377 = bitcast %union.VectorReg* %1030 to %"class.std::bitset"*
  %1031 = bitcast %"class.std::bitset"* %YMM1.i377 to i8*
  %1032 = load i64, i64* %PC.i376
  %1033 = add i64 %1032, 1072
  %1034 = load i64, i64* %PC.i376
  %1035 = add i64 %1034, 8
  store i64 %1035, i64* %PC.i376
  %1036 = inttoptr i64 %1033 to double*
  %1037 = load double, double* %1036
  %1038 = bitcast i8* %1031 to double*
  store double %1037, double* %1038, align 1
  %1039 = getelementptr inbounds i8, i8* %1031, i64 8
  %1040 = bitcast i8* %1039 to double*
  store double 0.000000e+00, double* %1040, align 1
  store %struct.Memory* %loadMem_400808, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1047, i64 0, i64 2
  %YMM2.i375 = bitcast %union.VectorReg* %1048 to %"class.std::bitset"*
  %1049 = bitcast %"class.std::bitset"* %YMM2.i375 to i8*
  %1050 = load i64, i64* %RBP.i374
  %1051 = sub i64 %1050, 248
  %1052 = load i64, i64* %PC.i373
  %1053 = add i64 %1052, 8
  store i64 %1053, i64* %PC.i373
  %1054 = inttoptr i64 %1051 to double*
  %1055 = load double, double* %1054
  %1056 = bitcast i8* %1049 to double*
  store double %1055, double* %1056, align 1
  %1057 = getelementptr inbounds i8, i8* %1049, i64 8
  %1058 = bitcast i8* %1057 to double*
  store double 0.000000e+00, double* %1058, align 1
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem_400818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1062, i64 0, i64 2
  %YMM2.i371 = bitcast %union.VectorReg* %1063 to %"class.std::bitset"*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1064, i64 0, i64 1
  %XMM1.i372 = bitcast %union.VectorReg* %1065 to %union.vec128_t*
  %1066 = bitcast %"class.std::bitset"* %YMM2.i371 to i8*
  %1067 = bitcast %"class.std::bitset"* %YMM2.i371 to i8*
  %1068 = bitcast %union.vec128_t* %XMM1.i372 to i8*
  %1069 = load i64, i64* %PC.i370
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC.i370
  %1071 = bitcast i8* %1067 to double*
  %1072 = load double, double* %1071, align 1
  %1073 = getelementptr inbounds i8, i8* %1067, i64 8
  %1074 = bitcast i8* %1073 to i64*
  %1075 = load i64, i64* %1074, align 1
  %1076 = bitcast i8* %1068 to double*
  %1077 = load double, double* %1076, align 1
  %1078 = fsub double %1072, %1077
  %1079 = bitcast i8* %1066 to double*
  store double %1078, double* %1079, align 1
  %1080 = getelementptr inbounds i8, i8* %1066, i64 8
  %1081 = bitcast i8* %1080 to i64*
  store i64 %1075, i64* %1081, align 1
  store %struct.Memory* %loadMem_400818, %struct.Memory** %MEMORY
  %loadMem_40081c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1085, i64 0, i64 1
  %YMM1.i368 = bitcast %union.VectorReg* %1086 to %"class.std::bitset"*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1088 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1087, i64 0, i64 2
  %XMM2.i369 = bitcast %union.VectorReg* %1088 to %union.vec128_t*
  %1089 = bitcast %"class.std::bitset"* %YMM1.i368 to i8*
  %1090 = bitcast %union.vec128_t* %XMM2.i369 to i8*
  %1091 = load i64, i64* %PC.i367
  %1092 = add i64 %1091, 3
  store i64 %1092, i64* %PC.i367
  %1093 = bitcast i8* %1090 to <2 x i32>*
  %1094 = load <2 x i32>, <2 x i32>* %1093, align 1
  %1095 = getelementptr inbounds i8, i8* %1090, i64 8
  %1096 = bitcast i8* %1095 to <2 x i32>*
  %1097 = load <2 x i32>, <2 x i32>* %1096, align 1
  %1098 = extractelement <2 x i32> %1094, i32 0
  %1099 = bitcast i8* %1089 to i32*
  store i32 %1098, i32* %1099, align 1
  %1100 = extractelement <2 x i32> %1094, i32 1
  %1101 = getelementptr inbounds i8, i8* %1089, i64 4
  %1102 = bitcast i8* %1101 to i32*
  store i32 %1100, i32* %1102, align 1
  %1103 = extractelement <2 x i32> %1097, i32 0
  %1104 = getelementptr inbounds i8, i8* %1089, i64 8
  %1105 = bitcast i8* %1104 to i32*
  store i32 %1103, i32* %1105, align 1
  %1106 = extractelement <2 x i32> %1097, i32 1
  %1107 = getelementptr inbounds i8, i8* %1089, i64 12
  %1108 = bitcast i8* %1107 to i32*
  store i32 %1106, i32* %1108, align 1
  store %struct.Memory* %loadMem_40081c, %struct.Memory** %MEMORY
  %loadMem1_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %PC.i366
  %1113 = add i64 %1112, -751
  %1114 = load i64, i64* %PC.i366
  %1115 = add i64 %1114, 5
  %1116 = load i64, i64* %PC.i366
  %1117 = add i64 %1116, 5
  store i64 %1117, i64* %PC.i366
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1119 = load i64, i64* %1118, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1115, i64* %1121
  store i64 %1120, i64* %1118, align 8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1113, i64* %1122, align 8
  store %struct.Memory* %loadMem1_40081f, %struct.Memory** %MEMORY
  %loadMem2_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40081f = load i64, i64* %3
  %1123 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_40081f)
  store %struct.Memory* %1123, %struct.Memory** %MEMORY
  %loadMem_400824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1128 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1127, i64 0, i64 1
  %YMM1.i363 = bitcast %union.VectorReg* %1128 to %"class.std::bitset"*
  %1129 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %1130 = load i64, i64* %PC.i362
  %1131 = add i64 %1130, 1044
  %1132 = load i64, i64* %PC.i362
  %1133 = add i64 %1132, 8
  store i64 %1133, i64* %PC.i362
  %1134 = inttoptr i64 %1131 to double*
  %1135 = load double, double* %1134
  %1136 = bitcast i8* %1129 to double*
  store double %1135, double* %1136, align 1
  %1137 = getelementptr inbounds i8, i8* %1129, i64 8
  %1138 = bitcast i8* %1137 to double*
  store double 0.000000e+00, double* %1138, align 1
  store %struct.Memory* %loadMem_400824, %struct.Memory** %MEMORY
  %loadMem_40082c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1145, i64 0, i64 0
  %YMM0.i361 = bitcast %union.VectorReg* %1146 to %"class.std::bitset"*
  %1147 = bitcast %"class.std::bitset"* %YMM0.i361 to i8*
  %1148 = bitcast %"class.std::bitset"* %YMM0.i361 to i8*
  %1149 = load i64, i64* %RBP.i360
  %1150 = sub i64 %1149, 24
  %1151 = load i64, i64* %PC.i359
  %1152 = add i64 %1151, 5
  store i64 %1152, i64* %PC.i359
  %1153 = bitcast i8* %1148 to double*
  %1154 = load double, double* %1153, align 1
  %1155 = getelementptr inbounds i8, i8* %1148, i64 8
  %1156 = bitcast i8* %1155 to i64*
  %1157 = load i64, i64* %1156, align 1
  %1158 = inttoptr i64 %1150 to double*
  %1159 = load double, double* %1158
  %1160 = fadd double %1154, %1159
  %1161 = bitcast i8* %1147 to double*
  store double %1160, double* %1161, align 1
  %1162 = getelementptr inbounds i8, i8* %1147, i64 8
  %1163 = bitcast i8* %1162 to i64*
  store i64 %1157, i64* %1163, align 1
  store %struct.Memory* %loadMem_40082c, %struct.Memory** %MEMORY
  %loadMem_400831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1171 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1170, i64 0, i64 0
  %XMM0.i358 = bitcast %union.VectorReg* %1171 to %union.vec128_t*
  %1172 = load i64, i64* %RBP.i357
  %1173 = sub i64 %1172, 24
  %1174 = bitcast %union.vec128_t* %XMM0.i358 to i8*
  %1175 = load i64, i64* %PC.i356
  %1176 = add i64 %1175, 5
  store i64 %1176, i64* %PC.i356
  %1177 = bitcast i8* %1174 to double*
  %1178 = load double, double* %1177, align 1
  %1179 = inttoptr i64 %1173 to double*
  store double %1178, double* %1179
  store %struct.Memory* %loadMem_400831, %struct.Memory** %MEMORY
  %loadMem_400836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 15
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1186, i64 0, i64 0
  %YMM0.i355 = bitcast %union.VectorReg* %1187 to %"class.std::bitset"*
  %1188 = bitcast %"class.std::bitset"* %YMM0.i355 to i8*
  %1189 = load i64, i64* %RBP.i354
  %1190 = sub i64 %1189, 248
  %1191 = load i64, i64* %PC.i353
  %1192 = add i64 %1191, 8
  store i64 %1192, i64* %PC.i353
  %1193 = inttoptr i64 %1190 to double*
  %1194 = load double, double* %1193
  %1195 = bitcast i8* %1188 to double*
  store double %1194, double* %1195, align 1
  %1196 = getelementptr inbounds i8, i8* %1188, i64 8
  %1197 = bitcast i8* %1196 to double*
  store double 0.000000e+00, double* %1197, align 1
  store %struct.Memory* %loadMem_400836, %struct.Memory** %MEMORY
  %loadMem_40083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 15
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1204, i64 0, i64 1
  %XMM1.i352 = bitcast %union.VectorReg* %1205 to %union.vec128_t*
  %1206 = load i64, i64* %RBP.i351
  %1207 = sub i64 %1206, 296
  %1208 = bitcast %union.vec128_t* %XMM1.i352 to i8*
  %1209 = load i64, i64* %PC.i350
  %1210 = add i64 %1209, 8
  store i64 %1210, i64* %PC.i350
  %1211 = bitcast i8* %1208 to double*
  %1212 = load double, double* %1211, align 1
  %1213 = inttoptr i64 %1207 to double*
  store double %1212, double* %1213
  store %struct.Memory* %loadMem_40083e, %struct.Memory** %MEMORY
  %loadMem1_400846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %PC.i349
  %1218 = add i64 %1217, -742
  %1219 = load i64, i64* %PC.i349
  %1220 = add i64 %1219, 5
  %1221 = load i64, i64* %PC.i349
  %1222 = add i64 %1221, 5
  store i64 %1222, i64* %PC.i349
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1224 = load i64, i64* %1223, align 8
  %1225 = add i64 %1224, -8
  %1226 = inttoptr i64 %1225 to i64*
  store i64 %1220, i64* %1226
  store i64 %1225, i64* %1223, align 8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1218, i64* %1227, align 8
  store %struct.Memory* %loadMem1_400846, %struct.Memory** %MEMORY
  %loadMem2_400846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400846 = load i64, i64* %3
  %call2_400846 = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_400846, %struct.Memory* %loadMem2_400846)
  store %struct.Memory* %call2_400846, %struct.Memory** %MEMORY
  %loadMem_40084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1234, i64 0, i64 1
  %YMM1.i348 = bitcast %union.VectorReg* %1235 to %"class.std::bitset"*
  %1236 = bitcast %"class.std::bitset"* %YMM1.i348 to i8*
  %1237 = load i64, i64* %RBP.i347
  %1238 = sub i64 %1237, 296
  %1239 = load i64, i64* %PC.i346
  %1240 = add i64 %1239, 8
  store i64 %1240, i64* %PC.i346
  %1241 = inttoptr i64 %1238 to double*
  %1242 = load double, double* %1241
  %1243 = bitcast i8* %1236 to double*
  store double %1242, double* %1243, align 1
  %1244 = getelementptr inbounds i8, i8* %1236, i64 8
  %1245 = bitcast i8* %1244 to double*
  store double 0.000000e+00, double* %1245, align 1
  store %struct.Memory* %loadMem_40084b, %struct.Memory** %MEMORY
  %loadMem_400853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1249, i64 0, i64 1
  %YMM1.i344 = bitcast %union.VectorReg* %1250 to %"class.std::bitset"*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1251, i64 0, i64 0
  %XMM0.i345 = bitcast %union.VectorReg* %1252 to %union.vec128_t*
  %1253 = bitcast %"class.std::bitset"* %YMM1.i344 to i8*
  %1254 = bitcast %"class.std::bitset"* %YMM1.i344 to i8*
  %1255 = bitcast %union.vec128_t* %XMM0.i345 to i8*
  %1256 = load i64, i64* %PC.i343
  %1257 = add i64 %1256, 4
  store i64 %1257, i64* %PC.i343
  %1258 = bitcast i8* %1254 to double*
  %1259 = load double, double* %1258, align 1
  %1260 = getelementptr inbounds i8, i8* %1254, i64 8
  %1261 = bitcast i8* %1260 to i64*
  %1262 = load i64, i64* %1261, align 1
  %1263 = bitcast i8* %1255 to double*
  %1264 = load double, double* %1263, align 1
  %1265 = fdiv double %1259, %1264
  %1266 = bitcast i8* %1253 to double*
  store double %1265, double* %1266, align 1
  %1267 = getelementptr inbounds i8, i8* %1253, i64 8
  %1268 = bitcast i8* %1267 to i64*
  store i64 %1262, i64* %1268, align 1
  store %struct.Memory* %loadMem_400853, %struct.Memory** %MEMORY
  %loadMem_400857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 15
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1275, i64 0, i64 1
  %YMM1.i342 = bitcast %union.VectorReg* %1276 to %"class.std::bitset"*
  %1277 = bitcast %"class.std::bitset"* %YMM1.i342 to i8*
  %1278 = bitcast %"class.std::bitset"* %YMM1.i342 to i8*
  %1279 = load i64, i64* %RBP.i341
  %1280 = sub i64 %1279, 32
  %1281 = load i64, i64* %PC.i340
  %1282 = add i64 %1281, 5
  store i64 %1282, i64* %PC.i340
  %1283 = bitcast i8* %1278 to double*
  %1284 = load double, double* %1283, align 1
  %1285 = getelementptr inbounds i8, i8* %1278, i64 8
  %1286 = bitcast i8* %1285 to i64*
  %1287 = load i64, i64* %1286, align 1
  %1288 = inttoptr i64 %1280 to double*
  %1289 = load double, double* %1288
  %1290 = fadd double %1284, %1289
  %1291 = bitcast i8* %1277 to double*
  store double %1290, double* %1291, align 1
  %1292 = getelementptr inbounds i8, i8* %1277, i64 8
  %1293 = bitcast i8* %1292 to i64*
  store i64 %1287, i64* %1293, align 1
  store %struct.Memory* %loadMem_400857, %struct.Memory** %MEMORY
  %loadMem_40085c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 15
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1300, i64 0, i64 1
  %XMM1.i339 = bitcast %union.VectorReg* %1301 to %union.vec128_t*
  %1302 = load i64, i64* %RBP.i338
  %1303 = sub i64 %1302, 32
  %1304 = bitcast %union.vec128_t* %XMM1.i339 to i8*
  %1305 = load i64, i64* %PC.i337
  %1306 = add i64 %1305, 5
  store i64 %1306, i64* %PC.i337
  %1307 = bitcast i8* %1304 to double*
  %1308 = load double, double* %1307, align 1
  %1309 = inttoptr i64 %1303 to double*
  store double %1308, double* %1309
  store %struct.Memory* %loadMem_40085c, %struct.Memory** %MEMORY
  %loadMem_400861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 15
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1316, i64 0, i64 0
  %YMM0.i336 = bitcast %union.VectorReg* %1317 to %"class.std::bitset"*
  %1318 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %1319 = load i64, i64* %RBP.i335
  %1320 = sub i64 %1319, 248
  %1321 = load i64, i64* %PC.i334
  %1322 = add i64 %1321, 8
  store i64 %1322, i64* %PC.i334
  %1323 = inttoptr i64 %1320 to double*
  %1324 = load double, double* %1323
  %1325 = bitcast i8* %1318 to double*
  store double %1324, double* %1325, align 1
  %1326 = getelementptr inbounds i8, i8* %1318, i64 8
  %1327 = bitcast i8* %1326 to double*
  store double 0.000000e+00, double* %1327, align 1
  store %struct.Memory* %loadMem_400861, %struct.Memory** %MEMORY
  %loadMem_400869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 15
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1334, i64 0, i64 0
  %YMM0.i333 = bitcast %union.VectorReg* %1335 to %"class.std::bitset"*
  %1336 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %1337 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %1338 = load i64, i64* %RBP.i332
  %1339 = sub i64 %1338, 248
  %1340 = load i64, i64* %PC.i331
  %1341 = add i64 %1340, 8
  store i64 %1341, i64* %PC.i331
  %1342 = bitcast i8* %1337 to double*
  %1343 = load double, double* %1342, align 1
  %1344 = getelementptr inbounds i8, i8* %1337, i64 8
  %1345 = bitcast i8* %1344 to i64*
  %1346 = load i64, i64* %1345, align 1
  %1347 = inttoptr i64 %1339 to double*
  %1348 = load double, double* %1347
  %1349 = fmul double %1343, %1348
  %1350 = bitcast i8* %1336 to double*
  store double %1349, double* %1350, align 1
  %1351 = getelementptr inbounds i8, i8* %1336, i64 8
  %1352 = bitcast i8* %1351 to i64*
  store i64 %1346, i64* %1352, align 1
  store %struct.Memory* %loadMem_400869, %struct.Memory** %MEMORY
  %loadMem_400871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 15
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1360 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1359, i64 0, i64 0
  %YMM0.i330 = bitcast %union.VectorReg* %1360 to %"class.std::bitset"*
  %1361 = bitcast %"class.std::bitset"* %YMM0.i330 to i8*
  %1362 = bitcast %"class.std::bitset"* %YMM0.i330 to i8*
  %1363 = load i64, i64* %RBP.i329
  %1364 = sub i64 %1363, 248
  %1365 = load i64, i64* %PC.i328
  %1366 = add i64 %1365, 8
  store i64 %1366, i64* %PC.i328
  %1367 = bitcast i8* %1362 to double*
  %1368 = load double, double* %1367, align 1
  %1369 = getelementptr inbounds i8, i8* %1362, i64 8
  %1370 = bitcast i8* %1369 to i64*
  %1371 = load i64, i64* %1370, align 1
  %1372 = inttoptr i64 %1364 to double*
  %1373 = load double, double* %1372
  %1374 = fmul double %1368, %1373
  %1375 = bitcast i8* %1361 to double*
  store double %1374, double* %1375, align 1
  %1376 = getelementptr inbounds i8, i8* %1361, i64 8
  %1377 = bitcast i8* %1376 to i64*
  store i64 %1371, i64* %1377, align 1
  store %struct.Memory* %loadMem_400871, %struct.Memory** %MEMORY
  %loadMem_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 15
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1384, i64 0, i64 0
  %XMM0.i327 = bitcast %union.VectorReg* %1385 to %union.vec128_t*
  %1386 = load i64, i64* %RBP.i326
  %1387 = sub i64 %1386, 256
  %1388 = bitcast %union.vec128_t* %XMM0.i327 to i8*
  %1389 = load i64, i64* %PC.i325
  %1390 = add i64 %1389, 8
  store i64 %1390, i64* %PC.i325
  %1391 = bitcast i8* %1388 to double*
  %1392 = load double, double* %1391, align 1
  %1393 = inttoptr i64 %1387 to double*
  store double %1392, double* %1393
  store %struct.Memory* %loadMem_400879, %struct.Memory** %MEMORY
  %loadMem_400881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 15
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1401 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1400, i64 0, i64 0
  %YMM0.i324 = bitcast %union.VectorReg* %1401 to %"class.std::bitset"*
  %1402 = bitcast %"class.std::bitset"* %YMM0.i324 to i8*
  %1403 = load i64, i64* %RBP.i323
  %1404 = sub i64 %1403, 248
  %1405 = load i64, i64* %PC.i322
  %1406 = add i64 %1405, 8
  store i64 %1406, i64* %PC.i322
  %1407 = inttoptr i64 %1404 to double*
  %1408 = load double, double* %1407
  %1409 = bitcast i8* %1402 to double*
  store double %1408, double* %1409, align 1
  %1410 = getelementptr inbounds i8, i8* %1402, i64 8
  %1411 = bitcast i8* %1410 to double*
  store double 0.000000e+00, double* %1411, align 1
  store %struct.Memory* %loadMem_400881, %struct.Memory** %MEMORY
  %loadMem1_400889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %PC.i321
  %1416 = add i64 %1415, -825
  %1417 = load i64, i64* %PC.i321
  %1418 = add i64 %1417, 5
  %1419 = load i64, i64* %PC.i321
  %1420 = add i64 %1419, 5
  store i64 %1420, i64* %PC.i321
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1422 = load i64, i64* %1421, align 8
  %1423 = add i64 %1422, -8
  %1424 = inttoptr i64 %1423 to i64*
  store i64 %1418, i64* %1424
  store i64 %1423, i64* %1421, align 8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1416, i64* %1425, align 8
  store %struct.Memory* %loadMem1_400889, %struct.Memory** %MEMORY
  %loadMem2_400889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400889 = load i64, i64* %3
  %call2_400889 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_400889, %struct.Memory* %loadMem2_400889)
  store %struct.Memory* %call2_400889, %struct.Memory** %MEMORY
  %loadMem_40088e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 15
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1432, i64 0, i64 0
  %XMM0.i320 = bitcast %union.VectorReg* %1433 to %union.vec128_t*
  %1434 = load i64, i64* %RBP.i319
  %1435 = sub i64 %1434, 264
  %1436 = bitcast %union.vec128_t* %XMM0.i320 to i8*
  %1437 = load i64, i64* %PC.i318
  %1438 = add i64 %1437, 8
  store i64 %1438, i64* %PC.i318
  %1439 = bitcast i8* %1436 to double*
  %1440 = load double, double* %1439, align 1
  %1441 = inttoptr i64 %1435 to double*
  store double %1440, double* %1441
  store %struct.Memory* %loadMem_40088e, %struct.Memory** %MEMORY
  %loadMem_400896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 15
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1449 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1448, i64 0, i64 0
  %YMM0.i317 = bitcast %union.VectorReg* %1449 to %"class.std::bitset"*
  %1450 = bitcast %"class.std::bitset"* %YMM0.i317 to i8*
  %1451 = load i64, i64* %RBP.i316
  %1452 = sub i64 %1451, 248
  %1453 = load i64, i64* %PC.i315
  %1454 = add i64 %1453, 8
  store i64 %1454, i64* %PC.i315
  %1455 = inttoptr i64 %1452 to double*
  %1456 = load double, double* %1455
  %1457 = bitcast i8* %1450 to double*
  store double %1456, double* %1457, align 1
  %1458 = getelementptr inbounds i8, i8* %1450, i64 8
  %1459 = bitcast i8* %1458 to double*
  store double 0.000000e+00, double* %1459, align 1
  store %struct.Memory* %loadMem_400896, %struct.Memory** %MEMORY
  %loadMem1_40089e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %PC.i314
  %1464 = add i64 %1463, -862
  %1465 = load i64, i64* %PC.i314
  %1466 = add i64 %1465, 5
  %1467 = load i64, i64* %PC.i314
  %1468 = add i64 %1467, 5
  store i64 %1468, i64* %PC.i314
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1470 = load i64, i64* %1469, align 8
  %1471 = add i64 %1470, -8
  %1472 = inttoptr i64 %1471 to i64*
  store i64 %1466, i64* %1472
  store i64 %1471, i64* %1469, align 8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1464, i64* %1473, align 8
  store %struct.Memory* %loadMem1_40089e, %struct.Memory** %MEMORY
  %loadMem2_40089e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40089e = load i64, i64* %3
  %call2_40089e = call %struct.Memory* @ext_cos(%struct.State* %0, i64 %loadPC_40089e, %struct.Memory* %loadMem2_40089e)
  store %struct.Memory* %call2_40089e, %struct.Memory** %MEMORY
  %loadMem_4008a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1480, i64 0, i64 0
  %XMM0.i313 = bitcast %union.VectorReg* %1481 to %union.vec128_t*
  %1482 = load i64, i64* %RBP.i312
  %1483 = sub i64 %1482, 272
  %1484 = bitcast %union.vec128_t* %XMM0.i313 to i8*
  %1485 = load i64, i64* %PC.i311
  %1486 = add i64 %1485, 8
  store i64 %1486, i64* %PC.i311
  %1487 = bitcast i8* %1484 to double*
  %1488 = load double, double* %1487, align 1
  %1489 = inttoptr i64 %1483 to double*
  store double %1488, double* %1489
  store %struct.Memory* %loadMem_4008a3, %struct.Memory** %MEMORY
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 15
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1496, i64 0, i64 0
  %YMM0.i310 = bitcast %union.VectorReg* %1497 to %"class.std::bitset"*
  %1498 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %1499 = load i64, i64* %RBP.i309
  %1500 = sub i64 %1499, 256
  %1501 = load i64, i64* %PC.i308
  %1502 = add i64 %1501, 8
  store i64 %1502, i64* %PC.i308
  %1503 = inttoptr i64 %1500 to double*
  %1504 = load double, double* %1503
  %1505 = bitcast i8* %1498 to double*
  store double %1504, double* %1505, align 1
  %1506 = getelementptr inbounds i8, i8* %1498, i64 8
  %1507 = bitcast i8* %1506 to double*
  store double 0.000000e+00, double* %1507, align 1
  store %struct.Memory* %loadMem_4008ab, %struct.Memory** %MEMORY
  %loadMem_4008b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 15
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1515 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1514, i64 0, i64 0
  %YMM0.i307 = bitcast %union.VectorReg* %1515 to %"class.std::bitset"*
  %1516 = bitcast %"class.std::bitset"* %YMM0.i307 to i8*
  %1517 = bitcast %"class.std::bitset"* %YMM0.i307 to i8*
  %1518 = load i64, i64* %RBP.i306
  %1519 = sub i64 %1518, 264
  %1520 = load i64, i64* %PC.i305
  %1521 = add i64 %1520, 8
  store i64 %1521, i64* %PC.i305
  %1522 = bitcast i8* %1517 to double*
  %1523 = load double, double* %1522, align 1
  %1524 = getelementptr inbounds i8, i8* %1517, i64 8
  %1525 = bitcast i8* %1524 to i64*
  %1526 = load i64, i64* %1525, align 1
  %1527 = inttoptr i64 %1519 to double*
  %1528 = load double, double* %1527
  %1529 = fmul double %1523, %1528
  %1530 = bitcast i8* %1516 to double*
  store double %1529, double* %1530, align 1
  %1531 = getelementptr inbounds i8, i8* %1516, i64 8
  %1532 = bitcast i8* %1531 to i64*
  store i64 %1526, i64* %1532, align 1
  store %struct.Memory* %loadMem_4008b3, %struct.Memory** %MEMORY
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 15
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1539, i64 0, i64 0
  %YMM0.i304 = bitcast %union.VectorReg* %1540 to %"class.std::bitset"*
  %1541 = bitcast %"class.std::bitset"* %YMM0.i304 to i8*
  %1542 = bitcast %"class.std::bitset"* %YMM0.i304 to i8*
  %1543 = load i64, i64* %RBP.i303
  %1544 = sub i64 %1543, 264
  %1545 = load i64, i64* %PC.i302
  %1546 = add i64 %1545, 8
  store i64 %1546, i64* %PC.i302
  %1547 = bitcast i8* %1542 to double*
  %1548 = load double, double* %1547, align 1
  %1549 = getelementptr inbounds i8, i8* %1542, i64 8
  %1550 = bitcast i8* %1549 to i64*
  %1551 = load i64, i64* %1550, align 1
  %1552 = inttoptr i64 %1544 to double*
  %1553 = load double, double* %1552
  %1554 = fmul double %1548, %1553
  %1555 = bitcast i8* %1541 to double*
  store double %1554, double* %1555, align 1
  %1556 = getelementptr inbounds i8, i8* %1541, i64 8
  %1557 = bitcast i8* %1556 to i64*
  store i64 %1551, i64* %1557, align 1
  store %struct.Memory* %loadMem_4008bb, %struct.Memory** %MEMORY
  %loadMem_4008c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 15
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1564, i64 0, i64 1
  %YMM1.i301 = bitcast %union.VectorReg* %1565 to %"class.std::bitset"*
  %1566 = bitcast %"class.std::bitset"* %YMM1.i301 to i8*
  %1567 = load i64, i64* %RBP.i300
  %1568 = sub i64 %1567, 296
  %1569 = load i64, i64* %PC.i299
  %1570 = add i64 %1569, 8
  store i64 %1570, i64* %PC.i299
  %1571 = inttoptr i64 %1568 to double*
  %1572 = load double, double* %1571
  %1573 = bitcast i8* %1566 to double*
  store double %1572, double* %1573, align 1
  %1574 = getelementptr inbounds i8, i8* %1566, i64 8
  %1575 = bitcast i8* %1574 to double*
  store double 0.000000e+00, double* %1575, align 1
  store %struct.Memory* %loadMem_4008c3, %struct.Memory** %MEMORY
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1579, i64 0, i64 1
  %YMM1.i297 = bitcast %union.VectorReg* %1580 to %"class.std::bitset"*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1581, i64 0, i64 0
  %XMM0.i298 = bitcast %union.VectorReg* %1582 to %union.vec128_t*
  %1583 = bitcast %"class.std::bitset"* %YMM1.i297 to i8*
  %1584 = bitcast %"class.std::bitset"* %YMM1.i297 to i8*
  %1585 = bitcast %union.vec128_t* %XMM0.i298 to i8*
  %1586 = load i64, i64* %PC.i296
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC.i296
  %1588 = bitcast i8* %1584 to double*
  %1589 = load double, double* %1588, align 1
  %1590 = getelementptr inbounds i8, i8* %1584, i64 8
  %1591 = bitcast i8* %1590 to i64*
  %1592 = load i64, i64* %1591, align 1
  %1593 = bitcast i8* %1585 to double*
  %1594 = load double, double* %1593, align 1
  %1595 = fdiv double %1589, %1594
  %1596 = bitcast i8* %1583 to double*
  store double %1595, double* %1596, align 1
  %1597 = getelementptr inbounds i8, i8* %1583, i64 8
  %1598 = bitcast i8* %1597 to i64*
  store i64 %1592, i64* %1598, align 1
  store %struct.Memory* %loadMem_4008cb, %struct.Memory** %MEMORY
  %loadMem_4008cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 15
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1605, i64 0, i64 1
  %YMM1.i295 = bitcast %union.VectorReg* %1606 to %"class.std::bitset"*
  %1607 = bitcast %"class.std::bitset"* %YMM1.i295 to i8*
  %1608 = bitcast %"class.std::bitset"* %YMM1.i295 to i8*
  %1609 = load i64, i64* %RBP.i294
  %1610 = sub i64 %1609, 40
  %1611 = load i64, i64* %PC.i293
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC.i293
  %1613 = bitcast i8* %1608 to double*
  %1614 = load double, double* %1613, align 1
  %1615 = getelementptr inbounds i8, i8* %1608, i64 8
  %1616 = bitcast i8* %1615 to i64*
  %1617 = load i64, i64* %1616, align 1
  %1618 = inttoptr i64 %1610 to double*
  %1619 = load double, double* %1618
  %1620 = fadd double %1614, %1619
  %1621 = bitcast i8* %1607 to double*
  store double %1620, double* %1621, align 1
  %1622 = getelementptr inbounds i8, i8* %1607, i64 8
  %1623 = bitcast i8* %1622 to i64*
  store i64 %1617, i64* %1623, align 1
  store %struct.Memory* %loadMem_4008cf, %struct.Memory** %MEMORY
  %loadMem_4008d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 15
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1631 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1630, i64 0, i64 1
  %XMM1.i292 = bitcast %union.VectorReg* %1631 to %union.vec128_t*
  %1632 = load i64, i64* %RBP.i291
  %1633 = sub i64 %1632, 40
  %1634 = bitcast %union.vec128_t* %XMM1.i292 to i8*
  %1635 = load i64, i64* %PC.i290
  %1636 = add i64 %1635, 5
  store i64 %1636, i64* %PC.i290
  %1637 = bitcast i8* %1634 to double*
  %1638 = load double, double* %1637, align 1
  %1639 = inttoptr i64 %1633 to double*
  store double %1638, double* %1639
  store %struct.Memory* %loadMem_4008d4, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 15
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1646, i64 0, i64 0
  %YMM0.i289 = bitcast %union.VectorReg* %1647 to %"class.std::bitset"*
  %1648 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %1649 = load i64, i64* %RBP.i288
  %1650 = sub i64 %1649, 256
  %1651 = load i64, i64* %PC.i287
  %1652 = add i64 %1651, 8
  store i64 %1652, i64* %PC.i287
  %1653 = inttoptr i64 %1650 to double*
  %1654 = load double, double* %1653
  %1655 = bitcast i8* %1648 to double*
  store double %1654, double* %1655, align 1
  %1656 = getelementptr inbounds i8, i8* %1648, i64 8
  %1657 = bitcast i8* %1656 to double*
  store double 0.000000e+00, double* %1657, align 1
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 15
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1664, i64 0, i64 0
  %YMM0.i286 = bitcast %union.VectorReg* %1665 to %"class.std::bitset"*
  %1666 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %1667 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %1668 = load i64, i64* %RBP.i285
  %1669 = sub i64 %1668, 272
  %1670 = load i64, i64* %PC.i284
  %1671 = add i64 %1670, 8
  store i64 %1671, i64* %PC.i284
  %1672 = bitcast i8* %1667 to double*
  %1673 = load double, double* %1672, align 1
  %1674 = getelementptr inbounds i8, i8* %1667, i64 8
  %1675 = bitcast i8* %1674 to i64*
  %1676 = load i64, i64* %1675, align 1
  %1677 = inttoptr i64 %1669 to double*
  %1678 = load double, double* %1677
  %1679 = fmul double %1673, %1678
  %1680 = bitcast i8* %1666 to double*
  store double %1679, double* %1680, align 1
  %1681 = getelementptr inbounds i8, i8* %1666, i64 8
  %1682 = bitcast i8* %1681 to i64*
  store i64 %1676, i64* %1682, align 1
  store %struct.Memory* %loadMem_4008e1, %struct.Memory** %MEMORY
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1689, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %1690 to %"class.std::bitset"*
  %1691 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %1692 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %1693 = load i64, i64* %RBP.i282
  %1694 = sub i64 %1693, 272
  %1695 = load i64, i64* %PC.i281
  %1696 = add i64 %1695, 8
  store i64 %1696, i64* %PC.i281
  %1697 = bitcast i8* %1692 to double*
  %1698 = load double, double* %1697, align 1
  %1699 = getelementptr inbounds i8, i8* %1692, i64 8
  %1700 = bitcast i8* %1699 to i64*
  %1701 = load i64, i64* %1700, align 1
  %1702 = inttoptr i64 %1694 to double*
  %1703 = load double, double* %1702
  %1704 = fmul double %1698, %1703
  %1705 = bitcast i8* %1691 to double*
  store double %1704, double* %1705, align 1
  %1706 = getelementptr inbounds i8, i8* %1691, i64 8
  %1707 = bitcast i8* %1706 to i64*
  store i64 %1701, i64* %1707, align 1
  store %struct.Memory* %loadMem_4008e9, %struct.Memory** %MEMORY
  %loadMem_4008f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 33
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 15
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1714, i64 0, i64 1
  %YMM1.i280 = bitcast %union.VectorReg* %1715 to %"class.std::bitset"*
  %1716 = bitcast %"class.std::bitset"* %YMM1.i280 to i8*
  %1717 = load i64, i64* %RBP.i279
  %1718 = sub i64 %1717, 296
  %1719 = load i64, i64* %PC.i278
  %1720 = add i64 %1719, 8
  store i64 %1720, i64* %PC.i278
  %1721 = inttoptr i64 %1718 to double*
  %1722 = load double, double* %1721
  %1723 = bitcast i8* %1716 to double*
  store double %1722, double* %1723, align 1
  %1724 = getelementptr inbounds i8, i8* %1716, i64 8
  %1725 = bitcast i8* %1724 to double*
  store double 0.000000e+00, double* %1725, align 1
  store %struct.Memory* %loadMem_4008f1, %struct.Memory** %MEMORY
  %loadMem_4008f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1729, i64 0, i64 1
  %YMM1.i276 = bitcast %union.VectorReg* %1730 to %"class.std::bitset"*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1731, i64 0, i64 0
  %XMM0.i277 = bitcast %union.VectorReg* %1732 to %union.vec128_t*
  %1733 = bitcast %"class.std::bitset"* %YMM1.i276 to i8*
  %1734 = bitcast %"class.std::bitset"* %YMM1.i276 to i8*
  %1735 = bitcast %union.vec128_t* %XMM0.i277 to i8*
  %1736 = load i64, i64* %PC.i275
  %1737 = add i64 %1736, 4
  store i64 %1737, i64* %PC.i275
  %1738 = bitcast i8* %1734 to double*
  %1739 = load double, double* %1738, align 1
  %1740 = getelementptr inbounds i8, i8* %1734, i64 8
  %1741 = bitcast i8* %1740 to i64*
  %1742 = load i64, i64* %1741, align 1
  %1743 = bitcast i8* %1735 to double*
  %1744 = load double, double* %1743, align 1
  %1745 = fdiv double %1739, %1744
  %1746 = bitcast i8* %1733 to double*
  store double %1745, double* %1746, align 1
  %1747 = getelementptr inbounds i8, i8* %1733, i64 8
  %1748 = bitcast i8* %1747 to i64*
  store i64 %1742, i64* %1748, align 1
  store %struct.Memory* %loadMem_4008f9, %struct.Memory** %MEMORY
  %loadMem_4008fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1755, i64 0, i64 1
  %YMM1.i274 = bitcast %union.VectorReg* %1756 to %"class.std::bitset"*
  %1757 = bitcast %"class.std::bitset"* %YMM1.i274 to i8*
  %1758 = bitcast %"class.std::bitset"* %YMM1.i274 to i8*
  %1759 = load i64, i64* %RBP.i273
  %1760 = sub i64 %1759, 48
  %1761 = load i64, i64* %PC.i272
  %1762 = add i64 %1761, 5
  store i64 %1762, i64* %PC.i272
  %1763 = bitcast i8* %1758 to double*
  %1764 = load double, double* %1763, align 1
  %1765 = getelementptr inbounds i8, i8* %1758, i64 8
  %1766 = bitcast i8* %1765 to i64*
  %1767 = load i64, i64* %1766, align 1
  %1768 = inttoptr i64 %1760 to double*
  %1769 = load double, double* %1768
  %1770 = fadd double %1764, %1769
  %1771 = bitcast i8* %1757 to double*
  store double %1770, double* %1771, align 1
  %1772 = getelementptr inbounds i8, i8* %1757, i64 8
  %1773 = bitcast i8* %1772 to i64*
  store i64 %1767, i64* %1773, align 1
  store %struct.Memory* %loadMem_4008fd, %struct.Memory** %MEMORY
  %loadMem_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 15
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1780, i64 0, i64 1
  %XMM1.i271 = bitcast %union.VectorReg* %1781 to %union.vec128_t*
  %1782 = load i64, i64* %RBP.i270
  %1783 = sub i64 %1782, 48
  %1784 = bitcast %union.vec128_t* %XMM1.i271 to i8*
  %1785 = load i64, i64* %PC.i269
  %1786 = add i64 %1785, 5
  store i64 %1786, i64* %PC.i269
  %1787 = bitcast i8* %1784 to double*
  %1788 = load double, double* %1787, align 1
  %1789 = inttoptr i64 %1783 to double*
  store double %1788, double* %1789
  store %struct.Memory* %loadMem_400902, %struct.Memory** %MEMORY
  %loadMem_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 33
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1794 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1793, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %1794 to %"class.std::bitset"*
  %1795 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %1796 = load i64, i64* %PC.i267
  %1797 = add i64 %1796, 817
  %1798 = load i64, i64* %PC.i267
  %1799 = add i64 %1798, 8
  store i64 %1799, i64* %PC.i267
  %1800 = inttoptr i64 %1797 to double*
  %1801 = load double, double* %1800
  %1802 = bitcast i8* %1795 to double*
  store double %1801, double* %1802, align 1
  %1803 = getelementptr inbounds i8, i8* %1795, i64 8
  %1804 = bitcast i8* %1803 to double*
  store double 0.000000e+00, double* %1804, align 1
  store %struct.Memory* %loadMem_400907, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 15
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1812 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1811, i64 0, i64 0
  %YMM0.i266 = bitcast %union.VectorReg* %1812 to %"class.std::bitset"*
  %1813 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1814 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1815 = load i64, i64* %RBP.i265
  %1816 = sub i64 %1815, 248
  %1817 = load i64, i64* %PC.i264
  %1818 = add i64 %1817, 8
  store i64 %1818, i64* %PC.i264
  %1819 = bitcast i8* %1814 to double*
  %1820 = load double, double* %1819, align 1
  %1821 = getelementptr inbounds i8, i8* %1814, i64 8
  %1822 = bitcast i8* %1821 to i64*
  %1823 = load i64, i64* %1822, align 1
  %1824 = inttoptr i64 %1816 to double*
  %1825 = load double, double* %1824
  %1826 = fadd double %1820, %1825
  %1827 = bitcast i8* %1813 to double*
  store double %1826, double* %1827, align 1
  %1828 = getelementptr inbounds i8, i8* %1813, i64 8
  %1829 = bitcast i8* %1828 to i64*
  store i64 %1823, i64* %1829, align 1
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  %loadMem_400917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 15
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1837 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1836, i64 0, i64 0
  %XMM0.i263 = bitcast %union.VectorReg* %1837 to %union.vec128_t*
  %1838 = load i64, i64* %RBP.i262
  %1839 = sub i64 %1838, 248
  %1840 = bitcast %union.vec128_t* %XMM0.i263 to i8*
  %1841 = load i64, i64* %PC.i261
  %1842 = add i64 %1841, 8
  store i64 %1842, i64* %PC.i261
  %1843 = bitcast i8* %1840 to double*
  %1844 = load double, double* %1843, align 1
  %1845 = inttoptr i64 %1839 to double*
  store double %1844, double* %1845
  store %struct.Memory* %loadMem_400917, %struct.Memory** %MEMORY
  %loadMem_40091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %PC.i260
  %1850 = add i64 %1849, -313
  %1851 = load i64, i64* %PC.i260
  %1852 = add i64 %1851, 5
  store i64 %1852, i64* %PC.i260
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1850, i64* %1853, align 8
  store %struct.Memory* %loadMem_40091f, %struct.Memory** %MEMORY
  br label %block_.L_4007e6

block_.L_400924:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit384
  %loadMem_400924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 15
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1860, i64 0, i64 0
  %YMM0.i259 = bitcast %union.VectorReg* %1861 to %"class.std::bitset"*
  %1862 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %1863 = load i64, i64* %RBP.i258
  %1864 = sub i64 %1863, 192
  %1865 = load i64, i64* %PC.i257
  %1866 = add i64 %1865, 8
  store i64 %1866, i64* %PC.i257
  %1867 = inttoptr i64 %1864 to double*
  %1868 = load double, double* %1867
  %1869 = add i64 %1864, 8
  %1870 = inttoptr i64 %1869 to double*
  %1871 = load double, double* %1870
  %1872 = bitcast i8* %1862 to double*
  store double %1868, double* %1872, align 1
  %1873 = getelementptr inbounds i8, i8* %1862, i64 8
  %1874 = bitcast i8* %1873 to double*
  store double %1871, double* %1874, align 1
  store %struct.Memory* %loadMem_400924, %struct.Memory** %MEMORY
  %loadMem_40092c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 15
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1881, i64 0, i64 0
  %XMM0.i256 = bitcast %union.VectorReg* %1882 to %union.vec128_t*
  %1883 = load i64, i64* %RBP.i255
  %1884 = sub i64 %1883, 224
  %1885 = bitcast %union.vec128_t* %XMM0.i256 to i8*
  %1886 = load i64, i64* %PC.i254
  %1887 = add i64 %1886, 8
  store i64 %1887, i64* %PC.i254
  %1888 = bitcast i8* %1885 to double*
  %1889 = load double, double* %1888, align 1
  %1890 = getelementptr inbounds i8, i8* %1885, i64 8
  %1891 = bitcast i8* %1890 to double*
  %1892 = load double, double* %1891, align 1
  %1893 = inttoptr i64 %1884 to double*
  store double %1889, double* %1893
  %1894 = add i64 %1884, 8
  %1895 = inttoptr i64 %1894 to double*
  store double %1892, double* %1895
  store %struct.Memory* %loadMem_40092c, %struct.Memory** %MEMORY
  br label %block_.L_400934

block_.L_400934:                                  ; preds = %block_40094e, %block_.L_400924
  %loadMem_400934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1902, i64 0, i64 0
  %YMM0.i253 = bitcast %union.VectorReg* %1903 to %"class.std::bitset"*
  %1904 = bitcast %"class.std::bitset"* %YMM0.i253 to i8*
  %1905 = load i64, i64* %RBP.i252
  %1906 = sub i64 %1905, 224
  %1907 = load i64, i64* %PC.i251
  %1908 = add i64 %1907, 8
  store i64 %1908, i64* %PC.i251
  %1909 = inttoptr i64 %1906 to double*
  %1910 = load double, double* %1909
  %1911 = bitcast i8* %1904 to double*
  store double %1910, double* %1911, align 1
  %1912 = getelementptr inbounds i8, i8* %1904, i64 8
  %1913 = bitcast i8* %1912 to double*
  store double 0.000000e+00, double* %1913, align 1
  store %struct.Memory* %loadMem_400934, %struct.Memory** %MEMORY
  %loadMem_40093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 15
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1920, i64 0, i64 1
  %YMM1.i250 = bitcast %union.VectorReg* %1921 to %"class.std::bitset"*
  %1922 = bitcast %"class.std::bitset"* %YMM1.i250 to i8*
  %1923 = load i64, i64* %RBP.i249
  %1924 = sub i64 %1923, 276
  %1925 = load i64, i64* %PC.i248
  %1926 = add i64 %1925, 8
  store i64 %1926, i64* %PC.i248
  %1927 = inttoptr i64 %1924 to i32*
  %1928 = load i32, i32* %1927
  %1929 = sitofp i32 %1928 to double
  %1930 = bitcast i8* %1922 to double*
  store double %1929, double* %1930, align 1
  store %struct.Memory* %loadMem_40093c, %struct.Memory** %MEMORY
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1934, i64 0, i64 0
  %XMM0.i243 = bitcast %union.VectorReg* %1935 to %union.vec128_t*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1936, i64 0, i64 1
  %XMM1.i244 = bitcast %union.VectorReg* %1937 to %union.vec128_t*
  %1938 = bitcast %union.vec128_t* %XMM1.i244 to i8*
  %1939 = bitcast %union.vec128_t* %XMM0.i243 to i8*
  %1940 = load i64, i64* %PC.i242
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i242
  %1942 = bitcast i8* %1938 to double*
  %1943 = load double, double* %1942, align 1
  %1944 = bitcast i8* %1939 to double*
  %1945 = load double, double* %1944, align 1
  %1946 = fcmp uno double %1943, %1945
  br i1 %1946, label %1947, label %1959

; <label>:1947:                                   ; preds = %block_.L_400934
  %1948 = fadd double %1943, %1945
  %1949 = bitcast double %1948 to i64
  %1950 = and i64 %1949, 9221120237041090560
  %1951 = icmp eq i64 %1950, 9218868437227405312
  %1952 = and i64 %1949, 2251799813685247
  %1953 = icmp ne i64 %1952, 0
  %1954 = and i1 %1951, %1953
  br i1 %1954, label %1955, label %1965

; <label>:1955:                                   ; preds = %1947
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1957 = load i64, i64* %1956, align 8
  %1958 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1957, %struct.Memory* %loadMem_400944)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1959:                                   ; preds = %block_.L_400934
  %1960 = fcmp ogt double %1943, %1945
  br i1 %1960, label %1965, label %1961

; <label>:1961:                                   ; preds = %1959
  %1962 = fcmp olt double %1943, %1945
  br i1 %1962, label %1965, label %1963

; <label>:1963:                                   ; preds = %1961
  %1964 = fcmp oeq double %1943, %1945
  br i1 %1964, label %1965, label %1972

; <label>:1965:                                   ; preds = %1963, %1961, %1959, %1947
  %1966 = phi i8 [ 0, %1959 ], [ 0, %1961 ], [ 1, %1963 ], [ 1, %1947 ]
  %1967 = phi i8 [ 0, %1959 ], [ 0, %1961 ], [ 0, %1963 ], [ 1, %1947 ]
  %1968 = phi i8 [ 0, %1959 ], [ 1, %1961 ], [ 0, %1963 ], [ 1, %1947 ]
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1966, i8* %1969, align 1
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1967, i8* %1970, align 1
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1968, i8* %1971, align 1
  br label %1972

; <label>:1972:                                   ; preds = %1965, %1963
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1973, align 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1974, align 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1975, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1955, %1972
  %1976 = phi %struct.Memory* [ %1958, %1955 ], [ %loadMem_400944, %1972 ]
  store %struct.Memory* %1976, %struct.Memory** %MEMORY
  %loadMem_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i241
  %1981 = add i64 %1980, 221
  %1982 = load i64, i64* %PC.i241
  %1983 = add i64 %1982, 6
  %1984 = load i64, i64* %PC.i241
  %1985 = add i64 %1984, 6
  store i64 %1985, i64* %PC.i241
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1987 = load i8, i8* %1986, align 1
  store i8 %1987, i8* %BRANCH_TAKEN, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1989 = icmp ne i8 %1987, 0
  %1990 = select i1 %1989, i64 %1981, i64 %1983
  store i64 %1990, i64* %1988, align 8
  store %struct.Memory* %loadMem_400948, %struct.Memory** %MEMORY
  %loadBr_400948 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400948 = icmp eq i8 %loadBr_400948, 1
  br i1 %cmpBr_400948, label %block_.L_400a25, label %block_40094e

block_40094e:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_40094e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 15
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1997, i64 0, i64 0
  %YMM0.i240 = bitcast %union.VectorReg* %1998 to %"class.std::bitset"*
  %1999 = bitcast %"class.std::bitset"* %YMM0.i240 to i8*
  %2000 = load i64, i64* %RBP.i239
  %2001 = sub i64 %2000, 160
  %2002 = load i64, i64* %PC.i238
  %2003 = add i64 %2002, 8
  store i64 %2003, i64* %PC.i238
  %2004 = inttoptr i64 %2001 to double*
  %2005 = load double, double* %2004
  %2006 = add i64 %2001, 8
  %2007 = inttoptr i64 %2006 to double*
  %2008 = load double, double* %2007
  %2009 = bitcast i8* %1999 to double*
  store double %2005, double* %2009, align 1
  %2010 = getelementptr inbounds i8, i8* %1999, i64 8
  %2011 = bitcast i8* %2010 to double*
  store double %2008, double* %2011, align 1
  store %struct.Memory* %loadMem_40094e, %struct.Memory** %MEMORY
  %loadMem_400956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 15
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2018, i64 0, i64 1
  %YMM1.i237 = bitcast %union.VectorReg* %2019 to %"class.std::bitset"*
  %2020 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %2021 = load i64, i64* %RBP.i236
  %2022 = sub i64 %2021, 224
  %2023 = load i64, i64* %PC.i235
  %2024 = add i64 %2023, 8
  store i64 %2024, i64* %PC.i235
  %2025 = inttoptr i64 %2022 to double*
  %2026 = load double, double* %2025
  %2027 = add i64 %2022, 8
  %2028 = inttoptr i64 %2027 to double*
  %2029 = load double, double* %2028
  %2030 = bitcast i8* %2020 to double*
  store double %2026, double* %2030, align 1
  %2031 = getelementptr inbounds i8, i8* %2020, i64 8
  %2032 = bitcast i8* %2031 to double*
  store double %2029, double* %2032, align 1
  store %struct.Memory* %loadMem_400956, %struct.Memory** %MEMORY
  %loadMem_40095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 15
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2039, i64 0, i64 2
  %YMM2.i234 = bitcast %union.VectorReg* %2040 to %"class.std::bitset"*
  %2041 = bitcast %"class.std::bitset"* %YMM2.i234 to i8*
  %2042 = load i64, i64* %RBP.i233
  %2043 = sub i64 %2042, 224
  %2044 = load i64, i64* %PC.i232
  %2045 = add i64 %2044, 8
  store i64 %2045, i64* %PC.i232
  %2046 = inttoptr i64 %2043 to double*
  %2047 = load double, double* %2046
  %2048 = add i64 %2043, 8
  %2049 = inttoptr i64 %2048 to double*
  %2050 = load double, double* %2049
  %2051 = bitcast i8* %2041 to double*
  store double %2047, double* %2051, align 1
  %2052 = getelementptr inbounds i8, i8* %2041, i64 8
  %2053 = bitcast i8* %2052 to double*
  store double %2050, double* %2053, align 1
  store %struct.Memory* %loadMem_40095e, %struct.Memory** %MEMORY
  %loadMem_400966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 15
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2060, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2061 to %"class.std::bitset"*
  %2062 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2063 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2064 = load i64, i64* %RBP.i231
  %2065 = sub i64 %2064, 160
  %2066 = load i64, i64* %PC.i230
  %2067 = add i64 %2066, 8
  store i64 %2067, i64* %PC.i230
  %2068 = bitcast i8* %2063 to <2 x double>*
  %2069 = load <2 x double>, <2 x double>* %2068, align 1
  %2070 = inttoptr i64 %2065 to double*
  %2071 = load double, double* %2070
  %2072 = add i64 %2065, 8
  %2073 = inttoptr i64 %2072 to double*
  %2074 = load double, double* %2073
  %2075 = insertelement <2 x double> undef, double %2071, i32 0
  %2076 = insertelement <2 x double> %2075, double %2074, i32 1
  %2077 = fadd <2 x double> %2069, %2076
  %2078 = bitcast i8* %2062 to <2 x double>*
  store <2 x double> %2077, <2 x double>* %2078, align 1
  store %struct.Memory* %loadMem_400966, %struct.Memory** %MEMORY
  %loadMem_40096e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2082, i64 0, i64 1
  %YMM1.i229 = bitcast %union.VectorReg* %2083 to %"class.std::bitset"*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2084, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2085 to %union.vec128_t*
  %2086 = bitcast %"class.std::bitset"* %YMM1.i229 to i8*
  %2087 = bitcast %"class.std::bitset"* %YMM1.i229 to i8*
  %2088 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2089 = load i64, i64* %PC.i228
  %2090 = add i64 %2089, 4
  store i64 %2090, i64* %PC.i228
  %2091 = bitcast i8* %2087 to <2 x double>*
  %2092 = load <2 x double>, <2 x double>* %2091, align 1
  %2093 = bitcast i8* %2088 to <2 x double>*
  %2094 = load <2 x double>, <2 x double>* %2093, align 1
  %2095 = fmul <2 x double> %2092, %2094
  %2096 = bitcast i8* %2086 to <2 x double>*
  store <2 x double> %2095, <2 x double>* %2096, align 1
  store %struct.Memory* %loadMem_40096e, %struct.Memory** %MEMORY
  %loadMem_400972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2100, i64 0, i64 0
  %YMM0.i226 = bitcast %union.VectorReg* %2101 to %"class.std::bitset"*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2102, i64 0, i64 1
  %XMM1.i227 = bitcast %union.VectorReg* %2103 to %union.vec128_t*
  %2104 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %2105 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %2106 = bitcast %union.vec128_t* %XMM1.i227 to i8*
  %2107 = load i64, i64* %PC.i225
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i225
  %2109 = bitcast i8* %2105 to <2 x double>*
  %2110 = load <2 x double>, <2 x double>* %2109, align 1
  %2111 = bitcast i8* %2106 to <2 x double>*
  %2112 = load <2 x double>, <2 x double>* %2111, align 1
  %2113 = fdiv <2 x double> %2110, %2112
  %2114 = bitcast i8* %2104 to <2 x double>*
  store <2 x double> %2113, <2 x double>* %2114, align 1
  store %struct.Memory* %loadMem_400972, %struct.Memory** %MEMORY
  %loadMem_400976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2121, i64 0, i64 0
  %YMM0.i224 = bitcast %union.VectorReg* %2122 to %"class.std::bitset"*
  %2123 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %2124 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %2125 = load i64, i64* %RBP.i223
  %2126 = sub i64 %2125, 96
  %2127 = load i64, i64* %PC.i222
  %2128 = add i64 %2127, 5
  store i64 %2128, i64* %PC.i222
  %2129 = bitcast i8* %2124 to <2 x double>*
  %2130 = load <2 x double>, <2 x double>* %2129, align 1
  %2131 = inttoptr i64 %2126 to double*
  %2132 = load double, double* %2131
  %2133 = add i64 %2126, 8
  %2134 = inttoptr i64 %2133 to double*
  %2135 = load double, double* %2134
  %2136 = insertelement <2 x double> undef, double %2132, i32 0
  %2137 = insertelement <2 x double> %2136, double %2135, i32 1
  %2138 = fadd <2 x double> %2130, %2137
  %2139 = bitcast i8* %2123 to <2 x double>*
  store <2 x double> %2138, <2 x double>* %2139, align 1
  store %struct.Memory* %loadMem_400976, %struct.Memory** %MEMORY
  %loadMem_40097b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 15
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2146, i64 0, i64 0
  %XMM0.i221 = bitcast %union.VectorReg* %2147 to %union.vec128_t*
  %2148 = load i64, i64* %RBP.i220
  %2149 = sub i64 %2148, 96
  %2150 = bitcast %union.vec128_t* %XMM0.i221 to i8*
  %2151 = load i64, i64* %PC.i219
  %2152 = add i64 %2151, 5
  store i64 %2152, i64* %PC.i219
  %2153 = bitcast i8* %2150 to double*
  %2154 = load double, double* %2153, align 1
  %2155 = getelementptr inbounds i8, i8* %2150, i64 8
  %2156 = bitcast i8* %2155 to double*
  %2157 = load double, double* %2156, align 1
  %2158 = inttoptr i64 %2149 to double*
  store double %2154, double* %2158
  %2159 = add i64 %2149, 8
  %2160 = inttoptr i64 %2159 to double*
  store double %2157, double* %2160
  store %struct.Memory* %loadMem_40097b, %struct.Memory** %MEMORY
  %loadMem_400980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 15
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2167, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %2168 to %"class.std::bitset"*
  %2169 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %2170 = load i64, i64* %RBP.i217
  %2171 = sub i64 %2170, 160
  %2172 = load i64, i64* %PC.i216
  %2173 = add i64 %2172, 8
  store i64 %2173, i64* %PC.i216
  %2174 = inttoptr i64 %2171 to double*
  %2175 = load double, double* %2174
  %2176 = add i64 %2171, 8
  %2177 = inttoptr i64 %2176 to double*
  %2178 = load double, double* %2177
  %2179 = bitcast i8* %2169 to double*
  store double %2175, double* %2179, align 1
  %2180 = getelementptr inbounds i8, i8* %2169, i64 8
  %2181 = bitcast i8* %2180 to double*
  store double %2178, double* %2181, align 1
  store %struct.Memory* %loadMem_400980, %struct.Memory** %MEMORY
  %loadMem_400988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 15
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2188, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %2189 to %"class.std::bitset"*
  %2190 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %2191 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %2192 = load i64, i64* %RBP.i214
  %2193 = sub i64 %2192, 224
  %2194 = load i64, i64* %PC.i213
  %2195 = add i64 %2194, 8
  store i64 %2195, i64* %PC.i213
  %2196 = bitcast i8* %2191 to <2 x double>*
  %2197 = load <2 x double>, <2 x double>* %2196, align 1
  %2198 = inttoptr i64 %2193 to double*
  %2199 = load double, double* %2198
  %2200 = add i64 %2193, 8
  %2201 = inttoptr i64 %2200 to double*
  %2202 = load double, double* %2201
  %2203 = insertelement <2 x double> undef, double %2199, i32 0
  %2204 = insertelement <2 x double> %2203, double %2202, i32 1
  %2205 = fdiv <2 x double> %2197, %2204
  %2206 = bitcast i8* %2190 to <2 x double>*
  store <2 x double> %2205, <2 x double>* %2206, align 1
  store %struct.Memory* %loadMem_400988, %struct.Memory** %MEMORY
  %loadMem_400990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2213, i64 0, i64 0
  %YMM0.i212 = bitcast %union.VectorReg* %2214 to %"class.std::bitset"*
  %2215 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %2216 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %2217 = load i64, i64* %RBP.i211
  %2218 = sub i64 %2217, 64
  %2219 = load i64, i64* %PC.i210
  %2220 = add i64 %2219, 5
  store i64 %2220, i64* %PC.i210
  %2221 = bitcast i8* %2216 to <2 x double>*
  %2222 = load <2 x double>, <2 x double>* %2221, align 1
  %2223 = inttoptr i64 %2218 to double*
  %2224 = load double, double* %2223
  %2225 = add i64 %2218, 8
  %2226 = inttoptr i64 %2225 to double*
  %2227 = load double, double* %2226
  %2228 = insertelement <2 x double> undef, double %2224, i32 0
  %2229 = insertelement <2 x double> %2228, double %2227, i32 1
  %2230 = fadd <2 x double> %2222, %2229
  %2231 = bitcast i8* %2215 to <2 x double>*
  store <2 x double> %2230, <2 x double>* %2231, align 1
  store %struct.Memory* %loadMem_400990, %struct.Memory** %MEMORY
  %loadMem_400995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 15
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2238, i64 0, i64 0
  %XMM0.i209 = bitcast %union.VectorReg* %2239 to %union.vec128_t*
  %2240 = load i64, i64* %RBP.i208
  %2241 = sub i64 %2240, 64
  %2242 = bitcast %union.vec128_t* %XMM0.i209 to i8*
  %2243 = load i64, i64* %PC.i207
  %2244 = add i64 %2243, 5
  store i64 %2244, i64* %PC.i207
  %2245 = bitcast i8* %2242 to double*
  %2246 = load double, double* %2245, align 1
  %2247 = getelementptr inbounds i8, i8* %2242, i64 8
  %2248 = bitcast i8* %2247 to double*
  %2249 = load double, double* %2248, align 1
  %2250 = inttoptr i64 %2241 to double*
  store double %2246, double* %2250
  %2251 = add i64 %2241, 8
  %2252 = inttoptr i64 %2251 to double*
  store double %2249, double* %2252
  store %struct.Memory* %loadMem_400995, %struct.Memory** %MEMORY
  %loadMem_40099a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2259, i64 0, i64 0
  %YMM0.i206 = bitcast %union.VectorReg* %2260 to %"class.std::bitset"*
  %2261 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %2262 = load i64, i64* %RBP.i205
  %2263 = sub i64 %2262, 160
  %2264 = load i64, i64* %PC.i204
  %2265 = add i64 %2264, 8
  store i64 %2265, i64* %PC.i204
  %2266 = inttoptr i64 %2263 to double*
  %2267 = load double, double* %2266
  %2268 = add i64 %2263, 8
  %2269 = inttoptr i64 %2268 to double*
  %2270 = load double, double* %2269
  %2271 = bitcast i8* %2261 to double*
  store double %2267, double* %2271, align 1
  %2272 = getelementptr inbounds i8, i8* %2261, i64 8
  %2273 = bitcast i8* %2272 to double*
  store double %2270, double* %2273, align 1
  store %struct.Memory* %loadMem_40099a, %struct.Memory** %MEMORY
  %loadMem_4009a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 15
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2280, i64 0, i64 1
  %YMM1.i203 = bitcast %union.VectorReg* %2281 to %"class.std::bitset"*
  %2282 = bitcast %"class.std::bitset"* %YMM1.i203 to i8*
  %2283 = load i64, i64* %RBP.i202
  %2284 = sub i64 %2283, 224
  %2285 = load i64, i64* %PC.i201
  %2286 = add i64 %2285, 8
  store i64 %2286, i64* %PC.i201
  %2287 = inttoptr i64 %2284 to double*
  %2288 = load double, double* %2287
  %2289 = add i64 %2284, 8
  %2290 = inttoptr i64 %2289 to double*
  %2291 = load double, double* %2290
  %2292 = bitcast i8* %2282 to double*
  store double %2288, double* %2292, align 1
  %2293 = getelementptr inbounds i8, i8* %2282, i64 8
  %2294 = bitcast i8* %2293 to double*
  store double %2291, double* %2294, align 1
  store %struct.Memory* %loadMem_4009a2, %struct.Memory** %MEMORY
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 15
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2301, i64 0, i64 1
  %YMM1.i200 = bitcast %union.VectorReg* %2302 to %"class.std::bitset"*
  %2303 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %2304 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %2305 = load i64, i64* %RBP.i199
  %2306 = sub i64 %2305, 224
  %2307 = load i64, i64* %PC.i198
  %2308 = add i64 %2307, 8
  store i64 %2308, i64* %PC.i198
  %2309 = bitcast i8* %2304 to <2 x double>*
  %2310 = load <2 x double>, <2 x double>* %2309, align 1
  %2311 = inttoptr i64 %2306 to double*
  %2312 = load double, double* %2311
  %2313 = add i64 %2306, 8
  %2314 = inttoptr i64 %2313 to double*
  %2315 = load double, double* %2314
  %2316 = insertelement <2 x double> undef, double %2312, i32 0
  %2317 = insertelement <2 x double> %2316, double %2315, i32 1
  %2318 = fmul <2 x double> %2310, %2317
  %2319 = bitcast i8* %2303 to <2 x double>*
  store <2 x double> %2318, <2 x double>* %2319, align 1
  store %struct.Memory* %loadMem_4009aa, %struct.Memory** %MEMORY
  %loadMem_4009b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2323, i64 0, i64 0
  %YMM0.i196 = bitcast %union.VectorReg* %2324 to %"class.std::bitset"*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2325, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %2326 to %union.vec128_t*
  %2327 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %2328 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %2329 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %2330 = load i64, i64* %PC.i195
  %2331 = add i64 %2330, 4
  store i64 %2331, i64* %PC.i195
  %2332 = bitcast i8* %2328 to <2 x double>*
  %2333 = load <2 x double>, <2 x double>* %2332, align 1
  %2334 = bitcast i8* %2329 to <2 x double>*
  %2335 = load <2 x double>, <2 x double>* %2334, align 1
  %2336 = fdiv <2 x double> %2333, %2335
  %2337 = bitcast i8* %2327 to <2 x double>*
  store <2 x double> %2336, <2 x double>* %2337, align 1
  store %struct.Memory* %loadMem_4009b2, %struct.Memory** %MEMORY
  %loadMem_4009b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 15
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2344, i64 0, i64 0
  %YMM0.i194 = bitcast %union.VectorReg* %2345 to %"class.std::bitset"*
  %2346 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2347 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2348 = load i64, i64* %RBP.i193
  %2349 = sub i64 %2348, 80
  %2350 = load i64, i64* %PC.i192
  %2351 = add i64 %2350, 5
  store i64 %2351, i64* %PC.i192
  %2352 = bitcast i8* %2347 to <2 x double>*
  %2353 = load <2 x double>, <2 x double>* %2352, align 1
  %2354 = inttoptr i64 %2349 to double*
  %2355 = load double, double* %2354
  %2356 = add i64 %2349, 8
  %2357 = inttoptr i64 %2356 to double*
  %2358 = load double, double* %2357
  %2359 = insertelement <2 x double> undef, double %2355, i32 0
  %2360 = insertelement <2 x double> %2359, double %2358, i32 1
  %2361 = fadd <2 x double> %2353, %2360
  %2362 = bitcast i8* %2346 to <2 x double>*
  store <2 x double> %2361, <2 x double>* %2362, align 1
  store %struct.Memory* %loadMem_4009b6, %struct.Memory** %MEMORY
  %loadMem_4009bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 15
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2369, i64 0, i64 0
  %XMM0.i191 = bitcast %union.VectorReg* %2370 to %union.vec128_t*
  %2371 = load i64, i64* %RBP.i190
  %2372 = sub i64 %2371, 80
  %2373 = bitcast %union.vec128_t* %XMM0.i191 to i8*
  %2374 = load i64, i64* %PC.i189
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %PC.i189
  %2376 = bitcast i8* %2373 to double*
  %2377 = load double, double* %2376, align 1
  %2378 = getelementptr inbounds i8, i8* %2373, i64 8
  %2379 = bitcast i8* %2378 to double*
  %2380 = load double, double* %2379, align 1
  %2381 = inttoptr i64 %2372 to double*
  store double %2377, double* %2381
  %2382 = add i64 %2372, 8
  %2383 = inttoptr i64 %2382 to double*
  store double %2380, double* %2383
  store %struct.Memory* %loadMem_4009bb, %struct.Memory** %MEMORY
  %loadMem_4009c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 15
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2390, i64 0, i64 0
  %YMM0.i188 = bitcast %union.VectorReg* %2391 to %"class.std::bitset"*
  %2392 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %2393 = load i64, i64* %RBP.i187
  %2394 = sub i64 %2393, 240
  %2395 = load i64, i64* %PC.i186
  %2396 = add i64 %2395, 8
  store i64 %2396, i64* %PC.i186
  %2397 = inttoptr i64 %2394 to double*
  %2398 = load double, double* %2397
  %2399 = add i64 %2394, 8
  %2400 = inttoptr i64 %2399 to double*
  %2401 = load double, double* %2400
  %2402 = bitcast i8* %2392 to double*
  store double %2398, double* %2402, align 1
  %2403 = getelementptr inbounds i8, i8* %2392, i64 8
  %2404 = bitcast i8* %2403 to double*
  store double %2401, double* %2404, align 1
  store %struct.Memory* %loadMem_4009c0, %struct.Memory** %MEMORY
  %loadMem_4009c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2411, i64 0, i64 0
  %YMM0.i185 = bitcast %union.VectorReg* %2412 to %"class.std::bitset"*
  %2413 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %2414 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %2415 = load i64, i64* %RBP.i184
  %2416 = sub i64 %2415, 224
  %2417 = load i64, i64* %PC.i183
  %2418 = add i64 %2417, 8
  store i64 %2418, i64* %PC.i183
  %2419 = bitcast i8* %2414 to <2 x double>*
  %2420 = load <2 x double>, <2 x double>* %2419, align 1
  %2421 = inttoptr i64 %2416 to double*
  %2422 = load double, double* %2421
  %2423 = add i64 %2416, 8
  %2424 = inttoptr i64 %2423 to double*
  %2425 = load double, double* %2424
  %2426 = insertelement <2 x double> undef, double %2422, i32 0
  %2427 = insertelement <2 x double> %2426, double %2425, i32 1
  %2428 = fdiv <2 x double> %2420, %2427
  %2429 = bitcast i8* %2413 to <2 x double>*
  store <2 x double> %2428, <2 x double>* %2429, align 1
  store %struct.Memory* %loadMem_4009c8, %struct.Memory** %MEMORY
  %loadMem_4009d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 33
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 15
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2436, i64 0, i64 0
  %YMM0.i182 = bitcast %union.VectorReg* %2437 to %"class.std::bitset"*
  %2438 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %2439 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %2440 = load i64, i64* %RBP.i181
  %2441 = sub i64 %2440, 112
  %2442 = load i64, i64* %PC.i180
  %2443 = add i64 %2442, 5
  store i64 %2443, i64* %PC.i180
  %2444 = bitcast i8* %2439 to <2 x double>*
  %2445 = load <2 x double>, <2 x double>* %2444, align 1
  %2446 = inttoptr i64 %2441 to double*
  %2447 = load double, double* %2446
  %2448 = add i64 %2441, 8
  %2449 = inttoptr i64 %2448 to double*
  %2450 = load double, double* %2449
  %2451 = insertelement <2 x double> undef, double %2447, i32 0
  %2452 = insertelement <2 x double> %2451, double %2450, i32 1
  %2453 = fadd <2 x double> %2445, %2452
  %2454 = bitcast i8* %2438 to <2 x double>*
  store <2 x double> %2453, <2 x double>* %2454, align 1
  store %struct.Memory* %loadMem_4009d0, %struct.Memory** %MEMORY
  %loadMem_4009d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 15
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2461, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %2462 to %union.vec128_t*
  %2463 = load i64, i64* %RBP.i178
  %2464 = sub i64 %2463, 112
  %2465 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %2466 = load i64, i64* %PC.i177
  %2467 = add i64 %2466, 5
  store i64 %2467, i64* %PC.i177
  %2468 = bitcast i8* %2465 to double*
  %2469 = load double, double* %2468, align 1
  %2470 = getelementptr inbounds i8, i8* %2465, i64 8
  %2471 = bitcast i8* %2470 to double*
  %2472 = load double, double* %2471, align 1
  %2473 = inttoptr i64 %2464 to double*
  store double %2469, double* %2473
  %2474 = add i64 %2464, 8
  %2475 = inttoptr i64 %2474 to double*
  store double %2472, double* %2475
  store %struct.Memory* %loadMem_4009d5, %struct.Memory** %MEMORY
  %loadMem_4009da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 15
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2482, i64 0, i64 0
  %YMM0.i176 = bitcast %union.VectorReg* %2483 to %"class.std::bitset"*
  %2484 = bitcast %"class.std::bitset"* %YMM0.i176 to i8*
  %2485 = load i64, i64* %RBP.i175
  %2486 = sub i64 %2485, 240
  %2487 = load i64, i64* %PC.i174
  %2488 = add i64 %2487, 8
  store i64 %2488, i64* %PC.i174
  %2489 = inttoptr i64 %2486 to double*
  %2490 = load double, double* %2489
  %2491 = add i64 %2486, 8
  %2492 = inttoptr i64 %2491 to double*
  %2493 = load double, double* %2492
  %2494 = bitcast i8* %2484 to double*
  store double %2490, double* %2494, align 1
  %2495 = getelementptr inbounds i8, i8* %2484, i64 8
  %2496 = bitcast i8* %2495 to double*
  store double %2493, double* %2496, align 1
  store %struct.Memory* %loadMem_4009da, %struct.Memory** %MEMORY
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 15
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2503, i64 0, i64 1
  %YMM1.i173 = bitcast %union.VectorReg* %2504 to %"class.std::bitset"*
  %2505 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %2506 = load i64, i64* %RBP.i172
  %2507 = sub i64 %2506, 176
  %2508 = load i64, i64* %PC.i171
  %2509 = add i64 %2508, 8
  store i64 %2509, i64* %PC.i171
  %2510 = inttoptr i64 %2507 to double*
  %2511 = load double, double* %2510
  %2512 = add i64 %2507, 8
  %2513 = inttoptr i64 %2512 to double*
  %2514 = load double, double* %2513
  %2515 = bitcast i8* %2505 to double*
  store double %2511, double* %2515, align 1
  %2516 = getelementptr inbounds i8, i8* %2505, i64 8
  %2517 = bitcast i8* %2516 to double*
  store double %2514, double* %2517, align 1
  store %struct.Memory* %loadMem_4009e2, %struct.Memory** %MEMORY
  %loadMem_4009ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 15
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2525 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2524, i64 0, i64 1
  %YMM1.i170 = bitcast %union.VectorReg* %2525 to %"class.std::bitset"*
  %2526 = bitcast %"class.std::bitset"* %YMM1.i170 to i8*
  %2527 = bitcast %"class.std::bitset"* %YMM1.i170 to i8*
  %2528 = load i64, i64* %RBP.i169
  %2529 = sub i64 %2528, 224
  %2530 = load i64, i64* %PC.i168
  %2531 = add i64 %2530, 8
  store i64 %2531, i64* %PC.i168
  %2532 = bitcast i8* %2527 to <2 x double>*
  %2533 = load <2 x double>, <2 x double>* %2532, align 1
  %2534 = inttoptr i64 %2529 to double*
  %2535 = load double, double* %2534
  %2536 = add i64 %2529, 8
  %2537 = inttoptr i64 %2536 to double*
  %2538 = load double, double* %2537
  %2539 = insertelement <2 x double> undef, double %2535, i32 0
  %2540 = insertelement <2 x double> %2539, double %2538, i32 1
  %2541 = fmul <2 x double> %2533, %2540
  %2542 = bitcast i8* %2526 to <2 x double>*
  store <2 x double> %2541, <2 x double>* %2542, align 1
  store %struct.Memory* %loadMem_4009ea, %struct.Memory** %MEMORY
  %loadMem_4009f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2549, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2550 to %"class.std::bitset"*
  %2551 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2552 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2553 = load i64, i64* %RBP.i167
  %2554 = sub i64 %2553, 160
  %2555 = load i64, i64* %PC.i166
  %2556 = add i64 %2555, 8
  store i64 %2556, i64* %PC.i166
  %2557 = bitcast i8* %2552 to <2 x double>*
  %2558 = load <2 x double>, <2 x double>* %2557, align 1
  %2559 = inttoptr i64 %2554 to double*
  %2560 = load double, double* %2559
  %2561 = add i64 %2554, 8
  %2562 = inttoptr i64 %2561 to double*
  %2563 = load double, double* %2562
  %2564 = insertelement <2 x double> undef, double %2560, i32 0
  %2565 = insertelement <2 x double> %2564, double %2563, i32 1
  %2566 = fsub <2 x double> %2558, %2565
  %2567 = bitcast i8* %2551 to <2 x double>*
  store <2 x double> %2566, <2 x double>* %2567, align 1
  store %struct.Memory* %loadMem_4009f2, %struct.Memory** %MEMORY
  %loadMem_4009fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2571, i64 0, i64 0
  %YMM0.i165 = bitcast %union.VectorReg* %2572 to %"class.std::bitset"*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2573, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2574 to %union.vec128_t*
  %2575 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %2576 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %2577 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2578 = load i64, i64* %PC.i164
  %2579 = add i64 %2578, 4
  store i64 %2579, i64* %PC.i164
  %2580 = bitcast i8* %2576 to <2 x double>*
  %2581 = load <2 x double>, <2 x double>* %2580, align 1
  %2582 = bitcast i8* %2577 to <2 x double>*
  %2583 = load <2 x double>, <2 x double>* %2582, align 1
  %2584 = fdiv <2 x double> %2581, %2583
  %2585 = bitcast i8* %2575 to <2 x double>*
  store <2 x double> %2584, <2 x double>* %2585, align 1
  store %struct.Memory* %loadMem_4009fa, %struct.Memory** %MEMORY
  %loadMem_4009fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2592, i64 0, i64 0
  %YMM0.i163 = bitcast %union.VectorReg* %2593 to %"class.std::bitset"*
  %2594 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %2595 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %2596 = load i64, i64* %RBP.i162
  %2597 = sub i64 %2596, 128
  %2598 = load i64, i64* %PC.i161
  %2599 = add i64 %2598, 5
  store i64 %2599, i64* %PC.i161
  %2600 = bitcast i8* %2595 to <2 x double>*
  %2601 = load <2 x double>, <2 x double>* %2600, align 1
  %2602 = inttoptr i64 %2597 to double*
  %2603 = load double, double* %2602
  %2604 = add i64 %2597, 8
  %2605 = inttoptr i64 %2604 to double*
  %2606 = load double, double* %2605
  %2607 = insertelement <2 x double> undef, double %2603, i32 0
  %2608 = insertelement <2 x double> %2607, double %2606, i32 1
  %2609 = fadd <2 x double> %2601, %2608
  %2610 = bitcast i8* %2594 to <2 x double>*
  store <2 x double> %2609, <2 x double>* %2610, align 1
  store %struct.Memory* %loadMem_4009fe, %struct.Memory** %MEMORY
  %loadMem_400a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 33
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 15
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2616 to i64*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2617, i64 0, i64 0
  %XMM0.i160 = bitcast %union.VectorReg* %2618 to %union.vec128_t*
  %2619 = load i64, i64* %RBP.i159
  %2620 = sub i64 %2619, 128
  %2621 = bitcast %union.vec128_t* %XMM0.i160 to i8*
  %2622 = load i64, i64* %PC.i158
  %2623 = add i64 %2622, 5
  store i64 %2623, i64* %PC.i158
  %2624 = bitcast i8* %2621 to double*
  %2625 = load double, double* %2624, align 1
  %2626 = getelementptr inbounds i8, i8* %2621, i64 8
  %2627 = bitcast i8* %2626 to double*
  %2628 = load double, double* %2627, align 1
  %2629 = inttoptr i64 %2620 to double*
  store double %2625, double* %2629
  %2630 = add i64 %2620, 8
  %2631 = inttoptr i64 %2630 to double*
  store double %2628, double* %2631
  store %struct.Memory* %loadMem_400a03, %struct.Memory** %MEMORY
  %loadMem_400a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 15
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2639 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2638, i64 0, i64 0
  %YMM0.i157 = bitcast %union.VectorReg* %2639 to %"class.std::bitset"*
  %2640 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %2641 = load i64, i64* %RBP.i156
  %2642 = sub i64 %2641, 176
  %2643 = load i64, i64* %PC.i155
  %2644 = add i64 %2643, 8
  store i64 %2644, i64* %PC.i155
  %2645 = inttoptr i64 %2642 to double*
  %2646 = load double, double* %2645
  %2647 = add i64 %2642, 8
  %2648 = inttoptr i64 %2647 to double*
  %2649 = load double, double* %2648
  %2650 = bitcast i8* %2640 to double*
  store double %2646, double* %2650, align 1
  %2651 = getelementptr inbounds i8, i8* %2640, i64 8
  %2652 = bitcast i8* %2651 to double*
  store double %2649, double* %2652, align 1
  store %struct.Memory* %loadMem_400a08, %struct.Memory** %MEMORY
  %loadMem_400a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 15
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2659, i64 0, i64 0
  %YMM0.i154 = bitcast %union.VectorReg* %2660 to %"class.std::bitset"*
  %2661 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %2662 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %2663 = load i64, i64* %RBP.i153
  %2664 = sub i64 %2663, 224
  %2665 = load i64, i64* %PC.i152
  %2666 = add i64 %2665, 8
  store i64 %2666, i64* %PC.i152
  %2667 = bitcast i8* %2662 to <2 x double>*
  %2668 = load <2 x double>, <2 x double>* %2667, align 1
  %2669 = inttoptr i64 %2664 to double*
  %2670 = load double, double* %2669
  %2671 = add i64 %2664, 8
  %2672 = inttoptr i64 %2671 to double*
  %2673 = load double, double* %2672
  %2674 = insertelement <2 x double> undef, double %2670, i32 0
  %2675 = insertelement <2 x double> %2674, double %2673, i32 1
  %2676 = fadd <2 x double> %2668, %2675
  %2677 = bitcast i8* %2661 to <2 x double>*
  store <2 x double> %2676, <2 x double>* %2677, align 1
  store %struct.Memory* %loadMem_400a10, %struct.Memory** %MEMORY
  %loadMem_400a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 0
  %XMM0.i151 = bitcast %union.VectorReg* %2685 to %union.vec128_t*
  %2686 = load i64, i64* %RBP.i150
  %2687 = sub i64 %2686, 224
  %2688 = bitcast %union.vec128_t* %XMM0.i151 to i8*
  %2689 = load i64, i64* %PC.i149
  %2690 = add i64 %2689, 8
  store i64 %2690, i64* %PC.i149
  %2691 = bitcast i8* %2688 to double*
  %2692 = load double, double* %2691, align 1
  %2693 = getelementptr inbounds i8, i8* %2688, i64 8
  %2694 = bitcast i8* %2693 to double*
  %2695 = load double, double* %2694, align 1
  %2696 = inttoptr i64 %2687 to double*
  store double %2692, double* %2696
  %2697 = add i64 %2687, 8
  %2698 = inttoptr i64 %2697 to double*
  store double %2695, double* %2698
  store %struct.Memory* %loadMem_400a18, %struct.Memory** %MEMORY
  %loadMem_400a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2701 to i64*
  %2702 = load i64, i64* %PC.i148
  %2703 = add i64 %2702, -236
  %2704 = load i64, i64* %PC.i148
  %2705 = add i64 %2704, 5
  store i64 %2705, i64* %PC.i148
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2703, i64* %2706, align 8
  store %struct.Memory* %loadMem_400a20, %struct.Memory** %MEMORY
  br label %block_.L_400934

block_.L_400a25:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 11
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %RDI.i147 = bitcast %union.anon* %2712 to i64*
  %2713 = load i64, i64* %PC.i146
  %2714 = add i64 %2713, 10
  store i64 %2714, i64* %PC.i146
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
  store %struct.Memory* %loadMem_400a25, %struct.Memory** %MEMORY
  %loadMem_400a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 9
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %PC.i144
  %2722 = add i64 %2721, 10
  store i64 %2722, i64* %PC.i144
  store i64 ptrtoint (%G__0x400c61_type* @G__0x400c61 to i64), i64* %RSI.i145, align 8
  store %struct.Memory* %loadMem_400a2f, %struct.Memory** %MEMORY
  %loadMem_400a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 15
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2728 to i64*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2729, i64 0, i64 0
  %YMM0.i143 = bitcast %union.VectorReg* %2730 to %"class.std::bitset"*
  %2731 = bitcast %"class.std::bitset"* %YMM0.i143 to i8*
  %2732 = load i64, i64* %RBP.i142
  %2733 = sub i64 %2732, 24
  %2734 = load i64, i64* %PC.i141
  %2735 = add i64 %2734, 5
  store i64 %2735, i64* %PC.i141
  %2736 = inttoptr i64 %2733 to double*
  %2737 = load double, double* %2736
  %2738 = bitcast i8* %2731 to double*
  store double %2737, double* %2738, align 1
  %2739 = getelementptr inbounds i8, i8* %2731, i64 8
  %2740 = bitcast i8* %2739 to double*
  store double 0.000000e+00, double* %2740, align 1
  store %struct.Memory* %loadMem_400a39, %struct.Memory** %MEMORY
  %loadMem_400a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 1
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %2747 = bitcast %union.anon* %2746 to %struct.anon.2*
  %AL.i140 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2747, i32 0, i32 0
  %2748 = load i64, i64* %PC.i139
  %2749 = add i64 %2748, 2
  store i64 %2749, i64* %PC.i139
  store i8 1, i8* %AL.i140, align 1
  store %struct.Memory* %loadMem_400a3e, %struct.Memory** %MEMORY
  %loadMem1_400a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %PC.i138
  %2754 = add i64 %2753, -1312
  %2755 = load i64, i64* %PC.i138
  %2756 = add i64 %2755, 5
  %2757 = load i64, i64* %PC.i138
  %2758 = add i64 %2757, 5
  store i64 %2758, i64* %PC.i138
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2760 = load i64, i64* %2759, align 8
  %2761 = add i64 %2760, -8
  %2762 = inttoptr i64 %2761 to i64*
  store i64 %2756, i64* %2762
  store i64 %2761, i64* %2759, align 8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2754, i64* %2763, align 8
  store %struct.Memory* %loadMem1_400a40, %struct.Memory** %MEMORY
  %loadMem2_400a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a40 = load i64, i64* %3
  %2764 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a40)
  store %struct.Memory* %2764, %struct.Memory** %MEMORY
  %loadMem_400a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 11
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RDI.i134 = bitcast %union.anon* %2770 to i64*
  %2771 = load i64, i64* %PC.i133
  %2772 = add i64 %2771, 10
  store i64 %2772, i64* %PC.i133
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i134, align 8
  store %struct.Memory* %loadMem_400a45, %struct.Memory** %MEMORY
  %loadMem_400a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 9
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RSI.i132 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i131
  %2780 = add i64 %2779, 10
  store i64 %2780, i64* %PC.i131
  store i64 ptrtoint (%G__0x400c69_type* @G__0x400c69 to i64), i64* %RSI.i132, align 8
  store %struct.Memory* %loadMem_400a4f, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2787, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %2788 to %"class.std::bitset"*
  %2789 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2790 = load i64, i64* %RBP.i129
  %2791 = sub i64 %2790, 32
  %2792 = load i64, i64* %PC.i128
  %2793 = add i64 %2792, 5
  store i64 %2793, i64* %PC.i128
  %2794 = inttoptr i64 %2791 to double*
  %2795 = load double, double* %2794
  %2796 = bitcast i8* %2789 to double*
  store double %2795, double* %2796, align 1
  %2797 = getelementptr inbounds i8, i8* %2789, i64 8
  %2798 = bitcast i8* %2797 to double*
  store double 0.000000e+00, double* %2798, align 1
  store %struct.Memory* %loadMem_400a59, %struct.Memory** %MEMORY
  %loadMem_400a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 1
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %2804 to i32*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 15
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2807 to i64*
  %2808 = load i64, i64* %RBP.i127
  %2809 = sub i64 %2808, 300
  %2810 = load i32, i32* %EAX.i126
  %2811 = zext i32 %2810 to i64
  %2812 = load i64, i64* %PC.i125
  %2813 = add i64 %2812, 6
  store i64 %2813, i64* %PC.i125
  %2814 = inttoptr i64 %2809 to i32*
  store i32 %2810, i32* %2814
  store %struct.Memory* %loadMem_400a5e, %struct.Memory** %MEMORY
  %loadMem_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 1
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %2821 = bitcast %union.anon* %2820 to %struct.anon.2*
  %AL.i124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2821, i32 0, i32 0
  %2822 = load i64, i64* %PC.i123
  %2823 = add i64 %2822, 2
  store i64 %2823, i64* %PC.i123
  store i8 1, i8* %AL.i124, align 1
  store %struct.Memory* %loadMem_400a64, %struct.Memory** %MEMORY
  %loadMem1_400a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %PC.i122
  %2828 = add i64 %2827, -1350
  %2829 = load i64, i64* %PC.i122
  %2830 = add i64 %2829, 5
  %2831 = load i64, i64* %PC.i122
  %2832 = add i64 %2831, 5
  store i64 %2832, i64* %PC.i122
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2834 = load i64, i64* %2833, align 8
  %2835 = add i64 %2834, -8
  %2836 = inttoptr i64 %2835 to i64*
  store i64 %2830, i64* %2836
  store i64 %2835, i64* %2833, align 8
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2828, i64* %2837, align 8
  store %struct.Memory* %loadMem1_400a66, %struct.Memory** %MEMORY
  %loadMem2_400a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a66 = load i64, i64* %3
  %2838 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a66)
  store %struct.Memory* %2838, %struct.Memory** %MEMORY
  %loadMem_400a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 15
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2846 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2845, i64 0, i64 0
  %YMM0.i118 = bitcast %union.VectorReg* %2846 to %"class.std::bitset"*
  %2847 = bitcast %"class.std::bitset"* %YMM0.i118 to i8*
  %2848 = load i64, i64* %RBP.i117
  %2849 = sub i64 %2848, 96
  %2850 = load i64, i64* %PC.i116
  %2851 = add i64 %2850, 5
  store i64 %2851, i64* %PC.i116
  %2852 = inttoptr i64 %2849 to double*
  %2853 = load double, double* %2852
  %2854 = add i64 %2849, 8
  %2855 = inttoptr i64 %2854 to double*
  %2856 = load double, double* %2855
  %2857 = bitcast i8* %2847 to double*
  store double %2853, double* %2857, align 1
  %2858 = getelementptr inbounds i8, i8* %2847, i64 8
  %2859 = bitcast i8* %2858 to double*
  store double %2856, double* %2859, align 1
  store %struct.Memory* %loadMem_400a6b, %struct.Memory** %MEMORY
  %loadMem_400a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 1
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %EAX.i114 = bitcast %union.anon* %2865 to i32*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 15
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %RBP.i115
  %2870 = sub i64 %2869, 304
  %2871 = load i32, i32* %EAX.i114
  %2872 = zext i32 %2871 to i64
  %2873 = load i64, i64* %PC.i113
  %2874 = add i64 %2873, 6
  store i64 %2874, i64* %PC.i113
  %2875 = inttoptr i64 %2870 to i32*
  store i32 %2871, i32* %2875
  store %struct.Memory* %loadMem_400a70, %struct.Memory** %MEMORY
  %loadMem1_400a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %PC.i112
  %2880 = add i64 %2879, -982
  %2881 = load i64, i64* %PC.i112
  %2882 = add i64 %2881, 5
  %2883 = load i64, i64* %PC.i112
  %2884 = add i64 %2883, 5
  store i64 %2884, i64* %PC.i112
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2886 = load i64, i64* %2885, align 8
  %2887 = add i64 %2886, -8
  %2888 = inttoptr i64 %2887 to i64*
  store i64 %2882, i64* %2888
  store i64 %2887, i64* %2885, align 8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2880, i64* %2889, align 8
  store %struct.Memory* %loadMem1_400a76, %struct.Memory** %MEMORY
  %loadMem2_400a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a76 = load i64, i64* %3
  %call2_400a76 = call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* %0, i64 %loadPC_400a76, %struct.Memory* %loadMem2_400a76)
  store %struct.Memory* %call2_400a76, %struct.Memory** %MEMORY
  %loadMem_400a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 11
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RDI.i111 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %PC.i110
  %2897 = add i64 %2896, 10
  store i64 %2897, i64* %PC.i110
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i111, align 8
  store %struct.Memory* %loadMem_400a7b, %struct.Memory** %MEMORY
  %loadMem_400a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 9
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RSI.i109 = bitcast %union.anon* %2903 to i64*
  %2904 = load i64, i64* %PC.i108
  %2905 = add i64 %2904, 10
  store i64 %2905, i64* %PC.i108
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI.i109, align 8
  store %struct.Memory* %loadMem_400a85, %struct.Memory** %MEMORY
  %loadMem_400a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 1
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %2912 = bitcast %union.anon* %2911 to %struct.anon.2*
  %AL.i107 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2912, i32 0, i32 0
  %2913 = load i64, i64* %PC.i106
  %2914 = add i64 %2913, 2
  store i64 %2914, i64* %PC.i106
  store i8 1, i8* %AL.i107, align 1
  store %struct.Memory* %loadMem_400a8f, %struct.Memory** %MEMORY
  %loadMem1_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2917 to i64*
  %2918 = load i64, i64* %PC.i105
  %2919 = add i64 %2918, -1393
  %2920 = load i64, i64* %PC.i105
  %2921 = add i64 %2920, 5
  %2922 = load i64, i64* %PC.i105
  %2923 = add i64 %2922, 5
  store i64 %2923, i64* %PC.i105
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2925 = load i64, i64* %2924, align 8
  %2926 = add i64 %2925, -8
  %2927 = inttoptr i64 %2926 to i64*
  store i64 %2921, i64* %2927
  store i64 %2926, i64* %2924, align 8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2919, i64* %2928, align 8
  store %struct.Memory* %loadMem1_400a91, %struct.Memory** %MEMORY
  %loadMem2_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a91 = load i64, i64* %3
  %2929 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a91)
  store %struct.Memory* %2929, %struct.Memory** %MEMORY
  %loadMem_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 11
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %PC.i100
  %2937 = add i64 %2936, 10
  store i64 %2937, i64* %PC.i100
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_400a96, %struct.Memory** %MEMORY
  %loadMem_400aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 9
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RSI.i99 = bitcast %union.anon* %2943 to i64*
  %2944 = load i64, i64* %PC.i98
  %2945 = add i64 %2944, 10
  store i64 %2945, i64* %PC.i98
  store i64 ptrtoint (%G__0x400c79_type* @G__0x400c79 to i64), i64* %RSI.i99, align 8
  store %struct.Memory* %loadMem_400aa0, %struct.Memory** %MEMORY
  %loadMem_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2952, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %2953 to %"class.std::bitset"*
  %2954 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %2955 = load i64, i64* %RBP.i96
  %2956 = sub i64 %2955, 40
  %2957 = load i64, i64* %PC.i95
  %2958 = add i64 %2957, 5
  store i64 %2958, i64* %PC.i95
  %2959 = inttoptr i64 %2956 to double*
  %2960 = load double, double* %2959
  %2961 = bitcast i8* %2954 to double*
  store double %2960, double* %2961, align 1
  %2962 = getelementptr inbounds i8, i8* %2954, i64 8
  %2963 = bitcast i8* %2962 to double*
  store double 0.000000e+00, double* %2963, align 1
  store %struct.Memory* %loadMem_400aaa, %struct.Memory** %MEMORY
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 1
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %2969 to i32*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 15
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RBP.i94
  %2974 = sub i64 %2973, 308
  %2975 = load i32, i32* %EAX.i93
  %2976 = zext i32 %2975 to i64
  %2977 = load i64, i64* %PC.i92
  %2978 = add i64 %2977, 6
  store i64 %2978, i64* %PC.i92
  %2979 = inttoptr i64 %2974 to i32*
  store i32 %2975, i32* %2979
  store %struct.Memory* %loadMem_400aaf, %struct.Memory** %MEMORY
  %loadMem_400ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %2986 = bitcast %union.anon* %2985 to %struct.anon.2*
  %AL.i91 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2986, i32 0, i32 0
  %2987 = load i64, i64* %PC.i90
  %2988 = add i64 %2987, 2
  store i64 %2988, i64* %PC.i90
  store i8 1, i8* %AL.i91, align 1
  store %struct.Memory* %loadMem_400ab5, %struct.Memory** %MEMORY
  %loadMem1_400ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %PC.i89
  %2993 = add i64 %2992, -1431
  %2994 = load i64, i64* %PC.i89
  %2995 = add i64 %2994, 5
  %2996 = load i64, i64* %PC.i89
  %2997 = add i64 %2996, 5
  store i64 %2997, i64* %PC.i89
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2999 = load i64, i64* %2998, align 8
  %3000 = add i64 %2999, -8
  %3001 = inttoptr i64 %3000 to i64*
  store i64 %2995, i64* %3001
  store i64 %3000, i64* %2998, align 8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2993, i64* %3002, align 8
  store %struct.Memory* %loadMem1_400ab7, %struct.Memory** %MEMORY
  %loadMem2_400ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ab7 = load i64, i64* %3
  %3003 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400ab7)
  store %struct.Memory* %3003, %struct.Memory** %MEMORY
  %loadMem_400abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 11
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %PC.i84
  %3011 = add i64 %3010, 10
  store i64 %3011, i64* %PC.i84
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_400abc, %struct.Memory** %MEMORY
  %loadMem_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 9
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %PC.i82
  %3019 = add i64 %3018, 10
  store i64 %3019, i64* %PC.i82
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_400ac6, %struct.Memory** %MEMORY
  %loadMem_400ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3026, i64 0, i64 0
  %YMM0.i81 = bitcast %union.VectorReg* %3027 to %"class.std::bitset"*
  %3028 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %3029 = load i64, i64* %RBP.i80
  %3030 = sub i64 %3029, 48
  %3031 = load i64, i64* %PC.i79
  %3032 = add i64 %3031, 5
  store i64 %3032, i64* %PC.i79
  %3033 = inttoptr i64 %3030 to double*
  %3034 = load double, double* %3033
  %3035 = bitcast i8* %3028 to double*
  store double %3034, double* %3035, align 1
  %3036 = getelementptr inbounds i8, i8* %3028, i64 8
  %3037 = bitcast i8* %3036 to double*
  store double 0.000000e+00, double* %3037, align 1
  store %struct.Memory* %loadMem_400ad0, %struct.Memory** %MEMORY
  %loadMem_400ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 33
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 1
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %3043 to i32*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 15
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3046 to i64*
  %3047 = load i64, i64* %RBP.i78
  %3048 = sub i64 %3047, 312
  %3049 = load i32, i32* %EAX.i77
  %3050 = zext i32 %3049 to i64
  %3051 = load i64, i64* %PC.i76
  %3052 = add i64 %3051, 6
  store i64 %3052, i64* %PC.i76
  %3053 = inttoptr i64 %3048 to i32*
  store i32 %3049, i32* %3053
  store %struct.Memory* %loadMem_400ad5, %struct.Memory** %MEMORY
  %loadMem_400adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 1
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %3060 = bitcast %union.anon* %3059 to %struct.anon.2*
  %AL.i75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3060, i32 0, i32 0
  %3061 = load i64, i64* %PC.i74
  %3062 = add i64 %3061, 2
  store i64 %3062, i64* %PC.i74
  store i8 1, i8* %AL.i75, align 1
  store %struct.Memory* %loadMem_400adb, %struct.Memory** %MEMORY
  %loadMem1_400add = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %PC.i73
  %3067 = add i64 %3066, -1469
  %3068 = load i64, i64* %PC.i73
  %3069 = add i64 %3068, 5
  %3070 = load i64, i64* %PC.i73
  %3071 = add i64 %3070, 5
  store i64 %3071, i64* %PC.i73
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3073 = load i64, i64* %3072, align 8
  %3074 = add i64 %3073, -8
  %3075 = inttoptr i64 %3074 to i64*
  store i64 %3069, i64* %3075
  store i64 %3074, i64* %3072, align 8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3067, i64* %3076, align 8
  store %struct.Memory* %loadMem1_400add, %struct.Memory** %MEMORY
  %loadMem2_400add = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400add = load i64, i64* %3
  %3077 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400add)
  store %struct.Memory* %3077, %struct.Memory** %MEMORY
  %loadMem_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 15
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3084, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %3085 to %"class.std::bitset"*
  %3086 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %3087 = load i64, i64* %RBP.i69
  %3088 = sub i64 %3087, 64
  %3089 = load i64, i64* %PC.i68
  %3090 = add i64 %3089, 5
  store i64 %3090, i64* %PC.i68
  %3091 = inttoptr i64 %3088 to double*
  %3092 = load double, double* %3091
  %3093 = add i64 %3088, 8
  %3094 = inttoptr i64 %3093 to double*
  %3095 = load double, double* %3094
  %3096 = bitcast i8* %3086 to double*
  store double %3092, double* %3096, align 1
  %3097 = getelementptr inbounds i8, i8* %3086, i64 8
  %3098 = bitcast i8* %3097 to double*
  store double %3095, double* %3098, align 1
  store %struct.Memory* %loadMem_400ae2, %struct.Memory** %MEMORY
  %loadMem_400ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 1
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %3104 to i32*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 15
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RBP.i67
  %3109 = sub i64 %3108, 316
  %3110 = load i32, i32* %EAX.i66
  %3111 = zext i32 %3110 to i64
  %3112 = load i64, i64* %PC.i65
  %3113 = add i64 %3112, 6
  store i64 %3113, i64* %PC.i65
  %3114 = inttoptr i64 %3109 to i32*
  store i32 %3110, i32* %3114
  store %struct.Memory* %loadMem_400ae7, %struct.Memory** %MEMORY
  %loadMem1_400aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %PC.i64
  %3119 = add i64 %3118, -1101
  %3120 = load i64, i64* %PC.i64
  %3121 = add i64 %3120, 5
  %3122 = load i64, i64* %PC.i64
  %3123 = add i64 %3122, 5
  store i64 %3123, i64* %PC.i64
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3125 = load i64, i64* %3124, align 8
  %3126 = add i64 %3125, -8
  %3127 = inttoptr i64 %3126 to i64*
  store i64 %3121, i64* %3127
  store i64 %3126, i64* %3124, align 8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3119, i64* %3128, align 8
  store %struct.Memory* %loadMem1_400aed, %struct.Memory** %MEMORY
  %loadMem2_400aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aed = load i64, i64* %3
  %call2_400aed = call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* %0, i64 %loadPC_400aed, %struct.Memory* %loadMem2_400aed)
  store %struct.Memory* %call2_400aed, %struct.Memory** %MEMORY
  %loadMem_400af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 11
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RDI.i63 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %PC.i62
  %3136 = add i64 %3135, 10
  store i64 %3136, i64* %PC.i62
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i63, align 8
  store %struct.Memory* %loadMem_400af2, %struct.Memory** %MEMORY
  %loadMem_400afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 9
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RSI.i61 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %PC.i60
  %3144 = add i64 %3143, 10
  store i64 %3144, i64* %PC.i60
  store i64 ptrtoint (%G__0x400cac_type* @G__0x400cac to i64), i64* %RSI.i61, align 8
  store %struct.Memory* %loadMem_400afc, %struct.Memory** %MEMORY
  %loadMem_400b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 1
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %3151 = bitcast %union.anon* %3150 to %struct.anon.2*
  %AL.i59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3151, i32 0, i32 0
  %3152 = load i64, i64* %PC.i58
  %3153 = add i64 %3152, 2
  store i64 %3153, i64* %PC.i58
  store i8 1, i8* %AL.i59, align 1
  store %struct.Memory* %loadMem_400b06, %struct.Memory** %MEMORY
  %loadMem1_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %PC.i57
  %3158 = add i64 %3157, -1512
  %3159 = load i64, i64* %PC.i57
  %3160 = add i64 %3159, 5
  %3161 = load i64, i64* %PC.i57
  %3162 = add i64 %3161, 5
  store i64 %3162, i64* %PC.i57
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3164 = load i64, i64* %3163, align 8
  %3165 = add i64 %3164, -8
  %3166 = inttoptr i64 %3165 to i64*
  store i64 %3160, i64* %3166
  store i64 %3165, i64* %3163, align 8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3158, i64* %3167, align 8
  store %struct.Memory* %loadMem1_400b08, %struct.Memory** %MEMORY
  %loadMem2_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b08 = load i64, i64* %3
  %3168 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b08)
  store %struct.Memory* %3168, %struct.Memory** %MEMORY
  %loadMem_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 15
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3175, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %3176 to %"class.std::bitset"*
  %3177 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %3178 = load i64, i64* %RBP.i53
  %3179 = sub i64 %3178, 80
  %3180 = load i64, i64* %PC.i52
  %3181 = add i64 %3180, 5
  store i64 %3181, i64* %PC.i52
  %3182 = inttoptr i64 %3179 to double*
  %3183 = load double, double* %3182
  %3184 = add i64 %3179, 8
  %3185 = inttoptr i64 %3184 to double*
  %3186 = load double, double* %3185
  %3187 = bitcast i8* %3177 to double*
  store double %3183, double* %3187, align 1
  %3188 = getelementptr inbounds i8, i8* %3177, i64 8
  %3189 = bitcast i8* %3188 to double*
  store double %3186, double* %3189, align 1
  store %struct.Memory* %loadMem_400b0d, %struct.Memory** %MEMORY
  %loadMem_400b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 1
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %EAX.i50 = bitcast %union.anon* %3195 to i32*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RBP.i51
  %3200 = sub i64 %3199, 320
  %3201 = load i32, i32* %EAX.i50
  %3202 = zext i32 %3201 to i64
  %3203 = load i64, i64* %PC.i49
  %3204 = add i64 %3203, 6
  store i64 %3204, i64* %PC.i49
  %3205 = inttoptr i64 %3200 to i32*
  store i32 %3201, i32* %3205
  store %struct.Memory* %loadMem_400b12, %struct.Memory** %MEMORY
  %loadMem1_400b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 33
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %PC.i48
  %3210 = add i64 %3209, -1144
  %3211 = load i64, i64* %PC.i48
  %3212 = add i64 %3211, 5
  %3213 = load i64, i64* %PC.i48
  %3214 = add i64 %3213, 5
  store i64 %3214, i64* %PC.i48
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3216 = load i64, i64* %3215, align 8
  %3217 = add i64 %3216, -8
  %3218 = inttoptr i64 %3217 to i64*
  store i64 %3212, i64* %3218
  store i64 %3217, i64* %3215, align 8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3210, i64* %3219, align 8
  store %struct.Memory* %loadMem1_400b18, %struct.Memory** %MEMORY
  %loadMem2_400b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b18 = load i64, i64* %3
  %call2_400b18 = call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* %0, i64 %loadPC_400b18, %struct.Memory* %loadMem2_400b18)
  store %struct.Memory* %call2_400b18, %struct.Memory** %MEMORY
  %loadMem_400b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 11
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RDI.i47 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %PC.i46
  %3227 = add i64 %3226, 10
  store i64 %3227, i64* %PC.i46
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i47, align 8
  store %struct.Memory* %loadMem_400b1d, %struct.Memory** %MEMORY
  %loadMem_400b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 9
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %PC.i44
  %3235 = add i64 %3234, 10
  store i64 %3235, i64* %PC.i44
  store i64 ptrtoint (%G__0x400c93_type* @G__0x400c93 to i64), i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_400b27, %struct.Memory** %MEMORY
  %loadMem_400b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 1
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %3242 = bitcast %union.anon* %3241 to %struct.anon.2*
  %AL.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3242, i32 0, i32 0
  %3243 = load i64, i64* %PC.i42
  %3244 = add i64 %3243, 2
  store i64 %3244, i64* %PC.i42
  store i8 1, i8* %AL.i43, align 1
  store %struct.Memory* %loadMem_400b31, %struct.Memory** %MEMORY
  %loadMem1_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3247 to i64*
  %3248 = load i64, i64* %PC.i41
  %3249 = add i64 %3248, -1555
  %3250 = load i64, i64* %PC.i41
  %3251 = add i64 %3250, 5
  %3252 = load i64, i64* %PC.i41
  %3253 = add i64 %3252, 5
  store i64 %3253, i64* %PC.i41
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3255 = load i64, i64* %3254, align 8
  %3256 = add i64 %3255, -8
  %3257 = inttoptr i64 %3256 to i64*
  store i64 %3251, i64* %3257
  store i64 %3256, i64* %3254, align 8
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3249, i64* %3258, align 8
  store %struct.Memory* %loadMem1_400b33, %struct.Memory** %MEMORY
  %loadMem2_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b33 = load i64, i64* %3
  %3259 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b33)
  store %struct.Memory* %3259, %struct.Memory** %MEMORY
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 15
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3266, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %3267 to %"class.std::bitset"*
  %3268 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %3269 = load i64, i64* %RBP.i37
  %3270 = sub i64 %3269, 112
  %3271 = load i64, i64* %PC.i36
  %3272 = add i64 %3271, 5
  store i64 %3272, i64* %PC.i36
  %3273 = inttoptr i64 %3270 to double*
  %3274 = load double, double* %3273
  %3275 = add i64 %3270, 8
  %3276 = inttoptr i64 %3275 to double*
  %3277 = load double, double* %3276
  %3278 = bitcast i8* %3268 to double*
  store double %3274, double* %3278, align 1
  %3279 = getelementptr inbounds i8, i8* %3268, i64 8
  %3280 = bitcast i8* %3279 to double*
  store double %3277, double* %3280, align 1
  store %struct.Memory* %loadMem_400b38, %struct.Memory** %MEMORY
  %loadMem_400b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 1
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %3286 to i32*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 15
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RBP.i35
  %3291 = sub i64 %3290, 324
  %3292 = load i32, i32* %EAX.i34
  %3293 = zext i32 %3292 to i64
  %3294 = load i64, i64* %PC.i33
  %3295 = add i64 %3294, 6
  store i64 %3295, i64* %PC.i33
  %3296 = inttoptr i64 %3291 to i32*
  store i32 %3292, i32* %3296
  store %struct.Memory* %loadMem_400b3d, %struct.Memory** %MEMORY
  %loadMem1_400b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %PC.i32
  %3301 = add i64 %3300, -1187
  %3302 = load i64, i64* %PC.i32
  %3303 = add i64 %3302, 5
  %3304 = load i64, i64* %PC.i32
  %3305 = add i64 %3304, 5
  store i64 %3305, i64* %PC.i32
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3307 = load i64, i64* %3306, align 8
  %3308 = add i64 %3307, -8
  %3309 = inttoptr i64 %3308 to i64*
  store i64 %3303, i64* %3309
  store i64 %3308, i64* %3306, align 8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3301, i64* %3310, align 8
  store %struct.Memory* %loadMem1_400b43, %struct.Memory** %MEMORY
  %loadMem2_400b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b43 = load i64, i64* %3
  %call2_400b43 = call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* %0, i64 %loadPC_400b43, %struct.Memory* %loadMem2_400b43)
  store %struct.Memory* %call2_400b43, %struct.Memory** %MEMORY
  %loadMem_400b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 11
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RDI.i31 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %PC.i30
  %3318 = add i64 %3317, 10
  store i64 %3318, i64* %PC.i30
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i31, align 8
  store %struct.Memory* %loadMem_400b48, %struct.Memory** %MEMORY
  %loadMem_400b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 9
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %RSI.i29 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %PC.i28
  %3326 = add i64 %3325, 10
  store i64 %3326, i64* %PC.i28
  store i64 ptrtoint (%G__0x400ca0_type* @G__0x400ca0 to i64), i64* %RSI.i29, align 8
  store %struct.Memory* %loadMem_400b52, %struct.Memory** %MEMORY
  %loadMem_400b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 1
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %3333 = bitcast %union.anon* %3332 to %struct.anon.2*
  %AL.i27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3333, i32 0, i32 0
  %3334 = load i64, i64* %PC.i26
  %3335 = add i64 %3334, 2
  store i64 %3335, i64* %PC.i26
  store i8 1, i8* %AL.i27, align 1
  store %struct.Memory* %loadMem_400b5c, %struct.Memory** %MEMORY
  %loadMem1_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %PC.i25
  %3340 = add i64 %3339, -1598
  %3341 = load i64, i64* %PC.i25
  %3342 = add i64 %3341, 5
  %3343 = load i64, i64* %PC.i25
  %3344 = add i64 %3343, 5
  store i64 %3344, i64* %PC.i25
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3346 = load i64, i64* %3345, align 8
  %3347 = add i64 %3346, -8
  %3348 = inttoptr i64 %3347 to i64*
  store i64 %3342, i64* %3348
  store i64 %3347, i64* %3345, align 8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3340, i64* %3349, align 8
  store %struct.Memory* %loadMem1_400b5e, %struct.Memory** %MEMORY
  %loadMem2_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b5e = load i64, i64* %3
  %3350 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b5e)
  store %struct.Memory* %3350, %struct.Memory** %MEMORY
  %loadMem_400b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3357, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3358 to %"class.std::bitset"*
  %3359 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3360 = load i64, i64* %RBP.i22
  %3361 = sub i64 %3360, 128
  %3362 = load i64, i64* %PC.i21
  %3363 = add i64 %3362, 5
  store i64 %3363, i64* %PC.i21
  %3364 = inttoptr i64 %3361 to double*
  %3365 = load double, double* %3364
  %3366 = add i64 %3361, 8
  %3367 = inttoptr i64 %3366 to double*
  %3368 = load double, double* %3367
  %3369 = bitcast i8* %3359 to double*
  store double %3365, double* %3369, align 1
  %3370 = getelementptr inbounds i8, i8* %3359, i64 8
  %3371 = bitcast i8* %3370 to double*
  store double %3368, double* %3371, align 1
  store %struct.Memory* %loadMem_400b63, %struct.Memory** %MEMORY
  %loadMem_400b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 1
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %3377 to i32*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 15
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3380 to i64*
  %3381 = load i64, i64* %RBP.i20
  %3382 = sub i64 %3381, 328
  %3383 = load i32, i32* %EAX.i19
  %3384 = zext i32 %3383 to i64
  %3385 = load i64, i64* %PC.i18
  %3386 = add i64 %3385, 6
  store i64 %3386, i64* %PC.i18
  %3387 = inttoptr i64 %3382 to i32*
  store i32 %3383, i32* %3387
  store %struct.Memory* %loadMem_400b68, %struct.Memory** %MEMORY
  %loadMem1_400b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %PC.i17
  %3392 = add i64 %3391, -1230
  %3393 = load i64, i64* %PC.i17
  %3394 = add i64 %3393, 5
  %3395 = load i64, i64* %PC.i17
  %3396 = add i64 %3395, 5
  store i64 %3396, i64* %PC.i17
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3398 = load i64, i64* %3397, align 8
  %3399 = add i64 %3398, -8
  %3400 = inttoptr i64 %3399 to i64*
  store i64 %3394, i64* %3400
  store i64 %3399, i64* %3397, align 8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3392, i64* %3401, align 8
  store %struct.Memory* %loadMem1_400b6e, %struct.Memory** %MEMORY
  %loadMem2_400b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b6e = load i64, i64* %3
  %call2_400b6e = call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* %0, i64 %loadPC_400b6e, %struct.Memory* %loadMem2_400b6e)
  store %struct.Memory* %call2_400b6e, %struct.Memory** %MEMORY
  %loadMem_400b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 11
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %PC.i16
  %3409 = add i64 %3408, 10
  store i64 %3409, i64* %PC.i16
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400b73, %struct.Memory** %MEMORY
  %loadMem_400b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 9
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %PC.i15
  %3417 = add i64 %3416, 10
  store i64 %3417, i64* %PC.i15
  store i64 ptrtoint (%G__0x400cb5_type* @G__0x400cb5 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400b7d, %struct.Memory** %MEMORY
  %loadMem_400b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 1
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %3424 = bitcast %union.anon* %3423 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3424, i32 0, i32 0
  %3425 = load i64, i64* %PC.i14
  %3426 = add i64 %3425, 2
  store i64 %3426, i64* %PC.i14
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400b87, %struct.Memory** %MEMORY
  %loadMem1_400b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3429 to i64*
  %3430 = load i64, i64* %PC.i13
  %3431 = add i64 %3430, -1641
  %3432 = load i64, i64* %PC.i13
  %3433 = add i64 %3432, 5
  %3434 = load i64, i64* %PC.i13
  %3435 = add i64 %3434, 5
  store i64 %3435, i64* %PC.i13
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3437 = load i64, i64* %3436, align 8
  %3438 = add i64 %3437, -8
  %3439 = inttoptr i64 %3438 to i64*
  store i64 %3433, i64* %3439
  store i64 %3438, i64* %3436, align 8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3431, i64* %3440, align 8
  store %struct.Memory* %loadMem1_400b89, %struct.Memory** %MEMORY
  %loadMem2_400b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b89 = load i64, i64* %3
  %3441 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b89)
  store %struct.Memory* %3441, %struct.Memory** %MEMORY
  %loadMem_400b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 5
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3447 to i32*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 5
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %RCX.i
  %3452 = load i32, i32* %ECX.i9
  %3453 = zext i32 %3452 to i64
  %3454 = load i64, i64* %PC.i8
  %3455 = add i64 %3454, 2
  store i64 %3455, i64* %PC.i8
  %3456 = xor i64 %3453, %3451
  %3457 = trunc i64 %3456 to i32
  %3458 = and i64 %3456, 4294967295
  store i64 %3458, i64* %RCX.i, align 8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3459, align 1
  %3460 = and i32 %3457, 255
  %3461 = call i32 @llvm.ctpop.i32(i32 %3460)
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = xor i8 %3463, 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3464, i8* %3465, align 1
  %3466 = icmp eq i32 %3457, 0
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3457, 31
  %3470 = trunc i32 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3470, i8* %3471, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3472, align 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3473, align 1
  store %struct.Memory* %loadMem_400b8e, %struct.Memory** %MEMORY
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3479 to i32*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 15
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RBP.i7
  %3484 = sub i64 %3483, 332
  %3485 = load i32, i32* %EAX.i
  %3486 = zext i32 %3485 to i64
  %3487 = load i64, i64* %PC.i6
  %3488 = add i64 %3487, 6
  store i64 %3488, i64* %PC.i6
  %3489 = inttoptr i64 %3484 to i32*
  store i32 %3485, i32* %3489
  store %struct.Memory* %loadMem_400b90, %struct.Memory** %MEMORY
  %loadMem_400b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 5
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3495 to i32*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 1
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3498 to i64*
  %3499 = load i32, i32* %ECX.i
  %3500 = zext i32 %3499 to i64
  %3501 = load i64, i64* %PC.i5
  %3502 = add i64 %3501, 2
  store i64 %3502, i64* %PC.i5
  %3503 = and i64 %3500, 4294967295
  store i64 %3503, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400b96, %struct.Memory** %MEMORY
  %loadMem_400b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 13
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %RSP.i
  %3511 = load i64, i64* %PC.i4
  %3512 = add i64 %3511, 7
  store i64 %3512, i64* %PC.i4
  %3513 = add i64 336, %3510
  store i64 %3513, i64* %RSP.i, align 8
  %3514 = icmp ult i64 %3513, %3510
  %3515 = icmp ult i64 %3513, 336
  %3516 = or i1 %3514, %3515
  %3517 = zext i1 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3517, i8* %3518, align 1
  %3519 = trunc i64 %3513 to i32
  %3520 = and i32 %3519, 255
  %3521 = call i32 @llvm.ctpop.i32(i32 %3520)
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = xor i8 %3523, 1
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3524, i8* %3525, align 1
  %3526 = xor i64 336, %3510
  %3527 = xor i64 %3526, %3513
  %3528 = lshr i64 %3527, 4
  %3529 = trunc i64 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3530, i8* %3531, align 1
  %3532 = icmp eq i64 %3513, 0
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3533, i8* %3534, align 1
  %3535 = lshr i64 %3513, 63
  %3536 = trunc i64 %3535 to i8
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3536, i8* %3537, align 1
  %3538 = lshr i64 %3510, 63
  %3539 = xor i64 %3535, %3538
  %3540 = add i64 %3539, %3535
  %3541 = icmp eq i64 %3540, 2
  %3542 = zext i1 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3542, i8* %3543, align 1
  store %struct.Memory* %loadMem_400b98, %struct.Memory** %MEMORY
  %loadMem_400b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %PC.i2
  %3551 = add i64 %3550, 1
  store i64 %3551, i64* %PC.i2
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3553 = load i64, i64* %3552, align 8
  %3554 = add i64 %3553, 8
  %3555 = inttoptr i64 %3553 to i64*
  %3556 = load i64, i64* %3555
  store i64 %3556, i64* %RBP.i3, align 8
  store i64 %3554, i64* %3552, align 8
  store %struct.Memory* %loadMem_400b9f, %struct.Memory** %MEMORY
  %loadMem_400ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %PC.i1
  %3561 = add i64 %3560, 1
  store i64 %3561, i64* %PC.i1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3564 = load i64, i64* %3563, align 8
  %3565 = inttoptr i64 %3564 to i64*
  %3566 = load i64, i64* %3565
  store i64 %3566, i64* %3562, align 8
  %3567 = add i64 %3564, 8
  store i64 %3567, i64* %3563, align 8
  store %struct.Memory* %loadMem_400ba0, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400ba0
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 336
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 336
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
  %23 = xor i64 336, %9
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 276
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2500000, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 288
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1305
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1297
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1265
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1233
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

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1241
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 208
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1198
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

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1198
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1163
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x114__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
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

define %struct.Memory* @routine_jb_.L_400924(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x448__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1104
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

define %struct.Memory* @routine_movsd_0x428__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1072
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x40c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1044
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 296
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 256
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 264
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 272
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 272
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x329__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 817
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

define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4007e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 224
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jb_.L_400a25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x double>*
  %16 = load <2 x double>, <2 x double>* %15, align 1
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = fmul <2 x double> %16, %18
  %20 = bitcast i8* %10 to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x double>*
  %16 = load <2 x double>, <2 x double>* %15, align 1
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = fdiv <2 x double> %16, %18
  %20 = bitcast i8* %10 to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fdiv <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fmul <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fsub <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400934(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400c58___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c61___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c61_type* @G__0x400c61 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
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

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x400c69___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c69_type* @G__0x400c69 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x400c70___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c79___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c79_type* @G__0x400c79 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c85___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 312
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400cac___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400cac_type* @G__0x400cac to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c93___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c93_type* @G__0x400c93 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400ca0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400ca0_type* @G__0x400ca0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 328
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400cb5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400cb5_type* @G__0x400cb5 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 332
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

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 336, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 336
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
  %25 = xor i64 336, %9
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
