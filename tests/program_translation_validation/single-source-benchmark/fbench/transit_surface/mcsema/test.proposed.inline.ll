; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%seg_601018__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%G_0x218__rip__4199424__type = type <{ [16 x i8] }>
%G_0x2b0__rip__4199280__type = type <{ [16 x i8] }>
%G_0x602340_type = type <{ [2 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602370_type = type <{ [16 x i8] }>
%G_0x602630_type = type <{ [16 x i8] }>
%G_0x602638_type = type <{ [16 x i8] }>
%G_0x602640_type = type <{ [16 x i8] }>
%G_0x602648_type = type <{ [16 x i8] }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x218__rip__4199424_ = global %G_0x218__rip__4199424__type zeroinitializer
@G_0x2b0__rip__4199280_ = global %G_0x2b0__rip__4199280__type zeroinitializer
@G_0x602340 = global %G_0x602340_type zeroinitializer
@G_0x602348 = global %G_0x602348_type zeroinitializer
@G_0x602370 = global %G_0x602370_type zeroinitializer
@G_0x602630 = global %G_0x602630_type zeroinitializer
@G_0x602638 = global %G_0x602638_type zeroinitializer
@G_0x602640 = global %G_0x602640_type zeroinitializer
@G_0x602648 = global %G_0x602648_type zeroinitializer

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
define %struct.Memory* @transit_surface(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4010d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4010d0, %struct.Memory** %MEMORY
  %loadMem_4010d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i98 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i98
  %27 = load i64, i64* %PC.i97
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i97
  store i64 %26, i64* %RBP.i99, align 8
  store %struct.Memory* %loadMem_4010d1, %struct.Memory** %MEMORY
  %loadMem_4010d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i208 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i208
  %36 = load i64, i64* %PC.i207
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i207
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i208, align 8
  %39 = icmp ult i64 %35, 144
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
  %49 = xor i64 144, %35
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
  store %struct.Memory* %loadMem_4010d4, %struct.Memory** %MEMORY
  %loadMem_4010db = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %PC.i242
  %71 = add i64 %70, 9
  store i64 %71, i64* %PC.i242
  %72 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*)
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %73, align 1
  %74 = and i16 %72, 255
  %75 = zext i16 %74 to i32
  %76 = call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %79, i8* %80, align 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %81, align 1
  %82 = icmp eq i16 %72, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1
  %85 = lshr i16 %72, 15
  %86 = trunc i16 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1
  %88 = lshr i16 %72, 15
  %89 = xor i16 %85, %88
  %90 = add i16 %89, %88
  %91 = icmp eq i16 %90, 2
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %92, i8* %93, align 1
  store %struct.Memory* %loadMem_4010db, %struct.Memory** %MEMORY
  %loadMem_4010e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %PC.i289
  %98 = add i64 %97, 391
  %99 = load i64, i64* %PC.i289
  %100 = add i64 %99, 6
  %101 = load i64, i64* %PC.i289
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC.i289
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %BRANCH_TAKEN, align 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %106 = icmp ne i8 %104, 0
  %107 = select i1 %106, i64 %98, i64 %100
  store i64 %107, i64* %105, align 8
  store %struct.Memory* %loadMem_4010e4, %struct.Memory** %MEMORY
  %loadBr_4010e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010e4 = icmp eq i8 %loadBr_4010e4, 1
  br i1 %cmpBr_4010e4, label %block_.L_40126b, label %block_4010ea

block_4010ea:                                     ; preds = %entry
  %loadMem_4010ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %111, i64 0, i64 0
  %YMM0.i303 = bitcast %union.VectorReg* %112 to %"class.std::bitset"*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %113, i64 0, i64 0
  %XMM0.i304 = bitcast %union.VectorReg* %114 to %union.vec128_t*
  %115 = bitcast %"class.std::bitset"* %YMM0.i303 to i8*
  %116 = bitcast %"class.std::bitset"* %YMM0.i303 to i8*
  %117 = bitcast %union.vec128_t* %XMM0.i304 to i8*
  %118 = load i64, i64* %PC.i302
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC.i302
  %120 = bitcast i8* %116 to i64*
  %121 = load i64, i64* %120, align 1
  %122 = getelementptr inbounds i8, i8* %116, i64 8
  %123 = bitcast i8* %122 to i64*
  %124 = load i64, i64* %123, align 1
  %125 = bitcast i8* %117 to i64*
  %126 = load i64, i64* %125, align 1
  %127 = getelementptr inbounds i8, i8* %117, i64 8
  %128 = bitcast i8* %127 to i64*
  %129 = load i64, i64* %128, align 1
  %130 = xor i64 %126, %121
  %131 = xor i64 %129, %124
  %132 = trunc i64 %130 to i32
  %133 = lshr i64 %130, 32
  %134 = trunc i64 %133 to i32
  %135 = bitcast i8* %115 to i32*
  store i32 %132, i32* %135, align 1
  %136 = getelementptr inbounds i8, i8* %115, i64 4
  %137 = bitcast i8* %136 to i32*
  store i32 %134, i32* %137, align 1
  %138 = trunc i64 %131 to i32
  %139 = getelementptr inbounds i8, i8* %115, i64 8
  %140 = bitcast i8* %139 to i32*
  store i32 %138, i32* %140, align 1
  %141 = lshr i64 %131, 32
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds i8, i8* %115, i64 12
  %144 = bitcast i8* %143 to i32*
  store i32 %142, i32* %144, align 1
  store %struct.Memory* %loadMem_4010ea, %struct.Memory** %MEMORY
  %loadMem_4010ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %148, i64 0, i64 1
  %YMM1.i355 = bitcast %union.VectorReg* %149 to %"class.std::bitset"*
  %150 = bitcast %"class.std::bitset"* %YMM1.i355 to i8*
  %151 = load i64, i64* %PC.i354
  %152 = add i64 %151, 9
  store i64 %152, i64* %PC.i354
  %153 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %154 = bitcast i8* %150 to double*
  store double %153, double* %154, align 1
  %155 = getelementptr inbounds i8, i8* %150, i64 8
  %156 = bitcast i8* %155 to double*
  store double 0.000000e+00, double* %156, align 1
  store %struct.Memory* %loadMem_4010ed, %struct.Memory** %MEMORY
  %loadMem_4010f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %160, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %161 to %union.vec128_t*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %162, i64 0, i64 1
  %XMM1.i418 = bitcast %union.VectorReg* %163 to %union.vec128_t*
  %164 = bitcast %union.vec128_t* %XMM1.i418 to i8*
  %165 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %166 = load i64, i64* %PC.i416
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC.i416
  %168 = bitcast i8* %164 to double*
  %169 = load double, double* %168, align 1
  %170 = bitcast i8* %165 to double*
  %171 = load double, double* %170, align 1
  %172 = fcmp uno double %169, %171
  br i1 %172, label %173, label %185

; <label>:173:                                    ; preds = %block_4010ea
  %174 = fadd double %169, %171
  %175 = bitcast double %174 to i64
  %176 = and i64 %175, 9221120237041090560
  %177 = icmp eq i64 %176, 9218868437227405312
  %178 = and i64 %175, 2251799813685247
  %179 = icmp ne i64 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %191

; <label>:181:                                    ; preds = %173
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %183, %struct.Memory* %loadMem_4010f6)
  br label %routine_ucomisd__xmm0___xmm1.exit419

; <label>:185:                                    ; preds = %block_4010ea
  %186 = fcmp ogt double %169, %171
  br i1 %186, label %191, label %187

; <label>:187:                                    ; preds = %185
  %188 = fcmp olt double %169, %171
  br i1 %188, label %191, label %189

; <label>:189:                                    ; preds = %187
  %190 = fcmp oeq double %169, %171
  br i1 %190, label %191, label %198

; <label>:191:                                    ; preds = %189, %187, %185, %173
  %192 = phi i8 [ 0, %185 ], [ 0, %187 ], [ 1, %189 ], [ 1, %173 ]
  %193 = phi i8 [ 0, %185 ], [ 0, %187 ], [ 0, %189 ], [ 1, %173 ]
  %194 = phi i8 [ 0, %185 ], [ 1, %187 ], [ 0, %189 ], [ 1, %173 ]
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %192, i8* %195, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %193, i8* %196, align 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %194, i8* %197, align 1
  br label %198

; <label>:198:                                    ; preds = %191, %189
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %199, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %200, align 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %201, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit419

routine_ucomisd__xmm0___xmm1.exit419:             ; preds = %181, %198
  %202 = phi %struct.Memory* [ %184, %181 ], [ %loadMem_4010f6, %198 ]
  store %struct.Memory* %202, %struct.Memory** %MEMORY
  %loadMem_4010fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %PC.i420
  %207 = add i64 %206, 17
  %208 = load i64, i64* %PC.i420
  %209 = add i64 %208, 6
  %210 = load i64, i64* %PC.i420
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC.i420
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %213 = load i8, i8* %212, align 1
  %214 = icmp eq i8 %213, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %BRANCH_TAKEN, align 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %217 = select i1 %214, i64 %207, i64 %209
  store i64 %217, i64* %216, align 8
  store %struct.Memory* %loadMem_4010fa, %struct.Memory** %MEMORY
  %loadBr_4010fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010fa = icmp eq i8 %loadBr_4010fa, 1
  br i1 %cmpBr_4010fa, label %block_.L_40110b, label %block_401100

block_401100:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit419
  %loadMem_401100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i427
  %222 = add i64 %221, 11
  %223 = load i64, i64* %PC.i427
  %224 = add i64 %223, 6
  %225 = load i64, i64* %PC.i427
  %226 = add i64 %225, 6
  store i64 %226, i64* %PC.i427
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %228 = load i8, i8* %227, align 1
  store i8 %228, i8* %BRANCH_TAKEN, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %230 = icmp ne i8 %228, 0
  %231 = select i1 %230, i64 %222, i64 %224
  store i64 %231, i64* %229, align 8
  store %struct.Memory* %loadMem_401100, %struct.Memory** %MEMORY
  %loadBr_401100 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401100 = icmp eq i8 %loadBr_401100, 1
  br i1 %cmpBr_401100, label %block_.L_40110b, label %block_401106

block_401106:                                     ; preds = %block_401100
  %loadMem_401106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %PC.i426
  %236 = add i64 %235, 272
  %237 = load i64, i64* %PC.i426
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC.i426
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %236, i64* %239, align 8
  store %struct.Memory* %loadMem_401106, %struct.Memory** %MEMORY
  br label %block_.L_401216

block_.L_40110b:                                  ; preds = %block_401100, %routine_ucomisd__xmm0___xmm1.exit419
  %loadMem_40110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %243, i64 0, i64 0
  %YMM0.i424 = bitcast %union.VectorReg* %244 to %"class.std::bitset"*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %245, i64 0, i64 0
  %XMM0.i425 = bitcast %union.VectorReg* %246 to %union.vec128_t*
  %247 = bitcast %"class.std::bitset"* %YMM0.i424 to i8*
  %248 = bitcast %"class.std::bitset"* %YMM0.i424 to i8*
  %249 = bitcast %union.vec128_t* %XMM0.i425 to i8*
  %250 = load i64, i64* %PC.i423
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC.i423
  %252 = bitcast i8* %248 to i64*
  %253 = load i64, i64* %252, align 1
  %254 = getelementptr inbounds i8, i8* %248, i64 8
  %255 = bitcast i8* %254 to i64*
  %256 = load i64, i64* %255, align 1
  %257 = bitcast i8* %249 to i64*
  %258 = load i64, i64* %257, align 1
  %259 = getelementptr inbounds i8, i8* %249, i64 8
  %260 = bitcast i8* %259 to i64*
  %261 = load i64, i64* %260, align 1
  %262 = xor i64 %258, %253
  %263 = xor i64 %261, %256
  %264 = trunc i64 %262 to i32
  %265 = lshr i64 %262, 32
  %266 = trunc i64 %265 to i32
  %267 = bitcast i8* %247 to i32*
  store i32 %264, i32* %267, align 1
  %268 = getelementptr inbounds i8, i8* %247, i64 4
  %269 = bitcast i8* %268 to i32*
  store i32 %266, i32* %269, align 1
  %270 = trunc i64 %263 to i32
  %271 = getelementptr inbounds i8, i8* %247, i64 8
  %272 = bitcast i8* %271 to i32*
  store i32 %270, i32* %272, align 1
  %273 = lshr i64 %263, 32
  %274 = trunc i64 %273 to i32
  %275 = getelementptr inbounds i8, i8* %247, i64 12
  %276 = bitcast i8* %275 to i32*
  store i32 %274, i32* %276, align 1
  store %struct.Memory* %loadMem_40110b, %struct.Memory** %MEMORY
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 1
  %YMM1.i422 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = bitcast %"class.std::bitset"* %YMM1.i422 to i8*
  %283 = load i64, i64* %PC.i421
  %284 = add i64 %283, 9
  store i64 %284, i64* %PC.i421
  %285 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %286 = bitcast i8* %282 to double*
  store double %285, double* %286, align 1
  %287 = getelementptr inbounds i8, i8* %282, i64 8
  %288 = bitcast i8* %287 to double*
  store double 0.000000e+00, double* %288, align 1
  store %struct.Memory* %loadMem_40110e, %struct.Memory** %MEMORY
  %loadMem_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 0
  %XMM0.i413 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 1
  %XMM1.i414 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = bitcast %union.vec128_t* %XMM1.i414 to i8*
  %297 = bitcast %union.vec128_t* %XMM0.i413 to i8*
  %298 = load i64, i64* %PC.i412
  %299 = add i64 %298, 4
  store i64 %299, i64* %PC.i412
  %300 = bitcast i8* %296 to double*
  %301 = load double, double* %300, align 1
  %302 = bitcast i8* %297 to double*
  %303 = load double, double* %302, align 1
  %304 = fcmp uno double %301, %303
  br i1 %304, label %305, label %317

; <label>:305:                                    ; preds = %block_.L_40110b
  %306 = fadd double %301, %303
  %307 = bitcast double %306 to i64
  %308 = and i64 %307, 9221120237041090560
  %309 = icmp eq i64 %308, 9218868437227405312
  %310 = and i64 %307, 2251799813685247
  %311 = icmp ne i64 %310, 0
  %312 = and i1 %309, %311
  br i1 %312, label %313, label %323

; <label>:313:                                    ; preds = %305
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %315, %struct.Memory* %loadMem_401117)
  br label %routine_ucomisd__xmm0___xmm1.exit415

; <label>:317:                                    ; preds = %block_.L_40110b
  %318 = fcmp ogt double %301, %303
  br i1 %318, label %323, label %319

; <label>:319:                                    ; preds = %317
  %320 = fcmp olt double %301, %303
  br i1 %320, label %323, label %321

; <label>:321:                                    ; preds = %319
  %322 = fcmp oeq double %301, %303
  br i1 %322, label %323, label %330

; <label>:323:                                    ; preds = %321, %319, %317, %305
  %324 = phi i8 [ 0, %317 ], [ 0, %319 ], [ 1, %321 ], [ 1, %305 ]
  %325 = phi i8 [ 0, %317 ], [ 0, %319 ], [ 0, %321 ], [ 1, %305 ]
  %326 = phi i8 [ 0, %317 ], [ 1, %319 ], [ 0, %321 ], [ 1, %305 ]
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %324, i8* %327, align 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %325, i8* %328, align 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %329, align 1
  br label %330

; <label>:330:                                    ; preds = %323, %321
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %331, align 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %332, align 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %333, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

routine_ucomisd__xmm0___xmm1.exit415:             ; preds = %313, %330
  %334 = phi %struct.Memory* [ %316, %313 ], [ %loadMem_401117, %330 ]
  store %struct.Memory* %334, %struct.Memory** %MEMORY
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i411
  %339 = add i64 %338, 52
  %340 = load i64, i64* %PC.i411
  %341 = add i64 %340, 6
  %342 = load i64, i64* %PC.i411
  %343 = add i64 %342, 6
  store i64 %343, i64* %PC.i411
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %345 = load i8, i8* %344, align 1
  %346 = icmp eq i8 %345, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %BRANCH_TAKEN, align 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %349 = select i1 %346, i64 %339, i64 %341
  store i64 %349, i64* %348, align 8
  store %struct.Memory* %loadMem_40111b, %struct.Memory** %MEMORY
  %loadBr_40111b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40111b = icmp eq i8 %loadBr_40111b, 1
  br i1 %cmpBr_40111b, label %block_.L_40114f, label %block_401121

block_401121:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit415
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %PC.i410
  %354 = add i64 %353, 46
  %355 = load i64, i64* %PC.i410
  %356 = add i64 %355, 6
  %357 = load i64, i64* %PC.i410
  %358 = add i64 %357, 6
  store i64 %358, i64* %PC.i410
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %360 = load i8, i8* %359, align 1
  store i8 %360, i8* %BRANCH_TAKEN, align 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %362 = icmp ne i8 %360, 0
  %363 = select i1 %362, i64 %354, i64 %356
  store i64 %363, i64* %361, align 8
  store %struct.Memory* %loadMem_401121, %struct.Memory** %MEMORY
  %loadBr_401121 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401121 = icmp eq i8 %loadBr_401121, 1
  br i1 %cmpBr_401121, label %block_.L_40114f, label %block_401127

block_401127:                                     ; preds = %block_401121
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %367, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %368 to %"class.std::bitset"*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %369, i64 0, i64 0
  %XMM0.i409 = bitcast %union.VectorReg* %370 to %union.vec128_t*
  %371 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %372 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %373 = bitcast %union.vec128_t* %XMM0.i409 to i8*
  %374 = load i64, i64* %PC.i407
  %375 = add i64 %374, 3
  store i64 %375, i64* %PC.i407
  %376 = bitcast i8* %372 to i64*
  %377 = load i64, i64* %376, align 1
  %378 = getelementptr inbounds i8, i8* %372, i64 8
  %379 = bitcast i8* %378 to i64*
  %380 = load i64, i64* %379, align 1
  %381 = bitcast i8* %373 to i64*
  %382 = load i64, i64* %381, align 1
  %383 = getelementptr inbounds i8, i8* %373, i64 8
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 1
  %386 = xor i64 %382, %377
  %387 = xor i64 %385, %380
  %388 = trunc i64 %386 to i32
  %389 = lshr i64 %386, 32
  %390 = trunc i64 %389 to i32
  %391 = bitcast i8* %371 to i32*
  store i32 %388, i32* %391, align 1
  %392 = getelementptr inbounds i8, i8* %371, i64 4
  %393 = bitcast i8* %392 to i32*
  store i32 %390, i32* %393, align 1
  %394 = trunc i64 %387 to i32
  %395 = getelementptr inbounds i8, i8* %371, i64 8
  %396 = bitcast i8* %395 to i32*
  store i32 %394, i32* %396, align 1
  %397 = lshr i64 %387, 32
  %398 = trunc i64 %397 to i32
  %399 = getelementptr inbounds i8, i8* %371, i64 12
  %400 = bitcast i8* %399 to i32*
  store i32 %398, i32* %400, align 1
  store %struct.Memory* %loadMem_401127, %struct.Memory** %MEMORY
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %404, i64 0, i64 0
  %XMM0.i406 = bitcast %union.VectorReg* %405 to %union.vec128_t*
  %406 = bitcast %union.vec128_t* %XMM0.i406 to i8*
  %407 = load i64, i64* %PC.i405
  %408 = add i64 %407, 9
  store i64 %408, i64* %PC.i405
  %409 = bitcast i8* %406 to double*
  %410 = load double, double* %409, align 1
  store double %410, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_40112a, %struct.Memory** %MEMORY
  %loadMem_401133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %414, i64 0, i64 0
  %YMM0.i404 = bitcast %union.VectorReg* %415 to %"class.std::bitset"*
  %416 = bitcast %"class.std::bitset"* %YMM0.i404 to i8*
  %417 = load i64, i64* %PC.i403
  %418 = add i64 %417, 9
  store i64 %418, i64* %PC.i403
  %419 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %420 = bitcast i8* %416 to double*
  store double %419, double* %420, align 1
  %421 = getelementptr inbounds i8, i8* %416, i64 8
  %422 = bitcast i8* %421 to double*
  store double 0.000000e+00, double* %422, align 1
  store %struct.Memory* %loadMem_401133, %struct.Memory** %MEMORY
  %loadMem_40113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %426, i64 0, i64 0
  %YMM0.i402 = bitcast %union.VectorReg* %427 to %"class.std::bitset"*
  %428 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %429 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %430 = load i64, i64* %PC.i401
  %431 = add i64 %430, 9
  store i64 %431, i64* %PC.i401
  %432 = bitcast i8* %429 to double*
  %433 = load double, double* %432, align 1
  %434 = getelementptr inbounds i8, i8* %429, i64 8
  %435 = bitcast i8* %434 to i64*
  %436 = load i64, i64* %435, align 1
  %437 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %438 = fdiv double %433, %437
  %439 = bitcast i8* %428 to double*
  store double %438, double* %439, align 1
  %440 = getelementptr inbounds i8, i8* %428, i64 8
  %441 = bitcast i8* %440 to i64*
  store i64 %436, i64* %441, align 1
  store %struct.Memory* %loadMem_40113c, %struct.Memory** %MEMORY
  %loadMem_401145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 15
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %449 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %448, i64 0, i64 0
  %XMM0.i400 = bitcast %union.VectorReg* %449 to %union.vec128_t*
  %450 = load i64, i64* %RBP.i399
  %451 = sub i64 %450, 24
  %452 = bitcast %union.vec128_t* %XMM0.i400 to i8*
  %453 = load i64, i64* %PC.i398
  %454 = add i64 %453, 5
  store i64 %454, i64* %PC.i398
  %455 = bitcast i8* %452 to double*
  %456 = load double, double* %455, align 1
  %457 = inttoptr i64 %451 to double*
  store double %456, double* %457
  store %struct.Memory* %loadMem_401145, %struct.Memory** %MEMORY
  %loadMem_40114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %PC.i397
  %462 = add i64 %461, 46
  %463 = load i64, i64* %PC.i397
  %464 = add i64 %463, 5
  store i64 %464, i64* %PC.i397
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %462, i64* %465, align 8
  store %struct.Memory* %loadMem_40114a, %struct.Memory** %MEMORY
  br label %block_.L_401178

block_.L_40114f:                                  ; preds = %block_401121, %routine_ucomisd__xmm0___xmm1.exit415
  %loadMem_40114f = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %469, i64 0, i64 0
  %YMM0.i396 = bitcast %union.VectorReg* %470 to %"class.std::bitset"*
  %471 = bitcast %"class.std::bitset"* %YMM0.i396 to i8*
  %472 = load i64, i64* %PC.i395
  %473 = add i64 %472, 9
  store i64 %473, i64* %PC.i395
  %474 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %475 = bitcast i8* %471 to double*
  store double %474, double* %475, align 1
  %476 = getelementptr inbounds i8, i8* %471, i64 8
  %477 = bitcast i8* %476 to double*
  store double 0.000000e+00, double* %477, align 1
  store %struct.Memory* %loadMem_40114f, %struct.Memory** %MEMORY
  %loadMem_401158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %481, i64 0, i64 0
  %YMM0.i394 = bitcast %union.VectorReg* %482 to %"class.std::bitset"*
  %483 = bitcast %"class.std::bitset"* %YMM0.i394 to i8*
  %484 = bitcast %"class.std::bitset"* %YMM0.i394 to i8*
  %485 = load i64, i64* %PC.i393
  %486 = add i64 %485, 9
  store i64 %486, i64* %PC.i393
  %487 = bitcast i8* %484 to double*
  %488 = load double, double* %487, align 1
  %489 = getelementptr inbounds i8, i8* %484, i64 8
  %490 = bitcast i8* %489 to i64*
  %491 = load i64, i64* %490, align 1
  %492 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %493 = fsub double %488, %492
  %494 = bitcast i8* %483 to double*
  store double %493, double* %494, align 1
  %495 = getelementptr inbounds i8, i8* %483, i64 8
  %496 = bitcast i8* %495 to i64*
  store i64 %491, i64* %496, align 1
  store %struct.Memory* %loadMem_401158, %struct.Memory** %MEMORY
  %loadMem_401161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %501 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %500, i64 0, i64 0
  %YMM0.i392 = bitcast %union.VectorReg* %501 to %"class.std::bitset"*
  %502 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %503 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %504 = load i64, i64* %PC.i391
  %505 = add i64 %504, 9
  store i64 %505, i64* %PC.i391
  %506 = bitcast i8* %503 to double*
  %507 = load double, double* %506, align 1
  %508 = getelementptr inbounds i8, i8* %503, i64 8
  %509 = bitcast i8* %508 to i64*
  %510 = load i64, i64* %509, align 1
  %511 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %512 = fdiv double %507, %511
  %513 = bitcast i8* %502 to double*
  store double %512, double* %513, align 1
  %514 = getelementptr inbounds i8, i8* %502, i64 8
  %515 = bitcast i8* %514 to i64*
  store i64 %510, i64* %515, align 1
  store %struct.Memory* %loadMem_401161, %struct.Memory** %MEMORY
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %520 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %519, i64 0, i64 0
  %YMM0.i390 = bitcast %union.VectorReg* %520 to %"class.std::bitset"*
  %521 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %522 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %523 = load i64, i64* %PC.i389
  %524 = add i64 %523, 9
  store i64 %524, i64* %PC.i389
  %525 = bitcast i8* %522 to double*
  %526 = load double, double* %525, align 1
  %527 = getelementptr inbounds i8, i8* %522, i64 8
  %528 = bitcast i8* %527 to i64*
  %529 = load i64, i64* %528, align 1
  %530 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %531 = fmul double %526, %530
  %532 = bitcast i8* %521 to double*
  store double %531, double* %532, align 1
  %533 = getelementptr inbounds i8, i8* %521, i64 8
  %534 = bitcast i8* %533 to i64*
  store i64 %529, i64* %534, align 1
  store %struct.Memory* %loadMem_40116a, %struct.Memory** %MEMORY
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 15
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %541, i64 0, i64 0
  %XMM0.i388 = bitcast %union.VectorReg* %542 to %union.vec128_t*
  %543 = load i64, i64* %RBP.i387
  %544 = sub i64 %543, 24
  %545 = bitcast %union.vec128_t* %XMM0.i388 to i8*
  %546 = load i64, i64* %PC.i386
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC.i386
  %548 = bitcast i8* %545 to double*
  %549 = load double, double* %548, align 1
  %550 = inttoptr i64 %544 to double*
  store double %549, double* %550
  store %struct.Memory* %loadMem_401173, %struct.Memory** %MEMORY
  br label %block_.L_401178

block_.L_401178:                                  ; preds = %block_.L_40114f, %block_401127
  %loadMem_401178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %554, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %555 to %"class.std::bitset"*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %556, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %557 to %union.vec128_t*
  %558 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %559 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %560 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %561 = load i64, i64* %PC.i383
  %562 = add i64 %561, 3
  store i64 %562, i64* %PC.i383
  %563 = bitcast i8* %559 to i64*
  %564 = load i64, i64* %563, align 1
  %565 = getelementptr inbounds i8, i8* %559, i64 8
  %566 = bitcast i8* %565 to i64*
  %567 = load i64, i64* %566, align 1
  %568 = bitcast i8* %560 to i64*
  %569 = load i64, i64* %568, align 1
  %570 = getelementptr inbounds i8, i8* %560, i64 8
  %571 = bitcast i8* %570 to i64*
  %572 = load i64, i64* %571, align 1
  %573 = xor i64 %569, %564
  %574 = xor i64 %572, %567
  %575 = trunc i64 %573 to i32
  %576 = lshr i64 %573, 32
  %577 = trunc i64 %576 to i32
  %578 = bitcast i8* %558 to i32*
  store i32 %575, i32* %578, align 1
  %579 = getelementptr inbounds i8, i8* %558, i64 4
  %580 = bitcast i8* %579 to i32*
  store i32 %577, i32* %580, align 1
  %581 = trunc i64 %574 to i32
  %582 = getelementptr inbounds i8, i8* %558, i64 8
  %583 = bitcast i8* %582 to i32*
  store i32 %581, i32* %583, align 1
  %584 = lshr i64 %574, 32
  %585 = trunc i64 %584 to i32
  %586 = getelementptr inbounds i8, i8* %558, i64 12
  %587 = bitcast i8* %586 to i32*
  store i32 %585, i32* %587, align 1
  store %struct.Memory* %loadMem_401178, %struct.Memory** %MEMORY
  %loadMem_40117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %591, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %592 to %"class.std::bitset"*
  %593 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %594 = load i64, i64* %PC.i381
  %595 = add i64 %594, 9
  store i64 %595, i64* %PC.i381
  %596 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %597 = bitcast i8* %593 to double*
  store double %596, double* %597, align 1
  %598 = getelementptr inbounds i8, i8* %593, i64 8
  %599 = bitcast i8* %598 to double*
  store double 0.000000e+00, double* %599, align 1
  store %struct.Memory* %loadMem_40117b, %struct.Memory** %MEMORY
  %loadMem_401184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %604 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %603, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %604 to %"class.std::bitset"*
  %605 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %606 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %607 = load i64, i64* %PC.i379
  %608 = add i64 %607, 9
  store i64 %608, i64* %PC.i379
  %609 = bitcast i8* %606 to double*
  %610 = load double, double* %609, align 1
  %611 = getelementptr inbounds i8, i8* %606, i64 8
  %612 = bitcast i8* %611 to i64*
  %613 = load i64, i64* %612, align 1
  %614 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %615 = fdiv double %610, %614
  %616 = bitcast i8* %605 to double*
  store double %615, double* %616, align 1
  %617 = getelementptr inbounds i8, i8* %605, i64 8
  %618 = bitcast i8* %617 to i64*
  store i64 %613, i64* %618, align 1
  store %struct.Memory* %loadMem_401184, %struct.Memory** %MEMORY
  %loadMem_40118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 1
  %YMM1.i378 = bitcast %union.VectorReg* %626 to %"class.std::bitset"*
  %627 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %628 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %629 = load i64, i64* %RBP.i377
  %630 = sub i64 %629, 24
  %631 = load i64, i64* %PC.i376
  %632 = add i64 %631, 5
  store i64 %632, i64* %PC.i376
  %633 = bitcast i8* %628 to double*
  %634 = load double, double* %633, align 1
  %635 = getelementptr inbounds i8, i8* %628, i64 8
  %636 = bitcast i8* %635 to i64*
  %637 = load i64, i64* %636, align 1
  %638 = inttoptr i64 %630 to double*
  %639 = load double, double* %638
  %640 = fmul double %634, %639
  %641 = bitcast i8* %627 to double*
  store double %640, double* %641, align 1
  %642 = getelementptr inbounds i8, i8* %627, i64 8
  %643 = bitcast i8* %642 to i64*
  store i64 %637, i64* %643, align 1
  store %struct.Memory* %loadMem_40118d, %struct.Memory** %MEMORY
  %loadMem_401192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 15
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %650, i64 0, i64 1
  %XMM1.i375 = bitcast %union.VectorReg* %651 to %union.vec128_t*
  %652 = load i64, i64* %RBP.i374
  %653 = sub i64 %652, 32
  %654 = bitcast %union.vec128_t* %XMM1.i375 to i8*
  %655 = load i64, i64* %PC.i373
  %656 = add i64 %655, 5
  store i64 %656, i64* %PC.i373
  %657 = bitcast i8* %654 to double*
  %658 = load double, double* %657, align 1
  %659 = inttoptr i64 %653 to double*
  store double %658, double* %659
  store %struct.Memory* %loadMem_401192, %struct.Memory** %MEMORY
  %loadMem_401197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %663, i64 0, i64 1
  %YMM1.i372 = bitcast %union.VectorReg* %664 to %"class.std::bitset"*
  %665 = bitcast %"class.std::bitset"* %YMM1.i372 to i8*
  %666 = load i64, i64* %PC.i371
  %667 = add i64 %666, 9
  store i64 %667, i64* %PC.i371
  %668 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %669 = bitcast i8* %665 to double*
  store double %668, double* %669, align 1
  %670 = getelementptr inbounds i8, i8* %665, i64 8
  %671 = bitcast i8* %670 to double*
  store double 0.000000e+00, double* %671, align 1
  store %struct.Memory* %loadMem_401197, %struct.Memory** %MEMORY
  %loadMem_4011a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 15
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %678, i64 0, i64 1
  %XMM1.i370 = bitcast %union.VectorReg* %679 to %union.vec128_t*
  %680 = load i64, i64* %RBP.i369
  %681 = sub i64 %680, 40
  %682 = bitcast %union.vec128_t* %XMM1.i370 to i8*
  %683 = load i64, i64* %PC.i368
  %684 = add i64 %683, 5
  store i64 %684, i64* %PC.i368
  %685 = bitcast i8* %682 to double*
  %686 = load double, double* %685, align 1
  %687 = inttoptr i64 %681 to double*
  store double %686, double* %687
  store %struct.Memory* %loadMem_4011a0, %struct.Memory** %MEMORY
  %loadMem_4011a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %691, i64 0, i64 1
  %YMM1.i367 = bitcast %union.VectorReg* %692 to %"class.std::bitset"*
  %693 = bitcast %"class.std::bitset"* %YMM1.i367 to i8*
  %694 = load i64, i64* %PC.i366
  %695 = add i64 %694, 9
  store i64 %695, i64* %PC.i366
  %696 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %697 = bitcast i8* %693 to double*
  store double %696, double* %697, align 1
  %698 = getelementptr inbounds i8, i8* %693, i64 8
  %699 = bitcast i8* %698 to double*
  store double 0.000000e+00, double* %699, align 1
  store %struct.Memory* %loadMem_4011a5, %struct.Memory** %MEMORY
  %loadMem_4011ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 15
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %706, i64 0, i64 1
  %YMM1.i365 = bitcast %union.VectorReg* %707 to %"class.std::bitset"*
  %708 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %709 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %710 = load i64, i64* %RBP.i364
  %711 = sub i64 %710, 24
  %712 = load i64, i64* %PC.i363
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC.i363
  %714 = bitcast i8* %709 to double*
  %715 = load double, double* %714, align 1
  %716 = getelementptr inbounds i8, i8* %709, i64 8
  %717 = bitcast i8* %716 to i64*
  %718 = load i64, i64* %717, align 1
  %719 = inttoptr i64 %711 to double*
  %720 = load double, double* %719
  %721 = fadd double %715, %720
  %722 = bitcast i8* %708 to double*
  store double %721, double* %722, align 1
  %723 = getelementptr inbounds i8, i8* %708, i64 8
  %724 = bitcast i8* %723 to i64*
  store i64 %718, i64* %724, align 1
  store %struct.Memory* %loadMem_4011ae, %struct.Memory** %MEMORY
  %loadMem_4011b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 1
  %YMM1.i362 = bitcast %union.VectorReg* %732 to %"class.std::bitset"*
  %733 = bitcast %"class.std::bitset"* %YMM1.i362 to i8*
  %734 = bitcast %"class.std::bitset"* %YMM1.i362 to i8*
  %735 = load i64, i64* %RBP.i361
  %736 = sub i64 %735, 32
  %737 = load i64, i64* %PC.i360
  %738 = add i64 %737, 5
  store i64 %738, i64* %PC.i360
  %739 = bitcast i8* %734 to double*
  %740 = load double, double* %739, align 1
  %741 = getelementptr inbounds i8, i8* %734, i64 8
  %742 = bitcast i8* %741 to i64*
  %743 = load i64, i64* %742, align 1
  %744 = inttoptr i64 %736 to double*
  %745 = load double, double* %744
  %746 = fsub double %740, %745
  %747 = bitcast i8* %733 to double*
  store double %746, double* %747, align 1
  %748 = getelementptr inbounds i8, i8* %733, i64 8
  %749 = bitcast i8* %748 to i64*
  store i64 %743, i64* %749, align 1
  store %struct.Memory* %loadMem_4011b3, %struct.Memory** %MEMORY
  %loadMem_4011b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %753, i64 0, i64 1
  %XMM1.i359 = bitcast %union.VectorReg* %754 to %union.vec128_t*
  %755 = bitcast %union.vec128_t* %XMM1.i359 to i8*
  %756 = load i64, i64* %PC.i358
  %757 = add i64 %756, 9
  store i64 %757, i64* %PC.i358
  %758 = bitcast i8* %755 to double*
  %759 = load double, double* %758, align 1
  store double %759, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_4011b8, %struct.Memory** %MEMORY
  %loadMem_4011c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %763, i64 0, i64 1
  %YMM1.i357 = bitcast %union.VectorReg* %764 to %"class.std::bitset"*
  %765 = bitcast %"class.std::bitset"* %YMM1.i357 to i8*
  %766 = load i64, i64* %PC.i356
  %767 = add i64 %766, 9
  store i64 %767, i64* %PC.i356
  %768 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %769 = bitcast i8* %765 to double*
  store double %768, double* %769, align 1
  %770 = getelementptr inbounds i8, i8* %765, i64 8
  %771 = bitcast i8* %770 to double*
  store double 0.000000e+00, double* %771, align 1
  store %struct.Memory* %loadMem_4011c1, %struct.Memory** %MEMORY
  %loadMem_4011ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %775, i64 0, i64 0
  %XMM0.i351 = bitcast %union.VectorReg* %776 to %union.vec128_t*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %777, i64 0, i64 1
  %XMM1.i352 = bitcast %union.VectorReg* %778 to %union.vec128_t*
  %779 = bitcast %union.vec128_t* %XMM1.i352 to i8*
  %780 = bitcast %union.vec128_t* %XMM0.i351 to i8*
  %781 = load i64, i64* %PC.i350
  %782 = add i64 %781, 4
  store i64 %782, i64* %PC.i350
  %783 = bitcast i8* %779 to double*
  %784 = load double, double* %783, align 1
  %785 = bitcast i8* %780 to double*
  %786 = load double, double* %785, align 1
  %787 = fcmp uno double %784, %786
  br i1 %787, label %788, label %800

; <label>:788:                                    ; preds = %block_.L_401178
  %789 = fadd double %784, %786
  %790 = bitcast double %789 to i64
  %791 = and i64 %790, 9221120237041090560
  %792 = icmp eq i64 %791, 9218868437227405312
  %793 = and i64 %790, 2251799813685247
  %794 = icmp ne i64 %793, 0
  %795 = and i1 %792, %794
  br i1 %795, label %796, label %806

; <label>:796:                                    ; preds = %788
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %798 = load i64, i64* %797, align 8
  %799 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %798, %struct.Memory* %loadMem_4011ca)
  br label %routine_ucomisd__xmm0___xmm1.exit353

; <label>:800:                                    ; preds = %block_.L_401178
  %801 = fcmp ogt double %784, %786
  br i1 %801, label %806, label %802

; <label>:802:                                    ; preds = %800
  %803 = fcmp olt double %784, %786
  br i1 %803, label %806, label %804

; <label>:804:                                    ; preds = %802
  %805 = fcmp oeq double %784, %786
  br i1 %805, label %806, label %813

; <label>:806:                                    ; preds = %804, %802, %800, %788
  %807 = phi i8 [ 0, %800 ], [ 0, %802 ], [ 1, %804 ], [ 1, %788 ]
  %808 = phi i8 [ 0, %800 ], [ 0, %802 ], [ 0, %804 ], [ 1, %788 ]
  %809 = phi i8 [ 0, %800 ], [ 1, %802 ], [ 0, %804 ], [ 1, %788 ]
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %807, i8* %810, align 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %808, i8* %811, align 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %809, i8* %812, align 1
  br label %813

; <label>:813:                                    ; preds = %806, %804
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %814, align 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %815, align 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %816, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit353

routine_ucomisd__xmm0___xmm1.exit353:             ; preds = %796, %813
  %817 = phi %struct.Memory* [ %799, %796 ], [ %loadMem_4011ca, %813 ]
  store %struct.Memory* %817, %struct.Memory** %MEMORY
  %loadMem_4011ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i349
  %822 = add i64 %821, 17
  %823 = load i64, i64* %PC.i349
  %824 = add i64 %823, 6
  %825 = load i64, i64* %PC.i349
  %826 = add i64 %825, 6
  store i64 %826, i64* %PC.i349
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %828 = load i8, i8* %827, align 1
  %829 = icmp eq i8 %828, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %BRANCH_TAKEN, align 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %832 = select i1 %829, i64 %822, i64 %824
  store i64 %832, i64* %831, align 8
  store %struct.Memory* %loadMem_4011ce, %struct.Memory** %MEMORY
  %loadBr_4011ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011ce = icmp eq i8 %loadBr_4011ce, 1
  br i1 %cmpBr_4011ce, label %block_.L_4011df, label %block_4011d4

block_4011d4:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit353
  %loadMem_4011d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %PC.i348
  %837 = add i64 %836, 11
  %838 = load i64, i64* %PC.i348
  %839 = add i64 %838, 6
  %840 = load i64, i64* %PC.i348
  %841 = add i64 %840, 6
  store i64 %841, i64* %PC.i348
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %843 = load i8, i8* %842, align 1
  store i8 %843, i8* %BRANCH_TAKEN, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %845 = icmp ne i8 %843, 0
  %846 = select i1 %845, i64 %837, i64 %839
  store i64 %846, i64* %844, align 8
  store %struct.Memory* %loadMem_4011d4, %struct.Memory** %MEMORY
  %loadBr_4011d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011d4 = icmp eq i8 %loadBr_4011d4, 1
  br i1 %cmpBr_4011d4, label %block_.L_4011df, label %block_4011da

block_4011da:                                     ; preds = %block_4011d4
  %loadMem_4011da = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %PC.i347
  %851 = add i64 %850, 28
  %852 = load i64, i64* %PC.i347
  %853 = add i64 %852, 5
  store i64 %853, i64* %PC.i347
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %851, i64* %854, align 8
  store %struct.Memory* %loadMem_4011da, %struct.Memory** %MEMORY
  br label %block_.L_4011f6

block_.L_4011df:                                  ; preds = %block_4011d4, %routine_ucomisd__xmm0___xmm1.exit353
  %loadMem_4011df = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %858, i64 0, i64 0
  %YMM0.i346 = bitcast %union.VectorReg* %859 to %"class.std::bitset"*
  %860 = bitcast %"class.std::bitset"* %YMM0.i346 to i8*
  %861 = load i64, i64* %PC.i345
  %862 = add i64 %861, 9
  store i64 %862, i64* %PC.i345
  %863 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %864 = bitcast i8* %860 to double*
  store double %863, double* %864, align 1
  %865 = getelementptr inbounds i8, i8* %860, i64 8
  %866 = bitcast i8* %865 to double*
  store double 0.000000e+00, double* %866, align 1
  store %struct.Memory* %loadMem_4011df, %struct.Memory** %MEMORY
  %loadMem_4011e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 15
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %873, i64 0, i64 0
  %YMM0.i344 = bitcast %union.VectorReg* %874 to %"class.std::bitset"*
  %875 = bitcast %"class.std::bitset"* %YMM0.i344 to i8*
  %876 = bitcast %"class.std::bitset"* %YMM0.i344 to i8*
  %877 = load i64, i64* %RBP.i343
  %878 = sub i64 %877, 40
  %879 = load i64, i64* %PC.i342
  %880 = add i64 %879, 5
  store i64 %880, i64* %PC.i342
  %881 = bitcast i8* %876 to double*
  %882 = load double, double* %881, align 1
  %883 = getelementptr inbounds i8, i8* %876, i64 8
  %884 = bitcast i8* %883 to i64*
  %885 = load i64, i64* %884, align 1
  %886 = inttoptr i64 %878 to double*
  %887 = load double, double* %886
  %888 = fmul double %882, %887
  %889 = bitcast i8* %875 to double*
  store double %888, double* %889, align 1
  %890 = getelementptr inbounds i8, i8* %875, i64 8
  %891 = bitcast i8* %890 to i64*
  store i64 %885, i64* %891, align 1
  store %struct.Memory* %loadMem_4011e8, %struct.Memory** %MEMORY
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %895, i64 0, i64 0
  %XMM0.i341 = bitcast %union.VectorReg* %896 to %union.vec128_t*
  %897 = bitcast %union.vec128_t* %XMM0.i341 to i8*
  %898 = load i64, i64* %PC.i340
  %899 = add i64 %898, 9
  store i64 %899, i64* %PC.i340
  %900 = bitcast i8* %897 to double*
  %901 = load double, double* %900, align 1
  store double %901, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  store %struct.Memory* %loadMem_4011ed, %struct.Memory** %MEMORY
  br label %block_.L_4011f6

block_.L_4011f6:                                  ; preds = %block_.L_4011df, %block_4011da
  %loadMem_4011f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %905, i64 0, i64 0
  %YMM0.i339 = bitcast %union.VectorReg* %906 to %"class.std::bitset"*
  %907 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %908 = load i64, i64* %PC.i338
  %909 = add i64 %908, 9
  store i64 %909, i64* %PC.i338
  %910 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %911 = bitcast i8* %907 to double*
  store double %910, double* %911, align 1
  %912 = getelementptr inbounds i8, i8* %907, i64 8
  %913 = bitcast i8* %912 to double*
  store double 0.000000e+00, double* %913, align 1
  store %struct.Memory* %loadMem_4011f6, %struct.Memory** %MEMORY
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %917, i64 0, i64 0
  %YMM0.i337 = bitcast %union.VectorReg* %918 to %"class.std::bitset"*
  %919 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %920 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %921 = load i64, i64* %PC.i336
  %922 = add i64 %921, 9
  store i64 %922, i64* %PC.i336
  %923 = bitcast i8* %920 to double*
  %924 = load double, double* %923, align 1
  %925 = getelementptr inbounds i8, i8* %920, i64 8
  %926 = bitcast i8* %925 to i64*
  %927 = load i64, i64* %926, align 1
  %928 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %929 = fdiv double %924, %928
  %930 = bitcast i8* %919 to double*
  store double %929, double* %930, align 1
  %931 = getelementptr inbounds i8, i8* %919, i64 8
  %932 = bitcast i8* %931 to i64*
  store i64 %927, i64* %932, align 1
  store %struct.Memory* %loadMem_4011ff, %struct.Memory** %MEMORY
  %loadMem_401208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %936, i64 0, i64 0
  %XMM0.i335 = bitcast %union.VectorReg* %937 to %union.vec128_t*
  %938 = bitcast %union.vec128_t* %XMM0.i335 to i8*
  %939 = load i64, i64* %PC.i334
  %940 = add i64 %939, 9
  store i64 %940, i64* %PC.i334
  %941 = bitcast i8* %938 to double*
  %942 = load double, double* %941, align 1
  store double %942, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_401208, %struct.Memory** %MEMORY
  %loadMem_401211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i333
  %947 = add i64 %946, 788
  %948 = load i64, i64* %PC.i333
  %949 = add i64 %948, 5
  store i64 %949, i64* %PC.i333
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %947, i64* %950, align 8
  store %struct.Memory* %loadMem_401211, %struct.Memory** %MEMORY
  br label %block_.L_401525

block_.L_401216:                                  ; preds = %block_401106
  %loadMem_401216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %954, i64 0, i64 0
  %YMM0.i332 = bitcast %union.VectorReg* %955 to %"class.std::bitset"*
  %956 = bitcast %"class.std::bitset"* %YMM0.i332 to i8*
  %957 = load i64, i64* %PC.i331
  %958 = add i64 %957, 9
  store i64 %958, i64* %PC.i331
  %959 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %960 = bitcast i8* %956 to double*
  store double %959, double* %960, align 1
  %961 = getelementptr inbounds i8, i8* %956, i64 8
  %962 = bitcast i8* %961 to double*
  store double 0.000000e+00, double* %962, align 1
  store %struct.Memory* %loadMem_401216, %struct.Memory** %MEMORY
  %loadMem_40121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %966, i64 0, i64 1
  %YMM1.i330 = bitcast %union.VectorReg* %967 to %"class.std::bitset"*
  %968 = bitcast %"class.std::bitset"* %YMM1.i330 to i8*
  %969 = load i64, i64* %PC.i329
  %970 = add i64 %969, 9
  store i64 %970, i64* %PC.i329
  %971 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %972 = bitcast i8* %968 to double*
  store double %971, double* %972, align 1
  %973 = getelementptr inbounds i8, i8* %968, i64 8
  %974 = bitcast i8* %973 to double*
  store double 0.000000e+00, double* %974, align 1
  store %struct.Memory* %loadMem_40121f, %struct.Memory** %MEMORY
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %979 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %978, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %979 to %"class.std::bitset"*
  %980 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %981 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %982 = load i64, i64* %PC.i327
  %983 = add i64 %982, 9
  store i64 %983, i64* %PC.i327
  %984 = bitcast i8* %981 to double*
  %985 = load double, double* %984, align 1
  %986 = getelementptr inbounds i8, i8* %981, i64 8
  %987 = bitcast i8* %986 to i64*
  %988 = load i64, i64* %987, align 1
  %989 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %990 = fdiv double %985, %989
  %991 = bitcast i8* %980 to double*
  store double %990, double* %991, align 1
  %992 = getelementptr inbounds i8, i8* %980, i64 8
  %993 = bitcast i8* %992 to i64*
  store i64 %988, i64* %993, align 1
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %997, i64 0, i64 0
  %YMM0.i325 = bitcast %union.VectorReg* %998 to %"class.std::bitset"*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %999, i64 0, i64 1
  %XMM1.i326 = bitcast %union.VectorReg* %1000 to %union.vec128_t*
  %1001 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %1002 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %1003 = bitcast %union.vec128_t* %XMM1.i326 to i8*
  %1004 = load i64, i64* %PC.i324
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %PC.i324
  %1006 = bitcast i8* %1002 to double*
  %1007 = load double, double* %1006, align 1
  %1008 = getelementptr inbounds i8, i8* %1002, i64 8
  %1009 = bitcast i8* %1008 to i64*
  %1010 = load i64, i64* %1009, align 1
  %1011 = bitcast i8* %1003 to double*
  %1012 = load double, double* %1011, align 1
  %1013 = fmul double %1007, %1012
  %1014 = bitcast i8* %1001 to double*
  store double %1013, double* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1001, i64 8
  %1016 = bitcast i8* %1015 to i64*
  store i64 %1010, i64* %1016, align 1
  store %struct.Memory* %loadMem_401231, %struct.Memory** %MEMORY
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1020, i64 0, i64 0
  %XMM0.i323 = bitcast %union.VectorReg* %1021 to %union.vec128_t*
  %1022 = bitcast %union.vec128_t* %XMM0.i323 to i8*
  %1023 = load i64, i64* %PC.i322
  %1024 = add i64 %1023, 9
  store i64 %1024, i64* %PC.i322
  %1025 = bitcast i8* %1022 to double*
  %1026 = load double, double* %1025, align 1
  store double %1026, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_401235, %struct.Memory** %MEMORY
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1030, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %1031 to %"class.std::bitset"*
  %1032 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %1033 = load i64, i64* %PC.i320
  %1034 = add i64 %1033, 9
  store i64 %1034, i64* %PC.i320
  %1035 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1036 = bitcast i8* %1032 to double*
  store double %1035, double* %1036, align 1
  %1037 = getelementptr inbounds i8, i8* %1032, i64 8
  %1038 = bitcast i8* %1037 to double*
  store double 0.000000e+00, double* %1038, align 1
  store %struct.Memory* %loadMem_40123e, %struct.Memory** %MEMORY
  %loadMem_401247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1042, i64 0, i64 1
  %YMM1.i319 = bitcast %union.VectorReg* %1043 to %"class.std::bitset"*
  %1044 = bitcast %"class.std::bitset"* %YMM1.i319 to i8*
  %1045 = load i64, i64* %PC.i318
  %1046 = add i64 %1045, 9
  store i64 %1046, i64* %PC.i318
  %1047 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %1048 = bitcast i8* %1044 to double*
  store double %1047, double* %1048, align 1
  %1049 = getelementptr inbounds i8, i8* %1044, i64 8
  %1050 = bitcast i8* %1049 to double*
  store double 0.000000e+00, double* %1050, align 1
  store %struct.Memory* %loadMem_401247, %struct.Memory** %MEMORY
  %loadMem_401250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1054, i64 0, i64 1
  %YMM1.i317 = bitcast %union.VectorReg* %1055 to %"class.std::bitset"*
  %1056 = bitcast %"class.std::bitset"* %YMM1.i317 to i8*
  %1057 = bitcast %"class.std::bitset"* %YMM1.i317 to i8*
  %1058 = load i64, i64* %PC.i316
  %1059 = add i64 %1058, 9
  store i64 %1059, i64* %PC.i316
  %1060 = bitcast i8* %1057 to double*
  %1061 = load double, double* %1060, align 1
  %1062 = getelementptr inbounds i8, i8* %1057, i64 8
  %1063 = bitcast i8* %1062 to i64*
  %1064 = load i64, i64* %1063, align 1
  %1065 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %1066 = fdiv double %1061, %1065
  %1067 = bitcast i8* %1056 to double*
  store double %1066, double* %1067, align 1
  %1068 = getelementptr inbounds i8, i8* %1056, i64 8
  %1069 = bitcast i8* %1068 to i64*
  store i64 %1064, i64* %1069, align 1
  store %struct.Memory* %loadMem_401250, %struct.Memory** %MEMORY
  %loadMem_401259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1073, i64 0, i64 0
  %YMM0.i314 = bitcast %union.VectorReg* %1074 to %"class.std::bitset"*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1075, i64 0, i64 1
  %XMM1.i315 = bitcast %union.VectorReg* %1076 to %union.vec128_t*
  %1077 = bitcast %"class.std::bitset"* %YMM0.i314 to i8*
  %1078 = bitcast %"class.std::bitset"* %YMM0.i314 to i8*
  %1079 = bitcast %union.vec128_t* %XMM1.i315 to i8*
  %1080 = load i64, i64* %PC.i313
  %1081 = add i64 %1080, 4
  store i64 %1081, i64* %PC.i313
  %1082 = bitcast i8* %1078 to double*
  %1083 = load double, double* %1082, align 1
  %1084 = getelementptr inbounds i8, i8* %1078, i64 8
  %1085 = bitcast i8* %1084 to i64*
  %1086 = load i64, i64* %1085, align 1
  %1087 = bitcast i8* %1079 to double*
  %1088 = load double, double* %1087, align 1
  %1089 = fmul double %1083, %1088
  %1090 = bitcast i8* %1077 to double*
  store double %1089, double* %1090, align 1
  %1091 = getelementptr inbounds i8, i8* %1077, i64 8
  %1092 = bitcast i8* %1091 to i64*
  store i64 %1086, i64* %1092, align 1
  store %struct.Memory* %loadMem_401259, %struct.Memory** %MEMORY
  %loadMem_40125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1096, i64 0, i64 0
  %XMM0.i312 = bitcast %union.VectorReg* %1097 to %union.vec128_t*
  %1098 = bitcast %union.vec128_t* %XMM0.i312 to i8*
  %1099 = load i64, i64* %PC.i311
  %1100 = add i64 %1099, 9
  store i64 %1100, i64* %PC.i311
  %1101 = bitcast i8* %1098 to double*
  %1102 = load double, double* %1101, align 1
  store double %1102, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_40125d, %struct.Memory** %MEMORY
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i310
  %1107 = add i64 %1106, 703
  %1108 = load i64, i64* %PC.i310
  %1109 = add i64 %1108, 5
  store i64 %1109, i64* %PC.i310
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1107, i64* %1110, align 8
  store %struct.Memory* %loadMem_401266, %struct.Memory** %MEMORY
  br label %block_.L_401525

block_.L_40126b:                                  ; preds = %entry
  %loadMem_40126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1114, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %1115 to %"class.std::bitset"*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1116, i64 0, i64 0
  %XMM0.i309 = bitcast %union.VectorReg* %1117 to %union.vec128_t*
  %1118 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %1119 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %1120 = bitcast %union.vec128_t* %XMM0.i309 to i8*
  %1121 = load i64, i64* %PC.i307
  %1122 = add i64 %1121, 3
  store i64 %1122, i64* %PC.i307
  %1123 = bitcast i8* %1119 to i64*
  %1124 = load i64, i64* %1123, align 1
  %1125 = getelementptr inbounds i8, i8* %1119, i64 8
  %1126 = bitcast i8* %1125 to i64*
  %1127 = load i64, i64* %1126, align 1
  %1128 = bitcast i8* %1120 to i64*
  %1129 = load i64, i64* %1128, align 1
  %1130 = getelementptr inbounds i8, i8* %1120, i64 8
  %1131 = bitcast i8* %1130 to i64*
  %1132 = load i64, i64* %1131, align 1
  %1133 = xor i64 %1129, %1124
  %1134 = xor i64 %1132, %1127
  %1135 = trunc i64 %1133 to i32
  %1136 = lshr i64 %1133, 32
  %1137 = trunc i64 %1136 to i32
  %1138 = bitcast i8* %1118 to i32*
  store i32 %1135, i32* %1138, align 1
  %1139 = getelementptr inbounds i8, i8* %1118, i64 4
  %1140 = bitcast i8* %1139 to i32*
  store i32 %1137, i32* %1140, align 1
  %1141 = trunc i64 %1134 to i32
  %1142 = getelementptr inbounds i8, i8* %1118, i64 8
  %1143 = bitcast i8* %1142 to i32*
  store i32 %1141, i32* %1143, align 1
  %1144 = lshr i64 %1134, 32
  %1145 = trunc i64 %1144 to i32
  %1146 = getelementptr inbounds i8, i8* %1118, i64 12
  %1147 = bitcast i8* %1146 to i32*
  store i32 %1145, i32* %1147, align 1
  store %struct.Memory* %loadMem_40126b, %struct.Memory** %MEMORY
  %loadMem_40126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1151, i64 0, i64 1
  %YMM1.i306 = bitcast %union.VectorReg* %1152 to %"class.std::bitset"*
  %1153 = bitcast %"class.std::bitset"* %YMM1.i306 to i8*
  %1154 = load i64, i64* %PC.i305
  %1155 = add i64 %1154, 9
  store i64 %1155, i64* %PC.i305
  %1156 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1157 = bitcast i8* %1153 to double*
  store double %1156, double* %1157, align 1
  %1158 = getelementptr inbounds i8, i8* %1153, i64 8
  %1159 = bitcast i8* %1158 to double*
  store double 0.000000e+00, double* %1159, align 1
  store %struct.Memory* %loadMem_40126e, %struct.Memory** %MEMORY
  %loadMem_401277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1163, i64 0, i64 0
  %XMM0.i299 = bitcast %union.VectorReg* %1164 to %union.vec128_t*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1165, i64 0, i64 1
  %XMM1.i300 = bitcast %union.VectorReg* %1166 to %union.vec128_t*
  %1167 = bitcast %union.vec128_t* %XMM1.i300 to i8*
  %1168 = bitcast %union.vec128_t* %XMM0.i299 to i8*
  %1169 = load i64, i64* %PC.i298
  %1170 = add i64 %1169, 4
  store i64 %1170, i64* %PC.i298
  %1171 = bitcast i8* %1167 to double*
  %1172 = load double, double* %1171, align 1
  %1173 = bitcast i8* %1168 to double*
  %1174 = load double, double* %1173, align 1
  %1175 = fcmp uno double %1172, %1174
  br i1 %1175, label %1176, label %1188

; <label>:1176:                                   ; preds = %block_.L_40126b
  %1177 = fadd double %1172, %1174
  %1178 = bitcast double %1177 to i64
  %1179 = and i64 %1178, 9221120237041090560
  %1180 = icmp eq i64 %1179, 9218868437227405312
  %1181 = and i64 %1178, 2251799813685247
  %1182 = icmp ne i64 %1181, 0
  %1183 = and i1 %1180, %1182
  br i1 %1183, label %1184, label %1194

; <label>:1184:                                   ; preds = %1176
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1186 = load i64, i64* %1185, align 8
  %1187 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1186, %struct.Memory* %loadMem_401277)
  br label %routine_ucomisd__xmm0___xmm1.exit301

; <label>:1188:                                   ; preds = %block_.L_40126b
  %1189 = fcmp ogt double %1172, %1174
  br i1 %1189, label %1194, label %1190

; <label>:1190:                                   ; preds = %1188
  %1191 = fcmp olt double %1172, %1174
  br i1 %1191, label %1194, label %1192

; <label>:1192:                                   ; preds = %1190
  %1193 = fcmp oeq double %1172, %1174
  br i1 %1193, label %1194, label %1201

; <label>:1194:                                   ; preds = %1192, %1190, %1188, %1176
  %1195 = phi i8 [ 0, %1188 ], [ 0, %1190 ], [ 1, %1192 ], [ 1, %1176 ]
  %1196 = phi i8 [ 0, %1188 ], [ 0, %1190 ], [ 0, %1192 ], [ 1, %1176 ]
  %1197 = phi i8 [ 0, %1188 ], [ 1, %1190 ], [ 0, %1192 ], [ 1, %1176 ]
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1195, i8* %1198, align 1
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1196, i8* %1199, align 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1200, align 1
  br label %1201

; <label>:1201:                                   ; preds = %1194, %1192
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1202, align 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1203, align 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1204, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

routine_ucomisd__xmm0___xmm1.exit301:             ; preds = %1184, %1201
  %1205 = phi %struct.Memory* [ %1187, %1184 ], [ %loadMem_401277, %1201 ]
  store %struct.Memory* %1205, %struct.Memory** %MEMORY
  %loadMem_40127b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i297
  %1210 = add i64 %1209, 17
  %1211 = load i64, i64* %PC.i297
  %1212 = add i64 %1211, 6
  %1213 = load i64, i64* %PC.i297
  %1214 = add i64 %1213, 6
  store i64 %1214, i64* %PC.i297
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1216 = load i8, i8* %1215, align 1
  %1217 = icmp eq i8 %1216, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %BRANCH_TAKEN, align 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1220 = select i1 %1217, i64 %1210, i64 %1212
  store i64 %1220, i64* %1219, align 8
  store %struct.Memory* %loadMem_40127b, %struct.Memory** %MEMORY
  %loadBr_40127b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40127b = icmp eq i8 %loadBr_40127b, 1
  br i1 %cmpBr_40127b, label %block_.L_40128c, label %block_401281

block_401281:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit301
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %PC.i296
  %1225 = add i64 %1224, 11
  %1226 = load i64, i64* %PC.i296
  %1227 = add i64 %1226, 6
  %1228 = load i64, i64* %PC.i296
  %1229 = add i64 %1228, 6
  store i64 %1229, i64* %PC.i296
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1231 = load i8, i8* %1230, align 1
  store i8 %1231, i8* %BRANCH_TAKEN, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1233 = icmp ne i8 %1231, 0
  %1234 = select i1 %1233, i64 %1225, i64 %1227
  store i64 %1234, i64* %1232, align 8
  store %struct.Memory* %loadMem_401281, %struct.Memory** %MEMORY
  %loadBr_401281 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401281 = icmp eq i8 %loadBr_401281, 1
  br i1 %cmpBr_401281, label %block_.L_40128c, label %block_401287

block_401287:                                     ; preds = %block_401281
  %loadMem_401287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %PC.i295
  %1239 = add i64 %1238, 409
  %1240 = load i64, i64* %PC.i295
  %1241 = add i64 %1240, 5
  store i64 %1241, i64* %PC.i295
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1239, i64* %1242, align 8
  store %struct.Memory* %loadMem_401287, %struct.Memory** %MEMORY
  br label %block_.L_401420

block_.L_40128c:                                  ; preds = %block_401281, %routine_ucomisd__xmm0___xmm1.exit301
  %loadMem_40128c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1246, i64 0, i64 0
  %YMM0.i293 = bitcast %union.VectorReg* %1247 to %"class.std::bitset"*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1248, i64 0, i64 0
  %XMM0.i294 = bitcast %union.VectorReg* %1249 to %union.vec128_t*
  %1250 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %1251 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %1252 = bitcast %union.vec128_t* %XMM0.i294 to i8*
  %1253 = load i64, i64* %PC.i292
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC.i292
  %1255 = bitcast i8* %1251 to i64*
  %1256 = load i64, i64* %1255, align 1
  %1257 = getelementptr inbounds i8, i8* %1251, i64 8
  %1258 = bitcast i8* %1257 to i64*
  %1259 = load i64, i64* %1258, align 1
  %1260 = bitcast i8* %1252 to i64*
  %1261 = load i64, i64* %1260, align 1
  %1262 = getelementptr inbounds i8, i8* %1252, i64 8
  %1263 = bitcast i8* %1262 to i64*
  %1264 = load i64, i64* %1263, align 1
  %1265 = xor i64 %1261, %1256
  %1266 = xor i64 %1264, %1259
  %1267 = trunc i64 %1265 to i32
  %1268 = lshr i64 %1265, 32
  %1269 = trunc i64 %1268 to i32
  %1270 = bitcast i8* %1250 to i32*
  store i32 %1267, i32* %1270, align 1
  %1271 = getelementptr inbounds i8, i8* %1250, i64 4
  %1272 = bitcast i8* %1271 to i32*
  store i32 %1269, i32* %1272, align 1
  %1273 = trunc i64 %1266 to i32
  %1274 = getelementptr inbounds i8, i8* %1250, i64 8
  %1275 = bitcast i8* %1274 to i32*
  store i32 %1273, i32* %1275, align 1
  %1276 = lshr i64 %1266, 32
  %1277 = trunc i64 %1276 to i32
  %1278 = getelementptr inbounds i8, i8* %1250, i64 12
  %1279 = bitcast i8* %1278 to i32*
  store i32 %1277, i32* %1279, align 1
  store %struct.Memory* %loadMem_40128c, %struct.Memory** %MEMORY
  %loadMem_40128f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1283, i64 0, i64 1
  %YMM1.i291 = bitcast %union.VectorReg* %1284 to %"class.std::bitset"*
  %1285 = bitcast %"class.std::bitset"* %YMM1.i291 to i8*
  %1286 = load i64, i64* %PC.i290
  %1287 = add i64 %1286, 9
  store i64 %1287, i64* %PC.i290
  %1288 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %1289 = bitcast i8* %1285 to double*
  store double %1288, double* %1289, align 1
  %1290 = getelementptr inbounds i8, i8* %1285, i64 8
  %1291 = bitcast i8* %1290 to double*
  store double 0.000000e+00, double* %1291, align 1
  store %struct.Memory* %loadMem_40128f, %struct.Memory** %MEMORY
  %loadMem_401298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1295, i64 0, i64 0
  %XMM0.i287 = bitcast %union.VectorReg* %1296 to %union.vec128_t*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1297, i64 0, i64 1
  %XMM1.i288 = bitcast %union.VectorReg* %1298 to %union.vec128_t*
  %1299 = bitcast %union.vec128_t* %XMM1.i288 to i8*
  %1300 = bitcast %union.vec128_t* %XMM0.i287 to i8*
  %1301 = load i64, i64* %PC.i286
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC.i286
  %1303 = bitcast i8* %1299 to double*
  %1304 = load double, double* %1303, align 1
  %1305 = bitcast i8* %1300 to double*
  %1306 = load double, double* %1305, align 1
  %1307 = fcmp uno double %1304, %1306
  br i1 %1307, label %1308, label %1320

; <label>:1308:                                   ; preds = %block_.L_40128c
  %1309 = fadd double %1304, %1306
  %1310 = bitcast double %1309 to i64
  %1311 = and i64 %1310, 9221120237041090560
  %1312 = icmp eq i64 %1311, 9218868437227405312
  %1313 = and i64 %1310, 2251799813685247
  %1314 = icmp ne i64 %1313, 0
  %1315 = and i1 %1312, %1314
  br i1 %1315, label %1316, label %1326

; <label>:1316:                                   ; preds = %1308
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1318 = load i64, i64* %1317, align 8
  %1319 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1318, %struct.Memory* %loadMem_401298)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1320:                                   ; preds = %block_.L_40128c
  %1321 = fcmp ogt double %1304, %1306
  br i1 %1321, label %1326, label %1322

; <label>:1322:                                   ; preds = %1320
  %1323 = fcmp olt double %1304, %1306
  br i1 %1323, label %1326, label %1324

; <label>:1324:                                   ; preds = %1322
  %1325 = fcmp oeq double %1304, %1306
  br i1 %1325, label %1326, label %1333

; <label>:1326:                                   ; preds = %1324, %1322, %1320, %1308
  %1327 = phi i8 [ 0, %1320 ], [ 0, %1322 ], [ 1, %1324 ], [ 1, %1308 ]
  %1328 = phi i8 [ 0, %1320 ], [ 0, %1322 ], [ 0, %1324 ], [ 1, %1308 ]
  %1329 = phi i8 [ 0, %1320 ], [ 1, %1322 ], [ 0, %1324 ], [ 1, %1308 ]
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1327, i8* %1330, align 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1331, align 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1329, i8* %1332, align 1
  br label %1333

; <label>:1333:                                   ; preds = %1326, %1324
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1334, align 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1335, align 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1336, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1316, %1333
  %1337 = phi %struct.Memory* [ %1319, %1316 ], [ %loadMem_401298, %1333 ]
  store %struct.Memory* %1337, %struct.Memory** %MEMORY
  %loadMem_40129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %PC.i285
  %1342 = add i64 %1341, 52
  %1343 = load i64, i64* %PC.i285
  %1344 = add i64 %1343, 6
  %1345 = load i64, i64* %PC.i285
  %1346 = add i64 %1345, 6
  store i64 %1346, i64* %PC.i285
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1348 = load i8, i8* %1347, align 1
  %1349 = icmp eq i8 %1348, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %BRANCH_TAKEN, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1352 = select i1 %1349, i64 %1342, i64 %1344
  store i64 %1352, i64* %1351, align 8
  store %struct.Memory* %loadMem_40129c, %struct.Memory** %MEMORY
  %loadBr_40129c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40129c = icmp eq i8 %loadBr_40129c, 1
  br i1 %cmpBr_40129c, label %block_.L_4012d0, label %block_4012a2

block_4012a2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4012a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %PC.i284
  %1357 = add i64 %1356, 46
  %1358 = load i64, i64* %PC.i284
  %1359 = add i64 %1358, 6
  %1360 = load i64, i64* %PC.i284
  %1361 = add i64 %1360, 6
  store i64 %1361, i64* %PC.i284
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1363 = load i8, i8* %1362, align 1
  store i8 %1363, i8* %BRANCH_TAKEN, align 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1365 = icmp ne i8 %1363, 0
  %1366 = select i1 %1365, i64 %1357, i64 %1359
  store i64 %1366, i64* %1364, align 8
  store %struct.Memory* %loadMem_4012a2, %struct.Memory** %MEMORY
  %loadBr_4012a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012a2 = icmp eq i8 %loadBr_4012a2, 1
  br i1 %cmpBr_4012a2, label %block_.L_4012d0, label %block_4012a8

block_4012a8:                                     ; preds = %block_4012a2
  %loadMem_4012a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1371 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1370, i64 0, i64 0
  %YMM0.i282 = bitcast %union.VectorReg* %1371 to %"class.std::bitset"*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1372, i64 0, i64 0
  %XMM0.i283 = bitcast %union.VectorReg* %1373 to %union.vec128_t*
  %1374 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %1375 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %1376 = bitcast %union.vec128_t* %XMM0.i283 to i8*
  %1377 = load i64, i64* %PC.i281
  %1378 = add i64 %1377, 3
  store i64 %1378, i64* %PC.i281
  %1379 = bitcast i8* %1375 to i64*
  %1380 = load i64, i64* %1379, align 1
  %1381 = getelementptr inbounds i8, i8* %1375, i64 8
  %1382 = bitcast i8* %1381 to i64*
  %1383 = load i64, i64* %1382, align 1
  %1384 = bitcast i8* %1376 to i64*
  %1385 = load i64, i64* %1384, align 1
  %1386 = getelementptr inbounds i8, i8* %1376, i64 8
  %1387 = bitcast i8* %1386 to i64*
  %1388 = load i64, i64* %1387, align 1
  %1389 = xor i64 %1385, %1380
  %1390 = xor i64 %1388, %1383
  %1391 = trunc i64 %1389 to i32
  %1392 = lshr i64 %1389, 32
  %1393 = trunc i64 %1392 to i32
  %1394 = bitcast i8* %1374 to i32*
  store i32 %1391, i32* %1394, align 1
  %1395 = getelementptr inbounds i8, i8* %1374, i64 4
  %1396 = bitcast i8* %1395 to i32*
  store i32 %1393, i32* %1396, align 1
  %1397 = trunc i64 %1390 to i32
  %1398 = getelementptr inbounds i8, i8* %1374, i64 8
  %1399 = bitcast i8* %1398 to i32*
  store i32 %1397, i32* %1399, align 1
  %1400 = lshr i64 %1390, 32
  %1401 = trunc i64 %1400 to i32
  %1402 = getelementptr inbounds i8, i8* %1374, i64 12
  %1403 = bitcast i8* %1402 to i32*
  store i32 %1401, i32* %1403, align 1
  store %struct.Memory* %loadMem_4012a8, %struct.Memory** %MEMORY
  %loadMem_4012ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1407, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %1408 to %union.vec128_t*
  %1409 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %1410 = load i64, i64* %PC.i279
  %1411 = add i64 %1410, 9
  store i64 %1411, i64* %PC.i279
  %1412 = bitcast i8* %1409 to double*
  %1413 = load double, double* %1412, align 1
  store double %1413, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_4012ab, %struct.Memory** %MEMORY
  %loadMem_4012b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1417, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %1418 to %"class.std::bitset"*
  %1419 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %1420 = load i64, i64* %PC.i277
  %1421 = add i64 %1420, 9
  store i64 %1421, i64* %PC.i277
  %1422 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %1423 = bitcast i8* %1419 to double*
  store double %1422, double* %1423, align 1
  %1424 = getelementptr inbounds i8, i8* %1419, i64 8
  %1425 = bitcast i8* %1424 to double*
  store double 0.000000e+00, double* %1425, align 1
  store %struct.Memory* %loadMem_4012b4, %struct.Memory** %MEMORY
  %loadMem_4012bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1429, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %1430 to %"class.std::bitset"*
  %1431 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %1432 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %1433 = load i64, i64* %PC.i275
  %1434 = add i64 %1433, 9
  store i64 %1434, i64* %PC.i275
  %1435 = bitcast i8* %1432 to double*
  %1436 = load double, double* %1435, align 1
  %1437 = getelementptr inbounds i8, i8* %1432, i64 8
  %1438 = bitcast i8* %1437 to i64*
  %1439 = load i64, i64* %1438, align 1
  %1440 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1441 = fdiv double %1436, %1440
  %1442 = bitcast i8* %1431 to double*
  store double %1441, double* %1442, align 1
  %1443 = getelementptr inbounds i8, i8* %1431, i64 8
  %1444 = bitcast i8* %1443 to i64*
  store i64 %1439, i64* %1444, align 1
  store %struct.Memory* %loadMem_4012bd, %struct.Memory** %MEMORY
  %loadMem_4012c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 15
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1451, i64 0, i64 0
  %XMM0.i274 = bitcast %union.VectorReg* %1452 to %union.vec128_t*
  %1453 = load i64, i64* %RBP.i273
  %1454 = sub i64 %1453, 24
  %1455 = bitcast %union.vec128_t* %XMM0.i274 to i8*
  %1456 = load i64, i64* %PC.i272
  %1457 = add i64 %1456, 5
  store i64 %1457, i64* %PC.i272
  %1458 = bitcast i8* %1455 to double*
  %1459 = load double, double* %1458, align 1
  %1460 = inttoptr i64 %1454 to double*
  store double %1459, double* %1460
  store %struct.Memory* %loadMem_4012c6, %struct.Memory** %MEMORY
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i271
  %1465 = add i64 %1464, 68
  %1466 = load i64, i64* %PC.i271
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i271
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1468, align 8
  store %struct.Memory* %loadMem_4012cb, %struct.Memory** %MEMORY
  br label %block_.L_40130f

block_.L_4012d0:                                  ; preds = %block_4012a2, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 0
  %YMM0.i270 = bitcast %union.VectorReg* %1473 to %"class.std::bitset"*
  %1474 = bitcast %"class.std::bitset"* %YMM0.i270 to i8*
  %1475 = load i64, i64* %PC.i269
  %1476 = add i64 %1475, 9
  store i64 %1476, i64* %PC.i269
  %1477 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %1478 = bitcast i8* %1474 to double*
  store double %1477, double* %1478, align 1
  %1479 = getelementptr inbounds i8, i8* %1474, i64 8
  %1480 = bitcast i8* %1479 to double*
  store double 0.000000e+00, double* %1480, align 1
  store %struct.Memory* %loadMem_4012d0, %struct.Memory** %MEMORY
  %loadMem_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1484, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %1485 to %"class.std::bitset"*
  %1486 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %1487 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %1488 = load i64, i64* %PC.i267
  %1489 = add i64 %1488, 9
  store i64 %1489, i64* %PC.i267
  %1490 = bitcast i8* %1487 to double*
  %1491 = load double, double* %1490, align 1
  %1492 = getelementptr inbounds i8, i8* %1487, i64 8
  %1493 = bitcast i8* %1492 to i64*
  %1494 = load i64, i64* %1493, align 1
  %1495 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1496 = fsub double %1491, %1495
  %1497 = bitcast i8* %1486 to double*
  store double %1496, double* %1497, align 1
  %1498 = getelementptr inbounds i8, i8* %1486, i64 8
  %1499 = bitcast i8* %1498 to i64*
  store i64 %1494, i64* %1499, align 1
  store %struct.Memory* %loadMem_4012d9, %struct.Memory** %MEMORY
  %loadMem_4012e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1503, i64 0, i64 0
  %YMM0.i266 = bitcast %union.VectorReg* %1504 to %"class.std::bitset"*
  %1505 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1506 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1507 = load i64, i64* %PC.i265
  %1508 = add i64 %1507, 9
  store i64 %1508, i64* %PC.i265
  %1509 = bitcast i8* %1506 to double*
  %1510 = load double, double* %1509, align 1
  %1511 = getelementptr inbounds i8, i8* %1506, i64 8
  %1512 = bitcast i8* %1511 to i64*
  %1513 = load i64, i64* %1512, align 1
  %1514 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %1515 = fdiv double %1510, %1514
  %1516 = bitcast i8* %1505 to double*
  store double %1515, double* %1516, align 1
  %1517 = getelementptr inbounds i8, i8* %1505, i64 8
  %1518 = bitcast i8* %1517 to i64*
  store i64 %1513, i64* %1518, align 1
  store %struct.Memory* %loadMem_4012e2, %struct.Memory** %MEMORY
  %loadMem_4012eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1523 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1522, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %1523 to %"class.std::bitset"*
  %1524 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %1525 = load i64, i64* %PC.i263
  %1526 = add i64 %1525, 9
  store i64 %1526, i64* %PC.i263
  %1527 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1528 = bitcast i8* %1524 to double*
  store double %1527, double* %1528, align 1
  %1529 = getelementptr inbounds i8, i8* %1524, i64 8
  %1530 = bitcast i8* %1529 to double*
  store double 0.000000e+00, double* %1530, align 1
  store %struct.Memory* %loadMem_4012eb, %struct.Memory** %MEMORY
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1537, i64 0, i64 0
  %XMM0.i262 = bitcast %union.VectorReg* %1538 to %union.vec128_t*
  %1539 = load i64, i64* %RBP.i261
  %1540 = sub i64 %1539, 56
  %1541 = bitcast %union.vec128_t* %XMM0.i262 to i8*
  %1542 = load i64, i64* %PC.i260
  %1543 = add i64 %1542, 5
  store i64 %1543, i64* %PC.i260
  %1544 = bitcast i8* %1541 to double*
  %1545 = load double, double* %1544, align 1
  %1546 = inttoptr i64 %1540 to double*
  store double %1545, double* %1546
  store %struct.Memory* %loadMem_4012f4, %struct.Memory** %MEMORY
  %loadMem_4012f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1550, i64 0, i64 0
  %YMM0.i258 = bitcast %union.VectorReg* %1551 to %"class.std::bitset"*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1552, i64 0, i64 1
  %XMM1.i259 = bitcast %union.VectorReg* %1553 to %union.vec128_t*
  %1554 = bitcast %"class.std::bitset"* %YMM0.i258 to i8*
  %1555 = bitcast %union.vec128_t* %XMM1.i259 to i8*
  %1556 = load i64, i64* %PC.i257
  %1557 = add i64 %1556, 3
  store i64 %1557, i64* %PC.i257
  %1558 = bitcast i8* %1555 to <2 x i32>*
  %1559 = load <2 x i32>, <2 x i32>* %1558, align 1
  %1560 = getelementptr inbounds i8, i8* %1555, i64 8
  %1561 = bitcast i8* %1560 to <2 x i32>*
  %1562 = load <2 x i32>, <2 x i32>* %1561, align 1
  %1563 = extractelement <2 x i32> %1559, i32 0
  %1564 = bitcast i8* %1554 to i32*
  store i32 %1563, i32* %1564, align 1
  %1565 = extractelement <2 x i32> %1559, i32 1
  %1566 = getelementptr inbounds i8, i8* %1554, i64 4
  %1567 = bitcast i8* %1566 to i32*
  store i32 %1565, i32* %1567, align 1
  %1568 = extractelement <2 x i32> %1562, i32 0
  %1569 = getelementptr inbounds i8, i8* %1554, i64 8
  %1570 = bitcast i8* %1569 to i32*
  store i32 %1568, i32* %1570, align 1
  %1571 = extractelement <2 x i32> %1562, i32 1
  %1572 = getelementptr inbounds i8, i8* %1554, i64 12
  %1573 = bitcast i8* %1572 to i32*
  store i32 %1571, i32* %1573, align 1
  store %struct.Memory* %loadMem_4012f9, %struct.Memory** %MEMORY
  %loadMem1_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %PC.i256
  %1578 = add i64 %1577, -3356
  %1579 = load i64, i64* %PC.i256
  %1580 = add i64 %1579, 5
  %1581 = load i64, i64* %PC.i256
  %1582 = add i64 %1581, 5
  store i64 %1582, i64* %PC.i256
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1584 = load i64, i64* %1583, align 8
  %1585 = add i64 %1584, -8
  %1586 = inttoptr i64 %1585 to i64*
  store i64 %1580, i64* %1586
  store i64 %1585, i64* %1583, align 8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1578, i64* %1587, align 8
  store %struct.Memory* %loadMem1_4012fc, %struct.Memory** %MEMORY
  %loadMem2_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012fc = load i64, i64* %3
  %call2_4012fc = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_4012fc, %struct.Memory* %loadMem2_4012fc)
  store %struct.Memory* %call2_4012fc, %struct.Memory** %MEMORY
  %loadMem_401301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 15
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1594, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %1595 to %"class.std::bitset"*
  %1596 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %1597 = load i64, i64* %RBP.i254
  %1598 = sub i64 %1597, 56
  %1599 = load i64, i64* %PC.i253
  %1600 = add i64 %1599, 5
  store i64 %1600, i64* %PC.i253
  %1601 = inttoptr i64 %1598 to double*
  %1602 = load double, double* %1601
  %1603 = bitcast i8* %1596 to double*
  store double %1602, double* %1603, align 1
  %1604 = getelementptr inbounds i8, i8* %1596, i64 8
  %1605 = bitcast i8* %1604 to double*
  store double 0.000000e+00, double* %1605, align 1
  store %struct.Memory* %loadMem_401301, %struct.Memory** %MEMORY
  %loadMem_401306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1609, i64 0, i64 1
  %YMM1.i251 = bitcast %union.VectorReg* %1610 to %"class.std::bitset"*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %1612 to %union.vec128_t*
  %1613 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1614 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1615 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %1616 = load i64, i64* %PC.i250
  %1617 = add i64 %1616, 4
  store i64 %1617, i64* %PC.i250
  %1618 = bitcast i8* %1614 to double*
  %1619 = load double, double* %1618, align 1
  %1620 = getelementptr inbounds i8, i8* %1614, i64 8
  %1621 = bitcast i8* %1620 to i64*
  %1622 = load i64, i64* %1621, align 1
  %1623 = bitcast i8* %1615 to double*
  %1624 = load double, double* %1623, align 1
  %1625 = fmul double %1619, %1624
  %1626 = bitcast i8* %1613 to double*
  store double %1625, double* %1626, align 1
  %1627 = getelementptr inbounds i8, i8* %1613, i64 8
  %1628 = bitcast i8* %1627 to i64*
  store i64 %1622, i64* %1628, align 1
  store %struct.Memory* %loadMem_401306, %struct.Memory** %MEMORY
  %loadMem_40130a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 15
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 1
  %XMM1.i249 = bitcast %union.VectorReg* %1636 to %union.vec128_t*
  %1637 = load i64, i64* %RBP.i248
  %1638 = sub i64 %1637, 24
  %1639 = bitcast %union.vec128_t* %XMM1.i249 to i8*
  %1640 = load i64, i64* %PC.i247
  %1641 = add i64 %1640, 5
  store i64 %1641, i64* %PC.i247
  %1642 = bitcast i8* %1639 to double*
  %1643 = load double, double* %1642, align 1
  %1644 = inttoptr i64 %1638 to double*
  store double %1643, double* %1644
  store %struct.Memory* %loadMem_40130a, %struct.Memory** %MEMORY
  br label %block_.L_40130f

block_.L_40130f:                                  ; preds = %block_.L_4012d0, %block_4012a8
  %loadMem_40130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1651, i64 0, i64 0
  %YMM0.i246 = bitcast %union.VectorReg* %1652 to %"class.std::bitset"*
  %1653 = bitcast %"class.std::bitset"* %YMM0.i246 to i8*
  %1654 = load i64, i64* %RBP.i245
  %1655 = sub i64 %1654, 24
  %1656 = load i64, i64* %PC.i244
  %1657 = add i64 %1656, 5
  store i64 %1657, i64* %PC.i244
  %1658 = inttoptr i64 %1655 to double*
  %1659 = load double, double* %1658
  %1660 = bitcast i8* %1653 to double*
  store double %1659, double* %1660, align 1
  %1661 = getelementptr inbounds i8, i8* %1653, i64 8
  %1662 = bitcast i8* %1661 to double*
  store double 0.000000e+00, double* %1662, align 1
  store %struct.Memory* %loadMem_40130f, %struct.Memory** %MEMORY
  %loadMem1_401314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %PC.i243
  %1667 = add i64 %1666, -3364
  %1668 = load i64, i64* %PC.i243
  %1669 = add i64 %1668, 5
  %1670 = load i64, i64* %PC.i243
  %1671 = add i64 %1670, 5
  store i64 %1671, i64* %PC.i243
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1673 = load i64, i64* %1672, align 8
  %1674 = add i64 %1673, -8
  %1675 = inttoptr i64 %1674 to i64*
  store i64 %1669, i64* %1675
  store i64 %1674, i64* %1672, align 8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1667, i64* %1676, align 8
  store %struct.Memory* %loadMem1_401314, %struct.Memory** %MEMORY
  %loadMem2_401314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401314 = load i64, i64* %3
  %1677 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %loadMem2_401314)
  store %struct.Memory* %1677, %struct.Memory** %MEMORY
  %loadMem_401319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1684, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %1685 to %union.vec128_t*
  %1686 = load i64, i64* %RBP.i240
  %1687 = sub i64 %1686, 8
  %1688 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %1689 = load i64, i64* %PC.i239
  %1690 = add i64 %1689, 5
  store i64 %1690, i64* %PC.i239
  %1691 = bitcast i8* %1688 to double*
  %1692 = load double, double* %1691, align 1
  %1693 = inttoptr i64 %1687 to double*
  store double %1692, double* %1693
  store %struct.Memory* %loadMem_401319, %struct.Memory** %MEMORY
  %loadMem_40131e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1697, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %1698 to %"class.std::bitset"*
  %1699 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %1700 = load i64, i64* %PC.i237
  %1701 = add i64 %1700, 9
  store i64 %1701, i64* %PC.i237
  %1702 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %1703 = bitcast i8* %1699 to double*
  store double %1702, double* %1703, align 1
  %1704 = getelementptr inbounds i8, i8* %1699, i64 8
  %1705 = bitcast i8* %1704 to double*
  store double 0.000000e+00, double* %1705, align 1
  store %struct.Memory* %loadMem_40131e, %struct.Memory** %MEMORY
  %loadMem_401327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1709, i64 0, i64 0
  %YMM0.i236 = bitcast %union.VectorReg* %1710 to %"class.std::bitset"*
  %1711 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %1712 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %1713 = load i64, i64* %PC.i235
  %1714 = add i64 %1713, 9
  store i64 %1714, i64* %PC.i235
  %1715 = bitcast i8* %1712 to double*
  %1716 = load double, double* %1715, align 1
  %1717 = getelementptr inbounds i8, i8* %1712, i64 8
  %1718 = bitcast i8* %1717 to i64*
  %1719 = load i64, i64* %1718, align 1
  %1720 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %1721 = fdiv double %1716, %1720
  %1722 = bitcast i8* %1711 to double*
  store double %1721, double* %1722, align 1
  %1723 = getelementptr inbounds i8, i8* %1711, i64 8
  %1724 = bitcast i8* %1723 to i64*
  store i64 %1719, i64* %1724, align 1
  store %struct.Memory* %loadMem_401327, %struct.Memory** %MEMORY
  %loadMem_401330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1731, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %1732 to %"class.std::bitset"*
  %1733 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %1734 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %1735 = load i64, i64* %RBP.i233
  %1736 = sub i64 %1735, 24
  %1737 = load i64, i64* %PC.i232
  %1738 = add i64 %1737, 5
  store i64 %1738, i64* %PC.i232
  %1739 = bitcast i8* %1734 to double*
  %1740 = load double, double* %1739, align 1
  %1741 = getelementptr inbounds i8, i8* %1734, i64 8
  %1742 = bitcast i8* %1741 to i64*
  %1743 = load i64, i64* %1742, align 1
  %1744 = inttoptr i64 %1736 to double*
  %1745 = load double, double* %1744
  %1746 = fmul double %1740, %1745
  %1747 = bitcast i8* %1733 to double*
  store double %1746, double* %1747, align 1
  %1748 = getelementptr inbounds i8, i8* %1733, i64 8
  %1749 = bitcast i8* %1748 to i64*
  store i64 %1743, i64* %1749, align 1
  store %struct.Memory* %loadMem_401330, %struct.Memory** %MEMORY
  %loadMem_401335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 15
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1756, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %1757 to %union.vec128_t*
  %1758 = load i64, i64* %RBP.i230
  %1759 = sub i64 %1758, 32
  %1760 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %1761 = load i64, i64* %PC.i229
  %1762 = add i64 %1761, 5
  store i64 %1762, i64* %PC.i229
  %1763 = bitcast i8* %1760 to double*
  %1764 = load double, double* %1763, align 1
  %1765 = inttoptr i64 %1759 to double*
  store double %1764, double* %1765
  store %struct.Memory* %loadMem_401335, %struct.Memory** %MEMORY
  %loadMem_40133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1769, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1770 to %"class.std::bitset"*
  %1771 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1772 = load i64, i64* %PC.i227
  %1773 = add i64 %1772, 9
  store i64 %1773, i64* %PC.i227
  %1774 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1775 = bitcast i8* %1771 to double*
  store double %1774, double* %1775, align 1
  %1776 = getelementptr inbounds i8, i8* %1771, i64 8
  %1777 = bitcast i8* %1776 to double*
  store double 0.000000e+00, double* %1777, align 1
  store %struct.Memory* %loadMem_40133a, %struct.Memory** %MEMORY
  %loadMem_401343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1784, i64 0, i64 0
  %XMM0.i226 = bitcast %union.VectorReg* %1785 to %union.vec128_t*
  %1786 = load i64, i64* %RBP.i225
  %1787 = sub i64 %1786, 40
  %1788 = bitcast %union.vec128_t* %XMM0.i226 to i8*
  %1789 = load i64, i64* %PC.i224
  %1790 = add i64 %1789, 5
  store i64 %1790, i64* %PC.i224
  %1791 = bitcast i8* %1788 to double*
  %1792 = load double, double* %1791, align 1
  %1793 = inttoptr i64 %1787 to double*
  store double %1792, double* %1793
  store %struct.Memory* %loadMem_401343, %struct.Memory** %MEMORY
  %loadMem_401348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1797, i64 0, i64 0
  %YMM0.i223 = bitcast %union.VectorReg* %1798 to %"class.std::bitset"*
  %1799 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %1800 = load i64, i64* %PC.i222
  %1801 = add i64 %1800, 9
  store i64 %1801, i64* %PC.i222
  %1802 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %1803 = bitcast i8* %1799 to double*
  store double %1802, double* %1803, align 1
  %1804 = getelementptr inbounds i8, i8* %1799, i64 8
  %1805 = bitcast i8* %1804 to double*
  store double 0.000000e+00, double* %1805, align 1
  store %struct.Memory* %loadMem_401348, %struct.Memory** %MEMORY
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1812, i64 0, i64 0
  %YMM0.i221 = bitcast %union.VectorReg* %1813 to %"class.std::bitset"*
  %1814 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %1815 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %1816 = load i64, i64* %RBP.i220
  %1817 = sub i64 %1816, 8
  %1818 = load i64, i64* %PC.i219
  %1819 = add i64 %1818, 5
  store i64 %1819, i64* %PC.i219
  %1820 = bitcast i8* %1815 to double*
  %1821 = load double, double* %1820, align 1
  %1822 = getelementptr inbounds i8, i8* %1815, i64 8
  %1823 = bitcast i8* %1822 to i64*
  %1824 = load i64, i64* %1823, align 1
  %1825 = inttoptr i64 %1817 to double*
  %1826 = load double, double* %1825
  %1827 = fadd double %1821, %1826
  %1828 = bitcast i8* %1814 to double*
  store double %1827, double* %1828, align 1
  %1829 = getelementptr inbounds i8, i8* %1814, i64 8
  %1830 = bitcast i8* %1829 to i64*
  store i64 %1824, i64* %1830, align 1
  store %struct.Memory* %loadMem_401351, %struct.Memory** %MEMORY
  %loadMem_401356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 15
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1837, i64 0, i64 1
  %YMM1.i218 = bitcast %union.VectorReg* %1838 to %"class.std::bitset"*
  %1839 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %1840 = load i64, i64* %RBP.i217
  %1841 = sub i64 %1840, 32
  %1842 = load i64, i64* %PC.i216
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %PC.i216
  %1844 = inttoptr i64 %1841 to double*
  %1845 = load double, double* %1844
  %1846 = bitcast i8* %1839 to double*
  store double %1845, double* %1846, align 1
  %1847 = getelementptr inbounds i8, i8* %1839, i64 8
  %1848 = bitcast i8* %1847 to double*
  store double 0.000000e+00, double* %1848, align 1
  store %struct.Memory* %loadMem_401356, %struct.Memory** %MEMORY
  %loadMem_40135b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 15
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1855, i64 0, i64 0
  %XMM0.i215 = bitcast %union.VectorReg* %1856 to %union.vec128_t*
  %1857 = load i64, i64* %RBP.i214
  %1858 = sub i64 %1857, 64
  %1859 = bitcast %union.vec128_t* %XMM0.i215 to i8*
  %1860 = load i64, i64* %PC.i213
  %1861 = add i64 %1860, 5
  store i64 %1861, i64* %PC.i213
  %1862 = bitcast i8* %1859 to double*
  %1863 = load double, double* %1862, align 1
  %1864 = inttoptr i64 %1858 to double*
  store double %1863, double* %1864
  store %struct.Memory* %loadMem_40135b, %struct.Memory** %MEMORY
  %loadMem_401360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1868, i64 0, i64 0
  %YMM0.i211 = bitcast %union.VectorReg* %1869 to %"class.std::bitset"*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1870, i64 0, i64 1
  %XMM1.i212 = bitcast %union.VectorReg* %1871 to %union.vec128_t*
  %1872 = bitcast %"class.std::bitset"* %YMM0.i211 to i8*
  %1873 = bitcast %union.vec128_t* %XMM1.i212 to i8*
  %1874 = load i64, i64* %PC.i210
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i210
  %1876 = bitcast i8* %1873 to <2 x i32>*
  %1877 = load <2 x i32>, <2 x i32>* %1876, align 1
  %1878 = getelementptr inbounds i8, i8* %1873, i64 8
  %1879 = bitcast i8* %1878 to <2 x i32>*
  %1880 = load <2 x i32>, <2 x i32>* %1879, align 1
  %1881 = extractelement <2 x i32> %1877, i32 0
  %1882 = bitcast i8* %1872 to i32*
  store i32 %1881, i32* %1882, align 1
  %1883 = extractelement <2 x i32> %1877, i32 1
  %1884 = getelementptr inbounds i8, i8* %1872, i64 4
  %1885 = bitcast i8* %1884 to i32*
  store i32 %1883, i32* %1885, align 1
  %1886 = extractelement <2 x i32> %1880, i32 0
  %1887 = getelementptr inbounds i8, i8* %1872, i64 8
  %1888 = bitcast i8* %1887 to i32*
  store i32 %1886, i32* %1888, align 1
  %1889 = extractelement <2 x i32> %1880, i32 1
  %1890 = getelementptr inbounds i8, i8* %1872, i64 12
  %1891 = bitcast i8* %1890 to i32*
  store i32 %1889, i32* %1891, align 1
  store %struct.Memory* %loadMem_401360, %struct.Memory** %MEMORY
  %loadMem1_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i209
  %1896 = add i64 %1895, -3443
  %1897 = load i64, i64* %PC.i209
  %1898 = add i64 %1897, 5
  %1899 = load i64, i64* %PC.i209
  %1900 = add i64 %1899, 5
  store i64 %1900, i64* %PC.i209
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1902 = load i64, i64* %1901, align 8
  %1903 = add i64 %1902, -8
  %1904 = inttoptr i64 %1903 to i64*
  store i64 %1898, i64* %1904
  store i64 %1903, i64* %1901, align 8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1896, i64* %1905, align 8
  store %struct.Memory* %loadMem1_401363, %struct.Memory** %MEMORY
  %loadMem2_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401363 = load i64, i64* %3
  %1906 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %loadMem2_401363)
  store %struct.Memory* %1906, %struct.Memory** %MEMORY
  %loadMem_401368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1910, i64 0, i64 1
  %YMM1.i206 = bitcast %union.VectorReg* %1911 to %"class.std::bitset"*
  %1912 = bitcast %"class.std::bitset"* %YMM1.i206 to i8*
  %1913 = load i64, i64* %PC.i205
  %1914 = load i64, i64* %PC.i205
  %1915 = add i64 %1914, 8
  store i64 %1915, i64* %PC.i205
  %1916 = load double, double* bitcast (%G_0x2b0__rip__4199280__type* @G_0x2b0__rip__4199280_ to double*)
  %1917 = bitcast i8* %1912 to double*
  store double %1916, double* %1917, align 1
  %1918 = getelementptr inbounds i8, i8* %1912, i64 8
  %1919 = bitcast i8* %1918 to double*
  store double 0.000000e+00, double* %1919, align 1
  store %struct.Memory* %loadMem_401368, %struct.Memory** %MEMORY
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1926, i64 0, i64 2
  %YMM2.i204 = bitcast %union.VectorReg* %1927 to %"class.std::bitset"*
  %1928 = bitcast %"class.std::bitset"* %YMM2.i204 to i8*
  %1929 = load i64, i64* %RBP.i203
  %1930 = sub i64 %1929, 64
  %1931 = load i64, i64* %PC.i202
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i202
  %1933 = inttoptr i64 %1930 to double*
  %1934 = load double, double* %1933
  %1935 = bitcast i8* %1928 to double*
  store double %1934, double* %1935, align 1
  %1936 = getelementptr inbounds i8, i8* %1928, i64 8
  %1937 = bitcast i8* %1936 to double*
  store double 0.000000e+00, double* %1937, align 1
  store %struct.Memory* %loadMem_401370, %struct.Memory** %MEMORY
  %loadMem_401375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1942 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1941, i64 0, i64 2
  %YMM2.i200 = bitcast %union.VectorReg* %1942 to %"class.std::bitset"*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1943, i64 0, i64 0
  %XMM0.i201 = bitcast %union.VectorReg* %1944 to %union.vec128_t*
  %1945 = bitcast %"class.std::bitset"* %YMM2.i200 to i8*
  %1946 = bitcast %"class.std::bitset"* %YMM2.i200 to i8*
  %1947 = bitcast %union.vec128_t* %XMM0.i201 to i8*
  %1948 = load i64, i64* %PC.i199
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %PC.i199
  %1950 = bitcast i8* %1946 to double*
  %1951 = load double, double* %1950, align 1
  %1952 = getelementptr inbounds i8, i8* %1946, i64 8
  %1953 = bitcast i8* %1952 to i64*
  %1954 = load i64, i64* %1953, align 1
  %1955 = bitcast i8* %1947 to double*
  %1956 = load double, double* %1955, align 1
  %1957 = fsub double %1951, %1956
  %1958 = bitcast i8* %1945 to double*
  store double %1957, double* %1958, align 1
  %1959 = getelementptr inbounds i8, i8* %1945, i64 8
  %1960 = bitcast i8* %1959 to i64*
  store i64 %1954, i64* %1960, align 1
  store %struct.Memory* %loadMem_401375, %struct.Memory** %MEMORY
  %loadMem_401379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1965 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1964, i64 0, i64 2
  %XMM2.i198 = bitcast %union.VectorReg* %1965 to %union.vec128_t*
  %1966 = bitcast %union.vec128_t* %XMM2.i198 to i8*
  %1967 = load i64, i64* %PC.i197
  %1968 = add i64 %1967, 9
  store i64 %1968, i64* %PC.i197
  %1969 = bitcast i8* %1966 to double*
  %1970 = load double, double* %1969, align 1
  store double %1970, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_401379, %struct.Memory** %MEMORY
  %loadMem_401382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 15
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1977, i64 0, i64 0
  %YMM0.i196 = bitcast %union.VectorReg* %1978 to %"class.std::bitset"*
  %1979 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %1980 = load i64, i64* %RBP.i195
  %1981 = sub i64 %1980, 40
  %1982 = load i64, i64* %PC.i194
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %PC.i194
  %1984 = inttoptr i64 %1981 to double*
  %1985 = load double, double* %1984
  %1986 = bitcast i8* %1979 to double*
  store double %1985, double* %1986, align 1
  %1987 = getelementptr inbounds i8, i8* %1979, i64 8
  %1988 = bitcast i8* %1987 to double*
  store double 0.000000e+00, double* %1988, align 1
  store %struct.Memory* %loadMem_401382, %struct.Memory** %MEMORY
  %loadMem_401387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1995, i64 0, i64 0
  %YMM0.i193 = bitcast %union.VectorReg* %1996 to %"class.std::bitset"*
  %1997 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %1998 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %1999 = load i64, i64* %RBP.i192
  %2000 = sub i64 %1999, 8
  %2001 = load i64, i64* %PC.i191
  %2002 = add i64 %2001, 5
  store i64 %2002, i64* %PC.i191
  %2003 = bitcast i8* %1998 to double*
  %2004 = load double, double* %2003, align 1
  %2005 = getelementptr inbounds i8, i8* %1998, i64 8
  %2006 = bitcast i8* %2005 to i64*
  %2007 = load i64, i64* %2006, align 1
  %2008 = inttoptr i64 %2000 to double*
  %2009 = load double, double* %2008
  %2010 = fadd double %2004, %2009
  %2011 = bitcast i8* %1997 to double*
  store double %2010, double* %2011, align 1
  %2012 = getelementptr inbounds i8, i8* %1997, i64 8
  %2013 = bitcast i8* %2012 to i64*
  store i64 %2007, i64* %2013, align 1
  store %struct.Memory* %loadMem_401387, %struct.Memory** %MEMORY
  %loadMem_40138c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2017, i64 0, i64 0
  %YMM0.i189 = bitcast %union.VectorReg* %2018 to %"class.std::bitset"*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2019, i64 0, i64 1
  %XMM1.i190 = bitcast %union.VectorReg* %2020 to %union.vec128_t*
  %2021 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %2022 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %2023 = bitcast %union.vec128_t* %XMM1.i190 to i8*
  %2024 = load i64, i64* %PC.i188
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC.i188
  %2026 = bitcast i8* %2022 to double*
  %2027 = load double, double* %2026, align 1
  %2028 = getelementptr inbounds i8, i8* %2022, i64 8
  %2029 = bitcast i8* %2028 to i64*
  %2030 = load i64, i64* %2029, align 1
  %2031 = bitcast i8* %2023 to double*
  %2032 = load double, double* %2031, align 1
  %2033 = fdiv double %2027, %2032
  %2034 = bitcast i8* %2021 to double*
  store double %2033, double* %2034, align 1
  %2035 = getelementptr inbounds i8, i8* %2021, i64 8
  %2036 = bitcast i8* %2035 to i64*
  store i64 %2030, i64* %2036, align 1
  store %struct.Memory* %loadMem_40138c, %struct.Memory** %MEMORY
  %loadMem_401390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2043, i64 0, i64 1
  %XMM1.i187 = bitcast %union.VectorReg* %2044 to %union.vec128_t*
  %2045 = load i64, i64* %RBP.i186
  %2046 = sub i64 %2045, 72
  %2047 = bitcast %union.vec128_t* %XMM1.i187 to i8*
  %2048 = load i64, i64* %PC.i185
  %2049 = add i64 %2048, 5
  store i64 %2049, i64* %PC.i185
  %2050 = bitcast i8* %2047 to double*
  %2051 = load double, double* %2050, align 1
  %2052 = inttoptr i64 %2046 to double*
  store double %2051, double* %2052
  store %struct.Memory* %loadMem_401390, %struct.Memory** %MEMORY
  %loadMem1_401395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %PC.i184
  %2057 = add i64 %2056, -3509
  %2058 = load i64, i64* %PC.i184
  %2059 = add i64 %2058, 5
  %2060 = load i64, i64* %PC.i184
  %2061 = add i64 %2060, 5
  store i64 %2061, i64* %PC.i184
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2063 = load i64, i64* %2062, align 8
  %2064 = add i64 %2063, -8
  %2065 = inttoptr i64 %2064 to i64*
  store i64 %2059, i64* %2065
  store i64 %2064, i64* %2062, align 8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2057, i64* %2066, align 8
  store %struct.Memory* %loadMem1_401395, %struct.Memory** %MEMORY
  %loadMem2_401395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401395 = load i64, i64* %3
  %call2_401395 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_401395, %struct.Memory* %loadMem2_401395)
  store %struct.Memory* %call2_401395, %struct.Memory** %MEMORY
  %loadMem_40139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 15
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2073, i64 0, i64 0
  %XMM0.i183 = bitcast %union.VectorReg* %2074 to %union.vec128_t*
  %2075 = load i64, i64* %RBP.i182
  %2076 = sub i64 %2075, 48
  %2077 = bitcast %union.vec128_t* %XMM0.i183 to i8*
  %2078 = load i64, i64* %PC.i181
  %2079 = add i64 %2078, 5
  store i64 %2079, i64* %PC.i181
  %2080 = bitcast i8* %2077 to double*
  %2081 = load double, double* %2080, align 1
  %2082 = inttoptr i64 %2076 to double*
  store double %2081, double* %2082
  store %struct.Memory* %loadMem_40139a, %struct.Memory** %MEMORY
  %loadMem_40139f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 15
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2089, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %2090 to %"class.std::bitset"*
  %2091 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %2092 = load i64, i64* %RBP.i179
  %2093 = sub i64 %2092, 72
  %2094 = load i64, i64* %PC.i178
  %2095 = add i64 %2094, 5
  store i64 %2095, i64* %PC.i178
  %2096 = inttoptr i64 %2093 to double*
  %2097 = load double, double* %2096
  %2098 = bitcast i8* %2091 to double*
  store double %2097, double* %2098, align 1
  %2099 = getelementptr inbounds i8, i8* %2091, i64 8
  %2100 = bitcast i8* %2099 to double*
  store double 0.000000e+00, double* %2100, align 1
  store %struct.Memory* %loadMem_40139f, %struct.Memory** %MEMORY
  %loadMem_4013a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2104, i64 0, i64 0
  %YMM0.i177 = bitcast %union.VectorReg* %2105 to %"class.std::bitset"*
  %2106 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %2107 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %2108 = load i64, i64* %PC.i176
  %2109 = add i64 %2108, 9
  store i64 %2109, i64* %PC.i176
  %2110 = bitcast i8* %2107 to double*
  %2111 = load double, double* %2110, align 1
  %2112 = getelementptr inbounds i8, i8* %2107, i64 8
  %2113 = bitcast i8* %2112 to i64*
  %2114 = load i64, i64* %2113, align 1
  %2115 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %2116 = fmul double %2111, %2115
  %2117 = bitcast i8* %2106 to double*
  store double %2116, double* %2117, align 1
  %2118 = getelementptr inbounds i8, i8* %2106, i64 8
  %2119 = bitcast i8* %2118 to i64*
  store i64 %2114, i64* %2119, align 1
  store %struct.Memory* %loadMem_4013a4, %struct.Memory** %MEMORY
  %loadMem_4013ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 33
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 15
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2126, i64 0, i64 0
  %YMM0.i175 = bitcast %union.VectorReg* %2127 to %"class.std::bitset"*
  %2128 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %2129 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %2130 = load i64, i64* %RBP.i174
  %2131 = sub i64 %2130, 48
  %2132 = load i64, i64* %PC.i173
  %2133 = add i64 %2132, 5
  store i64 %2133, i64* %PC.i173
  %2134 = bitcast i8* %2129 to double*
  %2135 = load double, double* %2134, align 1
  %2136 = getelementptr inbounds i8, i8* %2129, i64 8
  %2137 = bitcast i8* %2136 to i64*
  %2138 = load i64, i64* %2137, align 1
  %2139 = inttoptr i64 %2131 to double*
  %2140 = load double, double* %2139
  %2141 = fmul double %2135, %2140
  %2142 = bitcast i8* %2128 to double*
  store double %2141, double* %2142, align 1
  %2143 = getelementptr inbounds i8, i8* %2128, i64 8
  %2144 = bitcast i8* %2143 to i64*
  store i64 %2138, i64* %2144, align 1
  store %struct.Memory* %loadMem_4013ad, %struct.Memory** %MEMORY
  %loadMem_4013b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 15
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2151, i64 0, i64 0
  %YMM0.i172 = bitcast %union.VectorReg* %2152 to %"class.std::bitset"*
  %2153 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2154 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2155 = load i64, i64* %RBP.i171
  %2156 = sub i64 %2155, 48
  %2157 = load i64, i64* %PC.i170
  %2158 = add i64 %2157, 5
  store i64 %2158, i64* %PC.i170
  %2159 = bitcast i8* %2154 to double*
  %2160 = load double, double* %2159, align 1
  %2161 = getelementptr inbounds i8, i8* %2154, i64 8
  %2162 = bitcast i8* %2161 to i64*
  %2163 = load i64, i64* %2162, align 1
  %2164 = inttoptr i64 %2156 to double*
  %2165 = load double, double* %2164
  %2166 = fmul double %2160, %2165
  %2167 = bitcast i8* %2153 to double*
  store double %2166, double* %2167, align 1
  %2168 = getelementptr inbounds i8, i8* %2153, i64 8
  %2169 = bitcast i8* %2168 to i64*
  store i64 %2163, i64* %2169, align 1
  store %struct.Memory* %loadMem_4013b2, %struct.Memory** %MEMORY
  %loadMem_4013b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2177 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2176, i64 0, i64 0
  %XMM0.i169 = bitcast %union.VectorReg* %2177 to %union.vec128_t*
  %2178 = load i64, i64* %RBP.i168
  %2179 = sub i64 %2178, 48
  %2180 = bitcast %union.vec128_t* %XMM0.i169 to i8*
  %2181 = load i64, i64* %PC.i167
  %2182 = add i64 %2181, 5
  store i64 %2182, i64* %PC.i167
  %2183 = bitcast i8* %2180 to double*
  %2184 = load double, double* %2183, align 1
  %2185 = inttoptr i64 %2179 to double*
  store double %2184, double* %2185
  store %struct.Memory* %loadMem_4013b7, %struct.Memory** %MEMORY
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2190 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2189, i64 0, i64 0
  %YMM0.i166 = bitcast %union.VectorReg* %2190 to %"class.std::bitset"*
  %2191 = bitcast %"class.std::bitset"* %YMM0.i166 to i8*
  %2192 = load i64, i64* %PC.i165
  %2193 = add i64 %2192, 9
  store i64 %2193, i64* %PC.i165
  %2194 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %2195 = bitcast i8* %2191 to double*
  store double %2194, double* %2195, align 1
  %2196 = getelementptr inbounds i8, i8* %2191, i64 8
  %2197 = bitcast i8* %2196 to double*
  store double 0.000000e+00, double* %2197, align 1
  store %struct.Memory* %loadMem_4013bc, %struct.Memory** %MEMORY
  %loadMem_4013c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 15
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2204, i64 0, i64 1
  %YMM1.i164 = bitcast %union.VectorReg* %2205 to %"class.std::bitset"*
  %2206 = bitcast %"class.std::bitset"* %YMM1.i164 to i8*
  %2207 = load i64, i64* %RBP.i163
  %2208 = sub i64 %2207, 40
  %2209 = load i64, i64* %PC.i162
  %2210 = add i64 %2209, 5
  store i64 %2210, i64* %PC.i162
  %2211 = inttoptr i64 %2208 to double*
  %2212 = load double, double* %2211
  %2213 = bitcast i8* %2206 to double*
  store double %2212, double* %2213, align 1
  %2214 = getelementptr inbounds i8, i8* %2206, i64 8
  %2215 = bitcast i8* %2214 to double*
  store double 0.000000e+00, double* %2215, align 1
  store %struct.Memory* %loadMem_4013c5, %struct.Memory** %MEMORY
  %loadMem_4013ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 15
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2222, i64 0, i64 1
  %YMM1.i161 = bitcast %union.VectorReg* %2223 to %"class.std::bitset"*
  %2224 = bitcast %"class.std::bitset"* %YMM1.i161 to i8*
  %2225 = bitcast %"class.std::bitset"* %YMM1.i161 to i8*
  %2226 = load i64, i64* %RBP.i160
  %2227 = sub i64 %2226, 8
  %2228 = load i64, i64* %PC.i159
  %2229 = add i64 %2228, 5
  store i64 %2229, i64* %PC.i159
  %2230 = bitcast i8* %2225 to double*
  %2231 = load double, double* %2230, align 1
  %2232 = getelementptr inbounds i8, i8* %2225, i64 8
  %2233 = bitcast i8* %2232 to i64*
  %2234 = load i64, i64* %2233, align 1
  %2235 = inttoptr i64 %2227 to double*
  %2236 = load double, double* %2235
  %2237 = fadd double %2231, %2236
  %2238 = bitcast i8* %2224 to double*
  store double %2237, double* %2238, align 1
  %2239 = getelementptr inbounds i8, i8* %2224, i64 8
  %2240 = bitcast i8* %2239 to i64*
  store i64 %2234, i64* %2240, align 1
  store %struct.Memory* %loadMem_4013ca, %struct.Memory** %MEMORY
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 15
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2247, i64 0, i64 0
  %XMM0.i158 = bitcast %union.VectorReg* %2248 to %union.vec128_t*
  %2249 = load i64, i64* %RBP.i157
  %2250 = sub i64 %2249, 80
  %2251 = bitcast %union.vec128_t* %XMM0.i158 to i8*
  %2252 = load i64, i64* %PC.i156
  %2253 = add i64 %2252, 5
  store i64 %2253, i64* %PC.i156
  %2254 = bitcast i8* %2251 to double*
  %2255 = load double, double* %2254, align 1
  %2256 = inttoptr i64 %2250 to double*
  store double %2255, double* %2256
  store %struct.Memory* %loadMem_4013cf, %struct.Memory** %MEMORY
  %loadMem_4013d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2260, i64 0, i64 0
  %YMM0.i154 = bitcast %union.VectorReg* %2261 to %"class.std::bitset"*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2262, i64 0, i64 1
  %XMM1.i155 = bitcast %union.VectorReg* %2263 to %union.vec128_t*
  %2264 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %2265 = bitcast %union.vec128_t* %XMM1.i155 to i8*
  %2266 = load i64, i64* %PC.i153
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %PC.i153
  %2268 = bitcast i8* %2265 to <2 x i32>*
  %2269 = load <2 x i32>, <2 x i32>* %2268, align 1
  %2270 = getelementptr inbounds i8, i8* %2265, i64 8
  %2271 = bitcast i8* %2270 to <2 x i32>*
  %2272 = load <2 x i32>, <2 x i32>* %2271, align 1
  %2273 = extractelement <2 x i32> %2269, i32 0
  %2274 = bitcast i8* %2264 to i32*
  store i32 %2273, i32* %2274, align 1
  %2275 = extractelement <2 x i32> %2269, i32 1
  %2276 = getelementptr inbounds i8, i8* %2264, i64 4
  %2277 = bitcast i8* %2276 to i32*
  store i32 %2275, i32* %2277, align 1
  %2278 = extractelement <2 x i32> %2272, i32 0
  %2279 = getelementptr inbounds i8, i8* %2264, i64 8
  %2280 = bitcast i8* %2279 to i32*
  store i32 %2278, i32* %2280, align 1
  %2281 = extractelement <2 x i32> %2272, i32 1
  %2282 = getelementptr inbounds i8, i8* %2264, i64 12
  %2283 = bitcast i8* %2282 to i32*
  store i32 %2281, i32* %2283, align 1
  store %struct.Memory* %loadMem_4013d4, %struct.Memory** %MEMORY
  %loadMem1_4013d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %PC.i152
  %2288 = add i64 %2287, -3575
  %2289 = load i64, i64* %PC.i152
  %2290 = add i64 %2289, 5
  %2291 = load i64, i64* %PC.i152
  %2292 = add i64 %2291, 5
  store i64 %2292, i64* %PC.i152
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2294 = load i64, i64* %2293, align 8
  %2295 = add i64 %2294, -8
  %2296 = inttoptr i64 %2295 to i64*
  store i64 %2290, i64* %2296
  store i64 %2295, i64* %2293, align 8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2288, i64* %2297, align 8
  store %struct.Memory* %loadMem1_4013d7, %struct.Memory** %MEMORY
  %loadMem2_4013d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013d7 = load i64, i64* %3
  %call2_4013d7 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_4013d7, %struct.Memory* %loadMem2_4013d7)
  store %struct.Memory* %call2_4013d7, %struct.Memory** %MEMORY
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2304, i64 0, i64 1
  %YMM1.i151 = bitcast %union.VectorReg* %2305 to %"class.std::bitset"*
  %2306 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %2307 = load i64, i64* %RBP.i150
  %2308 = sub i64 %2307, 80
  %2309 = load i64, i64* %PC.i149
  %2310 = add i64 %2309, 5
  store i64 %2310, i64* %PC.i149
  %2311 = inttoptr i64 %2308 to double*
  %2312 = load double, double* %2311
  %2313 = bitcast i8* %2306 to double*
  store double %2312, double* %2313, align 1
  %2314 = getelementptr inbounds i8, i8* %2306, i64 8
  %2315 = bitcast i8* %2314 to double*
  store double 0.000000e+00, double* %2315, align 1
  store %struct.Memory* %loadMem_4013dc, %struct.Memory** %MEMORY
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2319, i64 0, i64 1
  %YMM1.i147 = bitcast %union.VectorReg* %2320 to %"class.std::bitset"*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2321, i64 0, i64 0
  %XMM0.i148 = bitcast %union.VectorReg* %2322 to %union.vec128_t*
  %2323 = bitcast %"class.std::bitset"* %YMM1.i147 to i8*
  %2324 = bitcast %"class.std::bitset"* %YMM1.i147 to i8*
  %2325 = bitcast %union.vec128_t* %XMM0.i148 to i8*
  %2326 = load i64, i64* %PC.i146
  %2327 = add i64 %2326, 4
  store i64 %2327, i64* %PC.i146
  %2328 = bitcast i8* %2324 to double*
  %2329 = load double, double* %2328, align 1
  %2330 = getelementptr inbounds i8, i8* %2324, i64 8
  %2331 = bitcast i8* %2330 to i64*
  %2332 = load i64, i64* %2331, align 1
  %2333 = bitcast i8* %2325 to double*
  %2334 = load double, double* %2333, align 1
  %2335 = fmul double %2329, %2334
  %2336 = bitcast i8* %2323 to double*
  store double %2335, double* %2336, align 1
  %2337 = getelementptr inbounds i8, i8* %2323, i64 8
  %2338 = bitcast i8* %2337 to i64*
  store i64 %2332, i64* %2338, align 1
  store %struct.Memory* %loadMem_4013e1, %struct.Memory** %MEMORY
  %loadMem_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2342, i64 0, i64 0
  %YMM0.i145 = bitcast %union.VectorReg* %2343 to %"class.std::bitset"*
  %2344 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %2345 = load i64, i64* %PC.i144
  %2346 = add i64 %2345, 9
  store i64 %2346, i64* %PC.i144
  %2347 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %2348 = bitcast i8* %2344 to double*
  store double %2347, double* %2348, align 1
  %2349 = getelementptr inbounds i8, i8* %2344, i64 8
  %2350 = bitcast i8* %2349 to double*
  store double 0.000000e+00, double* %2350, align 1
  store %struct.Memory* %loadMem_4013e5, %struct.Memory** %MEMORY
  %loadMem_4013ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2357, i64 0, i64 1
  %XMM1.i143 = bitcast %union.VectorReg* %2358 to %union.vec128_t*
  %2359 = load i64, i64* %RBP.i142
  %2360 = sub i64 %2359, 88
  %2361 = bitcast %union.vec128_t* %XMM1.i143 to i8*
  %2362 = load i64, i64* %PC.i141
  %2363 = add i64 %2362, 5
  store i64 %2363, i64* %PC.i141
  %2364 = bitcast i8* %2361 to double*
  %2365 = load double, double* %2364, align 1
  %2366 = inttoptr i64 %2360 to double*
  store double %2365, double* %2366
  store %struct.Memory* %loadMem_4013ee, %struct.Memory** %MEMORY
  %loadMem1_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %PC.i140
  %2371 = add i64 %2370, -3619
  %2372 = load i64, i64* %PC.i140
  %2373 = add i64 %2372, 5
  %2374 = load i64, i64* %PC.i140
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %PC.i140
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2377 = load i64, i64* %2376, align 8
  %2378 = add i64 %2377, -8
  %2379 = inttoptr i64 %2378 to i64*
  store i64 %2373, i64* %2379
  store i64 %2378, i64* %2376, align 8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2371, i64* %2380, align 8
  store %struct.Memory* %loadMem1_4013f3, %struct.Memory** %MEMORY
  %loadMem2_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013f3 = load i64, i64* %3
  %call2_4013f3 = call %struct.Memory* @ext_tan(%struct.State* %0, i64 %loadPC_4013f3, %struct.Memory* %loadMem2_4013f3)
  store %struct.Memory* %call2_4013f3, %struct.Memory** %MEMORY
  %loadMem_4013f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2384, i64 0, i64 1
  %YMM1.i139 = bitcast %union.VectorReg* %2385 to %"class.std::bitset"*
  %2386 = bitcast %"class.std::bitset"* %YMM1.i139 to i8*
  %2387 = load i64, i64* %PC.i138
  %2388 = load i64, i64* %PC.i138
  %2389 = add i64 %2388, 8
  store i64 %2389, i64* %PC.i138
  %2390 = load double, double* bitcast (%G_0x218__rip__4199424__type* @G_0x218__rip__4199424_ to double*)
  %2391 = bitcast i8* %2386 to double*
  store double %2390, double* %2391, align 1
  %2392 = getelementptr inbounds i8, i8* %2386, i64 8
  %2393 = bitcast i8* %2392 to double*
  store double 0.000000e+00, double* %2393, align 1
  store %struct.Memory* %loadMem_4013f8, %struct.Memory** %MEMORY
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2397, i64 0, i64 1
  %YMM1.i136 = bitcast %union.VectorReg* %2398 to %"class.std::bitset"*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2399, i64 0, i64 0
  %XMM0.i137 = bitcast %union.VectorReg* %2400 to %union.vec128_t*
  %2401 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %2402 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %2403 = bitcast %union.vec128_t* %XMM0.i137 to i8*
  %2404 = load i64, i64* %PC.i135
  %2405 = add i64 %2404, 4
  store i64 %2405, i64* %PC.i135
  %2406 = bitcast i8* %2402 to double*
  %2407 = load double, double* %2406, align 1
  %2408 = getelementptr inbounds i8, i8* %2402, i64 8
  %2409 = bitcast i8* %2408 to i64*
  %2410 = load i64, i64* %2409, align 1
  %2411 = bitcast i8* %2403 to double*
  %2412 = load double, double* %2411, align 1
  %2413 = fdiv double %2407, %2412
  %2414 = bitcast i8* %2401 to double*
  store double %2413, double* %2414, align 1
  %2415 = getelementptr inbounds i8, i8* %2401, i64 8
  %2416 = bitcast i8* %2415 to i64*
  store i64 %2410, i64* %2416, align 1
  store %struct.Memory* %loadMem_401400, %struct.Memory** %MEMORY
  %loadMem_401404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2423, i64 0, i64 0
  %YMM0.i134 = bitcast %union.VectorReg* %2424 to %"class.std::bitset"*
  %2425 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %2426 = load i64, i64* %RBP.i133
  %2427 = sub i64 %2426, 88
  %2428 = load i64, i64* %PC.i132
  %2429 = add i64 %2428, 5
  store i64 %2429, i64* %PC.i132
  %2430 = inttoptr i64 %2427 to double*
  %2431 = load double, double* %2430
  %2432 = bitcast i8* %2425 to double*
  store double %2431, double* %2432, align 1
  %2433 = getelementptr inbounds i8, i8* %2425, i64 8
  %2434 = bitcast i8* %2433 to double*
  store double 0.000000e+00, double* %2434, align 1
  store %struct.Memory* %loadMem_401404, %struct.Memory** %MEMORY
  %loadMem_401409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2440, i64 0, i64 1
  %XMM1.i131 = bitcast %union.VectorReg* %2441 to %union.vec128_t*
  %2442 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2443 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2444 = bitcast %union.vec128_t* %XMM1.i131 to i8*
  %2445 = load i64, i64* %PC.i129
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i129
  %2447 = bitcast i8* %2443 to double*
  %2448 = load double, double* %2447, align 1
  %2449 = getelementptr inbounds i8, i8* %2443, i64 8
  %2450 = bitcast i8* %2449 to i64*
  %2451 = load i64, i64* %2450, align 1
  %2452 = bitcast i8* %2444 to double*
  %2453 = load double, double* %2452, align 1
  %2454 = fmul double %2448, %2453
  %2455 = bitcast i8* %2442 to double*
  store double %2454, double* %2455, align 1
  %2456 = getelementptr inbounds i8, i8* %2442, i64 8
  %2457 = bitcast i8* %2456 to i64*
  store i64 %2451, i64* %2457, align 1
  store %struct.Memory* %loadMem_401409, %struct.Memory** %MEMORY
  %loadMem_40140d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 15
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2464, i64 0, i64 0
  %YMM0.i128 = bitcast %union.VectorReg* %2465 to %"class.std::bitset"*
  %2466 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %2467 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %2468 = load i64, i64* %RBP.i127
  %2469 = sub i64 %2468, 48
  %2470 = load i64, i64* %PC.i126
  %2471 = add i64 %2470, 5
  store i64 %2471, i64* %PC.i126
  %2472 = bitcast i8* %2467 to double*
  %2473 = load double, double* %2472, align 1
  %2474 = getelementptr inbounds i8, i8* %2467, i64 8
  %2475 = bitcast i8* %2474 to i64*
  %2476 = load i64, i64* %2475, align 1
  %2477 = inttoptr i64 %2469 to double*
  %2478 = load double, double* %2477
  %2479 = fadd double %2473, %2478
  %2480 = bitcast i8* %2466 to double*
  store double %2479, double* %2480, align 1
  %2481 = getelementptr inbounds i8, i8* %2466, i64 8
  %2482 = bitcast i8* %2481 to i64*
  store i64 %2476, i64* %2482, align 1
  store %struct.Memory* %loadMem_40140d, %struct.Memory** %MEMORY
  %loadMem_401412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2486, i64 0, i64 0
  %XMM0.i125 = bitcast %union.VectorReg* %2487 to %union.vec128_t*
  %2488 = bitcast %union.vec128_t* %XMM0.i125 to i8*
  %2489 = load i64, i64* %PC.i124
  %2490 = add i64 %2489, 9
  store i64 %2490, i64* %PC.i124
  %2491 = bitcast i8* %2488 to double*
  %2492 = load double, double* %2491, align 1
  store double %2492, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_401412, %struct.Memory** %MEMORY
  %loadMem_40141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %PC.i123
  %2497 = add i64 %2496, 266
  %2498 = load i64, i64* %PC.i123
  %2499 = add i64 %2498, 5
  store i64 %2499, i64* %PC.i123
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2497, i64* %2500, align 8
  store %struct.Memory* %loadMem_40141b, %struct.Memory** %MEMORY
  br label %block_.L_401525

block_.L_401420:                                  ; preds = %block_401287
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2504, i64 0, i64 0
  %YMM0.i122 = bitcast %union.VectorReg* %2505 to %"class.std::bitset"*
  %2506 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %2507 = load i64, i64* %PC.i121
  %2508 = add i64 %2507, 9
  store i64 %2508, i64* %PC.i121
  %2509 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %2510 = bitcast i8* %2506 to double*
  store double %2509, double* %2510, align 1
  %2511 = getelementptr inbounds i8, i8* %2506, i64 8
  %2512 = bitcast i8* %2511 to double*
  store double 0.000000e+00, double* %2512, align 1
  store %struct.Memory* %loadMem_401420, %struct.Memory** %MEMORY
  %loadMem_401429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2516, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %2517 to %"class.std::bitset"*
  %2518 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2519 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2520 = load i64, i64* %PC.i119
  %2521 = add i64 %2520, 9
  store i64 %2521, i64* %PC.i119
  %2522 = bitcast i8* %2519 to double*
  %2523 = load double, double* %2522, align 1
  %2524 = getelementptr inbounds i8, i8* %2519, i64 8
  %2525 = bitcast i8* %2524 to i64*
  %2526 = load i64, i64* %2525, align 1
  %2527 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %2528 = fdiv double %2523, %2527
  %2529 = bitcast i8* %2518 to double*
  store double %2528, double* %2529, align 1
  %2530 = getelementptr inbounds i8, i8* %2518, i64 8
  %2531 = bitcast i8* %2530 to i64*
  store i64 %2526, i64* %2531, align 1
  store %struct.Memory* %loadMem_401429, %struct.Memory** %MEMORY
  %loadMem_401432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2535, i64 0, i64 1
  %YMM1.i118 = bitcast %union.VectorReg* %2536 to %"class.std::bitset"*
  %2537 = bitcast %"class.std::bitset"* %YMM1.i118 to i8*
  %2538 = load i64, i64* %PC.i117
  %2539 = add i64 %2538, 9
  store i64 %2539, i64* %PC.i117
  %2540 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %2541 = bitcast i8* %2537 to double*
  store double %2540, double* %2541, align 1
  %2542 = getelementptr inbounds i8, i8* %2537, i64 8
  %2543 = bitcast i8* %2542 to double*
  store double 0.000000e+00, double* %2543, align 1
  store %struct.Memory* %loadMem_401432, %struct.Memory** %MEMORY
  %loadMem_40143b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 15
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2550, i64 0, i64 0
  %XMM0.i116 = bitcast %union.VectorReg* %2551 to %union.vec128_t*
  %2552 = load i64, i64* %RBP.i115
  %2553 = sub i64 %2552, 96
  %2554 = bitcast %union.vec128_t* %XMM0.i116 to i8*
  %2555 = load i64, i64* %PC.i114
  %2556 = add i64 %2555, 5
  store i64 %2556, i64* %PC.i114
  %2557 = bitcast i8* %2554 to double*
  %2558 = load double, double* %2557, align 1
  %2559 = inttoptr i64 %2553 to double*
  store double %2558, double* %2559
  store %struct.Memory* %loadMem_40143b, %struct.Memory** %MEMORY
  %loadMem_401440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2563, i64 0, i64 0
  %YMM0.i112 = bitcast %union.VectorReg* %2564 to %"class.std::bitset"*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2566 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2565, i64 0, i64 1
  %XMM1.i113 = bitcast %union.VectorReg* %2566 to %union.vec128_t*
  %2567 = bitcast %"class.std::bitset"* %YMM0.i112 to i8*
  %2568 = bitcast %union.vec128_t* %XMM1.i113 to i8*
  %2569 = load i64, i64* %PC.i111
  %2570 = add i64 %2569, 3
  store i64 %2570, i64* %PC.i111
  %2571 = bitcast i8* %2568 to <2 x i32>*
  %2572 = load <2 x i32>, <2 x i32>* %2571, align 1
  %2573 = getelementptr inbounds i8, i8* %2568, i64 8
  %2574 = bitcast i8* %2573 to <2 x i32>*
  %2575 = load <2 x i32>, <2 x i32>* %2574, align 1
  %2576 = extractelement <2 x i32> %2572, i32 0
  %2577 = bitcast i8* %2567 to i32*
  store i32 %2576, i32* %2577, align 1
  %2578 = extractelement <2 x i32> %2572, i32 1
  %2579 = getelementptr inbounds i8, i8* %2567, i64 4
  %2580 = bitcast i8* %2579 to i32*
  store i32 %2578, i32* %2580, align 1
  %2581 = extractelement <2 x i32> %2575, i32 0
  %2582 = getelementptr inbounds i8, i8* %2567, i64 8
  %2583 = bitcast i8* %2582 to i32*
  store i32 %2581, i32* %2583, align 1
  %2584 = extractelement <2 x i32> %2575, i32 1
  %2585 = getelementptr inbounds i8, i8* %2567, i64 12
  %2586 = bitcast i8* %2585 to i32*
  store i32 %2584, i32* %2586, align 1
  store %struct.Memory* %loadMem_401440, %struct.Memory** %MEMORY
  %loadMem1_401443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2589 to i64*
  %2590 = load i64, i64* %PC.i110
  %2591 = add i64 %2590, -3683
  %2592 = load i64, i64* %PC.i110
  %2593 = add i64 %2592, 5
  %2594 = load i64, i64* %PC.i110
  %2595 = add i64 %2594, 5
  store i64 %2595, i64* %PC.i110
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2597 = load i64, i64* %2596, align 8
  %2598 = add i64 %2597, -8
  %2599 = inttoptr i64 %2598 to i64*
  store i64 %2593, i64* %2599
  store i64 %2598, i64* %2596, align 8
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2591, i64* %2600, align 8
  store %struct.Memory* %loadMem1_401443, %struct.Memory** %MEMORY
  %loadMem2_401443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401443 = load i64, i64* %3
  %call2_401443 = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_401443, %struct.Memory* %loadMem2_401443)
  store %struct.Memory* %call2_401443, %struct.Memory** %MEMORY
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 15
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2607, i64 0, i64 1
  %YMM1.i109 = bitcast %union.VectorReg* %2608 to %"class.std::bitset"*
  %2609 = bitcast %"class.std::bitset"* %YMM1.i109 to i8*
  %2610 = load i64, i64* %RBP.i108
  %2611 = sub i64 %2610, 96
  %2612 = load i64, i64* %PC.i107
  %2613 = add i64 %2612, 5
  store i64 %2613, i64* %PC.i107
  %2614 = inttoptr i64 %2611 to double*
  %2615 = load double, double* %2614
  %2616 = bitcast i8* %2609 to double*
  store double %2615, double* %2616, align 1
  %2617 = getelementptr inbounds i8, i8* %2609, i64 8
  %2618 = bitcast i8* %2617 to double*
  store double 0.000000e+00, double* %2618, align 1
  store %struct.Memory* %loadMem_401448, %struct.Memory** %MEMORY
  %loadMem_40144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2623 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2622, i64 0, i64 1
  %YMM1.i105 = bitcast %union.VectorReg* %2623 to %"class.std::bitset"*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2625 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2624, i64 0, i64 0
  %XMM0.i106 = bitcast %union.VectorReg* %2625 to %union.vec128_t*
  %2626 = bitcast %"class.std::bitset"* %YMM1.i105 to i8*
  %2627 = bitcast %"class.std::bitset"* %YMM1.i105 to i8*
  %2628 = bitcast %union.vec128_t* %XMM0.i106 to i8*
  %2629 = load i64, i64* %PC.i104
  %2630 = add i64 %2629, 4
  store i64 %2630, i64* %PC.i104
  %2631 = bitcast i8* %2627 to double*
  %2632 = load double, double* %2631, align 1
  %2633 = getelementptr inbounds i8, i8* %2627, i64 8
  %2634 = bitcast i8* %2633 to i64*
  %2635 = load i64, i64* %2634, align 1
  %2636 = bitcast i8* %2628 to double*
  %2637 = load double, double* %2636, align 1
  %2638 = fmul double %2632, %2637
  %2639 = bitcast i8* %2626 to double*
  store double %2638, double* %2639, align 1
  %2640 = getelementptr inbounds i8, i8* %2626, i64 8
  %2641 = bitcast i8* %2640 to i64*
  store i64 %2635, i64* %2641, align 1
  store %struct.Memory* %loadMem_40144d, %struct.Memory** %MEMORY
  %loadMem_401451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 33
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2645, i64 0, i64 0
  %YMM0.i102 = bitcast %union.VectorReg* %2646 to %"class.std::bitset"*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2647, i64 0, i64 1
  %XMM1.i103 = bitcast %union.VectorReg* %2648 to %union.vec128_t*
  %2649 = bitcast %"class.std::bitset"* %YMM0.i102 to i8*
  %2650 = bitcast %union.vec128_t* %XMM1.i103 to i8*
  %2651 = load i64, i64* %PC.i101
  %2652 = add i64 %2651, 3
  store i64 %2652, i64* %PC.i101
  %2653 = bitcast i8* %2650 to <2 x i32>*
  %2654 = load <2 x i32>, <2 x i32>* %2653, align 1
  %2655 = getelementptr inbounds i8, i8* %2650, i64 8
  %2656 = bitcast i8* %2655 to <2 x i32>*
  %2657 = load <2 x i32>, <2 x i32>* %2656, align 1
  %2658 = extractelement <2 x i32> %2654, i32 0
  %2659 = bitcast i8* %2649 to i32*
  store i32 %2658, i32* %2659, align 1
  %2660 = extractelement <2 x i32> %2654, i32 1
  %2661 = getelementptr inbounds i8, i8* %2649, i64 4
  %2662 = bitcast i8* %2661 to i32*
  store i32 %2660, i32* %2662, align 1
  %2663 = extractelement <2 x i32> %2657, i32 0
  %2664 = getelementptr inbounds i8, i8* %2649, i64 8
  %2665 = bitcast i8* %2664 to i32*
  store i32 %2663, i32* %2665, align 1
  %2666 = extractelement <2 x i32> %2657, i32 1
  %2667 = getelementptr inbounds i8, i8* %2649, i64 12
  %2668 = bitcast i8* %2667 to i32*
  store i32 %2666, i32* %2668, align 1
  store %struct.Memory* %loadMem_401451, %struct.Memory** %MEMORY
  %loadMem1_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %PC.i100
  %2673 = add i64 %2672, -3684
  %2674 = load i64, i64* %PC.i100
  %2675 = add i64 %2674, 5
  %2676 = load i64, i64* %PC.i100
  %2677 = add i64 %2676, 5
  store i64 %2677, i64* %PC.i100
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2679 = load i64, i64* %2678, align 8
  %2680 = add i64 %2679, -8
  %2681 = inttoptr i64 %2680 to i64*
  store i64 %2675, i64* %2681
  store i64 %2680, i64* %2678, align 8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2673, i64* %2682, align 8
  store %struct.Memory* %loadMem1_401454, %struct.Memory** %MEMORY
  %loadMem2_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401454 = load i64, i64* %3
  %2683 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %loadMem2_401454)
  store %struct.Memory* %2683, %struct.Memory** %MEMORY
  %loadMem_401459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 1
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %2689 to i64*
  %2690 = load i64, i64* %PC.i95
  %2691 = add i64 %2690, 10
  store i64 %2691, i64* %PC.i95
  store i64 -9223372036854775808, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_401459, %struct.Memory** %MEMORY
  %loadMem_401463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 5
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2699 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2698, i64 0, i64 0
  %XMM0.i94 = bitcast %union.VectorReg* %2699 to %union.vec128_t*
  %2700 = bitcast %union.vec128_t* %XMM0.i94 to i8*
  %2701 = load i64, i64* %PC.i92
  %2702 = add i64 %2701, 5
  store i64 %2702, i64* %PC.i92
  %2703 = bitcast i8* %2700 to i64*
  %2704 = load i64, i64* %2703, align 1
  store i64 %2704, i64* %RCX.i93, align 1
  store %struct.Memory* %loadMem_401463, %struct.Memory** %MEMORY
  %loadMem_401468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 33
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 1
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 5
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %2713 to i64*
  %2714 = load i64, i64* %RCX.i91
  %2715 = load i64, i64* %RAX.i90
  %2716 = load i64, i64* %PC.i89
  %2717 = add i64 %2716, 3
  store i64 %2717, i64* %PC.i89
  %2718 = xor i64 %2715, %2714
  store i64 %2718, i64* %RCX.i91, align 8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2719, align 1
  %2720 = trunc i64 %2718 to i32
  %2721 = and i32 %2720, 255
  %2722 = call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2725, i8* %2726, align 1
  %2727 = icmp eq i64 %2718, 0
  %2728 = zext i1 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2728, i8* %2729, align 1
  %2730 = lshr i64 %2718, 63
  %2731 = trunc i64 %2730 to i8
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2731, i8* %2732, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2733, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2734, align 1
  store %struct.Memory* %loadMem_401468, %struct.Memory** %MEMORY
  %loadMem_40146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 5
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2741, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %2742 to %"class.std::bitset"*
  %2743 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2744 = load i64, i64* %RCX.i87
  %2745 = load i64, i64* %PC.i86
  %2746 = add i64 %2745, 5
  store i64 %2746, i64* %PC.i86
  %2747 = bitcast i8* %2743 to i64*
  store i64 %2744, i64* %2747, align 1
  %2748 = getelementptr inbounds i8, i8* %2743, i64 8
  %2749 = bitcast i8* %2748 to i64*
  store i64 0, i64* %2749, align 1
  store %struct.Memory* %loadMem_40146b, %struct.Memory** %MEMORY
  %loadMem_401470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 15
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2756, i64 0, i64 0
  %XMM0.i85 = bitcast %union.VectorReg* %2757 to %union.vec128_t*
  %2758 = load i64, i64* %RBP.i84
  %2759 = sub i64 %2758, 16
  %2760 = bitcast %union.vec128_t* %XMM0.i85 to i8*
  %2761 = load i64, i64* %PC.i83
  %2762 = add i64 %2761, 5
  store i64 %2762, i64* %PC.i83
  %2763 = bitcast i8* %2760 to double*
  %2764 = load double, double* %2763, align 1
  %2765 = inttoptr i64 %2759 to double*
  store double %2764, double* %2765
  store %struct.Memory* %loadMem_401470, %struct.Memory** %MEMORY
  %loadMem_401475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2769, i64 0, i64 0
  %YMM0.i82 = bitcast %union.VectorReg* %2770 to %"class.std::bitset"*
  %2771 = bitcast %"class.std::bitset"* %YMM0.i82 to i8*
  %2772 = load i64, i64* %PC.i81
  %2773 = add i64 %2772, 9
  store i64 %2773, i64* %PC.i81
  %2774 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %2775 = bitcast i8* %2771 to double*
  store double %2774, double* %2775, align 1
  %2776 = getelementptr inbounds i8, i8* %2771, i64 8
  %2777 = bitcast i8* %2776 to double*
  store double 0.000000e+00, double* %2777, align 1
  store %struct.Memory* %loadMem_401475, %struct.Memory** %MEMORY
  %loadMem_40147e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2782 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2781, i64 0, i64 1
  %YMM1.i80 = bitcast %union.VectorReg* %2782 to %"class.std::bitset"*
  %2783 = bitcast %"class.std::bitset"* %YMM1.i80 to i8*
  %2784 = load i64, i64* %PC.i79
  %2785 = add i64 %2784, 9
  store i64 %2785, i64* %PC.i79
  %2786 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %2787 = bitcast i8* %2783 to double*
  store double %2786, double* %2787, align 1
  %2788 = getelementptr inbounds i8, i8* %2783, i64 8
  %2789 = bitcast i8* %2788 to double*
  store double 0.000000e+00, double* %2789, align 1
  store %struct.Memory* %loadMem_40147e, %struct.Memory** %MEMORY
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 15
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2796, i64 0, i64 2
  %YMM2.i78 = bitcast %union.VectorReg* %2797 to %"class.std::bitset"*
  %2798 = bitcast %"class.std::bitset"* %YMM2.i78 to i8*
  %2799 = load i64, i64* %RBP.i77
  %2800 = sub i64 %2799, 16
  %2801 = load i64, i64* %PC.i76
  %2802 = add i64 %2801, 5
  store i64 %2802, i64* %PC.i76
  %2803 = inttoptr i64 %2800 to double*
  %2804 = load double, double* %2803
  %2805 = bitcast i8* %2798 to double*
  store double %2804, double* %2805, align 1
  %2806 = getelementptr inbounds i8, i8* %2798, i64 8
  %2807 = bitcast i8* %2806 to double*
  store double 0.000000e+00, double* %2807, align 1
  store %struct.Memory* %loadMem_401487, %struct.Memory** %MEMORY
  %loadMem_40148c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 5
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2814, i64 0, i64 2
  %XMM2.i75 = bitcast %union.VectorReg* %2815 to %union.vec128_t*
  %2816 = bitcast %union.vec128_t* %XMM2.i75 to i8*
  %2817 = load i64, i64* %PC.i73
  %2818 = add i64 %2817, 5
  store i64 %2818, i64* %PC.i73
  %2819 = bitcast i8* %2816 to i64*
  %2820 = load i64, i64* %2819, align 1
  store i64 %2820, i64* %RCX.i74, align 1
  store %struct.Memory* %loadMem_40148c, %struct.Memory** %MEMORY
  %loadMem_401491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 1
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 5
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RCX.i72
  %2831 = load i64, i64* %RAX.i71
  %2832 = load i64, i64* %PC.i70
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i70
  %2834 = xor i64 %2831, %2830
  store i64 %2834, i64* %RCX.i72, align 8
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2835, align 1
  %2836 = trunc i64 %2834 to i32
  %2837 = and i32 %2836, 255
  %2838 = call i32 @llvm.ctpop.i32(i32 %2837)
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = xor i8 %2840, 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2841, i8* %2842, align 1
  %2843 = icmp eq i64 %2834, 0
  %2844 = zext i1 %2843 to i8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2844, i8* %2845, align 1
  %2846 = lshr i64 %2834, 63
  %2847 = trunc i64 %2846 to i8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2847, i8* %2848, align 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2849, align 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2850, align 1
  store %struct.Memory* %loadMem_401491, %struct.Memory** %MEMORY
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 5
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2857, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %2858 to %"class.std::bitset"*
  %2859 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %2860 = load i64, i64* %RCX.i68
  %2861 = load i64, i64* %PC.i67
  %2862 = add i64 %2861, 5
  store i64 %2862, i64* %PC.i67
  %2863 = bitcast i8* %2859 to i64*
  store i64 %2860, i64* %2863, align 1
  %2864 = getelementptr inbounds i8, i8* %2859, i64 8
  %2865 = bitcast i8* %2864 to i64*
  store i64 0, i64* %2865, align 1
  store %struct.Memory* %loadMem_401494, %struct.Memory** %MEMORY
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 15
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2872, i64 0, i64 0
  %XMM0.i66 = bitcast %union.VectorReg* %2873 to %union.vec128_t*
  %2874 = load i64, i64* %RBP.i65
  %2875 = sub i64 %2874, 104
  %2876 = bitcast %union.vec128_t* %XMM0.i66 to i8*
  %2877 = load i64, i64* %PC.i64
  %2878 = add i64 %2877, 5
  store i64 %2878, i64* %PC.i64
  %2879 = bitcast i8* %2876 to double*
  %2880 = load double, double* %2879, align 1
  %2881 = inttoptr i64 %2875 to double*
  store double %2880, double* %2881
  store %struct.Memory* %loadMem_401499, %struct.Memory** %MEMORY
  %loadMem_40149e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 33
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2885, i64 0, i64 0
  %YMM0.i62 = bitcast %union.VectorReg* %2886 to %"class.std::bitset"*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2888 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2887, i64 0, i64 2
  %XMM2.i63 = bitcast %union.VectorReg* %2888 to %union.vec128_t*
  %2889 = bitcast %"class.std::bitset"* %YMM0.i62 to i8*
  %2890 = bitcast %union.vec128_t* %XMM2.i63 to i8*
  %2891 = load i64, i64* %PC.i61
  %2892 = add i64 %2891, 3
  store i64 %2892, i64* %PC.i61
  %2893 = bitcast i8* %2890 to <2 x i32>*
  %2894 = load <2 x i32>, <2 x i32>* %2893, align 1
  %2895 = getelementptr inbounds i8, i8* %2890, i64 8
  %2896 = bitcast i8* %2895 to <2 x i32>*
  %2897 = load <2 x i32>, <2 x i32>* %2896, align 1
  %2898 = extractelement <2 x i32> %2894, i32 0
  %2899 = bitcast i8* %2889 to i32*
  store i32 %2898, i32* %2899, align 1
  %2900 = extractelement <2 x i32> %2894, i32 1
  %2901 = getelementptr inbounds i8, i8* %2889, i64 4
  %2902 = bitcast i8* %2901 to i32*
  store i32 %2900, i32* %2902, align 1
  %2903 = extractelement <2 x i32> %2897, i32 0
  %2904 = getelementptr inbounds i8, i8* %2889, i64 8
  %2905 = bitcast i8* %2904 to i32*
  store i32 %2903, i32* %2905, align 1
  %2906 = extractelement <2 x i32> %2897, i32 1
  %2907 = getelementptr inbounds i8, i8* %2889, i64 12
  %2908 = bitcast i8* %2907 to i32*
  store i32 %2906, i32* %2908, align 1
  store %struct.Memory* %loadMem_40149e, %struct.Memory** %MEMORY
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 33
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 1
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 15
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2917 to i64*
  %2918 = load i64, i64* %RBP.i60
  %2919 = sub i64 %2918, 112
  %2920 = load i64, i64* %RAX.i59
  %2921 = load i64, i64* %PC.i58
  %2922 = add i64 %2921, 4
  store i64 %2922, i64* %PC.i58
  %2923 = inttoptr i64 %2919 to i64*
  store i64 %2920, i64* %2923
  store %struct.Memory* %loadMem_4014a1, %struct.Memory** %MEMORY
  %loadMem_4014a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 15
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2931 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2930, i64 0, i64 1
  %XMM1.i57 = bitcast %union.VectorReg* %2931 to %union.vec128_t*
  %2932 = load i64, i64* %RBP.i56
  %2933 = sub i64 %2932, 120
  %2934 = bitcast %union.vec128_t* %XMM1.i57 to i8*
  %2935 = load i64, i64* %PC.i55
  %2936 = add i64 %2935, 5
  store i64 %2936, i64* %PC.i55
  %2937 = bitcast i8* %2934 to double*
  %2938 = load double, double* %2937, align 1
  %2939 = inttoptr i64 %2933 to double*
  store double %2938, double* %2939
  store %struct.Memory* %loadMem_4014a5, %struct.Memory** %MEMORY
  %loadMem1_4014aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2942 to i64*
  %2943 = load i64, i64* %PC.i54
  %2944 = add i64 %2943, -3834
  %2945 = load i64, i64* %PC.i54
  %2946 = add i64 %2945, 5
  %2947 = load i64, i64* %PC.i54
  %2948 = add i64 %2947, 5
  store i64 %2948, i64* %PC.i54
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2950 = load i64, i64* %2949, align 8
  %2951 = add i64 %2950, -8
  %2952 = inttoptr i64 %2951 to i64*
  store i64 %2946, i64* %2952
  store i64 %2951, i64* %2949, align 8
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2944, i64* %2953, align 8
  store %struct.Memory* %loadMem1_4014aa, %struct.Memory** %MEMORY
  %loadMem2_4014aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014aa = load i64, i64* %3
  %call2_4014aa = call %struct.Memory* @ext_cos(%struct.State* %0, i64 %loadPC_4014aa, %struct.Memory* %loadMem2_4014aa)
  store %struct.Memory* %call2_4014aa, %struct.Memory** %MEMORY
  %loadMem_4014af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 15
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2960, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %2961 to %"class.std::bitset"*
  %2962 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %2963 = load i64, i64* %RBP.i52
  %2964 = sub i64 %2963, 120
  %2965 = load i64, i64* %PC.i51
  %2966 = add i64 %2965, 5
  store i64 %2966, i64* %PC.i51
  %2967 = inttoptr i64 %2964 to double*
  %2968 = load double, double* %2967
  %2969 = bitcast i8* %2962 to double*
  store double %2968, double* %2969, align 1
  %2970 = getelementptr inbounds i8, i8* %2962, i64 8
  %2971 = bitcast i8* %2970 to double*
  store double 0.000000e+00, double* %2971, align 1
  store %struct.Memory* %loadMem_4014af, %struct.Memory** %MEMORY
  %loadMem_4014b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2975, i64 0, i64 1
  %YMM1.i49 = bitcast %union.VectorReg* %2976 to %"class.std::bitset"*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2977, i64 0, i64 0
  %XMM0.i50 = bitcast %union.VectorReg* %2978 to %union.vec128_t*
  %2979 = bitcast %"class.std::bitset"* %YMM1.i49 to i8*
  %2980 = bitcast %"class.std::bitset"* %YMM1.i49 to i8*
  %2981 = bitcast %union.vec128_t* %XMM0.i50 to i8*
  %2982 = load i64, i64* %PC.i48
  %2983 = add i64 %2982, 4
  store i64 %2983, i64* %PC.i48
  %2984 = bitcast i8* %2980 to double*
  %2985 = load double, double* %2984, align 1
  %2986 = getelementptr inbounds i8, i8* %2980, i64 8
  %2987 = bitcast i8* %2986 to i64*
  %2988 = load i64, i64* %2987, align 1
  %2989 = bitcast i8* %2981 to double*
  %2990 = load double, double* %2989, align 1
  %2991 = fmul double %2985, %2990
  %2992 = bitcast i8* %2979 to double*
  store double %2991, double* %2992, align 1
  %2993 = getelementptr inbounds i8, i8* %2979, i64 8
  %2994 = bitcast i8* %2993 to i64*
  store i64 %2988, i64* %2994, align 1
  store %struct.Memory* %loadMem_4014b4, %struct.Memory** %MEMORY
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2998, i64 0, i64 0
  %YMM0.i47 = bitcast %union.VectorReg* %2999 to %"class.std::bitset"*
  %3000 = bitcast %"class.std::bitset"* %YMM0.i47 to i8*
  %3001 = load i64, i64* %PC.i46
  %3002 = add i64 %3001, 9
  store i64 %3002, i64* %PC.i46
  %3003 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %3004 = bitcast i8* %3000 to double*
  store double %3003, double* %3004, align 1
  %3005 = getelementptr inbounds i8, i8* %3000, i64 8
  %3006 = bitcast i8* %3005 to double*
  store double 0.000000e+00, double* %3006, align 1
  store %struct.Memory* %loadMem_4014b8, %struct.Memory** %MEMORY
  %loadMem_4014c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3010, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3011 to %"class.std::bitset"*
  %3012 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3013 = load i64, i64* %PC.i45
  %3014 = add i64 %3013, 9
  store i64 %3014, i64* %PC.i45
  %3015 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %3016 = bitcast i8* %3012 to double*
  store double %3015, double* %3016, align 1
  %3017 = getelementptr inbounds i8, i8* %3012, i64 8
  %3018 = bitcast i8* %3017 to double*
  store double 0.000000e+00, double* %3018, align 1
  store %struct.Memory* %loadMem_4014c1, %struct.Memory** %MEMORY
  %loadMem_4014ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3025, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %3026 to %union.vec128_t*
  %3027 = load i64, i64* %RBP.i43
  %3028 = sub i64 %3027, 128
  %3029 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %3030 = load i64, i64* %PC.i42
  %3031 = add i64 %3030, 5
  store i64 %3031, i64* %PC.i42
  %3032 = bitcast i8* %3029 to double*
  %3033 = load double, double* %3032, align 1
  %3034 = inttoptr i64 %3028 to double*
  store double %3033, double* %3034
  store %struct.Memory* %loadMem_4014ca, %struct.Memory** %MEMORY
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3039 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3038, i64 0, i64 0
  %YMM0.i41 = bitcast %union.VectorReg* %3039 to %"class.std::bitset"*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3041 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3040, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3041 to %union.vec128_t*
  %3042 = bitcast %"class.std::bitset"* %YMM0.i41 to i8*
  %3043 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3044 = load i64, i64* %PC.i40
  %3045 = add i64 %3044, 3
  store i64 %3045, i64* %PC.i40
  %3046 = bitcast i8* %3043 to <2 x i32>*
  %3047 = load <2 x i32>, <2 x i32>* %3046, align 1
  %3048 = getelementptr inbounds i8, i8* %3043, i64 8
  %3049 = bitcast i8* %3048 to <2 x i32>*
  %3050 = load <2 x i32>, <2 x i32>* %3049, align 1
  %3051 = extractelement <2 x i32> %3047, i32 0
  %3052 = bitcast i8* %3042 to i32*
  store i32 %3051, i32* %3052, align 1
  %3053 = extractelement <2 x i32> %3047, i32 1
  %3054 = getelementptr inbounds i8, i8* %3042, i64 4
  %3055 = bitcast i8* %3054 to i32*
  store i32 %3053, i32* %3055, align 1
  %3056 = extractelement <2 x i32> %3050, i32 0
  %3057 = getelementptr inbounds i8, i8* %3042, i64 8
  %3058 = bitcast i8* %3057 to i32*
  store i32 %3056, i32* %3058, align 1
  %3059 = extractelement <2 x i32> %3050, i32 1
  %3060 = getelementptr inbounds i8, i8* %3042, i64 12
  %3061 = bitcast i8* %3060 to i32*
  store i32 %3059, i32* %3061, align 1
  store %struct.Memory* %loadMem_4014cf, %struct.Memory** %MEMORY
  %loadMem_4014d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 15
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3068, i64 0, i64 1
  %XMM1.i39 = bitcast %union.VectorReg* %3069 to %union.vec128_t*
  %3070 = load i64, i64* %RBP.i38
  %3071 = sub i64 %3070, 136
  %3072 = bitcast %union.vec128_t* %XMM1.i39 to i8*
  %3073 = load i64, i64* %PC.i37
  %3074 = add i64 %3073, 8
  store i64 %3074, i64* %PC.i37
  %3075 = bitcast i8* %3072 to double*
  %3076 = load double, double* %3075, align 1
  %3077 = inttoptr i64 %3071 to double*
  store double %3076, double* %3077
  store %struct.Memory* %loadMem_4014d2, %struct.Memory** %MEMORY
  %loadMem1_4014da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %PC.i36
  %3082 = add i64 %3081, -3882
  %3083 = load i64, i64* %PC.i36
  %3084 = add i64 %3083, 5
  %3085 = load i64, i64* %PC.i36
  %3086 = add i64 %3085, 5
  store i64 %3086, i64* %PC.i36
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3088 = load i64, i64* %3087, align 8
  %3089 = add i64 %3088, -8
  %3090 = inttoptr i64 %3089 to i64*
  store i64 %3084, i64* %3090
  store i64 %3089, i64* %3087, align 8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3082, i64* %3091, align 8
  store %struct.Memory* %loadMem1_4014da, %struct.Memory** %MEMORY
  %loadMem2_4014da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014da = load i64, i64* %3
  %call2_4014da = call %struct.Memory* @ext_cos(%struct.State* %0, i64 %loadPC_4014da, %struct.Memory* %loadMem2_4014da)
  store %struct.Memory* %call2_4014da, %struct.Memory** %MEMORY
  %loadMem_4014df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 33
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 15
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3098, i64 0, i64 1
  %YMM1.i35 = bitcast %union.VectorReg* %3099 to %"class.std::bitset"*
  %3100 = bitcast %"class.std::bitset"* %YMM1.i35 to i8*
  %3101 = load i64, i64* %RBP.i34
  %3102 = sub i64 %3101, 128
  %3103 = load i64, i64* %PC.i33
  %3104 = add i64 %3103, 5
  store i64 %3104, i64* %PC.i33
  %3105 = inttoptr i64 %3102 to double*
  %3106 = load double, double* %3105
  %3107 = bitcast i8* %3100 to double*
  store double %3106, double* %3107, align 1
  %3108 = getelementptr inbounds i8, i8* %3100, i64 8
  %3109 = bitcast i8* %3108 to double*
  store double 0.000000e+00, double* %3109, align 1
  store %struct.Memory* %loadMem_4014df, %struct.Memory** %MEMORY
  %loadMem_4014e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3113, i64 0, i64 1
  %YMM1.i31 = bitcast %union.VectorReg* %3114 to %"class.std::bitset"*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3116 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3115, i64 0, i64 0
  %XMM0.i32 = bitcast %union.VectorReg* %3116 to %union.vec128_t*
  %3117 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %3118 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %3119 = bitcast %union.vec128_t* %XMM0.i32 to i8*
  %3120 = load i64, i64* %PC.i30
  %3121 = add i64 %3120, 4
  store i64 %3121, i64* %PC.i30
  %3122 = bitcast i8* %3118 to double*
  %3123 = load double, double* %3122, align 1
  %3124 = getelementptr inbounds i8, i8* %3118, i64 8
  %3125 = bitcast i8* %3124 to i64*
  %3126 = load i64, i64* %3125, align 1
  %3127 = bitcast i8* %3119 to double*
  %3128 = load double, double* %3127, align 1
  %3129 = fmul double %3123, %3128
  %3130 = bitcast i8* %3117 to double*
  store double %3129, double* %3130, align 1
  %3131 = getelementptr inbounds i8, i8* %3117, i64 8
  %3132 = bitcast i8* %3131 to i64*
  store i64 %3126, i64* %3132, align 1
  store %struct.Memory* %loadMem_4014e4, %struct.Memory** %MEMORY
  %loadMem_4014e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 15
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3139, i64 0, i64 0
  %YMM0.i29 = bitcast %union.VectorReg* %3140 to %"class.std::bitset"*
  %3141 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %3142 = load i64, i64* %RBP.i28
  %3143 = sub i64 %3142, 136
  %3144 = load i64, i64* %PC.i27
  %3145 = add i64 %3144, 8
  store i64 %3145, i64* %PC.i27
  %3146 = inttoptr i64 %3143 to double*
  %3147 = load double, double* %3146
  %3148 = bitcast i8* %3141 to double*
  store double %3147, double* %3148, align 1
  %3149 = getelementptr inbounds i8, i8* %3141, i64 8
  %3150 = bitcast i8* %3149 to double*
  store double 0.000000e+00, double* %3150, align 1
  store %struct.Memory* %loadMem_4014e8, %struct.Memory** %MEMORY
  %loadMem_4014f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3154, i64 0, i64 0
  %YMM0.i25 = bitcast %union.VectorReg* %3155 to %"class.std::bitset"*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3156, i64 0, i64 1
  %XMM1.i26 = bitcast %union.VectorReg* %3157 to %union.vec128_t*
  %3158 = bitcast %"class.std::bitset"* %YMM0.i25 to i8*
  %3159 = bitcast %"class.std::bitset"* %YMM0.i25 to i8*
  %3160 = bitcast %union.vec128_t* %XMM1.i26 to i8*
  %3161 = load i64, i64* %PC.i24
  %3162 = add i64 %3161, 4
  store i64 %3162, i64* %PC.i24
  %3163 = bitcast i8* %3159 to double*
  %3164 = load double, double* %3163, align 1
  %3165 = getelementptr inbounds i8, i8* %3159, i64 8
  %3166 = bitcast i8* %3165 to i64*
  %3167 = load i64, i64* %3166, align 1
  %3168 = bitcast i8* %3160 to double*
  %3169 = load double, double* %3168, align 1
  %3170 = fdiv double %3164, %3169
  %3171 = bitcast i8* %3158 to double*
  store double %3170, double* %3171, align 1
  %3172 = getelementptr inbounds i8, i8* %3158, i64 8
  %3173 = bitcast i8* %3172 to i64*
  store i64 %3167, i64* %3173, align 1
  store %struct.Memory* %loadMem_4014f0, %struct.Memory** %MEMORY
  %loadMem_4014f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 15
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3180, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %3181 to %"class.std::bitset"*
  %3182 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %3183 = load i64, i64* %RBP.i22
  %3184 = sub i64 %3183, 104
  %3185 = load i64, i64* %PC.i21
  %3186 = add i64 %3185, 5
  store i64 %3186, i64* %PC.i21
  %3187 = inttoptr i64 %3184 to double*
  %3188 = load double, double* %3187
  %3189 = bitcast i8* %3182 to double*
  store double %3188, double* %3189, align 1
  %3190 = getelementptr inbounds i8, i8* %3182, i64 8
  %3191 = bitcast i8* %3190 to double*
  store double 0.000000e+00, double* %3191, align 1
  store %struct.Memory* %loadMem_4014f4, %struct.Memory** %MEMORY
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3195, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3196 to %"class.std::bitset"*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3197, i64 0, i64 0
  %XMM0.i20 = bitcast %union.VectorReg* %3198 to %union.vec128_t*
  %3199 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3200 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3201 = bitcast %union.vec128_t* %XMM0.i20 to i8*
  %3202 = load i64, i64* %PC.i19
  %3203 = add i64 %3202, 4
  store i64 %3203, i64* %PC.i19
  %3204 = bitcast i8* %3200 to double*
  %3205 = load double, double* %3204, align 1
  %3206 = getelementptr inbounds i8, i8* %3200, i64 8
  %3207 = bitcast i8* %3206 to i64*
  %3208 = load i64, i64* %3207, align 1
  %3209 = bitcast i8* %3201 to double*
  %3210 = load double, double* %3209, align 1
  %3211 = fmul double %3205, %3210
  %3212 = bitcast i8* %3199 to double*
  store double %3211, double* %3212, align 1
  %3213 = getelementptr inbounds i8, i8* %3199, i64 8
  %3214 = bitcast i8* %3213 to i64*
  store i64 %3208, i64* %3214, align 1
  store %struct.Memory* %loadMem_4014f9, %struct.Memory** %MEMORY
  %loadMem_4014fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3218, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3219 to %union.vec128_t*
  %3220 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3221 = load i64, i64* %PC.i18
  %3222 = add i64 %3221, 9
  store i64 %3222, i64* %PC.i18
  %3223 = bitcast i8* %3220 to double*
  %3224 = load double, double* %3223, align 1
  store double %3224, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  store %struct.Memory* %loadMem_4014fd, %struct.Memory** %MEMORY
  %loadMem_401506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 15
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3232 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3231, i64 0, i64 0
  %YMM0.i17 = bitcast %union.VectorReg* %3232 to %"class.std::bitset"*
  %3233 = bitcast %"class.std::bitset"* %YMM0.i17 to i8*
  %3234 = load i64, i64* %RBP.i16
  %3235 = sub i64 %3234, 16
  %3236 = load i64, i64* %PC.i15
  %3237 = add i64 %3236, 5
  store i64 %3237, i64* %PC.i15
  %3238 = inttoptr i64 %3235 to double*
  %3239 = load double, double* %3238
  %3240 = bitcast i8* %3233 to double*
  store double %3239, double* %3240, align 1
  %3241 = getelementptr inbounds i8, i8* %3233, i64 8
  %3242 = bitcast i8* %3241 to double*
  store double 0.000000e+00, double* %3242, align 1
  store %struct.Memory* %loadMem_401506, %struct.Memory** %MEMORY
  %loadMem_40150b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 33
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 1
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3249, i64 0, i64 0
  %XMM0.i14 = bitcast %union.VectorReg* %3250 to %union.vec128_t*
  %3251 = bitcast %union.vec128_t* %XMM0.i14 to i8*
  %3252 = load i64, i64* %PC.i12
  %3253 = add i64 %3252, 5
  store i64 %3253, i64* %PC.i12
  %3254 = bitcast i8* %3251 to i64*
  %3255 = load i64, i64* %3254, align 1
  store i64 %3255, i64* %RAX.i13, align 1
  store %struct.Memory* %loadMem_40150b, %struct.Memory** %MEMORY
  %loadMem_401510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 5
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 15
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RBP.i11
  %3266 = sub i64 %3265, 112
  %3267 = load i64, i64* %PC.i9
  %3268 = add i64 %3267, 4
  store i64 %3268, i64* %PC.i9
  %3269 = inttoptr i64 %3266 to i64*
  %3270 = load i64, i64* %3269
  store i64 %3270, i64* %RCX.i10, align 8
  store %struct.Memory* %loadMem_401510, %struct.Memory** %MEMORY
  %loadMem_401514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 1
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 5
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3279 to i64*
  %3280 = load i64, i64* %RAX.i8
  %3281 = load i64, i64* %RCX.i
  %3282 = load i64, i64* %PC.i7
  %3283 = add i64 %3282, 3
  store i64 %3283, i64* %PC.i7
  %3284 = xor i64 %3281, %3280
  store i64 %3284, i64* %RAX.i8, align 8
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3285, align 1
  %3286 = trunc i64 %3284 to i32
  %3287 = and i32 %3286, 255
  %3288 = call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3291, i8* %3292, align 1
  %3293 = icmp eq i64 %3284, 0
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i64 %3284, 63
  %3297 = trunc i64 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3297, i8* %3298, align 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3299, align 1
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3300, align 1
  store %struct.Memory* %loadMem_401514, %struct.Memory** %MEMORY
  %loadMem_401517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 1
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3307, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3308 to %"class.std::bitset"*
  %3309 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3310 = load i64, i64* %RAX.i
  %3311 = load i64, i64* %PC.i6
  %3312 = add i64 %3311, 5
  store i64 %3312, i64* %PC.i6
  %3313 = bitcast i8* %3309 to i64*
  store i64 %3310, i64* %3313, align 1
  %3314 = getelementptr inbounds i8, i8* %3309, i64 8
  %3315 = bitcast i8* %3314 to i64*
  store i64 0, i64* %3315, align 1
  store %struct.Memory* %loadMem_401517, %struct.Memory** %MEMORY
  %loadMem_40151c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3319, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3320 to %union.vec128_t*
  %3321 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3322 = load i64, i64* %PC.i5
  %3323 = add i64 %3322, 9
  store i64 %3323, i64* %PC.i5
  %3324 = bitcast i8* %3321 to double*
  %3325 = load double, double* %3324, align 1
  store double %3325, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  store %struct.Memory* %loadMem_40151c, %struct.Memory** %MEMORY
  br label %block_.L_401525

block_.L_401525:                                  ; preds = %block_.L_401420, %block_.L_40130f, %block_.L_401216, %block_.L_4011f6
  %loadMem_401525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 13
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RSP.i
  %3333 = load i64, i64* %PC.i4
  %3334 = add i64 %3333, 7
  store i64 %3334, i64* %PC.i4
  %3335 = add i64 144, %3332
  store i64 %3335, i64* %RSP.i, align 8
  %3336 = icmp ult i64 %3335, %3332
  %3337 = icmp ult i64 %3335, 144
  %3338 = or i1 %3336, %3337
  %3339 = zext i1 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3339, i8* %3340, align 1
  %3341 = trunc i64 %3335 to i32
  %3342 = and i32 %3341, 255
  %3343 = call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3346, i8* %3347, align 1
  %3348 = xor i64 144, %3332
  %3349 = xor i64 %3348, %3335
  %3350 = lshr i64 %3349, 4
  %3351 = trunc i64 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3352, i8* %3353, align 1
  %3354 = icmp eq i64 %3335, 0
  %3355 = zext i1 %3354 to i8
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3355, i8* %3356, align 1
  %3357 = lshr i64 %3335, 63
  %3358 = trunc i64 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3358, i8* %3359, align 1
  %3360 = lshr i64 %3332, 63
  %3361 = xor i64 %3357, %3360
  %3362 = add i64 %3361, %3357
  %3363 = icmp eq i64 %3362, 2
  %3364 = zext i1 %3363 to i8
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3364, i8* %3365, align 1
  store %struct.Memory* %loadMem_401525, %struct.Memory** %MEMORY
  %loadMem_40152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 15
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %PC.i2
  %3373 = add i64 %3372, 1
  store i64 %3373, i64* %PC.i2
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3375 = load i64, i64* %3374, align 8
  %3376 = add i64 %3375, 8
  %3377 = inttoptr i64 %3375 to i64*
  %3378 = load i64, i64* %3377
  store i64 %3378, i64* %RBP.i3, align 8
  store i64 %3376, i64* %3374, align 8
  store %struct.Memory* %loadMem_40152c, %struct.Memory** %MEMORY
  %loadMem_40152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %PC.i1
  %3383 = add i64 %3382, 1
  store i64 %3383, i64* %PC.i1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3386 = load i64, i64* %3385, align 8
  %3387 = inttoptr i64 %3386 to i64*
  %3388 = load i64, i64* %3387
  store i64 %3388, i64* %3384, align 8
  %3389 = add i64 %3386, 8
  store i64 %3389, i64* %3385, align 8
  store %struct.Memory* %loadMem_40152d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40152d
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %9, 144
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 144
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
  %23 = xor i64 144, %9
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

define %struct.Memory* @routine_cmpw__0x0__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i16 %8, 255
  %11 = zext i16 %10 to i32
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i16 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i16 %8, 15
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = lshr i16 %8, 15
  %25 = xor i16 %21, %24
  %26 = add i16 %25, %24
  %27 = icmp eq i16 %26, 2
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40126b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
block_400478:
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

define %struct.Memory* @routine_movsd_0x602640___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

; <label>:19:                                     ; preds = %block_400478
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

; <label>:31:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jne_.L_40110b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_40110b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_401216(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movsd_0x602348___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602630___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602638___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602648___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd_0x602370___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4011df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_4011df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4011f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602630(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602630_type* @G_0x602630 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401525(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movsd_0x602648___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602638___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40128c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_40128c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_401420(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_jne_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_40130f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_callq_.asin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_movsd_0x602638___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602648___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2b0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x2b0__rip__4199280__type* @G_0x2b0__rip__4199280_ to i64
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_mulsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_callq_.tan_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x218__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x218__rip__4199424__type* @G_0x218__rip__4199424_ to i64
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 88
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

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movq__xmm2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movsd_0x602370___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 136
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 136
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movsd__xmm1__0x602348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x602348_type* @G_0x602348 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movq__xmm0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RAX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RAX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 144, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 144
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
  %25 = xor i64 144, %9
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
block_400478:
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
block_400478:
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
