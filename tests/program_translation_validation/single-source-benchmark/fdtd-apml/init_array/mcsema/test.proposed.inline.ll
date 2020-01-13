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
%G_0x1c3f__rip__4199017__type = type <{ [16 x i8] }>
%G_0x1c3f__rip__4199025__type = type <{ [16 x i8] }>
%G_0x1c3f__rip__4199033__type = type <{ [16 x i8] }>
%G_0x1cd0__rip__4198856__type = type <{ [16 x i8] }>
%G_0x1cd0__rip__4198864__type = type <{ [16 x i8] }>
%G_0x1d82__rip__4198718__type = type <{ [16 x i8] }>
%G_0x1d82__rip__4198726__type = type <{ [16 x i8] }>
%G_0x1dd9__rip__4198607__type = type <{ [16 x i8] }>
%G_0x1e09__rip__4198599__type = type <{ [16 x i8] }>
%G_0x1e60__rip__4198480__type = type <{ [16 x i8] }>
%G_0x1e60__rip__4198488__type = type <{ [16 x i8] }>
%G_0x1eb2__rip__4198358__type = type <{ [16 x i8] }>
%G_0x1eb2__rip__4198366__type = type <{ [16 x i8] }>
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
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x1c3f__rip__4199017_ = global %G_0x1c3f__rip__4199017__type zeroinitializer
@G_0x1c3f__rip__4199025_ = global %G_0x1c3f__rip__4199025__type zeroinitializer
@G_0x1c3f__rip__4199033_ = global %G_0x1c3f__rip__4199033__type zeroinitializer
@G_0x1cd0__rip__4198856_ = global %G_0x1cd0__rip__4198856__type zeroinitializer
@G_0x1cd0__rip__4198864_ = global %G_0x1cd0__rip__4198864__type zeroinitializer
@G_0x1d82__rip__4198718_ = global %G_0x1d82__rip__4198718__type zeroinitializer
@G_0x1d82__rip__4198726_ = global %G_0x1d82__rip__4198726__type zeroinitializer
@G_0x1dd9__rip__4198607_ = global %G_0x1dd9__rip__4198607__type zeroinitializer
@G_0x1e09__rip__4198599_ = global %G_0x1e09__rip__4198599__type zeroinitializer
@G_0x1e60__rip__4198480_ = global %G_0x1e60__rip__4198480__type zeroinitializer
@G_0x1e60__rip__4198488_ = global %G_0x1e60__rip__4198488__type zeroinitializer
@G_0x1eb2__rip__4198358_ = global %G_0x1eb2__rip__4198358__type zeroinitializer
@G_0x1eb2__rip__4198366_ = global %G_0x1eb2__rip__4198366__type zeroinitializer

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
define %struct.Memory* @init_array(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400f90, %struct.Memory** %MEMORY
  %loadMem_400f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i682 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i682
  %27 = load i64, i64* %PC.i681
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i681
  store i64 %26, i64* %RBP.i683, align 8
  store %struct.Memory* %loadMem_400f91, %struct.Memory** %MEMORY
  %loadMem_400f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i680 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i680
  %36 = load i64, i64* %PC.i679
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i679
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_400f94, %struct.Memory** %MEMORY
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i678 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i678
  %49 = load i64, i64* %PC.i677
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i677
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_400f96, %struct.Memory** %MEMORY
  %loadMem_400f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 27
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %R13.i676 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %R13.i676
  %62 = load i64, i64* %PC.i675
  %63 = add i64 %62, 2
  store i64 %63, i64* %PC.i675
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_400f98, %struct.Memory** %MEMORY
  %loadMem_400f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %R12.i674 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %R12.i674
  %75 = load i64, i64* %PC.i673
  %76 = add i64 %75, 2
  store i64 %76, i64* %PC.i673
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64 %74, i64* %80
  store i64 %79, i64* %77, align 8
  store %struct.Memory* %loadMem_400f9a, %struct.Memory** %MEMORY
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBX.i672 = bitcast %union.anon* %86 to i64*
  %87 = load i64, i64* %RBX.i672
  %88 = load i64, i64* %PC.i671
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC.i671
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8
  store %struct.Memory* %loadMem_400f9c, %struct.Memory** %MEMORY
  %loadMem_400f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RAX.i670
  %101 = load i64, i64* %PC.i669
  %102 = add i64 %101, 1
  store i64 %102, i64* %PC.i669
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*
  store i64 %100, i64* %106
  store i64 %105, i64* %103, align 8
  store %struct.Memory* %loadMem_400f9d, %struct.Memory** %MEMORY
  %loadMem_400f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i668
  %117 = add i64 %116, 88
  %118 = load i64, i64* %PC.i666
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i666
  %120 = inttoptr i64 %117 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %RAX.i667, align 8
  store %struct.Memory* %loadMem_400f9e, %struct.Memory** %MEMORY
  %loadMem_400fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 21
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %R10.i665 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i664
  %132 = add i64 %131, 80
  %133 = load i64, i64* %PC.i663
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC.i663
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %R10.i665, align 8
  store %struct.Memory* %loadMem_400fa2, %struct.Memory** %MEMORY
  %loadMem_400fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 23
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %R11.i662 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i661
  %147 = add i64 %146, 72
  %148 = load i64, i64* %PC.i660
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC.i660
  %150 = inttoptr i64 %147 to i64*
  %151 = load i64, i64* %150
  store i64 %151, i64* %R11.i662, align 8
  store %struct.Memory* %loadMem_400fa6, %struct.Memory** %MEMORY
  %loadMem_400faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBX.i658 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RBP.i659
  %162 = add i64 %161, 64
  %163 = load i64, i64* %PC.i657
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC.i657
  %165 = inttoptr i64 %162 to i64*
  %166 = load i64, i64* %165
  store i64 %166, i64* %RBX.i658, align 8
  store %struct.Memory* %loadMem_400faa, %struct.Memory** %MEMORY
  %loadMem_400fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 29
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %R14.i656 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %RBP.i655
  %177 = add i64 %176, 56
  %178 = load i64, i64* %PC.i654
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC.i654
  %180 = inttoptr i64 %177 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %R14.i656, align 8
  store %struct.Memory* %loadMem_400fae, %struct.Memory** %MEMORY
  %loadMem_400fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 31
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %R15.i653 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %RBP.i652
  %192 = add i64 %191, 48
  %193 = load i64, i64* %PC.i651
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC.i651
  %195 = inttoptr i64 %192 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %R15.i653, align 8
  store %struct.Memory* %loadMem_400fb2, %struct.Memory** %MEMORY
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 25
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %R12.i650 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %RBP.i649
  %207 = add i64 %206, 40
  %208 = load i64, i64* %PC.i648
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC.i648
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %R12.i650, align 8
  store %struct.Memory* %loadMem_400fb6, %struct.Memory** %MEMORY
  %loadMem_400fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 27
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %R13.i647 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i646
  %222 = add i64 %221, 32
  %223 = load i64, i64* %PC.i645
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i645
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %R13.i647, align 8
  store %struct.Memory* %loadMem_400fba, %struct.Memory** %MEMORY
  %loadMem_400fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RBP.i644
  %237 = sub i64 %236, 104
  %238 = load i64, i64* %RAX.i643
  %239 = load i64, i64* %PC.i642
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC.i642
  %241 = inttoptr i64 %237 to i64*
  store i64 %238, i64* %241
  store %struct.Memory* %loadMem_400fbe, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %RBP.i641
  %252 = add i64 %251, 24
  %253 = load i64, i64* %PC.i639
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC.i639
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RAX.i640, align 8
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 15
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RBP.i638
  %267 = sub i64 %266, 112
  %268 = load i64, i64* %RAX.i637
  %269 = load i64, i64* %PC.i636
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC.i636
  %271 = inttoptr i64 %267 to i64*
  store i64 %268, i64* %271
  store %struct.Memory* %loadMem_400fc6, %struct.Memory** %MEMORY
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i635
  %282 = add i64 %281, 16
  %283 = load i64, i64* %PC.i633
  %284 = add i64 %283, 4
  store i64 %284, i64* %PC.i633
  %285 = inttoptr i64 %282 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RAX.i634, align 8
  store %struct.Memory* %loadMem_400fca, %struct.Memory** %MEMORY
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %YMM0.i632 = bitcast %union.VectorReg* %291 to %"class.std::bitset"*
  %292 = bitcast %"class.std::bitset"* %YMM0.i632 to i8*
  %293 = load i64, i64* %PC.i631
  %294 = load i64, i64* %PC.i631
  %295 = add i64 %294, 8
  store i64 %295, i64* %PC.i631
  %296 = load double, double* bitcast (%G_0x1eb2__rip__4198358__type* @G_0x1eb2__rip__4198358_ to double*)
  %297 = bitcast i8* %292 to double*
  store double %296, double* %297, align 1
  %298 = getelementptr inbounds i8, i8* %292, i64 8
  %299 = bitcast i8* %298 to double*
  store double 0.000000e+00, double* %299, align 1
  store %struct.Memory* %loadMem_400fce, %struct.Memory** %MEMORY
  %loadMem_400fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %303, i64 0, i64 1
  %YMM1.i630 = bitcast %union.VectorReg* %304 to %"class.std::bitset"*
  %305 = bitcast %"class.std::bitset"* %YMM1.i630 to i8*
  %306 = load i64, i64* %PC.i629
  %307 = load i64, i64* %PC.i629
  %308 = add i64 %307, 8
  store i64 %308, i64* %PC.i629
  %309 = load double, double* bitcast (%G_0x1eb2__rip__4198366__type* @G_0x1eb2__rip__4198366_ to double*)
  %310 = bitcast i8* %305 to double*
  store double %309, double* %310, align 1
  %311 = getelementptr inbounds i8, i8* %305, i64 8
  %312 = bitcast i8* %311 to double*
  store double 0.000000e+00, double* %312, align 1
  store %struct.Memory* %loadMem_400fd6, %struct.Memory** %MEMORY
  %loadMem_400fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 11
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %318 to i32*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 15
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %RBP.i628
  %323 = sub i64 %322, 44
  %324 = load i32, i32* %EDI.i
  %325 = zext i32 %324 to i64
  %326 = load i64, i64* %PC.i627
  %327 = add i64 %326, 3
  store i64 %327, i64* %PC.i627
  %328 = inttoptr i64 %323 to i32*
  store i32 %324, i32* %328
  store %struct.Memory* %loadMem_400fde, %struct.Memory** %MEMORY
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %334 to i32*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i626
  %339 = sub i64 %338, 48
  %340 = load i32, i32* %ESI.i
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %PC.i625
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC.i625
  %344 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %344
  store %struct.Memory* %loadMem_400fe1, %struct.Memory** %MEMORY
  %loadMem_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 7
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %350 to i32*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i624
  %355 = sub i64 %354, 52
  %356 = load i32, i32* %EDX.i
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC.i623
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC.i623
  %360 = inttoptr i64 %355 to i32*
  store i32 %356, i32* %360
  store %struct.Memory* %loadMem_400fe4, %struct.Memory** %MEMORY
  %loadMem_400fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i622
  %371 = sub i64 %370, 64
  %372 = load i64, i64* %RCX.i621
  %373 = load i64, i64* %PC.i620
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC.i620
  %375 = inttoptr i64 %371 to i64*
  store i64 %372, i64* %375
  store %struct.Memory* %loadMem_400fe7, %struct.Memory** %MEMORY
  %loadMem_400feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 15
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 17
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %R8.i = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i619
  %386 = sub i64 %385, 72
  %387 = load i64, i64* %R8.i
  %388 = load i64, i64* %PC.i618
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC.i618
  %390 = inttoptr i64 %386 to i64*
  store i64 %387, i64* %390
  store %struct.Memory* %loadMem_400feb, %struct.Memory** %MEMORY
  %loadMem_400fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 19
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %R9.i = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RBP.i617
  %401 = sub i64 %400, 80
  %402 = load i64, i64* %R9.i
  %403 = load i64, i64* %PC.i616
  %404 = add i64 %403, 4
  store i64 %404, i64* %PC.i616
  %405 = inttoptr i64 %401 to i64*
  store i64 %402, i64* %405
  store %struct.Memory* %loadMem_400fef, %struct.Memory** %MEMORY
  %loadMem_400ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i615
  %416 = sub i64 %415, 64
  %417 = load i64, i64* %PC.i613
  %418 = add i64 %417, 4
  store i64 %418, i64* %PC.i613
  %419 = inttoptr i64 %416 to i64*
  %420 = load i64, i64* %419
  store i64 %420, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_400ff3, %struct.Memory** %MEMORY
  %loadMem_400ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %427, i64 0, i64 1
  %XMM1.i612 = bitcast %union.VectorReg* %428 to %union.vec128_t*
  %429 = load i64, i64* %RCX.i611
  %430 = bitcast %union.vec128_t* %XMM1.i612 to i8*
  %431 = load i64, i64* %PC.i610
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC.i610
  %433 = bitcast i8* %430 to double*
  %434 = load double, double* %433, align 1
  %435 = inttoptr i64 %429 to double*
  store double %434, double* %435
  store %struct.Memory* %loadMem_400ff7, %struct.Memory** %MEMORY
  %loadMem_400ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i609
  %446 = sub i64 %445, 72
  %447 = load i64, i64* %PC.i607
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC.i607
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_400ffb, %struct.Memory** %MEMORY
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %457, i64 0, i64 0
  %XMM0.i606 = bitcast %union.VectorReg* %458 to %union.vec128_t*
  %459 = load i64, i64* %RCX.i605
  %460 = bitcast %union.vec128_t* %XMM0.i606 to i8*
  %461 = load i64, i64* %PC.i604
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i604
  %463 = bitcast i8* %460 to double*
  %464 = load double, double* %463, align 1
  %465 = inttoptr i64 %459 to double*
  store double %464, double* %465
  store %struct.Memory* %loadMem_400fff, %struct.Memory** %MEMORY
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 15
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RBP.i603
  %473 = sub i64 %472, 84
  %474 = load i64, i64* %PC.i602
  %475 = add i64 %474, 7
  store i64 %475, i64* %PC.i602
  %476 = inttoptr i64 %473 to i32*
  store i32 0, i32* %476
  store %struct.Memory* %loadMem_401003, %struct.Memory** %MEMORY
  %loadMem_40100a = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 27
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %R13.i601 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i600
  %487 = sub i64 %486, 120
  %488 = load i64, i64* %R13.i601
  %489 = load i64, i64* %PC.i599
  %490 = add i64 %489, 4
  store i64 %490, i64* %PC.i599
  %491 = inttoptr i64 %487 to i64*
  store i64 %488, i64* %491
  store %struct.Memory* %loadMem_40100a, %struct.Memory** %MEMORY
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 15
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 29
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %R14.i598 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i597
  %502 = sub i64 %501, 128
  %503 = load i64, i64* %R14.i598
  %504 = load i64, i64* %PC.i596
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC.i596
  %506 = inttoptr i64 %502 to i64*
  store i64 %503, i64* %506
  store %struct.Memory* %loadMem_40100e, %struct.Memory** %MEMORY
  %loadMem_401012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 31
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %R15.i595 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RBP.i594
  %517 = sub i64 %516, 136
  %518 = load i64, i64* %R15.i595
  %519 = load i64, i64* %PC.i593
  %520 = add i64 %519, 7
  store i64 %520, i64* %PC.i593
  %521 = inttoptr i64 %517 to i64*
  store i64 %518, i64* %521
  store %struct.Memory* %loadMem_401012, %struct.Memory** %MEMORY
  %loadMem_401019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 15
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 25
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %R12.i592 = bitcast %union.anon* %530 to i64*
  %531 = load i64, i64* %RBP.i591
  %532 = sub i64 %531, 144
  %533 = load i64, i64* %R12.i592
  %534 = load i64, i64* %PC.i590
  %535 = add i64 %534, 7
  store i64 %535, i64* %PC.i590
  %536 = inttoptr i64 %532 to i64*
  store i64 %533, i64* %536
  store %struct.Memory* %loadMem_401019, %struct.Memory** %MEMORY
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 3
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RBX.i588 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 15
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RBP.i589
  %547 = sub i64 %546, 152
  %548 = load i64, i64* %RBX.i588
  %549 = load i64, i64* %PC.i587
  %550 = add i64 %549, 7
  store i64 %550, i64* %PC.i587
  %551 = inttoptr i64 %547 to i64*
  store i64 %548, i64* %551
  store %struct.Memory* %loadMem_401020, %struct.Memory** %MEMORY
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 15
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 23
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %R11.i = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RBP.i586
  %562 = sub i64 %561, 160
  %563 = load i64, i64* %R11.i
  %564 = load i64, i64* %PC.i585
  %565 = add i64 %564, 7
  store i64 %565, i64* %PC.i585
  %566 = inttoptr i64 %562 to i64*
  store i64 %563, i64* %566
  store %struct.Memory* %loadMem_401027, %struct.Memory** %MEMORY
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 15
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %RBP.i584
  %577 = sub i64 %576, 168
  %578 = load i64, i64* %RAX.i583
  %579 = load i64, i64* %PC.i582
  %580 = add i64 %579, 7
  store i64 %580, i64* %PC.i582
  %581 = inttoptr i64 %577 to i64*
  store i64 %578, i64* %581
  store %struct.Memory* %loadMem_40102e, %struct.Memory** %MEMORY
  %loadMem_401035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 15
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 21
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %R10.i = bitcast %union.anon* %590 to i64*
  %591 = load i64, i64* %RBP.i581
  %592 = sub i64 %591, 176
  %593 = load i64, i64* %R10.i
  %594 = load i64, i64* %PC.i580
  %595 = add i64 %594, 7
  store i64 %595, i64* %PC.i580
  %596 = inttoptr i64 %592 to i64*
  store i64 %593, i64* %596
  store %struct.Memory* %loadMem_401035, %struct.Memory** %MEMORY
  br label %block_.L_40103c

block_.L_40103c:                                  ; preds = %block_401048, %entry
  %loadMem_40103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RBP.i579
  %607 = sub i64 %606, 84
  %608 = load i64, i64* %PC.i577
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC.i577
  %610 = inttoptr i64 %607 to i32*
  %611 = load i32, i32* %610
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_40103c, %struct.Memory** %MEMORY
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %618 to i32*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 15
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %621 to i64*
  %622 = load i32, i32* %EAX.i575
  %623 = zext i32 %622 to i64
  %624 = load i64, i64* %RBP.i576
  %625 = sub i64 %624, 44
  %626 = load i64, i64* %PC.i574
  %627 = add i64 %626, 3
  store i64 %627, i64* %PC.i574
  %628 = inttoptr i64 %625 to i32*
  %629 = load i32, i32* %628
  %630 = sub i32 %622, %629
  %631 = icmp ult i32 %622, %629
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %632, i8* %633, align 1
  %634 = and i32 %630, 255
  %635 = call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %638, i8* %639, align 1
  %640 = xor i32 %629, %622
  %641 = xor i32 %640, %630
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %644, i8* %645, align 1
  %646 = icmp eq i32 %630, 0
  %647 = zext i1 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %647, i8* %648, align 1
  %649 = lshr i32 %630, 31
  %650 = trunc i32 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %650, i8* %651, align 1
  %652 = lshr i32 %622, 31
  %653 = lshr i32 %629, 31
  %654 = xor i32 %653, %652
  %655 = xor i32 %649, %652
  %656 = add i32 %655, %654
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %658, i8* %659, align 1
  store %struct.Memory* %loadMem_40103f, %struct.Memory** %MEMORY
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i573
  %664 = add i64 %663, 106
  %665 = load i64, i64* %PC.i573
  %666 = add i64 %665, 6
  %667 = load i64, i64* %PC.i573
  %668 = add i64 %667, 6
  store i64 %668, i64* %PC.i573
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %670 = load i8, i8* %669, align 1
  %671 = icmp eq i8 %670, 0
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %673 = load i8, i8* %672, align 1
  %674 = icmp ne i8 %673, 0
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %676 = load i8, i8* %675, align 1
  %677 = icmp ne i8 %676, 0
  %678 = xor i1 %674, %677
  %679 = xor i1 %678, true
  %680 = and i1 %671, %679
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %BRANCH_TAKEN, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %683 = select i1 %680, i64 %664, i64 %666
  store i64 %683, i64* %682, align 8
  store %struct.Memory* %loadMem_401042, %struct.Memory** %MEMORY
  %loadBr_401042 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401042 = icmp eq i8 %loadBr_401042, 1
  br i1 %cmpBr_401042, label %block_.L_4010ac, label %block_401048

block_401048:                                     ; preds = %block_.L_40103c
  %loadMem_401048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %687, i64 0, i64 0
  %YMM0.i572 = bitcast %union.VectorReg* %688 to %"class.std::bitset"*
  %689 = bitcast %"class.std::bitset"* %YMM0.i572 to i8*
  %690 = load i64, i64* %PC.i571
  %691 = load i64, i64* %PC.i571
  %692 = add i64 %691, 8
  store i64 %692, i64* %PC.i571
  %693 = load double, double* bitcast (%G_0x1e60__rip__4198480__type* @G_0x1e60__rip__4198480_ to double*)
  %694 = bitcast i8* %689 to double*
  store double %693, double* %694, align 1
  %695 = getelementptr inbounds i8, i8* %689, i64 8
  %696 = bitcast i8* %695 to double*
  store double 0.000000e+00, double* %696, align 1
  store %struct.Memory* %loadMem_401048, %struct.Memory** %MEMORY
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %700, i64 0, i64 1
  %YMM1.i570 = bitcast %union.VectorReg* %701 to %"class.std::bitset"*
  %702 = bitcast %"class.std::bitset"* %YMM1.i570 to i8*
  %703 = load i64, i64* %PC.i569
  %704 = load i64, i64* %PC.i569
  %705 = add i64 %704, 8
  store i64 %705, i64* %PC.i569
  %706 = load double, double* bitcast (%G_0x1e60__rip__4198488__type* @G_0x1e60__rip__4198488_ to double*)
  %707 = bitcast i8* %702 to double*
  store double %706, double* %707, align 1
  %708 = getelementptr inbounds i8, i8* %702, i64 8
  %709 = bitcast i8* %708 to double*
  store double 0.000000e+00, double* %709, align 1
  store %struct.Memory* %loadMem_401050, %struct.Memory** %MEMORY
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i568
  %720 = sub i64 %719, 84
  %721 = load i64, i64* %PC.i566
  %722 = add i64 %721, 3
  store i64 %722, i64* %PC.i566
  %723 = inttoptr i64 %720 to i32*
  %724 = load i32, i32* %723
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_401058, %struct.Memory** %MEMORY
  %loadMem_40105b = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %EAX.i564 = bitcast %union.anon* %731 to i32*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %732, i64 0, i64 2
  %YMM2.i565 = bitcast %union.VectorReg* %733 to %"class.std::bitset"*
  %734 = bitcast %"class.std::bitset"* %YMM2.i565 to i8*
  %735 = load i32, i32* %EAX.i564
  %736 = zext i32 %735 to i64
  %737 = load i64, i64* %PC.i563
  %738 = add i64 %737, 4
  store i64 %738, i64* %PC.i563
  %739 = sitofp i32 %735 to double
  %740 = bitcast i8* %734 to double*
  store double %739, double* %740, align 1
  store %struct.Memory* %loadMem_40105b, %struct.Memory** %MEMORY
  %loadMem_40105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %744, i64 0, i64 2
  %YMM2.i561 = bitcast %union.VectorReg* %745 to %"class.std::bitset"*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %747 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %746, i64 0, i64 1
  %XMM1.i562 = bitcast %union.VectorReg* %747 to %union.vec128_t*
  %748 = bitcast %"class.std::bitset"* %YMM2.i561 to i8*
  %749 = bitcast %"class.std::bitset"* %YMM2.i561 to i8*
  %750 = bitcast %union.vec128_t* %XMM1.i562 to i8*
  %751 = load i64, i64* %PC.i560
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC.i560
  %753 = bitcast i8* %749 to double*
  %754 = load double, double* %753, align 1
  %755 = getelementptr inbounds i8, i8* %749, i64 8
  %756 = bitcast i8* %755 to i64*
  %757 = load i64, i64* %756, align 1
  %758 = bitcast i8* %750 to double*
  %759 = load double, double* %758, align 1
  %760 = fadd double %754, %759
  %761 = bitcast i8* %748 to double*
  store double %760, double* %761, align 1
  %762 = getelementptr inbounds i8, i8* %748, i64 8
  %763 = bitcast i8* %762 to i64*
  store i64 %757, i64* %763, align 1
  store %struct.Memory* %loadMem_40105f, %struct.Memory** %MEMORY
  %loadMem_401063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 1
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 15
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RBP.i559
  %774 = sub i64 %773, 48
  %775 = load i64, i64* %PC.i557
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i557
  %777 = inttoptr i64 %774 to i32*
  %778 = load i32, i32* %777
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_401063, %struct.Memory** %MEMORY
  %loadMem_401066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 1
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %EAX.i555 = bitcast %union.anon* %785 to i32*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %786, i64 0, i64 1
  %YMM1.i556 = bitcast %union.VectorReg* %787 to %"class.std::bitset"*
  %788 = bitcast %"class.std::bitset"* %YMM1.i556 to i8*
  %789 = load i32, i32* %EAX.i555
  %790 = zext i32 %789 to i64
  %791 = load i64, i64* %PC.i554
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC.i554
  %793 = sitofp i32 %789 to double
  %794 = bitcast i8* %788 to double*
  store double %793, double* %794, align 1
  store %struct.Memory* %loadMem_401066, %struct.Memory** %MEMORY
  %loadMem_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %798, i64 0, i64 2
  %YMM2.i552 = bitcast %union.VectorReg* %799 to %"class.std::bitset"*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %800, i64 0, i64 1
  %XMM1.i553 = bitcast %union.VectorReg* %801 to %union.vec128_t*
  %802 = bitcast %"class.std::bitset"* %YMM2.i552 to i8*
  %803 = bitcast %"class.std::bitset"* %YMM2.i552 to i8*
  %804 = bitcast %union.vec128_t* %XMM1.i553 to i8*
  %805 = load i64, i64* %PC.i551
  %806 = add i64 %805, 4
  store i64 %806, i64* %PC.i551
  %807 = bitcast i8* %803 to double*
  %808 = load double, double* %807, align 1
  %809 = getelementptr inbounds i8, i8* %803, i64 8
  %810 = bitcast i8* %809 to i64*
  %811 = load i64, i64* %810, align 1
  %812 = bitcast i8* %804 to double*
  %813 = load double, double* %812, align 1
  %814 = fdiv double %808, %813
  %815 = bitcast i8* %802 to double*
  store double %814, double* %815, align 1
  %816 = getelementptr inbounds i8, i8* %802, i64 8
  %817 = bitcast i8* %816 to i64*
  store i64 %811, i64* %817, align 1
  store %struct.Memory* %loadMem_40106a, %struct.Memory** %MEMORY
  %loadMem_40106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 5
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 15
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %826 to i64*
  %827 = load i64, i64* %RBP.i550
  %828 = add i64 %827, 48
  %829 = load i64, i64* %PC.i548
  %830 = add i64 %829, 4
  store i64 %830, i64* %PC.i548
  %831 = inttoptr i64 %828 to i64*
  %832 = load i64, i64* %831
  store i64 %832, i64* %RCX.i549, align 8
  store %struct.Memory* %loadMem_40106e, %struct.Memory** %MEMORY
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 7
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 15
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %RBP.i547
  %843 = sub i64 %842, 84
  %844 = load i64, i64* %PC.i545
  %845 = add i64 %844, 4
  store i64 %845, i64* %PC.i545
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RDX.i546, align 8
  store %struct.Memory* %loadMem_401072, %struct.Memory** %MEMORY
  %loadMem_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 5
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 7
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %858, i64 0, i64 2
  %XMM2.i544 = bitcast %union.VectorReg* %859 to %union.vec128_t*
  %860 = load i64, i64* %RCX.i542
  %861 = load i64, i64* %RDX.i543
  %862 = mul i64 %861, 8
  %863 = add i64 %862, %860
  %864 = bitcast %union.vec128_t* %XMM2.i544 to i8*
  %865 = load i64, i64* %PC.i541
  %866 = add i64 %865, 5
  store i64 %866, i64* %PC.i541
  %867 = bitcast i8* %864 to double*
  %868 = load double, double* %867, align 1
  %869 = inttoptr i64 %863 to double*
  store double %868, double* %869
  store %struct.Memory* %loadMem_401076, %struct.Memory** %MEMORY
  %loadMem_40107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i540
  %880 = sub i64 %879, 84
  %881 = load i64, i64* %PC.i538
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i538
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i539, align 8
  store %struct.Memory* %loadMem_40107b, %struct.Memory** %MEMORY
  %loadMem_40107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %EAX.i536 = bitcast %union.anon* %891 to i32*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %892, i64 0, i64 1
  %YMM1.i537 = bitcast %union.VectorReg* %893 to %"class.std::bitset"*
  %894 = bitcast %"class.std::bitset"* %YMM1.i537 to i8*
  %895 = load i32, i32* %EAX.i536
  %896 = zext i32 %895 to i64
  %897 = load i64, i64* %PC.i535
  %898 = add i64 %897, 4
  store i64 %898, i64* %PC.i535
  %899 = sitofp i32 %895 to double
  %900 = bitcast i8* %894 to double*
  store double %899, double* %900, align 1
  store %struct.Memory* %loadMem_40107e, %struct.Memory** %MEMORY
  %loadMem_401082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %904, i64 0, i64 1
  %YMM1.i533 = bitcast %union.VectorReg* %905 to %"class.std::bitset"*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %906, i64 0, i64 0
  %XMM0.i534 = bitcast %union.VectorReg* %907 to %union.vec128_t*
  %908 = bitcast %"class.std::bitset"* %YMM1.i533 to i8*
  %909 = bitcast %"class.std::bitset"* %YMM1.i533 to i8*
  %910 = bitcast %union.vec128_t* %XMM0.i534 to i8*
  %911 = load i64, i64* %PC.i532
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC.i532
  %913 = bitcast i8* %909 to double*
  %914 = load double, double* %913, align 1
  %915 = getelementptr inbounds i8, i8* %909, i64 8
  %916 = bitcast i8* %915 to i64*
  %917 = load i64, i64* %916, align 1
  %918 = bitcast i8* %910 to double*
  %919 = load double, double* %918, align 1
  %920 = fadd double %914, %919
  %921 = bitcast i8* %908 to double*
  store double %920, double* %921, align 1
  %922 = getelementptr inbounds i8, i8* %908, i64 8
  %923 = bitcast i8* %922 to i64*
  store i64 %917, i64* %923, align 1
  store %struct.Memory* %loadMem_401082, %struct.Memory** %MEMORY
  %loadMem_401086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 33
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 1
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 15
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %RBP.i531
  %934 = sub i64 %933, 48
  %935 = load i64, i64* %PC.i529
  %936 = add i64 %935, 3
  store i64 %936, i64* %PC.i529
  %937 = inttoptr i64 %934 to i32*
  %938 = load i32, i32* %937
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_401086, %struct.Memory** %MEMORY
  %loadMem_401089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %EAX.i527 = bitcast %union.anon* %945 to i32*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %947 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %946, i64 0, i64 0
  %YMM0.i528 = bitcast %union.VectorReg* %947 to %"class.std::bitset"*
  %948 = bitcast %"class.std::bitset"* %YMM0.i528 to i8*
  %949 = load i32, i32* %EAX.i527
  %950 = zext i32 %949 to i64
  %951 = load i64, i64* %PC.i526
  %952 = add i64 %951, 4
  store i64 %952, i64* %PC.i526
  %953 = sitofp i32 %949 to double
  %954 = bitcast i8* %948 to double*
  store double %953, double* %954, align 1
  store %struct.Memory* %loadMem_401089, %struct.Memory** %MEMORY
  %loadMem_40108d = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %958, i64 0, i64 1
  %YMM1.i524 = bitcast %union.VectorReg* %959 to %"class.std::bitset"*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %960, i64 0, i64 0
  %XMM0.i525 = bitcast %union.VectorReg* %961 to %union.vec128_t*
  %962 = bitcast %"class.std::bitset"* %YMM1.i524 to i8*
  %963 = bitcast %"class.std::bitset"* %YMM1.i524 to i8*
  %964 = bitcast %union.vec128_t* %XMM0.i525 to i8*
  %965 = load i64, i64* %PC.i523
  %966 = add i64 %965, 4
  store i64 %966, i64* %PC.i523
  %967 = bitcast i8* %963 to double*
  %968 = load double, double* %967, align 1
  %969 = getelementptr inbounds i8, i8* %963, i64 8
  %970 = bitcast i8* %969 to i64*
  %971 = load i64, i64* %970, align 1
  %972 = bitcast i8* %964 to double*
  %973 = load double, double* %972, align 1
  %974 = fdiv double %968, %973
  %975 = bitcast i8* %962 to double*
  store double %974, double* %975, align 1
  %976 = getelementptr inbounds i8, i8* %962, i64 8
  %977 = bitcast i8* %976 to i64*
  store i64 %971, i64* %977, align 1
  store %struct.Memory* %loadMem_40108d, %struct.Memory** %MEMORY
  %loadMem_401091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 5
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 15
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RBP.i522
  %988 = add i64 %987, 56
  %989 = load i64, i64* %PC.i520
  %990 = add i64 %989, 4
  store i64 %990, i64* %PC.i520
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991
  store i64 %992, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_401091, %struct.Memory** %MEMORY
  %loadMem_401095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 7
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i519
  %1003 = sub i64 %1002, 84
  %1004 = load i64, i64* %PC.i517
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %PC.i517
  %1006 = inttoptr i64 %1003 to i32*
  %1007 = load i32, i32* %1006
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RDX.i518, align 8
  store %struct.Memory* %loadMem_401095, %struct.Memory** %MEMORY
  %loadMem_401099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 5
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 7
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1018, i64 0, i64 1
  %XMM1.i516 = bitcast %union.VectorReg* %1019 to %union.vec128_t*
  %1020 = load i64, i64* %RCX.i514
  %1021 = load i64, i64* %RDX.i515
  %1022 = mul i64 %1021, 8
  %1023 = add i64 %1022, %1020
  %1024 = bitcast %union.vec128_t* %XMM1.i516 to i8*
  %1025 = load i64, i64* %PC.i513
  %1026 = add i64 %1025, 5
  store i64 %1026, i64* %PC.i513
  %1027 = bitcast i8* %1024 to double*
  %1028 = load double, double* %1027, align 1
  %1029 = inttoptr i64 %1023 to double*
  store double %1028, double* %1029
  store %struct.Memory* %loadMem_401099, %struct.Memory** %MEMORY
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 1
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RBP.i512
  %1040 = sub i64 %1039, 84
  %1041 = load i64, i64* %PC.i510
  %1042 = add i64 %1041, 3
  store i64 %1042, i64* %PC.i510
  %1043 = inttoptr i64 %1040 to i32*
  %1044 = load i32, i32* %1043
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_40109e, %struct.Memory** %MEMORY
  %loadMem_4010a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RAX.i509
  %1053 = load i64, i64* %PC.i508
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i508
  %1055 = trunc i64 %1052 to i32
  %1056 = add i32 1, %1055
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RAX.i509, align 8
  %1058 = icmp ult i32 %1056, %1055
  %1059 = icmp ult i32 %1056, 1
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1061, i8* %1062, align 1
  %1063 = and i32 %1056, 255
  %1064 = call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1067, i8* %1068, align 1
  %1069 = xor i64 1, %1052
  %1070 = trunc i64 %1069 to i32
  %1071 = xor i32 %1070, %1056
  %1072 = lshr i32 %1071, 4
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1074, i8* %1075, align 1
  %1076 = icmp eq i32 %1056, 0
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1077, i8* %1078, align 1
  %1079 = lshr i32 %1056, 31
  %1080 = trunc i32 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1080, i8* %1081, align 1
  %1082 = lshr i32 %1055, 31
  %1083 = xor i32 %1079, %1082
  %1084 = add i32 %1083, %1079
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1086, i8* %1087, align 1
  store %struct.Memory* %loadMem_4010a1, %struct.Memory** %MEMORY
  %loadMem_4010a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %1093 to i32*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RBP.i507
  %1098 = sub i64 %1097, 84
  %1099 = load i32, i32* %EAX.i506
  %1100 = zext i32 %1099 to i64
  %1101 = load i64, i64* %PC.i505
  %1102 = add i64 %1101, 3
  store i64 %1102, i64* %PC.i505
  %1103 = inttoptr i64 %1098 to i32*
  store i32 %1099, i32* %1103
  store %struct.Memory* %loadMem_4010a4, %struct.Memory** %MEMORY
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %PC.i504
  %1108 = add i64 %1107, -107
  %1109 = load i64, i64* %PC.i504
  %1110 = add i64 %1109, 5
  store i64 %1110, i64* %PC.i504
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1108, i64* %1111, align 8
  store %struct.Memory* %loadMem_4010a7, %struct.Memory** %MEMORY
  br label %block_.L_40103c

block_.L_4010ac:                                  ; preds = %block_.L_40103c
  %loadMem_4010ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 15
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RBP.i503
  %1119 = sub i64 %1118, 84
  %1120 = load i64, i64* %PC.i502
  %1121 = add i64 %1120, 7
  store i64 %1121, i64* %PC.i502
  %1122 = inttoptr i64 %1119 to i32*
  store i32 0, i32* %1122
  store %struct.Memory* %loadMem_4010ac, %struct.Memory** %MEMORY
  br label %block_.L_4010b3

block_.L_4010b3:                                  ; preds = %block_4010bf, %block_.L_4010ac
  %loadMem_4010b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 1
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 15
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %RBP.i501
  %1133 = sub i64 %1132, 84
  %1134 = load i64, i64* %PC.i499
  %1135 = add i64 %1134, 3
  store i64 %1135, i64* %PC.i499
  %1136 = inttoptr i64 %1133 to i32*
  %1137 = load i32, i32* %1136
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_4010b3, %struct.Memory** %MEMORY
  %loadMem_4010b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 1
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %EAX.i497 = bitcast %union.anon* %1144 to i32*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 15
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %1147 to i64*
  %1148 = load i32, i32* %EAX.i497
  %1149 = zext i32 %1148 to i64
  %1150 = load i64, i64* %RBP.i498
  %1151 = sub i64 %1150, 48
  %1152 = load i64, i64* %PC.i496
  %1153 = add i64 %1152, 3
  store i64 %1153, i64* %PC.i496
  %1154 = inttoptr i64 %1151 to i32*
  %1155 = load i32, i32* %1154
  %1156 = sub i32 %1148, %1155
  %1157 = icmp ult i32 %1148, %1155
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1158, i8* %1159, align 1
  %1160 = and i32 %1156, 255
  %1161 = call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1164, i8* %1165, align 1
  %1166 = xor i32 %1155, %1148
  %1167 = xor i32 %1166, %1156
  %1168 = lshr i32 %1167, 4
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1170, i8* %1171, align 1
  %1172 = icmp eq i32 %1156, 0
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1173, i8* %1174, align 1
  %1175 = lshr i32 %1156, 31
  %1176 = trunc i32 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1176, i8* %1177, align 1
  %1178 = lshr i32 %1148, 31
  %1179 = lshr i32 %1155, 31
  %1180 = xor i32 %1179, %1178
  %1181 = xor i32 %1175, %1178
  %1182 = add i32 %1181, %1180
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1184, i8* %1185, align 1
  store %struct.Memory* %loadMem_4010b6, %struct.Memory** %MEMORY
  %loadMem_4010b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1188 to i64*
  %1189 = load i64, i64* %PC.i495
  %1190 = add i64 %1189, 106
  %1191 = load i64, i64* %PC.i495
  %1192 = add i64 %1191, 6
  %1193 = load i64, i64* %PC.i495
  %1194 = add i64 %1193, 6
  store i64 %1194, i64* %PC.i495
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1196 = load i8, i8* %1195, align 1
  %1197 = icmp eq i8 %1196, 0
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1199 = load i8, i8* %1198, align 1
  %1200 = icmp ne i8 %1199, 0
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1202 = load i8, i8* %1201, align 1
  %1203 = icmp ne i8 %1202, 0
  %1204 = xor i1 %1200, %1203
  %1205 = xor i1 %1204, true
  %1206 = and i1 %1197, %1205
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %BRANCH_TAKEN, align 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1209 = select i1 %1206, i64 %1190, i64 %1192
  store i64 %1209, i64* %1208, align 8
  store %struct.Memory* %loadMem_4010b9, %struct.Memory** %MEMORY
  %loadBr_4010b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010b9 = icmp eq i8 %loadBr_4010b9, 1
  br i1 %cmpBr_4010b9, label %block_.L_401123, label %block_4010bf

block_4010bf:                                     ; preds = %block_.L_4010b3
  %loadMem_4010bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1213, i64 0, i64 0
  %YMM0.i494 = bitcast %union.VectorReg* %1214 to %"class.std::bitset"*
  %1215 = bitcast %"class.std::bitset"* %YMM0.i494 to i8*
  %1216 = load i64, i64* %PC.i493
  %1217 = load i64, i64* %PC.i493
  %1218 = add i64 %1217, 8
  store i64 %1218, i64* %PC.i493
  %1219 = load double, double* bitcast (%G_0x1e09__rip__4198599__type* @G_0x1e09__rip__4198599_ to double*)
  %1220 = bitcast i8* %1215 to double*
  store double %1219, double* %1220, align 1
  %1221 = getelementptr inbounds i8, i8* %1215, i64 8
  %1222 = bitcast i8* %1221 to double*
  store double 0.000000e+00, double* %1222, align 1
  store %struct.Memory* %loadMem_4010bf, %struct.Memory** %MEMORY
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1226, i64 0, i64 1
  %YMM1.i492 = bitcast %union.VectorReg* %1227 to %"class.std::bitset"*
  %1228 = bitcast %"class.std::bitset"* %YMM1.i492 to i8*
  %1229 = load i64, i64* %PC.i491
  %1230 = load i64, i64* %PC.i491
  %1231 = add i64 %1230, 8
  store i64 %1231, i64* %PC.i491
  %1232 = load double, double* bitcast (%G_0x1dd9__rip__4198607__type* @G_0x1dd9__rip__4198607_ to double*)
  %1233 = bitcast i8* %1228 to double*
  store double %1232, double* %1233, align 1
  %1234 = getelementptr inbounds i8, i8* %1228, i64 8
  %1235 = bitcast i8* %1234 to double*
  store double 0.000000e+00, double* %1235, align 1
  store %struct.Memory* %loadMem_4010c7, %struct.Memory** %MEMORY
  %loadMem_4010cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 33
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 1
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 15
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1244 to i64*
  %1245 = load i64, i64* %RBP.i490
  %1246 = sub i64 %1245, 84
  %1247 = load i64, i64* %PC.i488
  %1248 = add i64 %1247, 3
  store i64 %1248, i64* %PC.i488
  %1249 = inttoptr i64 %1246 to i32*
  %1250 = load i32, i32* %1249
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_4010cf, %struct.Memory** %MEMORY
  %loadMem_4010d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 33
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 1
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %EAX.i486 = bitcast %union.anon* %1257 to i32*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1258, i64 0, i64 2
  %YMM2.i487 = bitcast %union.VectorReg* %1259 to %"class.std::bitset"*
  %1260 = bitcast %"class.std::bitset"* %YMM2.i487 to i8*
  %1261 = load i32, i32* %EAX.i486
  %1262 = zext i32 %1261 to i64
  %1263 = load i64, i64* %PC.i485
  %1264 = add i64 %1263, 4
  store i64 %1264, i64* %PC.i485
  %1265 = sitofp i32 %1261 to double
  %1266 = bitcast i8* %1260 to double*
  store double %1265, double* %1266, align 1
  store %struct.Memory* %loadMem_4010d2, %struct.Memory** %MEMORY
  %loadMem_4010d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1270, i64 0, i64 2
  %YMM2.i483 = bitcast %union.VectorReg* %1271 to %"class.std::bitset"*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1272, i64 0, i64 1
  %XMM1.i484 = bitcast %union.VectorReg* %1273 to %union.vec128_t*
  %1274 = bitcast %"class.std::bitset"* %YMM2.i483 to i8*
  %1275 = bitcast %"class.std::bitset"* %YMM2.i483 to i8*
  %1276 = bitcast %union.vec128_t* %XMM1.i484 to i8*
  %1277 = load i64, i64* %PC.i482
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %PC.i482
  %1279 = bitcast i8* %1275 to double*
  %1280 = load double, double* %1279, align 1
  %1281 = getelementptr inbounds i8, i8* %1275, i64 8
  %1282 = bitcast i8* %1281 to i64*
  %1283 = load i64, i64* %1282, align 1
  %1284 = bitcast i8* %1276 to double*
  %1285 = load double, double* %1284, align 1
  %1286 = fadd double %1280, %1285
  %1287 = bitcast i8* %1274 to double*
  store double %1286, double* %1287, align 1
  %1288 = getelementptr inbounds i8, i8* %1274, i64 8
  %1289 = bitcast i8* %1288 to i64*
  store i64 %1283, i64* %1289, align 1
  store %struct.Memory* %loadMem_4010d6, %struct.Memory** %MEMORY
  %loadMem_4010da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 1
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 15
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %RBP.i481
  %1300 = sub i64 %1299, 48
  %1301 = load i64, i64* %PC.i479
  %1302 = add i64 %1301, 3
  store i64 %1302, i64* %PC.i479
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303
  %1305 = zext i32 %1304 to i64
  store i64 %1305, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_4010da, %struct.Memory** %MEMORY
  %loadMem_4010dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %EAX.i477 = bitcast %union.anon* %1311 to i32*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1312, i64 0, i64 1
  %YMM1.i478 = bitcast %union.VectorReg* %1313 to %"class.std::bitset"*
  %1314 = bitcast %"class.std::bitset"* %YMM1.i478 to i8*
  %1315 = load i32, i32* %EAX.i477
  %1316 = zext i32 %1315 to i64
  %1317 = load i64, i64* %PC.i476
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %PC.i476
  %1319 = sitofp i32 %1315 to double
  %1320 = bitcast i8* %1314 to double*
  store double %1319, double* %1320, align 1
  store %struct.Memory* %loadMem_4010dd, %struct.Memory** %MEMORY
  %loadMem_4010e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1324, i64 0, i64 2
  %YMM2.i474 = bitcast %union.VectorReg* %1325 to %"class.std::bitset"*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1326, i64 0, i64 1
  %XMM1.i475 = bitcast %union.VectorReg* %1327 to %union.vec128_t*
  %1328 = bitcast %"class.std::bitset"* %YMM2.i474 to i8*
  %1329 = bitcast %"class.std::bitset"* %YMM2.i474 to i8*
  %1330 = bitcast %union.vec128_t* %XMM1.i475 to i8*
  %1331 = load i64, i64* %PC.i473
  %1332 = add i64 %1331, 4
  store i64 %1332, i64* %PC.i473
  %1333 = bitcast i8* %1329 to double*
  %1334 = load double, double* %1333, align 1
  %1335 = getelementptr inbounds i8, i8* %1329, i64 8
  %1336 = bitcast i8* %1335 to i64*
  %1337 = load i64, i64* %1336, align 1
  %1338 = bitcast i8* %1330 to double*
  %1339 = load double, double* %1338, align 1
  %1340 = fdiv double %1334, %1339
  %1341 = bitcast i8* %1328 to double*
  store double %1340, double* %1341, align 1
  %1342 = getelementptr inbounds i8, i8* %1328, i64 8
  %1343 = bitcast i8* %1342 to i64*
  store i64 %1337, i64* %1343, align 1
  store %struct.Memory* %loadMem_4010e1, %struct.Memory** %MEMORY
  %loadMem_4010e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 5
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 15
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RBP.i472
  %1354 = add i64 %1353, 64
  %1355 = load i64, i64* %PC.i470
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %PC.i470
  %1357 = inttoptr i64 %1354 to i64*
  %1358 = load i64, i64* %1357
  store i64 %1358, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_4010e5, %struct.Memory** %MEMORY
  %loadMem_4010e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 7
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i469
  %1369 = sub i64 %1368, 84
  %1370 = load i64, i64* %PC.i467
  %1371 = add i64 %1370, 4
  store i64 %1371, i64* %PC.i467
  %1372 = inttoptr i64 %1369 to i32*
  %1373 = load i32, i32* %1372
  %1374 = sext i32 %1373 to i64
  store i64 %1374, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_4010e9, %struct.Memory** %MEMORY
  %loadMem_4010ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 5
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 7
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RDX.i465 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1384, i64 0, i64 2
  %XMM2.i466 = bitcast %union.VectorReg* %1385 to %union.vec128_t*
  %1386 = load i64, i64* %RCX.i464
  %1387 = load i64, i64* %RDX.i465
  %1388 = mul i64 %1387, 8
  %1389 = add i64 %1388, %1386
  %1390 = bitcast %union.vec128_t* %XMM2.i466 to i8*
  %1391 = load i64, i64* %PC.i463
  %1392 = add i64 %1391, 5
  store i64 %1392, i64* %PC.i463
  %1393 = bitcast i8* %1390 to double*
  %1394 = load double, double* %1393, align 1
  %1395 = inttoptr i64 %1389 to double*
  store double %1394, double* %1395
  store %struct.Memory* %loadMem_4010ed, %struct.Memory** %MEMORY
  %loadMem_4010f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 1
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 15
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %RBP.i462
  %1406 = sub i64 %1405, 84
  %1407 = load i64, i64* %PC.i460
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC.i460
  %1409 = inttoptr i64 %1406 to i32*
  %1410 = load i32, i32* %1409
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_4010f2, %struct.Memory** %MEMORY
  %loadMem_4010f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %1417 to i32*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1418, i64 0, i64 1
  %YMM1.i459 = bitcast %union.VectorReg* %1419 to %"class.std::bitset"*
  %1420 = bitcast %"class.std::bitset"* %YMM1.i459 to i8*
  %1421 = load i32, i32* %EAX.i458
  %1422 = zext i32 %1421 to i64
  %1423 = load i64, i64* %PC.i457
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %PC.i457
  %1425 = sitofp i32 %1421 to double
  %1426 = bitcast i8* %1420 to double*
  store double %1425, double* %1426, align 1
  store %struct.Memory* %loadMem_4010f5, %struct.Memory** %MEMORY
  %loadMem_4010f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1431 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1430, i64 0, i64 1
  %YMM1.i455 = bitcast %union.VectorReg* %1431 to %"class.std::bitset"*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1432, i64 0, i64 0
  %XMM0.i456 = bitcast %union.VectorReg* %1433 to %union.vec128_t*
  %1434 = bitcast %"class.std::bitset"* %YMM1.i455 to i8*
  %1435 = bitcast %"class.std::bitset"* %YMM1.i455 to i8*
  %1436 = bitcast %union.vec128_t* %XMM0.i456 to i8*
  %1437 = load i64, i64* %PC.i454
  %1438 = add i64 %1437, 4
  store i64 %1438, i64* %PC.i454
  %1439 = bitcast i8* %1435 to double*
  %1440 = load double, double* %1439, align 1
  %1441 = getelementptr inbounds i8, i8* %1435, i64 8
  %1442 = bitcast i8* %1441 to i64*
  %1443 = load i64, i64* %1442, align 1
  %1444 = bitcast i8* %1436 to double*
  %1445 = load double, double* %1444, align 1
  %1446 = fadd double %1440, %1445
  %1447 = bitcast i8* %1434 to double*
  store double %1446, double* %1447, align 1
  %1448 = getelementptr inbounds i8, i8* %1434, i64 8
  %1449 = bitcast i8* %1448 to i64*
  store i64 %1443, i64* %1449, align 1
  store %struct.Memory* %loadMem_4010f9, %struct.Memory** %MEMORY
  %loadMem_4010fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 1
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i453
  %1460 = sub i64 %1459, 48
  %1461 = load i64, i64* %PC.i451
  %1462 = add i64 %1461, 3
  store i64 %1462, i64* %PC.i451
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_4010fd, %struct.Memory** %MEMORY
  %loadMem_401100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %1471 to i32*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 0
  %YMM0.i450 = bitcast %union.VectorReg* %1473 to %"class.std::bitset"*
  %1474 = bitcast %"class.std::bitset"* %YMM0.i450 to i8*
  %1475 = load i32, i32* %EAX.i449
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %PC.i448
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i448
  %1479 = sitofp i32 %1475 to double
  %1480 = bitcast i8* %1474 to double*
  store double %1479, double* %1480, align 1
  store %struct.Memory* %loadMem_401100, %struct.Memory** %MEMORY
  %loadMem_401104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1484, i64 0, i64 1
  %YMM1.i446 = bitcast %union.VectorReg* %1485 to %"class.std::bitset"*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1486, i64 0, i64 0
  %XMM0.i447 = bitcast %union.VectorReg* %1487 to %union.vec128_t*
  %1488 = bitcast %"class.std::bitset"* %YMM1.i446 to i8*
  %1489 = bitcast %"class.std::bitset"* %YMM1.i446 to i8*
  %1490 = bitcast %union.vec128_t* %XMM0.i447 to i8*
  %1491 = load i64, i64* %PC.i445
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %PC.i445
  %1493 = bitcast i8* %1489 to double*
  %1494 = load double, double* %1493, align 1
  %1495 = getelementptr inbounds i8, i8* %1489, i64 8
  %1496 = bitcast i8* %1495 to i64*
  %1497 = load i64, i64* %1496, align 1
  %1498 = bitcast i8* %1490 to double*
  %1499 = load double, double* %1498, align 1
  %1500 = fdiv double %1494, %1499
  %1501 = bitcast i8* %1488 to double*
  store double %1500, double* %1501, align 1
  %1502 = getelementptr inbounds i8, i8* %1488, i64 8
  %1503 = bitcast i8* %1502 to i64*
  store i64 %1497, i64* %1503, align 1
  store %struct.Memory* %loadMem_401104, %struct.Memory** %MEMORY
  %loadMem_401108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 5
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 15
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RBP.i444
  %1514 = add i64 %1513, 72
  %1515 = load i64, i64* %PC.i442
  %1516 = add i64 %1515, 4
  store i64 %1516, i64* %PC.i442
  %1517 = inttoptr i64 %1514 to i64*
  %1518 = load i64, i64* %1517
  store i64 %1518, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_401108, %struct.Memory** %MEMORY
  %loadMem_40110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 7
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RBP.i441
  %1529 = sub i64 %1528, 84
  %1530 = load i64, i64* %PC.i439
  %1531 = add i64 %1530, 4
  store i64 %1531, i64* %PC.i439
  %1532 = inttoptr i64 %1529 to i32*
  %1533 = load i32, i32* %1532
  %1534 = sext i32 %1533 to i64
  store i64 %1534, i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_40110c, %struct.Memory** %MEMORY
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 5
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 7
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1544, i64 0, i64 1
  %XMM1.i438 = bitcast %union.VectorReg* %1545 to %union.vec128_t*
  %1546 = load i64, i64* %RCX.i436
  %1547 = load i64, i64* %RDX.i437
  %1548 = mul i64 %1547, 8
  %1549 = add i64 %1548, %1546
  %1550 = bitcast %union.vec128_t* %XMM1.i438 to i8*
  %1551 = load i64, i64* %PC.i435
  %1552 = add i64 %1551, 5
  store i64 %1552, i64* %PC.i435
  %1553 = bitcast i8* %1550 to double*
  %1554 = load double, double* %1553, align 1
  %1555 = inttoptr i64 %1549 to double*
  store double %1554, double* %1555
  store %struct.Memory* %loadMem_401110, %struct.Memory** %MEMORY
  %loadMem_401115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i434
  %1566 = sub i64 %1565, 84
  %1567 = load i64, i64* %PC.i432
  %1568 = add i64 %1567, 3
  store i64 %1568, i64* %PC.i432
  %1569 = inttoptr i64 %1566 to i32*
  %1570 = load i32, i32* %1569
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_401115, %struct.Memory** %MEMORY
  %loadMem_401118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RAX.i431
  %1579 = load i64, i64* %PC.i430
  %1580 = add i64 %1579, 3
  store i64 %1580, i64* %PC.i430
  %1581 = trunc i64 %1578 to i32
  %1582 = add i32 1, %1581
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX.i431, align 8
  %1584 = icmp ult i32 %1582, %1581
  %1585 = icmp ult i32 %1582, 1
  %1586 = or i1 %1584, %1585
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1587, i8* %1588, align 1
  %1589 = and i32 %1582, 255
  %1590 = call i32 @llvm.ctpop.i32(i32 %1589)
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1593, i8* %1594, align 1
  %1595 = xor i64 1, %1578
  %1596 = trunc i64 %1595 to i32
  %1597 = xor i32 %1596, %1582
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1600, i8* %1601, align 1
  %1602 = icmp eq i32 %1582, 0
  %1603 = zext i1 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1603, i8* %1604, align 1
  %1605 = lshr i32 %1582, 31
  %1606 = trunc i32 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i32 %1581, 31
  %1609 = xor i32 %1605, %1608
  %1610 = add i32 %1609, %1605
  %1611 = icmp eq i32 %1610, 2
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1612, i8* %1613, align 1
  store %struct.Memory* %loadMem_401118, %struct.Memory** %MEMORY
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 1
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %1619 to i32*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %RBP.i429
  %1624 = sub i64 %1623, 84
  %1625 = load i32, i32* %EAX.i428
  %1626 = zext i32 %1625 to i64
  %1627 = load i64, i64* %PC.i427
  %1628 = add i64 %1627, 3
  store i64 %1628, i64* %PC.i427
  %1629 = inttoptr i64 %1624 to i32*
  store i32 %1625, i32* %1629
  store %struct.Memory* %loadMem_40111b, %struct.Memory** %MEMORY
  %loadMem_40111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %PC.i426
  %1634 = add i64 %1633, -107
  %1635 = load i64, i64* %PC.i426
  %1636 = add i64 %1635, 5
  store i64 %1636, i64* %PC.i426
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1634, i64* %1637, align 8
  store %struct.Memory* %loadMem_40111e, %struct.Memory** %MEMORY
  br label %block_.L_4010b3

block_.L_401123:                                  ; preds = %block_.L_4010b3
  %loadMem_401123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 15
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %RBP.i425
  %1645 = sub i64 %1644, 84
  %1646 = load i64, i64* %PC.i424
  %1647 = add i64 %1646, 7
  store i64 %1647, i64* %PC.i424
  %1648 = inttoptr i64 %1645 to i32*
  store i32 0, i32* %1648
  store %struct.Memory* %loadMem_401123, %struct.Memory** %MEMORY
  br label %block_.L_40112a

block_.L_40112a:                                  ; preds = %block_401136, %block_.L_401123
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 15
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RBP.i423
  %1659 = sub i64 %1658, 84
  %1660 = load i64, i64* %PC.i421
  %1661 = add i64 %1660, 3
  store i64 %1661, i64* %PC.i421
  %1662 = inttoptr i64 %1659 to i32*
  %1663 = load i32, i32* %1662
  %1664 = zext i32 %1663 to i64
  store i64 %1664, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_40112a, %struct.Memory** %MEMORY
  %loadMem_40112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %EAX.i419 = bitcast %union.anon* %1670 to i32*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1673 to i64*
  %1674 = load i32, i32* %EAX.i419
  %1675 = zext i32 %1674 to i64
  %1676 = load i64, i64* %RBP.i420
  %1677 = sub i64 %1676, 52
  %1678 = load i64, i64* %PC.i418
  %1679 = add i64 %1678, 3
  store i64 %1679, i64* %PC.i418
  %1680 = inttoptr i64 %1677 to i32*
  %1681 = load i32, i32* %1680
  %1682 = sub i32 %1674, %1681
  %1683 = icmp ult i32 %1674, %1681
  %1684 = zext i1 %1683 to i8
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1684, i8* %1685, align 1
  %1686 = and i32 %1682, 255
  %1687 = call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1690, i8* %1691, align 1
  %1692 = xor i32 %1681, %1674
  %1693 = xor i32 %1692, %1682
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1696, i8* %1697, align 1
  %1698 = icmp eq i32 %1682, 0
  %1699 = zext i1 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1699, i8* %1700, align 1
  %1701 = lshr i32 %1682, 31
  %1702 = trunc i32 %1701 to i8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1702, i8* %1703, align 1
  %1704 = lshr i32 %1674, 31
  %1705 = lshr i32 %1681, 31
  %1706 = xor i32 %1705, %1704
  %1707 = xor i32 %1701, %1704
  %1708 = add i32 %1707, %1706
  %1709 = icmp eq i32 %1708, 2
  %1710 = zext i1 %1709 to i8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1710, i8* %1711, align 1
  store %struct.Memory* %loadMem_40112d, %struct.Memory** %MEMORY
  %loadMem_401130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %PC.i417
  %1716 = add i64 %1715, 106
  %1717 = load i64, i64* %PC.i417
  %1718 = add i64 %1717, 6
  %1719 = load i64, i64* %PC.i417
  %1720 = add i64 %1719, 6
  store i64 %1720, i64* %PC.i417
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1722 = load i8, i8* %1721, align 1
  %1723 = icmp eq i8 %1722, 0
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1725 = load i8, i8* %1724, align 1
  %1726 = icmp ne i8 %1725, 0
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1728 = load i8, i8* %1727, align 1
  %1729 = icmp ne i8 %1728, 0
  %1730 = xor i1 %1726, %1729
  %1731 = xor i1 %1730, true
  %1732 = and i1 %1723, %1731
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %BRANCH_TAKEN, align 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1735 = select i1 %1732, i64 %1716, i64 %1718
  store i64 %1735, i64* %1734, align 8
  store %struct.Memory* %loadMem_401130, %struct.Memory** %MEMORY
  %loadBr_401130 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401130 = icmp eq i8 %loadBr_401130, 1
  br i1 %cmpBr_401130, label %block_.L_40119a, label %block_401136

block_401136:                                     ; preds = %block_.L_40112a
  %loadMem_401136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1740 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1739, i64 0, i64 0
  %YMM0.i416 = bitcast %union.VectorReg* %1740 to %"class.std::bitset"*
  %1741 = bitcast %"class.std::bitset"* %YMM0.i416 to i8*
  %1742 = load i64, i64* %PC.i415
  %1743 = load i64, i64* %PC.i415
  %1744 = add i64 %1743, 8
  store i64 %1744, i64* %PC.i415
  %1745 = load double, double* bitcast (%G_0x1d82__rip__4198718__type* @G_0x1d82__rip__4198718_ to double*)
  %1746 = bitcast i8* %1741 to double*
  store double %1745, double* %1746, align 1
  %1747 = getelementptr inbounds i8, i8* %1741, i64 8
  %1748 = bitcast i8* %1747 to double*
  store double 0.000000e+00, double* %1748, align 1
  store %struct.Memory* %loadMem_401136, %struct.Memory** %MEMORY
  %loadMem_40113e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1752, i64 0, i64 1
  %YMM1.i414 = bitcast %union.VectorReg* %1753 to %"class.std::bitset"*
  %1754 = bitcast %"class.std::bitset"* %YMM1.i414 to i8*
  %1755 = load i64, i64* %PC.i413
  %1756 = load i64, i64* %PC.i413
  %1757 = add i64 %1756, 8
  store i64 %1757, i64* %PC.i413
  %1758 = load double, double* bitcast (%G_0x1d82__rip__4198726__type* @G_0x1d82__rip__4198726_ to double*)
  %1759 = bitcast i8* %1754 to double*
  store double %1758, double* %1759, align 1
  %1760 = getelementptr inbounds i8, i8* %1754, i64 8
  %1761 = bitcast i8* %1760 to double*
  store double 0.000000e+00, double* %1761, align 1
  store %struct.Memory* %loadMem_40113e, %struct.Memory** %MEMORY
  %loadMem_401146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RBP.i412
  %1772 = sub i64 %1771, 84
  %1773 = load i64, i64* %PC.i410
  %1774 = add i64 %1773, 3
  store i64 %1774, i64* %PC.i410
  %1775 = inttoptr i64 %1772 to i32*
  %1776 = load i32, i32* %1775
  %1777 = zext i32 %1776 to i64
  store i64 %1777, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_401146, %struct.Memory** %MEMORY
  %loadMem_401149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 1
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %EAX.i408 = bitcast %union.anon* %1783 to i32*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1784, i64 0, i64 2
  %YMM2.i409 = bitcast %union.VectorReg* %1785 to %"class.std::bitset"*
  %1786 = bitcast %"class.std::bitset"* %YMM2.i409 to i8*
  %1787 = load i32, i32* %EAX.i408
  %1788 = zext i32 %1787 to i64
  %1789 = load i64, i64* %PC.i407
  %1790 = add i64 %1789, 4
  store i64 %1790, i64* %PC.i407
  %1791 = sitofp i32 %1787 to double
  %1792 = bitcast i8* %1786 to double*
  store double %1791, double* %1792, align 1
  store %struct.Memory* %loadMem_401149, %struct.Memory** %MEMORY
  %loadMem_40114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1796, i64 0, i64 2
  %YMM2.i405 = bitcast %union.VectorReg* %1797 to %"class.std::bitset"*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1798, i64 0, i64 1
  %XMM1.i406 = bitcast %union.VectorReg* %1799 to %union.vec128_t*
  %1800 = bitcast %"class.std::bitset"* %YMM2.i405 to i8*
  %1801 = bitcast %"class.std::bitset"* %YMM2.i405 to i8*
  %1802 = bitcast %union.vec128_t* %XMM1.i406 to i8*
  %1803 = load i64, i64* %PC.i404
  %1804 = add i64 %1803, 4
  store i64 %1804, i64* %PC.i404
  %1805 = bitcast i8* %1801 to double*
  %1806 = load double, double* %1805, align 1
  %1807 = getelementptr inbounds i8, i8* %1801, i64 8
  %1808 = bitcast i8* %1807 to i64*
  %1809 = load i64, i64* %1808, align 1
  %1810 = bitcast i8* %1802 to double*
  %1811 = load double, double* %1810, align 1
  %1812 = fadd double %1806, %1811
  %1813 = bitcast i8* %1800 to double*
  store double %1812, double* %1813, align 1
  %1814 = getelementptr inbounds i8, i8* %1800, i64 8
  %1815 = bitcast i8* %1814 to i64*
  store i64 %1809, i64* %1815, align 1
  store %struct.Memory* %loadMem_40114d, %struct.Memory** %MEMORY
  %loadMem_401151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 1
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 15
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %1824 to i64*
  %1825 = load i64, i64* %RBP.i403
  %1826 = sub i64 %1825, 48
  %1827 = load i64, i64* %PC.i401
  %1828 = add i64 %1827, 3
  store i64 %1828, i64* %PC.i401
  %1829 = inttoptr i64 %1826 to i32*
  %1830 = load i32, i32* %1829
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_401151, %struct.Memory** %MEMORY
  %loadMem_401154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 1
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %1837 to i32*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1839 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1838, i64 0, i64 1
  %YMM1.i400 = bitcast %union.VectorReg* %1839 to %"class.std::bitset"*
  %1840 = bitcast %"class.std::bitset"* %YMM1.i400 to i8*
  %1841 = load i32, i32* %EAX.i399
  %1842 = zext i32 %1841 to i64
  %1843 = load i64, i64* %PC.i398
  %1844 = add i64 %1843, 4
  store i64 %1844, i64* %PC.i398
  %1845 = sitofp i32 %1841 to double
  %1846 = bitcast i8* %1840 to double*
  store double %1845, double* %1846, align 1
  store %struct.Memory* %loadMem_401154, %struct.Memory** %MEMORY
  %loadMem_401158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1850, i64 0, i64 2
  %YMM2.i396 = bitcast %union.VectorReg* %1851 to %"class.std::bitset"*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1853 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1852, i64 0, i64 1
  %XMM1.i397 = bitcast %union.VectorReg* %1853 to %union.vec128_t*
  %1854 = bitcast %"class.std::bitset"* %YMM2.i396 to i8*
  %1855 = bitcast %"class.std::bitset"* %YMM2.i396 to i8*
  %1856 = bitcast %union.vec128_t* %XMM1.i397 to i8*
  %1857 = load i64, i64* %PC.i395
  %1858 = add i64 %1857, 4
  store i64 %1858, i64* %PC.i395
  %1859 = bitcast i8* %1855 to double*
  %1860 = load double, double* %1859, align 1
  %1861 = getelementptr inbounds i8, i8* %1855, i64 8
  %1862 = bitcast i8* %1861 to i64*
  %1863 = load i64, i64* %1862, align 1
  %1864 = bitcast i8* %1856 to double*
  %1865 = load double, double* %1864, align 1
  %1866 = fdiv double %1860, %1865
  %1867 = bitcast i8* %1854 to double*
  store double %1866, double* %1867, align 1
  %1868 = getelementptr inbounds i8, i8* %1854, i64 8
  %1869 = bitcast i8* %1868 to i64*
  store i64 %1863, i64* %1869, align 1
  store %struct.Memory* %loadMem_401158, %struct.Memory** %MEMORY
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 5
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 15
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %RBP.i394
  %1880 = add i64 %1879, 80
  %1881 = load i64, i64* %PC.i392
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i392
  %1883 = inttoptr i64 %1880 to i64*
  %1884 = load i64, i64* %1883
  store i64 %1884, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_40115c, %struct.Memory** %MEMORY
  %loadMem_401160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 7
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 15
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RBP.i391
  %1895 = sub i64 %1894, 84
  %1896 = load i64, i64* %PC.i389
  %1897 = add i64 %1896, 4
  store i64 %1897, i64* %PC.i389
  %1898 = inttoptr i64 %1895 to i32*
  %1899 = load i32, i32* %1898
  %1900 = sext i32 %1899 to i64
  store i64 %1900, i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_401160, %struct.Memory** %MEMORY
  %loadMem_401164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 5
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 7
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RDX.i387 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1910, i64 0, i64 2
  %XMM2.i388 = bitcast %union.VectorReg* %1911 to %union.vec128_t*
  %1912 = load i64, i64* %RCX.i386
  %1913 = load i64, i64* %RDX.i387
  %1914 = mul i64 %1913, 8
  %1915 = add i64 %1914, %1912
  %1916 = bitcast %union.vec128_t* %XMM2.i388 to i8*
  %1917 = load i64, i64* %PC.i385
  %1918 = add i64 %1917, 5
  store i64 %1918, i64* %PC.i385
  %1919 = bitcast i8* %1916 to double*
  %1920 = load double, double* %1919, align 1
  %1921 = inttoptr i64 %1915 to double*
  store double %1920, double* %1921
  store %struct.Memory* %loadMem_401164, %struct.Memory** %MEMORY
  %loadMem_401169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 1
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 15
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %1930 to i64*
  %1931 = load i64, i64* %RBP.i384
  %1932 = sub i64 %1931, 84
  %1933 = load i64, i64* %PC.i382
  %1934 = add i64 %1933, 3
  store i64 %1934, i64* %PC.i382
  %1935 = inttoptr i64 %1932 to i32*
  %1936 = load i32, i32* %1935
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_401169, %struct.Memory** %MEMORY
  %loadMem_40116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 1
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %1943 to i32*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1944, i64 0, i64 1
  %YMM1.i381 = bitcast %union.VectorReg* %1945 to %"class.std::bitset"*
  %1946 = bitcast %"class.std::bitset"* %YMM1.i381 to i8*
  %1947 = load i32, i32* %EAX.i380
  %1948 = zext i32 %1947 to i64
  %1949 = load i64, i64* %PC.i379
  %1950 = add i64 %1949, 4
  store i64 %1950, i64* %PC.i379
  %1951 = sitofp i32 %1947 to double
  %1952 = bitcast i8* %1946 to double*
  store double %1951, double* %1952, align 1
  store %struct.Memory* %loadMem_40116c, %struct.Memory** %MEMORY
  %loadMem_401170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1956, i64 0, i64 1
  %YMM1.i377 = bitcast %union.VectorReg* %1957 to %"class.std::bitset"*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1958, i64 0, i64 0
  %XMM0.i378 = bitcast %union.VectorReg* %1959 to %union.vec128_t*
  %1960 = bitcast %"class.std::bitset"* %YMM1.i377 to i8*
  %1961 = bitcast %"class.std::bitset"* %YMM1.i377 to i8*
  %1962 = bitcast %union.vec128_t* %XMM0.i378 to i8*
  %1963 = load i64, i64* %PC.i376
  %1964 = add i64 %1963, 4
  store i64 %1964, i64* %PC.i376
  %1965 = bitcast i8* %1961 to double*
  %1966 = load double, double* %1965, align 1
  %1967 = getelementptr inbounds i8, i8* %1961, i64 8
  %1968 = bitcast i8* %1967 to i64*
  %1969 = load i64, i64* %1968, align 1
  %1970 = bitcast i8* %1962 to double*
  %1971 = load double, double* %1970, align 1
  %1972 = fadd double %1966, %1971
  %1973 = bitcast i8* %1960 to double*
  store double %1972, double* %1973, align 1
  %1974 = getelementptr inbounds i8, i8* %1960, i64 8
  %1975 = bitcast i8* %1974 to i64*
  store i64 %1969, i64* %1975, align 1
  store %struct.Memory* %loadMem_401170, %struct.Memory** %MEMORY
  %loadMem_401174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 1
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 15
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %RBP.i375
  %1986 = sub i64 %1985, 48
  %1987 = load i64, i64* %PC.i373
  %1988 = add i64 %1987, 3
  store i64 %1988, i64* %PC.i373
  %1989 = inttoptr i64 %1986 to i32*
  %1990 = load i32, i32* %1989
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_401174, %struct.Memory** %MEMORY
  %loadMem_401177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 1
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %1997 to i32*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 0
  %YMM0.i372 = bitcast %union.VectorReg* %1999 to %"class.std::bitset"*
  %2000 = bitcast %"class.std::bitset"* %YMM0.i372 to i8*
  %2001 = load i32, i32* %EAX.i371
  %2002 = zext i32 %2001 to i64
  %2003 = load i64, i64* %PC.i370
  %2004 = add i64 %2003, 4
  store i64 %2004, i64* %PC.i370
  %2005 = sitofp i32 %2001 to double
  %2006 = bitcast i8* %2000 to double*
  store double %2005, double* %2006, align 1
  store %struct.Memory* %loadMem_401177, %struct.Memory** %MEMORY
  %loadMem_40117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2010, i64 0, i64 1
  %YMM1.i368 = bitcast %union.VectorReg* %2011 to %"class.std::bitset"*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2013 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2012, i64 0, i64 0
  %XMM0.i369 = bitcast %union.VectorReg* %2013 to %union.vec128_t*
  %2014 = bitcast %"class.std::bitset"* %YMM1.i368 to i8*
  %2015 = bitcast %"class.std::bitset"* %YMM1.i368 to i8*
  %2016 = bitcast %union.vec128_t* %XMM0.i369 to i8*
  %2017 = load i64, i64* %PC.i367
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC.i367
  %2019 = bitcast i8* %2015 to double*
  %2020 = load double, double* %2019, align 1
  %2021 = getelementptr inbounds i8, i8* %2015, i64 8
  %2022 = bitcast i8* %2021 to i64*
  %2023 = load i64, i64* %2022, align 1
  %2024 = bitcast i8* %2016 to double*
  %2025 = load double, double* %2024, align 1
  %2026 = fdiv double %2020, %2025
  %2027 = bitcast i8* %2014 to double*
  store double %2026, double* %2027, align 1
  %2028 = getelementptr inbounds i8, i8* %2014, i64 8
  %2029 = bitcast i8* %2028 to i64*
  store i64 %2023, i64* %2029, align 1
  store %struct.Memory* %loadMem_40117b, %struct.Memory** %MEMORY
  %loadMem_40117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 5
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 15
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2038 to i64*
  %2039 = load i64, i64* %RBP.i366
  %2040 = add i64 %2039, 88
  %2041 = load i64, i64* %PC.i364
  %2042 = add i64 %2041, 4
  store i64 %2042, i64* %PC.i364
  %2043 = inttoptr i64 %2040 to i64*
  %2044 = load i64, i64* %2043
  store i64 %2044, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_40117f, %struct.Memory** %MEMORY
  %loadMem_401183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 7
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RBP.i363
  %2055 = sub i64 %2054, 84
  %2056 = load i64, i64* %PC.i361
  %2057 = add i64 %2056, 4
  store i64 %2057, i64* %PC.i361
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058
  %2060 = sext i32 %2059 to i64
  store i64 %2060, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_401183, %struct.Memory** %MEMORY
  %loadMem_401187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 5
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 7
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2071 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2070, i64 0, i64 1
  %XMM1.i360 = bitcast %union.VectorReg* %2071 to %union.vec128_t*
  %2072 = load i64, i64* %RCX.i358
  %2073 = load i64, i64* %RDX.i359
  %2074 = mul i64 %2073, 8
  %2075 = add i64 %2074, %2072
  %2076 = bitcast %union.vec128_t* %XMM1.i360 to i8*
  %2077 = load i64, i64* %PC.i357
  %2078 = add i64 %2077, 5
  store i64 %2078, i64* %PC.i357
  %2079 = bitcast i8* %2076 to double*
  %2080 = load double, double* %2079, align 1
  %2081 = inttoptr i64 %2075 to double*
  store double %2080, double* %2081
  store %struct.Memory* %loadMem_401187, %struct.Memory** %MEMORY
  %loadMem_40118c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 1
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 15
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RBP.i356
  %2092 = sub i64 %2091, 84
  %2093 = load i64, i64* %PC.i354
  %2094 = add i64 %2093, 3
  store i64 %2094, i64* %PC.i354
  %2095 = inttoptr i64 %2092 to i32*
  %2096 = load i32, i32* %2095
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_40118c, %struct.Memory** %MEMORY
  %loadMem_40118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 1
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RAX.i353
  %2105 = load i64, i64* %PC.i352
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC.i352
  %2107 = trunc i64 %2104 to i32
  %2108 = add i32 1, %2107
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RAX.i353, align 8
  %2110 = icmp ult i32 %2108, %2107
  %2111 = icmp ult i32 %2108, 1
  %2112 = or i1 %2110, %2111
  %2113 = zext i1 %2112 to i8
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2113, i8* %2114, align 1
  %2115 = and i32 %2108, 255
  %2116 = call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2119, i8* %2120, align 1
  %2121 = xor i64 1, %2104
  %2122 = trunc i64 %2121 to i32
  %2123 = xor i32 %2122, %2108
  %2124 = lshr i32 %2123, 4
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2126, i8* %2127, align 1
  %2128 = icmp eq i32 %2108, 0
  %2129 = zext i1 %2128 to i8
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2129, i8* %2130, align 1
  %2131 = lshr i32 %2108, 31
  %2132 = trunc i32 %2131 to i8
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2132, i8* %2133, align 1
  %2134 = lshr i32 %2107, 31
  %2135 = xor i32 %2131, %2134
  %2136 = add i32 %2135, %2131
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2138, i8* %2139, align 1
  store %struct.Memory* %loadMem_40118f, %struct.Memory** %MEMORY
  %loadMem_401192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %EAX.i350 = bitcast %union.anon* %2145 to i32*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 15
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %RBP.i351
  %2150 = sub i64 %2149, 84
  %2151 = load i32, i32* %EAX.i350
  %2152 = zext i32 %2151 to i64
  %2153 = load i64, i64* %PC.i349
  %2154 = add i64 %2153, 3
  store i64 %2154, i64* %PC.i349
  %2155 = inttoptr i64 %2150 to i32*
  store i32 %2151, i32* %2155
  store %struct.Memory* %loadMem_401192, %struct.Memory** %MEMORY
  %loadMem_401195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %PC.i348
  %2160 = add i64 %2159, -107
  %2161 = load i64, i64* %PC.i348
  %2162 = add i64 %2161, 5
  store i64 %2162, i64* %PC.i348
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2160, i64* %2163, align 8
  store %struct.Memory* %loadMem_401195, %struct.Memory** %MEMORY
  br label %block_.L_40112a

block_.L_40119a:                                  ; preds = %block_.L_40112a
  %loadMem_40119a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 15
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RBP.i347
  %2171 = sub i64 %2170, 84
  %2172 = load i64, i64* %PC.i346
  %2173 = add i64 %2172, 7
  store i64 %2173, i64* %PC.i346
  %2174 = inttoptr i64 %2171 to i32*
  store i32 0, i32* %2174
  store %struct.Memory* %loadMem_40119a, %struct.Memory** %MEMORY
  br label %block_.L_4011a1

block_.L_4011a1:                                  ; preds = %block_.L_4013a7, %block_.L_40119a
  %loadMem_4011a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 1
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RBP.i345
  %2185 = sub i64 %2184, 84
  %2186 = load i64, i64* %PC.i343
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i343
  %2188 = inttoptr i64 %2185 to i32*
  %2189 = load i32, i32* %2188
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_4011a1, %struct.Memory** %MEMORY
  %loadMem_4011a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 1
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %2196 to i32*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %2199 to i64*
  %2200 = load i32, i32* %EAX.i341
  %2201 = zext i32 %2200 to i64
  %2202 = load i64, i64* %RBP.i342
  %2203 = sub i64 %2202, 44
  %2204 = load i64, i64* %PC.i340
  %2205 = add i64 %2204, 3
  store i64 %2205, i64* %PC.i340
  %2206 = inttoptr i64 %2203 to i32*
  %2207 = load i32, i32* %2206
  %2208 = sub i32 %2200, %2207
  %2209 = icmp ult i32 %2200, %2207
  %2210 = zext i1 %2209 to i8
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2210, i8* %2211, align 1
  %2212 = and i32 %2208, 255
  %2213 = call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2216, i8* %2217, align 1
  %2218 = xor i32 %2207, %2200
  %2219 = xor i32 %2218, %2208
  %2220 = lshr i32 %2219, 4
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2222, i8* %2223, align 1
  %2224 = icmp eq i32 %2208, 0
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2225, i8* %2226, align 1
  %2227 = lshr i32 %2208, 31
  %2228 = trunc i32 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2228, i8* %2229, align 1
  %2230 = lshr i32 %2200, 31
  %2231 = lshr i32 %2207, 31
  %2232 = xor i32 %2231, %2230
  %2233 = xor i32 %2227, %2230
  %2234 = add i32 %2233, %2232
  %2235 = icmp eq i32 %2234, 2
  %2236 = zext i1 %2235 to i8
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2236, i8* %2237, align 1
  store %struct.Memory* %loadMem_4011a4, %struct.Memory** %MEMORY
  %loadMem_4011a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 33
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %PC.i339
  %2242 = add i64 %2241, 526
  %2243 = load i64, i64* %PC.i339
  %2244 = add i64 %2243, 6
  %2245 = load i64, i64* %PC.i339
  %2246 = add i64 %2245, 6
  store i64 %2246, i64* %PC.i339
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2248 = load i8, i8* %2247, align 1
  %2249 = icmp eq i8 %2248, 0
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2251 = load i8, i8* %2250, align 1
  %2252 = icmp ne i8 %2251, 0
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2254 = load i8, i8* %2253, align 1
  %2255 = icmp ne i8 %2254, 0
  %2256 = xor i1 %2252, %2255
  %2257 = xor i1 %2256, true
  %2258 = and i1 %2249, %2257
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %BRANCH_TAKEN, align 1
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2261 = select i1 %2258, i64 %2242, i64 %2244
  store i64 %2261, i64* %2260, align 8
  store %struct.Memory* %loadMem_4011a7, %struct.Memory** %MEMORY
  %loadBr_4011a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011a7 = icmp eq i8 %loadBr_4011a7, 1
  br i1 %cmpBr_4011a7, label %block_.L_4013b5, label %block_4011ad

block_4011ad:                                     ; preds = %block_.L_4011a1
  %loadMem_4011ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 15
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %RBP.i338
  %2269 = sub i64 %2268, 88
  %2270 = load i64, i64* %PC.i337
  %2271 = add i64 %2270, 7
  store i64 %2271, i64* %PC.i337
  %2272 = inttoptr i64 %2269 to i32*
  store i32 0, i32* %2272
  store %struct.Memory* %loadMem_4011ad, %struct.Memory** %MEMORY
  br label %block_.L_4011b4

block_.L_4011b4:                                  ; preds = %block_.L_401394, %block_4011ad
  %loadMem_4011b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 1
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 15
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %RBP.i336
  %2283 = sub i64 %2282, 88
  %2284 = load i64, i64* %PC.i334
  %2285 = add i64 %2284, 3
  store i64 %2285, i64* %PC.i334
  %2286 = inttoptr i64 %2283 to i32*
  %2287 = load i32, i32* %2286
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RAX.i335, align 8
  store %struct.Memory* %loadMem_4011b4, %struct.Memory** %MEMORY
  %loadMem_4011b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %2294 to i32*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2297 to i64*
  %2298 = load i32, i32* %EAX.i332
  %2299 = zext i32 %2298 to i64
  %2300 = load i64, i64* %RBP.i333
  %2301 = sub i64 %2300, 52
  %2302 = load i64, i64* %PC.i331
  %2303 = add i64 %2302, 3
  store i64 %2303, i64* %PC.i331
  %2304 = inttoptr i64 %2301 to i32*
  %2305 = load i32, i32* %2304
  %2306 = sub i32 %2298, %2305
  %2307 = icmp ult i32 %2298, %2305
  %2308 = zext i1 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2308, i8* %2309, align 1
  %2310 = and i32 %2306, 255
  %2311 = call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2314, i8* %2315, align 1
  %2316 = xor i32 %2305, %2298
  %2317 = xor i32 %2316, %2306
  %2318 = lshr i32 %2317, 4
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2320, i8* %2321, align 1
  %2322 = icmp eq i32 %2306, 0
  %2323 = zext i1 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2323, i8* %2324, align 1
  %2325 = lshr i32 %2306, 31
  %2326 = trunc i32 %2325 to i8
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2326, i8* %2327, align 1
  %2328 = lshr i32 %2298, 31
  %2329 = lshr i32 %2305, 31
  %2330 = xor i32 %2329, %2328
  %2331 = xor i32 %2325, %2328
  %2332 = add i32 %2331, %2330
  %2333 = icmp eq i32 %2332, 2
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2334, i8* %2335, align 1
  store %struct.Memory* %loadMem_4011b7, %struct.Memory** %MEMORY
  %loadMem_4011ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %PC.i330
  %2340 = add i64 %2339, 488
  %2341 = load i64, i64* %PC.i330
  %2342 = add i64 %2341, 6
  %2343 = load i64, i64* %PC.i330
  %2344 = add i64 %2343, 6
  store i64 %2344, i64* %PC.i330
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2346 = load i8, i8* %2345, align 1
  %2347 = icmp eq i8 %2346, 0
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2349 = load i8, i8* %2348, align 1
  %2350 = icmp ne i8 %2349, 0
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2352 = load i8, i8* %2351, align 1
  %2353 = icmp ne i8 %2352, 0
  %2354 = xor i1 %2350, %2353
  %2355 = xor i1 %2354, true
  %2356 = and i1 %2347, %2355
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %BRANCH_TAKEN, align 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2359 = select i1 %2356, i64 %2340, i64 %2342
  store i64 %2359, i64* %2358, align 8
  store %struct.Memory* %loadMem_4011ba, %struct.Memory** %MEMORY
  %loadBr_4011ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011ba = icmp eq i8 %loadBr_4011ba, 1
  br i1 %cmpBr_4011ba, label %block_.L_4013a2, label %block_4011c0

block_4011c0:                                     ; preds = %block_.L_4011b4
  %loadMem_4011c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2363, i64 0, i64 0
  %YMM0.i329 = bitcast %union.VectorReg* %2364 to %"class.std::bitset"*
  %2365 = bitcast %"class.std::bitset"* %YMM0.i329 to i8*
  %2366 = load i64, i64* %PC.i328
  %2367 = load i64, i64* %PC.i328
  %2368 = add i64 %2367, 8
  store i64 %2368, i64* %PC.i328
  %2369 = load double, double* bitcast (%G_0x1cd0__rip__4198856__type* @G_0x1cd0__rip__4198856_ to double*)
  %2370 = bitcast i8* %2365 to double*
  store double %2369, double* %2370, align 1
  %2371 = getelementptr inbounds i8, i8* %2365, i64 8
  %2372 = bitcast i8* %2371 to double*
  store double 0.000000e+00, double* %2372, align 1
  store %struct.Memory* %loadMem_4011c0, %struct.Memory** %MEMORY
  %loadMem_4011c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2377 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2376, i64 0, i64 1
  %YMM1.i327 = bitcast %union.VectorReg* %2377 to %"class.std::bitset"*
  %2378 = bitcast %"class.std::bitset"* %YMM1.i327 to i8*
  %2379 = load i64, i64* %PC.i326
  %2380 = load i64, i64* %PC.i326
  %2381 = add i64 %2380, 8
  store i64 %2381, i64* %PC.i326
  %2382 = load double, double* bitcast (%G_0x1cd0__rip__4198864__type* @G_0x1cd0__rip__4198864_ to double*)
  %2383 = bitcast i8* %2378 to double*
  store double %2382, double* %2383, align 1
  %2384 = getelementptr inbounds i8, i8* %2378, i64 8
  %2385 = bitcast i8* %2384 to double*
  store double 0.000000e+00, double* %2385, align 1
  store %struct.Memory* %loadMem_4011c8, %struct.Memory** %MEMORY
  %loadMem_4011d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 1
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 15
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RBP.i325
  %2396 = sub i64 %2395, 84
  %2397 = load i64, i64* %PC.i323
  %2398 = add i64 %2397, 3
  store i64 %2398, i64* %PC.i323
  %2399 = inttoptr i64 %2396 to i32*
  %2400 = load i32, i32* %2399
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_4011d0, %struct.Memory** %MEMORY
  %loadMem_4011d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 1
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %2407 to i32*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2408, i64 0, i64 2
  %YMM2.i322 = bitcast %union.VectorReg* %2409 to %"class.std::bitset"*
  %2410 = bitcast %"class.std::bitset"* %YMM2.i322 to i8*
  %2411 = load i32, i32* %EAX.i321
  %2412 = zext i32 %2411 to i64
  %2413 = load i64, i64* %PC.i320
  %2414 = add i64 %2413, 4
  store i64 %2414, i64* %PC.i320
  %2415 = sitofp i32 %2411 to double
  %2416 = bitcast i8* %2410 to double*
  store double %2415, double* %2416, align 1
  store %struct.Memory* %loadMem_4011d3, %struct.Memory** %MEMORY
  %loadMem_4011d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 1
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 15
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RBP.i319
  %2427 = sub i64 %2426, 88
  %2428 = load i64, i64* %PC.i317
  %2429 = add i64 %2428, 3
  store i64 %2429, i64* %PC.i317
  %2430 = inttoptr i64 %2427 to i32*
  %2431 = load i32, i32* %2430
  %2432 = zext i32 %2431 to i64
  store i64 %2432, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_4011d7, %struct.Memory** %MEMORY
  %loadMem_4011da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 33
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 1
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2438 to i64*
  %2439 = load i64, i64* %RAX.i316
  %2440 = load i64, i64* %PC.i315
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC.i315
  %2442 = trunc i64 %2439 to i32
  %2443 = add i32 1, %2442
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RAX.i316, align 8
  %2445 = icmp ult i32 %2443, %2442
  %2446 = icmp ult i32 %2443, 1
  %2447 = or i1 %2445, %2446
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2448, i8* %2449, align 1
  %2450 = and i32 %2443, 255
  %2451 = call i32 @llvm.ctpop.i32(i32 %2450)
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = xor i8 %2453, 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2454, i8* %2455, align 1
  %2456 = xor i64 1, %2439
  %2457 = trunc i64 %2456 to i32
  %2458 = xor i32 %2457, %2443
  %2459 = lshr i32 %2458, 4
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2461, i8* %2462, align 1
  %2463 = icmp eq i32 %2443, 0
  %2464 = zext i1 %2463 to i8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2464, i8* %2465, align 1
  %2466 = lshr i32 %2443, 31
  %2467 = trunc i32 %2466 to i8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2467, i8* %2468, align 1
  %2469 = lshr i32 %2442, 31
  %2470 = xor i32 %2466, %2469
  %2471 = add i32 %2470, %2466
  %2472 = icmp eq i32 %2471, 2
  %2473 = zext i1 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2473, i8* %2474, align 1
  store %struct.Memory* %loadMem_4011da, %struct.Memory** %MEMORY
  %loadMem_4011dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 1
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %EAX.i313 = bitcast %union.anon* %2480 to i32*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2481, i64 0, i64 3
  %YMM3.i314 = bitcast %union.VectorReg* %2482 to %"class.std::bitset"*
  %2483 = bitcast %"class.std::bitset"* %YMM3.i314 to i8*
  %2484 = load i32, i32* %EAX.i313
  %2485 = zext i32 %2484 to i64
  %2486 = load i64, i64* %PC.i312
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i312
  %2488 = sitofp i32 %2484 to double
  %2489 = bitcast i8* %2483 to double*
  store double %2488, double* %2489, align 1
  store %struct.Memory* %loadMem_4011dd, %struct.Memory** %MEMORY
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2493, i64 0, i64 2
  %YMM2.i310 = bitcast %union.VectorReg* %2494 to %"class.std::bitset"*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2495, i64 0, i64 3
  %XMM3.i311 = bitcast %union.VectorReg* %2496 to %union.vec128_t*
  %2497 = bitcast %"class.std::bitset"* %YMM2.i310 to i8*
  %2498 = bitcast %"class.std::bitset"* %YMM2.i310 to i8*
  %2499 = bitcast %union.vec128_t* %XMM3.i311 to i8*
  %2500 = load i64, i64* %PC.i309
  %2501 = add i64 %2500, 4
  store i64 %2501, i64* %PC.i309
  %2502 = bitcast i8* %2498 to double*
  %2503 = load double, double* %2502, align 1
  %2504 = getelementptr inbounds i8, i8* %2498, i64 8
  %2505 = bitcast i8* %2504 to i64*
  %2506 = load i64, i64* %2505, align 1
  %2507 = bitcast i8* %2499 to double*
  %2508 = load double, double* %2507, align 1
  %2509 = fmul double %2503, %2508
  %2510 = bitcast i8* %2497 to double*
  store double %2509, double* %2510, align 1
  %2511 = getelementptr inbounds i8, i8* %2497, i64 8
  %2512 = bitcast i8* %2511 to i64*
  store i64 %2506, i64* %2512, align 1
  store %struct.Memory* %loadMem_4011e1, %struct.Memory** %MEMORY
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2516, i64 0, i64 2
  %YMM2.i307 = bitcast %union.VectorReg* %2517 to %"class.std::bitset"*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2519 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2518, i64 0, i64 1
  %XMM1.i308 = bitcast %union.VectorReg* %2519 to %union.vec128_t*
  %2520 = bitcast %"class.std::bitset"* %YMM2.i307 to i8*
  %2521 = bitcast %"class.std::bitset"* %YMM2.i307 to i8*
  %2522 = bitcast %union.vec128_t* %XMM1.i308 to i8*
  %2523 = load i64, i64* %PC.i306
  %2524 = add i64 %2523, 4
  store i64 %2524, i64* %PC.i306
  %2525 = bitcast i8* %2521 to double*
  %2526 = load double, double* %2525, align 1
  %2527 = getelementptr inbounds i8, i8* %2521, i64 8
  %2528 = bitcast i8* %2527 to i64*
  %2529 = load i64, i64* %2528, align 1
  %2530 = bitcast i8* %2522 to double*
  %2531 = load double, double* %2530, align 1
  %2532 = fadd double %2526, %2531
  %2533 = bitcast i8* %2520 to double*
  store double %2532, double* %2533, align 1
  %2534 = getelementptr inbounds i8, i8* %2520, i64 8
  %2535 = bitcast i8* %2534 to i64*
  store i64 %2529, i64* %2535, align 1
  store %struct.Memory* %loadMem_4011e5, %struct.Memory** %MEMORY
  %loadMem_4011e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 1
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 15
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RBP.i305
  %2546 = sub i64 %2545, 52
  %2547 = load i64, i64* %PC.i303
  %2548 = add i64 %2547, 3
  store i64 %2548, i64* %PC.i303
  %2549 = inttoptr i64 %2546 to i32*
  %2550 = load i32, i32* %2549
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_4011e9, %struct.Memory** %MEMORY
  %loadMem_4011ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %2557 to i32*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2558, i64 0, i64 1
  %YMM1.i302 = bitcast %union.VectorReg* %2559 to %"class.std::bitset"*
  %2560 = bitcast %"class.std::bitset"* %YMM1.i302 to i8*
  %2561 = load i32, i32* %EAX.i301
  %2562 = zext i32 %2561 to i64
  %2563 = load i64, i64* %PC.i300
  %2564 = add i64 %2563, 4
  store i64 %2564, i64* %PC.i300
  %2565 = sitofp i32 %2561 to double
  %2566 = bitcast i8* %2560 to double*
  store double %2565, double* %2566, align 1
  store %struct.Memory* %loadMem_4011ec, %struct.Memory** %MEMORY
  %loadMem_4011f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2570, i64 0, i64 2
  %YMM2.i298 = bitcast %union.VectorReg* %2571 to %"class.std::bitset"*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2572, i64 0, i64 1
  %XMM1.i299 = bitcast %union.VectorReg* %2573 to %union.vec128_t*
  %2574 = bitcast %"class.std::bitset"* %YMM2.i298 to i8*
  %2575 = bitcast %"class.std::bitset"* %YMM2.i298 to i8*
  %2576 = bitcast %union.vec128_t* %XMM1.i299 to i8*
  %2577 = load i64, i64* %PC.i297
  %2578 = add i64 %2577, 4
  store i64 %2578, i64* %PC.i297
  %2579 = bitcast i8* %2575 to double*
  %2580 = load double, double* %2579, align 1
  %2581 = getelementptr inbounds i8, i8* %2575, i64 8
  %2582 = bitcast i8* %2581 to i64*
  %2583 = load i64, i64* %2582, align 1
  %2584 = bitcast i8* %2576 to double*
  %2585 = load double, double* %2584, align 1
  %2586 = fdiv double %2580, %2585
  %2587 = bitcast i8* %2574 to double*
  store double %2586, double* %2587, align 1
  %2588 = getelementptr inbounds i8, i8* %2574, i64 8
  %2589 = bitcast i8* %2588 to i64*
  store i64 %2583, i64* %2589, align 1
  store %struct.Memory* %loadMem_4011f0, %struct.Memory** %MEMORY
  %loadMem_4011f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 5
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 15
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2598 to i64*
  %2599 = load i64, i64* %RBP.i296
  %2600 = add i64 %2599, 16
  %2601 = load i64, i64* %PC.i294
  %2602 = add i64 %2601, 4
  store i64 %2602, i64* %PC.i294
  %2603 = inttoptr i64 %2600 to i64*
  %2604 = load i64, i64* %2603
  store i64 %2604, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4011f4, %struct.Memory** %MEMORY
  %loadMem_4011f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 7
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i293
  %2615 = sub i64 %2614, 84
  %2616 = load i64, i64* %PC.i291
  %2617 = add i64 %2616, 4
  store i64 %2617, i64* %PC.i291
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = sext i32 %2619 to i64
  store i64 %2620, i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_4011f8, %struct.Memory** %MEMORY
  %loadMem_4011fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 7
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RDX.i290
  %2628 = load i64, i64* %PC.i289
  %2629 = add i64 %2628, 7
  store i64 %2629, i64* %PC.i289
  %2630 = sext i64 %2627 to i128
  %2631 = and i128 %2630, -18446744073709551616
  %2632 = zext i64 %2627 to i128
  %2633 = or i128 %2631, %2632
  %2634 = mul i128 520, %2633
  %2635 = trunc i128 %2634 to i64
  store i64 %2635, i64* %RDX.i290, align 8
  %2636 = sext i64 %2635 to i128
  %2637 = icmp ne i128 %2636, %2634
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2638, i8* %2639, align 1
  %2640 = trunc i128 %2634 to i32
  %2641 = and i32 %2640, 255
  %2642 = call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2645, i8* %2646, align 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2647, align 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2648, align 1
  %2649 = lshr i64 %2635, 63
  %2650 = trunc i64 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2650, i8* %2651, align 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2638, i8* %2652, align 1
  store %struct.Memory* %loadMem_4011fc, %struct.Memory** %MEMORY
  %loadMem_401203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 5
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 7
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %RCX.i287
  %2663 = load i64, i64* %RDX.i288
  %2664 = load i64, i64* %PC.i286
  %2665 = add i64 %2664, 3
  store i64 %2665, i64* %PC.i286
  %2666 = add i64 %2663, %2662
  store i64 %2666, i64* %RCX.i287, align 8
  %2667 = icmp ult i64 %2666, %2662
  %2668 = icmp ult i64 %2666, %2663
  %2669 = or i1 %2667, %2668
  %2670 = zext i1 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2670, i8* %2671, align 1
  %2672 = trunc i64 %2666 to i32
  %2673 = and i32 %2672, 255
  %2674 = call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2677, i8* %2678, align 1
  %2679 = xor i64 %2663, %2662
  %2680 = xor i64 %2679, %2666
  %2681 = lshr i64 %2680, 4
  %2682 = trunc i64 %2681 to i8
  %2683 = and i8 %2682, 1
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2683, i8* %2684, align 1
  %2685 = icmp eq i64 %2666, 0
  %2686 = zext i1 %2685 to i8
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2686, i8* %2687, align 1
  %2688 = lshr i64 %2666, 63
  %2689 = trunc i64 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2689, i8* %2690, align 1
  %2691 = lshr i64 %2662, 63
  %2692 = lshr i64 %2663, 63
  %2693 = xor i64 %2688, %2691
  %2694 = xor i64 %2688, %2692
  %2695 = add i64 %2693, %2694
  %2696 = icmp eq i64 %2695, 2
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2697, i8* %2698, align 1
  store %struct.Memory* %loadMem_401203, %struct.Memory** %MEMORY
  %loadMem_401206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 7
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 15
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RBP.i285
  %2709 = sub i64 %2708, 88
  %2710 = load i64, i64* %PC.i283
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i283
  %2712 = inttoptr i64 %2709 to i32*
  %2713 = load i32, i32* %2712
  %2714 = sext i32 %2713 to i64
  store i64 %2714, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_401206, %struct.Memory** %MEMORY
  %loadMem_40120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 5
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 7
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2724, i64 0, i64 2
  %XMM2.i282 = bitcast %union.VectorReg* %2725 to %union.vec128_t*
  %2726 = load i64, i64* %RCX.i280
  %2727 = load i64, i64* %RDX.i281
  %2728 = mul i64 %2727, 8
  %2729 = add i64 %2728, %2726
  %2730 = bitcast %union.vec128_t* %XMM2.i282 to i8*
  %2731 = load i64, i64* %PC.i279
  %2732 = add i64 %2731, 5
  store i64 %2732, i64* %PC.i279
  %2733 = bitcast i8* %2730 to double*
  %2734 = load double, double* %2733, align 1
  %2735 = inttoptr i64 %2729 to double*
  store double %2734, double* %2735
  store %struct.Memory* %loadMem_40120a, %struct.Memory** %MEMORY
  %loadMem_40120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 1
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RBP.i278
  %2746 = sub i64 %2745, 84
  %2747 = load i64, i64* %PC.i276
  %2748 = add i64 %2747, 3
  store i64 %2748, i64* %PC.i276
  %2749 = inttoptr i64 %2746 to i32*
  %2750 = load i32, i32* %2749
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_40120f, %struct.Memory** %MEMORY
  %loadMem_401212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 1
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %2757 to i32*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2758, i64 0, i64 1
  %YMM1.i275 = bitcast %union.VectorReg* %2759 to %"class.std::bitset"*
  %2760 = bitcast %"class.std::bitset"* %YMM1.i275 to i8*
  %2761 = load i32, i32* %EAX.i274
  %2762 = zext i32 %2761 to i64
  %2763 = load i64, i64* %PC.i273
  %2764 = add i64 %2763, 4
  store i64 %2764, i64* %PC.i273
  %2765 = sitofp i32 %2761 to double
  %2766 = bitcast i8* %2760 to double*
  store double %2765, double* %2766, align 1
  store %struct.Memory* %loadMem_401212, %struct.Memory** %MEMORY
  %loadMem_401216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 1
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 15
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %2775 to i64*
  %2776 = load i64, i64* %RBP.i272
  %2777 = sub i64 %2776, 88
  %2778 = load i64, i64* %PC.i270
  %2779 = add i64 %2778, 3
  store i64 %2779, i64* %PC.i270
  %2780 = inttoptr i64 %2777 to i32*
  %2781 = load i32, i32* %2780
  %2782 = zext i32 %2781 to i64
  store i64 %2782, i64* %RAX.i271, align 8
  store %struct.Memory* %loadMem_401216, %struct.Memory** %MEMORY
  %loadMem_401219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 1
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %2788 to i64*
  %2789 = load i64, i64* %RAX.i269
  %2790 = load i64, i64* %PC.i268
  %2791 = add i64 %2790, 3
  store i64 %2791, i64* %PC.i268
  %2792 = trunc i64 %2789 to i32
  %2793 = add i32 2, %2792
  %2794 = zext i32 %2793 to i64
  store i64 %2794, i64* %RAX.i269, align 8
  %2795 = icmp ult i32 %2793, %2792
  %2796 = icmp ult i32 %2793, 2
  %2797 = or i1 %2795, %2796
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2798, i8* %2799, align 1
  %2800 = and i32 %2793, 255
  %2801 = call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2804, i8* %2805, align 1
  %2806 = xor i64 2, %2789
  %2807 = trunc i64 %2806 to i32
  %2808 = xor i32 %2807, %2793
  %2809 = lshr i32 %2808, 4
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2811, i8* %2812, align 1
  %2813 = icmp eq i32 %2793, 0
  %2814 = zext i1 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2814, i8* %2815, align 1
  %2816 = lshr i32 %2793, 31
  %2817 = trunc i32 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2817, i8* %2818, align 1
  %2819 = lshr i32 %2792, 31
  %2820 = xor i32 %2816, %2819
  %2821 = add i32 %2820, %2816
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2823, i8* %2824, align 1
  store %struct.Memory* %loadMem_401219, %struct.Memory** %MEMORY
  %loadMem_40121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %2830 to i32*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2831, i64 0, i64 2
  %YMM2.i267 = bitcast %union.VectorReg* %2832 to %"class.std::bitset"*
  %2833 = bitcast %"class.std::bitset"* %YMM2.i267 to i8*
  %2834 = load i32, i32* %EAX.i266
  %2835 = zext i32 %2834 to i64
  %2836 = load i64, i64* %PC.i265
  %2837 = add i64 %2836, 4
  store i64 %2837, i64* %PC.i265
  %2838 = sitofp i32 %2834 to double
  %2839 = bitcast i8* %2833 to double*
  store double %2838, double* %2839, align 1
  store %struct.Memory* %loadMem_40121c, %struct.Memory** %MEMORY
  %loadMem_401220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2843, i64 0, i64 1
  %YMM1.i263 = bitcast %union.VectorReg* %2844 to %"class.std::bitset"*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2846 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2845, i64 0, i64 2
  %XMM2.i264 = bitcast %union.VectorReg* %2846 to %union.vec128_t*
  %2847 = bitcast %"class.std::bitset"* %YMM1.i263 to i8*
  %2848 = bitcast %"class.std::bitset"* %YMM1.i263 to i8*
  %2849 = bitcast %union.vec128_t* %XMM2.i264 to i8*
  %2850 = load i64, i64* %PC.i262
  %2851 = add i64 %2850, 4
  store i64 %2851, i64* %PC.i262
  %2852 = bitcast i8* %2848 to double*
  %2853 = load double, double* %2852, align 1
  %2854 = getelementptr inbounds i8, i8* %2848, i64 8
  %2855 = bitcast i8* %2854 to i64*
  %2856 = load i64, i64* %2855, align 1
  %2857 = bitcast i8* %2849 to double*
  %2858 = load double, double* %2857, align 1
  %2859 = fmul double %2853, %2858
  %2860 = bitcast i8* %2847 to double*
  store double %2859, double* %2860, align 1
  %2861 = getelementptr inbounds i8, i8* %2847, i64 8
  %2862 = bitcast i8* %2861 to i64*
  store i64 %2856, i64* %2862, align 1
  store %struct.Memory* %loadMem_401220, %struct.Memory** %MEMORY
  %loadMem_401224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2866, i64 0, i64 1
  %YMM1.i260 = bitcast %union.VectorReg* %2867 to %"class.std::bitset"*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2868, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %2869 to %union.vec128_t*
  %2870 = bitcast %"class.std::bitset"* %YMM1.i260 to i8*
  %2871 = bitcast %"class.std::bitset"* %YMM1.i260 to i8*
  %2872 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %2873 = load i64, i64* %PC.i259
  %2874 = add i64 %2873, 4
  store i64 %2874, i64* %PC.i259
  %2875 = bitcast i8* %2871 to double*
  %2876 = load double, double* %2875, align 1
  %2877 = getelementptr inbounds i8, i8* %2871, i64 8
  %2878 = bitcast i8* %2877 to i64*
  %2879 = load i64, i64* %2878, align 1
  %2880 = bitcast i8* %2872 to double*
  %2881 = load double, double* %2880, align 1
  %2882 = fadd double %2876, %2881
  %2883 = bitcast i8* %2870 to double*
  store double %2882, double* %2883, align 1
  %2884 = getelementptr inbounds i8, i8* %2870, i64 8
  %2885 = bitcast i8* %2884 to i64*
  store i64 %2879, i64* %2885, align 1
  store %struct.Memory* %loadMem_401224, %struct.Memory** %MEMORY
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 1
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 15
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %RBP.i258
  %2896 = sub i64 %2895, 52
  %2897 = load i64, i64* %PC.i256
  %2898 = add i64 %2897, 3
  store i64 %2898, i64* %PC.i256
  %2899 = inttoptr i64 %2896 to i32*
  %2900 = load i32, i32* %2899
  %2901 = zext i32 %2900 to i64
  store i64 %2901, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 1
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %EAX.i254 = bitcast %union.anon* %2907 to i32*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2909 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2908, i64 0, i64 0
  %YMM0.i255 = bitcast %union.VectorReg* %2909 to %"class.std::bitset"*
  %2910 = bitcast %"class.std::bitset"* %YMM0.i255 to i8*
  %2911 = load i32, i32* %EAX.i254
  %2912 = zext i32 %2911 to i64
  %2913 = load i64, i64* %PC.i253
  %2914 = add i64 %2913, 4
  store i64 %2914, i64* %PC.i253
  %2915 = sitofp i32 %2911 to double
  %2916 = bitcast i8* %2910 to double*
  store double %2915, double* %2916, align 1
  store %struct.Memory* %loadMem_40122b, %struct.Memory** %MEMORY
  %loadMem_40122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2920, i64 0, i64 1
  %YMM1.i251 = bitcast %union.VectorReg* %2921 to %"class.std::bitset"*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2922, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %2923 to %union.vec128_t*
  %2924 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %2925 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %2926 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %2927 = load i64, i64* %PC.i250
  %2928 = add i64 %2927, 4
  store i64 %2928, i64* %PC.i250
  %2929 = bitcast i8* %2925 to double*
  %2930 = load double, double* %2929, align 1
  %2931 = getelementptr inbounds i8, i8* %2925, i64 8
  %2932 = bitcast i8* %2931 to i64*
  %2933 = load i64, i64* %2932, align 1
  %2934 = bitcast i8* %2926 to double*
  %2935 = load double, double* %2934, align 1
  %2936 = fdiv double %2930, %2935
  %2937 = bitcast i8* %2924 to double*
  store double %2936, double* %2937, align 1
  %2938 = getelementptr inbounds i8, i8* %2924, i64 8
  %2939 = bitcast i8* %2938 to i64*
  store i64 %2933, i64* %2939, align 1
  store %struct.Memory* %loadMem_40122f, %struct.Memory** %MEMORY
  %loadMem_401233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 5
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 15
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %RBP.i249
  %2950 = sub i64 %2949, 80
  %2951 = load i64, i64* %PC.i247
  %2952 = add i64 %2951, 4
  store i64 %2952, i64* %PC.i247
  %2953 = inttoptr i64 %2950 to i64*
  %2954 = load i64, i64* %2953
  store i64 %2954, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_401233, %struct.Memory** %MEMORY
  %loadMem_401237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 7
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RBP.i246
  %2965 = sub i64 %2964, 84
  %2966 = load i64, i64* %PC.i244
  %2967 = add i64 %2966, 4
  store i64 %2967, i64* %PC.i244
  %2968 = inttoptr i64 %2965 to i32*
  %2969 = load i32, i32* %2968
  %2970 = sext i32 %2969 to i64
  store i64 %2970, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_401237, %struct.Memory** %MEMORY
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 7
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RDX.i243
  %2978 = load i64, i64* %PC.i242
  %2979 = add i64 %2978, 7
  store i64 %2979, i64* %PC.i242
  %2980 = sext i64 %2977 to i128
  %2981 = and i128 %2980, -18446744073709551616
  %2982 = zext i64 %2977 to i128
  %2983 = or i128 %2981, %2982
  %2984 = mul i128 520, %2983
  %2985 = trunc i128 %2984 to i64
  store i64 %2985, i64* %RDX.i243, align 8
  %2986 = sext i64 %2985 to i128
  %2987 = icmp ne i128 %2986, %2984
  %2988 = zext i1 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2988, i8* %2989, align 1
  %2990 = trunc i128 %2984 to i32
  %2991 = and i32 %2990, 255
  %2992 = call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2995, i8* %2996, align 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2997, align 1
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2998, align 1
  %2999 = lshr i64 %2985, 63
  %3000 = trunc i64 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3000, i8* %3001, align 1
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2988, i8* %3002, align 1
  store %struct.Memory* %loadMem_40123b, %struct.Memory** %MEMORY
  %loadMem_401242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 5
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 7
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RCX.i240
  %3013 = load i64, i64* %RDX.i241
  %3014 = load i64, i64* %PC.i239
  %3015 = add i64 %3014, 3
  store i64 %3015, i64* %PC.i239
  %3016 = add i64 %3013, %3012
  store i64 %3016, i64* %RCX.i240, align 8
  %3017 = icmp ult i64 %3016, %3012
  %3018 = icmp ult i64 %3016, %3013
  %3019 = or i1 %3017, %3018
  %3020 = zext i1 %3019 to i8
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3020, i8* %3021, align 1
  %3022 = trunc i64 %3016 to i32
  %3023 = and i32 %3022, 255
  %3024 = call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3027, i8* %3028, align 1
  %3029 = xor i64 %3013, %3012
  %3030 = xor i64 %3029, %3016
  %3031 = lshr i64 %3030, 4
  %3032 = trunc i64 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3033, i8* %3034, align 1
  %3035 = icmp eq i64 %3016, 0
  %3036 = zext i1 %3035 to i8
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3036, i8* %3037, align 1
  %3038 = lshr i64 %3016, 63
  %3039 = trunc i64 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3039, i8* %3040, align 1
  %3041 = lshr i64 %3012, 63
  %3042 = lshr i64 %3013, 63
  %3043 = xor i64 %3038, %3041
  %3044 = xor i64 %3038, %3042
  %3045 = add i64 %3043, %3044
  %3046 = icmp eq i64 %3045, 2
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3047, i8* %3048, align 1
  store %struct.Memory* %loadMem_401242, %struct.Memory** %MEMORY
  %loadMem_401245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 7
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 15
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3057 to i64*
  %3058 = load i64, i64* %RBP.i238
  %3059 = sub i64 %3058, 88
  %3060 = load i64, i64* %PC.i236
  %3061 = add i64 %3060, 4
  store i64 %3061, i64* %PC.i236
  %3062 = inttoptr i64 %3059 to i32*
  %3063 = load i32, i32* %3062
  %3064 = sext i32 %3063 to i64
  store i64 %3064, i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_401245, %struct.Memory** %MEMORY
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 5
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 7
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RDX.i234 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3075 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3074, i64 0, i64 1
  %XMM1.i235 = bitcast %union.VectorReg* %3075 to %union.vec128_t*
  %3076 = load i64, i64* %RCX.i233
  %3077 = load i64, i64* %RDX.i234
  %3078 = mul i64 %3077, 8
  %3079 = add i64 %3078, %3076
  %3080 = bitcast %union.vec128_t* %XMM1.i235 to i8*
  %3081 = load i64, i64* %PC.i232
  %3082 = add i64 %3081, 5
  store i64 %3082, i64* %PC.i232
  %3083 = bitcast i8* %3080 to double*
  %3084 = load double, double* %3083, align 1
  %3085 = inttoptr i64 %3079 to double*
  store double %3084, double* %3085
  store %struct.Memory* %loadMem_401249, %struct.Memory** %MEMORY
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 15
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %RBP.i231
  %3093 = sub i64 %3092, 92
  %3094 = load i64, i64* %PC.i230
  %3095 = add i64 %3094, 7
  store i64 %3095, i64* %PC.i230
  %3096 = inttoptr i64 %3093 to i32*
  store i32 0, i32* %3096
  store %struct.Memory* %loadMem_40124e, %struct.Memory** %MEMORY
  br label %block_.L_401255

block_.L_401255:                                  ; preds = %block_401261, %block_4011c0
  %loadMem_401255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 15
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %3105 to i64*
  %3106 = load i64, i64* %RBP.i229
  %3107 = sub i64 %3106, 92
  %3108 = load i64, i64* %PC.i227
  %3109 = add i64 %3108, 3
  store i64 %3109, i64* %PC.i227
  %3110 = inttoptr i64 %3107 to i32*
  %3111 = load i32, i32* %3110
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_401255, %struct.Memory** %MEMORY
  %loadMem_401258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 1
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %EAX.i225 = bitcast %union.anon* %3118 to i32*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 15
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3121 to i64*
  %3122 = load i32, i32* %EAX.i225
  %3123 = zext i32 %3122 to i64
  %3124 = load i64, i64* %RBP.i226
  %3125 = sub i64 %3124, 48
  %3126 = load i64, i64* %PC.i224
  %3127 = add i64 %3126, 3
  store i64 %3127, i64* %PC.i224
  %3128 = inttoptr i64 %3125 to i32*
  %3129 = load i32, i32* %3128
  %3130 = sub i32 %3122, %3129
  %3131 = icmp ult i32 %3122, %3129
  %3132 = zext i1 %3131 to i8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3132, i8* %3133, align 1
  %3134 = and i32 %3130, 255
  %3135 = call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3138, i8* %3139, align 1
  %3140 = xor i32 %3129, %3122
  %3141 = xor i32 %3140, %3130
  %3142 = lshr i32 %3141, 4
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3144, i8* %3145, align 1
  %3146 = icmp eq i32 %3130, 0
  %3147 = zext i1 %3146 to i8
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3147, i8* %3148, align 1
  %3149 = lshr i32 %3130, 31
  %3150 = trunc i32 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3150, i8* %3151, align 1
  %3152 = lshr i32 %3122, 31
  %3153 = lshr i32 %3129, 31
  %3154 = xor i32 %3153, %3152
  %3155 = xor i32 %3149, %3152
  %3156 = add i32 %3155, %3154
  %3157 = icmp eq i32 %3156, 2
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3158, i8* %3159, align 1
  store %struct.Memory* %loadMem_401258, %struct.Memory** %MEMORY
  %loadMem_40125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %PC.i223
  %3164 = add i64 %3163, 308
  %3165 = load i64, i64* %PC.i223
  %3166 = add i64 %3165, 6
  %3167 = load i64, i64* %PC.i223
  %3168 = add i64 %3167, 6
  store i64 %3168, i64* %PC.i223
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3170 = load i8, i8* %3169, align 1
  %3171 = icmp eq i8 %3170, 0
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3173 = load i8, i8* %3172, align 1
  %3174 = icmp ne i8 %3173, 0
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3176 = load i8, i8* %3175, align 1
  %3177 = icmp ne i8 %3176, 0
  %3178 = xor i1 %3174, %3177
  %3179 = xor i1 %3178, true
  %3180 = and i1 %3171, %3179
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %BRANCH_TAKEN, align 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3183 = select i1 %3180, i64 %3164, i64 %3166
  store i64 %3183, i64* %3182, align 8
  store %struct.Memory* %loadMem_40125b, %struct.Memory** %MEMORY
  %loadBr_40125b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40125b = icmp eq i8 %loadBr_40125b, 1
  br i1 %cmpBr_40125b, label %block_.L_40138f, label %block_401261

block_401261:                                     ; preds = %block_.L_401255
  %loadMem_401261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3187, i64 0, i64 0
  %YMM0.i222 = bitcast %union.VectorReg* %3188 to %"class.std::bitset"*
  %3189 = bitcast %"class.std::bitset"* %YMM0.i222 to i8*
  %3190 = load i64, i64* %PC.i221
  %3191 = load i64, i64* %PC.i221
  %3192 = add i64 %3191, 8
  store i64 %3192, i64* %PC.i221
  %3193 = load double, double* bitcast (%G_0x1c3f__rip__4199017__type* @G_0x1c3f__rip__4199017_ to double*)
  %3194 = bitcast i8* %3189 to double*
  store double %3193, double* %3194, align 1
  %3195 = getelementptr inbounds i8, i8* %3189, i64 8
  %3196 = bitcast i8* %3195 to double*
  store double 0.000000e+00, double* %3196, align 1
  store %struct.Memory* %loadMem_401261, %struct.Memory** %MEMORY
  %loadMem_401269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 33
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3200, i64 0, i64 1
  %YMM1.i220 = bitcast %union.VectorReg* %3201 to %"class.std::bitset"*
  %3202 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %3203 = load i64, i64* %PC.i219
  %3204 = load i64, i64* %PC.i219
  %3205 = add i64 %3204, 8
  store i64 %3205, i64* %PC.i219
  %3206 = load double, double* bitcast (%G_0x1c3f__rip__4199025__type* @G_0x1c3f__rip__4199025_ to double*)
  %3207 = bitcast i8* %3202 to double*
  store double %3206, double* %3207, align 1
  %3208 = getelementptr inbounds i8, i8* %3202, i64 8
  %3209 = bitcast i8* %3208 to double*
  store double 0.000000e+00, double* %3209, align 1
  store %struct.Memory* %loadMem_401269, %struct.Memory** %MEMORY
  %loadMem_401271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3213, i64 0, i64 2
  %YMM2.i218 = bitcast %union.VectorReg* %3214 to %"class.std::bitset"*
  %3215 = bitcast %"class.std::bitset"* %YMM2.i218 to i8*
  %3216 = load i64, i64* %PC.i217
  %3217 = load i64, i64* %PC.i217
  %3218 = add i64 %3217, 8
  store i64 %3218, i64* %PC.i217
  %3219 = load double, double* bitcast (%G_0x1c3f__rip__4199033__type* @G_0x1c3f__rip__4199033_ to double*)
  %3220 = bitcast i8* %3215 to double*
  store double %3219, double* %3220, align 1
  %3221 = getelementptr inbounds i8, i8* %3215, i64 8
  %3222 = bitcast i8* %3221 to double*
  store double 0.000000e+00, double* %3222, align 1
  store %struct.Memory* %loadMem_401271, %struct.Memory** %MEMORY
  %loadMem_401279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3225 to i64*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 1
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 15
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %RBP.i216
  %3233 = sub i64 %3232, 84
  %3234 = load i64, i64* %PC.i214
  %3235 = add i64 %3234, 3
  store i64 %3235, i64* %PC.i214
  %3236 = inttoptr i64 %3233 to i32*
  %3237 = load i32, i32* %3236
  %3238 = zext i32 %3237 to i64
  store i64 %3238, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_401279, %struct.Memory** %MEMORY
  %loadMem_40127c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 1
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %3244 to i32*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3245, i64 0, i64 3
  %YMM3.i213 = bitcast %union.VectorReg* %3246 to %"class.std::bitset"*
  %3247 = bitcast %"class.std::bitset"* %YMM3.i213 to i8*
  %3248 = load i32, i32* %EAX.i212
  %3249 = zext i32 %3248 to i64
  %3250 = load i64, i64* %PC.i211
  %3251 = add i64 %3250, 4
  store i64 %3251, i64* %PC.i211
  %3252 = sitofp i32 %3248 to double
  %3253 = bitcast i8* %3247 to double*
  store double %3252, double* %3253, align 1
  store %struct.Memory* %loadMem_40127c, %struct.Memory** %MEMORY
  %loadMem_401280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 1
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 15
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3262 to i64*
  %3263 = load i64, i64* %RBP.i210
  %3264 = sub i64 %3263, 88
  %3265 = load i64, i64* %PC.i208
  %3266 = add i64 %3265, 3
  store i64 %3266, i64* %PC.i208
  %3267 = inttoptr i64 %3264 to i32*
  %3268 = load i32, i32* %3267
  %3269 = zext i32 %3268 to i64
  store i64 %3269, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_401280, %struct.Memory** %MEMORY
  %loadMem_401283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 1
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RAX.i207
  %3277 = load i64, i64* %PC.i206
  %3278 = add i64 %3277, 3
  store i64 %3278, i64* %PC.i206
  %3279 = trunc i64 %3276 to i32
  %3280 = add i32 3, %3279
  %3281 = zext i32 %3280 to i64
  store i64 %3281, i64* %RAX.i207, align 8
  %3282 = icmp ult i32 %3280, %3279
  %3283 = icmp ult i32 %3280, 3
  %3284 = or i1 %3282, %3283
  %3285 = zext i1 %3284 to i8
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3285, i8* %3286, align 1
  %3287 = and i32 %3280, 255
  %3288 = call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3291, i8* %3292, align 1
  %3293 = xor i64 3, %3276
  %3294 = trunc i64 %3293 to i32
  %3295 = xor i32 %3294, %3280
  %3296 = lshr i32 %3295, 4
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3298, i8* %3299, align 1
  %3300 = icmp eq i32 %3280, 0
  %3301 = zext i1 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3301, i8* %3302, align 1
  %3303 = lshr i32 %3280, 31
  %3304 = trunc i32 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3304, i8* %3305, align 1
  %3306 = lshr i32 %3279, 31
  %3307 = xor i32 %3303, %3306
  %3308 = add i32 %3307, %3303
  %3309 = icmp eq i32 %3308, 2
  %3310 = zext i1 %3309 to i8
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3310, i8* %3311, align 1
  store %struct.Memory* %loadMem_401283, %struct.Memory** %MEMORY
  %loadMem_401286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %3317 to i32*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3318, i64 0, i64 4
  %YMM4.i205 = bitcast %union.VectorReg* %3319 to %"class.std::bitset"*
  %3320 = bitcast %"class.std::bitset"* %YMM4.i205 to i8*
  %3321 = load i32, i32* %EAX.i204
  %3322 = zext i32 %3321 to i64
  %3323 = load i64, i64* %PC.i203
  %3324 = add i64 %3323, 4
  store i64 %3324, i64* %PC.i203
  %3325 = sitofp i32 %3321 to double
  %3326 = bitcast i8* %3320 to double*
  store double %3325, double* %3326, align 1
  store %struct.Memory* %loadMem_401286, %struct.Memory** %MEMORY
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3330, i64 0, i64 3
  %YMM3.i201 = bitcast %union.VectorReg* %3331 to %"class.std::bitset"*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3332, i64 0, i64 4
  %XMM4.i202 = bitcast %union.VectorReg* %3333 to %union.vec128_t*
  %3334 = bitcast %"class.std::bitset"* %YMM3.i201 to i8*
  %3335 = bitcast %"class.std::bitset"* %YMM3.i201 to i8*
  %3336 = bitcast %union.vec128_t* %XMM4.i202 to i8*
  %3337 = load i64, i64* %PC.i200
  %3338 = add i64 %3337, 4
  store i64 %3338, i64* %PC.i200
  %3339 = bitcast i8* %3335 to double*
  %3340 = load double, double* %3339, align 1
  %3341 = getelementptr inbounds i8, i8* %3335, i64 8
  %3342 = bitcast i8* %3341 to i64*
  %3343 = load i64, i64* %3342, align 1
  %3344 = bitcast i8* %3336 to double*
  %3345 = load double, double* %3344, align 1
  %3346 = fmul double %3340, %3345
  %3347 = bitcast i8* %3334 to double*
  store double %3346, double* %3347, align 1
  %3348 = getelementptr inbounds i8, i8* %3334, i64 8
  %3349 = bitcast i8* %3348 to i64*
  store i64 %3343, i64* %3349, align 1
  store %struct.Memory* %loadMem_40128a, %struct.Memory** %MEMORY
  %loadMem_40128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 1
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 15
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3358 to i64*
  %3359 = load i64, i64* %RBP.i199
  %3360 = sub i64 %3359, 92
  %3361 = load i64, i64* %PC.i197
  %3362 = add i64 %3361, 3
  store i64 %3362, i64* %PC.i197
  %3363 = inttoptr i64 %3360 to i32*
  %3364 = load i32, i32* %3363
  %3365 = zext i32 %3364 to i64
  store i64 %3365, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_40128e, %struct.Memory** %MEMORY
  %loadMem_401291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 1
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %3371 to i32*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3372, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %3373 to %"class.std::bitset"*
  %3374 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %3375 = load i32, i32* %EAX.i196
  %3376 = zext i32 %3375 to i64
  %3377 = load i64, i64* %PC.i195
  %3378 = add i64 %3377, 4
  store i64 %3378, i64* %PC.i195
  %3379 = sitofp i32 %3375 to double
  %3380 = bitcast i8* %3374 to double*
  store double %3379, double* %3380, align 1
  store %struct.Memory* %loadMem_401291, %struct.Memory** %MEMORY
  %loadMem_401295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3384, i64 0, i64 3
  %YMM3.i194 = bitcast %union.VectorReg* %3385 to %"class.std::bitset"*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3386, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %3387 to %union.vec128_t*
  %3388 = bitcast %"class.std::bitset"* %YMM3.i194 to i8*
  %3389 = bitcast %"class.std::bitset"* %YMM3.i194 to i8*
  %3390 = bitcast %union.vec128_t* %XMM4.i to i8*
  %3391 = load i64, i64* %PC.i193
  %3392 = add i64 %3391, 4
  store i64 %3392, i64* %PC.i193
  %3393 = bitcast i8* %3389 to double*
  %3394 = load double, double* %3393, align 1
  %3395 = getelementptr inbounds i8, i8* %3389, i64 8
  %3396 = bitcast i8* %3395 to i64*
  %3397 = load i64, i64* %3396, align 1
  %3398 = bitcast i8* %3390 to double*
  %3399 = load double, double* %3398, align 1
  %3400 = fadd double %3394, %3399
  %3401 = bitcast i8* %3388 to double*
  store double %3400, double* %3401, align 1
  %3402 = getelementptr inbounds i8, i8* %3388, i64 8
  %3403 = bitcast i8* %3402 to i64*
  store i64 %3397, i64* %3403, align 1
  store %struct.Memory* %loadMem_401295, %struct.Memory** %MEMORY
  %loadMem_401299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3407, i64 0, i64 3
  %YMM3.i191 = bitcast %union.VectorReg* %3408 to %"class.std::bitset"*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3409, i64 0, i64 2
  %XMM2.i192 = bitcast %union.VectorReg* %3410 to %union.vec128_t*
  %3411 = bitcast %"class.std::bitset"* %YMM3.i191 to i8*
  %3412 = bitcast %"class.std::bitset"* %YMM3.i191 to i8*
  %3413 = bitcast %union.vec128_t* %XMM2.i192 to i8*
  %3414 = load i64, i64* %PC.i190
  %3415 = add i64 %3414, 4
  store i64 %3415, i64* %PC.i190
  %3416 = bitcast i8* %3412 to double*
  %3417 = load double, double* %3416, align 1
  %3418 = getelementptr inbounds i8, i8* %3412, i64 8
  %3419 = bitcast i8* %3418 to i64*
  %3420 = load i64, i64* %3419, align 1
  %3421 = bitcast i8* %3413 to double*
  %3422 = load double, double* %3421, align 1
  %3423 = fadd double %3417, %3422
  %3424 = bitcast i8* %3411 to double*
  store double %3423, double* %3424, align 1
  %3425 = getelementptr inbounds i8, i8* %3411, i64 8
  %3426 = bitcast i8* %3425 to i64*
  store i64 %3420, i64* %3426, align 1
  store %struct.Memory* %loadMem_401299, %struct.Memory** %MEMORY
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 1
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %3432 to i64*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 15
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3435 to i64*
  %3436 = load i64, i64* %RBP.i189
  %3437 = sub i64 %3436, 48
  %3438 = load i64, i64* %PC.i187
  %3439 = add i64 %3438, 3
  store i64 %3439, i64* %PC.i187
  %3440 = inttoptr i64 %3437 to i32*
  %3441 = load i32, i32* %3440
  %3442 = zext i32 %3441 to i64
  store i64 %3442, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_40129d, %struct.Memory** %MEMORY
  %loadMem_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %3448 to i32*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3449, i64 0, i64 2
  %YMM2.i186 = bitcast %union.VectorReg* %3450 to %"class.std::bitset"*
  %3451 = bitcast %"class.std::bitset"* %YMM2.i186 to i8*
  %3452 = load i32, i32* %EAX.i185
  %3453 = zext i32 %3452 to i64
  %3454 = load i64, i64* %PC.i184
  %3455 = add i64 %3454, 4
  store i64 %3455, i64* %PC.i184
  %3456 = sitofp i32 %3452 to double
  %3457 = bitcast i8* %3451 to double*
  store double %3456, double* %3457, align 1
  store %struct.Memory* %loadMem_4012a0, %struct.Memory** %MEMORY
  %loadMem_4012a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3461, i64 0, i64 3
  %YMM3.i182 = bitcast %union.VectorReg* %3462 to %"class.std::bitset"*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3463, i64 0, i64 2
  %XMM2.i183 = bitcast %union.VectorReg* %3464 to %union.vec128_t*
  %3465 = bitcast %"class.std::bitset"* %YMM3.i182 to i8*
  %3466 = bitcast %"class.std::bitset"* %YMM3.i182 to i8*
  %3467 = bitcast %union.vec128_t* %XMM2.i183 to i8*
  %3468 = load i64, i64* %PC.i181
  %3469 = add i64 %3468, 4
  store i64 %3469, i64* %PC.i181
  %3470 = bitcast i8* %3466 to double*
  %3471 = load double, double* %3470, align 1
  %3472 = getelementptr inbounds i8, i8* %3466, i64 8
  %3473 = bitcast i8* %3472 to i64*
  %3474 = load i64, i64* %3473, align 1
  %3475 = bitcast i8* %3467 to double*
  %3476 = load double, double* %3475, align 1
  %3477 = fdiv double %3471, %3476
  %3478 = bitcast i8* %3465 to double*
  store double %3477, double* %3478, align 1
  %3479 = getelementptr inbounds i8, i8* %3465, i64 8
  %3480 = bitcast i8* %3479 to i64*
  store i64 %3474, i64* %3480, align 1
  store %struct.Memory* %loadMem_4012a4, %struct.Memory** %MEMORY
  %loadMem_4012a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 5
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 15
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RBP.i180
  %3491 = add i64 %3490, 24
  %3492 = load i64, i64* %PC.i178
  %3493 = add i64 %3492, 4
  store i64 %3493, i64* %PC.i178
  %3494 = inttoptr i64 %3491 to i64*
  %3495 = load i64, i64* %3494
  store i64 %3495, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_4012a8, %struct.Memory** %MEMORY
  %loadMem_4012ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 7
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 15
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RBP.i177
  %3506 = sub i64 %3505, 84
  %3507 = load i64, i64* %PC.i175
  %3508 = add i64 %3507, 4
  store i64 %3508, i64* %PC.i175
  %3509 = inttoptr i64 %3506 to i32*
  %3510 = load i32, i32* %3509
  %3511 = sext i32 %3510 to i64
  store i64 %3511, i64* %RDX.i176, align 8
  store %struct.Memory* %loadMem_4012ac, %struct.Memory** %MEMORY
  %loadMem_4012b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 7
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RDX.i174
  %3519 = load i64, i64* %PC.i173
  %3520 = add i64 %3519, 7
  store i64 %3520, i64* %PC.i173
  %3521 = sext i64 %3518 to i128
  %3522 = and i128 %3521, -18446744073709551616
  %3523 = zext i64 %3518 to i128
  %3524 = or i128 %3522, %3523
  %3525 = mul i128 33800, %3524
  %3526 = trunc i128 %3525 to i64
  store i64 %3526, i64* %RDX.i174, align 8
  %3527 = sext i64 %3526 to i128
  %3528 = icmp ne i128 %3527, %3525
  %3529 = zext i1 %3528 to i8
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3529, i8* %3530, align 1
  %3531 = trunc i128 %3525 to i32
  %3532 = and i32 %3531, 255
  %3533 = call i32 @llvm.ctpop.i32(i32 %3532)
  %3534 = trunc i32 %3533 to i8
  %3535 = and i8 %3534, 1
  %3536 = xor i8 %3535, 1
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3536, i8* %3537, align 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3538, align 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3539, align 1
  %3540 = lshr i64 %3526, 63
  %3541 = trunc i64 %3540 to i8
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3541, i8* %3542, align 1
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3529, i8* %3543, align 1
  store %struct.Memory* %loadMem_4012b0, %struct.Memory** %MEMORY
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 5
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 7
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %RCX.i171
  %3554 = load i64, i64* %RDX.i172
  %3555 = load i64, i64* %PC.i170
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %PC.i170
  %3557 = add i64 %3554, %3553
  store i64 %3557, i64* %RCX.i171, align 8
  %3558 = icmp ult i64 %3557, %3553
  %3559 = icmp ult i64 %3557, %3554
  %3560 = or i1 %3558, %3559
  %3561 = zext i1 %3560 to i8
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3561, i8* %3562, align 1
  %3563 = trunc i64 %3557 to i32
  %3564 = and i32 %3563, 255
  %3565 = call i32 @llvm.ctpop.i32(i32 %3564)
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = xor i8 %3567, 1
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3568, i8* %3569, align 1
  %3570 = xor i64 %3554, %3553
  %3571 = xor i64 %3570, %3557
  %3572 = lshr i64 %3571, 4
  %3573 = trunc i64 %3572 to i8
  %3574 = and i8 %3573, 1
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3574, i8* %3575, align 1
  %3576 = icmp eq i64 %3557, 0
  %3577 = zext i1 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3577, i8* %3578, align 1
  %3579 = lshr i64 %3557, 63
  %3580 = trunc i64 %3579 to i8
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3580, i8* %3581, align 1
  %3582 = lshr i64 %3553, 63
  %3583 = lshr i64 %3554, 63
  %3584 = xor i64 %3579, %3582
  %3585 = xor i64 %3579, %3583
  %3586 = add i64 %3584, %3585
  %3587 = icmp eq i64 %3586, 2
  %3588 = zext i1 %3587 to i8
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3588, i8* %3589, align 1
  store %struct.Memory* %loadMem_4012b7, %struct.Memory** %MEMORY
  %loadMem_4012ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 7
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i169
  %3600 = sub i64 %3599, 88
  %3601 = load i64, i64* %PC.i167
  %3602 = add i64 %3601, 4
  store i64 %3602, i64* %PC.i167
  %3603 = inttoptr i64 %3600 to i32*
  %3604 = load i32, i32* %3603
  %3605 = sext i32 %3604 to i64
  store i64 %3605, i64* %RDX.i168, align 8
  store %struct.Memory* %loadMem_4012ba, %struct.Memory** %MEMORY
  %loadMem_4012be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 7
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %3611 to i64*
  %3612 = load i64, i64* %RDX.i166
  %3613 = load i64, i64* %PC.i165
  %3614 = add i64 %3613, 7
  store i64 %3614, i64* %PC.i165
  %3615 = sext i64 %3612 to i128
  %3616 = and i128 %3615, -18446744073709551616
  %3617 = zext i64 %3612 to i128
  %3618 = or i128 %3616, %3617
  %3619 = mul i128 520, %3618
  %3620 = trunc i128 %3619 to i64
  store i64 %3620, i64* %RDX.i166, align 8
  %3621 = sext i64 %3620 to i128
  %3622 = icmp ne i128 %3621, %3619
  %3623 = zext i1 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3623, i8* %3624, align 1
  %3625 = trunc i128 %3619 to i32
  %3626 = and i32 %3625, 255
  %3627 = call i32 @llvm.ctpop.i32(i32 %3626)
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3630, i8* %3631, align 1
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3632, align 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3633, align 1
  %3634 = lshr i64 %3620, 63
  %3635 = trunc i64 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3635, i8* %3636, align 1
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3623, i8* %3637, align 1
  store %struct.Memory* %loadMem_4012be, %struct.Memory** %MEMORY
  %loadMem_4012c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 5
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 7
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %3646 to i64*
  %3647 = load i64, i64* %RCX.i163
  %3648 = load i64, i64* %RDX.i164
  %3649 = load i64, i64* %PC.i162
  %3650 = add i64 %3649, 3
  store i64 %3650, i64* %PC.i162
  %3651 = add i64 %3648, %3647
  store i64 %3651, i64* %RCX.i163, align 8
  %3652 = icmp ult i64 %3651, %3647
  %3653 = icmp ult i64 %3651, %3648
  %3654 = or i1 %3652, %3653
  %3655 = zext i1 %3654 to i8
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3655, i8* %3656, align 1
  %3657 = trunc i64 %3651 to i32
  %3658 = and i32 %3657, 255
  %3659 = call i32 @llvm.ctpop.i32(i32 %3658)
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3662, i8* %3663, align 1
  %3664 = xor i64 %3648, %3647
  %3665 = xor i64 %3664, %3651
  %3666 = lshr i64 %3665, 4
  %3667 = trunc i64 %3666 to i8
  %3668 = and i8 %3667, 1
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3668, i8* %3669, align 1
  %3670 = icmp eq i64 %3651, 0
  %3671 = zext i1 %3670 to i8
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3671, i8* %3672, align 1
  %3673 = lshr i64 %3651, 63
  %3674 = trunc i64 %3673 to i8
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3674, i8* %3675, align 1
  %3676 = lshr i64 %3647, 63
  %3677 = lshr i64 %3648, 63
  %3678 = xor i64 %3673, %3676
  %3679 = xor i64 %3673, %3677
  %3680 = add i64 %3678, %3679
  %3681 = icmp eq i64 %3680, 2
  %3682 = zext i1 %3681 to i8
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3682, i8* %3683, align 1
  store %struct.Memory* %loadMem_4012c5, %struct.Memory** %MEMORY
  %loadMem_4012c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 7
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 15
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RBP.i161
  %3694 = sub i64 %3693, 92
  %3695 = load i64, i64* %PC.i159
  %3696 = add i64 %3695, 4
  store i64 %3696, i64* %PC.i159
  %3697 = inttoptr i64 %3694 to i32*
  %3698 = load i32, i32* %3697
  %3699 = sext i32 %3698 to i64
  store i64 %3699, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_4012c8, %struct.Memory** %MEMORY
  %loadMem_4012cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 5
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 7
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3709, i64 0, i64 3
  %XMM3.i158 = bitcast %union.VectorReg* %3710 to %union.vec128_t*
  %3711 = load i64, i64* %RCX.i156
  %3712 = load i64, i64* %RDX.i157
  %3713 = mul i64 %3712, 8
  %3714 = add i64 %3713, %3711
  %3715 = bitcast %union.vec128_t* %XMM3.i158 to i8*
  %3716 = load i64, i64* %PC.i155
  %3717 = add i64 %3716, 5
  store i64 %3717, i64* %PC.i155
  %3718 = bitcast i8* %3715 to double*
  %3719 = load double, double* %3718, align 1
  %3720 = inttoptr i64 %3714 to double*
  store double %3719, double* %3720
  store %struct.Memory* %loadMem_4012cc, %struct.Memory** %MEMORY
  %loadMem_4012d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 33
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 1
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 15
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %3729 to i64*
  %3730 = load i64, i64* %RBP.i154
  %3731 = sub i64 %3730, 84
  %3732 = load i64, i64* %PC.i152
  %3733 = add i64 %3732, 3
  store i64 %3733, i64* %PC.i152
  %3734 = inttoptr i64 %3731 to i32*
  %3735 = load i32, i32* %3734
  %3736 = zext i32 %3735 to i64
  store i64 %3736, i64* %RAX.i153, align 8
  store %struct.Memory* %loadMem_4012d1, %struct.Memory** %MEMORY
  %loadMem_4012d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 1
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %3742 to i32*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3743, i64 0, i64 2
  %YMM2.i151 = bitcast %union.VectorReg* %3744 to %"class.std::bitset"*
  %3745 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %3746 = load i32, i32* %EAX.i150
  %3747 = zext i32 %3746 to i64
  %3748 = load i64, i64* %PC.i149
  %3749 = add i64 %3748, 4
  store i64 %3749, i64* %PC.i149
  %3750 = sitofp i32 %3746 to double
  %3751 = bitcast i8* %3745 to double*
  store double %3750, double* %3751, align 1
  store %struct.Memory* %loadMem_4012d4, %struct.Memory** %MEMORY
  %loadMem_4012d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 1
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 15
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %RBP.i148
  %3762 = sub i64 %3761, 88
  %3763 = load i64, i64* %PC.i146
  %3764 = add i64 %3763, 3
  store i64 %3764, i64* %PC.i146
  %3765 = inttoptr i64 %3762 to i32*
  %3766 = load i32, i32* %3765
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_4012d8, %struct.Memory** %MEMORY
  %loadMem_4012db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 1
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RAX.i145
  %3775 = load i64, i64* %PC.i144
  %3776 = add i64 %3775, 3
  store i64 %3776, i64* %PC.i144
  %3777 = trunc i64 %3774 to i32
  %3778 = add i32 4, %3777
  %3779 = zext i32 %3778 to i64
  store i64 %3779, i64* %RAX.i145, align 8
  %3780 = icmp ult i32 %3778, %3777
  %3781 = icmp ult i32 %3778, 4
  %3782 = or i1 %3780, %3781
  %3783 = zext i1 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3783, i8* %3784, align 1
  %3785 = and i32 %3778, 255
  %3786 = call i32 @llvm.ctpop.i32(i32 %3785)
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  %3789 = xor i8 %3788, 1
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3789, i8* %3790, align 1
  %3791 = xor i64 4, %3774
  %3792 = trunc i64 %3791 to i32
  %3793 = xor i32 %3792, %3778
  %3794 = lshr i32 %3793, 4
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3796, i8* %3797, align 1
  %3798 = icmp eq i32 %3778, 0
  %3799 = zext i1 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3799, i8* %3800, align 1
  %3801 = lshr i32 %3778, 31
  %3802 = trunc i32 %3801 to i8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3802, i8* %3803, align 1
  %3804 = lshr i32 %3777, 31
  %3805 = xor i32 %3801, %3804
  %3806 = add i32 %3805, %3801
  %3807 = icmp eq i32 %3806, 2
  %3808 = zext i1 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3808, i8* %3809, align 1
  store %struct.Memory* %loadMem_4012db, %struct.Memory** %MEMORY
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 1
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %EAX.i142 = bitcast %union.anon* %3815 to i32*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3817 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3816, i64 0, i64 3
  %YMM3.i143 = bitcast %union.VectorReg* %3817 to %"class.std::bitset"*
  %3818 = bitcast %"class.std::bitset"* %YMM3.i143 to i8*
  %3819 = load i32, i32* %EAX.i142
  %3820 = zext i32 %3819 to i64
  %3821 = load i64, i64* %PC.i141
  %3822 = add i64 %3821, 4
  store i64 %3822, i64* %PC.i141
  %3823 = sitofp i32 %3819 to double
  %3824 = bitcast i8* %3818 to double*
  store double %3823, double* %3824, align 1
  store %struct.Memory* %loadMem_4012de, %struct.Memory** %MEMORY
  %loadMem_4012e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 33
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3828, i64 0, i64 2
  %YMM2.i139 = bitcast %union.VectorReg* %3829 to %"class.std::bitset"*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3830, i64 0, i64 3
  %XMM3.i140 = bitcast %union.VectorReg* %3831 to %union.vec128_t*
  %3832 = bitcast %"class.std::bitset"* %YMM2.i139 to i8*
  %3833 = bitcast %"class.std::bitset"* %YMM2.i139 to i8*
  %3834 = bitcast %union.vec128_t* %XMM3.i140 to i8*
  %3835 = load i64, i64* %PC.i138
  %3836 = add i64 %3835, 4
  store i64 %3836, i64* %PC.i138
  %3837 = bitcast i8* %3833 to double*
  %3838 = load double, double* %3837, align 1
  %3839 = getelementptr inbounds i8, i8* %3833, i64 8
  %3840 = bitcast i8* %3839 to i64*
  %3841 = load i64, i64* %3840, align 1
  %3842 = bitcast i8* %3834 to double*
  %3843 = load double, double* %3842, align 1
  %3844 = fmul double %3838, %3843
  %3845 = bitcast i8* %3832 to double*
  store double %3844, double* %3845, align 1
  %3846 = getelementptr inbounds i8, i8* %3832, i64 8
  %3847 = bitcast i8* %3846 to i64*
  store i64 %3841, i64* %3847, align 1
  store %struct.Memory* %loadMem_4012e2, %struct.Memory** %MEMORY
  %loadMem_4012e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 1
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 15
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RBP.i137
  %3858 = sub i64 %3857, 92
  %3859 = load i64, i64* %PC.i135
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i135
  %3861 = inttoptr i64 %3858 to i32*
  %3862 = load i32, i32* %3861
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_4012e6, %struct.Memory** %MEMORY
  %loadMem_4012e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 1
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %3869 to i32*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3870, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %3871 to %"class.std::bitset"*
  %3872 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %3873 = load i32, i32* %EAX.i134
  %3874 = zext i32 %3873 to i64
  %3875 = load i64, i64* %PC.i133
  %3876 = add i64 %3875, 4
  store i64 %3876, i64* %PC.i133
  %3877 = sitofp i32 %3873 to double
  %3878 = bitcast i8* %3872 to double*
  store double %3877, double* %3878, align 1
  store %struct.Memory* %loadMem_4012e9, %struct.Memory** %MEMORY
  %loadMem_4012ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3883 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3882, i64 0, i64 2
  %YMM2.i132 = bitcast %union.VectorReg* %3883 to %"class.std::bitset"*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3884, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %3885 to %union.vec128_t*
  %3886 = bitcast %"class.std::bitset"* %YMM2.i132 to i8*
  %3887 = bitcast %"class.std::bitset"* %YMM2.i132 to i8*
  %3888 = bitcast %union.vec128_t* %XMM3.i to i8*
  %3889 = load i64, i64* %PC.i131
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %PC.i131
  %3891 = bitcast i8* %3887 to double*
  %3892 = load double, double* %3891, align 1
  %3893 = getelementptr inbounds i8, i8* %3887, i64 8
  %3894 = bitcast i8* %3893 to i64*
  %3895 = load i64, i64* %3894, align 1
  %3896 = bitcast i8* %3888 to double*
  %3897 = load double, double* %3896, align 1
  %3898 = fadd double %3892, %3897
  %3899 = bitcast i8* %3886 to double*
  store double %3898, double* %3899, align 1
  %3900 = getelementptr inbounds i8, i8* %3886, i64 8
  %3901 = bitcast i8* %3900 to i64*
  store i64 %3895, i64* %3901, align 1
  store %struct.Memory* %loadMem_4012ed, %struct.Memory** %MEMORY
  %loadMem_4012f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3905, i64 0, i64 2
  %YMM2.i129 = bitcast %union.VectorReg* %3906 to %"class.std::bitset"*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3907, i64 0, i64 1
  %XMM1.i130 = bitcast %union.VectorReg* %3908 to %union.vec128_t*
  %3909 = bitcast %"class.std::bitset"* %YMM2.i129 to i8*
  %3910 = bitcast %"class.std::bitset"* %YMM2.i129 to i8*
  %3911 = bitcast %union.vec128_t* %XMM1.i130 to i8*
  %3912 = load i64, i64* %PC.i128
  %3913 = add i64 %3912, 4
  store i64 %3913, i64* %PC.i128
  %3914 = bitcast i8* %3910 to double*
  %3915 = load double, double* %3914, align 1
  %3916 = getelementptr inbounds i8, i8* %3910, i64 8
  %3917 = bitcast i8* %3916 to i64*
  %3918 = load i64, i64* %3917, align 1
  %3919 = bitcast i8* %3911 to double*
  %3920 = load double, double* %3919, align 1
  %3921 = fadd double %3915, %3920
  %3922 = bitcast i8* %3909 to double*
  store double %3921, double* %3922, align 1
  %3923 = getelementptr inbounds i8, i8* %3909, i64 8
  %3924 = bitcast i8* %3923 to i64*
  store i64 %3918, i64* %3924, align 1
  store %struct.Memory* %loadMem_4012f1, %struct.Memory** %MEMORY
  %loadMem_4012f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3927 to i64*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 1
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 15
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %RBP.i127
  %3935 = sub i64 %3934, 52
  %3936 = load i64, i64* %PC.i125
  %3937 = add i64 %3936, 3
  store i64 %3937, i64* %PC.i125
  %3938 = inttoptr i64 %3935 to i32*
  %3939 = load i32, i32* %3938
  %3940 = zext i32 %3939 to i64
  store i64 %3940, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_4012f5, %struct.Memory** %MEMORY
  %loadMem_4012f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 1
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %3946 to i32*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3947, i64 0, i64 1
  %YMM1.i124 = bitcast %union.VectorReg* %3948 to %"class.std::bitset"*
  %3949 = bitcast %"class.std::bitset"* %YMM1.i124 to i8*
  %3950 = load i32, i32* %EAX.i123
  %3951 = zext i32 %3950 to i64
  %3952 = load i64, i64* %PC.i122
  %3953 = add i64 %3952, 4
  store i64 %3953, i64* %PC.i122
  %3954 = sitofp i32 %3950 to double
  %3955 = bitcast i8* %3949 to double*
  store double %3954, double* %3955, align 1
  store %struct.Memory* %loadMem_4012f8, %struct.Memory** %MEMORY
  %loadMem_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3959, i64 0, i64 2
  %YMM2.i120 = bitcast %union.VectorReg* %3960 to %"class.std::bitset"*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3961, i64 0, i64 1
  %XMM1.i121 = bitcast %union.VectorReg* %3962 to %union.vec128_t*
  %3963 = bitcast %"class.std::bitset"* %YMM2.i120 to i8*
  %3964 = bitcast %"class.std::bitset"* %YMM2.i120 to i8*
  %3965 = bitcast %union.vec128_t* %XMM1.i121 to i8*
  %3966 = load i64, i64* %PC.i119
  %3967 = add i64 %3966, 4
  store i64 %3967, i64* %PC.i119
  %3968 = bitcast i8* %3964 to double*
  %3969 = load double, double* %3968, align 1
  %3970 = getelementptr inbounds i8, i8* %3964, i64 8
  %3971 = bitcast i8* %3970 to i64*
  %3972 = load i64, i64* %3971, align 1
  %3973 = bitcast i8* %3965 to double*
  %3974 = load double, double* %3973, align 1
  %3975 = fdiv double %3969, %3974
  %3976 = bitcast i8* %3963 to double*
  store double %3975, double* %3976, align 1
  %3977 = getelementptr inbounds i8, i8* %3963, i64 8
  %3978 = bitcast i8* %3977 to i64*
  store i64 %3972, i64* %3978, align 1
  store %struct.Memory* %loadMem_4012fc, %struct.Memory** %MEMORY
  %loadMem_401300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 5
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 15
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %3987 to i64*
  %3988 = load i64, i64* %RBP.i118
  %3989 = add i64 %3988, 32
  %3990 = load i64, i64* %PC.i116
  %3991 = add i64 %3990, 4
  store i64 %3991, i64* %PC.i116
  %3992 = inttoptr i64 %3989 to i64*
  %3993 = load i64, i64* %3992
  store i64 %3993, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_401300, %struct.Memory** %MEMORY
  %loadMem_401304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 33
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 7
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 15
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4002 to i64*
  %4003 = load i64, i64* %RBP.i115
  %4004 = sub i64 %4003, 84
  %4005 = load i64, i64* %PC.i113
  %4006 = add i64 %4005, 4
  store i64 %4006, i64* %PC.i113
  %4007 = inttoptr i64 %4004 to i32*
  %4008 = load i32, i32* %4007
  %4009 = sext i32 %4008 to i64
  store i64 %4009, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_401304, %struct.Memory** %MEMORY
  %loadMem_401308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 7
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %RDX.i112
  %4017 = load i64, i64* %PC.i111
  %4018 = add i64 %4017, 7
  store i64 %4018, i64* %PC.i111
  %4019 = sext i64 %4016 to i128
  %4020 = and i128 %4019, -18446744073709551616
  %4021 = zext i64 %4016 to i128
  %4022 = or i128 %4020, %4021
  %4023 = mul i128 33800, %4022
  %4024 = trunc i128 %4023 to i64
  store i64 %4024, i64* %RDX.i112, align 8
  %4025 = sext i64 %4024 to i128
  %4026 = icmp ne i128 %4025, %4023
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4027, i8* %4028, align 1
  %4029 = trunc i128 %4023 to i32
  %4030 = and i32 %4029, 255
  %4031 = call i32 @llvm.ctpop.i32(i32 %4030)
  %4032 = trunc i32 %4031 to i8
  %4033 = and i8 %4032, 1
  %4034 = xor i8 %4033, 1
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4034, i8* %4035, align 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4036, align 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4037, align 1
  %4038 = lshr i64 %4024, 63
  %4039 = trunc i64 %4038 to i8
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4039, i8* %4040, align 1
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4027, i8* %4041, align 1
  store %struct.Memory* %loadMem_401308, %struct.Memory** %MEMORY
  %loadMem_40130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 5
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 7
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RCX.i109
  %4052 = load i64, i64* %RDX.i110
  %4053 = load i64, i64* %PC.i108
  %4054 = add i64 %4053, 3
  store i64 %4054, i64* %PC.i108
  %4055 = add i64 %4052, %4051
  store i64 %4055, i64* %RCX.i109, align 8
  %4056 = icmp ult i64 %4055, %4051
  %4057 = icmp ult i64 %4055, %4052
  %4058 = or i1 %4056, %4057
  %4059 = zext i1 %4058 to i8
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4059, i8* %4060, align 1
  %4061 = trunc i64 %4055 to i32
  %4062 = and i32 %4061, 255
  %4063 = call i32 @llvm.ctpop.i32(i32 %4062)
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  %4066 = xor i8 %4065, 1
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4066, i8* %4067, align 1
  %4068 = xor i64 %4052, %4051
  %4069 = xor i64 %4068, %4055
  %4070 = lshr i64 %4069, 4
  %4071 = trunc i64 %4070 to i8
  %4072 = and i8 %4071, 1
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4072, i8* %4073, align 1
  %4074 = icmp eq i64 %4055, 0
  %4075 = zext i1 %4074 to i8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4075, i8* %4076, align 1
  %4077 = lshr i64 %4055, 63
  %4078 = trunc i64 %4077 to i8
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4078, i8* %4079, align 1
  %4080 = lshr i64 %4051, 63
  %4081 = lshr i64 %4052, 63
  %4082 = xor i64 %4077, %4080
  %4083 = xor i64 %4077, %4081
  %4084 = add i64 %4082, %4083
  %4085 = icmp eq i64 %4084, 2
  %4086 = zext i1 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4086, i8* %4087, align 1
  store %struct.Memory* %loadMem_40130f, %struct.Memory** %MEMORY
  %loadMem_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 33
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 7
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 15
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %4096 to i64*
  %4097 = load i64, i64* %RBP.i107
  %4098 = sub i64 %4097, 88
  %4099 = load i64, i64* %PC.i105
  %4100 = add i64 %4099, 4
  store i64 %4100, i64* %PC.i105
  %4101 = inttoptr i64 %4098 to i32*
  %4102 = load i32, i32* %4101
  %4103 = sext i32 %4102 to i64
  store i64 %4103, i64* %RDX.i106, align 8
  store %struct.Memory* %loadMem_401312, %struct.Memory** %MEMORY
  %loadMem_401316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 7
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RDX.i104
  %4111 = load i64, i64* %PC.i103
  %4112 = add i64 %4111, 7
  store i64 %4112, i64* %PC.i103
  %4113 = sext i64 %4110 to i128
  %4114 = and i128 %4113, -18446744073709551616
  %4115 = zext i64 %4110 to i128
  %4116 = or i128 %4114, %4115
  %4117 = mul i128 520, %4116
  %4118 = trunc i128 %4117 to i64
  store i64 %4118, i64* %RDX.i104, align 8
  %4119 = sext i64 %4118 to i128
  %4120 = icmp ne i128 %4119, %4117
  %4121 = zext i1 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4121, i8* %4122, align 1
  %4123 = trunc i128 %4117 to i32
  %4124 = and i32 %4123, 255
  %4125 = call i32 @llvm.ctpop.i32(i32 %4124)
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  %4128 = xor i8 %4127, 1
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4128, i8* %4129, align 1
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4130, align 1
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4131, align 1
  %4132 = lshr i64 %4118, 63
  %4133 = trunc i64 %4132 to i8
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4133, i8* %4134, align 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4121, i8* %4135, align 1
  store %struct.Memory* %loadMem_401316, %struct.Memory** %MEMORY
  %loadMem_40131d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 5
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 7
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RDX.i102 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %RCX.i101
  %4146 = load i64, i64* %RDX.i102
  %4147 = load i64, i64* %PC.i100
  %4148 = add i64 %4147, 3
  store i64 %4148, i64* %PC.i100
  %4149 = add i64 %4146, %4145
  store i64 %4149, i64* %RCX.i101, align 8
  %4150 = icmp ult i64 %4149, %4145
  %4151 = icmp ult i64 %4149, %4146
  %4152 = or i1 %4150, %4151
  %4153 = zext i1 %4152 to i8
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4153, i8* %4154, align 1
  %4155 = trunc i64 %4149 to i32
  %4156 = and i32 %4155, 255
  %4157 = call i32 @llvm.ctpop.i32(i32 %4156)
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4160, i8* %4161, align 1
  %4162 = xor i64 %4146, %4145
  %4163 = xor i64 %4162, %4149
  %4164 = lshr i64 %4163, 4
  %4165 = trunc i64 %4164 to i8
  %4166 = and i8 %4165, 1
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4166, i8* %4167, align 1
  %4168 = icmp eq i64 %4149, 0
  %4169 = zext i1 %4168 to i8
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4169, i8* %4170, align 1
  %4171 = lshr i64 %4149, 63
  %4172 = trunc i64 %4171 to i8
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4172, i8* %4173, align 1
  %4174 = lshr i64 %4145, 63
  %4175 = lshr i64 %4146, 63
  %4176 = xor i64 %4171, %4174
  %4177 = xor i64 %4171, %4175
  %4178 = add i64 %4176, %4177
  %4179 = icmp eq i64 %4178, 2
  %4180 = zext i1 %4179 to i8
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4180, i8* %4181, align 1
  store %struct.Memory* %loadMem_40131d, %struct.Memory** %MEMORY
  %loadMem_401320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 33
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 7
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RDX.i98 = bitcast %union.anon* %4187 to i64*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 15
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4190 to i64*
  %4191 = load i64, i64* %RBP.i99
  %4192 = sub i64 %4191, 92
  %4193 = load i64, i64* %PC.i97
  %4194 = add i64 %4193, 4
  store i64 %4194, i64* %PC.i97
  %4195 = inttoptr i64 %4192 to i32*
  %4196 = load i32, i32* %4195
  %4197 = sext i32 %4196 to i64
  store i64 %4197, i64* %RDX.i98, align 8
  store %struct.Memory* %loadMem_401320, %struct.Memory** %MEMORY
  %loadMem_401324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 33
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 5
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 7
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4207, i64 0, i64 2
  %XMM2.i96 = bitcast %union.VectorReg* %4208 to %union.vec128_t*
  %4209 = load i64, i64* %RCX.i94
  %4210 = load i64, i64* %RDX.i95
  %4211 = mul i64 %4210, 8
  %4212 = add i64 %4211, %4209
  %4213 = bitcast %union.vec128_t* %XMM2.i96 to i8*
  %4214 = load i64, i64* %PC.i93
  %4215 = add i64 %4214, 5
  store i64 %4215, i64* %PC.i93
  %4216 = bitcast i8* %4213 to double*
  %4217 = load double, double* %4216, align 1
  %4218 = inttoptr i64 %4212 to double*
  store double %4217, double* %4218
  store %struct.Memory* %loadMem_401324, %struct.Memory** %MEMORY
  %loadMem_401329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4221 to i64*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 1
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 15
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %RBP.i92
  %4229 = sub i64 %4228, 84
  %4230 = load i64, i64* %PC.i90
  %4231 = add i64 %4230, 3
  store i64 %4231, i64* %PC.i90
  %4232 = inttoptr i64 %4229 to i32*
  %4233 = load i32, i32* %4232
  %4234 = zext i32 %4233 to i64
  store i64 %4234, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_401329, %struct.Memory** %MEMORY
  %loadMem_40132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 1
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %4240 to i32*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4241, i64 0, i64 1
  %YMM1.i89 = bitcast %union.VectorReg* %4242 to %"class.std::bitset"*
  %4243 = bitcast %"class.std::bitset"* %YMM1.i89 to i8*
  %4244 = load i32, i32* %EAX.i88
  %4245 = zext i32 %4244 to i64
  %4246 = load i64, i64* %PC.i87
  %4247 = add i64 %4246, 4
  store i64 %4247, i64* %PC.i87
  %4248 = sitofp i32 %4244 to double
  %4249 = bitcast i8* %4243 to double*
  store double %4248, double* %4249, align 1
  store %struct.Memory* %loadMem_40132c, %struct.Memory** %MEMORY
  %loadMem_401330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 15
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %RBP.i86
  %4260 = sub i64 %4259, 88
  %4261 = load i64, i64* %PC.i84
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i84
  %4263 = inttoptr i64 %4260 to i32*
  %4264 = load i32, i32* %4263
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_401330, %struct.Memory** %MEMORY
  %loadMem_401333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 33
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 1
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RAX.i83
  %4273 = load i64, i64* %PC.i82
  %4274 = add i64 %4273, 3
  store i64 %4274, i64* %PC.i82
  %4275 = trunc i64 %4272 to i32
  %4276 = add i32 5, %4275
  %4277 = zext i32 %4276 to i64
  store i64 %4277, i64* %RAX.i83, align 8
  %4278 = icmp ult i32 %4276, %4275
  %4279 = icmp ult i32 %4276, 5
  %4280 = or i1 %4278, %4279
  %4281 = zext i1 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4281, i8* %4282, align 1
  %4283 = and i32 %4276, 255
  %4284 = call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4287, i8* %4288, align 1
  %4289 = xor i64 5, %4272
  %4290 = trunc i64 %4289 to i32
  %4291 = xor i32 %4290, %4276
  %4292 = lshr i32 %4291, 4
  %4293 = trunc i32 %4292 to i8
  %4294 = and i8 %4293, 1
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4294, i8* %4295, align 1
  %4296 = icmp eq i32 %4276, 0
  %4297 = zext i1 %4296 to i8
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4297, i8* %4298, align 1
  %4299 = lshr i32 %4276, 31
  %4300 = trunc i32 %4299 to i8
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4300, i8* %4301, align 1
  %4302 = lshr i32 %4275, 31
  %4303 = xor i32 %4299, %4302
  %4304 = add i32 %4303, %4299
  %4305 = icmp eq i32 %4304, 2
  %4306 = zext i1 %4305 to i8
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4306, i8* %4307, align 1
  store %struct.Memory* %loadMem_401333, %struct.Memory** %MEMORY
  %loadMem_401336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 1
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %EAX.i80 = bitcast %union.anon* %4313 to i32*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4314, i64 0, i64 2
  %YMM2.i81 = bitcast %union.VectorReg* %4315 to %"class.std::bitset"*
  %4316 = bitcast %"class.std::bitset"* %YMM2.i81 to i8*
  %4317 = load i32, i32* %EAX.i80
  %4318 = zext i32 %4317 to i64
  %4319 = load i64, i64* %PC.i79
  %4320 = add i64 %4319, 4
  store i64 %4320, i64* %PC.i79
  %4321 = sitofp i32 %4317 to double
  %4322 = bitcast i8* %4316 to double*
  store double %4321, double* %4322, align 1
  store %struct.Memory* %loadMem_401336, %struct.Memory** %MEMORY
  %loadMem_40133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4326, i64 0, i64 1
  %YMM1.i77 = bitcast %union.VectorReg* %4327 to %"class.std::bitset"*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4329 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4328, i64 0, i64 2
  %XMM2.i78 = bitcast %union.VectorReg* %4329 to %union.vec128_t*
  %4330 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %4331 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %4332 = bitcast %union.vec128_t* %XMM2.i78 to i8*
  %4333 = load i64, i64* %PC.i76
  %4334 = add i64 %4333, 4
  store i64 %4334, i64* %PC.i76
  %4335 = bitcast i8* %4331 to double*
  %4336 = load double, double* %4335, align 1
  %4337 = getelementptr inbounds i8, i8* %4331, i64 8
  %4338 = bitcast i8* %4337 to i64*
  %4339 = load i64, i64* %4338, align 1
  %4340 = bitcast i8* %4332 to double*
  %4341 = load double, double* %4340, align 1
  %4342 = fmul double %4336, %4341
  %4343 = bitcast i8* %4330 to double*
  store double %4342, double* %4343, align 1
  %4344 = getelementptr inbounds i8, i8* %4330, i64 8
  %4345 = bitcast i8* %4344 to i64*
  store i64 %4339, i64* %4345, align 1
  store %struct.Memory* %loadMem_40133a, %struct.Memory** %MEMORY
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 1
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4351 to i64*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 15
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4354 to i64*
  %4355 = load i64, i64* %RBP.i75
  %4356 = sub i64 %4355, 92
  %4357 = load i64, i64* %PC.i73
  %4358 = add i64 %4357, 3
  store i64 %4358, i64* %PC.i73
  %4359 = inttoptr i64 %4356 to i32*
  %4360 = load i32, i32* %4359
  %4361 = zext i32 %4360 to i64
  store i64 %4361, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_40133e, %struct.Memory** %MEMORY
  %loadMem_401341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 1
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %4367 to i32*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4368, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4369 to %"class.std::bitset"*
  %4370 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4371 = load i32, i32* %EAX.i72
  %4372 = zext i32 %4371 to i64
  %4373 = load i64, i64* %PC.i71
  %4374 = add i64 %4373, 4
  store i64 %4374, i64* %PC.i71
  %4375 = sitofp i32 %4371 to double
  %4376 = bitcast i8* %4370 to double*
  store double %4375, double* %4376, align 1
  store %struct.Memory* %loadMem_401341, %struct.Memory** %MEMORY
  %loadMem_401345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 33
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4379 to i64*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4380, i64 0, i64 1
  %YMM1.i70 = bitcast %union.VectorReg* %4381 to %"class.std::bitset"*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4382, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4383 to %union.vec128_t*
  %4384 = bitcast %"class.std::bitset"* %YMM1.i70 to i8*
  %4385 = bitcast %"class.std::bitset"* %YMM1.i70 to i8*
  %4386 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4387 = load i64, i64* %PC.i69
  %4388 = add i64 %4387, 4
  store i64 %4388, i64* %PC.i69
  %4389 = bitcast i8* %4385 to double*
  %4390 = load double, double* %4389, align 1
  %4391 = getelementptr inbounds i8, i8* %4385, i64 8
  %4392 = bitcast i8* %4391 to i64*
  %4393 = load i64, i64* %4392, align 1
  %4394 = bitcast i8* %4386 to double*
  %4395 = load double, double* %4394, align 1
  %4396 = fadd double %4390, %4395
  %4397 = bitcast i8* %4384 to double*
  store double %4396, double* %4397, align 1
  %4398 = getelementptr inbounds i8, i8* %4384, i64 8
  %4399 = bitcast i8* %4398 to i64*
  store i64 %4393, i64* %4399, align 1
  store %struct.Memory* %loadMem_401345, %struct.Memory** %MEMORY
  %loadMem_401349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4403, i64 0, i64 1
  %YMM1.i67 = bitcast %union.VectorReg* %4404 to %"class.std::bitset"*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4405, i64 0, i64 0
  %XMM0.i68 = bitcast %union.VectorReg* %4406 to %union.vec128_t*
  %4407 = bitcast %"class.std::bitset"* %YMM1.i67 to i8*
  %4408 = bitcast %"class.std::bitset"* %YMM1.i67 to i8*
  %4409 = bitcast %union.vec128_t* %XMM0.i68 to i8*
  %4410 = load i64, i64* %PC.i66
  %4411 = add i64 %4410, 4
  store i64 %4411, i64* %PC.i66
  %4412 = bitcast i8* %4408 to double*
  %4413 = load double, double* %4412, align 1
  %4414 = getelementptr inbounds i8, i8* %4408, i64 8
  %4415 = bitcast i8* %4414 to i64*
  %4416 = load i64, i64* %4415, align 1
  %4417 = bitcast i8* %4409 to double*
  %4418 = load double, double* %4417, align 1
  %4419 = fadd double %4413, %4418
  %4420 = bitcast i8* %4407 to double*
  store double %4419, double* %4420, align 1
  %4421 = getelementptr inbounds i8, i8* %4407, i64 8
  %4422 = bitcast i8* %4421 to i64*
  store i64 %4416, i64* %4422, align 1
  store %struct.Memory* %loadMem_401349, %struct.Memory** %MEMORY
  %loadMem_40134d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 1
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 15
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RBP.i65
  %4433 = sub i64 %4432, 44
  %4434 = load i64, i64* %PC.i63
  %4435 = add i64 %4434, 3
  store i64 %4435, i64* %PC.i63
  %4436 = inttoptr i64 %4433 to i32*
  %4437 = load i32, i32* %4436
  %4438 = zext i32 %4437 to i64
  store i64 %4438, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_40134d, %struct.Memory** %MEMORY
  %loadMem_401350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 1
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %4444 to i32*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4446 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4445, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4446 to %"class.std::bitset"*
  %4447 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4448 = load i32, i32* %EAX.i62
  %4449 = zext i32 %4448 to i64
  %4450 = load i64, i64* %PC.i61
  %4451 = add i64 %4450, 4
  store i64 %4451, i64* %PC.i61
  %4452 = sitofp i32 %4448 to double
  %4453 = bitcast i8* %4447 to double*
  store double %4452, double* %4453, align 1
  store %struct.Memory* %loadMem_401350, %struct.Memory** %MEMORY
  %loadMem_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4457, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4458 to %"class.std::bitset"*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4459, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4460 to %union.vec128_t*
  %4461 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4462 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4463 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4464 = load i64, i64* %PC.i60
  %4465 = add i64 %4464, 4
  store i64 %4465, i64* %PC.i60
  %4466 = bitcast i8* %4462 to double*
  %4467 = load double, double* %4466, align 1
  %4468 = getelementptr inbounds i8, i8* %4462, i64 8
  %4469 = bitcast i8* %4468 to i64*
  %4470 = load i64, i64* %4469, align 1
  %4471 = bitcast i8* %4463 to double*
  %4472 = load double, double* %4471, align 1
  %4473 = fdiv double %4467, %4472
  %4474 = bitcast i8* %4461 to double*
  store double %4473, double* %4474, align 1
  %4475 = getelementptr inbounds i8, i8* %4461, i64 8
  %4476 = bitcast i8* %4475 to i64*
  store i64 %4470, i64* %4476, align 1
  store %struct.Memory* %loadMem_401354, %struct.Memory** %MEMORY
  %loadMem_401358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 33
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 5
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 15
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4485 to i64*
  %4486 = load i64, i64* %RBP.i59
  %4487 = add i64 %4486, 40
  %4488 = load i64, i64* %PC.i57
  %4489 = add i64 %4488, 4
  store i64 %4489, i64* %PC.i57
  %4490 = inttoptr i64 %4487 to i64*
  %4491 = load i64, i64* %4490
  store i64 %4491, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_401358, %struct.Memory** %MEMORY
  %loadMem_40135c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 33
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4494 to i64*
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 7
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 15
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4500 to i64*
  %4501 = load i64, i64* %RBP.i56
  %4502 = sub i64 %4501, 84
  %4503 = load i64, i64* %PC.i54
  %4504 = add i64 %4503, 4
  store i64 %4504, i64* %PC.i54
  %4505 = inttoptr i64 %4502 to i32*
  %4506 = load i32, i32* %4505
  %4507 = sext i32 %4506 to i64
  store i64 %4507, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_40135c, %struct.Memory** %MEMORY
  %loadMem_401360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 33
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 7
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %RDX.i53
  %4515 = load i64, i64* %PC.i52
  %4516 = add i64 %4515, 7
  store i64 %4516, i64* %PC.i52
  %4517 = sext i64 %4514 to i128
  %4518 = and i128 %4517, -18446744073709551616
  %4519 = zext i64 %4514 to i128
  %4520 = or i128 %4518, %4519
  %4521 = mul i128 33800, %4520
  %4522 = trunc i128 %4521 to i64
  store i64 %4522, i64* %RDX.i53, align 8
  %4523 = sext i64 %4522 to i128
  %4524 = icmp ne i128 %4523, %4521
  %4525 = zext i1 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4525, i8* %4526, align 1
  %4527 = trunc i128 %4521 to i32
  %4528 = and i32 %4527, 255
  %4529 = call i32 @llvm.ctpop.i32(i32 %4528)
  %4530 = trunc i32 %4529 to i8
  %4531 = and i8 %4530, 1
  %4532 = xor i8 %4531, 1
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4532, i8* %4533, align 1
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4534, align 1
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4535, align 1
  %4536 = lshr i64 %4522, 63
  %4537 = trunc i64 %4536 to i8
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4537, i8* %4538, align 1
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4525, i8* %4539, align 1
  store %struct.Memory* %loadMem_401360, %struct.Memory** %MEMORY
  %loadMem_401367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 5
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 7
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %RCX.i50
  %4550 = load i64, i64* %RDX.i51
  %4551 = load i64, i64* %PC.i49
  %4552 = add i64 %4551, 3
  store i64 %4552, i64* %PC.i49
  %4553 = add i64 %4550, %4549
  store i64 %4553, i64* %RCX.i50, align 8
  %4554 = icmp ult i64 %4553, %4549
  %4555 = icmp ult i64 %4553, %4550
  %4556 = or i1 %4554, %4555
  %4557 = zext i1 %4556 to i8
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4557, i8* %4558, align 1
  %4559 = trunc i64 %4553 to i32
  %4560 = and i32 %4559, 255
  %4561 = call i32 @llvm.ctpop.i32(i32 %4560)
  %4562 = trunc i32 %4561 to i8
  %4563 = and i8 %4562, 1
  %4564 = xor i8 %4563, 1
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4564, i8* %4565, align 1
  %4566 = xor i64 %4550, %4549
  %4567 = xor i64 %4566, %4553
  %4568 = lshr i64 %4567, 4
  %4569 = trunc i64 %4568 to i8
  %4570 = and i8 %4569, 1
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4570, i8* %4571, align 1
  %4572 = icmp eq i64 %4553, 0
  %4573 = zext i1 %4572 to i8
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4573, i8* %4574, align 1
  %4575 = lshr i64 %4553, 63
  %4576 = trunc i64 %4575 to i8
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4576, i8* %4577, align 1
  %4578 = lshr i64 %4549, 63
  %4579 = lshr i64 %4550, 63
  %4580 = xor i64 %4575, %4578
  %4581 = xor i64 %4575, %4579
  %4582 = add i64 %4580, %4581
  %4583 = icmp eq i64 %4582, 2
  %4584 = zext i1 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4584, i8* %4585, align 1
  store %struct.Memory* %loadMem_401367, %struct.Memory** %MEMORY
  %loadMem_40136a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 33
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4588 to i64*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 7
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %4591 to i64*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 15
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %4594 to i64*
  %4595 = load i64, i64* %RBP.i48
  %4596 = sub i64 %4595, 88
  %4597 = load i64, i64* %PC.i46
  %4598 = add i64 %4597, 4
  store i64 %4598, i64* %PC.i46
  %4599 = inttoptr i64 %4596 to i32*
  %4600 = load i32, i32* %4599
  %4601 = sext i32 %4600 to i64
  store i64 %4601, i64* %RDX.i47, align 8
  store %struct.Memory* %loadMem_40136a, %struct.Memory** %MEMORY
  %loadMem_40136e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 33
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4604 to i64*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 7
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %4607 to i64*
  %4608 = load i64, i64* %RDX.i45
  %4609 = load i64, i64* %PC.i44
  %4610 = add i64 %4609, 7
  store i64 %4610, i64* %PC.i44
  %4611 = sext i64 %4608 to i128
  %4612 = and i128 %4611, -18446744073709551616
  %4613 = zext i64 %4608 to i128
  %4614 = or i128 %4612, %4613
  %4615 = mul i128 520, %4614
  %4616 = trunc i128 %4615 to i64
  store i64 %4616, i64* %RDX.i45, align 8
  %4617 = sext i64 %4616 to i128
  %4618 = icmp ne i128 %4617, %4615
  %4619 = zext i1 %4618 to i8
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4619, i8* %4620, align 1
  %4621 = trunc i128 %4615 to i32
  %4622 = and i32 %4621, 255
  %4623 = call i32 @llvm.ctpop.i32(i32 %4622)
  %4624 = trunc i32 %4623 to i8
  %4625 = and i8 %4624, 1
  %4626 = xor i8 %4625, 1
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4626, i8* %4627, align 1
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4628, align 1
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4629, align 1
  %4630 = lshr i64 %4616, 63
  %4631 = trunc i64 %4630 to i8
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4631, i8* %4632, align 1
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4619, i8* %4633, align 1
  store %struct.Memory* %loadMem_40136e, %struct.Memory** %MEMORY
  %loadMem_401375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 5
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 7
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %4642 to i64*
  %4643 = load i64, i64* %RCX.i42
  %4644 = load i64, i64* %RDX.i43
  %4645 = load i64, i64* %PC.i41
  %4646 = add i64 %4645, 3
  store i64 %4646, i64* %PC.i41
  %4647 = add i64 %4644, %4643
  store i64 %4647, i64* %RCX.i42, align 8
  %4648 = icmp ult i64 %4647, %4643
  %4649 = icmp ult i64 %4647, %4644
  %4650 = or i1 %4648, %4649
  %4651 = zext i1 %4650 to i8
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4651, i8* %4652, align 1
  %4653 = trunc i64 %4647 to i32
  %4654 = and i32 %4653, 255
  %4655 = call i32 @llvm.ctpop.i32(i32 %4654)
  %4656 = trunc i32 %4655 to i8
  %4657 = and i8 %4656, 1
  %4658 = xor i8 %4657, 1
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4658, i8* %4659, align 1
  %4660 = xor i64 %4644, %4643
  %4661 = xor i64 %4660, %4647
  %4662 = lshr i64 %4661, 4
  %4663 = trunc i64 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4664, i8* %4665, align 1
  %4666 = icmp eq i64 %4647, 0
  %4667 = zext i1 %4666 to i8
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4667, i8* %4668, align 1
  %4669 = lshr i64 %4647, 63
  %4670 = trunc i64 %4669 to i8
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4670, i8* %4671, align 1
  %4672 = lshr i64 %4643, 63
  %4673 = lshr i64 %4644, 63
  %4674 = xor i64 %4669, %4672
  %4675 = xor i64 %4669, %4673
  %4676 = add i64 %4674, %4675
  %4677 = icmp eq i64 %4676, 2
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4678, i8* %4679, align 1
  store %struct.Memory* %loadMem_401375, %struct.Memory** %MEMORY
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 7
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 15
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4688 to i64*
  %4689 = load i64, i64* %RBP.i40
  %4690 = sub i64 %4689, 92
  %4691 = load i64, i64* %PC.i38
  %4692 = add i64 %4691, 4
  store i64 %4692, i64* %PC.i38
  %4693 = inttoptr i64 %4690 to i32*
  %4694 = load i32, i32* %4693
  %4695 = sext i32 %4694 to i64
  store i64 %4695, i64* %RDX.i39, align 8
  store %struct.Memory* %loadMem_401378, %struct.Memory** %MEMORY
  %loadMem_40137c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 5
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 7
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4705, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4706 to %union.vec128_t*
  %4707 = load i64, i64* %RCX.i
  %4708 = load i64, i64* %RDX.i
  %4709 = mul i64 %4708, 8
  %4710 = add i64 %4709, %4707
  %4711 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4712 = load i64, i64* %PC.i37
  %4713 = add i64 %4712, 5
  store i64 %4713, i64* %PC.i37
  %4714 = bitcast i8* %4711 to double*
  %4715 = load double, double* %4714, align 1
  %4716 = inttoptr i64 %4710 to double*
  store double %4715, double* %4716
  store %struct.Memory* %loadMem_40137c, %struct.Memory** %MEMORY
  %loadMem_401381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 1
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 15
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4725 to i64*
  %4726 = load i64, i64* %RBP.i36
  %4727 = sub i64 %4726, 92
  %4728 = load i64, i64* %PC.i34
  %4729 = add i64 %4728, 3
  store i64 %4729, i64* %PC.i34
  %4730 = inttoptr i64 %4727 to i32*
  %4731 = load i32, i32* %4730
  %4732 = zext i32 %4731 to i64
  store i64 %4732, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_401381, %struct.Memory** %MEMORY
  %loadMem_401384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 33
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 1
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4738 to i64*
  %4739 = load i64, i64* %RAX.i33
  %4740 = load i64, i64* %PC.i32
  %4741 = add i64 %4740, 3
  store i64 %4741, i64* %PC.i32
  %4742 = trunc i64 %4739 to i32
  %4743 = add i32 1, %4742
  %4744 = zext i32 %4743 to i64
  store i64 %4744, i64* %RAX.i33, align 8
  %4745 = icmp ult i32 %4743, %4742
  %4746 = icmp ult i32 %4743, 1
  %4747 = or i1 %4745, %4746
  %4748 = zext i1 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4748, i8* %4749, align 1
  %4750 = and i32 %4743, 255
  %4751 = call i32 @llvm.ctpop.i32(i32 %4750)
  %4752 = trunc i32 %4751 to i8
  %4753 = and i8 %4752, 1
  %4754 = xor i8 %4753, 1
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4754, i8* %4755, align 1
  %4756 = xor i64 1, %4739
  %4757 = trunc i64 %4756 to i32
  %4758 = xor i32 %4757, %4743
  %4759 = lshr i32 %4758, 4
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4761, i8* %4762, align 1
  %4763 = icmp eq i32 %4743, 0
  %4764 = zext i1 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4764, i8* %4765, align 1
  %4766 = lshr i32 %4743, 31
  %4767 = trunc i32 %4766 to i8
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4767, i8* %4768, align 1
  %4769 = lshr i32 %4742, 31
  %4770 = xor i32 %4766, %4769
  %4771 = add i32 %4770, %4766
  %4772 = icmp eq i32 %4771, 2
  %4773 = zext i1 %4772 to i8
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4773, i8* %4774, align 1
  store %struct.Memory* %loadMem_401384, %struct.Memory** %MEMORY
  %loadMem_401387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 33
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4777 to i64*
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 1
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %4780 to i32*
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 15
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4783 to i64*
  %4784 = load i64, i64* %RBP.i31
  %4785 = sub i64 %4784, 92
  %4786 = load i32, i32* %EAX.i30
  %4787 = zext i32 %4786 to i64
  %4788 = load i64, i64* %PC.i29
  %4789 = add i64 %4788, 3
  store i64 %4789, i64* %PC.i29
  %4790 = inttoptr i64 %4785 to i32*
  store i32 %4786, i32* %4790
  store %struct.Memory* %loadMem_401387, %struct.Memory** %MEMORY
  %loadMem_40138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 33
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4793 to i64*
  %4794 = load i64, i64* %PC.i28
  %4795 = add i64 %4794, -309
  %4796 = load i64, i64* %PC.i28
  %4797 = add i64 %4796, 5
  store i64 %4797, i64* %PC.i28
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4795, i64* %4798, align 8
  store %struct.Memory* %loadMem_40138a, %struct.Memory** %MEMORY
  br label %block_.L_401255

block_.L_40138f:                                  ; preds = %block_.L_401255
  %loadMem_40138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4801 to i64*
  %4802 = load i64, i64* %PC.i27
  %4803 = add i64 %4802, 5
  %4804 = load i64, i64* %PC.i27
  %4805 = add i64 %4804, 5
  store i64 %4805, i64* %PC.i27
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4803, i64* %4806, align 8
  store %struct.Memory* %loadMem_40138f, %struct.Memory** %MEMORY
  br label %block_.L_401394

block_.L_401394:                                  ; preds = %block_.L_40138f
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 1
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i26
  %4817 = sub i64 %4816, 88
  %4818 = load i64, i64* %PC.i24
  %4819 = add i64 %4818, 3
  store i64 %4819, i64* %PC.i24
  %4820 = inttoptr i64 %4817 to i32*
  %4821 = load i32, i32* %4820
  %4822 = zext i32 %4821 to i64
  store i64 %4822, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_401394, %struct.Memory** %MEMORY
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 1
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %4828 to i64*
  %4829 = load i64, i64* %RAX.i23
  %4830 = load i64, i64* %PC.i22
  %4831 = add i64 %4830, 3
  store i64 %4831, i64* %PC.i22
  %4832 = trunc i64 %4829 to i32
  %4833 = add i32 1, %4832
  %4834 = zext i32 %4833 to i64
  store i64 %4834, i64* %RAX.i23, align 8
  %4835 = icmp ult i32 %4833, %4832
  %4836 = icmp ult i32 %4833, 1
  %4837 = or i1 %4835, %4836
  %4838 = zext i1 %4837 to i8
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4838, i8* %4839, align 1
  %4840 = and i32 %4833, 255
  %4841 = call i32 @llvm.ctpop.i32(i32 %4840)
  %4842 = trunc i32 %4841 to i8
  %4843 = and i8 %4842, 1
  %4844 = xor i8 %4843, 1
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4844, i8* %4845, align 1
  %4846 = xor i64 1, %4829
  %4847 = trunc i64 %4846 to i32
  %4848 = xor i32 %4847, %4833
  %4849 = lshr i32 %4848, 4
  %4850 = trunc i32 %4849 to i8
  %4851 = and i8 %4850, 1
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4851, i8* %4852, align 1
  %4853 = icmp eq i32 %4833, 0
  %4854 = zext i1 %4853 to i8
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4854, i8* %4855, align 1
  %4856 = lshr i32 %4833, 31
  %4857 = trunc i32 %4856 to i8
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4857, i8* %4858, align 1
  %4859 = lshr i32 %4832, 31
  %4860 = xor i32 %4856, %4859
  %4861 = add i32 %4860, %4856
  %4862 = icmp eq i32 %4861, 2
  %4863 = zext i1 %4862 to i8
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4863, i8* %4864, align 1
  store %struct.Memory* %loadMem_401397, %struct.Memory** %MEMORY
  %loadMem_40139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 1
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %4870 to i32*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 15
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4873 to i64*
  %4874 = load i64, i64* %RBP.i21
  %4875 = sub i64 %4874, 88
  %4876 = load i32, i32* %EAX.i20
  %4877 = zext i32 %4876 to i64
  %4878 = load i64, i64* %PC.i19
  %4879 = add i64 %4878, 3
  store i64 %4879, i64* %PC.i19
  %4880 = inttoptr i64 %4875 to i32*
  store i32 %4876, i32* %4880
  store %struct.Memory* %loadMem_40139a, %struct.Memory** %MEMORY
  %loadMem_40139d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 33
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4883 to i64*
  %4884 = load i64, i64* %PC.i18
  %4885 = add i64 %4884, -489
  %4886 = load i64, i64* %PC.i18
  %4887 = add i64 %4886, 5
  store i64 %4887, i64* %PC.i18
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4885, i64* %4888, align 8
  store %struct.Memory* %loadMem_40139d, %struct.Memory** %MEMORY
  br label %block_.L_4011b4

block_.L_4013a2:                                  ; preds = %block_.L_4011b4
  %loadMem_4013a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4891 to i64*
  %4892 = load i64, i64* %PC.i17
  %4893 = add i64 %4892, 5
  %4894 = load i64, i64* %PC.i17
  %4895 = add i64 %4894, 5
  store i64 %4895, i64* %PC.i17
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4893, i64* %4896, align 8
  store %struct.Memory* %loadMem_4013a2, %struct.Memory** %MEMORY
  br label %block_.L_4013a7

block_.L_4013a7:                                  ; preds = %block_.L_4013a2
  %loadMem_4013a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 33
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 1
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 15
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %4905 to i64*
  %4906 = load i64, i64* %RBP.i16
  %4907 = sub i64 %4906, 84
  %4908 = load i64, i64* %PC.i14
  %4909 = add i64 %4908, 3
  store i64 %4909, i64* %PC.i14
  %4910 = inttoptr i64 %4907 to i32*
  %4911 = load i32, i32* %4910
  %4912 = zext i32 %4911 to i64
  store i64 %4912, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_4013a7, %struct.Memory** %MEMORY
  %loadMem_4013aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 33
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 1
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4918 to i64*
  %4919 = load i64, i64* %RAX.i
  %4920 = load i64, i64* %PC.i13
  %4921 = add i64 %4920, 3
  store i64 %4921, i64* %PC.i13
  %4922 = trunc i64 %4919 to i32
  %4923 = add i32 1, %4922
  %4924 = zext i32 %4923 to i64
  store i64 %4924, i64* %RAX.i, align 8
  %4925 = icmp ult i32 %4923, %4922
  %4926 = icmp ult i32 %4923, 1
  %4927 = or i1 %4925, %4926
  %4928 = zext i1 %4927 to i8
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4928, i8* %4929, align 1
  %4930 = and i32 %4923, 255
  %4931 = call i32 @llvm.ctpop.i32(i32 %4930)
  %4932 = trunc i32 %4931 to i8
  %4933 = and i8 %4932, 1
  %4934 = xor i8 %4933, 1
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4934, i8* %4935, align 1
  %4936 = xor i64 1, %4919
  %4937 = trunc i64 %4936 to i32
  %4938 = xor i32 %4937, %4923
  %4939 = lshr i32 %4938, 4
  %4940 = trunc i32 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4941, i8* %4942, align 1
  %4943 = icmp eq i32 %4923, 0
  %4944 = zext i1 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i32 %4923, 31
  %4947 = trunc i32 %4946 to i8
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4947, i8* %4948, align 1
  %4949 = lshr i32 %4922, 31
  %4950 = xor i32 %4946, %4949
  %4951 = add i32 %4950, %4946
  %4952 = icmp eq i32 %4951, 2
  %4953 = zext i1 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4953, i8* %4954, align 1
  store %struct.Memory* %loadMem_4013aa, %struct.Memory** %MEMORY
  %loadMem_4013ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 1
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4960 to i32*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 15
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4963 to i64*
  %4964 = load i64, i64* %RBP.i12
  %4965 = sub i64 %4964, 84
  %4966 = load i32, i32* %EAX.i
  %4967 = zext i32 %4966 to i64
  %4968 = load i64, i64* %PC.i11
  %4969 = add i64 %4968, 3
  store i64 %4969, i64* %PC.i11
  %4970 = inttoptr i64 %4965 to i32*
  store i32 %4966, i32* %4970
  store %struct.Memory* %loadMem_4013ad, %struct.Memory** %MEMORY
  %loadMem_4013b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4973 to i64*
  %4974 = load i64, i64* %PC.i10
  %4975 = add i64 %4974, -527
  %4976 = load i64, i64* %PC.i10
  %4977 = add i64 %4976, 5
  store i64 %4977, i64* %PC.i10
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4975, i64* %4978, align 8
  store %struct.Memory* %loadMem_4013b0, %struct.Memory** %MEMORY
  br label %block_.L_4011a1

block_.L_4013b5:                                  ; preds = %block_.L_4011a1
  %loadMem_4013b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 33
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 13
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4984 to i64*
  %4985 = load i64, i64* %RSP.i
  %4986 = load i64, i64* %PC.i9
  %4987 = add i64 %4986, 4
  store i64 %4987, i64* %PC.i9
  %4988 = add i64 8, %4985
  store i64 %4988, i64* %RSP.i, align 8
  %4989 = icmp ult i64 %4988, %4985
  %4990 = icmp ult i64 %4988, 8
  %4991 = or i1 %4989, %4990
  %4992 = zext i1 %4991 to i8
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4992, i8* %4993, align 1
  %4994 = trunc i64 %4988 to i32
  %4995 = and i32 %4994, 255
  %4996 = call i32 @llvm.ctpop.i32(i32 %4995)
  %4997 = trunc i32 %4996 to i8
  %4998 = and i8 %4997, 1
  %4999 = xor i8 %4998, 1
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4999, i8* %5000, align 1
  %5001 = xor i64 8, %4985
  %5002 = xor i64 %5001, %4988
  %5003 = lshr i64 %5002, 4
  %5004 = trunc i64 %5003 to i8
  %5005 = and i8 %5004, 1
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5005, i8* %5006, align 1
  %5007 = icmp eq i64 %4988, 0
  %5008 = zext i1 %5007 to i8
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5008, i8* %5009, align 1
  %5010 = lshr i64 %4988, 63
  %5011 = trunc i64 %5010 to i8
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5011, i8* %5012, align 1
  %5013 = lshr i64 %4985, 63
  %5014 = xor i64 %5010, %5013
  %5015 = add i64 %5014, %5010
  %5016 = icmp eq i64 %5015, 2
  %5017 = zext i1 %5016 to i8
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5017, i8* %5018, align 1
  store %struct.Memory* %loadMem_4013b5, %struct.Memory** %MEMORY
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 33
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 3
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %PC.i8
  %5026 = add i64 %5025, 1
  store i64 %5026, i64* %PC.i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5028 = load i64, i64* %5027, align 8
  %5029 = add i64 %5028, 8
  %5030 = inttoptr i64 %5028 to i64*
  %5031 = load i64, i64* %5030
  store i64 %5031, i64* %RBX.i, align 8
  store i64 %5029, i64* %5027, align 8
  store %struct.Memory* %loadMem_4013b9, %struct.Memory** %MEMORY
  %loadMem_4013ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 33
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 25
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %R12.i = bitcast %union.anon* %5037 to i64*
  %5038 = load i64, i64* %PC.i7
  %5039 = add i64 %5038, 2
  store i64 %5039, i64* %PC.i7
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5041 = load i64, i64* %5040, align 8
  %5042 = add i64 %5041, 8
  %5043 = inttoptr i64 %5041 to i64*
  %5044 = load i64, i64* %5043
  store i64 %5044, i64* %R12.i, align 8
  store i64 %5042, i64* %5040, align 8
  store %struct.Memory* %loadMem_4013ba, %struct.Memory** %MEMORY
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5047 to i64*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 27
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %R13.i = bitcast %union.anon* %5050 to i64*
  %5051 = load i64, i64* %PC.i6
  %5052 = add i64 %5051, 2
  store i64 %5052, i64* %PC.i6
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5054 = load i64, i64* %5053, align 8
  %5055 = add i64 %5054, 8
  %5056 = inttoptr i64 %5054 to i64*
  %5057 = load i64, i64* %5056
  store i64 %5057, i64* %R13.i, align 8
  store i64 %5055, i64* %5053, align 8
  store %struct.Memory* %loadMem_4013bc, %struct.Memory** %MEMORY
  %loadMem_4013be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 33
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 29
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %R14.i = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %PC.i5
  %5065 = add i64 %5064, 2
  store i64 %5065, i64* %PC.i5
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5067 = load i64, i64* %5066, align 8
  %5068 = add i64 %5067, 8
  %5069 = inttoptr i64 %5067 to i64*
  %5070 = load i64, i64* %5069
  store i64 %5070, i64* %R14.i, align 8
  store i64 %5068, i64* %5066, align 8
  store %struct.Memory* %loadMem_4013be, %struct.Memory** %MEMORY
  %loadMem_4013c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 31
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %R15.i = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %PC.i4
  %5078 = add i64 %5077, 2
  store i64 %5078, i64* %PC.i4
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5080 = load i64, i64* %5079, align 8
  %5081 = add i64 %5080, 8
  %5082 = inttoptr i64 %5080 to i64*
  %5083 = load i64, i64* %5082
  store i64 %5083, i64* %R15.i, align 8
  store i64 %5081, i64* %5079, align 8
  store %struct.Memory* %loadMem_4013c0, %struct.Memory** %MEMORY
  %loadMem_4013c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 15
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5089 to i64*
  %5090 = load i64, i64* %PC.i2
  %5091 = add i64 %5090, 1
  store i64 %5091, i64* %PC.i2
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5093 = load i64, i64* %5092, align 8
  %5094 = add i64 %5093, 8
  %5095 = inttoptr i64 %5093 to i64*
  %5096 = load i64, i64* %5095
  store i64 %5096, i64* %RBP.i3, align 8
  store i64 %5094, i64* %5092, align 8
  store %struct.Memory* %loadMem_4013c2, %struct.Memory** %MEMORY
  %loadMem_4013c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 33
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5099 to i64*
  %5100 = load i64, i64* %PC.i1
  %5101 = add i64 %5100, 1
  store i64 %5101, i64* %PC.i1
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5104 = load i64, i64* %5103, align 8
  %5105 = inttoptr i64 %5104 to i64*
  %5106 = load i64, i64* %5105
  store i64 %5106, i64* %5102, align 8
  %5107 = add i64 %5104, 8
  store i64 %5107, i64* %5103, align 8
  store %struct.Memory* %loadMem_4013c3, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4013c3
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
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

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
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
block_400478:
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

define %struct.Memory* @routine_pushq__rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1eb2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1eb2__rip__4198358__type* @G_0x1eb2__rip__4198358_ to i64
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

define %struct.Memory* @routine_movsd_0x1eb2__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1eb2__rip__4198366__type* @G_0x1eb2__rip__4198366_ to i64
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

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to double*
  %16 = load double, double* %15, align 1
  %17 = inttoptr i64 %11 to double*
  store double %16, double* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RCX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to double*
  %16 = load double, double* %15, align 1
  %17 = inttoptr i64 %11 to double*
  store double %16, double* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jg_.L_4010ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1e60__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1e60__rip__4198480__type* @G_0x1e60__rip__4198480_ to i64
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

define %struct.Memory* @routine_movsd_0x1e60__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1e60__rip__4198488__type* @G_0x1e60__rip__4198488_ to i64
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm2____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM2 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
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

define %struct.Memory* @routine_movq_0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_40103c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = sub i64 %14, 48
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

define %struct.Memory* @routine_jg_.L_401123(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1e09__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1e09__rip__4198599__type* @G_0x1e09__rip__4198599_ to i64
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

define %struct.Memory* @routine_movsd_0x1dd9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1dd9__rip__4198607__type* @G_0x1dd9__rip__4198607_ to i64
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

define %struct.Memory* @routine_movq_0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jg_.L_40119a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1d82__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1d82__rip__4198718__type* @G_0x1d82__rip__4198718_ to i64
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

define %struct.Memory* @routine_movsd_0x1d82__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1d82__rip__4198726__type* @G_0x1d82__rip__4198726_ to i64
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

define %struct.Memory* @routine_movq_0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40112a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_4013b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4013a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1cd0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1cd0__rip__4198856__type* @G_0x1cd0__rip__4198856_ to i64
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

define %struct.Memory* @routine_movsd_0x1cd0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1cd0__rip__4198864__type* @G_0x1cd0__rip__4198864_ to i64
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x208___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = mul i128 520, %15
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

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_40138f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1c3f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1c3f__rip__4199017__type* @G_0x1c3f__rip__4199017_ to i64
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

define %struct.Memory* @routine_movsd_0x1c3f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1c3f__rip__4199025__type* @G_0x1c3f__rip__4199025_ to i64
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

define %struct.Memory* @routine_movsd_0x1c3f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1c3f__rip__4199033__type* @G_0x1c3f__rip__4199033_ to i64
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

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x8408___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = mul i128 33800, %15
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

define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM3 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i32 5, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 5
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
  %26 = xor i64 5, %9
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

define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401255(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401394(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4011b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4013a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4011a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 8, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 8
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
  %25 = xor i64 8, %9
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
block_400478:
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

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R12, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R13, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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
