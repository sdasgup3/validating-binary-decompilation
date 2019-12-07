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
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [370 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%G_0xee__rip__type = type <{ [4 x i8] }>
%G__0x400640_type = type <{ [8 x i8] }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [370 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\05@\00H\C7\C1\90\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90H\B8@\06@\00\00\00\00\00\C3f.\0F\1F\84\00\00\00\00\00\0F\1F\00AWAVI\89\D7AUATL\8D%\AE\09 \00UH\8D-\AE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\AF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\06\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0xee__rip_ = global %G_0xee__rip__type zeroinitializer
@G__0x400640 = global %G__0x400640_type zeroinitializer

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

declare %struct.Memory* @sub_4004f0.DoDemoFpu1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400520 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400520, %struct.Memory** %MEMORY
  %loadMem_400521 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400521, %struct.Memory** %MEMORY
  %loadMem_400524 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i23
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i24, align 8
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
  store %struct.Memory* %loadMem_400524, %struct.Memory** %MEMORY
  %loadMem_400528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i28
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i28
  store i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400528, %struct.Memory** %MEMORY
  %loadMem_400532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i43
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i42
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i42
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400532, %struct.Memory** %MEMORY
  %loadMem_400539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %91 to i32*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i51
  %96 = sub i64 %95, 8
  %97 = load i32, i32* %EDI.i
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC.i50
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC.i50
  %101 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %101
  store %struct.Memory* %loadMem_400539, %struct.Memory** %MEMORY
  %loadMem_40053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 33
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RSI.i63 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RBP.i64
  %112 = sub i64 %111, 16
  %113 = load i64, i64* %RSI.i63
  %114 = load i64, i64* %PC.i62
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC.i62
  %116 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %116
  store %struct.Memory* %loadMem_40053c, %struct.Memory** %MEMORY
  %loadMem_400540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %121 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %120, i32 0, i32 0
  %122 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %121, i64 0, i64 0
  %ST0.i66 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %122, i32 0, i32 1
  %123 = load i64, i64* %PC.i65
  %124 = load i64, i64* %PC.i65
  %125 = add i64 %124, 6
  store i64 %125, i64* %PC.i65
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %127 = bitcast i32* %126 to i64*
  store i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52), i64* %127, align 16
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 261, i16* %128, align 2
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %130 = bitcast i32* %129 to i64*
  store i64 %123, i64* %130, align 8
  %131 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52) to float*)
  %132 = bitcast float %131 to i32
  %133 = and i32 %132, 2143289344
  %134 = icmp eq i32 %133, 2139095040
  %135 = and i32 %132, 4194303
  %136 = icmp ne i32 %135, 0
  %137 = and i1 %134, %136
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %140 = load i8, i8* %139, align 1
  %141 = or i8 %138, %140
  store i8 %141, i8* %139, align 1
  %142 = fcmp ueq float %131, 0.000000e+00
  br i1 %142, label %148, label %143

; <label>:143:                                    ; preds = %entry
  %144 = call float @llvm.fabs.f32(float %131)
  %145 = fcmp oeq float %144, 0x7FF0000000000000
  br i1 %145, label %148, label %146

; <label>:146:                                    ; preds = %143
  %147 = fcmp olt float %144, 0x3810000000000000
  br label %148

; <label>:148:                                    ; preds = %146, %143, %entry
  %149 = phi i1 [ false, %entry ], [ false, %143 ], [ %147, %146 ]
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %150, i8* %151, align 1
  %152 = fpext float %131 to double
  %153 = icmp eq i8 %141, 0
  br i1 %153, label %routine_flds_0xee__rip_.exit, label %154

; <label>:154:                                    ; preds = %148
  %155 = bitcast double %152 to i64
  %156 = or i64 %155, 2251799813685248
  %157 = bitcast i64 %156 to double
  br label %routine_flds_0xee__rip_.exit

routine_flds_0xee__rip_.exit:                     ; preds = %148, %154
  %158 = phi double [ %157, %154 ], [ %152, %148 ]
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %160 = bitcast double* %159 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %163 = bitcast double* %162 to i64*
  store i64 %161, i64* %163, align 8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %165 = bitcast double* %164 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %160, align 8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %168 = bitcast double* %167 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %165, align 8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %171 = bitcast double* %170 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %168, align 8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %174 = bitcast double* %173 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %171, align 8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %177 = bitcast double* %176 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %174, align 8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %180 = bitcast double* %179 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %177, align 8
  store double %158, double* %179, align 8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %183 = load i16, i16* %182, align 2
  %184 = add i16 %183, 14336
  %185 = and i16 %184, 14336
  %186 = and i16 %183, -14337
  %187 = or i16 %185, %186
  store i16 %187, i16* %182, align 2
  store %struct.Memory* %loadMem_400540, %struct.Memory** %MEMORY
  %loadMem_400546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %195 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %194, i32 0, i32 0
  %196 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %195, i64 0, i64 0
  %ST0.i61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %196, i32 0, i32 1
  %197 = load i64, i64* %RBP.i60
  %198 = sub i64 %197, 32
  %199 = load double, double* %ST0.i61
  %200 = load i64, i64* %PC.i59
  %201 = load i64, i64* %PC.i59
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC.i59
  %203 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_400546, %struct.State* %0, i64 %198, double %199, i64 %200, i64 893)
  store %struct.Memory* %203, %struct.Memory** %MEMORY
  %loadMem_400549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %211 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %210, i32 0, i32 0
  %212 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %211, i64 0, i64 0
  %ST0.i57 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %212, i32 0, i32 1
  %213 = load i64, i64* %RBP.i56
  %214 = sub i64 %213, 32
  %215 = load i64, i64* %PC.i55
  %216 = load i64, i64* %PC.i55
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC.i55
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %219 = bitcast i32* %218 to i64*
  store i64 %214, i64* %219, align 16
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %220, align 2
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %222 = bitcast i32* %221 to i64*
  store i64 %215, i64* %222, align 8
  %223 = inttoptr i64 %214 to x86_fp80*
  %224 = load x86_fp80, x86_fp80* %223
  %225 = fptrunc x86_fp80 %224 to double
  %226 = bitcast double %225 to i64
  %227 = and i64 %226, 9221120237041090560
  %228 = icmp eq i64 %227, 9218868437227405312
  %229 = and i64 %226, 2251799813685247
  %230 = icmp ne i64 %229, 0
  %231 = and i1 %228, %230
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %234 = load i8, i8* %233, align 1
  %235 = or i8 %232, %234
  store i8 %235, i8* %233, align 1
  %236 = fcmp ueq double %225, 0.000000e+00
  br i1 %236, label %routine_fldt_MINUS0x20__rbp_.exit58, label %237

; <label>:237:                                    ; preds = %routine_flds_0xee__rip_.exit
  %238 = call double @llvm.fabs.f64(double %225)
  %239 = fcmp oeq double %238, 0x7FF0000000000000
  br i1 %239, label %routine_fldt_MINUS0x20__rbp_.exit58, label %240

; <label>:240:                                    ; preds = %237
  %241 = fcmp olt double %238, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit58

routine_fldt_MINUS0x20__rbp_.exit58:              ; preds = %routine_flds_0xee__rip_.exit, %237, %240
  %242 = phi i1 [ false, %routine_flds_0xee__rip_.exit ], [ false, %237 ], [ %241, %240 ]
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %243, i8* %244, align 1
  %245 = icmp eq i8 %235, 0
  %246 = or i64 %226, 2251799813685248
  %247 = bitcast i64 %246 to double
  %248 = select i1 %245, double %225, double %247
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %250 = bitcast double* %249 to i64*
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %253 = bitcast double* %252 to i64*
  store i64 %251, i64* %253, align 8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %255 = bitcast double* %254 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %250, align 8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %258 = bitcast double* %257 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %255, align 8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %261 = bitcast double* %260 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %258, align 8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %264 = bitcast double* %263 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %261, align 8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %267 = bitcast double* %266 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %264, align 8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %270 = bitcast double* %269 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %267, align 8
  store double %248, double* %269, align 8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %273 = load i16, i16* %272, align 2
  %274 = add i16 %273, 14336
  %275 = and i16 %274, 14336
  %276 = and i16 %273, -14337
  %277 = or i16 %275, %276
  store i16 %277, i16* %272, align 2
  store %struct.Memory* %loadMem_400549, %struct.Memory** %MEMORY
  %loadMem_40054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 9
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RSI.i53 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 13
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RSP.i54 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %RSP.i54
  %288 = load i64, i64* %PC.i52
  %289 = add i64 %288, 3
  store i64 %289, i64* %PC.i52
  store i64 %287, i64* %RSI.i53, align 8
  store %struct.Memory* %loadMem_40054c, %struct.Memory** %MEMORY
  %loadMem_40054f = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 9
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %297 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %296, i32 0, i32 0
  %298 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %297, i64 0, i64 0
  %ST0.i49 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %298, i32 0, i32 1
  %299 = load i64, i64* %RSI.i
  %300 = load double, double* %ST0.i49
  %301 = load i64, i64* %PC.i48
  %302 = load i64, i64* %PC.i48
  %303 = add i64 %302, 2
  store i64 %303, i64* %PC.i48
  %304 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_40054f, %struct.State* %0, i64 %299, double %300, i64 %301, i64 830)
  store %struct.Memory* %304, %struct.Memory** %MEMORY
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 15
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %313 to i64*
  %314 = load i64, i64* %RBP.i47
  %315 = sub i64 %314, 56
  %316 = load i64, i64* %RAX.i46
  %317 = load i64, i64* %PC.i45
  %318 = add i64 %317, 4
  store i64 %318, i64* %PC.i45
  %319 = inttoptr i64 %315 to i64*
  store i64 %316, i64* %319
  store %struct.Memory* %loadMem_400551, %struct.Memory** %MEMORY
  %loadMem1_400555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i44
  %324 = add i64 %323, -101
  %325 = load i64, i64* %PC.i44
  %326 = add i64 %325, 5
  %327 = load i64, i64* %PC.i44
  %328 = add i64 %327, 5
  store i64 %328, i64* %PC.i44
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %330, -8
  %332 = inttoptr i64 %331 to i64*
  store i64 %326, i64* %332
  store i64 %331, i64* %329, align 8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %324, i64* %333, align 8
  store %struct.Memory* %loadMem1_400555, %struct.Memory** %MEMORY
  %loadMem2_400555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400555 = load i64, i64* %3
  %call2_400555 = call %struct.Memory* @sub_4004f0.DoDemoFpu1(%struct.State* %0, i64 %loadPC_400555, %struct.Memory* %loadMem2_400555)
  store %struct.Memory* %call2_400555, %struct.Memory** %MEMORY
  %loadMem_40055a = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 0
  %ST0.i41 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1
  %343 = load i64, i64* %RBP.i40
  %344 = sub i64 %343, 48
  %345 = load double, double* %ST0.i41
  %346 = load i64, i64* %PC.i39
  %347 = load i64, i64* %PC.i39
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC.i39
  %349 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_40055a, %struct.State* %0, i64 %344, double %345, i64 %346, i64 893)
  store %struct.Memory* %349, %struct.Memory** %MEMORY
  %loadMem_40055d = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 15
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %357 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %356, i32 0, i32 0
  %358 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %357, i64 0, i64 0
  %ST0.i38 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %358, i32 0, i32 1
  %359 = load i64, i64* %RBP.i37
  %360 = sub i64 %359, 32
  %361 = load i64, i64* %PC.i36
  %362 = load i64, i64* %PC.i36
  %363 = add i64 %362, 3
  store i64 %363, i64* %PC.i36
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %365 = bitcast i32* %364 to i64*
  store i64 %360, i64* %365, align 16
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %366, align 2
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %368 = bitcast i32* %367 to i64*
  store i64 %361, i64* %368, align 8
  %369 = inttoptr i64 %360 to x86_fp80*
  %370 = load x86_fp80, x86_fp80* %369
  %371 = fptrunc x86_fp80 %370 to double
  %372 = bitcast double %371 to i64
  %373 = and i64 %372, 9221120237041090560
  %374 = icmp eq i64 %373, 9218868437227405312
  %375 = and i64 %372, 2251799813685247
  %376 = icmp ne i64 %375, 0
  %377 = and i1 %374, %376
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %380 = load i8, i8* %379, align 1
  %381 = or i8 %378, %380
  store i8 %381, i8* %379, align 1
  %382 = fcmp ueq double %371, 0.000000e+00
  br i1 %382, label %routine_fldt_MINUS0x20__rbp_.exit, label %383

; <label>:383:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit58
  %384 = call double @llvm.fabs.f64(double %371)
  %385 = fcmp oeq double %384, 0x7FF0000000000000
  br i1 %385, label %routine_fldt_MINUS0x20__rbp_.exit, label %386

; <label>:386:                                    ; preds = %383
  %387 = fcmp olt double %384, 0x10000000000000
  br label %routine_fldt_MINUS0x20__rbp_.exit

routine_fldt_MINUS0x20__rbp_.exit:                ; preds = %routine_fldt_MINUS0x20__rbp_.exit58, %383, %386
  %388 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit58 ], [ false, %383 ], [ %387, %386 ]
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i8 %381, 0
  %392 = or i64 %372, 2251799813685248
  %393 = bitcast i64 %392 to double
  %394 = select i1 %391, double %371, double %393
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %396 = bitcast double* %395 to i64*
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %399 = bitcast double* %398 to i64*
  store i64 %397, i64* %399, align 8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %401 = bitcast double* %400 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %396, align 8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %404 = bitcast double* %403 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %401, align 8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %407 = bitcast double* %406 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %404, align 8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %410 = bitcast double* %409 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %407, align 8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %413 = bitcast double* %412 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %410, align 8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %416 = bitcast double* %415 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %413, align 8
  store double %394, double* %415, align 8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %419 = load i16, i16* %418, align 2
  %420 = add i16 %419, 14336
  %421 = and i16 %420, 14336
  %422 = and i16 %419, -14337
  %423 = or i16 %421, %422
  store i16 %423, i16* %418, align 2
  store %struct.Memory* %loadMem_40055d, %struct.Memory** %MEMORY
  %loadMem_400560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %431 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %430, i32 0, i32 0
  %432 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %431, i64 0, i64 0
  %ST0.i35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %432, i32 0, i32 1
  %433 = load i64, i64* %RBP.i34
  %434 = sub i64 %433, 48
  %435 = load i64, i64* %PC.i33
  %436 = load i64, i64* %PC.i33
  %437 = add i64 %436, 3
  store i64 %437, i64* %PC.i33
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %439 = bitcast i32* %438 to i64*
  store i64 %434, i64* %439, align 16
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %440, align 2
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %442 = bitcast i32* %441 to i64*
  store i64 %435, i64* %442, align 8
  %443 = inttoptr i64 %434 to x86_fp80*
  %444 = load x86_fp80, x86_fp80* %443
  %445 = fptrunc x86_fp80 %444 to double
  %446 = bitcast double %445 to i64
  %447 = and i64 %446, 9221120237041090560
  %448 = icmp eq i64 %447, 9218868437227405312
  %449 = and i64 %446, 2251799813685247
  %450 = icmp ne i64 %449, 0
  %451 = and i1 %448, %450
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %454 = load i8, i8* %453, align 1
  %455 = or i8 %452, %454
  store i8 %455, i8* %453, align 1
  %456 = fcmp ueq double %445, 0.000000e+00
  br i1 %456, label %routine_fldt_MINUS0x30__rbp_.exit, label %457

; <label>:457:                                    ; preds = %routine_fldt_MINUS0x20__rbp_.exit
  %458 = call double @llvm.fabs.f64(double %445)
  %459 = fcmp oeq double %458, 0x7FF0000000000000
  br i1 %459, label %routine_fldt_MINUS0x30__rbp_.exit, label %460

; <label>:460:                                    ; preds = %457
  %461 = fcmp olt double %458, 0x10000000000000
  br label %routine_fldt_MINUS0x30__rbp_.exit

routine_fldt_MINUS0x30__rbp_.exit:                ; preds = %routine_fldt_MINUS0x20__rbp_.exit, %457, %460
  %462 = phi i1 [ false, %routine_fldt_MINUS0x20__rbp_.exit ], [ false, %457 ], [ %461, %460 ]
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %463, i8* %464, align 1
  %465 = icmp eq i8 %455, 0
  %466 = or i64 %446, 2251799813685248
  %467 = bitcast i64 %466 to double
  %468 = select i1 %465, double %445, double %467
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %470 = bitcast double* %469 to i64*
  %471 = load i64, i64* %470, align 8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %473 = bitcast double* %472 to i64*
  store i64 %471, i64* %473, align 8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %475 = bitcast double* %474 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %470, align 8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %478 = bitcast double* %477 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %475, align 8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %481 = bitcast double* %480 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %478, align 8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %484 = bitcast double* %483 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %481, align 8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %487 = bitcast double* %486 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %484, align 8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %490 = bitcast double* %489 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %487, align 8
  store double %468, double* %489, align 8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %493 = load i16, i16* %492, align 2
  %494 = add i16 %493, 14336
  %495 = and i16 %494, 14336
  %496 = and i16 %493, -14337
  %497 = or i16 %495, %496
  store i16 %497, i16* %492, align 2
  store %struct.Memory* %loadMem_400560, %struct.Memory** %MEMORY
  %loadMem_400563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 13
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RSP.i32 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RSP.i32
  %508 = load i64, i64* %PC.i30
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC.i30
  store i64 %507, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_400563, %struct.Memory** %MEMORY
  %loadMem_400566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %517 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %516, i32 0, i32 0
  %518 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %517, i64 0, i64 0
  %ST0.i27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %518, i32 0, i32 1
  %519 = load i64, i64* %RAX.i26
  %520 = add i64 %519, 16
  %521 = load double, double* %ST0.i27
  %522 = load i64, i64* %PC.i25
  %523 = load i64, i64* %PC.i25
  %524 = add i64 %523, 3
  store i64 %524, i64* %PC.i25
  %525 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_400566, %struct.State* %0, i64 %520, double %521, i64 %522, i64 888)
  store %struct.Memory* %525, %struct.Memory** %MEMORY
  %loadMem_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %533 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %532, i32 0, i32 0
  %534 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %533, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %534, i32 0, i32 1
  %535 = load i64, i64* %RAX.i22
  %536 = load double, double* %ST0.i
  %537 = load i64, i64* %PC.i21
  %538 = load i64, i64* %PC.i21
  %539 = add i64 %538, 2
  store i64 %539, i64* %PC.i21
  %540 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_400569, %struct.State* %0, i64 %535, double %536, i64 %537, i64 824)
  store %struct.Memory* %540, %struct.Memory** %MEMORY
  %loadMem_40056b = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 11
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %546 to i64*
  %547 = load i64, i64* %PC.i20
  %548 = add i64 %547, 5
  store i64 %548, i64* %PC.i20
  store i64 and (i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64 4294967295), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40056b, %struct.Memory** %MEMORY
  %loadMem_400570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %ECX.i18 = bitcast %union.anon* %554 to i32*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 5
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %557 to i64*
  %558 = load i64, i64* %RCX.i19
  %559 = load i32, i32* %ECX.i18
  %560 = zext i32 %559 to i64
  %561 = load i64, i64* %PC.i17
  %562 = add i64 %561, 2
  store i64 %562, i64* %PC.i17
  %563 = xor i64 %560, %558
  %564 = trunc i64 %563 to i32
  %565 = and i64 %563, 4294967295
  store i64 %565, i64* %RCX.i19, align 8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %566, align 1
  %567 = and i32 %564, 255
  %568 = call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %571, i8* %572, align 1
  %573 = icmp eq i32 %564, 0
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %574, i8* %575, align 1
  %576 = lshr i32 %564, 31
  %577 = trunc i32 %576 to i8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %577, i8* %578, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %579, align 1
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %580, align 1
  store %struct.Memory* %loadMem_400570, %struct.Memory** %MEMORY
  %loadMem_400572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %587 = bitcast %union.anon* %586 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %587, i32 0, i32 0
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 7
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %591 = bitcast %union.anon* %590 to %struct.anon.2*
  %DL.i16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %591, i32 0, i32 0
  %592 = load i8, i8* %CL.i
  %593 = zext i8 %592 to i64
  %594 = load i64, i64* %PC.i15
  %595 = add i64 %594, 2
  store i64 %595, i64* %PC.i15
  store i8 %592, i8* %DL.i16, align 1
  store %struct.Memory* %loadMem_400572, %struct.Memory** %MEMORY
  %loadMem_400574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %602 = bitcast %union.anon* %601 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %602, i32 0, i32 0
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 7
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %606 = bitcast %union.anon* %605 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %606, i32 0, i32 0
  %607 = load i8, i8* %DL.i
  %608 = zext i8 %607 to i64
  %609 = load i64, i64* %PC.i14
  %610 = add i64 %609, 2
  store i64 %610, i64* %PC.i14
  store i8 %607, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400574, %struct.Memory** %MEMORY
  %loadMem1_400576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %PC.i13
  %615 = add i64 %614, -390
  %616 = load i64, i64* %PC.i13
  %617 = add i64 %616, 5
  %618 = load i64, i64* %PC.i13
  %619 = add i64 %618, 5
  store i64 %619, i64* %PC.i13
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = add i64 %621, -8
  %623 = inttoptr i64 %622 to i64*
  store i64 %617, i64* %623
  store i64 %622, i64* %620, align 8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %615, i64* %624, align 8
  store %struct.Memory* %loadMem1_400576, %struct.Memory** %MEMORY
  %loadMem2_400576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400576 = load i64, i64* %3
  %625 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400576)
  store %struct.Memory* %625, %struct.Memory** %MEMORY
  %loadMem_40057b = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %631 to i32*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RCX.i
  %636 = load i32, i32* %ECX.i9
  %637 = zext i32 %636 to i64
  %638 = load i64, i64* %PC.i8
  %639 = add i64 %638, 2
  store i64 %639, i64* %PC.i8
  %640 = xor i64 %637, %635
  %641 = trunc i64 %640 to i32
  %642 = and i64 %640, 4294967295
  store i64 %642, i64* %RCX.i, align 8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %643, align 1
  %644 = and i32 %641, 255
  %645 = call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %648, i8* %649, align 1
  %650 = icmp eq i32 %641, 0
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %651, i8* %652, align 1
  %653 = lshr i32 %641, 31
  %654 = trunc i32 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %654, i8* %655, align 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %656, align 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %657, align 1
  store %struct.Memory* %loadMem_40057b, %struct.Memory** %MEMORY
  %loadMem_40057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %663 to i32*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 15
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %RBP.i7
  %668 = sub i64 %667, 60
  %669 = load i32, i32* %EAX.i
  %670 = zext i32 %669 to i64
  %671 = load i64, i64* %PC.i6
  %672 = add i64 %671, 3
  store i64 %672, i64* %PC.i6
  %673 = inttoptr i64 %668 to i32*
  store i32 %669, i32* %673
  store %struct.Memory* %loadMem_40057d, %struct.Memory** %MEMORY
  %loadMem_400580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 5
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %679 to i32*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %682 to i64*
  %683 = load i32, i32* %ECX.i
  %684 = zext i32 %683 to i64
  %685 = load i64, i64* %PC.i5
  %686 = add i64 %685, 2
  store i64 %686, i64* %PC.i5
  %687 = and i64 %684, 4294967295
  store i64 %687, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400580, %struct.Memory** %MEMORY
  %loadMem_400582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 13
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RSP.i
  %695 = load i64, i64* %PC.i4
  %696 = add i64 %695, 4
  store i64 %696, i64* %PC.i4
  %697 = add i64 96, %694
  store i64 %697, i64* %RSP.i, align 8
  %698 = icmp ult i64 %697, %694
  %699 = icmp ult i64 %697, 96
  %700 = or i1 %698, %699
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %701, i8* %702, align 1
  %703 = trunc i64 %697 to i32
  %704 = and i32 %703, 255
  %705 = call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %708, i8* %709, align 1
  %710 = xor i64 96, %694
  %711 = xor i64 %710, %697
  %712 = lshr i64 %711, 4
  %713 = trunc i64 %712 to i8
  %714 = and i8 %713, 1
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %714, i8* %715, align 1
  %716 = icmp eq i64 %697, 0
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %717, i8* %718, align 1
  %719 = lshr i64 %697, 63
  %720 = trunc i64 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %720, i8* %721, align 1
  %722 = lshr i64 %694, 63
  %723 = xor i64 %719, %722
  %724 = add i64 %723, %719
  %725 = icmp eq i64 %724, 2
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %726, i8* %727, align 1
  store %struct.Memory* %loadMem_400582, %struct.Memory** %MEMORY
  %loadMem_400586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %PC.i2
  %735 = add i64 %734, 1
  store i64 %735, i64* %PC.i2
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = add i64 %737, 8
  %739 = inttoptr i64 %737 to i64*
  %740 = load i64, i64* %739
  store i64 %740, i64* %RBP.i3, align 8
  store i64 %738, i64* %736, align 8
  store %struct.Memory* %loadMem_400586, %struct.Memory** %MEMORY
  %loadMem_400587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %PC.i1
  %745 = add i64 %744, 1
  store i64 %745, i64* %PC.i1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %748 = load i64, i64* %747, align 8
  %749 = inttoptr i64 %748 to i64*
  %750 = load i64, i64* %749
  store i64 %750, i64* %746, align 8
  %751 = add i64 %748, 8
  store i64 %751, i64* %747, align 8
  store %struct.Memory* %loadMem_400587, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400587
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

define %struct.Memory* @routine_movq__0x400640___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_flds_0xee__rip_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %6, i32 0, i32 0
  %8 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %7, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %8, i32 0, i32 1
  %9 = load i64, i64* %PC
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %13 = bitcast i32* %12 to i64*
  store i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52), i64* %13, align 16
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 261, i16* %14, align 2
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %16 = bitcast i32* %15 to i64*
  store i64 %9, i64* %16, align 8
  %17 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0xee__rip__type* @G_0xee__rip_ to i64), i64 52) to float*)
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %26 = load i8, i8* %25, align 1
  %27 = or i8 %24, %26
  store i8 %27, i8* %25, align 1
  %28 = fcmp ueq float %17, 0.000000e+00
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = call float @llvm.fabs.f32(float %17)
  %31 = fcmp oeq float %30, 0x7FF0000000000000
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %29
  %33 = fcmp olt float %30, 0x3810000000000000
  br label %34

; <label>:34:                                     ; preds = %32, %29, %block_400488
  %35 = phi i1 [ false, %block_400488 ], [ false, %29 ], [ %33, %32 ]
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %36, i8* %37, align 1
  %38 = fpext float %17 to double
  %39 = icmp eq i8 %27, 0
  br i1 %39, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit, label %40

; <label>:40:                                     ; preds = %34
  %41 = bitcast double %38 to i64
  %42 = or i64 %41, 2251799813685248
  %43 = bitcast i64 %42 to double
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnIfEEEP6MemoryS4_R5State3RnWIdET_2InImESA_ItE.exit: ; preds = %34, %40
  %44 = phi double [ %43, %40 ], [ %38, %34 ]
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %46 = bitcast double* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %49 = bitcast double* %48 to i64*
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %51 = bitcast double* %50 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %46, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %51, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  store double %44, double* %65, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %69 = load i16, i16* %68, align 2
  %70 = add i16 %69, 14336
  %71 = and i16 %70, 14336
  %72 = and i16 %69, -14337
  %73 = or i16 %71, %72
  store i16 %73, i16* %68, align 2
  ret %struct.Memory* %2
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, double, i64, i64) {
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %2, i64* %8, align 16
  %9 = trunc i64 %5 to i16
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 %9, i16* %10, align 2
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 5
  %12 = bitcast i32* %11 to i64*
  store i64 %4, i64* %12, align 8
  %13 = fcmp ueq double %3, 0.000000e+00
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %6
  %15 = tail call double @llvm.fabs.f64(double %3)
  %16 = fcmp oeq double %15, 0x7FF0000000000000
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  %18 = fcmp olt double %15, 0x10000000000000
  br label %19

; <label>:19:                                     ; preds = %17, %14, %6
  %20 = phi i1 [ false, %6 ], [ false, %14 ], [ %18, %17 ]
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 17
  store i8 %21, i8* %22, align 1
  %23 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %24 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %23)
  %25 = lshr i32 %24, 5
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 9
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = lshr i32 %24, 3
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 13
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %33
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = lshr i32 %24, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 11
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %40
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = and i32 %24, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 19
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = lshr i32 %24, 2
  %53 = and i32 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 15
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %53
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = inttoptr i64 %2 to x86_fp80*
  %60 = fpext double %3 to x86_fp80
  store x86_fp80 %60, x86_fp80* %59
  %61 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 0, i32 1
  %62 = bitcast double* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 1, i32 1
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %62, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 2, i32 1
  %68 = bitcast double* %67 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %65, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 3, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %68, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 4, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 5, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 6, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 7, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  store i64 %63, i64* %83, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %86 = load i16, i16* %85, align 2
  %87 = add i16 %86, 2048
  %88 = and i16 %87, 14336
  %89 = and i16 %86, -14337
  %90 = or i16 %88, %89
  store i16 %90, i16* %85, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_fstpt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %13, double %14, i64 %15, i64 893)
  ret %struct.Memory* %18
}

define %struct.Memory* @routine_fldt_MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %13, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = inttoptr i64 %13 to x86_fp80*
  %23 = load x86_fp80, x86_fp80* %22
  %24 = fptrunc x86_fp80 %23 to double
  %25 = bitcast double %24 to i64
  %26 = and i64 %25, 9221120237041090560
  %27 = icmp eq i64 %26, 9218868437227405312
  %28 = and i64 %25, 2251799813685247
  %29 = icmp ne i64 %28, 0
  %30 = and i1 %27, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %33 = load i8, i8* %32, align 1
  %34 = or i8 %31, %33
  store i8 %34, i8* %32, align 1
  %35 = fcmp ueq double %24, 0.000000e+00
  br i1 %35, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %36

; <label>:36:                                     ; preds = %block_400488
  %37 = call double @llvm.fabs.f64(double %24)
  %38 = fcmp oeq double %37, 0x7FF0000000000000
  br i1 %38, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %39

; <label>:39:                                     ; preds = %36
  %40 = fcmp olt double %37, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %block_400488, %36, %39
  %41 = phi i1 [ false, %block_400488 ], [ false, %36 ], [ %40, %39 ]
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i8 %34, 0
  %45 = or i64 %25, 2251799813685248
  %46 = bitcast i64 %45 to double
  %47 = select i1 %44, double %24, double %46
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %49, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  store double %47, double* %68, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 14336
  %74 = and i16 %73, 14336
  %75 = and i16 %72, -14337
  %76 = or i16 %74, %75
  store i16 %76, i16* %71, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_fstpt___rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RSI
  %13 = load double, double* %ST0
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %12, double %13, i64 %14, i64 830)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.DoDemoFpu1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_fstpt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %13, double %14, i64 %15, i64 893)
  ret %struct.Memory* %18
}

define %struct.Memory* @routine_fldt_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %13, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = inttoptr i64 %13 to x86_fp80*
  %23 = load x86_fp80, x86_fp80* %22
  %24 = fptrunc x86_fp80 %23 to double
  %25 = bitcast double %24 to i64
  %26 = and i64 %25, 9221120237041090560
  %27 = icmp eq i64 %26, 9218868437227405312
  %28 = and i64 %25, 2251799813685247
  %29 = icmp ne i64 %28, 0
  %30 = and i1 %27, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %33 = load i8, i8* %32, align 1
  %34 = or i8 %31, %33
  store i8 %34, i8* %32, align 1
  %35 = fcmp ueq double %24, 0.000000e+00
  br i1 %35, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %36

; <label>:36:                                     ; preds = %block_400488
  %37 = call double @llvm.fabs.f64(double %24)
  %38 = fcmp oeq double %37, 0x7FF0000000000000
  br i1 %38, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %39

; <label>:39:                                     ; preds = %36
  %40 = fcmp olt double %37, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %block_400488, %36, %39
  %41 = phi i1 [ false, %block_400488 ], [ false, %36 ], [ %40, %39 ]
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i8 %34, 0
  %45 = or i64 %25, 2251799813685248
  %46 = bitcast i64 %45 to double
  %47 = select i1 %44, double %24, double %46
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %49, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  store double %47, double* %68, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 14336
  %74 = and i16 %73, 14336
  %75 = and i16 %72, -14337
  %76 = or i16 %74, %75
  store i16 %76, i16* %71, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_fstpt_0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %13, double %14, i64 %15, i64 888)
  ret %struct.Memory* %18
}

define %struct.Memory* @routine_fstpt___rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RAX
  %13 = load double, double* %ST0
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %12, double %13, i64 %14, i64 824)
  ret %struct.Memory* %17
}

define %struct.Memory* @routine_movl__0x400640___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x400640_type* @G__0x400640 to i64), i64 4294967295), i64* %RDI, align 8
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

define %struct.Memory* @routine_movb__dl___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %AL, align 1
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
