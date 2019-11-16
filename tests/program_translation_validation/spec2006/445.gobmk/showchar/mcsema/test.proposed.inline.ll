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
%G_0x4e52f0_type = type <{ [4 x i8] }>
%G_0x4e52f4_type = type <{ [4 x i8] }>
%G_0x4e52f8_type = type <{ [4 x i8] }>
%G_0x4e52fc_type = type <{ [4 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xae3e50_type = type <{ [4 x i8] }>
%G_0xae3e54_type = type <{ [4 x i8] }>
%G__0x4e5300_type = type <{ [8 x i8] }>
%G__0x579d92_type = type <{ [8 x i8] }>
%G__0x581861_type = type <{ [8 x i8] }>
%G__0x581918_type = type <{ [8 x i8] }>
%G__0xb01180_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
%G__0xb9a0a0_type = type <{ [8 x i8] }>
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
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x4e52f0 = global %G_0x4e52f0_type zeroinitializer
@G_0x4e52f4 = global %G_0x4e52f4_type zeroinitializer
@G_0x4e52f8 = global %G_0x4e52f8_type zeroinitializer
@G_0x4e52fc = global %G_0x4e52fc_type zeroinitializer
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0x99c0a0 = global %G_0x99c0a0_type zeroinitializer
@G_0xae3e50 = global %G_0xae3e50_type zeroinitializer
@G_0xae3e54 = global %G_0xae3e54_type zeroinitializer
@G__0x4e5300 = global %G__0x4e5300_type zeroinitializer
@G__0x579d92 = global %G__0x579d92_type zeroinitializer
@G__0x581861 = global %G__0x581861_type zeroinitializer
@G__0x581918 = global %G__0x581918_type zeroinitializer
@G__0xb01180 = global %G__0xb01180_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer
@G__0xb9a0a0 = global %G__0xb9a0a0_type zeroinitializer

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

declare %struct.Memory* @sub_4e2480.write_color_char(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @showchar(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4750e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4750e0, %struct.Memory** %MEMORY
  %loadMem_4750e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i183 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i183
  %27 = load i64, i64* %PC.i182
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i182
  store i64 %26, i64* %RBP.i184, align 8
  store %struct.Memory* %loadMem_4750e1, %struct.Memory** %MEMORY
  %loadMem_4750e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i295 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i295
  %36 = load i64, i64* %PC.i294
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i294
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i295, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_4750e4, %struct.Memory** %MEMORY
  %loadMem_4750e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i503 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i504
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i503
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i502
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i502
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_4750e8, %struct.Memory** %MEMORY
  %loadMem_4750eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i591 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i592
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i591
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i590
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i590
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_4750eb, %struct.Memory** %MEMORY
  %loadMem_4750ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %EDX.i588 = bitcast %union.anon* %104 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i589
  %109 = sub i64 %108, 12
  %110 = load i32, i32* %EDX.i588
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC.i587
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC.i587
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  store %struct.Memory* %loadMem_4750ee, %struct.Memory** %MEMORY
  %loadMem_4750f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %ECX.i585 = bitcast %union.anon* %120 to i32*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i586
  %125 = sub i64 %124, 16
  %126 = load i32, i32* %ECX.i585
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC.i584
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC.i584
  %130 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %130
  store %struct.Memory* %loadMem_4750f1, %struct.Memory** %MEMORY
  %loadMem_4750f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RBP.i583
  %141 = sub i64 %140, 4
  %142 = load i64, i64* %PC.i581
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC.i581
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RCX.i582, align 8
  store %struct.Memory* %loadMem_4750f4, %struct.Memory** %MEMORY
  %loadMem_4750f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %ECX.i580 = bitcast %union.anon* %152 to i32*
  %153 = load i32, i32* %ECX.i580
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %PC.i579
  %156 = add i64 %155, 7
  store i64 %156, i64* %PC.i579
  %157 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %158 = sub i32 %153, %157
  %159 = icmp ult i32 %153, %157
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %161, align 1
  %162 = and i32 %158, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %166, i8* %167, align 1
  %168 = xor i32 %157, %153
  %169 = xor i32 %168, %158
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %172, i8* %173, align 1
  %174 = icmp eq i32 %158, 0
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %175, i8* %176, align 1
  %177 = lshr i32 %158, 31
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %178, i8* %179, align 1
  %180 = lshr i32 %153, 31
  %181 = lshr i32 %157, 31
  %182 = xor i32 %181, %180
  %183 = xor i32 %177, %180
  %184 = add i32 %183, %182
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %186, i8* %187, align 1
  store %struct.Memory* %loadMem_4750f7, %struct.Memory** %MEMORY
  %loadMem_4750fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %PC.i578
  %192 = add i64 %191, 27
  %193 = load i64, i64* %PC.i578
  %194 = add i64 %193, 6
  %195 = load i64, i64* %PC.i578
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC.i578
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %198 = load i8, i8* %197, align 1
  %199 = icmp eq i8 %198, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %BRANCH_TAKEN, align 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %202 = select i1 %199, i64 %192, i64 %194
  store i64 %202, i64* %201, align 8
  store %struct.Memory* %loadMem_4750fe, %struct.Memory** %MEMORY
  %loadBr_4750fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4750fe = icmp eq i8 %loadBr_4750fe, 1
  br i1 %cmpBr_4750fe, label %block_.L_475119, label %block_475104

block_475104:                                     ; preds = %entry
  %loadMem_475104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i577
  %213 = sub i64 %212, 8
  %214 = load i64, i64* %PC.i575
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i575
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_475104, %struct.Memory** %MEMORY
  %loadMem_475107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %EAX.i574 = bitcast %union.anon* %224 to i32*
  %225 = load i32, i32* %EAX.i574
  %226 = zext i32 %225 to i64
  %227 = load i64, i64* %PC.i573
  %228 = add i64 %227, 7
  store i64 %228, i64* %PC.i573
  %229 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %230 = sub i32 %225, %229
  %231 = icmp ult i32 %225, %229
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %232, i8* %233, align 1
  %234 = and i32 %230, 255
  %235 = call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %238, i8* %239, align 1
  %240 = xor i32 %229, %225
  %241 = xor i32 %240, %230
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %244, i8* %245, align 1
  %246 = icmp eq i32 %230, 0
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %247, i8* %248, align 1
  %249 = lshr i32 %230, 31
  %250 = trunc i32 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %250, i8* %251, align 1
  %252 = lshr i32 %225, 31
  %253 = lshr i32 %229, 31
  %254 = xor i32 %253, %252
  %255 = xor i32 %249, %252
  %256 = add i32 %255, %254
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %258, i8* %259, align 1
  store %struct.Memory* %loadMem_475107, %struct.Memory** %MEMORY
  %loadMem_47510e = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %PC.i572
  %264 = add i64 %263, 11
  %265 = load i64, i64* %PC.i572
  %266 = add i64 %265, 6
  %267 = load i64, i64* %PC.i572
  %268 = add i64 %267, 6
  store i64 %268, i64* %PC.i572
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %270 = load i8, i8* %269, align 1
  %271 = icmp eq i8 %270, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %BRANCH_TAKEN, align 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %274 = select i1 %271, i64 %264, i64 %266
  store i64 %274, i64* %273, align 8
  store %struct.Memory* %loadMem_47510e, %struct.Memory** %MEMORY
  %loadBr_47510e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47510e = icmp eq i8 %loadBr_47510e, 1
  br i1 %cmpBr_47510e, label %block_.L_475119, label %block_475114

block_475114:                                     ; preds = %block_475104
  %loadMem_475114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %PC.i571
  %279 = add i64 %278, 42
  %280 = load i64, i64* %PC.i571
  %281 = add i64 %280, 5
  store i64 %281, i64* %PC.i571
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %279, i64* %282, align 8
  store %struct.Memory* %loadMem_475114, %struct.Memory** %MEMORY
  br label %block_.L_47513e

block_.L_475119:                                  ; preds = %block_475104, %entry
  %loadMem_475119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 11
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RDI.i570 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %PC.i569
  %290 = add i64 %289, 10
  store i64 %290, i64* %PC.i569
  store i64 ptrtoint (%G__0x581861_type* @G__0x581861 to i64), i64* %RDI.i570, align 8
  store %struct.Memory* %loadMem_475119, %struct.Memory** %MEMORY
  %loadMem_475123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 9
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RSI.i568 = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %PC.i567
  %298 = add i64 %297, 5
  store i64 %298, i64* %PC.i567
  store i64 259, i64* %RSI.i568, align 8
  store %struct.Memory* %loadMem_475123, %struct.Memory** %MEMORY
  %loadMem_475128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 7
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %PC.i565
  %306 = add i64 %305, 10
  store i64 %306, i64* %PC.i565
  store i64 ptrtoint (%G__0x581918_type* @G__0x581918 to i64), i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_475128, %struct.Memory** %MEMORY
  %loadMem_475132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 15
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RBP.i564
  %317 = sub i64 %316, 4
  %318 = load i64, i64* %PC.i562
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i562
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RCX.i563, align 8
  store %struct.Memory* %loadMem_475132, %struct.Memory** %MEMORY
  %loadMem_475135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 17
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %328 to i32*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 15
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %331 to i64*
  %332 = bitcast i32* %R8D.i to i64*
  %333 = load i64, i64* %RBP.i561
  %334 = sub i64 %333, 8
  %335 = load i64, i64* %PC.i560
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC.i560
  %337 = inttoptr i64 %334 to i32*
  %338 = load i32, i32* %337
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %332, align 8
  store %struct.Memory* %loadMem_475135, %struct.Memory** %MEMORY
  %loadMem1_475139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %PC.i559
  %344 = add i64 %343, -143529
  %345 = load i64, i64* %PC.i559
  %346 = add i64 %345, 5
  %347 = load i64, i64* %PC.i559
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC.i559
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %346, i64* %352
  store i64 %351, i64* %349, align 8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %344, i64* %353, align 8
  store %struct.Memory* %loadMem1_475139, %struct.Memory** %MEMORY
  %loadMem2_475139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475139 = load i64, i64* %3
  %call2_475139 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_475139, %struct.Memory* %loadMem2_475139)
  store %struct.Memory* %call2_475139, %struct.Memory** %MEMORY
  br label %block_.L_47513e

block_.L_47513e:                                  ; preds = %block_.L_475119, %block_475114
  %loadMem_47513e = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %PC.i557
  %361 = add i64 %360, 10
  store i64 %361, i64* %PC.i557
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_47513e, %struct.Memory** %MEMORY
  %loadMem_475148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 15
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RBP.i556
  %372 = sub i64 %371, 4
  %373 = load i64, i64* %PC.i554
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC.i554
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375
  %377 = sext i32 %376 to i64
  %378 = mul i64 %377, 20
  %379 = trunc i64 %378 to i32
  %380 = and i64 %378, 4294967295
  store i64 %380, i64* %RCX.i555, align 8
  %381 = shl i64 %378, 32
  %382 = ashr exact i64 %381, 32
  %383 = icmp ne i64 %382, %378
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %384, i8* %385, align 1
  %386 = and i32 %379, 255
  %387 = call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %390, i8* %391, align 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %392, align 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %393, align 1
  %394 = lshr i32 %379, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %384, i8* %397, align 1
  store %struct.Memory* %loadMem_475148, %struct.Memory** %MEMORY
  %loadMem_47514c = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %RCX.i553
  %405 = load i64, i64* %PC.i552
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i552
  %407 = trunc i64 %404 to i32
  %408 = add i32 21, %407
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RCX.i553, align 8
  %410 = icmp ult i32 %408, %407
  %411 = icmp ult i32 %408, 21
  %412 = or i1 %410, %411
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %413, i8* %414, align 1
  %415 = and i32 %408, 255
  %416 = call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %419, i8* %420, align 1
  %421 = xor i64 21, %404
  %422 = trunc i64 %421 to i32
  %423 = xor i32 %422, %408
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %426, i8* %427, align 1
  %428 = icmp eq i32 %408, 0
  %429 = zext i1 %428 to i8
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %429, i8* %430, align 1
  %431 = lshr i32 %408, 31
  %432 = trunc i32 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %432, i8* %433, align 1
  %434 = lshr i32 %407, 31
  %435 = xor i32 %431, %434
  %436 = add i32 %435, %431
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %438, i8* %439, align 1
  store %struct.Memory* %loadMem_47514c, %struct.Memory** %MEMORY
  %loadMem_47514f = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RCX.i550
  %450 = load i64, i64* %RBP.i551
  %451 = sub i64 %450, 8
  %452 = load i64, i64* %PC.i549
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC.i549
  %454 = trunc i64 %449 to i32
  %455 = inttoptr i64 %451 to i32*
  %456 = load i32, i32* %455
  %457 = add i32 %456, %454
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RCX.i550, align 8
  %459 = icmp ult i32 %457, %454
  %460 = icmp ult i32 %457, %456
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %462, i8* %463, align 1
  %464 = and i32 %457, 255
  %465 = call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %468, i8* %469, align 1
  %470 = xor i32 %456, %454
  %471 = xor i32 %470, %457
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %474, i8* %475, align 1
  %476 = icmp eq i32 %457, 0
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %477, i8* %478, align 1
  %479 = lshr i32 %457, 31
  %480 = trunc i32 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %480, i8* %481, align 1
  %482 = lshr i32 %454, 31
  %483 = lshr i32 %456, 31
  %484 = xor i32 %479, %482
  %485 = xor i32 %479, %483
  %486 = add i32 %484, %485
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %488, i8* %489, align 1
  store %struct.Memory* %loadMem_47514f, %struct.Memory** %MEMORY
  %loadMem_475152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 5
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %ECX.i547 = bitcast %union.anon* %495 to i32*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 7
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RDX.i548 = bitcast %union.anon* %498 to i64*
  %499 = load i32, i32* %ECX.i547
  %500 = zext i32 %499 to i64
  %501 = load i64, i64* %PC.i546
  %502 = add i64 %501, 3
  store i64 %502, i64* %PC.i546
  %503 = shl i64 %500, 32
  %504 = ashr exact i64 %503, 32
  store i64 %504, i64* %RDX.i548, align 8
  store %struct.Memory* %loadMem_475152, %struct.Memory** %MEMORY
  %loadMem_475155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 5
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 7
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %RDX.i545
  %515 = add i64 %514, 12099168
  %516 = load i64, i64* %PC.i543
  %517 = add i64 %516, 8
  store i64 %517, i64* %PC.i543
  %518 = inttoptr i64 %515 to i8*
  %519 = load i8, i8* %518
  %520 = zext i8 %519 to i64
  store i64 %520, i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_475155, %struct.Memory** %MEMORY
  %loadMem_47515d = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 5
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %ECX.i541 = bitcast %union.anon* %526 to i32*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i542
  %531 = sub i64 %530, 28
  %532 = load i32, i32* %ECX.i541
  %533 = zext i32 %532 to i64
  %534 = load i64, i64* %PC.i540
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC.i540
  %536 = inttoptr i64 %531 to i32*
  store i32 %532, i32* %536
  store %struct.Memory* %loadMem_47515d, %struct.Memory** %MEMORY
  %loadMem_475160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 5
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 15
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RBP.i539
  %547 = sub i64 %546, 4
  %548 = load i64, i64* %PC.i537
  %549 = add i64 %548, 4
  store i64 %549, i64* %PC.i537
  %550 = inttoptr i64 %547 to i32*
  %551 = load i32, i32* %550
  %552 = sext i32 %551 to i64
  %553 = mul i64 %552, 20
  %554 = trunc i64 %553 to i32
  %555 = and i64 %553, 4294967295
  store i64 %555, i64* %RCX.i538, align 8
  %556 = shl i64 %553, 32
  %557 = ashr exact i64 %556, 32
  %558 = icmp ne i64 %557, %553
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %559, i8* %560, align 1
  %561 = and i32 %554, 255
  %562 = call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %565, i8* %566, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %567, align 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %568, align 1
  %569 = lshr i32 %554, 31
  %570 = trunc i32 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %559, i8* %572, align 1
  store %struct.Memory* %loadMem_475160, %struct.Memory** %MEMORY
  %loadMem_475164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 5
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %RCX.i536
  %580 = load i64, i64* %PC.i535
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC.i535
  %582 = trunc i64 %579 to i32
  %583 = add i32 21, %582
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RCX.i536, align 8
  %585 = icmp ult i32 %583, %582
  %586 = icmp ult i32 %583, 21
  %587 = or i1 %585, %586
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %588, i8* %589, align 1
  %590 = and i32 %583, 255
  %591 = call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %594, i8* %595, align 1
  %596 = xor i64 21, %579
  %597 = trunc i64 %596 to i32
  %598 = xor i32 %597, %583
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %601, i8* %602, align 1
  %603 = icmp eq i32 %583, 0
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %604, i8* %605, align 1
  %606 = lshr i32 %583, 31
  %607 = trunc i32 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %607, i8* %608, align 1
  %609 = lshr i32 %582, 31
  %610 = xor i32 %606, %609
  %611 = add i32 %610, %606
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1
  store %struct.Memory* %loadMem_475164, %struct.Memory** %MEMORY
  %loadMem_475167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 5
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 15
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %RCX.i533
  %625 = load i64, i64* %RBP.i534
  %626 = sub i64 %625, 8
  %627 = load i64, i64* %PC.i532
  %628 = add i64 %627, 3
  store i64 %628, i64* %PC.i532
  %629 = trunc i64 %624 to i32
  %630 = inttoptr i64 %626 to i32*
  %631 = load i32, i32* %630
  %632 = add i32 %631, %629
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RCX.i533, align 8
  %634 = icmp ult i32 %632, %629
  %635 = icmp ult i32 %632, %631
  %636 = or i1 %634, %635
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %637, i8* %638, align 1
  %639 = and i32 %632, 255
  %640 = call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %643, i8* %644, align 1
  %645 = xor i32 %631, %629
  %646 = xor i32 %645, %632
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %649, i8* %650, align 1
  %651 = icmp eq i32 %632, 0
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %652, i8* %653, align 1
  %654 = lshr i32 %632, 31
  %655 = trunc i32 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %655, i8* %656, align 1
  %657 = lshr i32 %629, 31
  %658 = lshr i32 %631, 31
  %659 = xor i32 %654, %657
  %660 = xor i32 %654, %658
  %661 = add i32 %659, %660
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %663, i8* %664, align 1
  store %struct.Memory* %loadMem_475167, %struct.Memory** %MEMORY
  %loadMem_47516a = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 5
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %ECX.i530 = bitcast %union.anon* %670 to i32*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %673 to i64*
  %674 = load i32, i32* %ECX.i530
  %675 = zext i32 %674 to i64
  %676 = load i64, i64* %PC.i529
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i529
  %678 = shl i64 %675, 32
  %679 = ashr exact i64 %678, 32
  store i64 %679, i64* %RDX.i531, align 8
  store %struct.Memory* %loadMem_47516a, %struct.Memory** %MEMORY
  %loadMem_47516d = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 7
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RDX.i528 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %RDX.i528
  %687 = load i64, i64* %PC.i527
  %688 = add i64 %687, 4
  store i64 %688, i64* %PC.i527
  %689 = sext i64 %686 to i128
  %690 = and i128 %689, -18446744073709551616
  %691 = zext i64 %686 to i128
  %692 = or i128 %690, %691
  %693 = mul i128 76, %692
  %694 = trunc i128 %693 to i64
  store i64 %694, i64* %RDX.i528, align 8
  %695 = sext i64 %694 to i128
  %696 = icmp ne i128 %695, %693
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %697, i8* %698, align 1
  %699 = trunc i128 %693 to i32
  %700 = and i32 %699, 255
  %701 = call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %704, i8* %705, align 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %706, align 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %707, align 1
  %708 = lshr i64 %694, 63
  %709 = trunc i64 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %709, i8* %710, align 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %697, i8* %711, align 1
  store %struct.Memory* %loadMem_47516d, %struct.Memory** %MEMORY
  %loadMem_475171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 7
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RAX.i525
  %722 = load i64, i64* %RDX.i526
  %723 = load i64, i64* %PC.i524
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i524
  %725 = add i64 %722, %721
  store i64 %725, i64* %RAX.i525, align 8
  %726 = icmp ult i64 %725, %721
  %727 = icmp ult i64 %725, %722
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %729, i8* %730, align 1
  %731 = trunc i64 %725 to i32
  %732 = and i32 %731, 255
  %733 = call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %736, i8* %737, align 1
  %738 = xor i64 %722, %721
  %739 = xor i64 %738, %725
  %740 = lshr i64 %739, 4
  %741 = trunc i64 %740 to i8
  %742 = and i8 %741, 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %742, i8* %743, align 1
  %744 = icmp eq i64 %725, 0
  %745 = zext i1 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %745, i8* %746, align 1
  %747 = lshr i64 %725, 63
  %748 = trunc i64 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %748, i8* %749, align 1
  %750 = lshr i64 %721, 63
  %751 = lshr i64 %722, 63
  %752 = xor i64 %747, %750
  %753 = xor i64 %747, %751
  %754 = add i64 %752, %753
  %755 = icmp eq i64 %754, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %757, align 1
  store %struct.Memory* %loadMem_475171, %struct.Memory** %MEMORY
  %loadMem_475174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 1
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 15
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %766 to i64*
  %767 = load i64, i64* %RBP.i523
  %768 = sub i64 %767, 24
  %769 = load i64, i64* %RAX.i522
  %770 = load i64, i64* %PC.i521
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC.i521
  %772 = inttoptr i64 %768 to i64*
  store i64 %769, i64* %772
  store %struct.Memory* %loadMem_475174, %struct.Memory** %MEMORY
  %loadMem_475178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RBP.i520
  %780 = sub i64 %779, 28
  %781 = load i64, i64* %PC.i519
  %782 = add i64 %781, 4
  store i64 %782, i64* %PC.i519
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %785, align 1
  %786 = and i32 %784, 255
  %787 = call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %790, i8* %791, align 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %792, align 1
  %793 = icmp eq i32 %784, 0
  %794 = zext i1 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %794, i8* %795, align 1
  %796 = lshr i32 %784, 31
  %797 = trunc i32 %796 to i8
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %797, i8* %798, align 1
  %799 = lshr i32 %784, 31
  %800 = xor i32 %796, %799
  %801 = add i32 %800, %799
  %802 = icmp eq i32 %801, 2
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %803, i8* %804, align 1
  store %struct.Memory* %loadMem_475178, %struct.Memory** %MEMORY
  %loadMem_47517c = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %807 to i64*
  %808 = load i64, i64* %PC.i518
  %809 = add i64 %808, 356
  %810 = load i64, i64* %PC.i518
  %811 = add i64 %810, 6
  %812 = load i64, i64* %PC.i518
  %813 = add i64 %812, 6
  store i64 %813, i64* %PC.i518
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %815 = load i8, i8* %814, align 1
  %816 = icmp eq i8 %815, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %BRANCH_TAKEN, align 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %819 = select i1 %816, i64 %809, i64 %811
  store i64 %819, i64* %818, align 8
  store %struct.Memory* %loadMem_47517c, %struct.Memory** %MEMORY
  %loadBr_47517c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47517c = icmp eq i8 %loadBr_47517c, 1
  br i1 %cmpBr_47517c, label %block_.L_4752e0, label %block_475182

block_475182:                                     ; preds = %block_.L_47513e
  %loadMem_475182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 15
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %RBP.i517
  %827 = sub i64 %826, 16
  %828 = load i64, i64* %PC.i516
  %829 = add i64 %828, 4
  store i64 %829, i64* %PC.i516
  %830 = inttoptr i64 %827 to i32*
  %831 = load i32, i32* %830
  %832 = sub i32 %831, 2
  %833 = icmp ult i32 %831, 2
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %834, i8* %835, align 1
  %836 = and i32 %832, 255
  %837 = call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %840, i8* %841, align 1
  %842 = xor i32 %831, 2
  %843 = xor i32 %842, %832
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %846, i8* %847, align 1
  %848 = icmp eq i32 %832, 0
  %849 = zext i1 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %849, i8* %850, align 1
  %851 = lshr i32 %832, 31
  %852 = trunc i32 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %852, i8* %853, align 1
  %854 = lshr i32 %831, 31
  %855 = xor i32 %851, %854
  %856 = add i32 %855, %854
  %857 = icmp eq i32 %856, 2
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %858, i8* %859, align 1
  store %struct.Memory* %loadMem_475182, %struct.Memory** %MEMORY
  %loadMem_475186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %PC.i515
  %864 = add i64 %863, 42
  %865 = load i64, i64* %PC.i515
  %866 = add i64 %865, 6
  %867 = load i64, i64* %PC.i515
  %868 = add i64 %867, 6
  store i64 %868, i64* %PC.i515
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %870 = load i8, i8* %869, align 1
  store i8 %870, i8* %BRANCH_TAKEN, align 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %872 = icmp ne i8 %870, 0
  %873 = select i1 %872, i64 %864, i64 %866
  store i64 %873, i64* %871, align 8
  store %struct.Memory* %loadMem_475186, %struct.Memory** %MEMORY
  %loadBr_475186 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475186 = icmp eq i8 %loadBr_475186, 1
  br i1 %cmpBr_475186, label %block_.L_4751b0, label %block_47518c

block_47518c:                                     ; preds = %block_475182
  %loadMem_47518c = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 9
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RSI.i514 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %PC.i513
  %881 = add i64 %880, 10
  store i64 %881, i64* %PC.i513
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RSI.i514, align 8
  store %struct.Memory* %loadMem_47518c, %struct.Memory** %MEMORY
  %loadMem_475196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 11
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RDI.i512 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %PC.i511
  %889 = add i64 %888, 8
  store i64 %889, i64* %PC.i511
  %890 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %890, i64* %RDI.i512, align 8
  store %struct.Memory* %loadMem_475196, %struct.Memory** %MEMORY
  %loadMem_47519e = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 7
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RDX.i509 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 15
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %RBP.i510
  %901 = sub i64 %900, 12
  %902 = load i64, i64* %PC.i508
  %903 = add i64 %902, 3
  store i64 %903, i64* %PC.i508
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RDX.i509, align 8
  store %struct.Memory* %loadMem_47519e, %struct.Memory** %MEMORY
  %loadMem_4751a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %913 = bitcast %union.anon* %912 to %struct.anon.2*
  %AL.i507 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %913, i32 0, i32 0
  %914 = load i64, i64* %PC.i506
  %915 = add i64 %914, 2
  store i64 %915, i64* %PC.i506
  store i8 0, i8* %AL.i507, align 1
  store %struct.Memory* %loadMem_4751a1, %struct.Memory** %MEMORY
  %loadMem1_4751a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %PC.i505
  %920 = add i64 %919, -475347
  %921 = load i64, i64* %PC.i505
  %922 = add i64 %921, 5
  %923 = load i64, i64* %PC.i505
  %924 = add i64 %923, 5
  store i64 %924, i64* %PC.i505
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %926 = load i64, i64* %925, align 8
  %927 = add i64 %926, -8
  %928 = inttoptr i64 %927 to i64*
  store i64 %922, i64* %928
  store i64 %927, i64* %925, align 8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %920, i64* %929, align 8
  store %struct.Memory* %loadMem1_4751a3, %struct.Memory** %MEMORY
  %loadMem2_4751a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4751a3 = load i64, i64* %3
  %930 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4751a3)
  store %struct.Memory* %930, %struct.Memory** %MEMORY
  %loadMem_4751a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %936 to i32*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i501
  %941 = sub i64 %940, 44
  %942 = load i32, i32* %EAX.i500
  %943 = zext i32 %942 to i64
  %944 = load i64, i64* %PC.i499
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC.i499
  %946 = inttoptr i64 %941 to i32*
  store i32 %942, i32* %946
  store %struct.Memory* %loadMem_4751a8, %struct.Memory** %MEMORY
  %loadMem_4751ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %949 to i64*
  %950 = load i64, i64* %PC.i498
  %951 = add i64 %950, 304
  %952 = load i64, i64* %PC.i498
  %953 = add i64 %952, 5
  store i64 %953, i64* %PC.i498
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %951, i64* %954, align 8
  store %struct.Memory* %loadMem_4751ab, %struct.Memory** %MEMORY
  br label %block_.L_4752db

block_.L_4751b0:                                  ; preds = %block_475182
  %loadMem_4751b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %960 to i64*
  %961 = load i64, i64* %PC.i496
  %962 = add i64 %961, 10
  store i64 %962, i64* %PC.i496
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_4751b0, %struct.Memory** %MEMORY
  %loadMem_4751ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 5
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 15
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %RBP.i495
  %973 = sub i64 %972, 4
  %974 = load i64, i64* %PC.i493
  %975 = add i64 %974, 4
  store i64 %975, i64* %PC.i493
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976
  %978 = sext i32 %977 to i64
  %979 = mul i64 %978, 20
  %980 = trunc i64 %979 to i32
  %981 = and i64 %979, 4294967295
  store i64 %981, i64* %RCX.i494, align 8
  %982 = shl i64 %979, 32
  %983 = ashr exact i64 %982, 32
  %984 = icmp ne i64 %983, %979
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %985, i8* %986, align 1
  %987 = and i32 %980, 255
  %988 = call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %991, i8* %992, align 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %993, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %994, align 1
  %995 = lshr i32 %980, 31
  %996 = trunc i32 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %985, i8* %998, align 1
  store %struct.Memory* %loadMem_4751ba, %struct.Memory** %MEMORY
  %loadMem_4751be = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 5
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %RCX.i492
  %1006 = load i64, i64* %PC.i491
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC.i491
  %1008 = trunc i64 %1005 to i32
  %1009 = add i32 21, %1008
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RCX.i492, align 8
  %1011 = icmp ult i32 %1009, %1008
  %1012 = icmp ult i32 %1009, 21
  %1013 = or i1 %1011, %1012
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1014, i8* %1015, align 1
  %1016 = and i32 %1009, 255
  %1017 = call i32 @llvm.ctpop.i32(i32 %1016)
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1020, i8* %1021, align 1
  %1022 = xor i64 21, %1005
  %1023 = trunc i64 %1022 to i32
  %1024 = xor i32 %1023, %1009
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1027, i8* %1028, align 1
  %1029 = icmp eq i32 %1009, 0
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1030, i8* %1031, align 1
  %1032 = lshr i32 %1009, 31
  %1033 = trunc i32 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i32 %1008, 31
  %1036 = xor i32 %1032, %1035
  %1037 = add i32 %1036, %1032
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1039, i8* %1040, align 1
  store %struct.Memory* %loadMem_4751be, %struct.Memory** %MEMORY
  %loadMem_4751c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 5
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 15
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RCX.i489
  %1051 = load i64, i64* %RBP.i490
  %1052 = sub i64 %1051, 8
  %1053 = load i64, i64* %PC.i488
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i488
  %1055 = trunc i64 %1050 to i32
  %1056 = inttoptr i64 %1052 to i32*
  %1057 = load i32, i32* %1056
  %1058 = add i32 %1057, %1055
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RCX.i489, align 8
  %1060 = icmp ult i32 %1058, %1055
  %1061 = icmp ult i32 %1058, %1057
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1063, i8* %1064, align 1
  %1065 = and i32 %1058, 255
  %1066 = call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1069, i8* %1070, align 1
  %1071 = xor i32 %1057, %1055
  %1072 = xor i32 %1071, %1058
  %1073 = lshr i32 %1072, 4
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1075, i8* %1076, align 1
  %1077 = icmp eq i32 %1058, 0
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1078, i8* %1079, align 1
  %1080 = lshr i32 %1058, 31
  %1081 = trunc i32 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1081, i8* %1082, align 1
  %1083 = lshr i32 %1055, 31
  %1084 = lshr i32 %1057, 31
  %1085 = xor i32 %1080, %1083
  %1086 = xor i32 %1080, %1084
  %1087 = add i32 %1085, %1086
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1089, i8* %1090, align 1
  store %struct.Memory* %loadMem_4751c1, %struct.Memory** %MEMORY
  %loadMem_4751c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 5
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %ECX.i486 = bitcast %union.anon* %1096 to i32*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 7
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %1099 to i64*
  %1100 = load i32, i32* %ECX.i486
  %1101 = zext i32 %1100 to i64
  %1102 = load i64, i64* %PC.i485
  %1103 = add i64 %1102, 3
  store i64 %1103, i64* %PC.i485
  %1104 = shl i64 %1101, 32
  %1105 = ashr exact i64 %1104, 32
  store i64 %1105, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_4751c4, %struct.Memory** %MEMORY
  %loadMem_4751c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 7
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %RDX.i484
  %1113 = load i64, i64* %PC.i483
  %1114 = add i64 %1113, 4
  store i64 %1114, i64* %PC.i483
  %1115 = sext i64 %1112 to i128
  %1116 = and i128 %1115, -18446744073709551616
  %1117 = zext i64 %1112 to i128
  %1118 = or i128 %1116, %1117
  %1119 = mul i128 36, %1118
  %1120 = trunc i128 %1119 to i64
  store i64 %1120, i64* %RDX.i484, align 8
  %1121 = sext i64 %1120 to i128
  %1122 = icmp ne i128 %1121, %1119
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1123, i8* %1124, align 1
  %1125 = trunc i128 %1119 to i32
  %1126 = and i32 %1125, 255
  %1127 = call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1130, i8* %1131, align 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1132, align 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1133, align 1
  %1134 = lshr i64 %1120, 63
  %1135 = trunc i64 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1135, i8* %1136, align 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1123, i8* %1137, align 1
  store %struct.Memory* %loadMem_4751c7, %struct.Memory** %MEMORY
  %loadMem_4751cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 1
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 7
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RDX.i482 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %RAX.i481
  %1148 = load i64, i64* %RDX.i482
  %1149 = load i64, i64* %PC.i480
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %PC.i480
  %1151 = add i64 %1148, %1147
  store i64 %1151, i64* %RAX.i481, align 8
  %1152 = icmp ult i64 %1151, %1147
  %1153 = icmp ult i64 %1151, %1148
  %1154 = or i1 %1152, %1153
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1155, i8* %1156, align 1
  %1157 = trunc i64 %1151 to i32
  %1158 = and i32 %1157, 255
  %1159 = call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1162, i8* %1163, align 1
  %1164 = xor i64 %1148, %1147
  %1165 = xor i64 %1164, %1151
  %1166 = lshr i64 %1165, 4
  %1167 = trunc i64 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1168, i8* %1169, align 1
  %1170 = icmp eq i64 %1151, 0
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1171, i8* %1172, align 1
  %1173 = lshr i64 %1151, 63
  %1174 = trunc i64 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1174, i8* %1175, align 1
  %1176 = lshr i64 %1147, 63
  %1177 = lshr i64 %1148, 63
  %1178 = xor i64 %1173, %1176
  %1179 = xor i64 %1173, %1177
  %1180 = add i64 %1178, %1179
  %1181 = icmp eq i64 %1180, 2
  %1182 = zext i1 %1181 to i8
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1182, i8* %1183, align 1
  store %struct.Memory* %loadMem_4751cb, %struct.Memory** %MEMORY
  %loadMem_4751ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 33
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 1
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RAX.i479
  %1191 = load i64, i64* %PC.i478
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %PC.i478
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sub i32 %1194, 5
  %1196 = icmp ult i32 %1194, 5
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1198, align 1
  %1199 = and i32 %1195, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1
  %1205 = xor i32 %1194, 5
  %1206 = xor i32 %1205, %1195
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1209, i8* %1210, align 1
  %1211 = icmp eq i32 %1195, 0
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1212, i8* %1213, align 1
  %1214 = lshr i32 %1195, 31
  %1215 = trunc i32 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i32 %1194, 31
  %1218 = xor i32 %1214, %1217
  %1219 = add i32 %1218, %1217
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1221, i8* %1222, align 1
  store %struct.Memory* %loadMem_4751ce, %struct.Memory** %MEMORY
  %loadMem_4751d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %PC.i477
  %1227 = add i64 %1226, 128
  %1228 = load i64, i64* %PC.i477
  %1229 = add i64 %1228, 6
  %1230 = load i64, i64* %PC.i477
  %1231 = add i64 %1230, 6
  store i64 %1231, i64* %PC.i477
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1233 = load i8, i8* %1232, align 1
  %1234 = icmp eq i8 %1233, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %BRANCH_TAKEN, align 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1237 = select i1 %1234, i64 %1227, i64 %1229
  store i64 %1237, i64* %1236, align 8
  store %struct.Memory* %loadMem_4751d1, %struct.Memory** %MEMORY
  %loadBr_4751d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4751d1 = icmp eq i8 %loadBr_4751d1, 1
  br i1 %cmpBr_4751d1, label %block_.L_475251, label %block_4751d7

block_4751d7:                                     ; preds = %block_.L_4751b0
  %loadMem_4751d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %PC.i475
  %1245 = add i64 %1244, 10
  store i64 %1245, i64* %PC.i475
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX.i476, align 8
  store %struct.Memory* %loadMem_4751d7, %struct.Memory** %MEMORY
  %loadMem_4751e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 5
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 15
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RBP.i474
  %1256 = sub i64 %1255, 4
  %1257 = load i64, i64* %PC.i472
  %1258 = add i64 %1257, 4
  store i64 %1258, i64* %PC.i472
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259
  %1261 = sext i32 %1260 to i64
  %1262 = mul i64 %1261, 20
  %1263 = trunc i64 %1262 to i32
  %1264 = and i64 %1262, 4294967295
  store i64 %1264, i64* %RCX.i473, align 8
  %1265 = shl i64 %1262, 32
  %1266 = ashr exact i64 %1265, 32
  %1267 = icmp ne i64 %1266, %1262
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1268, i8* %1269, align 1
  %1270 = and i32 %1263, 255
  %1271 = call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1274, i8* %1275, align 1
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1276, align 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1277, align 1
  %1278 = lshr i32 %1263, 31
  %1279 = trunc i32 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1279, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1268, i8* %1281, align 1
  store %struct.Memory* %loadMem_4751e1, %struct.Memory** %MEMORY
  %loadMem_4751e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 33
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 5
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %RCX.i471
  %1289 = load i64, i64* %PC.i470
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC.i470
  %1291 = trunc i64 %1288 to i32
  %1292 = add i32 21, %1291
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RCX.i471, align 8
  %1294 = icmp ult i32 %1292, %1291
  %1295 = icmp ult i32 %1292, 21
  %1296 = or i1 %1294, %1295
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1297, i8* %1298, align 1
  %1299 = and i32 %1292, 255
  %1300 = call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1303, i8* %1304, align 1
  %1305 = xor i64 21, %1288
  %1306 = trunc i64 %1305 to i32
  %1307 = xor i32 %1306, %1292
  %1308 = lshr i32 %1307, 4
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1310, i8* %1311, align 1
  %1312 = icmp eq i32 %1292, 0
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1313, i8* %1314, align 1
  %1315 = lshr i32 %1292, 31
  %1316 = trunc i32 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1316, i8* %1317, align 1
  %1318 = lshr i32 %1291, 31
  %1319 = xor i32 %1315, %1318
  %1320 = add i32 %1319, %1315
  %1321 = icmp eq i32 %1320, 2
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1322, i8* %1323, align 1
  store %struct.Memory* %loadMem_4751e5, %struct.Memory** %MEMORY
  %loadMem_4751e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RCX.i468
  %1334 = load i64, i64* %RBP.i469
  %1335 = sub i64 %1334, 8
  %1336 = load i64, i64* %PC.i467
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %PC.i467
  %1338 = trunc i64 %1333 to i32
  %1339 = inttoptr i64 %1335 to i32*
  %1340 = load i32, i32* %1339
  %1341 = add i32 %1340, %1338
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RCX.i468, align 8
  %1343 = icmp ult i32 %1341, %1338
  %1344 = icmp ult i32 %1341, %1340
  %1345 = or i1 %1343, %1344
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1346, i8* %1347, align 1
  %1348 = and i32 %1341, 255
  %1349 = call i32 @llvm.ctpop.i32(i32 %1348)
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  %1352 = xor i8 %1351, 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1352, i8* %1353, align 1
  %1354 = xor i32 %1340, %1338
  %1355 = xor i32 %1354, %1341
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1358, i8* %1359, align 1
  %1360 = icmp eq i32 %1341, 0
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1361, i8* %1362, align 1
  %1363 = lshr i32 %1341, 31
  %1364 = trunc i32 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1364, i8* %1365, align 1
  %1366 = lshr i32 %1338, 31
  %1367 = lshr i32 %1340, 31
  %1368 = xor i32 %1363, %1366
  %1369 = xor i32 %1363, %1367
  %1370 = add i32 %1368, %1369
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1372, i8* %1373, align 1
  store %struct.Memory* %loadMem_4751e8, %struct.Memory** %MEMORY
  %loadMem_4751eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 5
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %ECX.i465 = bitcast %union.anon* %1379 to i32*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 7
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %1382 to i64*
  %1383 = load i32, i32* %ECX.i465
  %1384 = zext i32 %1383 to i64
  %1385 = load i64, i64* %PC.i464
  %1386 = add i64 %1385, 3
  store i64 %1386, i64* %PC.i464
  %1387 = shl i64 %1384, 32
  %1388 = ashr exact i64 %1387, 32
  store i64 %1388, i64* %RDX.i466, align 8
  store %struct.Memory* %loadMem_4751eb, %struct.Memory** %MEMORY
  %loadMem_4751ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 7
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RDX.i463 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %RDX.i463
  %1396 = load i64, i64* %PC.i462
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %PC.i462
  %1398 = sext i64 %1395 to i128
  %1399 = and i128 %1398, -18446744073709551616
  %1400 = zext i64 %1395 to i128
  %1401 = or i128 %1399, %1400
  %1402 = mul i128 36, %1401
  %1403 = trunc i128 %1402 to i64
  store i64 %1403, i64* %RDX.i463, align 8
  %1404 = sext i64 %1403 to i128
  %1405 = icmp ne i128 %1404, %1402
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1406, i8* %1407, align 1
  %1408 = trunc i128 %1402 to i32
  %1409 = and i32 %1408, 255
  %1410 = call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1413, i8* %1414, align 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1415, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1416, align 1
  %1417 = lshr i64 %1403, 63
  %1418 = trunc i64 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1418, i8* %1419, align 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1406, i8* %1420, align 1
  store %struct.Memory* %loadMem_4751ee, %struct.Memory** %MEMORY
  %loadMem_4751f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 7
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %RAX.i460
  %1431 = load i64, i64* %RDX.i461
  %1432 = load i64, i64* %PC.i459
  %1433 = add i64 %1432, 3
  store i64 %1433, i64* %PC.i459
  %1434 = add i64 %1431, %1430
  store i64 %1434, i64* %RAX.i460, align 8
  %1435 = icmp ult i64 %1434, %1430
  %1436 = icmp ult i64 %1434, %1431
  %1437 = or i1 %1435, %1436
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1438, i8* %1439, align 1
  %1440 = trunc i64 %1434 to i32
  %1441 = and i32 %1440, 255
  %1442 = call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1445, i8* %1446, align 1
  %1447 = xor i64 %1431, %1430
  %1448 = xor i64 %1447, %1434
  %1449 = lshr i64 %1448, 4
  %1450 = trunc i64 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1451, i8* %1452, align 1
  %1453 = icmp eq i64 %1434, 0
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1454, i8* %1455, align 1
  %1456 = lshr i64 %1434, 63
  %1457 = trunc i64 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1457, i8* %1458, align 1
  %1459 = lshr i64 %1430, 63
  %1460 = lshr i64 %1431, 63
  %1461 = xor i64 %1456, %1459
  %1462 = xor i64 %1456, %1460
  %1463 = add i64 %1461, %1462
  %1464 = icmp eq i64 %1463, 2
  %1465 = zext i1 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1465, i8* %1466, align 1
  store %struct.Memory* %loadMem_4751f2, %struct.Memory** %MEMORY
  %loadMem_4751f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RAX.i458
  %1474 = load i64, i64* %PC.i457
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %PC.i457
  %1476 = inttoptr i64 %1473 to i32*
  %1477 = load i32, i32* %1476
  %1478 = sub i32 %1477, 4
  %1479 = icmp ult i32 %1477, 4
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1480, i8* %1481, align 1
  %1482 = and i32 %1478, 255
  %1483 = call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1486, i8* %1487, align 1
  %1488 = xor i32 %1477, 4
  %1489 = xor i32 %1488, %1478
  %1490 = lshr i32 %1489, 4
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1492, i8* %1493, align 1
  %1494 = icmp eq i32 %1478, 0
  %1495 = zext i1 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1495, i8* %1496, align 1
  %1497 = lshr i32 %1478, 31
  %1498 = trunc i32 %1497 to i8
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1498, i8* %1499, align 1
  %1500 = lshr i32 %1477, 31
  %1501 = xor i32 %1497, %1500
  %1502 = add i32 %1501, %1500
  %1503 = icmp eq i32 %1502, 2
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1504, i8* %1505, align 1
  store %struct.Memory* %loadMem_4751f5, %struct.Memory** %MEMORY
  %loadMem_4751f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %PC.i456
  %1510 = add i64 %1509, 21
  %1511 = load i64, i64* %PC.i456
  %1512 = add i64 %1511, 6
  %1513 = load i64, i64* %PC.i456
  %1514 = add i64 %1513, 6
  store i64 %1514, i64* %PC.i456
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1516 = load i8, i8* %1515, align 1
  %1517 = icmp eq i8 %1516, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %BRANCH_TAKEN, align 1
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1520 = select i1 %1517, i64 %1510, i64 %1512
  store i64 %1520, i64* %1519, align 8
  store %struct.Memory* %loadMem_4751f8, %struct.Memory** %MEMORY
  %loadBr_4751f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4751f8 = icmp eq i8 %loadBr_4751f8, 1
  br i1 %cmpBr_4751f8, label %block_.L_47520d, label %block_4751fe

block_4751fe:                                     ; preds = %block_4751d7
  %loadMem_4751fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 1
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %1526 to i64*
  %1527 = load i64, i64* %PC.i454
  %1528 = add i64 %1527, 7
  store i64 %1528, i64* %PC.i454
  %1529 = load i32, i32* bitcast (%G_0x4e52fc_type* @G_0x4e52fc to i32*)
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_4751fe, %struct.Memory** %MEMORY
  %loadMem_475205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 1
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %EAX.i452 = bitcast %union.anon* %1536 to i32*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 15
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %1539 to i64*
  %1540 = load i64, i64* %RBP.i453
  %1541 = sub i64 %1540, 32
  %1542 = load i32, i32* %EAX.i452
  %1543 = zext i32 %1542 to i64
  %1544 = load i64, i64* %PC.i451
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i451
  %1546 = inttoptr i64 %1541 to i32*
  store i32 %1542, i32* %1546
  store %struct.Memory* %loadMem_475205, %struct.Memory** %MEMORY
  %loadMem_475208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %PC.i450
  %1551 = add i64 %1550, 15
  %1552 = load i64, i64* %PC.i450
  %1553 = add i64 %1552, 5
  store i64 %1553, i64* %PC.i450
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1551, i64* %1554, align 8
  store %struct.Memory* %loadMem_475208, %struct.Memory** %MEMORY
  br label %block_.L_475217

block_.L_47520d:                                  ; preds = %block_4751d7
  %loadMem_47520d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %PC.i448
  %1562 = add i64 %1561, 7
  store i64 %1562, i64* %PC.i448
  %1563 = load i32, i32* bitcast (%G_0x4e52f4_type* @G_0x4e52f4 to i32*)
  %1564 = zext i32 %1563 to i64
  store i64 %1564, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_47520d, %struct.Memory** %MEMORY
  %loadMem_475214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 1
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %EAX.i446 = bitcast %union.anon* %1570 to i32*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 15
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1573 to i64*
  %1574 = load i64, i64* %RBP.i447
  %1575 = sub i64 %1574, 32
  %1576 = load i32, i32* %EAX.i446
  %1577 = zext i32 %1576 to i64
  %1578 = load i64, i64* %PC.i445
  %1579 = add i64 %1578, 3
  store i64 %1579, i64* %PC.i445
  %1580 = inttoptr i64 %1575 to i32*
  store i32 %1576, i32* %1580
  store %struct.Memory* %loadMem_475214, %struct.Memory** %MEMORY
  br label %block_.L_475217

block_.L_475217:                                  ; preds = %block_.L_47520d, %block_4751fe
  %loadMem_475217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 1
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %PC.i443
  %1588 = add i64 %1587, 10
  store i64 %1588, i64* %PC.i443
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_475217, %struct.Memory** %MEMORY
  %loadMem_475221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 5
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 15
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %RBP.i442
  %1599 = sub i64 %1598, 4
  %1600 = load i64, i64* %PC.i440
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %PC.i440
  %1602 = inttoptr i64 %1599 to i32*
  %1603 = load i32, i32* %1602
  %1604 = sext i32 %1603 to i64
  %1605 = mul i64 %1604, 20
  %1606 = trunc i64 %1605 to i32
  %1607 = and i64 %1605, 4294967295
  store i64 %1607, i64* %RCX.i441, align 8
  %1608 = shl i64 %1605, 32
  %1609 = ashr exact i64 %1608, 32
  %1610 = icmp ne i64 %1609, %1605
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1611, i8* %1612, align 1
  %1613 = and i32 %1606, 255
  %1614 = call i32 @llvm.ctpop.i32(i32 %1613)
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  %1617 = xor i8 %1616, 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1617, i8* %1618, align 1
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1619, align 1
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1620, align 1
  %1621 = lshr i32 %1606, 31
  %1622 = trunc i32 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1622, i8* %1623, align 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1611, i8* %1624, align 1
  store %struct.Memory* %loadMem_475221, %struct.Memory** %MEMORY
  %loadMem_475225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 5
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RCX.i439
  %1632 = load i64, i64* %PC.i438
  %1633 = add i64 %1632, 3
  store i64 %1633, i64* %PC.i438
  %1634 = trunc i64 %1631 to i32
  %1635 = add i32 21, %1634
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RCX.i439, align 8
  %1637 = icmp ult i32 %1635, %1634
  %1638 = icmp ult i32 %1635, 21
  %1639 = or i1 %1637, %1638
  %1640 = zext i1 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1640, i8* %1641, align 1
  %1642 = and i32 %1635, 255
  %1643 = call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1646, i8* %1647, align 1
  %1648 = xor i64 21, %1631
  %1649 = trunc i64 %1648 to i32
  %1650 = xor i32 %1649, %1635
  %1651 = lshr i32 %1650, 4
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1653, i8* %1654, align 1
  %1655 = icmp eq i32 %1635, 0
  %1656 = zext i1 %1655 to i8
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1656, i8* %1657, align 1
  %1658 = lshr i32 %1635, 31
  %1659 = trunc i32 %1658 to i8
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1659, i8* %1660, align 1
  %1661 = lshr i32 %1634, 31
  %1662 = xor i32 %1658, %1661
  %1663 = add i32 %1662, %1658
  %1664 = icmp eq i32 %1663, 2
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1665, i8* %1666, align 1
  store %struct.Memory* %loadMem_475225, %struct.Memory** %MEMORY
  %loadMem_475228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 5
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 15
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %RCX.i436
  %1677 = load i64, i64* %RBP.i437
  %1678 = sub i64 %1677, 8
  %1679 = load i64, i64* %PC.i435
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC.i435
  %1681 = trunc i64 %1676 to i32
  %1682 = inttoptr i64 %1678 to i32*
  %1683 = load i32, i32* %1682
  %1684 = add i32 %1683, %1681
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RCX.i436, align 8
  %1686 = icmp ult i32 %1684, %1681
  %1687 = icmp ult i32 %1684, %1683
  %1688 = or i1 %1686, %1687
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1689, i8* %1690, align 1
  %1691 = and i32 %1684, 255
  %1692 = call i32 @llvm.ctpop.i32(i32 %1691)
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1695, i8* %1696, align 1
  %1697 = xor i32 %1683, %1681
  %1698 = xor i32 %1697, %1684
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1701, i8* %1702, align 1
  %1703 = icmp eq i32 %1684, 0
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1704, i8* %1705, align 1
  %1706 = lshr i32 %1684, 31
  %1707 = trunc i32 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1707, i8* %1708, align 1
  %1709 = lshr i32 %1681, 31
  %1710 = lshr i32 %1683, 31
  %1711 = xor i32 %1706, %1709
  %1712 = xor i32 %1706, %1710
  %1713 = add i32 %1711, %1712
  %1714 = icmp eq i32 %1713, 2
  %1715 = zext i1 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1715, i8* %1716, align 1
  store %struct.Memory* %loadMem_475228, %struct.Memory** %MEMORY
  %loadMem_47522b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 5
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %ECX.i433 = bitcast %union.anon* %1722 to i32*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 7
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %1725 to i64*
  %1726 = load i32, i32* %ECX.i433
  %1727 = zext i32 %1726 to i64
  %1728 = load i64, i64* %PC.i432
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %PC.i432
  %1730 = shl i64 %1727, 32
  %1731 = ashr exact i64 %1730, 32
  store i64 %1731, i64* %RDX.i434, align 8
  store %struct.Memory* %loadMem_47522b, %struct.Memory** %MEMORY
  %loadMem_47522e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 7
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %RDX.i431
  %1739 = load i64, i64* %PC.i430
  %1740 = add i64 %1739, 4
  store i64 %1740, i64* %PC.i430
  %1741 = sext i64 %1738 to i128
  %1742 = and i128 %1741, -18446744073709551616
  %1743 = zext i64 %1738 to i128
  %1744 = or i128 %1742, %1743
  %1745 = mul i128 36, %1744
  %1746 = trunc i128 %1745 to i64
  store i64 %1746, i64* %RDX.i431, align 8
  %1747 = sext i64 %1746 to i128
  %1748 = icmp ne i128 %1747, %1745
  %1749 = zext i1 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1749, i8* %1750, align 1
  %1751 = trunc i128 %1745 to i32
  %1752 = and i32 %1751, 255
  %1753 = call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1756, i8* %1757, align 1
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1758, align 1
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1759, align 1
  %1760 = lshr i64 %1746, 63
  %1761 = trunc i64 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1761, i8* %1762, align 1
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1749, i8* %1763, align 1
  store %struct.Memory* %loadMem_47522e, %struct.Memory** %MEMORY
  %loadMem_475232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 1
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 7
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RDX.i429 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %RAX.i428
  %1774 = load i64, i64* %RDX.i429
  %1775 = load i64, i64* %PC.i427
  %1776 = add i64 %1775, 3
  store i64 %1776, i64* %PC.i427
  %1777 = add i64 %1774, %1773
  store i64 %1777, i64* %RAX.i428, align 8
  %1778 = icmp ult i64 %1777, %1773
  %1779 = icmp ult i64 %1777, %1774
  %1780 = or i1 %1778, %1779
  %1781 = zext i1 %1780 to i8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1781, i8* %1782, align 1
  %1783 = trunc i64 %1777 to i32
  %1784 = and i32 %1783, 255
  %1785 = call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1788, i8* %1789, align 1
  %1790 = xor i64 %1774, %1773
  %1791 = xor i64 %1790, %1777
  %1792 = lshr i64 %1791, 4
  %1793 = trunc i64 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1794, i8* %1795, align 1
  %1796 = icmp eq i64 %1777, 0
  %1797 = zext i1 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1797, i8* %1798, align 1
  %1799 = lshr i64 %1777, 63
  %1800 = trunc i64 %1799 to i8
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1800, i8* %1801, align 1
  %1802 = lshr i64 %1773, 63
  %1803 = lshr i64 %1774, 63
  %1804 = xor i64 %1799, %1802
  %1805 = xor i64 %1799, %1803
  %1806 = add i64 %1804, %1805
  %1807 = icmp eq i64 %1806, 2
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1808, i8* %1809, align 1
  store %struct.Memory* %loadMem_475232, %struct.Memory** %MEMORY
  %loadMem_475235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 1
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RAX.i426
  %1817 = add i64 %1816, 28
  %1818 = load i64, i64* %PC.i425
  %1819 = add i64 %1818, 4
  store i64 %1819, i64* %PC.i425
  %1820 = inttoptr i64 %1817 to i8*
  %1821 = load i8, i8* %1820
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1822, align 1
  %1823 = zext i8 %1821 to i32
  %1824 = call i32 @llvm.ctpop.i32(i32 %1823)
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  %1827 = xor i8 %1826, 1
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1827, i8* %1828, align 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1829, align 1
  %1830 = icmp eq i8 %1821, 0
  %1831 = zext i1 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1831, i8* %1832, align 1
  %1833 = lshr i8 %1821, 7
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1833, i8* %1834, align 1
  %1835 = lshr i8 %1821, 7
  %1836 = xor i8 %1833, %1835
  %1837 = add i8 %1836, %1835
  %1838 = icmp eq i8 %1837, 2
  %1839 = zext i1 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1839, i8* %1840, align 1
  store %struct.Memory* %loadMem_475235, %struct.Memory** %MEMORY
  %loadMem_475239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %PC.i424
  %1845 = add i64 %1844, 15
  %1846 = load i64, i64* %PC.i424
  %1847 = add i64 %1846, 6
  %1848 = load i64, i64* %PC.i424
  %1849 = add i64 %1848, 6
  store i64 %1849, i64* %PC.i424
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1851 = load i8, i8* %1850, align 1
  store i8 %1851, i8* %BRANCH_TAKEN, align 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1853 = icmp ne i8 %1851, 0
  %1854 = select i1 %1853, i64 %1845, i64 %1847
  store i64 %1854, i64* %1852, align 8
  store %struct.Memory* %loadMem_475239, %struct.Memory** %MEMORY
  %loadBr_475239 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475239 = icmp eq i8 %loadBr_475239, 1
  br i1 %cmpBr_475239, label %block_.L_475248, label %block_47523f

block_47523f:                                     ; preds = %block_.L_475217
  %loadMem_47523f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i423
  %1862 = sub i64 %1861, 33
  %1863 = load i64, i64* %PC.i422
  %1864 = add i64 %1863, 4
  store i64 %1864, i64* %PC.i422
  %1865 = inttoptr i64 %1862 to i8*
  store i8 33, i8* %1865
  store %struct.Memory* %loadMem_47523f, %struct.Memory** %MEMORY
  %loadMem_475243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %PC.i421
  %1870 = add i64 %1869, 9
  %1871 = load i64, i64* %PC.i421
  %1872 = add i64 %1871, 5
  store i64 %1872, i64* %PC.i421
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1870, i64* %1873, align 8
  store %struct.Memory* %loadMem_475243, %struct.Memory** %MEMORY
  br label %block_.L_47524c

block_.L_475248:                                  ; preds = %block_.L_475217
  %loadMem_475248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i420
  %1881 = sub i64 %1880, 33
  %1882 = load i64, i64* %PC.i419
  %1883 = add i64 %1882, 4
  store i64 %1883, i64* %PC.i419
  %1884 = inttoptr i64 %1881 to i8*
  store i8 120, i8* %1884
  store %struct.Memory* %loadMem_475248, %struct.Memory** %MEMORY
  br label %block_.L_47524c

block_.L_47524c:                                  ; preds = %block_.L_475248, %block_47523f
  %loadMem_47524c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %PC.i418
  %1889 = add i64 %1888, 131
  %1890 = load i64, i64* %PC.i418
  %1891 = add i64 %1890, 5
  store i64 %1891, i64* %PC.i418
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1889, i64* %1892, align 8
  store %struct.Memory* %loadMem_47524c, %struct.Memory** %MEMORY
  br label %block_.L_4752cf

block_.L_475251:                                  ; preds = %block_.L_4751b0
  %loadMem_475251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 1
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %PC.i416
  %1900 = add i64 %1899, 10
  store i64 %1900, i64* %PC.i416
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_475251, %struct.Memory** %MEMORY
  %loadMem_47525b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 5
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 15
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RBP.i415
  %1911 = sub i64 %1910, 4
  %1912 = load i64, i64* %PC.i413
  %1913 = add i64 %1912, 4
  store i64 %1913, i64* %PC.i413
  %1914 = inttoptr i64 %1911 to i32*
  %1915 = load i32, i32* %1914
  %1916 = sext i32 %1915 to i64
  %1917 = mul i64 %1916, 20
  %1918 = trunc i64 %1917 to i32
  %1919 = and i64 %1917, 4294967295
  store i64 %1919, i64* %RCX.i414, align 8
  %1920 = shl i64 %1917, 32
  %1921 = ashr exact i64 %1920, 32
  %1922 = icmp ne i64 %1921, %1917
  %1923 = zext i1 %1922 to i8
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1923, i8* %1924, align 1
  %1925 = and i32 %1918, 255
  %1926 = call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1929, i8* %1930, align 1
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1931, align 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1932, align 1
  %1933 = lshr i32 %1918, 31
  %1934 = trunc i32 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1934, i8* %1935, align 1
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1923, i8* %1936, align 1
  store %struct.Memory* %loadMem_47525b, %struct.Memory** %MEMORY
  %loadMem_47525f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 5
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RCX.i412
  %1944 = load i64, i64* %PC.i411
  %1945 = add i64 %1944, 3
  store i64 %1945, i64* %PC.i411
  %1946 = trunc i64 %1943 to i32
  %1947 = add i32 21, %1946
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RCX.i412, align 8
  %1949 = icmp ult i32 %1947, %1946
  %1950 = icmp ult i32 %1947, 21
  %1951 = or i1 %1949, %1950
  %1952 = zext i1 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1952, i8* %1953, align 1
  %1954 = and i32 %1947, 255
  %1955 = call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1958, i8* %1959, align 1
  %1960 = xor i64 21, %1943
  %1961 = trunc i64 %1960 to i32
  %1962 = xor i32 %1961, %1947
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1965, i8* %1966, align 1
  %1967 = icmp eq i32 %1947, 0
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1968, i8* %1969, align 1
  %1970 = lshr i32 %1947, 31
  %1971 = trunc i32 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1971, i8* %1972, align 1
  %1973 = lshr i32 %1946, 31
  %1974 = xor i32 %1970, %1973
  %1975 = add i32 %1974, %1970
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1977, i8* %1978, align 1
  store %struct.Memory* %loadMem_47525f, %struct.Memory** %MEMORY
  %loadMem_475262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 5
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 15
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RCX.i409
  %1989 = load i64, i64* %RBP.i410
  %1990 = sub i64 %1989, 8
  %1991 = load i64, i64* %PC.i408
  %1992 = add i64 %1991, 3
  store i64 %1992, i64* %PC.i408
  %1993 = trunc i64 %1988 to i32
  %1994 = inttoptr i64 %1990 to i32*
  %1995 = load i32, i32* %1994
  %1996 = add i32 %1995, %1993
  %1997 = zext i32 %1996 to i64
  store i64 %1997, i64* %RCX.i409, align 8
  %1998 = icmp ult i32 %1996, %1993
  %1999 = icmp ult i32 %1996, %1995
  %2000 = or i1 %1998, %1999
  %2001 = zext i1 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2001, i8* %2002, align 1
  %2003 = and i32 %1996, 255
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2007, i8* %2008, align 1
  %2009 = xor i32 %1995, %1993
  %2010 = xor i32 %2009, %1996
  %2011 = lshr i32 %2010, 4
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2013, i8* %2014, align 1
  %2015 = icmp eq i32 %1996, 0
  %2016 = zext i1 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2016, i8* %2017, align 1
  %2018 = lshr i32 %1996, 31
  %2019 = trunc i32 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2019, i8* %2020, align 1
  %2021 = lshr i32 %1993, 31
  %2022 = lshr i32 %1995, 31
  %2023 = xor i32 %2018, %2021
  %2024 = xor i32 %2018, %2022
  %2025 = add i32 %2023, %2024
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2027, i8* %2028, align 1
  store %struct.Memory* %loadMem_475262, %struct.Memory** %MEMORY
  %loadMem_475265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 5
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %ECX.i406 = bitcast %union.anon* %2034 to i32*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 7
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %2037 to i64*
  %2038 = load i32, i32* %ECX.i406
  %2039 = zext i32 %2038 to i64
  %2040 = load i64, i64* %PC.i405
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %PC.i405
  %2042 = shl i64 %2039, 32
  %2043 = ashr exact i64 %2042, 32
  store i64 %2043, i64* %RDX.i407, align 8
  store %struct.Memory* %loadMem_475265, %struct.Memory** %MEMORY
  %loadMem_475268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 33
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 7
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RDX.i404
  %2051 = load i64, i64* %PC.i403
  %2052 = add i64 %2051, 4
  store i64 %2052, i64* %PC.i403
  %2053 = sext i64 %2050 to i128
  %2054 = and i128 %2053, -18446744073709551616
  %2055 = zext i64 %2050 to i128
  %2056 = or i128 %2054, %2055
  %2057 = mul i128 36, %2056
  %2058 = trunc i128 %2057 to i64
  store i64 %2058, i64* %RDX.i404, align 8
  %2059 = sext i64 %2058 to i128
  %2060 = icmp ne i128 %2059, %2057
  %2061 = zext i1 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2061, i8* %2062, align 1
  %2063 = trunc i128 %2057 to i32
  %2064 = and i32 %2063, 255
  %2065 = call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2068, i8* %2069, align 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2070, align 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2071, align 1
  %2072 = lshr i64 %2058, 63
  %2073 = trunc i64 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2073, i8* %2074, align 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2061, i8* %2075, align 1
  store %struct.Memory* %loadMem_475268, %struct.Memory** %MEMORY
  %loadMem_47526c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 1
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 7
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %RAX.i401
  %2086 = load i64, i64* %RDX.i402
  %2087 = load i64, i64* %PC.i400
  %2088 = add i64 %2087, 3
  store i64 %2088, i64* %PC.i400
  %2089 = add i64 %2086, %2085
  store i64 %2089, i64* %RAX.i401, align 8
  %2090 = icmp ult i64 %2089, %2085
  %2091 = icmp ult i64 %2089, %2086
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2093, i8* %2094, align 1
  %2095 = trunc i64 %2089 to i32
  %2096 = and i32 %2095, 255
  %2097 = call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2100, i8* %2101, align 1
  %2102 = xor i64 %2086, %2085
  %2103 = xor i64 %2102, %2089
  %2104 = lshr i64 %2103, 4
  %2105 = trunc i64 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2106, i8* %2107, align 1
  %2108 = icmp eq i64 %2089, 0
  %2109 = zext i1 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2109, i8* %2110, align 1
  %2111 = lshr i64 %2089, 63
  %2112 = trunc i64 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2112, i8* %2113, align 1
  %2114 = lshr i64 %2085, 63
  %2115 = lshr i64 %2086, 63
  %2116 = xor i64 %2111, %2114
  %2117 = xor i64 %2111, %2115
  %2118 = add i64 %2116, %2117
  %2119 = icmp eq i64 %2118, 2
  %2120 = zext i1 %2119 to i8
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2120, i8* %2121, align 1
  store %struct.Memory* %loadMem_47526c, %struct.Memory** %MEMORY
  %loadMem_47526f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 1
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RAX.i399
  %2129 = load i64, i64* %PC.i398
  %2130 = add i64 %2129, 3
  store i64 %2130, i64* %PC.i398
  %2131 = inttoptr i64 %2128 to i32*
  %2132 = load i32, i32* %2131
  %2133 = sub i32 %2132, 4
  %2134 = icmp ult i32 %2132, 4
  %2135 = zext i1 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2135, i8* %2136, align 1
  %2137 = and i32 %2133, 255
  %2138 = call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2141, i8* %2142, align 1
  %2143 = xor i32 %2132, 4
  %2144 = xor i32 %2143, %2133
  %2145 = lshr i32 %2144, 4
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2147, i8* %2148, align 1
  %2149 = icmp eq i32 %2133, 0
  %2150 = zext i1 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2150, i8* %2151, align 1
  %2152 = lshr i32 %2133, 31
  %2153 = trunc i32 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2153, i8* %2154, align 1
  %2155 = lshr i32 %2132, 31
  %2156 = xor i32 %2152, %2155
  %2157 = add i32 %2156, %2155
  %2158 = icmp eq i32 %2157, 2
  %2159 = zext i1 %2158 to i8
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2159, i8* %2160, align 1
  store %struct.Memory* %loadMem_47526f, %struct.Memory** %MEMORY
  %loadMem_475272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %PC.i397
  %2165 = add i64 %2164, 74
  %2166 = load i64, i64* %PC.i397
  %2167 = add i64 %2166, 6
  %2168 = load i64, i64* %PC.i397
  %2169 = add i64 %2168, 6
  store i64 %2169, i64* %PC.i397
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2171 = load i8, i8* %2170, align 1
  %2172 = icmp eq i8 %2171, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %BRANCH_TAKEN, align 1
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2175 = select i1 %2172, i64 %2165, i64 %2167
  store i64 %2175, i64* %2174, align 8
  store %struct.Memory* %loadMem_475272, %struct.Memory** %MEMORY
  %loadBr_475272 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475272 = icmp eq i8 %loadBr_475272, 1
  br i1 %cmpBr_475272, label %block_.L_4752bc, label %block_475278

block_475278:                                     ; preds = %block_.L_475251
  %loadMem_475278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 33
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 1
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %PC.i395
  %2183 = add i64 %2182, 10
  store i64 %2183, i64* %PC.i395
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_475278, %struct.Memory** %MEMORY
  %loadMem_475282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 5
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %PC.i393
  %2191 = add i64 %2190, 7
  store i64 %2191, i64* %PC.i393
  %2192 = load i32, i32* bitcast (%G_0x4e52f8_type* @G_0x4e52f8 to i32*)
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_475282, %struct.Memory** %MEMORY
  %loadMem_475289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 5
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %ECX.i391 = bitcast %union.anon* %2199 to i32*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 15
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %RBP.i392
  %2204 = sub i64 %2203, 32
  %2205 = load i32, i32* %ECX.i391
  %2206 = zext i32 %2205 to i64
  %2207 = load i64, i64* %PC.i390
  %2208 = add i64 %2207, 3
  store i64 %2208, i64* %PC.i390
  %2209 = inttoptr i64 %2204 to i32*
  store i32 %2205, i32* %2209
  store %struct.Memory* %loadMem_475289, %struct.Memory** %MEMORY
  %loadMem_47528c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 5
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 15
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %RBP.i389
  %2220 = sub i64 %2219, 4
  %2221 = load i64, i64* %PC.i387
  %2222 = add i64 %2221, 4
  store i64 %2222, i64* %PC.i387
  %2223 = inttoptr i64 %2220 to i32*
  %2224 = load i32, i32* %2223
  %2225 = sext i32 %2224 to i64
  %2226 = mul i64 %2225, 20
  %2227 = trunc i64 %2226 to i32
  %2228 = and i64 %2226, 4294967295
  store i64 %2228, i64* %RCX.i388, align 8
  %2229 = shl i64 %2226, 32
  %2230 = ashr exact i64 %2229, 32
  %2231 = icmp ne i64 %2230, %2226
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2232, i8* %2233, align 1
  %2234 = and i32 %2227, 255
  %2235 = call i32 @llvm.ctpop.i32(i32 %2234)
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2238, i8* %2239, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2240, align 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2241, align 1
  %2242 = lshr i32 %2227, 31
  %2243 = trunc i32 %2242 to i8
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2243, i8* %2244, align 1
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2232, i8* %2245, align 1
  store %struct.Memory* %loadMem_47528c, %struct.Memory** %MEMORY
  %loadMem_475290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 5
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RCX.i386
  %2253 = load i64, i64* %PC.i385
  %2254 = add i64 %2253, 3
  store i64 %2254, i64* %PC.i385
  %2255 = trunc i64 %2252 to i32
  %2256 = add i32 21, %2255
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RCX.i386, align 8
  %2258 = icmp ult i32 %2256, %2255
  %2259 = icmp ult i32 %2256, 21
  %2260 = or i1 %2258, %2259
  %2261 = zext i1 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2261, i8* %2262, align 1
  %2263 = and i32 %2256, 255
  %2264 = call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2267, i8* %2268, align 1
  %2269 = xor i64 21, %2252
  %2270 = trunc i64 %2269 to i32
  %2271 = xor i32 %2270, %2256
  %2272 = lshr i32 %2271, 4
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2274, i8* %2275, align 1
  %2276 = icmp eq i32 %2256, 0
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2277, i8* %2278, align 1
  %2279 = lshr i32 %2256, 31
  %2280 = trunc i32 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2280, i8* %2281, align 1
  %2282 = lshr i32 %2255, 31
  %2283 = xor i32 %2279, %2282
  %2284 = add i32 %2283, %2279
  %2285 = icmp eq i32 %2284, 2
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2286, i8* %2287, align 1
  store %struct.Memory* %loadMem_475290, %struct.Memory** %MEMORY
  %loadMem_475293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 5
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 15
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %RCX.i383
  %2298 = load i64, i64* %RBP.i384
  %2299 = sub i64 %2298, 8
  %2300 = load i64, i64* %PC.i382
  %2301 = add i64 %2300, 3
  store i64 %2301, i64* %PC.i382
  %2302 = trunc i64 %2297 to i32
  %2303 = inttoptr i64 %2299 to i32*
  %2304 = load i32, i32* %2303
  %2305 = add i32 %2304, %2302
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i383, align 8
  %2307 = icmp ult i32 %2305, %2302
  %2308 = icmp ult i32 %2305, %2304
  %2309 = or i1 %2307, %2308
  %2310 = zext i1 %2309 to i8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2310, i8* %2311, align 1
  %2312 = and i32 %2305, 255
  %2313 = call i32 @llvm.ctpop.i32(i32 %2312)
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = xor i8 %2315, 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2316, i8* %2317, align 1
  %2318 = xor i32 %2304, %2302
  %2319 = xor i32 %2318, %2305
  %2320 = lshr i32 %2319, 4
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2322, i8* %2323, align 1
  %2324 = icmp eq i32 %2305, 0
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2325, i8* %2326, align 1
  %2327 = lshr i32 %2305, 31
  %2328 = trunc i32 %2327 to i8
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2328, i8* %2329, align 1
  %2330 = lshr i32 %2302, 31
  %2331 = lshr i32 %2304, 31
  %2332 = xor i32 %2327, %2330
  %2333 = xor i32 %2327, %2331
  %2334 = add i32 %2332, %2333
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2336, i8* %2337, align 1
  store %struct.Memory* %loadMem_475293, %struct.Memory** %MEMORY
  %loadMem_475296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 5
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %ECX.i380 = bitcast %union.anon* %2343 to i32*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 7
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %2346 to i64*
  %2347 = load i32, i32* %ECX.i380
  %2348 = zext i32 %2347 to i64
  %2349 = load i64, i64* %PC.i379
  %2350 = add i64 %2349, 3
  store i64 %2350, i64* %PC.i379
  %2351 = shl i64 %2348, 32
  %2352 = ashr exact i64 %2351, 32
  store i64 %2352, i64* %RDX.i381, align 8
  store %struct.Memory* %loadMem_475296, %struct.Memory** %MEMORY
  %loadMem_475299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 7
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %2358 to i64*
  %2359 = load i64, i64* %RDX.i378
  %2360 = load i64, i64* %PC.i377
  %2361 = add i64 %2360, 4
  store i64 %2361, i64* %PC.i377
  %2362 = sext i64 %2359 to i128
  %2363 = and i128 %2362, -18446744073709551616
  %2364 = zext i64 %2359 to i128
  %2365 = or i128 %2363, %2364
  %2366 = mul i128 36, %2365
  %2367 = trunc i128 %2366 to i64
  store i64 %2367, i64* %RDX.i378, align 8
  %2368 = sext i64 %2367 to i128
  %2369 = icmp ne i128 %2368, %2366
  %2370 = zext i1 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2370, i8* %2371, align 1
  %2372 = trunc i128 %2366 to i32
  %2373 = and i32 %2372, 255
  %2374 = call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2377, i8* %2378, align 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2379, align 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2380, align 1
  %2381 = lshr i64 %2367, 63
  %2382 = trunc i64 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2382, i8* %2383, align 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2370, i8* %2384, align 1
  store %struct.Memory* %loadMem_475299, %struct.Memory** %MEMORY
  %loadMem_47529d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 1
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 7
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RAX.i375
  %2395 = load i64, i64* %RDX.i376
  %2396 = load i64, i64* %PC.i374
  %2397 = add i64 %2396, 3
  store i64 %2397, i64* %PC.i374
  %2398 = add i64 %2395, %2394
  store i64 %2398, i64* %RAX.i375, align 8
  %2399 = icmp ult i64 %2398, %2394
  %2400 = icmp ult i64 %2398, %2395
  %2401 = or i1 %2399, %2400
  %2402 = zext i1 %2401 to i8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2402, i8* %2403, align 1
  %2404 = trunc i64 %2398 to i32
  %2405 = and i32 %2404, 255
  %2406 = call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2409, i8* %2410, align 1
  %2411 = xor i64 %2395, %2394
  %2412 = xor i64 %2411, %2398
  %2413 = lshr i64 %2412, 4
  %2414 = trunc i64 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2415, i8* %2416, align 1
  %2417 = icmp eq i64 %2398, 0
  %2418 = zext i1 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2418, i8* %2419, align 1
  %2420 = lshr i64 %2398, 63
  %2421 = trunc i64 %2420 to i8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2421, i8* %2422, align 1
  %2423 = lshr i64 %2394, 63
  %2424 = lshr i64 %2395, 63
  %2425 = xor i64 %2420, %2423
  %2426 = xor i64 %2420, %2424
  %2427 = add i64 %2425, %2426
  %2428 = icmp eq i64 %2427, 2
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2429, i8* %2430, align 1
  store %struct.Memory* %loadMem_47529d, %struct.Memory** %MEMORY
  %loadMem_4752a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 1
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %RAX.i373
  %2438 = add i64 %2437, 28
  %2439 = load i64, i64* %PC.i372
  %2440 = add i64 %2439, 4
  store i64 %2440, i64* %PC.i372
  %2441 = inttoptr i64 %2438 to i8*
  %2442 = load i8, i8* %2441
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2443, align 1
  %2444 = zext i8 %2442 to i32
  %2445 = call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2448, i8* %2449, align 1
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2450, align 1
  %2451 = icmp eq i8 %2442, 0
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2452, i8* %2453, align 1
  %2454 = lshr i8 %2442, 7
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2454, i8* %2455, align 1
  %2456 = lshr i8 %2442, 7
  %2457 = xor i8 %2454, %2456
  %2458 = add i8 %2457, %2456
  %2459 = icmp eq i8 %2458, 2
  %2460 = zext i1 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2460, i8* %2461, align 1
  store %struct.Memory* %loadMem_4752a0, %struct.Memory** %MEMORY
  %loadMem_4752a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %PC.i371
  %2466 = add i64 %2465, 15
  %2467 = load i64, i64* %PC.i371
  %2468 = add i64 %2467, 6
  %2469 = load i64, i64* %PC.i371
  %2470 = add i64 %2469, 6
  store i64 %2470, i64* %PC.i371
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2472 = load i8, i8* %2471, align 1
  store i8 %2472, i8* %BRANCH_TAKEN, align 1
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2474 = icmp ne i8 %2472, 0
  %2475 = select i1 %2474, i64 %2466, i64 %2468
  store i64 %2475, i64* %2473, align 8
  store %struct.Memory* %loadMem_4752a4, %struct.Memory** %MEMORY
  %loadBr_4752a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4752a4 = icmp eq i8 %loadBr_4752a4, 1
  br i1 %cmpBr_4752a4, label %block_.L_4752b3, label %block_4752aa

block_4752aa:                                     ; preds = %block_475278
  %loadMem_4752aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 15
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %RBP.i370
  %2483 = sub i64 %2482, 33
  %2484 = load i64, i64* %PC.i369
  %2485 = add i64 %2484, 4
  store i64 %2485, i64* %PC.i369
  %2486 = inttoptr i64 %2483 to i8*
  store i8 33, i8* %2486
  store %struct.Memory* %loadMem_4752aa, %struct.Memory** %MEMORY
  %loadMem_4752ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %PC.i368
  %2491 = add i64 %2490, 9
  %2492 = load i64, i64* %PC.i368
  %2493 = add i64 %2492, 5
  store i64 %2493, i64* %PC.i368
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2491, i64* %2494, align 8
  store %struct.Memory* %loadMem_4752ae, %struct.Memory** %MEMORY
  br label %block_.L_4752b7

block_.L_4752b3:                                  ; preds = %block_475278
  %loadMem_4752b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 15
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %RBP.i367
  %2502 = sub i64 %2501, 33
  %2503 = load i64, i64* %PC.i366
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %PC.i366
  %2505 = inttoptr i64 %2502 to i8*
  store i8 111, i8* %2505
  store %struct.Memory* %loadMem_4752b3, %struct.Memory** %MEMORY
  br label %block_.L_4752b7

block_.L_4752b7:                                  ; preds = %block_.L_4752b3, %block_4752aa
  %loadMem_4752b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %PC.i365
  %2510 = add i64 %2509, 19
  %2511 = load i64, i64* %PC.i365
  %2512 = add i64 %2511, 5
  store i64 %2512, i64* %PC.i365
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2510, i64* %2513, align 8
  store %struct.Memory* %loadMem_4752b7, %struct.Memory** %MEMORY
  br label %block_.L_4752ca

block_.L_4752bc:                                  ; preds = %block_.L_475251
  %loadMem_4752bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %PC.i363
  %2521 = add i64 %2520, 7
  store i64 %2521, i64* %PC.i363
  %2522 = load i32, i32* bitcast (%G_0x4e52f0_type* @G_0x4e52f0 to i32*)
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_4752bc, %struct.Memory** %MEMORY
  %loadMem_4752c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 1
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %2529 to i32*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 15
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RBP.i362
  %2534 = sub i64 %2533, 32
  %2535 = load i32, i32* %EAX.i361
  %2536 = zext i32 %2535 to i64
  %2537 = load i64, i64* %PC.i360
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC.i360
  %2539 = inttoptr i64 %2534 to i32*
  store i32 %2535, i32* %2539
  store %struct.Memory* %loadMem_4752c3, %struct.Memory** %MEMORY
  %loadMem_4752c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 15
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RBP.i359
  %2547 = sub i64 %2546, 33
  %2548 = load i64, i64* %PC.i358
  %2549 = add i64 %2548, 4
  store i64 %2549, i64* %PC.i358
  %2550 = inttoptr i64 %2547 to i8*
  store i8 46, i8* %2550
  store %struct.Memory* %loadMem_4752c6, %struct.Memory** %MEMORY
  br label %block_.L_4752ca

block_.L_4752ca:                                  ; preds = %block_.L_4752bc, %block_.L_4752b7
  %loadMem_4752ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %PC.i357
  %2555 = add i64 %2554, 5
  %2556 = load i64, i64* %PC.i357
  %2557 = add i64 %2556, 5
  store i64 %2557, i64* %PC.i357
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2555, i64* %2558, align 8
  store %struct.Memory* %loadMem_4752ca, %struct.Memory** %MEMORY
  br label %block_.L_4752cf

block_.L_4752cf:                                  ; preds = %block_.L_4752ca, %block_.L_47524c
  %loadMem_4752cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 11
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RDI.i355 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RBP.i356
  %2569 = sub i64 %2568, 32
  %2570 = load i64, i64* %PC.i354
  %2571 = add i64 %2570, 3
  store i64 %2571, i64* %PC.i354
  %2572 = inttoptr i64 %2569 to i32*
  %2573 = load i32, i32* %2572
  %2574 = zext i32 %2573 to i64
  store i64 %2574, i64* %RDI.i355, align 8
  store %struct.Memory* %loadMem_4752cf, %struct.Memory** %MEMORY
  %loadMem_4752d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 9
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RSI.i352 = bitcast %union.anon* %2580 to i64*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 15
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %2583 to i64*
  %2584 = load i64, i64* %RBP.i353
  %2585 = sub i64 %2584, 33
  %2586 = load i64, i64* %PC.i351
  %2587 = add i64 %2586, 4
  store i64 %2587, i64* %PC.i351
  %2588 = inttoptr i64 %2585 to i8*
  %2589 = load i8, i8* %2588
  %2590 = sext i8 %2589 to i64
  %2591 = and i64 %2590, 4294967295
  store i64 %2591, i64* %RSI.i352, align 8
  store %struct.Memory* %loadMem_4752d2, %struct.Memory** %MEMORY
  %loadMem1_4752d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %PC.i350
  %2596 = add i64 %2595, 446890
  %2597 = load i64, i64* %PC.i350
  %2598 = add i64 %2597, 5
  %2599 = load i64, i64* %PC.i350
  %2600 = add i64 %2599, 5
  store i64 %2600, i64* %PC.i350
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2602 = load i64, i64* %2601, align 8
  %2603 = add i64 %2602, -8
  %2604 = inttoptr i64 %2603 to i64*
  store i64 %2598, i64* %2604
  store i64 %2603, i64* %2601, align 8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2596, i64* %2605, align 8
  store %struct.Memory* %loadMem1_4752d6, %struct.Memory** %MEMORY
  %loadMem2_4752d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4752d6 = load i64, i64* %3
  %call2_4752d6 = call %struct.Memory* @sub_4e2480.write_color_char(%struct.State* %0, i64 %loadPC_4752d6, %struct.Memory* %loadMem2_4752d6)
  store %struct.Memory* %call2_4752d6, %struct.Memory** %MEMORY
  br label %block_.L_4752db

block_.L_4752db:                                  ; preds = %block_.L_4752cf, %block_47518c
  %loadMem_4752db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2608 to i64*
  %2609 = load i64, i64* %PC.i349
  %2610 = add i64 %2609, 672
  %2611 = load i64, i64* %PC.i349
  %2612 = add i64 %2611, 5
  store i64 %2612, i64* %PC.i349
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2610, i64* %2613, align 8
  store %struct.Memory* %loadMem_4752db, %struct.Memory** %MEMORY
  br label %block_.L_47557b

block_.L_4752e0:                                  ; preds = %block_.L_47513e
  %loadMem_4752e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 33
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2616 to i64*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 15
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %2619 to i64*
  %2620 = load i64, i64* %RBP.i348
  %2621 = sub i64 %2620, 16
  %2622 = load i64, i64* %PC.i347
  %2623 = add i64 %2622, 4
  store i64 %2623, i64* %PC.i347
  %2624 = inttoptr i64 %2621 to i32*
  %2625 = load i32, i32* %2624
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2626, align 1
  %2627 = and i32 %2625, 255
  %2628 = call i32 @llvm.ctpop.i32(i32 %2627)
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2631, i8* %2632, align 1
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2633, align 1
  %2634 = icmp eq i32 %2625, 0
  %2635 = zext i1 %2634 to i8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2635, i8* %2636, align 1
  %2637 = lshr i32 %2625, 31
  %2638 = trunc i32 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2638, i8* %2639, align 1
  %2640 = lshr i32 %2625, 31
  %2641 = xor i32 %2637, %2640
  %2642 = add i32 %2641, %2640
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2644, i8* %2645, align 1
  store %struct.Memory* %loadMem_4752e0, %struct.Memory** %MEMORY
  %loadMem_4752e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2648 to i64*
  %2649 = load i64, i64* %PC.i346
  %2650 = add i64 %2649, 48
  %2651 = load i64, i64* %PC.i346
  %2652 = add i64 %2651, 6
  %2653 = load i64, i64* %PC.i346
  %2654 = add i64 %2653, 6
  store i64 %2654, i64* %PC.i346
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2656 = load i8, i8* %2655, align 1
  store i8 %2656, i8* %BRANCH_TAKEN, align 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2658 = icmp ne i8 %2656, 0
  %2659 = select i1 %2658, i64 %2650, i64 %2652
  store i64 %2659, i64* %2657, align 8
  store %struct.Memory* %loadMem_4752e4, %struct.Memory** %MEMORY
  %loadBr_4752e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4752e4 = icmp eq i8 %loadBr_4752e4, 1
  br i1 %cmpBr_4752e4, label %block_.L_475314, label %block_4752ea

block_4752ea:                                     ; preds = %block_.L_4752e0
  %loadMem_4752ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 1
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 15
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %RBP.i345
  %2670 = sub i64 %2669, 24
  %2671 = load i64, i64* %PC.i343
  %2672 = add i64 %2671, 4
  store i64 %2672, i64* %PC.i343
  %2673 = inttoptr i64 %2670 to i64*
  %2674 = load i64, i64* %2673
  store i64 %2674, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_4752ea, %struct.Memory** %MEMORY
  %loadMem_4752ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %RAX.i342
  %2682 = add i64 %2681, 8
  %2683 = load i64, i64* %PC.i341
  %2684 = add i64 %2683, 7
  store i64 %2684, i64* %PC.i341
  %2685 = inttoptr i64 %2682 to i32*
  %2686 = load i32, i32* %2685
  %2687 = sub i32 %2686, 421
  %2688 = icmp ult i32 %2686, 421
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2689, i8* %2690, align 1
  %2691 = and i32 %2687, 255
  %2692 = call i32 @llvm.ctpop.i32(i32 %2691)
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  %2695 = xor i8 %2694, 1
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2695, i8* %2696, align 1
  %2697 = xor i32 %2686, 421
  %2698 = xor i32 %2697, %2687
  %2699 = lshr i32 %2698, 4
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2701, i8* %2702, align 1
  %2703 = icmp eq i32 %2687, 0
  %2704 = zext i1 %2703 to i8
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2704, i8* %2705, align 1
  %2706 = lshr i32 %2687, 31
  %2707 = trunc i32 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2707, i8* %2708, align 1
  %2709 = lshr i32 %2686, 31
  %2710 = xor i32 %2706, %2709
  %2711 = add i32 %2710, %2709
  %2712 = icmp eq i32 %2711, 2
  %2713 = zext i1 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2713, i8* %2714, align 1
  store %struct.Memory* %loadMem_4752ee, %struct.Memory** %MEMORY
  %loadMem_4752f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %PC.i340
  %2719 = add i64 %2718, 31
  %2720 = load i64, i64* %PC.i340
  %2721 = add i64 %2720, 6
  %2722 = load i64, i64* %PC.i340
  %2723 = add i64 %2722, 6
  store i64 %2723, i64* %PC.i340
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2725 = load i8, i8* %2724, align 1
  %2726 = icmp eq i8 %2725, 0
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %BRANCH_TAKEN, align 1
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2729 = select i1 %2726, i64 %2719, i64 %2721
  store i64 %2729, i64* %2728, align 8
  store %struct.Memory* %loadMem_4752f5, %struct.Memory** %MEMORY
  %loadBr_4752f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4752f5 = icmp eq i8 %loadBr_4752f5, 1
  br i1 %cmpBr_4752f5, label %block_.L_475314, label %block_4752fb

block_4752fb:                                     ; preds = %block_4752ea
  %loadMem_4752fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 1
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 15
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %RBP.i339
  %2740 = sub i64 %2739, 24
  %2741 = load i64, i64* %PC.i337
  %2742 = add i64 %2741, 4
  store i64 %2742, i64* %PC.i337
  %2743 = inttoptr i64 %2740 to i64*
  %2744 = load i64, i64* %2743
  store i64 %2744, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_4752fb, %struct.Memory** %MEMORY
  %loadMem_4752ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 1
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RAX.i336
  %2752 = add i64 %2751, 8
  %2753 = load i64, i64* %PC.i335
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i335
  %2755 = inttoptr i64 %2752 to i32*
  %2756 = load i32, i32* %2755
  %2757 = sext i32 %2756 to i64
  store i64 %2757, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_4752ff, %struct.Memory** %MEMORY
  %loadMem_475303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 1
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 5
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %2766 to i64*
  %2767 = load i64, i64* %RAX.i333
  %2768 = add i64 %2767, 12099168
  %2769 = load i64, i64* %PC.i332
  %2770 = add i64 %2769, 8
  store i64 %2770, i64* %PC.i332
  %2771 = inttoptr i64 %2768 to i8*
  %2772 = load i8, i8* %2771
  %2773 = zext i8 %2772 to i64
  store i64 %2773, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_475303, %struct.Memory** %MEMORY
  %loadMem_47530b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 33
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 5
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %ECX.i331 = bitcast %union.anon* %2779 to i32*
  %2780 = load i32, i32* %ECX.i331
  %2781 = zext i32 %2780 to i64
  %2782 = load i64, i64* %PC.i330
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %PC.i330
  %2784 = sub i32 %2780, 3
  %2785 = icmp ult i32 %2780, 3
  %2786 = zext i1 %2785 to i8
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2786, i8* %2787, align 1
  %2788 = and i32 %2784, 255
  %2789 = call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2792, i8* %2793, align 1
  %2794 = xor i64 3, %2781
  %2795 = trunc i64 %2794 to i32
  %2796 = xor i32 %2795, %2784
  %2797 = lshr i32 %2796, 4
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2799, i8* %2800, align 1
  %2801 = icmp eq i32 %2784, 0
  %2802 = zext i1 %2801 to i8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2802, i8* %2803, align 1
  %2804 = lshr i32 %2784, 31
  %2805 = trunc i32 %2804 to i8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2805, i8* %2806, align 1
  %2807 = lshr i32 %2780, 31
  %2808 = xor i32 %2804, %2807
  %2809 = add i32 %2808, %2807
  %2810 = icmp eq i32 %2809, 2
  %2811 = zext i1 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2811, i8* %2812, align 1
  store %struct.Memory* %loadMem_47530b, %struct.Memory** %MEMORY
  %loadMem_47530e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %PC.i329
  %2817 = add i64 %2816, 79
  %2818 = load i64, i64* %PC.i329
  %2819 = add i64 %2818, 6
  %2820 = load i64, i64* %PC.i329
  %2821 = add i64 %2820, 6
  store i64 %2821, i64* %PC.i329
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2823 = load i8, i8* %2822, align 1
  %2824 = icmp eq i8 %2823, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %BRANCH_TAKEN, align 1
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2827 = select i1 %2824, i64 %2817, i64 %2819
  store i64 %2827, i64* %2826, align 8
  store %struct.Memory* %loadMem_47530e, %struct.Memory** %MEMORY
  %loadBr_47530e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47530e = icmp eq i8 %loadBr_47530e, 1
  br i1 %cmpBr_47530e, label %block_.L_47535d, label %block_.L_475314

block_.L_475314:                                  ; preds = %block_4752fb, %block_4752ea, %block_.L_4752e0
  %loadMem_475314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 9
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RSI.i328 = bitcast %union.anon* %2833 to i64*
  %2834 = load i64, i64* %PC.i327
  %2835 = add i64 %2834, 10
  store i64 %2835, i64* %PC.i327
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RSI.i328, align 8
  store %struct.Memory* %loadMem_475314, %struct.Memory** %MEMORY
  %loadMem_47531e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 1
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %PC.i325
  %2843 = add i64 %2842, 5
  store i64 %2843, i64* %PC.i325
  store i64 79, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_47531e, %struct.Memory** %MEMORY
  %loadMem_475323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 5
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %PC.i323
  %2851 = add i64 %2850, 5
  store i64 %2851, i64* %PC.i323
  store i64 88, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_475323, %struct.Memory** %MEMORY
  %loadMem_475328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 11
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %PC.i321
  %2859 = add i64 %2858, 8
  store i64 %2859, i64* %PC.i321
  %2860 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %2860, i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_475328, %struct.Memory** %MEMORY
  %loadMem_475330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 7
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i320
  %2871 = sub i64 %2870, 4
  %2872 = load i64, i64* %PC.i318
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %PC.i318
  %2874 = inttoptr i64 %2871 to i32*
  %2875 = load i32, i32* %2874
  %2876 = sext i32 %2875 to i64
  %2877 = mul i64 %2876, 20
  %2878 = trunc i64 %2877 to i32
  %2879 = and i64 %2877, 4294967295
  store i64 %2879, i64* %RDX.i319, align 8
  %2880 = shl i64 %2877, 32
  %2881 = ashr exact i64 %2880, 32
  %2882 = icmp ne i64 %2881, %2877
  %2883 = zext i1 %2882 to i8
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2883, i8* %2884, align 1
  %2885 = and i32 %2878, 255
  %2886 = call i32 @llvm.ctpop.i32(i32 %2885)
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2889, i8* %2890, align 1
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2891, align 1
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2892, align 1
  %2893 = lshr i32 %2878, 31
  %2894 = trunc i32 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2894, i8* %2895, align 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2883, i8* %2896, align 1
  store %struct.Memory* %loadMem_475330, %struct.Memory** %MEMORY
  %loadMem_475334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 7
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RDX.i317
  %2904 = load i64, i64* %PC.i316
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC.i316
  %2906 = trunc i64 %2903 to i32
  %2907 = add i32 21, %2906
  %2908 = zext i32 %2907 to i64
  store i64 %2908, i64* %RDX.i317, align 8
  %2909 = icmp ult i32 %2907, %2906
  %2910 = icmp ult i32 %2907, 21
  %2911 = or i1 %2909, %2910
  %2912 = zext i1 %2911 to i8
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2912, i8* %2913, align 1
  %2914 = and i32 %2907, 255
  %2915 = call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2918, i8* %2919, align 1
  %2920 = xor i64 21, %2903
  %2921 = trunc i64 %2920 to i32
  %2922 = xor i32 %2921, %2907
  %2923 = lshr i32 %2922, 4
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2925, i8* %2926, align 1
  %2927 = icmp eq i32 %2907, 0
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2928, i8* %2929, align 1
  %2930 = lshr i32 %2907, 31
  %2931 = trunc i32 %2930 to i8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2931, i8* %2932, align 1
  %2933 = lshr i32 %2906, 31
  %2934 = xor i32 %2930, %2933
  %2935 = add i32 %2934, %2930
  %2936 = icmp eq i32 %2935, 2
  %2937 = zext i1 %2936 to i8
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2937, i8* %2938, align 1
  store %struct.Memory* %loadMem_475334, %struct.Memory** %MEMORY
  %loadMem_475337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 7
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 15
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %RDX.i314
  %2949 = load i64, i64* %RBP.i315
  %2950 = sub i64 %2949, 8
  %2951 = load i64, i64* %PC.i313
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i313
  %2953 = trunc i64 %2948 to i32
  %2954 = inttoptr i64 %2950 to i32*
  %2955 = load i32, i32* %2954
  %2956 = add i32 %2955, %2953
  %2957 = zext i32 %2956 to i64
  store i64 %2957, i64* %RDX.i314, align 8
  %2958 = icmp ult i32 %2956, %2953
  %2959 = icmp ult i32 %2956, %2955
  %2960 = or i1 %2958, %2959
  %2961 = zext i1 %2960 to i8
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2961, i8* %2962, align 1
  %2963 = and i32 %2956, 255
  %2964 = call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2967, i8* %2968, align 1
  %2969 = xor i32 %2955, %2953
  %2970 = xor i32 %2969, %2956
  %2971 = lshr i32 %2970, 4
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2973, i8* %2974, align 1
  %2975 = icmp eq i32 %2956, 0
  %2976 = zext i1 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2976, i8* %2977, align 1
  %2978 = lshr i32 %2956, 31
  %2979 = trunc i32 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2979, i8* %2980, align 1
  %2981 = lshr i32 %2953, 31
  %2982 = lshr i32 %2955, 31
  %2983 = xor i32 %2978, %2981
  %2984 = xor i32 %2978, %2982
  %2985 = add i32 %2983, %2984
  %2986 = icmp eq i32 %2985, 2
  %2987 = zext i1 %2986 to i8
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2987, i8* %2988, align 1
  store %struct.Memory* %loadMem_475337, %struct.Memory** %MEMORY
  %loadMem_47533a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 7
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %EDX.i311 = bitcast %union.anon* %2994 to i32*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 17
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %R8.i312 = bitcast %union.anon* %2997 to i64*
  %2998 = load i32, i32* %EDX.i311
  %2999 = zext i32 %2998 to i64
  %3000 = load i64, i64* %PC.i310
  %3001 = add i64 %3000, 3
  store i64 %3001, i64* %PC.i310
  %3002 = shl i64 %2999, 32
  %3003 = ashr exact i64 %3002, 32
  store i64 %3003, i64* %R8.i312, align 8
  store %struct.Memory* %loadMem_47533a, %struct.Memory** %MEMORY
  %loadMem_47533d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 7
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 17
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %R8.i309 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %R8.i309
  %3014 = add i64 %3013, 12099168
  %3015 = load i64, i64* %PC.i307
  %3016 = add i64 %3015, 9
  store i64 %3016, i64* %PC.i307
  %3017 = inttoptr i64 %3014 to i8*
  %3018 = load i8, i8* %3017
  %3019 = zext i8 %3018 to i64
  store i64 %3019, i64* %RDX.i308, align 8
  store %struct.Memory* %loadMem_47533d, %struct.Memory** %MEMORY
  %loadMem_475346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 7
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %EDX.i306 = bitcast %union.anon* %3025 to i32*
  %3026 = load i32, i32* %EDX.i306
  %3027 = zext i32 %3026 to i64
  %3028 = load i64, i64* %PC.i305
  %3029 = add i64 %3028, 3
  store i64 %3029, i64* %PC.i305
  %3030 = sub i32 %3026, 2
  %3031 = icmp ult i32 %3026, 2
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3032, i8* %3033, align 1
  %3034 = and i32 %3030, 255
  %3035 = call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3038, i8* %3039, align 1
  %3040 = xor i64 2, %3027
  %3041 = trunc i64 %3040 to i32
  %3042 = xor i32 %3041, %3030
  %3043 = lshr i32 %3042, 4
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3045, i8* %3046, align 1
  %3047 = icmp eq i32 %3030, 0
  %3048 = zext i1 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3048, i8* %3049, align 1
  %3050 = lshr i32 %3030, 31
  %3051 = trunc i32 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3051, i8* %3052, align 1
  %3053 = lshr i32 %3026, 31
  %3054 = xor i32 %3050, %3053
  %3055 = add i32 %3054, %3053
  %3056 = icmp eq i32 %3055, 2
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3057, i8* %3058, align 1
  store %struct.Memory* %loadMem_475346, %struct.Memory** %MEMORY
  %loadMem_475349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 33
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 5
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %ECX.i303 = bitcast %union.anon* %3064 to i32*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 1
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %3067 to i64*
  %3068 = load i32, i32* %ECX.i303
  %3069 = zext i32 %3068 to i64
  %3070 = load i64, i64* %PC.i302
  %3071 = add i64 %3070, 3
  store i64 %3071, i64* %PC.i302
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3073 = load i8, i8* %3072, align 1
  %3074 = icmp ne i8 %3073, 0
  %3075 = load i64, i64* %RAX.i304, align 8
  %3076 = select i1 %3074, i64 %3069, i64 %3075
  %3077 = and i64 %3076, 4294967295
  store i64 %3077, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_475349, %struct.Memory** %MEMORY
  %loadMem_47534c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 1
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %3083 to i32*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 7
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RDX.i301 = bitcast %union.anon* %3086 to i64*
  %3087 = load i32, i32* %EAX.i300
  %3088 = zext i32 %3087 to i64
  %3089 = load i64, i64* %PC.i299
  %3090 = add i64 %3089, 2
  store i64 %3090, i64* %PC.i299
  %3091 = and i64 %3088, 4294967295
  store i64 %3091, i64* %RDX.i301, align 8
  store %struct.Memory* %loadMem_47534c, %struct.Memory** %MEMORY
  %loadMem_47534e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 33
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 1
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %3098 = bitcast %union.anon* %3097 to %struct.anon.2*
  %AL.i298 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3098, i32 0, i32 0
  %3099 = load i64, i64* %PC.i297
  %3100 = add i64 %3099, 2
  store i64 %3100, i64* %PC.i297
  store i8 0, i8* %AL.i298, align 1
  store %struct.Memory* %loadMem_47534e, %struct.Memory** %MEMORY
  %loadMem1_475350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %PC.i296
  %3105 = add i64 %3104, -475776
  %3106 = load i64, i64* %PC.i296
  %3107 = add i64 %3106, 5
  %3108 = load i64, i64* %PC.i296
  %3109 = add i64 %3108, 5
  store i64 %3109, i64* %PC.i296
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3111 = load i64, i64* %3110, align 8
  %3112 = add i64 %3111, -8
  %3113 = inttoptr i64 %3112 to i64*
  store i64 %3107, i64* %3113
  store i64 %3112, i64* %3110, align 8
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3105, i64* %3114, align 8
  store %struct.Memory* %loadMem1_475350, %struct.Memory** %MEMORY
  %loadMem2_475350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475350 = load i64, i64* %3
  %3115 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_475350)
  store %struct.Memory* %3115, %struct.Memory** %MEMORY
  %loadMem_475355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3118 to i64*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 1
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %3121 to i32*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 15
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RBP.i293
  %3126 = sub i64 %3125, 48
  %3127 = load i32, i32* %EAX.i292
  %3128 = zext i32 %3127 to i64
  %3129 = load i64, i64* %PC.i291
  %3130 = add i64 %3129, 3
  store i64 %3130, i64* %PC.i291
  %3131 = inttoptr i64 %3126 to i32*
  store i32 %3127, i32* %3131
  store %struct.Memory* %loadMem_475355, %struct.Memory** %MEMORY
  %loadMem_475358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %PC.i290
  %3136 = add i64 %3135, 547
  %3137 = load i64, i64* %PC.i290
  %3138 = add i64 %3137, 5
  store i64 %3138, i64* %PC.i290
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3136, i64* %3139, align 8
  store %struct.Memory* %loadMem_475358, %struct.Memory** %MEMORY
  br label %block_.L_47557b

block_.L_47535d:                                  ; preds = %block_4752fb
  %loadMem_47535d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 1
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 15
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RBP.i289
  %3150 = sub i64 %3149, 24
  %3151 = load i64, i64* %PC.i287
  %3152 = add i64 %3151, 4
  store i64 %3152, i64* %PC.i287
  %3153 = inttoptr i64 %3150 to i64*
  %3154 = load i64, i64* %3153
  store i64 %3154, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_47535d, %struct.Memory** %MEMORY
  %loadMem_475361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 1
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RAX.i286
  %3162 = add i64 %3161, 8
  %3163 = load i64, i64* %PC.i285
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i285
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = sext i32 %3166 to i64
  store i64 %3167, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_475361, %struct.Memory** %MEMORY
  %loadMem_475365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 1
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 5
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %RAX.i283
  %3178 = add i64 %3177, 11418816
  %3179 = load i64, i64* %PC.i282
  %3180 = add i64 %3179, 8
  store i64 %3180, i64* %PC.i282
  %3181 = inttoptr i64 %3178 to i8*
  %3182 = load i8, i8* %3181
  %3183 = zext i8 %3182 to i64
  store i64 %3183, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_475365, %struct.Memory** %MEMORY
  %loadMem_47536d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 5
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %ECX.i280 = bitcast %union.anon* %3189 to i32*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 15
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %RBP.i281
  %3194 = sub i64 %3193, 40
  %3195 = load i32, i32* %ECX.i280
  %3196 = zext i32 %3195 to i64
  %3197 = load i64, i64* %PC.i279
  %3198 = add i64 %3197, 3
  store i64 %3198, i64* %PC.i279
  %3199 = inttoptr i64 %3194 to i32*
  store i32 %3195, i32* %3199
  store %struct.Memory* %loadMem_47536d, %struct.Memory** %MEMORY
  %loadMem_475370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 15
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %RBP.i278
  %3207 = sub i64 %3206, 40
  %3208 = load i64, i64* %PC.i277
  %3209 = add i64 %3208, 4
  store i64 %3209, i64* %PC.i277
  %3210 = inttoptr i64 %3207 to i32*
  %3211 = load i32, i32* %3210
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3212, align 1
  %3213 = and i32 %3211, 255
  %3214 = call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3217, i8* %3218, align 1
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3219, align 1
  %3220 = icmp eq i32 %3211, 0
  %3221 = zext i1 %3220 to i8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3221, i8* %3222, align 1
  %3223 = lshr i32 %3211, 31
  %3224 = trunc i32 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3224, i8* %3225, align 1
  %3226 = lshr i32 %3211, 31
  %3227 = xor i32 %3223, %3226
  %3228 = add i32 %3227, %3226
  %3229 = icmp eq i32 %3228, 2
  %3230 = zext i1 %3229 to i8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3230, i8* %3231, align 1
  store %struct.Memory* %loadMem_475370, %struct.Memory** %MEMORY
  %loadMem_475374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %PC.i276
  %3236 = add i64 %3235, 130
  %3237 = load i64, i64* %PC.i276
  %3238 = add i64 %3237, 6
  %3239 = load i64, i64* %PC.i276
  %3240 = add i64 %3239, 6
  store i64 %3240, i64* %PC.i276
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3242 = load i8, i8* %3241, align 1
  %3243 = icmp eq i8 %3242, 0
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %BRANCH_TAKEN, align 1
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3246 = select i1 %3243, i64 %3236, i64 %3238
  store i64 %3246, i64* %3245, align 8
  store %struct.Memory* %loadMem_475374, %struct.Memory** %MEMORY
  %loadBr_475374 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475374 = icmp eq i8 %loadBr_475374, 1
  br i1 %cmpBr_475374, label %block_.L_4753f6, label %block_47537a

block_47537a:                                     ; preds = %block_.L_47535d
  %loadMem_47537a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 1
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 15
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %RBP.i275
  %3257 = sub i64 %3256, 4
  %3258 = load i64, i64* %PC.i273
  %3259 = add i64 %3258, 4
  store i64 %3259, i64* %PC.i273
  %3260 = inttoptr i64 %3257 to i32*
  %3261 = load i32, i32* %3260
  %3262 = sext i32 %3261 to i64
  %3263 = mul i64 %3262, 20
  %3264 = trunc i64 %3263 to i32
  %3265 = and i64 %3263, 4294967295
  store i64 %3265, i64* %RAX.i274, align 8
  %3266 = shl i64 %3263, 32
  %3267 = ashr exact i64 %3266, 32
  %3268 = icmp ne i64 %3267, %3263
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3269, i8* %3270, align 1
  %3271 = and i32 %3264, 255
  %3272 = call i32 @llvm.ctpop.i32(i32 %3271)
  %3273 = trunc i32 %3272 to i8
  %3274 = and i8 %3273, 1
  %3275 = xor i8 %3274, 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3275, i8* %3276, align 1
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3277, align 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3278, align 1
  %3279 = lshr i32 %3264, 31
  %3280 = trunc i32 %3279 to i8
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3280, i8* %3281, align 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3269, i8* %3282, align 1
  store %struct.Memory* %loadMem_47537a, %struct.Memory** %MEMORY
  %loadMem_47537e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 1
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %3288 to i64*
  %3289 = load i64, i64* %RAX.i272
  %3290 = load i64, i64* %PC.i271
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC.i271
  %3292 = trunc i64 %3289 to i32
  %3293 = add i32 21, %3292
  %3294 = zext i32 %3293 to i64
  store i64 %3294, i64* %RAX.i272, align 8
  %3295 = icmp ult i32 %3293, %3292
  %3296 = icmp ult i32 %3293, 21
  %3297 = or i1 %3295, %3296
  %3298 = zext i1 %3297 to i8
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3298, i8* %3299, align 1
  %3300 = and i32 %3293, 255
  %3301 = call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3304, i8* %3305, align 1
  %3306 = xor i64 21, %3289
  %3307 = trunc i64 %3306 to i32
  %3308 = xor i32 %3307, %3293
  %3309 = lshr i32 %3308, 4
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3311, i8* %3312, align 1
  %3313 = icmp eq i32 %3293, 0
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3314, i8* %3315, align 1
  %3316 = lshr i32 %3293, 31
  %3317 = trunc i32 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3317, i8* %3318, align 1
  %3319 = lshr i32 %3292, 31
  %3320 = xor i32 %3316, %3319
  %3321 = add i32 %3320, %3316
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3323, i8* %3324, align 1
  store %struct.Memory* %loadMem_47537e, %struct.Memory** %MEMORY
  %loadMem_475381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 1
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 15
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %RAX.i269
  %3335 = load i64, i64* %RBP.i270
  %3336 = sub i64 %3335, 8
  %3337 = load i64, i64* %PC.i268
  %3338 = add i64 %3337, 3
  store i64 %3338, i64* %PC.i268
  %3339 = trunc i64 %3334 to i32
  %3340 = inttoptr i64 %3336 to i32*
  %3341 = load i32, i32* %3340
  %3342 = add i32 %3341, %3339
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RAX.i269, align 8
  %3344 = icmp ult i32 %3342, %3339
  %3345 = icmp ult i32 %3342, %3341
  %3346 = or i1 %3344, %3345
  %3347 = zext i1 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3347, i8* %3348, align 1
  %3349 = and i32 %3342, 255
  %3350 = call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3353, i8* %3354, align 1
  %3355 = xor i32 %3341, %3339
  %3356 = xor i32 %3355, %3342
  %3357 = lshr i32 %3356, 4
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3359, i8* %3360, align 1
  %3361 = icmp eq i32 %3342, 0
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3362, i8* %3363, align 1
  %3364 = lshr i32 %3342, 31
  %3365 = trunc i32 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3365, i8* %3366, align 1
  %3367 = lshr i32 %3339, 31
  %3368 = lshr i32 %3341, 31
  %3369 = xor i32 %3364, %3367
  %3370 = xor i32 %3364, %3368
  %3371 = add i32 %3369, %3370
  %3372 = icmp eq i32 %3371, 2
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3373, i8* %3374, align 1
  store %struct.Memory* %loadMem_475381, %struct.Memory** %MEMORY
  %loadMem_475384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3377 to i64*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 1
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %3380 to i32*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 5
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %3383 to i64*
  %3384 = load i32, i32* %EAX.i266
  %3385 = zext i32 %3384 to i64
  %3386 = load i64, i64* %PC.i265
  %3387 = add i64 %3386, 3
  store i64 %3387, i64* %PC.i265
  %3388 = shl i64 %3385, 32
  %3389 = ashr exact i64 %3388, 32
  store i64 %3389, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_475384, %struct.Memory** %MEMORY
  %loadMem_475387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 1
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 5
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %RCX.i264
  %3400 = add i64 %3399, 12099168
  %3401 = load i64, i64* %PC.i262
  %3402 = add i64 %3401, 8
  store i64 %3402, i64* %PC.i262
  %3403 = inttoptr i64 %3400 to i8*
  %3404 = load i8, i8* %3403
  %3405 = zext i8 %3404 to i64
  store i64 %3405, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_475387, %struct.Memory** %MEMORY
  %loadMem_47538f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 1
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %3411 to i32*
  %3412 = load i32, i32* %EAX.i261
  %3413 = zext i32 %3412 to i64
  %3414 = load i64, i64* %PC.i260
  %3415 = add i64 %3414, 3
  store i64 %3415, i64* %PC.i260
  %3416 = sub i32 %3412, 2
  %3417 = icmp ult i32 %3412, 2
  %3418 = zext i1 %3417 to i8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3418, i8* %3419, align 1
  %3420 = and i32 %3416, 255
  %3421 = call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3424, i8* %3425, align 1
  %3426 = xor i64 2, %3413
  %3427 = trunc i64 %3426 to i32
  %3428 = xor i32 %3427, %3416
  %3429 = lshr i32 %3428, 4
  %3430 = trunc i32 %3429 to i8
  %3431 = and i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3431, i8* %3432, align 1
  %3433 = icmp eq i32 %3416, 0
  %3434 = zext i1 %3433 to i8
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3434, i8* %3435, align 1
  %3436 = lshr i32 %3416, 31
  %3437 = trunc i32 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3437, i8* %3438, align 1
  %3439 = lshr i32 %3412, 31
  %3440 = xor i32 %3436, %3439
  %3441 = add i32 %3440, %3439
  %3442 = icmp eq i32 %3441, 2
  %3443 = zext i1 %3442 to i8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3443, i8* %3444, align 1
  store %struct.Memory* %loadMem_47538f, %struct.Memory** %MEMORY
  %loadMem_475392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3447 to i64*
  %3448 = load i64, i64* %PC.i259
  %3449 = add i64 %3448, 53
  %3450 = load i64, i64* %PC.i259
  %3451 = add i64 %3450, 6
  %3452 = load i64, i64* %PC.i259
  %3453 = add i64 %3452, 6
  store i64 %3453, i64* %PC.i259
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3455 = load i8, i8* %3454, align 1
  %3456 = icmp eq i8 %3455, 0
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %BRANCH_TAKEN, align 1
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3459 = select i1 %3456, i64 %3449, i64 %3451
  store i64 %3459, i64* %3458, align 8
  store %struct.Memory* %loadMem_475392, %struct.Memory** %MEMORY
  %loadBr_475392 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475392 = icmp eq i8 %loadBr_475392, 1
  br i1 %cmpBr_475392, label %block_.L_4753c7, label %block_475398

block_475398:                                     ; preds = %block_47537a
  %loadMem_475398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 1
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %PC.i257
  %3467 = add i64 %3466, 7
  store i64 %3467, i64* %PC.i257
  %3468 = load i32, i32* bitcast (%G_0xae3e54_type* @G_0xae3e54 to i32*)
  %3469 = zext i32 %3468 to i64
  store i64 %3469, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_475398, %struct.Memory** %MEMORY
  %loadMem_47539f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 1
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %3475 to i32*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 5
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %3478 to i64*
  %3479 = load i32, i32* %EAX.i255
  %3480 = zext i32 %3479 to i64
  %3481 = load i64, i64* %PC.i254
  %3482 = add i64 %3481, 2
  store i64 %3482, i64* %PC.i254
  %3483 = and i64 %3480, 4294967295
  store i64 %3483, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_47539f, %struct.Memory** %MEMORY
  %loadMem_4753a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 5
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RCX.i253
  %3491 = load i64, i64* %PC.i252
  %3492 = add i64 %3491, 3
  store i64 %3492, i64* %PC.i252
  %3493 = trunc i64 %3490 to i32
  %3494 = add i32 1, %3493
  %3495 = zext i32 %3494 to i64
  store i64 %3495, i64* %RCX.i253, align 8
  %3496 = icmp ult i32 %3494, %3493
  %3497 = icmp ult i32 %3494, 1
  %3498 = or i1 %3496, %3497
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3499, i8* %3500, align 1
  %3501 = and i32 %3494, 255
  %3502 = call i32 @llvm.ctpop.i32(i32 %3501)
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3505, i8* %3506, align 1
  %3507 = xor i64 1, %3490
  %3508 = trunc i64 %3507 to i32
  %3509 = xor i32 %3508, %3494
  %3510 = lshr i32 %3509, 4
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3512, i8* %3513, align 1
  %3514 = icmp eq i32 %3494, 0
  %3515 = zext i1 %3514 to i8
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3515, i8* %3516, align 1
  %3517 = lshr i32 %3494, 31
  %3518 = trunc i32 %3517 to i8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3518, i8* %3519, align 1
  %3520 = lshr i32 %3493, 31
  %3521 = xor i32 %3517, %3520
  %3522 = add i32 %3521, %3517
  %3523 = icmp eq i32 %3522, 2
  %3524 = zext i1 %3523 to i8
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3524, i8* %3525, align 1
  store %struct.Memory* %loadMem_4753a1, %struct.Memory** %MEMORY
  %loadMem_4753a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 5
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %3531 to i32*
  %3532 = load i32, i32* %ECX.i251
  %3533 = zext i32 %3532 to i64
  %3534 = load i64, i64* %PC.i250
  %3535 = add i64 %3534, 7
  store i64 %3535, i64* %PC.i250
  store i32 %3532, i32* bitcast (%G_0xae3e54_type* @G_0xae3e54 to i32*)
  store %struct.Memory* %loadMem_4753a4, %struct.Memory** %MEMORY
  %loadMem_4753ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 1
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %3542 = bitcast %union.anon* %3541 to %struct.anon.2*
  %AL.i248 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3542, i32 0, i32 0
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 7
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %3546 = bitcast %union.anon* %3545 to %struct.anon.2*
  %DL.i249 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3546, i32 0, i32 0
  %3547 = load i8, i8* %AL.i248
  %3548 = zext i8 %3547 to i64
  %3549 = load i64, i64* %PC.i247
  %3550 = add i64 %3549, 2
  store i64 %3550, i64* %PC.i247
  store i8 %3547, i8* %DL.i249, align 1
  store %struct.Memory* %loadMem_4753ab, %struct.Memory** %MEMORY
  %loadMem_4753ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 33
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 9
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 15
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %RBP.i246
  %3561 = sub i64 %3560, 24
  %3562 = load i64, i64* %PC.i244
  %3563 = add i64 %3562, 4
  store i64 %3563, i64* %PC.i244
  %3564 = inttoptr i64 %3561 to i64*
  %3565 = load i64, i64* %3564
  store i64 %3565, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_4753ad, %struct.Memory** %MEMORY
  %loadMem_4753b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 9
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RSI.i243
  %3573 = add i64 %3572, 8
  %3574 = load i64, i64* %PC.i242
  %3575 = add i64 %3574, 4
  store i64 %3575, i64* %PC.i242
  %3576 = inttoptr i64 %3573 to i32*
  %3577 = load i32, i32* %3576
  %3578 = sext i32 %3577 to i64
  store i64 %3578, i64* %RSI.i243, align 8
  store %struct.Memory* %loadMem_4753b1, %struct.Memory** %MEMORY
  %loadMem_4753b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 7
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %3585 = bitcast %union.anon* %3584 to %struct.anon.2*
  %DL.i240 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3585, i32 0, i32 0
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 9
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RSI.i241
  %3590 = add i64 %3589, 11418816
  %3591 = load i8, i8* %DL.i240
  %3592 = zext i8 %3591 to i64
  %3593 = load i64, i64* %PC.i239
  %3594 = add i64 %3593, 7
  store i64 %3594, i64* %PC.i239
  %3595 = inttoptr i64 %3590 to i8*
  store i8 %3591, i8* %3595
  store %struct.Memory* %loadMem_4753b5, %struct.Memory** %MEMORY
  %loadMem_4753bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 33
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 7
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %3602 = bitcast %union.anon* %3601 to %struct.anon.2*
  %DL.i237 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3602, i32 0, i32 0
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 1
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %3605 to i64*
  %3606 = load i8, i8* %DL.i237
  %3607 = zext i8 %3606 to i64
  %3608 = load i64, i64* %PC.i236
  %3609 = add i64 %3608, 3
  store i64 %3609, i64* %PC.i236
  %3610 = and i64 %3607, 255
  store i64 %3610, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_4753bc, %struct.Memory** %MEMORY
  %loadMem_4753bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 1
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %3616 to i32*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 15
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3619 to i64*
  %3620 = load i64, i64* %RBP.i235
  %3621 = sub i64 %3620, 40
  %3622 = load i32, i32* %EAX.i234
  %3623 = zext i32 %3622 to i64
  %3624 = load i64, i64* %PC.i233
  %3625 = add i64 %3624, 3
  store i64 %3625, i64* %PC.i233
  %3626 = inttoptr i64 %3621 to i32*
  store i32 %3622, i32* %3626
  store %struct.Memory* %loadMem_4753bf, %struct.Memory** %MEMORY
  %loadMem_4753c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %PC.i232
  %3631 = add i64 %3630, 47
  %3632 = load i64, i64* %PC.i232
  %3633 = add i64 %3632, 5
  store i64 %3633, i64* %PC.i232
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3631, i64* %3634, align 8
  store %struct.Memory* %loadMem_4753c2, %struct.Memory** %MEMORY
  br label %block_.L_4753f1

block_.L_4753c7:                                  ; preds = %block_47537a
  %loadMem_4753c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 1
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %3640 to i64*
  %3641 = load i64, i64* %PC.i230
  %3642 = add i64 %3641, 7
  store i64 %3642, i64* %PC.i230
  %3643 = load i32, i32* bitcast (%G_0xae3e50_type* @G_0xae3e50 to i32*)
  %3644 = zext i32 %3643 to i64
  store i64 %3644, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_4753c7, %struct.Memory** %MEMORY
  %loadMem_4753ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 33
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3647 to i64*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 1
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %3650 to i32*
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 5
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %3653 to i64*
  %3654 = load i32, i32* %EAX.i228
  %3655 = zext i32 %3654 to i64
  %3656 = load i64, i64* %PC.i227
  %3657 = add i64 %3656, 2
  store i64 %3657, i64* %PC.i227
  %3658 = and i64 %3655, 4294967295
  store i64 %3658, i64* %RCX.i229, align 8
  store %struct.Memory* %loadMem_4753ce, %struct.Memory** %MEMORY
  %loadMem_4753d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 5
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %RCX.i226
  %3666 = load i64, i64* %PC.i225
  %3667 = add i64 %3666, 3
  store i64 %3667, i64* %PC.i225
  %3668 = trunc i64 %3665 to i32
  %3669 = add i32 -1, %3668
  %3670 = zext i32 %3669 to i64
  store i64 %3670, i64* %RCX.i226, align 8
  %3671 = icmp ult i32 %3669, %3668
  %3672 = icmp ult i32 %3669, -1
  %3673 = or i1 %3671, %3672
  %3674 = zext i1 %3673 to i8
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3674, i8* %3675, align 1
  %3676 = and i32 %3669, 255
  %3677 = call i32 @llvm.ctpop.i32(i32 %3676)
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = xor i8 %3679, 1
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3680, i8* %3681, align 1
  %3682 = xor i64 -1, %3665
  %3683 = trunc i64 %3682 to i32
  %3684 = xor i32 %3683, %3669
  %3685 = lshr i32 %3684, 4
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3687, i8* %3688, align 1
  %3689 = icmp eq i32 %3669, 0
  %3690 = zext i1 %3689 to i8
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3690, i8* %3691, align 1
  %3692 = lshr i32 %3669, 31
  %3693 = trunc i32 %3692 to i8
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3693, i8* %3694, align 1
  %3695 = lshr i32 %3668, 31
  %3696 = xor i32 %3692, %3695
  %3697 = xor i32 %3692, 1
  %3698 = add i32 %3696, %3697
  %3699 = icmp eq i32 %3698, 2
  %3700 = zext i1 %3699 to i8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3700, i8* %3701, align 1
  store %struct.Memory* %loadMem_4753d0, %struct.Memory** %MEMORY
  %loadMem_4753d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 5
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %ECX.i224 = bitcast %union.anon* %3707 to i32*
  %3708 = load i32, i32* %ECX.i224
  %3709 = zext i32 %3708 to i64
  %3710 = load i64, i64* %PC.i223
  %3711 = add i64 %3710, 7
  store i64 %3711, i64* %PC.i223
  store i32 %3708, i32* bitcast (%G_0xae3e50_type* @G_0xae3e50 to i32*)
  store %struct.Memory* %loadMem_4753d3, %struct.Memory** %MEMORY
  %loadMem_4753da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 1
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %3718 = bitcast %union.anon* %3717 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3718, i32 0, i32 0
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 7
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %3722 = bitcast %union.anon* %3721 to %struct.anon.2*
  %DL.i222 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3722, i32 0, i32 0
  %3723 = load i8, i8* %AL.i
  %3724 = zext i8 %3723 to i64
  %3725 = load i64, i64* %PC.i221
  %3726 = add i64 %3725, 2
  store i64 %3726, i64* %PC.i221
  store i8 %3723, i8* %DL.i222, align 1
  store %struct.Memory* %loadMem_4753da, %struct.Memory** %MEMORY
  %loadMem_4753dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 33
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3729 to i64*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 9
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RSI.i219 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 15
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %3735 to i64*
  %3736 = load i64, i64* %RBP.i220
  %3737 = sub i64 %3736, 24
  %3738 = load i64, i64* %PC.i218
  %3739 = add i64 %3738, 4
  store i64 %3739, i64* %PC.i218
  %3740 = inttoptr i64 %3737 to i64*
  %3741 = load i64, i64* %3740
  store i64 %3741, i64* %RSI.i219, align 8
  store %struct.Memory* %loadMem_4753dc, %struct.Memory** %MEMORY
  %loadMem_4753e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 9
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %3747 to i64*
  %3748 = load i64, i64* %RSI.i217
  %3749 = add i64 %3748, 8
  %3750 = load i64, i64* %PC.i216
  %3751 = add i64 %3750, 4
  store i64 %3751, i64* %PC.i216
  %3752 = inttoptr i64 %3749 to i32*
  %3753 = load i32, i32* %3752
  %3754 = sext i32 %3753 to i64
  store i64 %3754, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_4753e0, %struct.Memory** %MEMORY
  %loadMem_4753e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 7
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %3761 = bitcast %union.anon* %3760 to %struct.anon.2*
  %DL.i214 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3761, i32 0, i32 0
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 9
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %3764 to i64*
  %3765 = load i64, i64* %RSI.i215
  %3766 = add i64 %3765, 11418816
  %3767 = load i8, i8* %DL.i214
  %3768 = zext i8 %3767 to i64
  %3769 = load i64, i64* %PC.i213
  %3770 = add i64 %3769, 7
  store i64 %3770, i64* %PC.i213
  %3771 = inttoptr i64 %3766 to i8*
  store i8 %3767, i8* %3771
  store %struct.Memory* %loadMem_4753e4, %struct.Memory** %MEMORY
  %loadMem_4753eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 33
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 7
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %3778 = bitcast %union.anon* %3777 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3778, i32 0, i32 0
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 1
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %3781 to i64*
  %3782 = load i8, i8* %DL.i
  %3783 = zext i8 %3782 to i64
  %3784 = load i64, i64* %PC.i211
  %3785 = add i64 %3784, 3
  store i64 %3785, i64* %PC.i211
  %3786 = and i64 %3783, 255
  store i64 %3786, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_4753eb, %struct.Memory** %MEMORY
  %loadMem_4753ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 1
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %3792 to i32*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 15
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %RBP.i210
  %3797 = sub i64 %3796, 40
  %3798 = load i32, i32* %EAX.i209
  %3799 = zext i32 %3798 to i64
  %3800 = load i64, i64* %PC.i208
  %3801 = add i64 %3800, 3
  store i64 %3801, i64* %PC.i208
  %3802 = inttoptr i64 %3797 to i32*
  store i32 %3798, i32* %3802
  store %struct.Memory* %loadMem_4753ee, %struct.Memory** %MEMORY
  br label %block_.L_4753f1

block_.L_4753f1:                                  ; preds = %block_.L_4753c7, %block_475398
  %loadMem_4753f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %PC.i207
  %3807 = add i64 %3806, 5
  %3808 = load i64, i64* %PC.i207
  %3809 = add i64 %3808, 5
  store i64 %3809, i64* %PC.i207
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3807, i64* %3810, align 8
  store %struct.Memory* %loadMem_4753f1, %struct.Memory** %MEMORY
  br label %block_.L_4753f6

block_.L_4753f6:                                  ; preds = %block_.L_4753f1, %block_.L_47535d
  %loadMem_4753f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 1
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %PC.i205
  %3818 = add i64 %3817, 5
  store i64 %3818, i64* %PC.i205
  store i64 97, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_4753f6, %struct.Memory** %MEMORY
  %loadMem_4753fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 5
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %PC.i203
  %3826 = add i64 %3825, 5
  store i64 %3826, i64* %PC.i203
  store i64 65, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_4753fb, %struct.Memory** %MEMORY
  %loadMem_475400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 7
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %PC.i201
  %3834 = add i64 %3833, 5
  store i64 %3834, i64* %PC.i201
  store i64 26, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_475400, %struct.Memory** %MEMORY
  %loadMem_475405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 9
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RSI.i199 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %RBP.i200
  %3845 = sub i64 %3844, 40
  %3846 = load i64, i64* %PC.i198
  %3847 = add i64 %3846, 3
  store i64 %3847, i64* %PC.i198
  %3848 = inttoptr i64 %3845 to i32*
  %3849 = load i32, i32* %3848
  %3850 = zext i32 %3849 to i64
  store i64 %3850, i64* %RSI.i199, align 8
  store %struct.Memory* %loadMem_475405, %struct.Memory** %MEMORY
  %loadMem_475408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 1
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %3856 to i32*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 15
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RBP.i197
  %3861 = sub i64 %3860, 52
  %3862 = load i32, i32* %EAX.i196
  %3863 = zext i32 %3862 to i64
  %3864 = load i64, i64* %PC.i195
  %3865 = add i64 %3864, 3
  store i64 %3865, i64* %PC.i195
  %3866 = inttoptr i64 %3861 to i32*
  store i32 %3862, i32* %3866
  store %struct.Memory* %loadMem_475408, %struct.Memory** %MEMORY
  %loadMem_47540b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 9
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %ESI.i193 = bitcast %union.anon* %3872 to i32*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 1
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %3875 to i64*
  %3876 = load i32, i32* %ESI.i193
  %3877 = zext i32 %3876 to i64
  %3878 = load i64, i64* %PC.i192
  %3879 = add i64 %3878, 2
  store i64 %3879, i64* %PC.i192
  %3880 = and i64 %3877, 4294967295
  store i64 %3880, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_47540b, %struct.Memory** %MEMORY
  %loadMem_47540d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 7
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %EDX.i190 = bitcast %union.anon* %3886 to i32*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 15
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %3889 to i64*
  %3890 = load i64, i64* %RBP.i191
  %3891 = sub i64 %3890, 56
  %3892 = load i32, i32* %EDX.i190
  %3893 = zext i32 %3892 to i64
  %3894 = load i64, i64* %PC.i189
  %3895 = add i64 %3894, 3
  store i64 %3895, i64* %PC.i189
  %3896 = inttoptr i64 %3891 to i32*
  store i32 %3892, i32* %3896
  store %struct.Memory* %loadMem_47540d, %struct.Memory** %MEMORY
  %loadMem_475410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 33
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %PC.i188
  %3901 = add i64 %3900, 1
  store i64 %3901, i64* %PC.i188
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3904 = bitcast %union.anon* %3903 to i32*
  %3905 = load i32, i32* %3904, align 8
  %3906 = sext i32 %3905 to i64
  %3907 = lshr i64 %3906, 32
  store i64 %3907, i64* %3902, align 8
  store %struct.Memory* %loadMem_475410, %struct.Memory** %MEMORY
  %loadMem_475411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 9
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 15
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RBP.i187
  %3918 = sub i64 %3917, 56
  %3919 = load i64, i64* %PC.i185
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i185
  %3921 = inttoptr i64 %3918 to i32*
  %3922 = load i32, i32* %3921
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RSI.i186, align 8
  store %struct.Memory* %loadMem_475411, %struct.Memory** %MEMORY
  %loadMem_475414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 9
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3929 to i32*
  %3930 = load i32, i32* %ESI.i
  %3931 = zext i32 %3930 to i64
  %3932 = load i64, i64* %PC.i181
  %3933 = add i64 %3932, 2
  store i64 %3933, i64* %PC.i181
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3935 = bitcast %union.anon* %3934 to i32*
  %3936 = load i32, i32* %3935, align 8
  %3937 = zext i32 %3936 to i64
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3939 = bitcast %union.anon* %3938 to i32*
  %3940 = load i32, i32* %3939, align 8
  %3941 = zext i32 %3940 to i64
  %3942 = shl i64 %3931, 32
  %3943 = ashr exact i64 %3942, 32
  %3944 = shl i64 %3941, 32
  %3945 = or i64 %3944, %3937
  %3946 = sdiv i64 %3945, %3943
  %3947 = shl i64 %3946, 32
  %3948 = ashr exact i64 %3947, 32
  %3949 = icmp eq i64 %3946, %3948
  br i1 %3949, label %3954, label %3950

; <label>:3950:                                   ; preds = %block_.L_4753f6
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3952 = load i64, i64* %3951, align 8
  %3953 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3952, %struct.Memory* %loadMem_475414)
  br label %routine_idivl__esi.exit

; <label>:3954:                                   ; preds = %block_.L_4753f6
  %3955 = srem i64 %3945, %3943
  %3956 = getelementptr inbounds %union.anon, %union.anon* %3934, i64 0, i32 0
  %3957 = and i64 %3946, 4294967295
  store i64 %3957, i64* %3956, align 8
  %3958 = getelementptr inbounds %union.anon, %union.anon* %3938, i64 0, i32 0
  %3959 = and i64 %3955, 4294967295
  store i64 %3959, i64* %3958, align 8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3960, align 1
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3961, align 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3962, align 1
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3963, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3964, align 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3965, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %3950, %3954
  %3966 = phi %struct.Memory* [ %3953, %3950 ], [ %loadMem_475414, %3954 ]
  store %struct.Memory* %3966, %struct.Memory** %MEMORY
  %loadMem_475416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 11
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RDI.i179 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 15
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RBP.i180
  %3977 = sub i64 %3976, 4
  %3978 = load i64, i64* %PC.i178
  %3979 = add i64 %3978, 4
  store i64 %3979, i64* %PC.i178
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = sext i32 %3981 to i64
  %3983 = mul i64 %3982, 20
  %3984 = trunc i64 %3983 to i32
  %3985 = and i64 %3983, 4294967295
  store i64 %3985, i64* %RDI.i179, align 8
  %3986 = shl i64 %3983, 32
  %3987 = ashr exact i64 %3986, 32
  %3988 = icmp ne i64 %3987, %3983
  %3989 = zext i1 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3989, i8* %3990, align 1
  %3991 = and i32 %3984, 255
  %3992 = call i32 @llvm.ctpop.i32(i32 %3991)
  %3993 = trunc i32 %3992 to i8
  %3994 = and i8 %3993, 1
  %3995 = xor i8 %3994, 1
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3995, i8* %3996, align 1
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3997, align 1
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3998, align 1
  %3999 = lshr i32 %3984, 31
  %4000 = trunc i32 %3999 to i8
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4000, i8* %4001, align 1
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3989, i8* %4002, align 1
  store %struct.Memory* %loadMem_475416, %struct.Memory** %MEMORY
  %loadMem_47541a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 33
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4005 to i64*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 11
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %4008 to i64*
  %4009 = load i64, i64* %RDI.i177
  %4010 = load i64, i64* %PC.i176
  %4011 = add i64 %4010, 3
  store i64 %4011, i64* %PC.i176
  %4012 = trunc i64 %4009 to i32
  %4013 = add i32 21, %4012
  %4014 = zext i32 %4013 to i64
  store i64 %4014, i64* %RDI.i177, align 8
  %4015 = icmp ult i32 %4013, %4012
  %4016 = icmp ult i32 %4013, 21
  %4017 = or i1 %4015, %4016
  %4018 = zext i1 %4017 to i8
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4018, i8* %4019, align 1
  %4020 = and i32 %4013, 255
  %4021 = call i32 @llvm.ctpop.i32(i32 %4020)
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  %4024 = xor i8 %4023, 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4024, i8* %4025, align 1
  %4026 = xor i64 21, %4009
  %4027 = trunc i64 %4026 to i32
  %4028 = xor i32 %4027, %4013
  %4029 = lshr i32 %4028, 4
  %4030 = trunc i32 %4029 to i8
  %4031 = and i8 %4030, 1
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4031, i8* %4032, align 1
  %4033 = icmp eq i32 %4013, 0
  %4034 = zext i1 %4033 to i8
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4034, i8* %4035, align 1
  %4036 = lshr i32 %4013, 31
  %4037 = trunc i32 %4036 to i8
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4037, i8* %4038, align 1
  %4039 = lshr i32 %4012, 31
  %4040 = xor i32 %4036, %4039
  %4041 = add i32 %4040, %4036
  %4042 = icmp eq i32 %4041, 2
  %4043 = zext i1 %4042 to i8
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4043, i8* %4044, align 1
  store %struct.Memory* %loadMem_47541a, %struct.Memory** %MEMORY
  %loadMem_47541d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 11
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 15
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %RDI.i174
  %4055 = load i64, i64* %RBP.i175
  %4056 = sub i64 %4055, 8
  %4057 = load i64, i64* %PC.i173
  %4058 = add i64 %4057, 3
  store i64 %4058, i64* %PC.i173
  %4059 = trunc i64 %4054 to i32
  %4060 = inttoptr i64 %4056 to i32*
  %4061 = load i32, i32* %4060
  %4062 = add i32 %4061, %4059
  %4063 = zext i32 %4062 to i64
  store i64 %4063, i64* %RDI.i174, align 8
  %4064 = icmp ult i32 %4062, %4059
  %4065 = icmp ult i32 %4062, %4061
  %4066 = or i1 %4064, %4065
  %4067 = zext i1 %4066 to i8
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4067, i8* %4068, align 1
  %4069 = and i32 %4062, 255
  %4070 = call i32 @llvm.ctpop.i32(i32 %4069)
  %4071 = trunc i32 %4070 to i8
  %4072 = and i8 %4071, 1
  %4073 = xor i8 %4072, 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4073, i8* %4074, align 1
  %4075 = xor i32 %4061, %4059
  %4076 = xor i32 %4075, %4062
  %4077 = lshr i32 %4076, 4
  %4078 = trunc i32 %4077 to i8
  %4079 = and i8 %4078, 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4079, i8* %4080, align 1
  %4081 = icmp eq i32 %4062, 0
  %4082 = zext i1 %4081 to i8
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4082, i8* %4083, align 1
  %4084 = lshr i32 %4062, 31
  %4085 = trunc i32 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4085, i8* %4086, align 1
  %4087 = lshr i32 %4059, 31
  %4088 = lshr i32 %4061, 31
  %4089 = xor i32 %4084, %4087
  %4090 = xor i32 %4084, %4088
  %4091 = add i32 %4089, %4090
  %4092 = icmp eq i32 %4091, 2
  %4093 = zext i1 %4092 to i8
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4093, i8* %4094, align 1
  store %struct.Memory* %loadMem_47541d, %struct.Memory** %MEMORY
  %loadMem_475420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 11
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %EDI.i171 = bitcast %union.anon* %4100 to i32*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 17
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %R8.i172 = bitcast %union.anon* %4103 to i64*
  %4104 = load i32, i32* %EDI.i171
  %4105 = zext i32 %4104 to i64
  %4106 = load i64, i64* %PC.i170
  %4107 = add i64 %4106, 3
  store i64 %4107, i64* %PC.i170
  %4108 = shl i64 %4105, 32
  %4109 = ashr exact i64 %4108, 32
  store i64 %4109, i64* %R8.i172, align 8
  store %struct.Memory* %loadMem_475420, %struct.Memory** %MEMORY
  %loadMem_475423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 11
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %RDI.i169 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 17
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4118 to i64*
  %4119 = load i64, i64* %R8.i
  %4120 = add i64 %4119, 12099168
  %4121 = load i64, i64* %PC.i168
  %4122 = add i64 %4121, 9
  store i64 %4122, i64* %PC.i168
  %4123 = inttoptr i64 %4120 to i8*
  %4124 = load i8, i8* %4123
  %4125 = zext i8 %4124 to i64
  store i64 %4125, i64* %RDI.i169, align 8
  store %struct.Memory* %loadMem_475423, %struct.Memory** %MEMORY
  %loadMem_47542c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4128 to i64*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 11
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %EDI.i167 = bitcast %union.anon* %4131 to i32*
  %4132 = load i32, i32* %EDI.i167
  %4133 = zext i32 %4132 to i64
  %4134 = load i64, i64* %PC.i166
  %4135 = add i64 %4134, 3
  store i64 %4135, i64* %PC.i166
  %4136 = sub i32 %4132, 2
  %4137 = icmp ult i32 %4132, 2
  %4138 = zext i1 %4137 to i8
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4138, i8* %4139, align 1
  %4140 = and i32 %4136, 255
  %4141 = call i32 @llvm.ctpop.i32(i32 %4140)
  %4142 = trunc i32 %4141 to i8
  %4143 = and i8 %4142, 1
  %4144 = xor i8 %4143, 1
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4144, i8* %4145, align 1
  %4146 = xor i64 2, %4133
  %4147 = trunc i64 %4146 to i32
  %4148 = xor i32 %4147, %4136
  %4149 = lshr i32 %4148, 4
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4151, i8* %4152, align 1
  %4153 = icmp eq i32 %4136, 0
  %4154 = zext i1 %4153 to i8
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4154, i8* %4155, align 1
  %4156 = lshr i32 %4136, 31
  %4157 = trunc i32 %4156 to i8
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4157, i8* %4158, align 1
  %4159 = lshr i32 %4132, 31
  %4160 = xor i32 %4156, %4159
  %4161 = add i32 %4160, %4159
  %4162 = icmp eq i32 %4161, 2
  %4163 = zext i1 %4162 to i8
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4163, i8* %4164, align 1
  store %struct.Memory* %loadMem_47542c, %struct.Memory** %MEMORY
  %loadMem_47542f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 11
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 15
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %4173 to i64*
  %4174 = load i64, i64* %RBP.i165
  %4175 = sub i64 %4174, 52
  %4176 = load i64, i64* %PC.i163
  %4177 = add i64 %4176, 3
  store i64 %4177, i64* %PC.i163
  %4178 = inttoptr i64 %4175 to i32*
  %4179 = load i32, i32* %4178
  %4180 = zext i32 %4179 to i64
  store i64 %4180, i64* %RDI.i164, align 8
  store %struct.Memory* %loadMem_47542f, %struct.Memory** %MEMORY
  %loadMem_475432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 33
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 5
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %ECX.i161 = bitcast %union.anon* %4186 to i32*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 11
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RDI.i162 = bitcast %union.anon* %4189 to i64*
  %4190 = load i32, i32* %ECX.i161
  %4191 = zext i32 %4190 to i64
  %4192 = load i64, i64* %PC.i160
  %4193 = add i64 %4192, 3
  store i64 %4193, i64* %PC.i160
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4195 = load i8, i8* %4194, align 1
  %4196 = icmp ne i8 %4195, 0
  %4197 = load i64, i64* %RDI.i162, align 8
  %4198 = select i1 %4196, i64 %4191, i64 %4197
  %4199 = and i64 %4198, 4294967295
  store i64 %4199, i64* %RDI.i162, align 8
  store %struct.Memory* %loadMem_475432, %struct.Memory** %MEMORY
  %loadMem_475435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 11
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4205 to i32*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 7
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %RDX.i159
  %4210 = load i32, i32* %EDI.i
  %4211 = zext i32 %4210 to i64
  %4212 = load i64, i64* %PC.i158
  %4213 = add i64 %4212, 2
  store i64 %4213, i64* %PC.i158
  %4214 = trunc i64 %4209 to i32
  %4215 = add i32 %4210, %4214
  %4216 = zext i32 %4215 to i64
  store i64 %4216, i64* %RDX.i159, align 8
  %4217 = icmp ult i32 %4215, %4214
  %4218 = icmp ult i32 %4215, %4210
  %4219 = or i1 %4217, %4218
  %4220 = zext i1 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4220, i8* %4221, align 1
  %4222 = and i32 %4215, 255
  %4223 = call i32 @llvm.ctpop.i32(i32 %4222)
  %4224 = trunc i32 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = xor i8 %4225, 1
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4226, i8* %4227, align 1
  %4228 = xor i64 %4211, %4209
  %4229 = trunc i64 %4228 to i32
  %4230 = xor i32 %4229, %4215
  %4231 = lshr i32 %4230, 4
  %4232 = trunc i32 %4231 to i8
  %4233 = and i8 %4232, 1
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4233, i8* %4234, align 1
  %4235 = icmp eq i32 %4215, 0
  %4236 = zext i1 %4235 to i8
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4236, i8* %4237, align 1
  %4238 = lshr i32 %4215, 31
  %4239 = trunc i32 %4238 to i8
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4239, i8* %4240, align 1
  %4241 = lshr i32 %4214, 31
  %4242 = lshr i32 %4210, 31
  %4243 = xor i32 %4238, %4241
  %4244 = xor i32 %4238, %4242
  %4245 = add i32 %4243, %4244
  %4246 = icmp eq i32 %4245, 2
  %4247 = zext i1 %4246 to i8
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4247, i8* %4248, align 1
  store %struct.Memory* %loadMem_475435, %struct.Memory** %MEMORY
  %loadMem_475437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 33
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 7
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4254 to i32*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 15
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %4257 to i64*
  %4258 = load i64, i64* %RBP.i157
  %4259 = sub i64 %4258, 40
  %4260 = load i32, i32* %EDX.i
  %4261 = zext i32 %4260 to i64
  %4262 = load i64, i64* %PC.i156
  %4263 = add i64 %4262, 3
  store i64 %4263, i64* %PC.i156
  %4264 = inttoptr i64 %4259 to i32*
  store i32 %4260, i32* %4264
  store %struct.Memory* %loadMem_475437, %struct.Memory** %MEMORY
  %loadMem_47543a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 33
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4267 to i64*
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 15
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %4270 to i64*
  %4271 = load i64, i64* %RBP.i155
  %4272 = sub i64 %4271, 16
  %4273 = load i64, i64* %PC.i154
  %4274 = add i64 %4273, 4
  store i64 %4274, i64* %PC.i154
  %4275 = inttoptr i64 %4272 to i32*
  %4276 = load i32, i32* %4275
  %4277 = sub i32 %4276, 1
  %4278 = icmp ult i32 %4276, 1
  %4279 = zext i1 %4278 to i8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4279, i8* %4280, align 1
  %4281 = and i32 %4277, 255
  %4282 = call i32 @llvm.ctpop.i32(i32 %4281)
  %4283 = trunc i32 %4282 to i8
  %4284 = and i8 %4283, 1
  %4285 = xor i8 %4284, 1
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4285, i8* %4286, align 1
  %4287 = xor i32 %4276, 1
  %4288 = xor i32 %4287, %4277
  %4289 = lshr i32 %4288, 4
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4291, i8* %4292, align 1
  %4293 = icmp eq i32 %4277, 0
  %4294 = zext i1 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4294, i8* %4295, align 1
  %4296 = lshr i32 %4277, 31
  %4297 = trunc i32 %4296 to i8
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4297, i8* %4298, align 1
  %4299 = lshr i32 %4276, 31
  %4300 = xor i32 %4296, %4299
  %4301 = add i32 %4300, %4299
  %4302 = icmp eq i32 %4301, 2
  %4303 = zext i1 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4303, i8* %4304, align 1
  store %struct.Memory* %loadMem_47543a, %struct.Memory** %MEMORY
  %loadMem_47543e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 33
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4307 to i64*
  %4308 = load i64, i64* %PC.i153
  %4309 = add i64 %4308, 70
  %4310 = load i64, i64* %PC.i153
  %4311 = add i64 %4310, 6
  %4312 = load i64, i64* %PC.i153
  %4313 = add i64 %4312, 6
  store i64 %4313, i64* %PC.i153
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4315 = load i8, i8* %4314, align 1
  %4316 = icmp eq i8 %4315, 0
  %4317 = zext i1 %4316 to i8
  store i8 %4317, i8* %BRANCH_TAKEN, align 1
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4319 = select i1 %4316, i64 %4309, i64 %4311
  store i64 %4319, i64* %4318, align 8
  store %struct.Memory* %loadMem_47543e, %struct.Memory** %MEMORY
  %loadBr_47543e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47543e = icmp eq i8 %loadBr_47543e, 1
  br i1 %cmpBr_47543e, label %block_.L_475484, label %block_475444

block_475444:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_475444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 1
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %PC.i151
  %4327 = add i64 %4326, 10
  store i64 %4327, i64* %PC.i151
  store i64 ptrtoint (%G__0x4e5300_type* @G__0x4e5300 to i64), i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_475444, %struct.Memory** %MEMORY
  %loadMem_47544e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 5
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 15
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %4336 to i64*
  %4337 = load i64, i64* %RBP.i150
  %4338 = sub i64 %4337, 4
  %4339 = load i64, i64* %PC.i148
  %4340 = add i64 %4339, 4
  store i64 %4340, i64* %PC.i148
  %4341 = inttoptr i64 %4338 to i32*
  %4342 = load i32, i32* %4341
  %4343 = sext i32 %4342 to i64
  %4344 = mul i64 %4343, 20
  %4345 = trunc i64 %4344 to i32
  %4346 = and i64 %4344, 4294967295
  store i64 %4346, i64* %RCX.i149, align 8
  %4347 = shl i64 %4344, 32
  %4348 = ashr exact i64 %4347, 32
  %4349 = icmp ne i64 %4348, %4344
  %4350 = zext i1 %4349 to i8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4350, i8* %4351, align 1
  %4352 = and i32 %4345, 255
  %4353 = call i32 @llvm.ctpop.i32(i32 %4352)
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  %4356 = xor i8 %4355, 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4356, i8* %4357, align 1
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4358, align 1
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4359, align 1
  %4360 = lshr i32 %4345, 31
  %4361 = trunc i32 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4361, i8* %4362, align 1
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4350, i8* %4363, align 1
  store %struct.Memory* %loadMem_47544e, %struct.Memory** %MEMORY
  %loadMem_475452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 33
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 5
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %RCX.i147
  %4371 = load i64, i64* %PC.i146
  %4372 = add i64 %4371, 3
  store i64 %4372, i64* %PC.i146
  %4373 = trunc i64 %4370 to i32
  %4374 = add i32 21, %4373
  %4375 = zext i32 %4374 to i64
  store i64 %4375, i64* %RCX.i147, align 8
  %4376 = icmp ult i32 %4374, %4373
  %4377 = icmp ult i32 %4374, 21
  %4378 = or i1 %4376, %4377
  %4379 = zext i1 %4378 to i8
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4379, i8* %4380, align 1
  %4381 = and i32 %4374, 255
  %4382 = call i32 @llvm.ctpop.i32(i32 %4381)
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = xor i8 %4384, 1
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4385, i8* %4386, align 1
  %4387 = xor i64 21, %4370
  %4388 = trunc i64 %4387 to i32
  %4389 = xor i32 %4388, %4374
  %4390 = lshr i32 %4389, 4
  %4391 = trunc i32 %4390 to i8
  %4392 = and i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4392, i8* %4393, align 1
  %4394 = icmp eq i32 %4374, 0
  %4395 = zext i1 %4394 to i8
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4395, i8* %4396, align 1
  %4397 = lshr i32 %4374, 31
  %4398 = trunc i32 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4398, i8* %4399, align 1
  %4400 = lshr i32 %4373, 31
  %4401 = xor i32 %4397, %4400
  %4402 = add i32 %4401, %4397
  %4403 = icmp eq i32 %4402, 2
  %4404 = zext i1 %4403 to i8
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4404, i8* %4405, align 1
  store %struct.Memory* %loadMem_475452, %struct.Memory** %MEMORY
  %loadMem_475455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 33
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 5
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 15
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %4414 to i64*
  %4415 = load i64, i64* %RCX.i144
  %4416 = load i64, i64* %RBP.i145
  %4417 = sub i64 %4416, 8
  %4418 = load i64, i64* %PC.i143
  %4419 = add i64 %4418, 3
  store i64 %4419, i64* %PC.i143
  %4420 = trunc i64 %4415 to i32
  %4421 = inttoptr i64 %4417 to i32*
  %4422 = load i32, i32* %4421
  %4423 = add i32 %4422, %4420
  %4424 = zext i32 %4423 to i64
  store i64 %4424, i64* %RCX.i144, align 8
  %4425 = icmp ult i32 %4423, %4420
  %4426 = icmp ult i32 %4423, %4422
  %4427 = or i1 %4425, %4426
  %4428 = zext i1 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4428, i8* %4429, align 1
  %4430 = and i32 %4423, 255
  %4431 = call i32 @llvm.ctpop.i32(i32 %4430)
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = xor i8 %4433, 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4434, i8* %4435, align 1
  %4436 = xor i32 %4422, %4420
  %4437 = xor i32 %4436, %4423
  %4438 = lshr i32 %4437, 4
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4440, i8* %4441, align 1
  %4442 = icmp eq i32 %4423, 0
  %4443 = zext i1 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4443, i8* %4444, align 1
  %4445 = lshr i32 %4423, 31
  %4446 = trunc i32 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4446, i8* %4447, align 1
  %4448 = lshr i32 %4420, 31
  %4449 = lshr i32 %4422, 31
  %4450 = xor i32 %4445, %4448
  %4451 = xor i32 %4445, %4449
  %4452 = add i32 %4450, %4451
  %4453 = icmp eq i32 %4452, 2
  %4454 = zext i1 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4454, i8* %4455, align 1
  store %struct.Memory* %loadMem_475455, %struct.Memory** %MEMORY
  %loadMem_475458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 33
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 5
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %ECX.i141 = bitcast %union.anon* %4461 to i32*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 7
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %4464 to i64*
  %4465 = load i32, i32* %ECX.i141
  %4466 = zext i32 %4465 to i64
  %4467 = load i64, i64* %PC.i140
  %4468 = add i64 %4467, 3
  store i64 %4468, i64* %PC.i140
  %4469 = shl i64 %4466, 32
  %4470 = ashr exact i64 %4469, 32
  store i64 %4470, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_475458, %struct.Memory** %MEMORY
  %loadMem_47545b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 5
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 7
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RDX.i139
  %4481 = add i64 %4480, 12099168
  %4482 = load i64, i64* %PC.i137
  %4483 = add i64 %4482, 8
  store i64 %4483, i64* %PC.i137
  %4484 = inttoptr i64 %4481 to i8*
  %4485 = load i8, i8* %4484
  %4486 = zext i8 %4485 to i64
  store i64 %4486, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_47545b, %struct.Memory** %MEMORY
  %loadMem_475463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 5
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %ECX.i135 = bitcast %union.anon* %4492 to i32*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 7
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %4495 to i64*
  %4496 = load i32, i32* %ECX.i135
  %4497 = zext i32 %4496 to i64
  %4498 = load i64, i64* %PC.i134
  %4499 = add i64 %4498, 2
  store i64 %4499, i64* %PC.i134
  %4500 = and i64 %4497, 4294967295
  store i64 %4500, i64* %RDX.i136, align 8
  store %struct.Memory* %loadMem_475463, %struct.Memory** %MEMORY
  %loadMem_475465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4503 to i64*
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 7
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %4506 to i64*
  %4507 = load i64, i64* %RDX.i133
  %4508 = load i64, i64* %PC.i132
  %4509 = add i64 %4508, 4
  store i64 %4509, i64* %PC.i132
  %4510 = sext i64 %4507 to i128
  %4511 = and i128 %4510, -18446744073709551616
  %4512 = zext i64 %4507 to i128
  %4513 = or i128 %4511, %4512
  %4514 = mul i128 20, %4513
  %4515 = trunc i128 %4514 to i64
  store i64 %4515, i64* %RDX.i133, align 8
  %4516 = sext i64 %4515 to i128
  %4517 = icmp ne i128 %4516, %4514
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4518, i8* %4519, align 1
  %4520 = trunc i128 %4514 to i32
  %4521 = and i32 %4520, 255
  %4522 = call i32 @llvm.ctpop.i32(i32 %4521)
  %4523 = trunc i32 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = xor i8 %4524, 1
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4525, i8* %4526, align 1
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4527, align 1
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4528, align 1
  %4529 = lshr i64 %4515, 63
  %4530 = trunc i64 %4529 to i8
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4530, i8* %4531, align 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4518, i8* %4532, align 1
  store %struct.Memory* %loadMem_475465, %struct.Memory** %MEMORY
  %loadMem_475469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 1
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 7
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %4541 to i64*
  %4542 = load i64, i64* %RAX.i130
  %4543 = load i64, i64* %RDX.i131
  %4544 = load i64, i64* %PC.i129
  %4545 = add i64 %4544, 3
  store i64 %4545, i64* %PC.i129
  %4546 = add i64 %4543, %4542
  store i64 %4546, i64* %RAX.i130, align 8
  %4547 = icmp ult i64 %4546, %4542
  %4548 = icmp ult i64 %4546, %4543
  %4549 = or i1 %4547, %4548
  %4550 = zext i1 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4550, i8* %4551, align 1
  %4552 = trunc i64 %4546 to i32
  %4553 = and i32 %4552, 255
  %4554 = call i32 @llvm.ctpop.i32(i32 %4553)
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  %4557 = xor i8 %4556, 1
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4557, i8* %4558, align 1
  %4559 = xor i64 %4543, %4542
  %4560 = xor i64 %4559, %4546
  %4561 = lshr i64 %4560, 4
  %4562 = trunc i64 %4561 to i8
  %4563 = and i8 %4562, 1
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4563, i8* %4564, align 1
  %4565 = icmp eq i64 %4546, 0
  %4566 = zext i1 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4566, i8* %4567, align 1
  %4568 = lshr i64 %4546, 63
  %4569 = trunc i64 %4568 to i8
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4569, i8* %4570, align 1
  %4571 = lshr i64 %4542, 63
  %4572 = lshr i64 %4543, 63
  %4573 = xor i64 %4568, %4571
  %4574 = xor i64 %4568, %4572
  %4575 = add i64 %4573, %4574
  %4576 = icmp eq i64 %4575, 2
  %4577 = zext i1 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4577, i8* %4578, align 1
  store %struct.Memory* %loadMem_475469, %struct.Memory** %MEMORY
  %loadMem_47546c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 33
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4581 to i64*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 7
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %RDX.i127 = bitcast %union.anon* %4584 to i64*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 15
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %4587 to i64*
  %4588 = load i64, i64* %RBP.i128
  %4589 = sub i64 %4588, 24
  %4590 = load i64, i64* %PC.i126
  %4591 = add i64 %4590, 4
  store i64 %4591, i64* %PC.i126
  %4592 = inttoptr i64 %4589 to i64*
  %4593 = load i64, i64* %4592
  store i64 %4593, i64* %RDX.i127, align 8
  store %struct.Memory* %loadMem_47546c, %struct.Memory** %MEMORY
  %loadMem_475470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 33
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4596 to i64*
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 7
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %4599 to i64*
  %4600 = load i64, i64* %RDX.i125
  %4601 = add i64 %4600, 20
  %4602 = load i64, i64* %PC.i124
  %4603 = add i64 %4602, 4
  store i64 %4603, i64* %PC.i124
  %4604 = inttoptr i64 %4601 to i32*
  %4605 = load i32, i32* %4604
  %4606 = sext i32 %4605 to i64
  store i64 %4606, i64* %RDX.i125, align 8
  store %struct.Memory* %loadMem_475470, %struct.Memory** %MEMORY
  %loadMem_475474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 1
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 7
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %4615 to i64*
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 11
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %RDI.i123 = bitcast %union.anon* %4618 to i64*
  %4619 = load i64, i64* %RAX.i121
  %4620 = load i64, i64* %RDX.i122
  %4621 = mul i64 %4620, 4
  %4622 = add i64 %4621, %4619
  %4623 = load i64, i64* %PC.i120
  %4624 = add i64 %4623, 3
  store i64 %4624, i64* %PC.i120
  %4625 = inttoptr i64 %4622 to i32*
  %4626 = load i32, i32* %4625
  %4627 = zext i32 %4626 to i64
  store i64 %4627, i64* %RDI.i123, align 8
  store %struct.Memory* %loadMem_475474, %struct.Memory** %MEMORY
  %loadMem_475477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 9
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RSI.i118 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 15
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %RBP.i119
  %4638 = sub i64 %4637, 40
  %4639 = load i64, i64* %PC.i117
  %4640 = add i64 %4639, 3
  store i64 %4640, i64* %PC.i117
  %4641 = inttoptr i64 %4638 to i32*
  %4642 = load i32, i32* %4641
  %4643 = zext i32 %4642 to i64
  store i64 %4643, i64* %RSI.i118, align 8
  store %struct.Memory* %loadMem_475477, %struct.Memory** %MEMORY
  %loadMem1_47547a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4646 to i64*
  %4647 = load i64, i64* %PC.i116
  %4648 = add i64 %4647, 446470
  %4649 = load i64, i64* %PC.i116
  %4650 = add i64 %4649, 5
  %4651 = load i64, i64* %PC.i116
  %4652 = add i64 %4651, 5
  store i64 %4652, i64* %PC.i116
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4654 = load i64, i64* %4653, align 8
  %4655 = add i64 %4654, -8
  %4656 = inttoptr i64 %4655 to i64*
  store i64 %4650, i64* %4656
  store i64 %4655, i64* %4653, align 8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4648, i64* %4657, align 8
  store %struct.Memory* %loadMem1_47547a, %struct.Memory** %MEMORY
  %loadMem2_47547a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47547a = load i64, i64* %3
  %call2_47547a = call %struct.Memory* @sub_4e2480.write_color_char(%struct.State* %0, i64 %loadPC_47547a, %struct.Memory* %loadMem2_47547a)
  store %struct.Memory* %call2_47547a, %struct.Memory** %MEMORY
  %loadMem_47547f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4660 to i64*
  %4661 = load i64, i64* %PC.i115
  %4662 = add i64 %4661, 247
  %4663 = load i64, i64* %PC.i115
  %4664 = add i64 %4663, 5
  store i64 %4664, i64* %PC.i115
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4662, i64* %4665, align 8
  store %struct.Memory* %loadMem_47547f, %struct.Memory** %MEMORY
  br label %block_.L_475576

block_.L_475484:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_475484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 15
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RBP.i114
  %4673 = sub i64 %4672, 16
  %4674 = load i64, i64* %PC.i113
  %4675 = add i64 %4674, 4
  store i64 %4675, i64* %PC.i113
  %4676 = inttoptr i64 %4673 to i32*
  %4677 = load i32, i32* %4676
  %4678 = sub i32 %4677, 2
  %4679 = icmp ult i32 %4677, 2
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4680, i8* %4681, align 1
  %4682 = and i32 %4678, 255
  %4683 = call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4686, i8* %4687, align 1
  %4688 = xor i32 %4677, 2
  %4689 = xor i32 %4688, %4678
  %4690 = lshr i32 %4689, 4
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4692, i8* %4693, align 1
  %4694 = icmp eq i32 %4678, 0
  %4695 = zext i1 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4695, i8* %4696, align 1
  %4697 = lshr i32 %4678, 31
  %4698 = trunc i32 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4698, i8* %4699, align 1
  %4700 = lshr i32 %4677, 31
  %4701 = xor i32 %4697, %4700
  %4702 = add i32 %4701, %4700
  %4703 = icmp eq i32 %4702, 2
  %4704 = zext i1 %4703 to i8
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4704, i8* %4705, align 1
  store %struct.Memory* %loadMem_475484, %struct.Memory** %MEMORY
  %loadMem_475488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4708 to i64*
  %4709 = load i64, i64* %PC.i112
  %4710 = add i64 %4709, 80
  %4711 = load i64, i64* %PC.i112
  %4712 = add i64 %4711, 6
  %4713 = load i64, i64* %PC.i112
  %4714 = add i64 %4713, 6
  store i64 %4714, i64* %PC.i112
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4716 = load i8, i8* %4715, align 1
  %4717 = icmp eq i8 %4716, 0
  %4718 = zext i1 %4717 to i8
  store i8 %4718, i8* %BRANCH_TAKEN, align 1
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4720 = select i1 %4717, i64 %4710, i64 %4712
  store i64 %4720, i64* %4719, align 8
  store %struct.Memory* %loadMem_475488, %struct.Memory** %MEMORY
  %loadBr_475488 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475488 = icmp eq i8 %loadBr_475488, 1
  br i1 %cmpBr_475488, label %block_.L_4754d8, label %block_47548e

block_47548e:                                     ; preds = %block_.L_475484
  %loadMem_47548e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 33
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 1
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 15
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %4729 to i64*
  %4730 = load i64, i64* %RBP.i111
  %4731 = sub i64 %4730, 4
  %4732 = load i64, i64* %PC.i109
  %4733 = add i64 %4732, 4
  store i64 %4733, i64* %PC.i109
  %4734 = inttoptr i64 %4731 to i32*
  %4735 = load i32, i32* %4734
  %4736 = sext i32 %4735 to i64
  %4737 = mul i64 %4736, 20
  %4738 = trunc i64 %4737 to i32
  %4739 = and i64 %4737, 4294967295
  store i64 %4739, i64* %RAX.i110, align 8
  %4740 = shl i64 %4737, 32
  %4741 = ashr exact i64 %4740, 32
  %4742 = icmp ne i64 %4741, %4737
  %4743 = zext i1 %4742 to i8
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4743, i8* %4744, align 1
  %4745 = and i32 %4738, 255
  %4746 = call i32 @llvm.ctpop.i32(i32 %4745)
  %4747 = trunc i32 %4746 to i8
  %4748 = and i8 %4747, 1
  %4749 = xor i8 %4748, 1
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4749, i8* %4750, align 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4751, align 1
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4752, align 1
  %4753 = lshr i32 %4738, 31
  %4754 = trunc i32 %4753 to i8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4754, i8* %4755, align 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4743, i8* %4756, align 1
  store %struct.Memory* %loadMem_47548e, %struct.Memory** %MEMORY
  %loadMem_475492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4762 to i64*
  %4763 = load i64, i64* %RAX.i108
  %4764 = load i64, i64* %PC.i107
  %4765 = add i64 %4764, 3
  store i64 %4765, i64* %PC.i107
  %4766 = trunc i64 %4763 to i32
  %4767 = add i32 21, %4766
  %4768 = zext i32 %4767 to i64
  store i64 %4768, i64* %RAX.i108, align 8
  %4769 = icmp ult i32 %4767, %4766
  %4770 = icmp ult i32 %4767, 21
  %4771 = or i1 %4769, %4770
  %4772 = zext i1 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4772, i8* %4773, align 1
  %4774 = and i32 %4767, 255
  %4775 = call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4778, i8* %4779, align 1
  %4780 = xor i64 21, %4763
  %4781 = trunc i64 %4780 to i32
  %4782 = xor i32 %4781, %4767
  %4783 = lshr i32 %4782, 4
  %4784 = trunc i32 %4783 to i8
  %4785 = and i8 %4784, 1
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4785, i8* %4786, align 1
  %4787 = icmp eq i32 %4767, 0
  %4788 = zext i1 %4787 to i8
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4788, i8* %4789, align 1
  %4790 = lshr i32 %4767, 31
  %4791 = trunc i32 %4790 to i8
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4791, i8* %4792, align 1
  %4793 = lshr i32 %4766, 31
  %4794 = xor i32 %4790, %4793
  %4795 = add i32 %4794, %4790
  %4796 = icmp eq i32 %4795, 2
  %4797 = zext i1 %4796 to i8
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4797, i8* %4798, align 1
  store %struct.Memory* %loadMem_475492, %struct.Memory** %MEMORY
  %loadMem_475495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 1
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 15
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %4807 to i64*
  %4808 = load i64, i64* %RAX.i105
  %4809 = load i64, i64* %RBP.i106
  %4810 = sub i64 %4809, 8
  %4811 = load i64, i64* %PC.i104
  %4812 = add i64 %4811, 3
  store i64 %4812, i64* %PC.i104
  %4813 = trunc i64 %4808 to i32
  %4814 = inttoptr i64 %4810 to i32*
  %4815 = load i32, i32* %4814
  %4816 = add i32 %4815, %4813
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RAX.i105, align 8
  %4818 = icmp ult i32 %4816, %4813
  %4819 = icmp ult i32 %4816, %4815
  %4820 = or i1 %4818, %4819
  %4821 = zext i1 %4820 to i8
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4821, i8* %4822, align 1
  %4823 = and i32 %4816, 255
  %4824 = call i32 @llvm.ctpop.i32(i32 %4823)
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4827, i8* %4828, align 1
  %4829 = xor i32 %4815, %4813
  %4830 = xor i32 %4829, %4816
  %4831 = lshr i32 %4830, 4
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4833, i8* %4834, align 1
  %4835 = icmp eq i32 %4816, 0
  %4836 = zext i1 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4836, i8* %4837, align 1
  %4838 = lshr i32 %4816, 31
  %4839 = trunc i32 %4838 to i8
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4839, i8* %4840, align 1
  %4841 = lshr i32 %4813, 31
  %4842 = lshr i32 %4815, 31
  %4843 = xor i32 %4838, %4841
  %4844 = xor i32 %4838, %4842
  %4845 = add i32 %4843, %4844
  %4846 = icmp eq i32 %4845, 2
  %4847 = zext i1 %4846 to i8
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4847, i8* %4848, align 1
  store %struct.Memory* %loadMem_475495, %struct.Memory** %MEMORY
  %loadMem_475498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 33
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 1
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %4854 to i32*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 5
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %4857 to i64*
  %4858 = load i32, i32* %EAX.i102
  %4859 = zext i32 %4858 to i64
  %4860 = load i64, i64* %PC.i101
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i101
  %4862 = shl i64 %4859, 32
  %4863 = ashr exact i64 %4862, 32
  store i64 %4863, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_475498, %struct.Memory** %MEMORY
  %loadMem_47549b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 1
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 5
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %4872 to i64*
  %4873 = load i64, i64* %RCX.i100
  %4874 = add i64 %4873, 12099168
  %4875 = load i64, i64* %PC.i98
  %4876 = add i64 %4875, 8
  store i64 %4876, i64* %PC.i98
  %4877 = inttoptr i64 %4874 to i8*
  %4878 = load i8, i8* %4877
  %4879 = zext i8 %4878 to i64
  store i64 %4879, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_47549b, %struct.Memory** %MEMORY
  %loadMem_4754a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 33
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 1
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4885 to i32*
  %4886 = load i32, i32* %EAX.i
  %4887 = zext i32 %4886 to i64
  %4888 = load i64, i64* %PC.i97
  %4889 = add i64 %4888, 3
  store i64 %4889, i64* %PC.i97
  %4890 = sub i32 %4886, 2
  %4891 = icmp ult i32 %4886, 2
  %4892 = zext i1 %4891 to i8
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4892, i8* %4893, align 1
  %4894 = and i32 %4890, 255
  %4895 = call i32 @llvm.ctpop.i32(i32 %4894)
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = xor i8 %4897, 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4898, i8* %4899, align 1
  %4900 = xor i64 2, %4887
  %4901 = trunc i64 %4900 to i32
  %4902 = xor i32 %4901, %4890
  %4903 = lshr i32 %4902, 4
  %4904 = trunc i32 %4903 to i8
  %4905 = and i8 %4904, 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4905, i8* %4906, align 1
  %4907 = icmp eq i32 %4890, 0
  %4908 = zext i1 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4908, i8* %4909, align 1
  %4910 = lshr i32 %4890, 31
  %4911 = trunc i32 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4911, i8* %4912, align 1
  %4913 = lshr i32 %4886, 31
  %4914 = xor i32 %4910, %4913
  %4915 = add i32 %4914, %4913
  %4916 = icmp eq i32 %4915, 2
  %4917 = zext i1 %4916 to i8
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4917, i8* %4918, align 1
  store %struct.Memory* %loadMem_4754a3, %struct.Memory** %MEMORY
  %loadMem_4754a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %PC.i96
  %4923 = add i64 %4922, 28
  %4924 = load i64, i64* %PC.i96
  %4925 = add i64 %4924, 6
  %4926 = load i64, i64* %PC.i96
  %4927 = add i64 %4926, 6
  store i64 %4927, i64* %PC.i96
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4929 = load i8, i8* %4928, align 1
  %4930 = icmp eq i8 %4929, 0
  %4931 = zext i1 %4930 to i8
  store i8 %4931, i8* %BRANCH_TAKEN, align 1
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4933 = select i1 %4930, i64 %4923, i64 %4925
  store i64 %4933, i64* %4932, align 8
  store %struct.Memory* %loadMem_4754a6, %struct.Memory** %MEMORY
  %loadBr_4754a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4754a6 = icmp eq i8 %loadBr_4754a6, 1
  br i1 %cmpBr_4754a6, label %block_.L_4754c2, label %block_4754ac

block_4754ac:                                     ; preds = %block_47548e
  %loadMem_4754ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 9
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RSI.i95 = bitcast %union.anon* %4939 to i64*
  %4940 = load i64, i64* %PC.i94
  %4941 = add i64 %4940, 5
  store i64 %4941, i64* %PC.i94
  store i64 88, i64* %RSI.i95, align 8
  store %struct.Memory* %loadMem_4754ac, %struct.Memory** %MEMORY
  %loadMem_4754b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 33
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 11
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %PC.i92
  %4949 = add i64 %4948, 7
  store i64 %4949, i64* %PC.i92
  %4950 = load i32, i32* bitcast (%G_0x4e52f4_type* @G_0x4e52f4 to i32*)
  %4951 = zext i32 %4950 to i64
  store i64 %4951, i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_4754b1, %struct.Memory** %MEMORY
  %loadMem1_4754b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 33
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4954 to i64*
  %4955 = load i64, i64* %PC.i91
  %4956 = add i64 %4955, 446408
  %4957 = load i64, i64* %PC.i91
  %4958 = add i64 %4957, 5
  %4959 = load i64, i64* %PC.i91
  %4960 = add i64 %4959, 5
  store i64 %4960, i64* %PC.i91
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4962 = load i64, i64* %4961, align 8
  %4963 = add i64 %4962, -8
  %4964 = inttoptr i64 %4963 to i64*
  store i64 %4958, i64* %4964
  store i64 %4963, i64* %4961, align 8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4956, i64* %4965, align 8
  store %struct.Memory* %loadMem1_4754b8, %struct.Memory** %MEMORY
  %loadMem2_4754b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4754b8 = load i64, i64* %3
  %call2_4754b8 = call %struct.Memory* @sub_4e2480.write_color_char(%struct.State* %0, i64 %loadPC_4754b8, %struct.Memory* %loadMem2_4754b8)
  store %struct.Memory* %call2_4754b8, %struct.Memory** %MEMORY
  %loadMem_4754bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %PC.i90
  %4970 = add i64 %4969, 22
  %4971 = load i64, i64* %PC.i90
  %4972 = add i64 %4971, 5
  store i64 %4972, i64* %PC.i90
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4970, i64* %4973, align 8
  store %struct.Memory* %loadMem_4754bd, %struct.Memory** %MEMORY
  br label %block_.L_4754d3

block_.L_4754c2:                                  ; preds = %block_47548e
  %loadMem_4754c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 33
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 9
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RSI.i89 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %PC.i88
  %4981 = add i64 %4980, 5
  store i64 %4981, i64* %PC.i88
  store i64 79, i64* %RSI.i89, align 8
  store %struct.Memory* %loadMem_4754c2, %struct.Memory** %MEMORY
  %loadMem_4754c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 33
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 11
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %4987 to i64*
  %4988 = load i64, i64* %PC.i86
  %4989 = add i64 %4988, 7
  store i64 %4989, i64* %PC.i86
  %4990 = load i32, i32* bitcast (%G_0x4e52f8_type* @G_0x4e52f8 to i32*)
  %4991 = zext i32 %4990 to i64
  store i64 %4991, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_4754c7, %struct.Memory** %MEMORY
  %loadMem1_4754ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %PC.i85
  %4996 = add i64 %4995, 446386
  %4997 = load i64, i64* %PC.i85
  %4998 = add i64 %4997, 5
  %4999 = load i64, i64* %PC.i85
  %5000 = add i64 %4999, 5
  store i64 %5000, i64* %PC.i85
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5002 = load i64, i64* %5001, align 8
  %5003 = add i64 %5002, -8
  %5004 = inttoptr i64 %5003 to i64*
  store i64 %4998, i64* %5004
  store i64 %5003, i64* %5001, align 8
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4996, i64* %5005, align 8
  store %struct.Memory* %loadMem1_4754ce, %struct.Memory** %MEMORY
  %loadMem2_4754ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4754ce = load i64, i64* %3
  %call2_4754ce = call %struct.Memory* @sub_4e2480.write_color_char(%struct.State* %0, i64 %loadPC_4754ce, %struct.Memory* %loadMem2_4754ce)
  store %struct.Memory* %call2_4754ce, %struct.Memory** %MEMORY
  br label %block_.L_4754d3

block_.L_4754d3:                                  ; preds = %block_.L_4754c2, %block_4754ac
  %loadMem_4754d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 33
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5008 to i64*
  %5009 = load i64, i64* %PC.i84
  %5010 = add i64 %5009, 158
  %5011 = load i64, i64* %PC.i84
  %5012 = add i64 %5011, 5
  store i64 %5012, i64* %PC.i84
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5010, i64* %5013, align 8
  store %struct.Memory* %loadMem_4754d3, %struct.Memory** %MEMORY
  br label %block_.L_475571

block_.L_4754d8:                                  ; preds = %block_.L_475484
  %loadMem_4754d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 33
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 15
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %5019 to i64*
  %5020 = load i64, i64* %RBP.i83
  %5021 = sub i64 %5020, 16
  %5022 = load i64, i64* %PC.i82
  %5023 = add i64 %5022, 4
  store i64 %5023, i64* %PC.i82
  %5024 = inttoptr i64 %5021 to i32*
  %5025 = load i32, i32* %5024
  %5026 = sub i32 %5025, 3
  %5027 = icmp ult i32 %5025, 3
  %5028 = zext i1 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5028, i8* %5029, align 1
  %5030 = and i32 %5026, 255
  %5031 = call i32 @llvm.ctpop.i32(i32 %5030)
  %5032 = trunc i32 %5031 to i8
  %5033 = and i8 %5032, 1
  %5034 = xor i8 %5033, 1
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5034, i8* %5035, align 1
  %5036 = xor i32 %5025, 3
  %5037 = xor i32 %5036, %5026
  %5038 = lshr i32 %5037, 4
  %5039 = trunc i32 %5038 to i8
  %5040 = and i8 %5039, 1
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5040, i8* %5041, align 1
  %5042 = icmp eq i32 %5026, 0
  %5043 = zext i1 %5042 to i8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5043, i8* %5044, align 1
  %5045 = lshr i32 %5026, 31
  %5046 = trunc i32 %5045 to i8
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5046, i8* %5047, align 1
  %5048 = lshr i32 %5025, 31
  %5049 = xor i32 %5045, %5048
  %5050 = add i32 %5049, %5048
  %5051 = icmp eq i32 %5050, 2
  %5052 = zext i1 %5051 to i8
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5052, i8* %5053, align 1
  store %struct.Memory* %loadMem_4754d8, %struct.Memory** %MEMORY
  %loadMem_4754dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5056 to i64*
  %5057 = load i64, i64* %PC.i81
  %5058 = add i64 %5057, 70
  %5059 = load i64, i64* %PC.i81
  %5060 = add i64 %5059, 6
  %5061 = load i64, i64* %PC.i81
  %5062 = add i64 %5061, 6
  store i64 %5062, i64* %PC.i81
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5064 = load i8, i8* %5063, align 1
  %5065 = icmp eq i8 %5064, 0
  %5066 = zext i1 %5065 to i8
  store i8 %5066, i8* %BRANCH_TAKEN, align 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5068 = select i1 %5065, i64 %5058, i64 %5060
  store i64 %5068, i64* %5067, align 8
  store %struct.Memory* %loadMem_4754dc, %struct.Memory** %MEMORY
  %loadBr_4754dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4754dc = icmp eq i8 %loadBr_4754dc, 1
  br i1 %cmpBr_4754dc, label %block_.L_475522, label %block_4754e2

block_4754e2:                                     ; preds = %block_.L_4754d8
  %loadMem_4754e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 1
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %5074 to i64*
  %5075 = load i64, i64* %PC.i79
  %5076 = add i64 %5075, 10
  store i64 %5076, i64* %PC.i79
  store i64 ptrtoint (%G__0x4e5300_type* @G__0x4e5300 to i64), i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_4754e2, %struct.Memory** %MEMORY
  %loadMem_4754ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 5
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 15
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RBP.i78
  %5087 = sub i64 %5086, 4
  %5088 = load i64, i64* %PC.i76
  %5089 = add i64 %5088, 4
  store i64 %5089, i64* %PC.i76
  %5090 = inttoptr i64 %5087 to i32*
  %5091 = load i32, i32* %5090
  %5092 = sext i32 %5091 to i64
  %5093 = mul i64 %5092, 20
  %5094 = trunc i64 %5093 to i32
  %5095 = and i64 %5093, 4294967295
  store i64 %5095, i64* %RCX.i77, align 8
  %5096 = shl i64 %5093, 32
  %5097 = ashr exact i64 %5096, 32
  %5098 = icmp ne i64 %5097, %5093
  %5099 = zext i1 %5098 to i8
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5099, i8* %5100, align 1
  %5101 = and i32 %5094, 255
  %5102 = call i32 @llvm.ctpop.i32(i32 %5101)
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = xor i8 %5104, 1
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5105, i8* %5106, align 1
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5107, align 1
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5108, align 1
  %5109 = lshr i32 %5094, 31
  %5110 = trunc i32 %5109 to i8
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5110, i8* %5111, align 1
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5099, i8* %5112, align 1
  store %struct.Memory* %loadMem_4754ec, %struct.Memory** %MEMORY
  %loadMem_4754f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 33
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 5
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %5118 to i64*
  %5119 = load i64, i64* %RCX.i75
  %5120 = load i64, i64* %PC.i74
  %5121 = add i64 %5120, 3
  store i64 %5121, i64* %PC.i74
  %5122 = trunc i64 %5119 to i32
  %5123 = add i32 21, %5122
  %5124 = zext i32 %5123 to i64
  store i64 %5124, i64* %RCX.i75, align 8
  %5125 = icmp ult i32 %5123, %5122
  %5126 = icmp ult i32 %5123, 21
  %5127 = or i1 %5125, %5126
  %5128 = zext i1 %5127 to i8
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5128, i8* %5129, align 1
  %5130 = and i32 %5123, 255
  %5131 = call i32 @llvm.ctpop.i32(i32 %5130)
  %5132 = trunc i32 %5131 to i8
  %5133 = and i8 %5132, 1
  %5134 = xor i8 %5133, 1
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5134, i8* %5135, align 1
  %5136 = xor i64 21, %5119
  %5137 = trunc i64 %5136 to i32
  %5138 = xor i32 %5137, %5123
  %5139 = lshr i32 %5138, 4
  %5140 = trunc i32 %5139 to i8
  %5141 = and i8 %5140, 1
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5141, i8* %5142, align 1
  %5143 = icmp eq i32 %5123, 0
  %5144 = zext i1 %5143 to i8
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5144, i8* %5145, align 1
  %5146 = lshr i32 %5123, 31
  %5147 = trunc i32 %5146 to i8
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5147, i8* %5148, align 1
  %5149 = lshr i32 %5122, 31
  %5150 = xor i32 %5146, %5149
  %5151 = add i32 %5150, %5146
  %5152 = icmp eq i32 %5151, 2
  %5153 = zext i1 %5152 to i8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5153, i8* %5154, align 1
  store %struct.Memory* %loadMem_4754f0, %struct.Memory** %MEMORY
  %loadMem_4754f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 33
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5157 to i64*
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 5
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %5160 to i64*
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 15
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %5163 to i64*
  %5164 = load i64, i64* %RCX.i72
  %5165 = load i64, i64* %RBP.i73
  %5166 = sub i64 %5165, 8
  %5167 = load i64, i64* %PC.i71
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i71
  %5169 = trunc i64 %5164 to i32
  %5170 = inttoptr i64 %5166 to i32*
  %5171 = load i32, i32* %5170
  %5172 = add i32 %5171, %5169
  %5173 = zext i32 %5172 to i64
  store i64 %5173, i64* %RCX.i72, align 8
  %5174 = icmp ult i32 %5172, %5169
  %5175 = icmp ult i32 %5172, %5171
  %5176 = or i1 %5174, %5175
  %5177 = zext i1 %5176 to i8
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5177, i8* %5178, align 1
  %5179 = and i32 %5172, 255
  %5180 = call i32 @llvm.ctpop.i32(i32 %5179)
  %5181 = trunc i32 %5180 to i8
  %5182 = and i8 %5181, 1
  %5183 = xor i8 %5182, 1
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5183, i8* %5184, align 1
  %5185 = xor i32 %5171, %5169
  %5186 = xor i32 %5185, %5172
  %5187 = lshr i32 %5186, 4
  %5188 = trunc i32 %5187 to i8
  %5189 = and i8 %5188, 1
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5189, i8* %5190, align 1
  %5191 = icmp eq i32 %5172, 0
  %5192 = zext i1 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5192, i8* %5193, align 1
  %5194 = lshr i32 %5172, 31
  %5195 = trunc i32 %5194 to i8
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5195, i8* %5196, align 1
  %5197 = lshr i32 %5169, 31
  %5198 = lshr i32 %5171, 31
  %5199 = xor i32 %5194, %5197
  %5200 = xor i32 %5194, %5198
  %5201 = add i32 %5199, %5200
  %5202 = icmp eq i32 %5201, 2
  %5203 = zext i1 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5203, i8* %5204, align 1
  store %struct.Memory* %loadMem_4754f3, %struct.Memory** %MEMORY
  %loadMem_4754f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 33
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5207 to i64*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 5
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %ECX.i69 = bitcast %union.anon* %5210 to i32*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 7
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %5213 to i64*
  %5214 = load i32, i32* %ECX.i69
  %5215 = zext i32 %5214 to i64
  %5216 = load i64, i64* %PC.i68
  %5217 = add i64 %5216, 3
  store i64 %5217, i64* %PC.i68
  %5218 = shl i64 %5215, 32
  %5219 = ashr exact i64 %5218, 32
  store i64 %5219, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_4754f6, %struct.Memory** %MEMORY
  %loadMem_4754f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 5
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 7
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %5228 to i64*
  %5229 = load i64, i64* %RDX.i67
  %5230 = add i64 %5229, 12099168
  %5231 = load i64, i64* %PC.i65
  %5232 = add i64 %5231, 8
  store i64 %5232, i64* %PC.i65
  %5233 = inttoptr i64 %5230 to i8*
  %5234 = load i8, i8* %5233
  %5235 = zext i8 %5234 to i64
  store i64 %5235, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_4754f9, %struct.Memory** %MEMORY
  %loadMem_475501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 33
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5238 to i64*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 5
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %ECX.i63 = bitcast %union.anon* %5241 to i32*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 7
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %5244 to i64*
  %5245 = load i32, i32* %ECX.i63
  %5246 = zext i32 %5245 to i64
  %5247 = load i64, i64* %PC.i62
  %5248 = add i64 %5247, 2
  store i64 %5248, i64* %PC.i62
  %5249 = and i64 %5246, 4294967295
  store i64 %5249, i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_475501, %struct.Memory** %MEMORY
  %loadMem_475503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 33
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 7
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %RDX.i61
  %5257 = load i64, i64* %PC.i60
  %5258 = add i64 %5257, 4
  store i64 %5258, i64* %PC.i60
  %5259 = sext i64 %5256 to i128
  %5260 = and i128 %5259, -18446744073709551616
  %5261 = zext i64 %5256 to i128
  %5262 = or i128 %5260, %5261
  %5263 = mul i128 20, %5262
  %5264 = trunc i128 %5263 to i64
  store i64 %5264, i64* %RDX.i61, align 8
  %5265 = sext i64 %5264 to i128
  %5266 = icmp ne i128 %5265, %5263
  %5267 = zext i1 %5266 to i8
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5267, i8* %5268, align 1
  %5269 = trunc i128 %5263 to i32
  %5270 = and i32 %5269, 255
  %5271 = call i32 @llvm.ctpop.i32(i32 %5270)
  %5272 = trunc i32 %5271 to i8
  %5273 = and i8 %5272, 1
  %5274 = xor i8 %5273, 1
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5274, i8* %5275, align 1
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5276, align 1
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5277, align 1
  %5278 = lshr i64 %5264, 63
  %5279 = trunc i64 %5278 to i8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5279, i8* %5280, align 1
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5267, i8* %5281, align 1
  store %struct.Memory* %loadMem_475503, %struct.Memory** %MEMORY
  %loadMem_475507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5284 to i64*
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 1
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 7
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %5290 to i64*
  %5291 = load i64, i64* %RAX.i58
  %5292 = load i64, i64* %RDX.i59
  %5293 = load i64, i64* %PC.i57
  %5294 = add i64 %5293, 3
  store i64 %5294, i64* %PC.i57
  %5295 = add i64 %5292, %5291
  store i64 %5295, i64* %RAX.i58, align 8
  %5296 = icmp ult i64 %5295, %5291
  %5297 = icmp ult i64 %5295, %5292
  %5298 = or i1 %5296, %5297
  %5299 = zext i1 %5298 to i8
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5299, i8* %5300, align 1
  %5301 = trunc i64 %5295 to i32
  %5302 = and i32 %5301, 255
  %5303 = call i32 @llvm.ctpop.i32(i32 %5302)
  %5304 = trunc i32 %5303 to i8
  %5305 = and i8 %5304, 1
  %5306 = xor i8 %5305, 1
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5306, i8* %5307, align 1
  %5308 = xor i64 %5292, %5291
  %5309 = xor i64 %5308, %5295
  %5310 = lshr i64 %5309, 4
  %5311 = trunc i64 %5310 to i8
  %5312 = and i8 %5311, 1
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5312, i8* %5313, align 1
  %5314 = icmp eq i64 %5295, 0
  %5315 = zext i1 %5314 to i8
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5315, i8* %5316, align 1
  %5317 = lshr i64 %5295, 63
  %5318 = trunc i64 %5317 to i8
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5318, i8* %5319, align 1
  %5320 = lshr i64 %5291, 63
  %5321 = lshr i64 %5292, 63
  %5322 = xor i64 %5317, %5320
  %5323 = xor i64 %5317, %5321
  %5324 = add i64 %5322, %5323
  %5325 = icmp eq i64 %5324, 2
  %5326 = zext i1 %5325 to i8
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5326, i8* %5327, align 1
  store %struct.Memory* %loadMem_475507, %struct.Memory** %MEMORY
  %loadMem_47550a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 7
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %5333 to i64*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 15
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %5336 to i64*
  %5337 = load i64, i64* %RBP.i56
  %5338 = sub i64 %5337, 24
  %5339 = load i64, i64* %PC.i54
  %5340 = add i64 %5339, 4
  store i64 %5340, i64* %PC.i54
  %5341 = inttoptr i64 %5338 to i64*
  %5342 = load i64, i64* %5341
  store i64 %5342, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_47550a, %struct.Memory** %MEMORY
  %loadMem_47550e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 33
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 7
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %5348 to i64*
  %5349 = load i64, i64* %RDX.i53
  %5350 = add i64 %5349, 28
  %5351 = load i64, i64* %PC.i52
  %5352 = add i64 %5351, 4
  store i64 %5352, i64* %PC.i52
  %5353 = inttoptr i64 %5350 to i32*
  %5354 = load i32, i32* %5353
  %5355 = sext i32 %5354 to i64
  store i64 %5355, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_47550e, %struct.Memory** %MEMORY
  %loadMem_475512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 33
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5358 to i64*
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 1
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %5361 to i64*
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 7
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 11
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RDI.i51 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %RAX.i49
  %5369 = load i64, i64* %RDX.i50
  %5370 = mul i64 %5369, 4
  %5371 = add i64 %5370, %5368
  %5372 = load i64, i64* %PC.i48
  %5373 = add i64 %5372, 3
  store i64 %5373, i64* %PC.i48
  %5374 = inttoptr i64 %5371 to i32*
  %5375 = load i32, i32* %5374
  %5376 = zext i32 %5375 to i64
  store i64 %5376, i64* %RDI.i51, align 8
  store %struct.Memory* %loadMem_475512, %struct.Memory** %MEMORY
  %loadMem_475515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 33
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5379 to i64*
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 9
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %RSI.i46 = bitcast %union.anon* %5382 to i64*
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 15
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5385 to i64*
  %5386 = load i64, i64* %RBP.i47
  %5387 = sub i64 %5386, 40
  %5388 = load i64, i64* %PC.i45
  %5389 = add i64 %5388, 3
  store i64 %5389, i64* %PC.i45
  %5390 = inttoptr i64 %5387 to i32*
  %5391 = load i32, i32* %5390
  %5392 = zext i32 %5391 to i64
  store i64 %5392, i64* %RSI.i46, align 8
  store %struct.Memory* %loadMem_475515, %struct.Memory** %MEMORY
  %loadMem1_475518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5395 to i64*
  %5396 = load i64, i64* %PC.i44
  %5397 = add i64 %5396, 446312
  %5398 = load i64, i64* %PC.i44
  %5399 = add i64 %5398, 5
  %5400 = load i64, i64* %PC.i44
  %5401 = add i64 %5400, 5
  store i64 %5401, i64* %PC.i44
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5403 = load i64, i64* %5402, align 8
  %5404 = add i64 %5403, -8
  %5405 = inttoptr i64 %5404 to i64*
  store i64 %5399, i64* %5405
  store i64 %5404, i64* %5402, align 8
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5397, i64* %5406, align 8
  store %struct.Memory* %loadMem1_475518, %struct.Memory** %MEMORY
  %loadMem2_475518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475518 = load i64, i64* %3
  %call2_475518 = call %struct.Memory* @sub_4e2480.write_color_char(%struct.State* %0, i64 %loadPC_475518, %struct.Memory* %loadMem2_475518)
  store %struct.Memory* %call2_475518, %struct.Memory** %MEMORY
  %loadMem_47551d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5409 to i64*
  %5410 = load i64, i64* %PC.i43
  %5411 = add i64 %5410, 79
  %5412 = load i64, i64* %PC.i43
  %5413 = add i64 %5412, 5
  store i64 %5413, i64* %PC.i43
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5411, i64* %5414, align 8
  store %struct.Memory* %loadMem_47551d, %struct.Memory** %MEMORY
  br label %block_.L_47556c

block_.L_475522:                                  ; preds = %block_.L_4754d8
  %loadMem_475522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 15
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %RBP.i42
  %5422 = sub i64 %5421, 16
  %5423 = load i64, i64* %PC.i41
  %5424 = add i64 %5423, 4
  store i64 %5424, i64* %PC.i41
  %5425 = inttoptr i64 %5422 to i32*
  %5426 = load i32, i32* %5425
  %5427 = sub i32 %5426, 4
  %5428 = icmp ult i32 %5426, 4
  %5429 = zext i1 %5428 to i8
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5429, i8* %5430, align 1
  %5431 = and i32 %5427, 255
  %5432 = call i32 @llvm.ctpop.i32(i32 %5431)
  %5433 = trunc i32 %5432 to i8
  %5434 = and i8 %5433, 1
  %5435 = xor i8 %5434, 1
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5435, i8* %5436, align 1
  %5437 = xor i32 %5426, 4
  %5438 = xor i32 %5437, %5427
  %5439 = lshr i32 %5438, 4
  %5440 = trunc i32 %5439 to i8
  %5441 = and i8 %5440, 1
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5441, i8* %5442, align 1
  %5443 = icmp eq i32 %5427, 0
  %5444 = zext i1 %5443 to i8
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5444, i8* %5445, align 1
  %5446 = lshr i32 %5427, 31
  %5447 = trunc i32 %5446 to i8
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5447, i8* %5448, align 1
  %5449 = lshr i32 %5426, 31
  %5450 = xor i32 %5446, %5449
  %5451 = add i32 %5450, %5449
  %5452 = icmp eq i32 %5451, 2
  %5453 = zext i1 %5452 to i8
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5453, i8* %5454, align 1
  store %struct.Memory* %loadMem_475522, %struct.Memory** %MEMORY
  %loadMem_475526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 33
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5457 to i64*
  %5458 = load i64, i64* %PC.i40
  %5459 = add i64 %5458, 65
  %5460 = load i64, i64* %PC.i40
  %5461 = add i64 %5460, 6
  %5462 = load i64, i64* %PC.i40
  %5463 = add i64 %5462, 6
  store i64 %5463, i64* %PC.i40
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5465 = load i8, i8* %5464, align 1
  %5466 = icmp eq i8 %5465, 0
  %5467 = zext i1 %5466 to i8
  store i8 %5467, i8* %BRANCH_TAKEN, align 1
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5469 = select i1 %5466, i64 %5459, i64 %5461
  store i64 %5469, i64* %5468, align 8
  store %struct.Memory* %loadMem_475526, %struct.Memory** %MEMORY
  %loadBr_475526 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_475526 = icmp eq i8 %loadBr_475526, 1
  br i1 %cmpBr_475526, label %block_.L_475567, label %block_47552c

block_47552c:                                     ; preds = %block_.L_475522
  %loadMem_47552c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 1
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %5475 to i64*
  %5476 = load i64, i64* %PC.i38
  %5477 = add i64 %5476, 10
  store i64 %5477, i64* %PC.i38
  store i64 ptrtoint (%G__0x4e5300_type* @G__0x4e5300 to i64), i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_47552c, %struct.Memory** %MEMORY
  %loadMem_475536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 5
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 15
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %5486 to i64*
  %5487 = load i64, i64* %RBP.i37
  %5488 = sub i64 %5487, 4
  %5489 = load i64, i64* %PC.i35
  %5490 = add i64 %5489, 4
  store i64 %5490, i64* %PC.i35
  %5491 = inttoptr i64 %5488 to i32*
  %5492 = load i32, i32* %5491
  %5493 = sext i32 %5492 to i64
  %5494 = mul i64 %5493, 20
  %5495 = trunc i64 %5494 to i32
  %5496 = and i64 %5494, 4294967295
  store i64 %5496, i64* %RCX.i36, align 8
  %5497 = shl i64 %5494, 32
  %5498 = ashr exact i64 %5497, 32
  %5499 = icmp ne i64 %5498, %5494
  %5500 = zext i1 %5499 to i8
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5500, i8* %5501, align 1
  %5502 = and i32 %5495, 255
  %5503 = call i32 @llvm.ctpop.i32(i32 %5502)
  %5504 = trunc i32 %5503 to i8
  %5505 = and i8 %5504, 1
  %5506 = xor i8 %5505, 1
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5506, i8* %5507, align 1
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5508, align 1
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5509, align 1
  %5510 = lshr i32 %5495, 31
  %5511 = trunc i32 %5510 to i8
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5511, i8* %5512, align 1
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5500, i8* %5513, align 1
  store %struct.Memory* %loadMem_475536, %struct.Memory** %MEMORY
  %loadMem_47553a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 5
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %5519 to i64*
  %5520 = load i64, i64* %RCX.i34
  %5521 = load i64, i64* %PC.i33
  %5522 = add i64 %5521, 3
  store i64 %5522, i64* %PC.i33
  %5523 = trunc i64 %5520 to i32
  %5524 = add i32 21, %5523
  %5525 = zext i32 %5524 to i64
  store i64 %5525, i64* %RCX.i34, align 8
  %5526 = icmp ult i32 %5524, %5523
  %5527 = icmp ult i32 %5524, 21
  %5528 = or i1 %5526, %5527
  %5529 = zext i1 %5528 to i8
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5529, i8* %5530, align 1
  %5531 = and i32 %5524, 255
  %5532 = call i32 @llvm.ctpop.i32(i32 %5531)
  %5533 = trunc i32 %5532 to i8
  %5534 = and i8 %5533, 1
  %5535 = xor i8 %5534, 1
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5535, i8* %5536, align 1
  %5537 = xor i64 21, %5520
  %5538 = trunc i64 %5537 to i32
  %5539 = xor i32 %5538, %5524
  %5540 = lshr i32 %5539, 4
  %5541 = trunc i32 %5540 to i8
  %5542 = and i8 %5541, 1
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5542, i8* %5543, align 1
  %5544 = icmp eq i32 %5524, 0
  %5545 = zext i1 %5544 to i8
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5545, i8* %5546, align 1
  %5547 = lshr i32 %5524, 31
  %5548 = trunc i32 %5547 to i8
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5548, i8* %5549, align 1
  %5550 = lshr i32 %5523, 31
  %5551 = xor i32 %5547, %5550
  %5552 = add i32 %5551, %5547
  %5553 = icmp eq i32 %5552, 2
  %5554 = zext i1 %5553 to i8
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5554, i8* %5555, align 1
  store %struct.Memory* %loadMem_47553a, %struct.Memory** %MEMORY
  %loadMem_47553d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 33
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 5
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 15
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %5564 to i64*
  %5565 = load i64, i64* %RCX.i31
  %5566 = load i64, i64* %RBP.i32
  %5567 = sub i64 %5566, 8
  %5568 = load i64, i64* %PC.i30
  %5569 = add i64 %5568, 3
  store i64 %5569, i64* %PC.i30
  %5570 = trunc i64 %5565 to i32
  %5571 = inttoptr i64 %5567 to i32*
  %5572 = load i32, i32* %5571
  %5573 = add i32 %5572, %5570
  %5574 = zext i32 %5573 to i64
  store i64 %5574, i64* %RCX.i31, align 8
  %5575 = icmp ult i32 %5573, %5570
  %5576 = icmp ult i32 %5573, %5572
  %5577 = or i1 %5575, %5576
  %5578 = zext i1 %5577 to i8
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5578, i8* %5579, align 1
  %5580 = and i32 %5573, 255
  %5581 = call i32 @llvm.ctpop.i32(i32 %5580)
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  %5584 = xor i8 %5583, 1
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5584, i8* %5585, align 1
  %5586 = xor i32 %5572, %5570
  %5587 = xor i32 %5586, %5573
  %5588 = lshr i32 %5587, 4
  %5589 = trunc i32 %5588 to i8
  %5590 = and i8 %5589, 1
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5590, i8* %5591, align 1
  %5592 = icmp eq i32 %5573, 0
  %5593 = zext i1 %5592 to i8
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5593, i8* %5594, align 1
  %5595 = lshr i32 %5573, 31
  %5596 = trunc i32 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5596, i8* %5597, align 1
  %5598 = lshr i32 %5570, 31
  %5599 = lshr i32 %5572, 31
  %5600 = xor i32 %5595, %5598
  %5601 = xor i32 %5595, %5599
  %5602 = add i32 %5600, %5601
  %5603 = icmp eq i32 %5602, 2
  %5604 = zext i1 %5603 to i8
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5604, i8* %5605, align 1
  store %struct.Memory* %loadMem_47553d, %struct.Memory** %MEMORY
  %loadMem_475540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 5
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %ECX.i28 = bitcast %union.anon* %5611 to i32*
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 7
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %RDX.i29 = bitcast %union.anon* %5614 to i64*
  %5615 = load i32, i32* %ECX.i28
  %5616 = zext i32 %5615 to i64
  %5617 = load i64, i64* %PC.i27
  %5618 = add i64 %5617, 3
  store i64 %5618, i64* %PC.i27
  %5619 = shl i64 %5616, 32
  %5620 = ashr exact i64 %5619, 32
  store i64 %5620, i64* %RDX.i29, align 8
  store %struct.Memory* %loadMem_475540, %struct.Memory** %MEMORY
  %loadMem_475543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 33
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5623 to i64*
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 5
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 7
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %RDX.i26 = bitcast %union.anon* %5629 to i64*
  %5630 = load i64, i64* %RDX.i26
  %5631 = add i64 %5630, 12099168
  %5632 = load i64, i64* %PC.i25
  %5633 = add i64 %5632, 8
  store i64 %5633, i64* %PC.i25
  %5634 = inttoptr i64 %5631 to i8*
  %5635 = load i8, i8* %5634
  %5636 = zext i8 %5635 to i64
  store i64 %5636, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_475543, %struct.Memory** %MEMORY
  %loadMem_47554b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5638 = getelementptr inbounds %struct.GPR, %struct.GPR* %5637, i32 0, i32 33
  %5639 = getelementptr inbounds %struct.Reg, %struct.Reg* %5638, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5639 to i64*
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 5
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5642 to i32*
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 7
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %RDX.i24 = bitcast %union.anon* %5645 to i64*
  %5646 = load i32, i32* %ECX.i
  %5647 = zext i32 %5646 to i64
  %5648 = load i64, i64* %PC.i23
  %5649 = add i64 %5648, 2
  store i64 %5649, i64* %PC.i23
  %5650 = and i64 %5647, 4294967295
  store i64 %5650, i64* %RDX.i24, align 8
  store %struct.Memory* %loadMem_47554b, %struct.Memory** %MEMORY
  %loadMem_47554d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 7
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RDX.i22 = bitcast %union.anon* %5656 to i64*
  %5657 = load i64, i64* %RDX.i22
  %5658 = load i64, i64* %PC.i21
  %5659 = add i64 %5658, 4
  store i64 %5659, i64* %PC.i21
  %5660 = sext i64 %5657 to i128
  %5661 = and i128 %5660, -18446744073709551616
  %5662 = zext i64 %5657 to i128
  %5663 = or i128 %5661, %5662
  %5664 = mul i128 20, %5663
  %5665 = trunc i128 %5664 to i64
  store i64 %5665, i64* %RDX.i22, align 8
  %5666 = sext i64 %5665 to i128
  %5667 = icmp ne i128 %5666, %5664
  %5668 = zext i1 %5667 to i8
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5668, i8* %5669, align 1
  %5670 = trunc i128 %5664 to i32
  %5671 = and i32 %5670, 255
  %5672 = call i32 @llvm.ctpop.i32(i32 %5671)
  %5673 = trunc i32 %5672 to i8
  %5674 = and i8 %5673, 1
  %5675 = xor i8 %5674, 1
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5675, i8* %5676, align 1
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5677, align 1
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5678, align 1
  %5679 = lshr i64 %5665, 63
  %5680 = trunc i64 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5680, i8* %5681, align 1
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5668, i8* %5682, align 1
  store %struct.Memory* %loadMem_47554d, %struct.Memory** %MEMORY
  %loadMem_475551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 33
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5685 to i64*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 1
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 7
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RDX.i20 = bitcast %union.anon* %5691 to i64*
  %5692 = load i64, i64* %RAX.i19
  %5693 = load i64, i64* %RDX.i20
  %5694 = load i64, i64* %PC.i18
  %5695 = add i64 %5694, 3
  store i64 %5695, i64* %PC.i18
  %5696 = add i64 %5693, %5692
  store i64 %5696, i64* %RAX.i19, align 8
  %5697 = icmp ult i64 %5696, %5692
  %5698 = icmp ult i64 %5696, %5693
  %5699 = or i1 %5697, %5698
  %5700 = zext i1 %5699 to i8
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5700, i8* %5701, align 1
  %5702 = trunc i64 %5696 to i32
  %5703 = and i32 %5702, 255
  %5704 = call i32 @llvm.ctpop.i32(i32 %5703)
  %5705 = trunc i32 %5704 to i8
  %5706 = and i8 %5705, 1
  %5707 = xor i8 %5706, 1
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5707, i8* %5708, align 1
  %5709 = xor i64 %5693, %5692
  %5710 = xor i64 %5709, %5696
  %5711 = lshr i64 %5710, 4
  %5712 = trunc i64 %5711 to i8
  %5713 = and i8 %5712, 1
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5713, i8* %5714, align 1
  %5715 = icmp eq i64 %5696, 0
  %5716 = zext i1 %5715 to i8
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5716, i8* %5717, align 1
  %5718 = lshr i64 %5696, 63
  %5719 = trunc i64 %5718 to i8
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5719, i8* %5720, align 1
  %5721 = lshr i64 %5692, 63
  %5722 = lshr i64 %5693, 63
  %5723 = xor i64 %5718, %5721
  %5724 = xor i64 %5718, %5722
  %5725 = add i64 %5723, %5724
  %5726 = icmp eq i64 %5725, 2
  %5727 = zext i1 %5726 to i8
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5727, i8* %5728, align 1
  store %struct.Memory* %loadMem_475551, %struct.Memory** %MEMORY
  %loadMem_475554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 33
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5731 to i64*
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 7
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 15
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %5737 to i64*
  %5738 = load i64, i64* %RBP.i17
  %5739 = sub i64 %5738, 24
  %5740 = load i64, i64* %PC.i15
  %5741 = add i64 %5740, 4
  store i64 %5741, i64* %PC.i15
  %5742 = inttoptr i64 %5739 to i64*
  %5743 = load i64, i64* %5742
  store i64 %5743, i64* %RDX.i16, align 8
  store %struct.Memory* %loadMem_475554, %struct.Memory** %MEMORY
  %loadMem_475558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 33
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5746 to i64*
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 7
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %RDX.i14 = bitcast %union.anon* %5749 to i64*
  %5750 = load i64, i64* %RDX.i14
  %5751 = add i64 %5750, 64
  %5752 = load i64, i64* %PC.i13
  %5753 = add i64 %5752, 4
  store i64 %5753, i64* %PC.i13
  %5754 = inttoptr i64 %5751 to i32*
  %5755 = load i32, i32* %5754
  %5756 = sext i32 %5755 to i64
  store i64 %5756, i64* %RDX.i14, align 8
  store %struct.Memory* %loadMem_475558, %struct.Memory** %MEMORY
  %loadMem_47555c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 33
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5759 to i64*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 1
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5762 to i64*
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 7
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 11
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5768 to i64*
  %5769 = load i64, i64* %RAX.i
  %5770 = load i64, i64* %RDX.i
  %5771 = mul i64 %5770, 4
  %5772 = add i64 %5771, %5769
  %5773 = load i64, i64* %PC.i12
  %5774 = add i64 %5773, 3
  store i64 %5774, i64* %PC.i12
  %5775 = inttoptr i64 %5772 to i32*
  %5776 = load i32, i32* %5775
  %5777 = zext i32 %5776 to i64
  store i64 %5777, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_47555c, %struct.Memory** %MEMORY
  %loadMem_47555f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 33
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 9
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 15
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RBP.i11
  %5788 = sub i64 %5787, 40
  %5789 = load i64, i64* %PC.i10
  %5790 = add i64 %5789, 3
  store i64 %5790, i64* %PC.i10
  %5791 = inttoptr i64 %5788 to i32*
  %5792 = load i32, i32* %5791
  %5793 = zext i32 %5792 to i64
  store i64 %5793, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_47555f, %struct.Memory** %MEMORY
  %loadMem1_475562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 33
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5796 to i64*
  %5797 = load i64, i64* %PC.i9
  %5798 = add i64 %5797, 446238
  %5799 = load i64, i64* %PC.i9
  %5800 = add i64 %5799, 5
  %5801 = load i64, i64* %PC.i9
  %5802 = add i64 %5801, 5
  store i64 %5802, i64* %PC.i9
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5804 = load i64, i64* %5803, align 8
  %5805 = add i64 %5804, -8
  %5806 = inttoptr i64 %5805 to i64*
  store i64 %5800, i64* %5806
  store i64 %5805, i64* %5803, align 8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5798, i64* %5807, align 8
  store %struct.Memory* %loadMem1_475562, %struct.Memory** %MEMORY
  %loadMem2_475562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_475562 = load i64, i64* %3
  %call2_475562 = call %struct.Memory* @sub_4e2480.write_color_char(%struct.State* %0, i64 %loadPC_475562, %struct.Memory* %loadMem2_475562)
  store %struct.Memory* %call2_475562, %struct.Memory** %MEMORY
  br label %block_.L_475567

block_.L_475567:                                  ; preds = %block_47552c, %block_.L_475522
  %loadMem_475567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 33
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5810 to i64*
  %5811 = load i64, i64* %PC.i8
  %5812 = add i64 %5811, 5
  %5813 = load i64, i64* %PC.i8
  %5814 = add i64 %5813, 5
  store i64 %5814, i64* %PC.i8
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5812, i64* %5815, align 8
  store %struct.Memory* %loadMem_475567, %struct.Memory** %MEMORY
  br label %block_.L_47556c

block_.L_47556c:                                  ; preds = %block_.L_475567, %block_4754e2
  %loadMem_47556c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5818 to i64*
  %5819 = load i64, i64* %PC.i7
  %5820 = add i64 %5819, 5
  %5821 = load i64, i64* %PC.i7
  %5822 = add i64 %5821, 5
  store i64 %5822, i64* %PC.i7
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5820, i64* %5823, align 8
  store %struct.Memory* %loadMem_47556c, %struct.Memory** %MEMORY
  br label %block_.L_475571

block_.L_475571:                                  ; preds = %block_.L_47556c, %block_.L_4754d3
  %loadMem_475571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 33
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5826 to i64*
  %5827 = load i64, i64* %PC.i6
  %5828 = add i64 %5827, 5
  %5829 = load i64, i64* %PC.i6
  %5830 = add i64 %5829, 5
  store i64 %5830, i64* %PC.i6
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5828, i64* %5831, align 8
  store %struct.Memory* %loadMem_475571, %struct.Memory** %MEMORY
  br label %block_.L_475576

block_.L_475576:                                  ; preds = %block_.L_475571, %block_475444
  %loadMem_475576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5834 to i64*
  %5835 = load i64, i64* %PC.i5
  %5836 = add i64 %5835, 5
  %5837 = load i64, i64* %PC.i5
  %5838 = add i64 %5837, 5
  store i64 %5838, i64* %PC.i5
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5836, i64* %5839, align 8
  store %struct.Memory* %loadMem_475576, %struct.Memory** %MEMORY
  br label %block_.L_47557b

block_.L_47557b:                                  ; preds = %block_.L_475576, %block_.L_475314, %block_.L_4752db
  %loadMem_47557b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 33
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 13
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %RSP.i
  %5847 = load i64, i64* %PC.i4
  %5848 = add i64 %5847, 4
  store i64 %5848, i64* %PC.i4
  %5849 = add i64 64, %5846
  store i64 %5849, i64* %RSP.i, align 8
  %5850 = icmp ult i64 %5849, %5846
  %5851 = icmp ult i64 %5849, 64
  %5852 = or i1 %5850, %5851
  %5853 = zext i1 %5852 to i8
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5853, i8* %5854, align 1
  %5855 = trunc i64 %5849 to i32
  %5856 = and i32 %5855, 255
  %5857 = call i32 @llvm.ctpop.i32(i32 %5856)
  %5858 = trunc i32 %5857 to i8
  %5859 = and i8 %5858, 1
  %5860 = xor i8 %5859, 1
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5860, i8* %5861, align 1
  %5862 = xor i64 64, %5846
  %5863 = xor i64 %5862, %5849
  %5864 = lshr i64 %5863, 4
  %5865 = trunc i64 %5864 to i8
  %5866 = and i8 %5865, 1
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5866, i8* %5867, align 1
  %5868 = icmp eq i64 %5849, 0
  %5869 = zext i1 %5868 to i8
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5869, i8* %5870, align 1
  %5871 = lshr i64 %5849, 63
  %5872 = trunc i64 %5871 to i8
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5872, i8* %5873, align 1
  %5874 = lshr i64 %5846, 63
  %5875 = xor i64 %5871, %5874
  %5876 = add i64 %5875, %5871
  %5877 = icmp eq i64 %5876, 2
  %5878 = zext i1 %5877 to i8
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5878, i8* %5879, align 1
  store %struct.Memory* %loadMem_47557b, %struct.Memory** %MEMORY
  %loadMem_47557f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 33
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5882 to i64*
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 15
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5885 to i64*
  %5886 = load i64, i64* %PC.i2
  %5887 = add i64 %5886, 1
  store i64 %5887, i64* %PC.i2
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5889 = load i64, i64* %5888, align 8
  %5890 = add i64 %5889, 8
  %5891 = inttoptr i64 %5889 to i64*
  %5892 = load i64, i64* %5891
  store i64 %5892, i64* %RBP.i3, align 8
  store i64 %5890, i64* %5888, align 8
  store %struct.Memory* %loadMem_47557f, %struct.Memory** %MEMORY
  %loadMem_475580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 33
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5895 to i64*
  %5896 = load i64, i64* %PC.i1
  %5897 = add i64 %5896, 1
  store i64 %5897, i64* %PC.i1
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5900 = load i64, i64* %5899, align 8
  %5901 = inttoptr i64 %5900 to i64*
  %5902 = load i64, i64* %5901
  store i64 %5902, i64* %5898, align 8
  %5903 = add i64 %5900, 8
  store i64 %5903, i64* %5899, align 8
  store %struct.Memory* %loadMem_475580, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_475580
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_475119(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_47513e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x581861___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x581861_type* @G__0x581861 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x103___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 259, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x581918___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x581918_type* @G__0x581918 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4752e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
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

define %struct.Memory* @routine_je_.L_4751b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x579d92___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4752db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb01180___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 36, %15
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

define %struct.Memory* @routine_cmpl__0x5____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 5
  %15 = icmp ult i32 %13, 5
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
  %24 = xor i32 %13, 5
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_475251(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb9a0a0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 4
  %15 = icmp ult i32 %13, 4
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
  %24 = xor i32 %13, 4
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_47520d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4e52fc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x4e52fc_type* @G_0x4e52fc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_475217(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x4e52f4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x4e52f4_type* @G_0x4e52f4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  %14 = load i8, i8* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_475248(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x21__MINUS0x21__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 33
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 33, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47524c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x78__MINUS0x21__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 33
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 120, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4752cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4752bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4e52f8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x4e52f8_type* @G_0x4e52f8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4752b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4752b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x6f__MINUS0x21__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 33
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 111, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4752ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x4e52f0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x4e52f0_type* @G_0x4e52f0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2e__MINUS0x21__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 33
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 46, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x21__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 33
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.write_color_char(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47557b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
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

define %struct.Memory* @routine_je_.L_475314(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1a5__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 421
  %16 = icmp ult i32 %14, 421
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
  %25 = xor i32 %14, 421
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

define %struct.Memory* @routine_jae_.L_475314(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_47535d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 79, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x58___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 88, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl__0x15___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___r8_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 9
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movzbl_0xae3cc0___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 11418816
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_4753f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_jne_.L_4753c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xae3e54___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xae3e54_type* @G_0xae3e54 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__ecx__0xae3e54(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xae3e54_type* @G_0xae3e54 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x8__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__0xae3cc0___rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 11418816
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__dl___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4753f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0xae3e50___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xae3e50_type* @G_0xae3e50 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0xae3e50(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xae3e50_type* @G_0xae3e50 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4753f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x61___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 97, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x41___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 65, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1a___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 26, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RDI, align 8
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

define %struct.Memory* @routine_addl__0x15___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq__edi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___r8_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 9
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovel__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RDI, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__edi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
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

define %struct.Memory* @routine_jne_.L_475484(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4e5300___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4e5300_type* @G__0x4e5300 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x14___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 20, %15
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

define %struct.Memory* @routine_movslq_0x14__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rdx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_475576(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4754d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4754c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x58___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 88, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4e52f4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x4e52f4_type* @G_0x4e52f4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4754d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x4f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 79, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4e52f8___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x4e52f8_type* @G_0x4e52f8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_475571(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jne_.L_475522(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x1c__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47556c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_jne_.L_475567(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x40__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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
