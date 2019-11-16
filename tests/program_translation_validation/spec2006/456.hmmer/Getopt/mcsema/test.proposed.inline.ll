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
%G_0x661200_type = type <{ [4 x i8] }>
%G_0x663070_type = type <{ [8 x i8] }>
%G__0x456a2a_type = type <{ [8 x i8] }>
%G__0x456a60_type = type <{ [8 x i8] }>
%G__0x456a78_type = type <{ [8 x i8] }>
%G__0x456a9a_type = type <{ [8 x i8] }>
%G__0x456ac1_type = type <{ [8 x i8] }>
%G__0x456ad9_type = type <{ [8 x i8] }>
%G__0x456b03_type = type <{ [8 x i8] }>
%G__0x456b2e_type = type <{ [8 x i8] }>
%G__0x456fc3_type = type <{ [8 x i8] }>
%G__0x456fc4_type = type <{ [4 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x661200 = global %G_0x661200_type zeroinitializer
@G_0x663070 = global %G_0x663070_type zeroinitializer
@G__0x456a2a = global %G__0x456a2a_type zeroinitializer
@G__0x456a60 = global %G__0x456a60_type zeroinitializer
@G__0x456a78 = global %G__0x456a78_type zeroinitializer
@G__0x456a9a = global %G__0x456a9a_type zeroinitializer
@G__0x456ac1 = global %G__0x456ac1_type zeroinitializer
@G__0x456ad9 = global %G__0x456ad9_type zeroinitializer
@G__0x456b03 = global %G__0x456b03_type zeroinitializer
@G__0x456b2e = global %G__0x456b2e_type zeroinitializer
@G__0x456fc3 = global %G__0x456fc3_type zeroinitializer
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer

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

declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4514a0.IsReal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Getopt(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_416760 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_416760, %struct.Memory** %MEMORY
  %loadMem_416761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i40 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i40
  %27 = load i64, i64* %PC.i39
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i39
  store i64 %26, i64* %RBP.i41, align 8
  store %struct.Memory* %loadMem_416761, %struct.Memory** %MEMORY
  %loadMem_416764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i601 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i601
  %36 = load i64, i64* %PC.i600
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i600
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i601, align 8
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
  store %struct.Memory* %loadMem_416764, %struct.Memory** %MEMORY
  %loadMem_416768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i647
  %77 = add i64 %76, 24
  %78 = load i64, i64* %PC.i645
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i645
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_416768, %struct.Memory** %MEMORY
  %loadMem_41676c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 21
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %R10.i = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i687
  %92 = add i64 %91, 16
  %93 = load i64, i64* %PC.i686
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC.i686
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %R10.i, align 8
  store %struct.Memory* %loadMem_41676c, %struct.Memory** %MEMORY
  %loadMem_416770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i747
  %107 = sub i64 %106, 8
  %108 = load i32, i32* %EDI.i
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC.i746
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i746
  %112 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %112
  store %struct.Memory* %loadMem_416770, %struct.Memory** %MEMORY
  %loadMem_416773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RSI.i789 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i790
  %123 = sub i64 %122, 16
  %124 = load i64, i64* %RSI.i789
  %125 = load i64, i64* %PC.i788
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i788
  %127 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %127
  store %struct.Memory* %loadMem_416773, %struct.Memory** %MEMORY
  %loadMem_416777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RDX.i840 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i841
  %138 = sub i64 %137, 24
  %139 = load i64, i64* %RDX.i840
  %140 = load i64, i64* %PC.i839
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i839
  %142 = inttoptr i64 %138 to i64*
  store i64 %139, i64* %142
  store %struct.Memory* %loadMem_416777, %struct.Memory** %MEMORY
  %loadMem_41677b = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %ECX.i882 = bitcast %union.anon* %148 to i32*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RBP.i883
  %153 = sub i64 %152, 28
  %154 = load i32, i32* %ECX.i882
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %PC.i881
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC.i881
  %158 = inttoptr i64 %153 to i32*
  store i32 %154, i32* %158
  store %struct.Memory* %loadMem_41677b, %struct.Memory** %MEMORY
  %loadMem_41677e = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i930 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8.i = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i930
  %169 = sub i64 %168, 40
  %170 = load i64, i64* %R8.i
  %171 = load i64, i64* %PC.i929
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC.i929
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173
  store %struct.Memory* %loadMem_41677e, %struct.Memory** %MEMORY
  %loadMem_416782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 19
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R9.i = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i928
  %184 = sub i64 %183, 48
  %185 = load i64, i64* %R9.i
  %186 = load i64, i64* %PC.i927
  %187 = add i64 %186, 4
  store i64 %187, i64* %PC.i927
  %188 = inttoptr i64 %184 to i64*
  store i64 %185, i64* %188
  store %struct.Memory* %loadMem_416782, %struct.Memory** %MEMORY
  %loadMem_416786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 33
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 15
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 21
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %R10.i926 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %RBP.i925
  %199 = sub i64 %198, 56
  %200 = load i64, i64* %R10.i926
  %201 = load i64, i64* %PC.i924
  %202 = add i64 %201, 4
  store i64 %202, i64* %PC.i924
  %203 = inttoptr i64 %199 to i64*
  store i64 %200, i64* %203
  store %struct.Memory* %loadMem_416786, %struct.Memory** %MEMORY
  %loadMem_41678a = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RAX.i922 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RBP.i923
  %214 = sub i64 %213, 64
  %215 = load i64, i64* %RAX.i922
  %216 = load i64, i64* %PC.i921
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC.i921
  %218 = inttoptr i64 %214 to i64*
  store i64 %215, i64* %218
  store %struct.Memory* %loadMem_41678a, %struct.Memory** %MEMORY
  %loadMem_41678e = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 15
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %RBP.i920
  %226 = sub i64 %225, 80
  %227 = load i64, i64* %PC.i919
  %228 = add i64 %227, 7
  store i64 %228, i64* %PC.i919
  %229 = inttoptr i64 %226 to i32*
  store i32 0, i32* %229
  store %struct.Memory* %loadMem_41678e, %struct.Memory** %MEMORY
  %loadMem_416795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RCX.i918 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %PC.i917
  %237 = add i64 %236, 7
  store i64 %237, i64* %PC.i917
  %238 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RCX.i918, align 8
  store %struct.Memory* %loadMem_416795, %struct.Memory** %MEMORY
  %loadMem_41679c = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %ECX.i915 = bitcast %union.anon* %245 to i32*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %248 to i64*
  %249 = load i32, i32* %ECX.i915
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* %RBP.i916
  %252 = sub i64 %251, 8
  %253 = load i64, i64* %PC.i914
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC.i914
  %255 = inttoptr i64 %252 to i32*
  %256 = load i32, i32* %255
  %257 = sub i32 %249, %256
  %258 = icmp ult i32 %249, %256
  %259 = zext i1 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %259, i8* %260, align 1
  %261 = and i32 %257, 255
  %262 = call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %265, i8* %266, align 1
  %267 = xor i32 %256, %249
  %268 = xor i32 %267, %257
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %271, i8* %272, align 1
  %273 = icmp eq i32 %257, 0
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %274, i8* %275, align 1
  %276 = lshr i32 %257, 31
  %277 = trunc i32 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %277, i8* %278, align 1
  %279 = lshr i32 %249, 31
  %280 = lshr i32 %256, 31
  %281 = xor i32 %280, %279
  %282 = xor i32 %276, %279
  %283 = add i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %285, i8* %286, align 1
  store %struct.Memory* %loadMem_41679c, %struct.Memory** %MEMORY
  %loadMem_41679f = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %PC.i913
  %291 = add i64 %290, 71
  %292 = load i64, i64* %PC.i913
  %293 = add i64 %292, 6
  %294 = load i64, i64* %PC.i913
  %295 = add i64 %294, 6
  store i64 %295, i64* %PC.i913
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %297 = load i8, i8* %296, align 1
  %298 = icmp ne i8 %297, 0
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %300 = load i8, i8* %299, align 1
  %301 = icmp ne i8 %300, 0
  %302 = xor i1 %298, %301
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %BRANCH_TAKEN, align 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %306 = select i1 %302, i64 %293, i64 %291
  store i64 %306, i64* %305, align 8
  store %struct.Memory* %loadMem_41679f, %struct.Memory** %MEMORY
  %loadBr_41679f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41679f = icmp eq i8 %loadBr_41679f, 1
  br i1 %cmpBr_41679f, label %block_.L_4167e6, label %block_4167a5

block_4167a5:                                     ; preds = %entry
  %loadMem_4167a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 15
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RBP.i912
  %317 = sub i64 %316, 16
  %318 = load i64, i64* %PC.i910
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC.i910
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %RAX.i911, align 8
  store %struct.Memory* %loadMem_4167a5, %struct.Memory** %MEMORY
  %loadMem_4167a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 5
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RCX.i909 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %PC.i908
  %329 = add i64 %328, 8
  store i64 %329, i64* %PC.i908
  %330 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %RCX.i909, align 8
  store %struct.Memory* %loadMem_4167a9, %struct.Memory** %MEMORY
  %loadMem_4167b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RCX.i907 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RAX.i906
  %342 = load i64, i64* %RCX.i907
  %343 = mul i64 %342, 8
  %344 = add i64 %343, %341
  %345 = load i64, i64* %PC.i905
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC.i905
  %347 = inttoptr i64 %344 to i64*
  %348 = load i64, i64* %347
  store i64 %348, i64* %RAX.i906, align 8
  store %struct.Memory* %loadMem_4167b1, %struct.Memory** %MEMORY
  %loadMem_4167b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 7
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RDX.i904 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %RAX.i903
  %359 = load i64, i64* %PC.i902
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC.i902
  %361 = inttoptr i64 %358 to i8*
  %362 = load i8, i8* %361
  %363 = sext i8 %362 to i64
  %364 = and i64 %363, 4294967295
  store i64 %364, i64* %RDX.i904, align 8
  store %struct.Memory* %loadMem_4167b5, %struct.Memory** %MEMORY
  %loadMem_4167b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 7
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %EDX.i901 = bitcast %union.anon* %370 to i32*
  %371 = load i32, i32* %EDX.i901
  %372 = zext i32 %371 to i64
  %373 = load i64, i64* %PC.i900
  %374 = add i64 %373, 3
  store i64 %374, i64* %PC.i900
  %375 = sub i32 %371, 45
  %376 = icmp ult i32 %371, 45
  %377 = zext i1 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %377, i8* %378, align 1
  %379 = and i32 %375, 255
  %380 = call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %383, i8* %384, align 1
  %385 = xor i64 45, %372
  %386 = trunc i64 %385 to i32
  %387 = xor i32 %386, %375
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %390, i8* %391, align 1
  %392 = icmp eq i32 %375, 0
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %393, i8* %394, align 1
  %395 = lshr i32 %375, 31
  %396 = trunc i32 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %396, i8* %397, align 1
  %398 = lshr i32 %371, 31
  %399 = xor i32 %395, %398
  %400 = add i32 %399, %398
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %402, i8* %403, align 1
  store %struct.Memory* %loadMem_4167b8, %struct.Memory** %MEMORY
  %loadMem_4167bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %406 to i64*
  %407 = load i64, i64* %PC.i899
  %408 = add i64 %407, 43
  %409 = load i64, i64* %PC.i899
  %410 = add i64 %409, 6
  %411 = load i64, i64* %PC.i899
  %412 = add i64 %411, 6
  store i64 %412, i64* %PC.i899
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %414 = load i8, i8* %413, align 1
  %415 = icmp eq i8 %414, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %BRANCH_TAKEN, align 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %418 = select i1 %415, i64 %408, i64 %410
  store i64 %418, i64* %417, align 8
  store %struct.Memory* %loadMem_4167bb, %struct.Memory** %MEMORY
  %loadBr_4167bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167bb = icmp eq i8 %loadBr_4167bb, 1
  br i1 %cmpBr_4167bb, label %block_.L_4167e6, label %block_4167c1

block_4167c1:                                     ; preds = %block_4167a5
  %loadMem_4167c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 15
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RBP.i898
  %429 = sub i64 %428, 16
  %430 = load i64, i64* %PC.i896
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i896
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432
  store i64 %433, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_4167c1, %struct.Memory** %MEMORY
  %loadMem_4167c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 5
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RCX.i895 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %PC.i894
  %441 = add i64 %440, 8
  store i64 %441, i64* %PC.i894
  %442 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %RCX.i895, align 8
  store %struct.Memory* %loadMem_4167c5, %struct.Memory** %MEMORY
  %loadMem_4167cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RAX.i891 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 11
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RDI.i893 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RAX.i891
  %457 = load i64, i64* %RCX.i892
  %458 = mul i64 %457, 8
  %459 = add i64 %458, %456
  %460 = load i64, i64* %PC.i890
  %461 = add i64 %460, 4
  store i64 %461, i64* %PC.i890
  %462 = inttoptr i64 %459 to i64*
  %463 = load i64, i64* %462
  store i64 %463, i64* %RDI.i893, align 8
  store %struct.Memory* %loadMem_4167cd, %struct.Memory** %MEMORY
  %loadMem_4167d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 7
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RDX.i889 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %PC.i888
  %471 = add i64 %470, 5
  store i64 %471, i64* %PC.i888
  store i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295), i64* %RDX.i889, align 8
  store %struct.Memory* %loadMem_4167d1, %struct.Memory** %MEMORY
  %loadMem_4167d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 7
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %EDX.i886 = bitcast %union.anon* %477 to i32*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 9
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RSI.i887 = bitcast %union.anon* %480 to i64*
  %481 = load i32, i32* %EDX.i886
  %482 = zext i32 %481 to i64
  %483 = load i64, i64* %PC.i885
  %484 = add i64 %483, 2
  store i64 %484, i64* %PC.i885
  %485 = and i64 %482, 4294967295
  store i64 %485, i64* %RSI.i887, align 8
  store %struct.Memory* %loadMem_4167d6, %struct.Memory** %MEMORY
  %loadMem1_4167d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %PC.i884
  %490 = add i64 %489, -86648
  %491 = load i64, i64* %PC.i884
  %492 = add i64 %491, 5
  %493 = load i64, i64* %PC.i884
  %494 = add i64 %493, 5
  store i64 %494, i64* %PC.i884
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = add i64 %496, -8
  %498 = inttoptr i64 %497 to i64*
  store i64 %492, i64* %498
  store i64 %497, i64* %495, align 8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %490, i64* %499, align 8
  store %struct.Memory* %loadMem1_4167d8, %struct.Memory** %MEMORY
  %loadMem2_4167d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4167d8 = load i64, i64* %3
  %500 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_4167d8)
  store %struct.Memory* %500, %struct.Memory** %MEMORY
  %loadMem_4167dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %EAX.i880 = bitcast %union.anon* %506 to i32*
  %507 = load i32, i32* %EAX.i880
  %508 = zext i32 %507 to i64
  %509 = load i64, i64* %PC.i879
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC.i879
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %511, align 1
  %512 = and i32 %507, 255
  %513 = call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %516, i8* %517, align 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %518, align 1
  %519 = icmp eq i32 %507, 0
  %520 = zext i1 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %520, i8* %521, align 1
  %522 = lshr i32 %507, 31
  %523 = trunc i32 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %523, i8* %524, align 1
  %525 = lshr i32 %507, 31
  %526 = xor i32 %522, %525
  %527 = add i32 %526, %525
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %530, align 1
  store %struct.Memory* %loadMem_4167dd, %struct.Memory** %MEMORY
  %loadMem_4167e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %PC.i878
  %535 = add i64 %534, 53
  %536 = load i64, i64* %PC.i878
  %537 = add i64 %536, 6
  %538 = load i64, i64* %PC.i878
  %539 = add i64 %538, 6
  store i64 %539, i64* %PC.i878
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %541 = load i8, i8* %540, align 1
  %542 = icmp eq i8 %541, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %BRANCH_TAKEN, align 1
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %545 = select i1 %542, i64 %535, i64 %537
  store i64 %545, i64* %544, align 8
  store %struct.Memory* %loadMem_4167e0, %struct.Memory** %MEMORY
  %loadBr_4167e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167e0 = icmp eq i8 %loadBr_4167e0, 1
  br i1 %cmpBr_4167e0, label %block_.L_416815, label %block_.L_4167e6

block_.L_4167e6:                                  ; preds = %block_4167c1, %block_4167a5, %entry
  %loadMem_4167e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %PC.i876
  %553 = add i64 %552, 7
  store i64 %553, i64* %PC.i876
  %554 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX.i877, align 8
  store %struct.Memory* %loadMem_4167e6, %struct.Memory** %MEMORY
  %loadMem_4167ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 5
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RCX.i874 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 15
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RBP.i875
  %566 = sub i64 %565, 48
  %567 = load i64, i64* %PC.i873
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i873
  %569 = inttoptr i64 %566 to i64*
  %570 = load i64, i64* %569
  store i64 %570, i64* %RCX.i874, align 8
  store %struct.Memory* %loadMem_4167ed, %struct.Memory** %MEMORY
  %loadMem_4167f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %EAX.i871 = bitcast %union.anon* %576 to i32*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 5
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RCX.i872
  %581 = load i32, i32* %EAX.i871
  %582 = zext i32 %581 to i64
  %583 = load i64, i64* %PC.i870
  %584 = add i64 %583, 2
  store i64 %584, i64* %PC.i870
  %585 = inttoptr i64 %580 to i32*
  store i32 %581, i32* %585
  store %struct.Memory* %loadMem_4167f1, %struct.Memory** %MEMORY
  %loadMem_4167f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 5
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RCX.i868 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RBP.i869
  %596 = sub i64 %595, 64
  %597 = load i64, i64* %PC.i867
  %598 = add i64 %597, 4
  store i64 %598, i64* %PC.i867
  %599 = inttoptr i64 %596 to i64*
  %600 = load i64, i64* %599
  store i64 %600, i64* %RCX.i868, align 8
  store %struct.Memory* %loadMem_4167f3, %struct.Memory** %MEMORY
  %loadMem_4167f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 5
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RCX.i866
  %608 = load i64, i64* %PC.i865
  %609 = add i64 %608, 7
  store i64 %609, i64* %PC.i865
  %610 = inttoptr i64 %607 to i64*
  store i64 0, i64* %610
  store %struct.Memory* %loadMem_4167f7, %struct.Memory** %MEMORY
  %loadMem_4167fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 5
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 15
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RBP.i864
  %621 = sub i64 %620, 56
  %622 = load i64, i64* %PC.i862
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i862
  %624 = inttoptr i64 %621 to i64*
  %625 = load i64, i64* %624
  store i64 %625, i64* %RCX.i863, align 8
  store %struct.Memory* %loadMem_4167fe, %struct.Memory** %MEMORY
  %loadMem_416802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RCX.i861 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %RCX.i861
  %633 = load i64, i64* %PC.i860
  %634 = add i64 %633, 7
  store i64 %634, i64* %PC.i860
  %635 = inttoptr i64 %632 to i64*
  store i64 0, i64* %635
  store %struct.Memory* %loadMem_416802, %struct.Memory** %MEMORY
  %loadMem_416809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i859
  %643 = sub i64 %642, 4
  %644 = load i64, i64* %PC.i858
  %645 = add i64 %644, 7
  store i64 %645, i64* %PC.i858
  %646 = inttoptr i64 %643 to i32*
  store i32 0, i32* %646
  store %struct.Memory* %loadMem_416809, %struct.Memory** %MEMORY
  %loadMem_416810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %PC.i857
  %651 = add i64 %650, 1788
  %652 = load i64, i64* %PC.i857
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC.i857
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %654, align 8
  store %struct.Memory* %loadMem_416810, %struct.Memory** %MEMORY
  br label %block_.L_416f0c

block_.L_416815:                                  ; preds = %block_4167c1
  %loadMem_416815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i856
  %665 = sub i64 %664, 16
  %666 = load i64, i64* %PC.i854
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i854
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668
  store i64 %669, i64* %RAX.i855, align 8
  store %struct.Memory* %loadMem_416815, %struct.Memory** %MEMORY
  %loadMem_416819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 5
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RCX.i853 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %PC.i852
  %677 = add i64 %676, 8
  store i64 %677, i64* %PC.i852
  %678 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %679 = sext i32 %678 to i64
  store i64 %679, i64* %RCX.i853, align 8
  store %struct.Memory* %loadMem_416819, %struct.Memory** %MEMORY
  %loadMem_416821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 5
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 11
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RDI.i851 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %RAX.i849
  %693 = load i64, i64* %RCX.i850
  %694 = mul i64 %693, 8
  %695 = add i64 %694, %692
  %696 = load i64, i64* %PC.i848
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i848
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RDI.i851, align 8
  store %struct.Memory* %loadMem_416821, %struct.Memory** %MEMORY
  %loadMem_416825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 7
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RDX.i847 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %PC.i846
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC.i846
  store i64 and (i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64 4294967295), i64* %RDX.i847, align 8
  store %struct.Memory* %loadMem_416825, %struct.Memory** %MEMORY
  %loadMem_41682a = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 7
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %EDX.i844 = bitcast %union.anon* %713 to i32*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 9
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RSI.i845 = bitcast %union.anon* %716 to i64*
  %717 = load i32, i32* %EDX.i844
  %718 = zext i32 %717 to i64
  %719 = load i64, i64* %PC.i843
  %720 = add i64 %719, 2
  store i64 %720, i64* %PC.i843
  %721 = and i64 %718, 4294967295
  store i64 %721, i64* %RSI.i845, align 8
  store %struct.Memory* %loadMem_41682a, %struct.Memory** %MEMORY
  %loadMem1_41682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %PC.i842
  %726 = add i64 %725, -86732
  %727 = load i64, i64* %PC.i842
  %728 = add i64 %727, 5
  %729 = load i64, i64* %PC.i842
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC.i842
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %732 = load i64, i64* %731, align 8
  %733 = add i64 %732, -8
  %734 = inttoptr i64 %733 to i64*
  store i64 %728, i64* %734
  store i64 %733, i64* %731, align 8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %726, i64* %735, align 8
  store %struct.Memory* %loadMem1_41682c, %struct.Memory** %MEMORY
  %loadMem2_41682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41682c = load i64, i64* %3
  %736 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %loadMem2_41682c)
  store %struct.Memory* %736, %struct.Memory** %MEMORY
  %loadMem_416831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 1
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %EAX.i838 = bitcast %union.anon* %742 to i32*
  %743 = load i32, i32* %EAX.i838
  %744 = zext i32 %743 to i64
  %745 = load i64, i64* %PC.i837
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC.i837
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %747, align 1
  %748 = and i32 %743, 255
  %749 = call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %752, i8* %753, align 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %754, align 1
  %755 = icmp eq i32 %743, 0
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %756, i8* %757, align 1
  %758 = lshr i32 %743, 31
  %759 = trunc i32 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %759, i8* %760, align 1
  %761 = lshr i32 %743, 31
  %762 = xor i32 %758, %761
  %763 = add i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %765, i8* %766, align 1
  store %struct.Memory* %loadMem_416831, %struct.Memory** %MEMORY
  %loadMem_416834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %PC.i836
  %771 = add i64 %770, 70
  %772 = load i64, i64* %PC.i836
  %773 = add i64 %772, 6
  %774 = load i64, i64* %PC.i836
  %775 = add i64 %774, 6
  store i64 %775, i64* %PC.i836
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %777 = load i8, i8* %776, align 1
  %778 = icmp eq i8 %777, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %BRANCH_TAKEN, align 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %781 = select i1 %778, i64 %771, i64 %773
  store i64 %781, i64* %780, align 8
  store %struct.Memory* %loadMem_416834, %struct.Memory** %MEMORY
  %loadBr_416834 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416834 = icmp eq i8 %loadBr_416834, 1
  br i1 %cmpBr_416834, label %block_.L_41687a, label %block_41683a

block_41683a:                                     ; preds = %block_.L_416815
  %loadMem_41683a = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 1
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RAX.i835 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %PC.i834
  %789 = add i64 %788, 7
  store i64 %789, i64* %PC.i834
  %790 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i835, align 8
  store %struct.Memory* %loadMem_41683a, %struct.Memory** %MEMORY
  %loadMem_416841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RAX.i833
  %799 = load i64, i64* %PC.i832
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i832
  %801 = trunc i64 %798 to i32
  %802 = add i32 1, %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i833, align 8
  %804 = icmp ult i32 %802, %801
  %805 = icmp ult i32 %802, 1
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %807, i8* %808, align 1
  %809 = and i32 %802, 255
  %810 = call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %813, i8* %814, align 1
  %815 = xor i64 1, %798
  %816 = trunc i64 %815 to i32
  %817 = xor i32 %816, %802
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %820, i8* %821, align 1
  %822 = icmp eq i32 %802, 0
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %823, i8* %824, align 1
  %825 = lshr i32 %802, 31
  %826 = trunc i32 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1
  %828 = lshr i32 %801, 31
  %829 = xor i32 %825, %828
  %830 = add i32 %829, %825
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %832, i8* %833, align 1
  store %struct.Memory* %loadMem_416841, %struct.Memory** %MEMORY
  %loadMem_416844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %EAX.i831 = bitcast %union.anon* %839 to i32*
  %840 = load i32, i32* %EAX.i831
  %841 = zext i32 %840 to i64
  %842 = load i64, i64* %PC.i830
  %843 = add i64 %842, 7
  store i64 %843, i64* %PC.i830
  store i32 %840, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416844, %struct.Memory** %MEMORY
  %loadMem_41684b = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %PC.i828
  %851 = add i64 %850, 7
  store i64 %851, i64* %PC.i828
  %852 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RAX.i829, align 8
  store %struct.Memory* %loadMem_41684b, %struct.Memory** %MEMORY
  %loadMem_416852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 33
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 5
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 15
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %RBP.i827
  %864 = sub i64 %863, 48
  %865 = load i64, i64* %PC.i825
  %866 = add i64 %865, 4
  store i64 %866, i64* %PC.i825
  %867 = inttoptr i64 %864 to i64*
  %868 = load i64, i64* %867
  store i64 %868, i64* %RCX.i826, align 8
  store %struct.Memory* %loadMem_416852, %struct.Memory** %MEMORY
  %loadMem_416856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %EAX.i823 = bitcast %union.anon* %874 to i32*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 5
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RCX.i824
  %879 = load i32, i32* %EAX.i823
  %880 = zext i32 %879 to i64
  %881 = load i64, i64* %PC.i822
  %882 = add i64 %881, 2
  store i64 %882, i64* %PC.i822
  %883 = inttoptr i64 %878 to i32*
  store i32 %879, i32* %883
  store %struct.Memory* %loadMem_416856, %struct.Memory** %MEMORY
  %loadMem_416858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 5
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i821
  %894 = sub i64 %893, 56
  %895 = load i64, i64* %PC.i819
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC.i819
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897
  store i64 %898, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_416858, %struct.Memory** %MEMORY
  %loadMem_41685c = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 5
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RCX.i818 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %RCX.i818
  %906 = load i64, i64* %PC.i817
  %907 = add i64 %906, 7
  store i64 %907, i64* %PC.i817
  %908 = inttoptr i64 %905 to i64*
  store i64 0, i64* %908
  store %struct.Memory* %loadMem_41685c, %struct.Memory** %MEMORY
  %loadMem_416863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 5
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 15
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %RBP.i816
  %919 = sub i64 %918, 64
  %920 = load i64, i64* %PC.i814
  %921 = add i64 %920, 4
  store i64 %921, i64* %PC.i814
  %922 = inttoptr i64 %919 to i64*
  %923 = load i64, i64* %922
  store i64 %923, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_416863, %struct.Memory** %MEMORY
  %loadMem_416867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 33
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 5
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RCX.i813
  %931 = load i64, i64* %PC.i812
  %932 = add i64 %931, 7
  store i64 %932, i64* %PC.i812
  %933 = inttoptr i64 %930 to i64*
  store i64 0, i64* %933
  store %struct.Memory* %loadMem_416867, %struct.Memory** %MEMORY
  %loadMem_41686e = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i811
  %941 = sub i64 %940, 4
  %942 = load i64, i64* %PC.i810
  %943 = add i64 %942, 7
  store i64 %943, i64* %PC.i810
  %944 = inttoptr i64 %941 to i32*
  store i32 0, i32* %944
  store %struct.Memory* %loadMem_41686e, %struct.Memory** %MEMORY
  %loadMem_416875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %PC.i809
  %949 = add i64 %948, 1687
  %950 = load i64, i64* %PC.i809
  %951 = add i64 %950, 5
  store i64 %951, i64* %PC.i809
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %949, i64* %952, align 8
  store %struct.Memory* %loadMem_416875, %struct.Memory** %MEMORY
  br label %block_.L_416f0c

block_.L_41687a:                                  ; preds = %block_.L_416815
  %loadMem_41687a = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %PC.i808
  %957 = add i64 %956, 9
  store i64 %957, i64* %PC.i808
  %958 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %959, align 1
  %960 = trunc i64 %958 to i32
  %961 = and i32 %960, 255
  %962 = call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %965, i8* %966, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %967, align 1
  %968 = icmp eq i64 %958, 0
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %969, i8* %970, align 1
  %971 = lshr i64 %958, 63
  %972 = trunc i64 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %972, i8* %973, align 1
  %974 = lshr i64 %958, 63
  %975 = xor i64 %971, %974
  %976 = add i64 %975, %974
  %977 = icmp eq i64 %976, 2
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %978, i8* %979, align 1
  store %struct.Memory* %loadMem_41687a, %struct.Memory** %MEMORY
  %loadMem_416883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %PC.i807
  %984 = add i64 %983, 802
  %985 = load i64, i64* %PC.i807
  %986 = add i64 %985, 6
  %987 = load i64, i64* %PC.i807
  %988 = add i64 %987, 6
  store i64 %988, i64* %PC.i807
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %990 = load i8, i8* %989, align 1
  %991 = icmp eq i8 %990, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %BRANCH_TAKEN, align 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %994 = select i1 %991, i64 %984, i64 %986
  store i64 %994, i64* %993, align 8
  store %struct.Memory* %loadMem_416883, %struct.Memory** %MEMORY
  %loadBr_416883 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416883 = icmp eq i8 %loadBr_416883, 1
  br i1 %cmpBr_416883, label %block_.L_416ba5, label %block_416889

block_416889:                                     ; preds = %block_.L_41687a
  %loadMem_416889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 9
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RSI.i806 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %PC.i805
  %1002 = add i64 %1001, 10
  store i64 %1002, i64* %PC.i805
  store i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64* %RSI.i806, align 8
  store %struct.Memory* %loadMem_416889, %struct.Memory** %MEMORY
  %loadMem_416893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 1
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RAX.i804 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %PC.i803
  %1010 = add i64 %1009, 5
  store i64 %1010, i64* %PC.i803
  store i64 2, i64* %RAX.i804, align 8
  store %struct.Memory* %loadMem_416893, %struct.Memory** %MEMORY
  %loadMem_416898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 1
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %EAX.i801 = bitcast %union.anon* %1016 to i32*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 7
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RDX.i802 = bitcast %union.anon* %1019 to i64*
  %1020 = load i32, i32* %EAX.i801
  %1021 = zext i32 %1020 to i64
  %1022 = load i64, i64* %PC.i800
  %1023 = add i64 %1022, 2
  store i64 %1023, i64* %PC.i800
  %1024 = and i64 %1021, 4294967295
  store i64 %1024, i64* %RDX.i802, align 8
  store %struct.Memory* %loadMem_416898, %struct.Memory** %MEMORY
  %loadMem_41689a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 5
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RCX.i798 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i799
  %1035 = sub i64 %1034, 16
  %1036 = load i64, i64* %PC.i797
  %1037 = add i64 %1036, 4
  store i64 %1037, i64* %PC.i797
  %1038 = inttoptr i64 %1035 to i64*
  %1039 = load i64, i64* %1038
  store i64 %1039, i64* %RCX.i798, align 8
  store %struct.Memory* %loadMem_41689a, %struct.Memory** %MEMORY
  %loadMem_41689e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 11
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RDI.i796 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %PC.i795
  %1047 = add i64 %1046, 8
  store i64 %1047, i64* %PC.i795
  %1048 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %1049 = sext i32 %1048 to i64
  store i64 %1049, i64* %RDI.i796, align 8
  store %struct.Memory* %loadMem_41689e, %struct.Memory** %MEMORY
  %loadMem_4168a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 5
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 11
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RDI.i794 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %RCX.i793
  %1060 = load i64, i64* %RDI.i794
  %1061 = mul i64 %1060, 8
  %1062 = add i64 %1061, %1059
  %1063 = load i64, i64* %PC.i792
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %PC.i792
  %1065 = inttoptr i64 %1062 to i64*
  %1066 = load i64, i64* %1065
  store i64 %1066, i64* %RDI.i794, align 8
  store %struct.Memory* %loadMem_4168a6, %struct.Memory** %MEMORY
  %loadMem1_4168aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %PC.i791
  %1071 = add i64 %1070, -87258
  %1072 = load i64, i64* %PC.i791
  %1073 = add i64 %1072, 5
  %1074 = load i64, i64* %PC.i791
  %1075 = add i64 %1074, 5
  store i64 %1075, i64* %PC.i791
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1077 = load i64, i64* %1076, align 8
  %1078 = add i64 %1077, -8
  %1079 = inttoptr i64 %1078 to i64*
  store i64 %1073, i64* %1079
  store i64 %1078, i64* %1076, align 8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1071, i64* %1080, align 8
  store %struct.Memory* %loadMem1_4168aa, %struct.Memory** %MEMORY
  %loadMem2_4168aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4168aa = load i64, i64* %3
  %1081 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4168aa)
  store %struct.Memory* %1081, %struct.Memory** %MEMORY
  %loadMem_4168af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %EAX.i787 = bitcast %union.anon* %1087 to i32*
  %1088 = load i32, i32* %EAX.i787
  %1089 = zext i32 %1088 to i64
  %1090 = load i64, i64* %PC.i786
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC.i786
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1092, align 1
  %1093 = and i32 %1088, 255
  %1094 = call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1097, i8* %1098, align 1
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1099, align 1
  %1100 = icmp eq i32 %1088, 0
  %1101 = zext i1 %1100 to i8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1101, i8* %1102, align 1
  %1103 = lshr i32 %1088, 31
  %1104 = trunc i32 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1104, i8* %1105, align 1
  %1106 = lshr i32 %1088, 31
  %1107 = xor i32 %1103, %1106
  %1108 = add i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1110, i8* %1111, align 1
  store %struct.Memory* %loadMem_4168af, %struct.Memory** %MEMORY
  %loadMem_4168b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1114 to i64*
  %1115 = load i64, i64* %PC.i785
  %1116 = add i64 %1115, 755
  %1117 = load i64, i64* %PC.i785
  %1118 = add i64 %1117, 6
  %1119 = load i64, i64* %PC.i785
  %1120 = add i64 %1119, 6
  store i64 %1120, i64* %PC.i785
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1122 = load i8, i8* %1121, align 1
  %1123 = icmp eq i8 %1122, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %BRANCH_TAKEN, align 1
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1126 = select i1 %1123, i64 %1116, i64 %1118
  store i64 %1126, i64* %1125, align 8
  store %struct.Memory* %loadMem_4168b2, %struct.Memory** %MEMORY
  %loadBr_4168b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168b2 = icmp eq i8 %loadBr_4168b2, 1
  br i1 %cmpBr_4168b2, label %block_.L_416ba5, label %block_4168b8

block_4168b8:                                     ; preds = %block_416889
  %loadMem_4168b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 9
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RSI.i784 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %PC.i783
  %1134 = add i64 %1133, 5
  store i64 %1134, i64* %PC.i783
  store i64 61, i64* %RSI.i784, align 8
  store %struct.Memory* %loadMem_4168b8, %struct.Memory** %MEMORY
  %loadMem_4168bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 1
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 15
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RBP.i782
  %1145 = sub i64 %1144, 16
  %1146 = load i64, i64* %PC.i780
  %1147 = add i64 %1146, 4
  store i64 %1147, i64* %PC.i780
  %1148 = inttoptr i64 %1145 to i64*
  %1149 = load i64, i64* %1148
  store i64 %1149, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_4168bd, %struct.Memory** %MEMORY
  %loadMem_4168c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 5
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %PC.i778
  %1157 = add i64 %1156, 8
  store i64 %1157, i64* %PC.i778
  %1158 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %1159 = sext i32 %1158 to i64
  store i64 %1159, i64* %RCX.i779, align 8
  store %struct.Memory* %loadMem_4168c1, %struct.Memory** %MEMORY
  %loadMem_4168c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 1
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 5
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 11
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RDI.i777 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RAX.i775
  %1173 = load i64, i64* %RCX.i776
  %1174 = mul i64 %1173, 8
  %1175 = add i64 %1174, %1172
  %1176 = load i64, i64* %PC.i774
  %1177 = add i64 %1176, 4
  store i64 %1177, i64* %PC.i774
  %1178 = inttoptr i64 %1175 to i64*
  %1179 = load i64, i64* %1178
  store i64 %1179, i64* %RDI.i777, align 8
  store %struct.Memory* %loadMem_4168c9, %struct.Memory** %MEMORY
  %loadMem1_4168cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %PC.i773
  %1184 = add i64 %1183, -87117
  %1185 = load i64, i64* %PC.i773
  %1186 = add i64 %1185, 5
  %1187 = load i64, i64* %PC.i773
  %1188 = add i64 %1187, 5
  store i64 %1188, i64* %PC.i773
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1190 = load i64, i64* %1189, align 8
  %1191 = add i64 %1190, -8
  %1192 = inttoptr i64 %1191 to i64*
  store i64 %1186, i64* %1192
  store i64 %1191, i64* %1189, align 8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1184, i64* %1193, align 8
  store %struct.Memory* %loadMem1_4168cd, %struct.Memory** %MEMORY
  %loadMem2_4168cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4168cd = load i64, i64* %3
  %call2_4168cd = call %struct.Memory* @sub_401480.strchr_plt(%struct.State* %0, i64 %loadPC_4168cd, %struct.Memory* %loadMem2_4168cd)
  store %struct.Memory* %call2_4168cd, %struct.Memory** %MEMORY
  %loadMem_4168d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 1
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RAX.i772
  %1201 = load i64, i64* %PC.i771
  %1202 = add i64 %1201, 8
  store i64 %1202, i64* %PC.i771
  store i64 %1200, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_4168d2, %struct.Memory** %MEMORY
  %loadMem_4168da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 1
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %RAX.i770
  %1210 = load i64, i64* %PC.i769
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC.i769
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1212, align 1
  %1213 = trunc i64 %1209 to i32
  %1214 = and i32 %1213, 255
  %1215 = call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1218, i8* %1219, align 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1220, align 1
  %1221 = icmp eq i64 %1209, 0
  %1222 = zext i1 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1222, i8* %1223, align 1
  %1224 = lshr i64 %1209, 63
  %1225 = trunc i64 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1225, i8* %1226, align 1
  %1227 = lshr i64 %1209, 63
  %1228 = xor i64 %1224, %1227
  %1229 = add i64 %1228, %1227
  %1230 = icmp eq i64 %1229, 2
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1231, i8* %1232, align 1
  store %struct.Memory* %loadMem_4168da, %struct.Memory** %MEMORY
  %loadMem_4168de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %PC.i768
  %1237 = add i64 %1236, 37
  %1238 = load i64, i64* %PC.i768
  %1239 = add i64 %1238, 6
  %1240 = load i64, i64* %PC.i768
  %1241 = add i64 %1240, 6
  store i64 %1241, i64* %PC.i768
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1243 = load i8, i8* %1242, align 1
  store i8 %1243, i8* %BRANCH_TAKEN, align 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1245 = icmp ne i8 %1243, 0
  %1246 = select i1 %1245, i64 %1237, i64 %1239
  store i64 %1246, i64* %1244, align 8
  store %struct.Memory* %loadMem_4168de, %struct.Memory** %MEMORY
  %loadBr_4168de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168de = icmp eq i8 %loadBr_4168de, 1
  br i1 %cmpBr_4168de, label %block_.L_416903, label %block_4168e4

block_4168e4:                                     ; preds = %block_4168b8
  %loadMem_4168e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %PC.i766
  %1254 = add i64 %1253, 8
  store i64 %1254, i64* %PC.i766
  %1255 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %1255, i64* %RAX.i767, align 8
  store %struct.Memory* %loadMem_4168e4, %struct.Memory** %MEMORY
  %loadMem_4168ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 1
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %1261 to i64*
  %1262 = load i64, i64* %RAX.i765
  %1263 = load i64, i64* %PC.i764
  %1264 = add i64 %1263, 3
  store i64 %1264, i64* %PC.i764
  %1265 = inttoptr i64 %1262 to i8*
  store i8 0, i8* %1265
  store %struct.Memory* %loadMem_4168ec, %struct.Memory** %MEMORY
  %loadMem_4168ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 1
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %PC.i762
  %1273 = add i64 %1272, 8
  store i64 %1273, i64* %PC.i762
  %1274 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %1274, i64* %RAX.i763, align 8
  store %struct.Memory* %loadMem_4168ef, %struct.Memory** %MEMORY
  %loadMem_4168f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 1
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RAX.i761
  %1282 = load i64, i64* %PC.i760
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC.i760
  %1284 = add i64 1, %1281
  store i64 %1284, i64* %RAX.i761, align 8
  %1285 = icmp ult i64 %1284, %1281
  %1286 = icmp ult i64 %1284, 1
  %1287 = or i1 %1285, %1286
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1288, i8* %1289, align 1
  %1290 = trunc i64 %1284 to i32
  %1291 = and i32 %1290, 255
  %1292 = call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1295, i8* %1296, align 1
  %1297 = xor i64 1, %1281
  %1298 = xor i64 %1297, %1284
  %1299 = lshr i64 %1298, 4
  %1300 = trunc i64 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1301, i8* %1302, align 1
  %1303 = icmp eq i64 %1284, 0
  %1304 = zext i1 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1304, i8* %1305, align 1
  %1306 = lshr i64 %1284, 63
  %1307 = trunc i64 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1307, i8* %1308, align 1
  %1309 = lshr i64 %1281, 63
  %1310 = xor i64 %1306, %1309
  %1311 = add i64 %1310, %1306
  %1312 = icmp eq i64 %1311, 2
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1313, i8* %1314, align 1
  store %struct.Memory* %loadMem_4168f7, %struct.Memory** %MEMORY
  %loadMem_4168fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 1
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %RAX.i759
  %1322 = load i64, i64* %PC.i758
  %1323 = add i64 %1322, 8
  store i64 %1323, i64* %PC.i758
  store i64 %1321, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_4168fb, %struct.Memory** %MEMORY
  br label %block_.L_416903

block_.L_416903:                                  ; preds = %block_4168e4, %block_4168b8
  %loadMem_416903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i757 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i757
  %1334 = sub i64 %1333, 16
  %1335 = load i64, i64* %PC.i755
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i755
  %1337 = inttoptr i64 %1334 to i64*
  %1338 = load i64, i64* %1337
  store i64 %1338, i64* %RAX.i756, align 8
  store %struct.Memory* %loadMem_416903, %struct.Memory** %MEMORY
  %loadMem_416907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 5
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RCX.i754 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %PC.i753
  %1346 = add i64 %1345, 8
  store i64 %1346, i64* %PC.i753
  %1347 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %1348 = sext i32 %1347 to i64
  store i64 %1348, i64* %RCX.i754, align 8
  store %struct.Memory* %loadMem_416907, %struct.Memory** %MEMORY
  %loadMem_41690f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 1
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 5
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RCX.i751 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 11
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RDI.i752 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RAX.i750
  %1362 = load i64, i64* %RCX.i751
  %1363 = mul i64 %1362, 8
  %1364 = add i64 %1363, %1361
  %1365 = load i64, i64* %PC.i749
  %1366 = add i64 %1365, 4
  store i64 %1366, i64* %PC.i749
  %1367 = inttoptr i64 %1364 to i64*
  %1368 = load i64, i64* %1367
  store i64 %1368, i64* %RDI.i752, align 8
  store %struct.Memory* %loadMem_41690f, %struct.Memory** %MEMORY
  %loadMem1_416913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1371 to i64*
  %1372 = load i64, i64* %PC.i748
  %1373 = add i64 %1372, -87219
  %1374 = load i64, i64* %PC.i748
  %1375 = add i64 %1374, 5
  %1376 = load i64, i64* %PC.i748
  %1377 = add i64 %1376, 5
  store i64 %1377, i64* %PC.i748
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1379 = load i64, i64* %1378, align 8
  %1380 = add i64 %1379, -8
  %1381 = inttoptr i64 %1380 to i64*
  store i64 %1375, i64* %1381
  store i64 %1380, i64* %1378, align 8
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1373, i64* %1382, align 8
  store %struct.Memory* %loadMem1_416913, %struct.Memory** %MEMORY
  %loadMem2_416913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416913 = load i64, i64* %3
  %1383 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_416913)
  store %struct.Memory* %1383, %struct.Memory** %MEMORY
  %loadMem_416918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 1
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %EAX.i744 = bitcast %union.anon* %1389 to i32*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 7
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RDX.i745 = bitcast %union.anon* %1392 to i64*
  %1393 = load i32, i32* %EAX.i744
  %1394 = zext i32 %1393 to i64
  %1395 = load i64, i64* %PC.i743
  %1396 = add i64 %1395, 2
  store i64 %1396, i64* %PC.i743
  %1397 = and i64 %1394, 4294967295
  store i64 %1397, i64* %RDX.i745, align 8
  store %struct.Memory* %loadMem_416918, %struct.Memory** %MEMORY
  %loadMem_41691a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 7
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %EDX.i741 = bitcast %union.anon* %1403 to i32*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 15
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %RBP.i742
  %1408 = sub i64 %1407, 72
  %1409 = load i32, i32* %EDX.i741
  %1410 = zext i32 %1409 to i64
  %1411 = load i64, i64* %PC.i740
  %1412 = add i64 %1411, 3
  store i64 %1412, i64* %PC.i740
  %1413 = inttoptr i64 %1408 to i32*
  store i32 %1409, i32* %1413
  store %struct.Memory* %loadMem_41691a, %struct.Memory** %MEMORY
  %loadMem_41691d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 15
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %1419 to i64*
  %1420 = load i64, i64* %RBP.i739
  %1421 = sub i64 %1420, 76
  %1422 = load i64, i64* %PC.i738
  %1423 = add i64 %1422, 7
  store i64 %1423, i64* %PC.i738
  %1424 = inttoptr i64 %1421 to i32*
  store i32 0, i32* %1424
  store %struct.Memory* %loadMem_41691d, %struct.Memory** %MEMORY
  %loadMem_416924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 15
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %1430 to i64*
  %1431 = load i64, i64* %RBP.i737
  %1432 = sub i64 %1431, 68
  %1433 = load i64, i64* %PC.i736
  %1434 = add i64 %1433, 7
  store i64 %1434, i64* %PC.i736
  %1435 = inttoptr i64 %1432 to i32*
  store i32 0, i32* %1435
  store %struct.Memory* %loadMem_416924, %struct.Memory** %MEMORY
  br label %block_.L_41692b

block_.L_41692b:                                  ; preds = %block_.L_4169ce, %block_.L_416903
  %loadMem_41692b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 1
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i735
  %1446 = sub i64 %1445, 68
  %1447 = load i64, i64* %PC.i733
  %1448 = add i64 %1447, 3
  store i64 %1448, i64* %PC.i733
  %1449 = inttoptr i64 %1446 to i32*
  %1450 = load i32, i32* %1449
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_41692b, %struct.Memory** %MEMORY
  %loadMem_41692e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 1
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %EAX.i731 = bitcast %union.anon* %1457 to i32*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 15
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1460 to i64*
  %1461 = load i32, i32* %EAX.i731
  %1462 = zext i32 %1461 to i64
  %1463 = load i64, i64* %RBP.i732
  %1464 = sub i64 %1463, 28
  %1465 = load i64, i64* %PC.i730
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC.i730
  %1467 = inttoptr i64 %1464 to i32*
  %1468 = load i32, i32* %1467
  %1469 = sub i32 %1461, %1468
  %1470 = icmp ult i32 %1461, %1468
  %1471 = zext i1 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1471, i8* %1472, align 1
  %1473 = and i32 %1469, 255
  %1474 = call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1477, i8* %1478, align 1
  %1479 = xor i32 %1468, %1461
  %1480 = xor i32 %1479, %1469
  %1481 = lshr i32 %1480, 4
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1483, i8* %1484, align 1
  %1485 = icmp eq i32 %1469, 0
  %1486 = zext i1 %1485 to i8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1486, i8* %1487, align 1
  %1488 = lshr i32 %1469, 31
  %1489 = trunc i32 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1489, i8* %1490, align 1
  %1491 = lshr i32 %1461, 31
  %1492 = lshr i32 %1468, 31
  %1493 = xor i32 %1492, %1491
  %1494 = xor i32 %1488, %1491
  %1495 = add i32 %1494, %1493
  %1496 = icmp eq i32 %1495, 2
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1497, i8* %1498, align 1
  store %struct.Memory* %loadMem_41692e, %struct.Memory** %MEMORY
  %loadMem_416931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %PC.i729
  %1503 = add i64 %1502, 171
  %1504 = load i64, i64* %PC.i729
  %1505 = add i64 %1504, 6
  %1506 = load i64, i64* %PC.i729
  %1507 = add i64 %1506, 6
  store i64 %1507, i64* %PC.i729
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1509 = load i8, i8* %1508, align 1
  %1510 = icmp ne i8 %1509, 0
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1512 = load i8, i8* %1511, align 1
  %1513 = icmp ne i8 %1512, 0
  %1514 = xor i1 %1510, %1513
  %1515 = xor i1 %1514, true
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %BRANCH_TAKEN, align 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1518 = select i1 %1514, i64 %1505, i64 %1503
  store i64 %1518, i64* %1517, align 8
  store %struct.Memory* %loadMem_416931, %struct.Memory** %MEMORY
  %loadBr_416931 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416931 = icmp eq i8 %loadBr_416931, 1
  br i1 %cmpBr_416931, label %block_.L_4169dc, label %block_416937

block_416937:                                     ; preds = %block_.L_41692b
  %loadMem_416937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RBP.i728
  %1529 = sub i64 %1528, 24
  %1530 = load i64, i64* %PC.i726
  %1531 = add i64 %1530, 4
  store i64 %1531, i64* %PC.i726
  %1532 = inttoptr i64 %1529 to i64*
  %1533 = load i64, i64* %1532
  store i64 %1533, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_416937, %struct.Memory** %MEMORY
  %loadMem_41693b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 5
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 15
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RBP.i725
  %1544 = sub i64 %1543, 68
  %1545 = load i64, i64* %PC.i723
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC.i723
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547
  %1549 = sext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i724, align 8
  store %struct.Memory* %loadMem_41693b, %struct.Memory** %MEMORY
  %loadMem_41693f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 5
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RCX.i722 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %RCX.i722
  %1557 = load i64, i64* %PC.i721
  %1558 = add i64 %1557, 4
  store i64 %1558, i64* %PC.i721
  %1559 = shl i64 %1556, 3
  %1560 = icmp slt i64 %1559, 0
  %1561 = shl i64 %1559, 1
  store i64 %1561, i64* %RCX.i722, align 8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1563 = zext i1 %1560 to i8
  store i8 %1563, i8* %1562, align 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1565 = trunc i64 %1561 to i32
  %1566 = and i32 %1565, 254
  %1567 = call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %1564, align 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1571, align 1
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1573 = icmp eq i64 %1561, 0
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %1572, align 1
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1576 = lshr i64 %1561, 63
  %1577 = trunc i64 %1576 to i8
  store i8 %1577, i8* %1575, align 1
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1578, align 1
  store %struct.Memory* %loadMem_41693f, %struct.Memory** %MEMORY
  %loadMem_416943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 1
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 5
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RAX.i719
  %1589 = load i64, i64* %RCX.i720
  %1590 = load i64, i64* %PC.i718
  %1591 = add i64 %1590, 3
  store i64 %1591, i64* %PC.i718
  %1592 = add i64 %1589, %1588
  store i64 %1592, i64* %RAX.i719, align 8
  %1593 = icmp ult i64 %1592, %1588
  %1594 = icmp ult i64 %1592, %1589
  %1595 = or i1 %1593, %1594
  %1596 = zext i1 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1596, i8* %1597, align 1
  %1598 = trunc i64 %1592 to i32
  %1599 = and i32 %1598, 255
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1603, i8* %1604, align 1
  %1605 = xor i64 %1589, %1588
  %1606 = xor i64 %1605, %1592
  %1607 = lshr i64 %1606, 4
  %1608 = trunc i64 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1609, i8* %1610, align 1
  %1611 = icmp eq i64 %1592, 0
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1612, i8* %1613, align 1
  %1614 = lshr i64 %1592, 63
  %1615 = trunc i64 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1615, i8* %1616, align 1
  %1617 = lshr i64 %1588, 63
  %1618 = lshr i64 %1589, 63
  %1619 = xor i64 %1614, %1617
  %1620 = xor i64 %1614, %1618
  %1621 = add i64 %1619, %1620
  %1622 = icmp eq i64 %1621, 2
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1623, i8* %1624, align 1
  store %struct.Memory* %loadMem_416943, %struct.Memory** %MEMORY
  %loadMem_416946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RAX.i717
  %1632 = add i64 %1631, 8
  %1633 = load i64, i64* %PC.i716
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i716
  %1635 = inttoptr i64 %1632 to i32*
  %1636 = load i32, i32* %1635
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1637, align 1
  %1638 = and i32 %1636, 255
  %1639 = call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1642, i8* %1643, align 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1644, align 1
  %1645 = icmp eq i32 %1636, 0
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1646, i8* %1647, align 1
  %1648 = lshr i32 %1636, 31
  %1649 = trunc i32 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1649, i8* %1650, align 1
  %1651 = lshr i32 %1636, 31
  %1652 = xor i32 %1648, %1651
  %1653 = add i32 %1652, %1651
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1655, i8* %1656, align 1
  store %struct.Memory* %loadMem_416946, %struct.Memory** %MEMORY
  %loadMem_41694a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %PC.i715
  %1661 = add i64 %1660, 127
  %1662 = load i64, i64* %PC.i715
  %1663 = add i64 %1662, 6
  %1664 = load i64, i64* %PC.i715
  %1665 = add i64 %1664, 6
  store i64 %1665, i64* %PC.i715
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1667 = load i8, i8* %1666, align 1
  %1668 = icmp eq i8 %1667, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %BRANCH_TAKEN, align 1
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1671 = select i1 %1668, i64 %1661, i64 %1663
  store i64 %1671, i64* %1670, align 8
  store %struct.Memory* %loadMem_41694a, %struct.Memory** %MEMORY
  %loadBr_41694a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41694a = icmp eq i8 %loadBr_41694a, 1
  br i1 %cmpBr_41694a, label %block_.L_4169c9, label %block_416950

block_416950:                                     ; preds = %block_416937
  %loadMem_416950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 1
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 15
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %RBP.i714
  %1682 = sub i64 %1681, 24
  %1683 = load i64, i64* %PC.i712
  %1684 = add i64 %1683, 4
  store i64 %1684, i64* %PC.i712
  %1685 = inttoptr i64 %1682 to i64*
  %1686 = load i64, i64* %1685
  store i64 %1686, i64* %RAX.i713, align 8
  store %struct.Memory* %loadMem_416950, %struct.Memory** %MEMORY
  %loadMem_416954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 5
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 15
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1695 to i64*
  %1696 = load i64, i64* %RBP.i711
  %1697 = sub i64 %1696, 68
  %1698 = load i64, i64* %PC.i709
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i709
  %1700 = inttoptr i64 %1697 to i32*
  %1701 = load i32, i32* %1700
  %1702 = sext i32 %1701 to i64
  store i64 %1702, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_416954, %struct.Memory** %MEMORY
  %loadMem_416958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 5
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %1708 to i64*
  %1709 = load i64, i64* %RCX.i708
  %1710 = load i64, i64* %PC.i707
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC.i707
  %1712 = shl i64 %1709, 3
  %1713 = icmp slt i64 %1712, 0
  %1714 = shl i64 %1712, 1
  store i64 %1714, i64* %RCX.i708, align 8
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1716 = zext i1 %1713 to i8
  store i8 %1716, i8* %1715, align 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1718 = trunc i64 %1714 to i32
  %1719 = and i32 %1718, 254
  %1720 = call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  store i8 %1723, i8* %1717, align 1
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1724, align 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1726 = icmp eq i64 %1714, 0
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %1725, align 1
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1729 = lshr i64 %1714, 63
  %1730 = trunc i64 %1729 to i8
  store i8 %1730, i8* %1728, align 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1731, align 1
  store %struct.Memory* %loadMem_416958, %struct.Memory** %MEMORY
  %loadMem_41695c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 1
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 5
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RAX.i705
  %1742 = load i64, i64* %RCX.i706
  %1743 = load i64, i64* %PC.i704
  %1744 = add i64 %1743, 3
  store i64 %1744, i64* %PC.i704
  %1745 = add i64 %1742, %1741
  store i64 %1745, i64* %RAX.i705, align 8
  %1746 = icmp ult i64 %1745, %1741
  %1747 = icmp ult i64 %1745, %1742
  %1748 = or i1 %1746, %1747
  %1749 = zext i1 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1749, i8* %1750, align 1
  %1751 = trunc i64 %1745 to i32
  %1752 = and i32 %1751, 255
  %1753 = call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1756, i8* %1757, align 1
  %1758 = xor i64 %1742, %1741
  %1759 = xor i64 %1758, %1745
  %1760 = lshr i64 %1759, 4
  %1761 = trunc i64 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1762, i8* %1763, align 1
  %1764 = icmp eq i64 %1745, 0
  %1765 = zext i1 %1764 to i8
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1765, i8* %1766, align 1
  %1767 = lshr i64 %1745, 63
  %1768 = trunc i64 %1767 to i8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1768, i8* %1769, align 1
  %1770 = lshr i64 %1741, 63
  %1771 = lshr i64 %1742, 63
  %1772 = xor i64 %1767, %1770
  %1773 = xor i64 %1767, %1771
  %1774 = add i64 %1772, %1773
  %1775 = icmp eq i64 %1774, 2
  %1776 = zext i1 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1776, i8* %1777, align 1
  store %struct.Memory* %loadMem_41695c, %struct.Memory** %MEMORY
  %loadMem_41695f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 1
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 11
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RDI.i703 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %RAX.i702
  %1788 = load i64, i64* %PC.i701
  %1789 = add i64 %1788, 3
  store i64 %1789, i64* %PC.i701
  %1790 = inttoptr i64 %1787 to i64*
  %1791 = load i64, i64* %1790
  store i64 %1791, i64* %RDI.i703, align 8
  store %struct.Memory* %loadMem_41695f, %struct.Memory** %MEMORY
  %loadMem_416962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 1
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 15
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RBP.i700
  %1802 = sub i64 %1801, 16
  %1803 = load i64, i64* %PC.i698
  %1804 = add i64 %1803, 4
  store i64 %1804, i64* %PC.i698
  %1805 = inttoptr i64 %1802 to i64*
  %1806 = load i64, i64* %1805
  store i64 %1806, i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_416962, %struct.Memory** %MEMORY
  %loadMem_416966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 5
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %PC.i696
  %1814 = add i64 %1813, 8
  store i64 %1814, i64* %PC.i696
  %1815 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %1816 = sext i32 %1815 to i64
  store i64 %1816, i64* %RCX.i697, align 8
  store %struct.Memory* %loadMem_416966, %struct.Memory** %MEMORY
  %loadMem_41696e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 1
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 5
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 9
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RSI.i695 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RAX.i693
  %1830 = load i64, i64* %RCX.i694
  %1831 = mul i64 %1830, 8
  %1832 = add i64 %1831, %1829
  %1833 = load i64, i64* %PC.i692
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i692
  %1835 = inttoptr i64 %1832 to i64*
  %1836 = load i64, i64* %1835
  store i64 %1836, i64* %RSI.i695, align 8
  store %struct.Memory* %loadMem_41696e, %struct.Memory** %MEMORY
  %loadMem_416972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 7
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RDX.i690 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 15
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RBP.i691
  %1847 = sub i64 %1846, 72
  %1848 = load i64, i64* %PC.i689
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i689
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850
  %1852 = sext i32 %1851 to i64
  store i64 %1852, i64* %RDX.i690, align 8
  store %struct.Memory* %loadMem_416972, %struct.Memory** %MEMORY
  %loadMem1_416976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1855 to i64*
  %1856 = load i64, i64* %PC.i688
  %1857 = add i64 %1856, -87462
  %1858 = load i64, i64* %PC.i688
  %1859 = add i64 %1858, 5
  %1860 = load i64, i64* %PC.i688
  %1861 = add i64 %1860, 5
  store i64 %1861, i64* %PC.i688
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1863 = load i64, i64* %1862, align 8
  %1864 = add i64 %1863, -8
  %1865 = inttoptr i64 %1864 to i64*
  store i64 %1859, i64* %1865
  store i64 %1864, i64* %1862, align 8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1857, i64* %1866, align 8
  store %struct.Memory* %loadMem1_416976, %struct.Memory** %MEMORY
  %loadMem2_416976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416976 = load i64, i64* %3
  %1867 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_416976)
  store %struct.Memory* %1867, %struct.Memory** %MEMORY
  %loadMem_41697b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 1
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %EAX.i685 = bitcast %union.anon* %1873 to i32*
  %1874 = load i32, i32* %EAX.i685
  %1875 = zext i32 %1874 to i64
  %1876 = load i64, i64* %PC.i684
  %1877 = add i64 %1876, 3
  store i64 %1877, i64* %PC.i684
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1878, align 1
  %1879 = and i32 %1874, 255
  %1880 = call i32 @llvm.ctpop.i32(i32 %1879)
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1883, i8* %1884, align 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1885, align 1
  %1886 = icmp eq i32 %1874, 0
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1887, i8* %1888, align 1
  %1889 = lshr i32 %1874, 31
  %1890 = trunc i32 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1890, i8* %1891, align 1
  %1892 = lshr i32 %1874, 31
  %1893 = xor i32 %1889, %1892
  %1894 = add i32 %1893, %1892
  %1895 = icmp eq i32 %1894, 2
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1896, i8* %1897, align 1
  store %struct.Memory* %loadMem_41697b, %struct.Memory** %MEMORY
  %loadMem_41697e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %PC.i683
  %1902 = add i64 %1901, 75
  %1903 = load i64, i64* %PC.i683
  %1904 = add i64 %1903, 6
  %1905 = load i64, i64* %PC.i683
  %1906 = add i64 %1905, 6
  store i64 %1906, i64* %PC.i683
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1908 = load i8, i8* %1907, align 1
  %1909 = icmp eq i8 %1908, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %BRANCH_TAKEN, align 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1912 = select i1 %1909, i64 %1902, i64 %1904
  store i64 %1912, i64* %1911, align 8
  store %struct.Memory* %loadMem_41697e, %struct.Memory** %MEMORY
  %loadBr_41697e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41697e = icmp eq i8 %loadBr_41697e, 1
  br i1 %cmpBr_41697e, label %block_.L_4169c9, label %block_416984

block_416984:                                     ; preds = %block_416950
  %loadMem_416984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 1
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 15
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RBP.i682
  %1923 = sub i64 %1922, 76
  %1924 = load i64, i64* %PC.i680
  %1925 = add i64 %1924, 3
  store i64 %1925, i64* %PC.i680
  %1926 = inttoptr i64 %1923 to i32*
  %1927 = load i32, i32* %1926
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX.i681, align 8
  store %struct.Memory* %loadMem_416984, %struct.Memory** %MEMORY
  %loadMem_416987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 1
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %RAX.i679
  %1936 = load i64, i64* %PC.i678
  %1937 = add i64 %1936, 3
  store i64 %1937, i64* %PC.i678
  %1938 = trunc i64 %1935 to i32
  %1939 = add i32 1, %1938
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RAX.i679, align 8
  %1941 = icmp ult i32 %1939, %1938
  %1942 = icmp ult i32 %1939, 1
  %1943 = or i1 %1941, %1942
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1944, i8* %1945, align 1
  %1946 = and i32 %1939, 255
  %1947 = call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1950, i8* %1951, align 1
  %1952 = xor i64 1, %1935
  %1953 = trunc i64 %1952 to i32
  %1954 = xor i32 %1953, %1939
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1957, i8* %1958, align 1
  %1959 = icmp eq i32 %1939, 0
  %1960 = zext i1 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1960, i8* %1961, align 1
  %1962 = lshr i32 %1939, 31
  %1963 = trunc i32 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1963, i8* %1964, align 1
  %1965 = lshr i32 %1938, 31
  %1966 = xor i32 %1962, %1965
  %1967 = add i32 %1966, %1962
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1969, i8* %1970, align 1
  store %struct.Memory* %loadMem_416987, %struct.Memory** %MEMORY
  %loadMem_41698a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 1
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %EAX.i676 = bitcast %union.anon* %1976 to i32*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 15
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %RBP.i677
  %1981 = sub i64 %1980, 76
  %1982 = load i32, i32* %EAX.i676
  %1983 = zext i32 %1982 to i64
  %1984 = load i64, i64* %PC.i675
  %1985 = add i64 %1984, 3
  store i64 %1985, i64* %PC.i675
  %1986 = inttoptr i64 %1981 to i32*
  store i32 %1982, i32* %1986
  store %struct.Memory* %loadMem_41698a, %struct.Memory** %MEMORY
  %loadMem_41698d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 15
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1995 to i64*
  %1996 = load i64, i64* %RBP.i674
  %1997 = sub i64 %1996, 68
  %1998 = load i64, i64* %PC.i672
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i672
  %2000 = inttoptr i64 %1997 to i32*
  %2001 = load i32, i32* %2000
  %2002 = zext i32 %2001 to i64
  store i64 %2002, i64* %RAX.i673, align 8
  store %struct.Memory* %loadMem_41698d, %struct.Memory** %MEMORY
  %loadMem_416990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 1
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %EAX.i670 = bitcast %union.anon* %2008 to i32*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 15
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RBP.i671
  %2013 = sub i64 %2012, 80
  %2014 = load i32, i32* %EAX.i670
  %2015 = zext i32 %2014 to i64
  %2016 = load i64, i64* %PC.i669
  %2017 = add i64 %2016, 3
  store i64 %2017, i64* %PC.i669
  %2018 = inttoptr i64 %2013 to i32*
  store i32 %2014, i32* %2018
  store %struct.Memory* %loadMem_416990, %struct.Memory** %MEMORY
  %loadMem_416993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 5
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 15
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RBP.i668
  %2029 = sub i64 %2028, 72
  %2030 = load i64, i64* %PC.i666
  %2031 = add i64 %2030, 4
  store i64 %2031, i64* %PC.i666
  %2032 = inttoptr i64 %2029 to i32*
  %2033 = load i32, i32* %2032
  %2034 = sext i32 %2033 to i64
  store i64 %2034, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_416993, %struct.Memory** %MEMORY
  %loadMem_416997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 7
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RDX.i664 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 15
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RBP.i665
  %2045 = sub i64 %2044, 24
  %2046 = load i64, i64* %PC.i663
  %2047 = add i64 %2046, 4
  store i64 %2047, i64* %PC.i663
  %2048 = inttoptr i64 %2045 to i64*
  %2049 = load i64, i64* %2048
  store i64 %2049, i64* %RDX.i664, align 8
  store %struct.Memory* %loadMem_416997, %struct.Memory** %MEMORY
  %loadMem_41699b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 9
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RSI.i661 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 15
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %RBP.i662
  %2060 = sub i64 %2059, 68
  %2061 = load i64, i64* %PC.i660
  %2062 = add i64 %2061, 4
  store i64 %2062, i64* %PC.i660
  %2063 = inttoptr i64 %2060 to i32*
  %2064 = load i32, i32* %2063
  %2065 = sext i32 %2064 to i64
  store i64 %2065, i64* %RSI.i661, align 8
  store %struct.Memory* %loadMem_41699b, %struct.Memory** %MEMORY
  %loadMem_41699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 9
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RSI.i659 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %RSI.i659
  %2073 = load i64, i64* %PC.i658
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC.i658
  %2075 = shl i64 %2072, 3
  %2076 = icmp slt i64 %2075, 0
  %2077 = shl i64 %2075, 1
  store i64 %2077, i64* %RSI.i659, align 8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2079 = zext i1 %2076 to i8
  store i8 %2079, i8* %2078, align 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2081 = trunc i64 %2077 to i32
  %2082 = and i32 %2081, 254
  %2083 = call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %2080, align 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2087, align 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2089 = icmp eq i64 %2077, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %2088, align 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2092 = lshr i64 %2077, 63
  %2093 = trunc i64 %2092 to i8
  store i8 %2093, i8* %2091, align 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2094, align 1
  store %struct.Memory* %loadMem_41699f, %struct.Memory** %MEMORY
  %loadMem_4169a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 7
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RDX.i656 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 9
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RSI.i657 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RDX.i656
  %2105 = load i64, i64* %RSI.i657
  %2106 = load i64, i64* %PC.i655
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i655
  %2108 = add i64 %2105, %2104
  store i64 %2108, i64* %RDX.i656, align 8
  %2109 = icmp ult i64 %2108, %2104
  %2110 = icmp ult i64 %2108, %2105
  %2111 = or i1 %2109, %2110
  %2112 = zext i1 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2112, i8* %2113, align 1
  %2114 = trunc i64 %2108 to i32
  %2115 = and i32 %2114, 255
  %2116 = call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2119, i8* %2120, align 1
  %2121 = xor i64 %2105, %2104
  %2122 = xor i64 %2121, %2108
  %2123 = lshr i64 %2122, 4
  %2124 = trunc i64 %2123 to i8
  %2125 = and i8 %2124, 1
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2125, i8* %2126, align 1
  %2127 = icmp eq i64 %2108, 0
  %2128 = zext i1 %2127 to i8
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2128, i8* %2129, align 1
  %2130 = lshr i64 %2108, 63
  %2131 = trunc i64 %2130 to i8
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2131, i8* %2132, align 1
  %2133 = lshr i64 %2104, 63
  %2134 = lshr i64 %2105, 63
  %2135 = xor i64 %2130, %2133
  %2136 = xor i64 %2130, %2134
  %2137 = add i64 %2135, %2136
  %2138 = icmp eq i64 %2137, 2
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2139, i8* %2140, align 1
  store %struct.Memory* %loadMem_4169a3, %struct.Memory** %MEMORY
  %loadMem_4169a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 7
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RDX.i653 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 11
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RDI.i654 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RDX.i653
  %2151 = load i64, i64* %PC.i652
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC.i652
  %2153 = inttoptr i64 %2150 to i64*
  %2154 = load i64, i64* %2153
  store i64 %2154, i64* %RDI.i654, align 8
  store %struct.Memory* %loadMem_4169a6, %struct.Memory** %MEMORY
  %loadMem_4169a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 5
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 15
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %RBP.i651
  %2165 = sub i64 %2164, 88
  %2166 = load i64, i64* %RCX.i650
  %2167 = load i64, i64* %PC.i649
  %2168 = add i64 %2167, 4
  store i64 %2168, i64* %PC.i649
  %2169 = inttoptr i64 %2165 to i64*
  store i64 %2166, i64* %2169
  store %struct.Memory* %loadMem_4169a9, %struct.Memory** %MEMORY
  %loadMem1_4169ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %PC.i648
  %2174 = add i64 %2173, -87373
  %2175 = load i64, i64* %PC.i648
  %2176 = add i64 %2175, 5
  %2177 = load i64, i64* %PC.i648
  %2178 = add i64 %2177, 5
  store i64 %2178, i64* %PC.i648
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2180 = load i64, i64* %2179, align 8
  %2181 = add i64 %2180, -8
  %2182 = inttoptr i64 %2181 to i64*
  store i64 %2176, i64* %2182
  store i64 %2181, i64* %2179, align 8
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2174, i64* %2183, align 8
  store %struct.Memory* %loadMem1_4169ad, %struct.Memory** %MEMORY
  %loadMem2_4169ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4169ad = load i64, i64* %3
  %2184 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_4169ad)
  store %struct.Memory* %2184, %struct.Memory** %MEMORY
  %loadMem_4169b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 5
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 15
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %RBP.i644
  %2195 = sub i64 %2194, 88
  %2196 = load i64, i64* %PC.i642
  %2197 = add i64 %2196, 4
  store i64 %2197, i64* %PC.i642
  %2198 = inttoptr i64 %2195 to i64*
  %2199 = load i64, i64* %2198
  store i64 %2199, i64* %RCX.i643, align 8
  store %struct.Memory* %loadMem_4169b2, %struct.Memory** %MEMORY
  %loadMem_4169b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 1
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 5
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %RCX.i641
  %2210 = load i64, i64* %RAX.i640
  %2211 = load i64, i64* %PC.i639
  %2212 = add i64 %2211, 3
  store i64 %2212, i64* %PC.i639
  %2213 = sub i64 %2209, %2210
  %2214 = icmp ult i64 %2209, %2210
  %2215 = zext i1 %2214 to i8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2215, i8* %2216, align 1
  %2217 = trunc i64 %2213 to i32
  %2218 = and i32 %2217, 255
  %2219 = call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2222, i8* %2223, align 1
  %2224 = xor i64 %2210, %2209
  %2225 = xor i64 %2224, %2213
  %2226 = lshr i64 %2225, 4
  %2227 = trunc i64 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2228, i8* %2229, align 1
  %2230 = icmp eq i64 %2213, 0
  %2231 = zext i1 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2231, i8* %2232, align 1
  %2233 = lshr i64 %2213, 63
  %2234 = trunc i64 %2233 to i8
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2234, i8* %2235, align 1
  %2236 = lshr i64 %2209, 63
  %2237 = lshr i64 %2210, 63
  %2238 = xor i64 %2237, %2236
  %2239 = xor i64 %2233, %2236
  %2240 = add i64 %2239, %2238
  %2241 = icmp eq i64 %2240, 2
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2242, i8* %2243, align 1
  store %struct.Memory* %loadMem_4169b6, %struct.Memory** %MEMORY
  %loadMem_4169b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %PC.i638
  %2248 = add i64 %2247, 11
  %2249 = load i64, i64* %PC.i638
  %2250 = add i64 %2249, 6
  %2251 = load i64, i64* %PC.i638
  %2252 = add i64 %2251, 6
  store i64 %2252, i64* %PC.i638
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2254 = load i8, i8* %2253, align 1
  %2255 = icmp eq i8 %2254, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %BRANCH_TAKEN, align 1
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2258 = select i1 %2255, i64 %2248, i64 %2250
  store i64 %2258, i64* %2257, align 8
  store %struct.Memory* %loadMem_4169b9, %struct.Memory** %MEMORY
  %loadBr_4169b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4169b9 = icmp eq i8 %loadBr_4169b9, 1
  br i1 %cmpBr_4169b9, label %block_.L_4169c4, label %block_4169bf

block_4169bf:                                     ; preds = %block_416984
  %loadMem_4169bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %PC.i637
  %2263 = add i64 %2262, 29
  %2264 = load i64, i64* %PC.i637
  %2265 = add i64 %2264, 5
  store i64 %2265, i64* %PC.i637
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2263, i64* %2266, align 8
  store %struct.Memory* %loadMem_4169bf, %struct.Memory** %MEMORY
  br label %block_.L_4169dc

block_.L_4169c4:                                  ; preds = %block_416984
  %loadMem_4169c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2269 to i64*
  %2270 = load i64, i64* %PC.i636
  %2271 = add i64 %2270, 5
  %2272 = load i64, i64* %PC.i636
  %2273 = add i64 %2272, 5
  store i64 %2273, i64* %PC.i636
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2271, i64* %2274, align 8
  store %struct.Memory* %loadMem_4169c4, %struct.Memory** %MEMORY
  br label %block_.L_4169c9

block_.L_4169c9:                                  ; preds = %block_.L_4169c4, %block_416950, %block_416937
  %loadMem_4169c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %PC.i635
  %2279 = add i64 %2278, 5
  %2280 = load i64, i64* %PC.i635
  %2281 = add i64 %2280, 5
  store i64 %2281, i64* %PC.i635
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2279, i64* %2282, align 8
  store %struct.Memory* %loadMem_4169c9, %struct.Memory** %MEMORY
  br label %block_.L_4169ce

block_.L_4169ce:                                  ; preds = %block_.L_4169c9
  %loadMem_4169ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 1
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 15
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RBP.i634
  %2293 = sub i64 %2292, 68
  %2294 = load i64, i64* %PC.i632
  %2295 = add i64 %2294, 3
  store i64 %2295, i64* %PC.i632
  %2296 = inttoptr i64 %2293 to i32*
  %2297 = load i32, i32* %2296
  %2298 = zext i32 %2297 to i64
  store i64 %2298, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_4169ce, %struct.Memory** %MEMORY
  %loadMem_4169d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %RAX.i631
  %2306 = load i64, i64* %PC.i630
  %2307 = add i64 %2306, 3
  store i64 %2307, i64* %PC.i630
  %2308 = trunc i64 %2305 to i32
  %2309 = add i32 1, %2308
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RAX.i631, align 8
  %2311 = icmp ult i32 %2309, %2308
  %2312 = icmp ult i32 %2309, 1
  %2313 = or i1 %2311, %2312
  %2314 = zext i1 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2314, i8* %2315, align 1
  %2316 = and i32 %2309, 255
  %2317 = call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2320, i8* %2321, align 1
  %2322 = xor i64 1, %2305
  %2323 = trunc i64 %2322 to i32
  %2324 = xor i32 %2323, %2309
  %2325 = lshr i32 %2324, 4
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2327, i8* %2328, align 1
  %2329 = icmp eq i32 %2309, 0
  %2330 = zext i1 %2329 to i8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2330, i8* %2331, align 1
  %2332 = lshr i32 %2309, 31
  %2333 = trunc i32 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2333, i8* %2334, align 1
  %2335 = lshr i32 %2308, 31
  %2336 = xor i32 %2332, %2335
  %2337 = add i32 %2336, %2332
  %2338 = icmp eq i32 %2337, 2
  %2339 = zext i1 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2339, i8* %2340, align 1
  store %struct.Memory* %loadMem_4169d1, %struct.Memory** %MEMORY
  %loadMem_4169d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 1
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %2346 to i32*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 15
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %RBP.i629
  %2351 = sub i64 %2350, 68
  %2352 = load i32, i32* %EAX.i628
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %PC.i627
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC.i627
  %2356 = inttoptr i64 %2351 to i32*
  store i32 %2352, i32* %2356
  store %struct.Memory* %loadMem_4169d4, %struct.Memory** %MEMORY
  %loadMem_4169d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %PC.i626
  %2361 = add i64 %2360, -172
  %2362 = load i64, i64* %PC.i626
  %2363 = add i64 %2362, 5
  store i64 %2363, i64* %PC.i626
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2361, i64* %2364, align 8
  store %struct.Memory* %loadMem_4169d7, %struct.Memory** %MEMORY
  br label %block_.L_41692b

block_.L_4169dc:                                  ; preds = %block_4169bf, %block_.L_41692b
  %loadMem_4169dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 15
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RBP.i625
  %2372 = sub i64 %2371, 76
  %2373 = load i64, i64* %PC.i624
  %2374 = add i64 %2373, 4
  store i64 %2374, i64* %PC.i624
  %2375 = inttoptr i64 %2372 to i32*
  %2376 = load i32, i32* %2375
  %2377 = sub i32 %2376, 1
  %2378 = icmp ult i32 %2376, 1
  %2379 = zext i1 %2378 to i8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2379, i8* %2380, align 1
  %2381 = and i32 %2377, 255
  %2382 = call i32 @llvm.ctpop.i32(i32 %2381)
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = xor i8 %2384, 1
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2385, i8* %2386, align 1
  %2387 = xor i32 %2376, 1
  %2388 = xor i32 %2387, %2377
  %2389 = lshr i32 %2388, 4
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2391, i8* %2392, align 1
  %2393 = icmp eq i32 %2377, 0
  %2394 = zext i1 %2393 to i8
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2394, i8* %2395, align 1
  %2396 = lshr i32 %2377, 31
  %2397 = trunc i32 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2397, i8* %2398, align 1
  %2399 = lshr i32 %2376, 31
  %2400 = xor i32 %2396, %2399
  %2401 = add i32 %2400, %2399
  %2402 = icmp eq i32 %2401, 2
  %2403 = zext i1 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2403, i8* %2404, align 1
  store %struct.Memory* %loadMem_4169dc, %struct.Memory** %MEMORY
  %loadMem_4169e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %PC.i623
  %2409 = add i64 %2408, 87
  %2410 = load i64, i64* %PC.i623
  %2411 = add i64 %2410, 6
  %2412 = load i64, i64* %PC.i623
  %2413 = add i64 %2412, 6
  store i64 %2413, i64* %PC.i623
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2415 = load i8, i8* %2414, align 1
  %2416 = icmp ne i8 %2415, 0
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2418 = load i8, i8* %2417, align 1
  %2419 = icmp ne i8 %2418, 0
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2421 = load i8, i8* %2420, align 1
  %2422 = icmp ne i8 %2421, 0
  %2423 = xor i1 %2419, %2422
  %2424 = or i1 %2416, %2423
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %BRANCH_TAKEN, align 1
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2427 = select i1 %2424, i64 %2409, i64 %2411
  store i64 %2427, i64* %2426, align 8
  store %struct.Memory* %loadMem_4169e0, %struct.Memory** %MEMORY
  %loadBr_4169e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4169e0 = icmp eq i8 %loadBr_4169e0, 1
  br i1 %cmpBr_4169e0, label %block_.L_416a37, label %block_4169e6

block_4169e6:                                     ; preds = %block_.L_4169dc
  %loadMem_4169e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 1
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 15
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %RBP.i622
  %2438 = sub i64 %2437, 72
  %2439 = load i64, i64* %PC.i620
  %2440 = add i64 %2439, 4
  store i64 %2440, i64* %PC.i620
  %2441 = inttoptr i64 %2438 to i32*
  %2442 = load i32, i32* %2441
  %2443 = sext i32 %2442 to i64
  store i64 %2443, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_4169e6, %struct.Memory** %MEMORY
  %loadMem_4169ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 5
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RBP.i619
  %2454 = sub i64 %2453, 24
  %2455 = load i64, i64* %PC.i617
  %2456 = add i64 %2455, 4
  store i64 %2456, i64* %PC.i617
  %2457 = inttoptr i64 %2454 to i64*
  %2458 = load i64, i64* %2457
  store i64 %2458, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_4169ea, %struct.Memory** %MEMORY
  %loadMem_4169ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 7
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RDX.i615 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RBP.i616
  %2469 = sub i64 %2468, 68
  %2470 = load i64, i64* %PC.i614
  %2471 = add i64 %2470, 4
  store i64 %2471, i64* %PC.i614
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = sext i32 %2473 to i64
  store i64 %2474, i64* %RDX.i615, align 8
  store %struct.Memory* %loadMem_4169ee, %struct.Memory** %MEMORY
  %loadMem_4169f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 7
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %RDX.i613
  %2482 = load i64, i64* %PC.i612
  %2483 = add i64 %2482, 4
  store i64 %2483, i64* %PC.i612
  %2484 = shl i64 %2481, 3
  %2485 = icmp slt i64 %2484, 0
  %2486 = shl i64 %2484, 1
  store i64 %2486, i64* %RDX.i613, align 8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2488 = zext i1 %2485 to i8
  store i8 %2488, i8* %2487, align 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2490 = trunc i64 %2486 to i32
  %2491 = and i32 %2490, 254
  %2492 = call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  store i8 %2495, i8* %2489, align 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2496, align 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2498 = icmp eq i64 %2486, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %2497, align 1
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2501 = lshr i64 %2486, 63
  %2502 = trunc i64 %2501 to i8
  store i8 %2502, i8* %2500, align 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2503, align 1
  store %struct.Memory* %loadMem_4169f2, %struct.Memory** %MEMORY
  %loadMem_4169f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 5
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 7
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RDX.i611 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RCX.i610
  %2514 = load i64, i64* %RDX.i611
  %2515 = load i64, i64* %PC.i609
  %2516 = add i64 %2515, 3
  store i64 %2516, i64* %PC.i609
  %2517 = add i64 %2514, %2513
  store i64 %2517, i64* %RCX.i610, align 8
  %2518 = icmp ult i64 %2517, %2513
  %2519 = icmp ult i64 %2517, %2514
  %2520 = or i1 %2518, %2519
  %2521 = zext i1 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2521, i8* %2522, align 1
  %2523 = trunc i64 %2517 to i32
  %2524 = and i32 %2523, 255
  %2525 = call i32 @llvm.ctpop.i32(i32 %2524)
  %2526 = trunc i32 %2525 to i8
  %2527 = and i8 %2526, 1
  %2528 = xor i8 %2527, 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2528, i8* %2529, align 1
  %2530 = xor i64 %2514, %2513
  %2531 = xor i64 %2530, %2517
  %2532 = lshr i64 %2531, 4
  %2533 = trunc i64 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2534, i8* %2535, align 1
  %2536 = icmp eq i64 %2517, 0
  %2537 = zext i1 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2537, i8* %2538, align 1
  %2539 = lshr i64 %2517, 63
  %2540 = trunc i64 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2540, i8* %2541, align 1
  %2542 = lshr i64 %2513, 63
  %2543 = lshr i64 %2514, 63
  %2544 = xor i64 %2539, %2542
  %2545 = xor i64 %2539, %2543
  %2546 = add i64 %2544, %2545
  %2547 = icmp eq i64 %2546, 2
  %2548 = zext i1 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2548, i8* %2549, align 1
  store %struct.Memory* %loadMem_4169f6, %struct.Memory** %MEMORY
  %loadMem_4169f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 5
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 11
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RDI.i608 = bitcast %union.anon* %2558 to i64*
  %2559 = load i64, i64* %RCX.i607
  %2560 = load i64, i64* %PC.i606
  %2561 = add i64 %2560, 3
  store i64 %2561, i64* %PC.i606
  %2562 = inttoptr i64 %2559 to i64*
  %2563 = load i64, i64* %2562
  store i64 %2563, i64* %RDI.i608, align 8
  store %struct.Memory* %loadMem_4169f9, %struct.Memory** %MEMORY
  %loadMem_4169fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RBP.i605
  %2574 = sub i64 %2573, 96
  %2575 = load i64, i64* %RAX.i604
  %2576 = load i64, i64* %PC.i603
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %PC.i603
  %2578 = inttoptr i64 %2574 to i64*
  store i64 %2575, i64* %2578
  store %struct.Memory* %loadMem_4169fc, %struct.Memory** %MEMORY
  %loadMem1_416a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2581 to i64*
  %2582 = load i64, i64* %PC.i602
  %2583 = add i64 %2582, -87456
  %2584 = load i64, i64* %PC.i602
  %2585 = add i64 %2584, 5
  %2586 = load i64, i64* %PC.i602
  %2587 = add i64 %2586, 5
  store i64 %2587, i64* %PC.i602
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2589 = load i64, i64* %2588, align 8
  %2590 = add i64 %2589, -8
  %2591 = inttoptr i64 %2590 to i64*
  store i64 %2585, i64* %2591
  store i64 %2590, i64* %2588, align 8
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2583, i64* %2592, align 8
  store %struct.Memory* %loadMem1_416a00, %struct.Memory** %MEMORY
  %loadMem2_416a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a00 = load i64, i64* %3
  %2593 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_416a00)
  store %struct.Memory* %2593, %struct.Memory** %MEMORY
  %loadMem_416a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 5
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 15
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %RBP.i599
  %2604 = sub i64 %2603, 96
  %2605 = load i64, i64* %PC.i597
  %2606 = add i64 %2605, 4
  store i64 %2606, i64* %PC.i597
  %2607 = inttoptr i64 %2604 to i64*
  %2608 = load i64, i64* %2607
  store i64 %2608, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_416a05, %struct.Memory** %MEMORY
  %loadMem_416a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 5
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RCX.i596
  %2619 = load i64, i64* %RAX.i595
  %2620 = load i64, i64* %PC.i594
  %2621 = add i64 %2620, 3
  store i64 %2621, i64* %PC.i594
  %2622 = sub i64 %2618, %2619
  %2623 = icmp ult i64 %2618, %2619
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2624, i8* %2625, align 1
  %2626 = trunc i64 %2622 to i32
  %2627 = and i32 %2626, 255
  %2628 = call i32 @llvm.ctpop.i32(i32 %2627)
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2631, i8* %2632, align 1
  %2633 = xor i64 %2619, %2618
  %2634 = xor i64 %2633, %2622
  %2635 = lshr i64 %2634, 4
  %2636 = trunc i64 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2637, i8* %2638, align 1
  %2639 = icmp eq i64 %2622, 0
  %2640 = zext i1 %2639 to i8
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2640, i8* %2641, align 1
  %2642 = lshr i64 %2622, 63
  %2643 = trunc i64 %2642 to i8
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2643, i8* %2644, align 1
  %2645 = lshr i64 %2618, 63
  %2646 = lshr i64 %2619, 63
  %2647 = xor i64 %2646, %2645
  %2648 = xor i64 %2642, %2645
  %2649 = add i64 %2648, %2647
  %2650 = icmp eq i64 %2649, 2
  %2651 = zext i1 %2650 to i8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2651, i8* %2652, align 1
  store %struct.Memory* %loadMem_416a09, %struct.Memory** %MEMORY
  %loadMem_416a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %PC.i593
  %2657 = add i64 %2656, 43
  %2658 = load i64, i64* %PC.i593
  %2659 = add i64 %2658, 6
  %2660 = load i64, i64* %PC.i593
  %2661 = add i64 %2660, 6
  store i64 %2661, i64* %PC.i593
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2663 = load i8, i8* %2662, align 1
  store i8 %2663, i8* %BRANCH_TAKEN, align 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2665 = icmp ne i8 %2663, 0
  %2666 = select i1 %2665, i64 %2657, i64 %2659
  store i64 %2666, i64* %2664, align 8
  store %struct.Memory* %loadMem_416a0c, %struct.Memory** %MEMORY
  %loadBr_416a0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a0c = icmp eq i8 %loadBr_416a0c, 1
  br i1 %cmpBr_416a0c, label %block_.L_416a37, label %block_416a12

block_416a12:                                     ; preds = %block_4169e6
  %loadMem_416a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 11
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RDI.i592 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %PC.i591
  %2674 = add i64 %2673, 10
  store i64 %2674, i64* %PC.i591
  store i64 ptrtoint (%G__0x456a2a_type* @G__0x456a2a to i64), i64* %RDI.i592, align 8
  store %struct.Memory* %loadMem_416a12, %struct.Memory** %MEMORY
  %loadMem_416a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RBP.i590
  %2685 = sub i64 %2684, 16
  %2686 = load i64, i64* %PC.i588
  %2687 = add i64 %2686, 4
  store i64 %2687, i64* %PC.i588
  %2688 = inttoptr i64 %2685 to i64*
  %2689 = load i64, i64* %2688
  store i64 %2689, i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_416a1c, %struct.Memory** %MEMORY
  %loadMem_416a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 5
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %PC.i586
  %2697 = add i64 %2696, 8
  store i64 %2697, i64* %PC.i586
  %2698 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %2699 = sext i32 %2698 to i64
  store i64 %2699, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_416a20, %struct.Memory** %MEMORY
  %loadMem_416a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 1
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 5
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 9
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RSI.i585 = bitcast %union.anon* %2711 to i64*
  %2712 = load i64, i64* %RAX.i583
  %2713 = load i64, i64* %RCX.i584
  %2714 = mul i64 %2713, 8
  %2715 = add i64 %2714, %2712
  %2716 = load i64, i64* %PC.i582
  %2717 = add i64 %2716, 4
  store i64 %2717, i64* %PC.i582
  %2718 = inttoptr i64 %2715 to i64*
  %2719 = load i64, i64* %2718
  store i64 %2719, i64* %RSI.i585, align 8
  store %struct.Memory* %loadMem_416a28, %struct.Memory** %MEMORY
  %loadMem_416a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 7
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RDX.i580 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 15
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %2728 to i64*
  %2729 = load i64, i64* %RBP.i581
  %2730 = sub i64 %2729, 40
  %2731 = load i64, i64* %PC.i579
  %2732 = add i64 %2731, 4
  store i64 %2732, i64* %PC.i579
  %2733 = inttoptr i64 %2730 to i64*
  %2734 = load i64, i64* %2733
  store i64 %2734, i64* %RDX.i580, align 8
  store %struct.Memory* %loadMem_416a2c, %struct.Memory** %MEMORY
  %loadMem_416a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %2741 = bitcast %union.anon* %2740 to %struct.anon.2*
  %AL.i578 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2741, i32 0, i32 0
  %2742 = load i64, i64* %PC.i577
  %2743 = add i64 %2742, 2
  store i64 %2743, i64* %PC.i577
  store i8 0, i8* %AL.i578, align 1
  store %struct.Memory* %loadMem_416a30, %struct.Memory** %MEMORY
  %loadMem1_416a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %PC.i576
  %2748 = add i64 %2747, 163806
  %2749 = load i64, i64* %PC.i576
  %2750 = add i64 %2749, 5
  %2751 = load i64, i64* %PC.i576
  %2752 = add i64 %2751, 5
  store i64 %2752, i64* %PC.i576
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2754 = load i64, i64* %2753, align 8
  %2755 = add i64 %2754, -8
  %2756 = inttoptr i64 %2755 to i64*
  store i64 %2750, i64* %2756
  store i64 %2755, i64* %2753, align 8
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2748, i64* %2757, align 8
  store %struct.Memory* %loadMem1_416a32, %struct.Memory** %MEMORY
  %loadMem2_416a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a32 = load i64, i64* %3
  %call2_416a32 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416a32, %struct.Memory* %loadMem2_416a32)
  store %struct.Memory* %call2_416a32, %struct.Memory** %MEMORY
  br label %block_.L_416a37

block_.L_416a37:                                  ; preds = %block_416a12, %block_4169e6, %block_.L_4169dc
  %loadMem_416a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 15
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RBP.i575
  %2765 = sub i64 %2764, 76
  %2766 = load i64, i64* %PC.i574
  %2767 = add i64 %2766, 4
  store i64 %2767, i64* %PC.i574
  %2768 = inttoptr i64 %2765 to i32*
  %2769 = load i32, i32* %2768
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2770, align 1
  %2771 = and i32 %2769, 255
  %2772 = call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2775, i8* %2776, align 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2777, align 1
  %2778 = icmp eq i32 %2769, 0
  %2779 = zext i1 %2778 to i8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2779, i8* %2780, align 1
  %2781 = lshr i32 %2769, 31
  %2782 = trunc i32 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2782, i8* %2783, align 1
  %2784 = lshr i32 %2769, 31
  %2785 = xor i32 %2781, %2784
  %2786 = add i32 %2785, %2784
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2788, i8* %2789, align 1
  store %struct.Memory* %loadMem_416a37, %struct.Memory** %MEMORY
  %loadMem_416a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %PC.i573
  %2794 = add i64 %2793, 43
  %2795 = load i64, i64* %PC.i573
  %2796 = add i64 %2795, 6
  %2797 = load i64, i64* %PC.i573
  %2798 = add i64 %2797, 6
  store i64 %2798, i64* %PC.i573
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2800 = load i8, i8* %2799, align 1
  %2801 = icmp eq i8 %2800, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %BRANCH_TAKEN, align 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2804 = select i1 %2801, i64 %2794, i64 %2796
  store i64 %2804, i64* %2803, align 8
  store %struct.Memory* %loadMem_416a3b, %struct.Memory** %MEMORY
  %loadBr_416a3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a3b = icmp eq i8 %loadBr_416a3b, 1
  br i1 %cmpBr_416a3b, label %block_.L_416a66, label %block_416a41

block_416a41:                                     ; preds = %block_.L_416a37
  %loadMem_416a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 11
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RDI.i572 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %PC.i571
  %2812 = add i64 %2811, 10
  store i64 %2812, i64* %PC.i571
  store i64 ptrtoint (%G__0x456a60_type* @G__0x456a60 to i64), i64* %RDI.i572, align 8
  store %struct.Memory* %loadMem_416a41, %struct.Memory** %MEMORY
  %loadMem_416a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 1
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 15
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RBP.i570
  %2823 = sub i64 %2822, 16
  %2824 = load i64, i64* %PC.i568
  %2825 = add i64 %2824, 4
  store i64 %2825, i64* %PC.i568
  %2826 = inttoptr i64 %2823 to i64*
  %2827 = load i64, i64* %2826
  store i64 %2827, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_416a4b, %struct.Memory** %MEMORY
  %loadMem_416a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 5
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %2833 to i64*
  %2834 = load i64, i64* %PC.i566
  %2835 = add i64 %2834, 8
  store i64 %2835, i64* %PC.i566
  %2836 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %2837 = sext i32 %2836 to i64
  store i64 %2837, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_416a4f, %struct.Memory** %MEMORY
  %loadMem_416a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 1
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 5
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 9
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RSI.i565 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %RAX.i563
  %2851 = load i64, i64* %RCX.i564
  %2852 = mul i64 %2851, 8
  %2853 = add i64 %2852, %2850
  %2854 = load i64, i64* %PC.i562
  %2855 = add i64 %2854, 4
  store i64 %2855, i64* %PC.i562
  %2856 = inttoptr i64 %2853 to i64*
  %2857 = load i64, i64* %2856
  store i64 %2857, i64* %RSI.i565, align 8
  store %struct.Memory* %loadMem_416a57, %struct.Memory** %MEMORY
  %loadMem_416a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 7
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 15
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %RBP.i561
  %2868 = sub i64 %2867, 40
  %2869 = load i64, i64* %PC.i559
  %2870 = add i64 %2869, 4
  store i64 %2870, i64* %PC.i559
  %2871 = inttoptr i64 %2868 to i64*
  %2872 = load i64, i64* %2871
  store i64 %2872, i64* %RDX.i560, align 8
  store %struct.Memory* %loadMem_416a5b, %struct.Memory** %MEMORY
  %loadMem_416a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 1
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %2879 = bitcast %union.anon* %2878 to %struct.anon.2*
  %AL.i558 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2879, i32 0, i32 0
  %2880 = load i64, i64* %PC.i557
  %2881 = add i64 %2880, 2
  store i64 %2881, i64* %PC.i557
  store i8 0, i8* %AL.i558, align 1
  store %struct.Memory* %loadMem_416a5f, %struct.Memory** %MEMORY
  %loadMem1_416a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 33
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %PC.i556
  %2886 = add i64 %2885, 163759
  %2887 = load i64, i64* %PC.i556
  %2888 = add i64 %2887, 5
  %2889 = load i64, i64* %PC.i556
  %2890 = add i64 %2889, 5
  store i64 %2890, i64* %PC.i556
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2892 = load i64, i64* %2891, align 8
  %2893 = add i64 %2892, -8
  %2894 = inttoptr i64 %2893 to i64*
  store i64 %2888, i64* %2894
  store i64 %2893, i64* %2891, align 8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2886, i64* %2895, align 8
  store %struct.Memory* %loadMem1_416a61, %struct.Memory** %MEMORY
  %loadMem2_416a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a61 = load i64, i64* %3
  %call2_416a61 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416a61, %struct.Memory* %loadMem2_416a61)
  store %struct.Memory* %call2_416a61, %struct.Memory** %MEMORY
  br label %block_.L_416a66

block_.L_416a66:                                  ; preds = %block_416a41, %block_.L_416a37
  %loadMem_416a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 1
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 15
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %RBP.i555
  %2906 = sub i64 %2905, 24
  %2907 = load i64, i64* %PC.i553
  %2908 = add i64 %2907, 4
  store i64 %2908, i64* %PC.i553
  %2909 = inttoptr i64 %2906 to i64*
  %2910 = load i64, i64* %2909
  store i64 %2910, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_416a66, %struct.Memory** %MEMORY
  %loadMem_416a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 15
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RBP.i552
  %2921 = sub i64 %2920, 80
  %2922 = load i64, i64* %PC.i550
  %2923 = add i64 %2922, 4
  store i64 %2923, i64* %PC.i550
  %2924 = inttoptr i64 %2921 to i32*
  %2925 = load i32, i32* %2924
  %2926 = sext i32 %2925 to i64
  store i64 %2926, i64* %RCX.i551, align 8
  store %struct.Memory* %loadMem_416a6a, %struct.Memory** %MEMORY
  %loadMem_416a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 5
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %RCX.i549
  %2934 = load i64, i64* %PC.i548
  %2935 = add i64 %2934, 4
  store i64 %2935, i64* %PC.i548
  %2936 = shl i64 %2933, 3
  %2937 = icmp slt i64 %2936, 0
  %2938 = shl i64 %2936, 1
  store i64 %2938, i64* %RCX.i549, align 8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2940 = zext i1 %2937 to i8
  store i8 %2940, i8* %2939, align 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2942 = trunc i64 %2938 to i32
  %2943 = and i32 %2942, 254
  %2944 = call i32 @llvm.ctpop.i32(i32 %2943)
  %2945 = trunc i32 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = xor i8 %2946, 1
  store i8 %2947, i8* %2941, align 1
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2948, align 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2950 = icmp eq i64 %2938, 0
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %2949, align 1
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2953 = lshr i64 %2938, 63
  %2954 = trunc i64 %2953 to i8
  store i8 %2954, i8* %2952, align 1
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2955, align 1
  store %struct.Memory* %loadMem_416a6e, %struct.Memory** %MEMORY
  %loadMem_416a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 1
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 5
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %RAX.i546
  %2966 = load i64, i64* %RCX.i547
  %2967 = load i64, i64* %PC.i545
  %2968 = add i64 %2967, 3
  store i64 %2968, i64* %PC.i545
  %2969 = add i64 %2966, %2965
  store i64 %2969, i64* %RAX.i546, align 8
  %2970 = icmp ult i64 %2969, %2965
  %2971 = icmp ult i64 %2969, %2966
  %2972 = or i1 %2970, %2971
  %2973 = zext i1 %2972 to i8
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2973, i8* %2974, align 1
  %2975 = trunc i64 %2969 to i32
  %2976 = and i32 %2975, 255
  %2977 = call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2980, i8* %2981, align 1
  %2982 = xor i64 %2966, %2965
  %2983 = xor i64 %2982, %2969
  %2984 = lshr i64 %2983, 4
  %2985 = trunc i64 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2986, i8* %2987, align 1
  %2988 = icmp eq i64 %2969, 0
  %2989 = zext i1 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2989, i8* %2990, align 1
  %2991 = lshr i64 %2969, 63
  %2992 = trunc i64 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2992, i8* %2993, align 1
  %2994 = lshr i64 %2965, 63
  %2995 = lshr i64 %2966, 63
  %2996 = xor i64 %2991, %2994
  %2997 = xor i64 %2991, %2995
  %2998 = add i64 %2996, %2997
  %2999 = icmp eq i64 %2998, 2
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3000, i8* %3001, align 1
  store %struct.Memory* %loadMem_416a72, %struct.Memory** %MEMORY
  %loadMem_416a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RAX.i544
  %3009 = load i64, i64* %PC.i543
  %3010 = add i64 %3009, 3
  store i64 %3010, i64* %PC.i543
  %3011 = inttoptr i64 %3008 to i64*
  %3012 = load i64, i64* %3011
  store i64 %3012, i64* %RAX.i544, align 8
  store %struct.Memory* %loadMem_416a75, %struct.Memory** %MEMORY
  %loadMem_416a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 5
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 15
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RBP.i542
  %3023 = sub i64 %3022, 56
  %3024 = load i64, i64* %PC.i540
  %3025 = add i64 %3024, 4
  store i64 %3025, i64* %PC.i540
  %3026 = inttoptr i64 %3023 to i64*
  %3027 = load i64, i64* %3026
  store i64 %3027, i64* %RCX.i541, align 8
  store %struct.Memory* %loadMem_416a78, %struct.Memory** %MEMORY
  %loadMem_416a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 1
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 5
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %3036 to i64*
  %3037 = load i64, i64* %RCX.i539
  %3038 = load i64, i64* %RAX.i538
  %3039 = load i64, i64* %PC.i537
  %3040 = add i64 %3039, 3
  store i64 %3040, i64* %PC.i537
  %3041 = inttoptr i64 %3037 to i64*
  store i64 %3038, i64* %3041
  store %struct.Memory* %loadMem_416a7c, %struct.Memory** %MEMORY
  %loadMem_416a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i536
  %3052 = sub i64 %3051, 24
  %3053 = load i64, i64* %PC.i534
  %3054 = add i64 %3053, 4
  store i64 %3054, i64* %PC.i534
  %3055 = inttoptr i64 %3052 to i64*
  %3056 = load i64, i64* %3055
  store i64 %3056, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_416a7f, %struct.Memory** %MEMORY
  %loadMem_416a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 5
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RBP.i533
  %3067 = sub i64 %3066, 80
  %3068 = load i64, i64* %PC.i531
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %PC.i531
  %3070 = inttoptr i64 %3067 to i32*
  %3071 = load i32, i32* %3070
  %3072 = sext i32 %3071 to i64
  store i64 %3072, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_416a83, %struct.Memory** %MEMORY
  %loadMem_416a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 5
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %RCX.i530
  %3080 = load i64, i64* %PC.i529
  %3081 = add i64 %3080, 4
  store i64 %3081, i64* %PC.i529
  %3082 = shl i64 %3079, 3
  %3083 = icmp slt i64 %3082, 0
  %3084 = shl i64 %3082, 1
  store i64 %3084, i64* %RCX.i530, align 8
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3086 = zext i1 %3083 to i8
  store i8 %3086, i8* %3085, align 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3088 = trunc i64 %3084 to i32
  %3089 = and i32 %3088, 254
  %3090 = call i32 @llvm.ctpop.i32(i32 %3089)
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = xor i8 %3092, 1
  store i8 %3093, i8* %3087, align 1
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3094, align 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3096 = icmp eq i64 %3084, 0
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %3095, align 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3099 = lshr i64 %3084, 63
  %3100 = trunc i64 %3099 to i8
  store i8 %3100, i8* %3098, align 1
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3101, align 1
  store %struct.Memory* %loadMem_416a87, %struct.Memory** %MEMORY
  %loadMem_416a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 33
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 1
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 5
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %3110 to i64*
  %3111 = load i64, i64* %RAX.i527
  %3112 = load i64, i64* %RCX.i528
  %3113 = load i64, i64* %PC.i526
  %3114 = add i64 %3113, 3
  store i64 %3114, i64* %PC.i526
  %3115 = add i64 %3112, %3111
  store i64 %3115, i64* %RAX.i527, align 8
  %3116 = icmp ult i64 %3115, %3111
  %3117 = icmp ult i64 %3115, %3112
  %3118 = or i1 %3116, %3117
  %3119 = zext i1 %3118 to i8
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3119, i8* %3120, align 1
  %3121 = trunc i64 %3115 to i32
  %3122 = and i32 %3121, 255
  %3123 = call i32 @llvm.ctpop.i32(i32 %3122)
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3126, i8* %3127, align 1
  %3128 = xor i64 %3112, %3111
  %3129 = xor i64 %3128, %3115
  %3130 = lshr i64 %3129, 4
  %3131 = trunc i64 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3132, i8* %3133, align 1
  %3134 = icmp eq i64 %3115, 0
  %3135 = zext i1 %3134 to i8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3135, i8* %3136, align 1
  %3137 = lshr i64 %3115, 63
  %3138 = trunc i64 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3138, i8* %3139, align 1
  %3140 = lshr i64 %3111, 63
  %3141 = lshr i64 %3112, 63
  %3142 = xor i64 %3137, %3140
  %3143 = xor i64 %3137, %3141
  %3144 = add i64 %3142, %3143
  %3145 = icmp eq i64 %3144, 2
  %3146 = zext i1 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3146, i8* %3147, align 1
  store %struct.Memory* %loadMem_416a8b, %struct.Memory** %MEMORY
  %loadMem_416a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 1
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %RAX.i525
  %3155 = add i64 %3154, 12
  %3156 = load i64, i64* %PC.i524
  %3157 = add i64 %3156, 4
  store i64 %3157, i64* %PC.i524
  %3158 = inttoptr i64 %3155 to i32*
  %3159 = load i32, i32* %3158
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3160, align 1
  %3161 = and i32 %3159, 255
  %3162 = call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3165, i8* %3166, align 1
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3167, align 1
  %3168 = icmp eq i32 %3159, 0
  %3169 = zext i1 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3169, i8* %3170, align 1
  %3171 = lshr i32 %3159, 31
  %3172 = trunc i32 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3172, i8* %3173, align 1
  %3174 = lshr i32 %3159, 31
  %3175 = xor i32 %3171, %3174
  %3176 = add i32 %3175, %3174
  %3177 = icmp eq i32 %3176, 2
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3178, i8* %3179, align 1
  store %struct.Memory* %loadMem_416a8e, %struct.Memory** %MEMORY
  %loadMem_416a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %PC.i523
  %3184 = add i64 %3183, 188
  %3185 = load i64, i64* %PC.i523
  %3186 = add i64 %3185, 6
  %3187 = load i64, i64* %PC.i523
  %3188 = add i64 %3187, 6
  store i64 %3188, i64* %PC.i523
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3190 = load i8, i8* %3189, align 1
  store i8 %3190, i8* %BRANCH_TAKEN, align 1
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3192 = icmp ne i8 %3190, 0
  %3193 = select i1 %3192, i64 %3184, i64 %3186
  store i64 %3193, i64* %3191, align 8
  store %struct.Memory* %loadMem_416a92, %struct.Memory** %MEMORY
  %loadBr_416a92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a92 = icmp eq i8 %loadBr_416a92, 1
  br i1 %cmpBr_416a92, label %block_.L_416b4e, label %block_416a98

block_416a98:                                     ; preds = %block_.L_416a66
  %loadMem_416a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %PC.i522
  %3198 = add i64 %3197, 9
  store i64 %3198, i64* %PC.i522
  %3199 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3200, align 1
  %3201 = trunc i64 %3199 to i32
  %3202 = and i32 %3201, 255
  %3203 = call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3206, i8* %3207, align 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3208, align 1
  %3209 = icmp eq i64 %3199, 0
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3210, i8* %3211, align 1
  %3212 = lshr i64 %3199, 63
  %3213 = trunc i64 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3213, i8* %3214, align 1
  %3215 = lshr i64 %3199, 63
  %3216 = xor i64 %3212, %3215
  %3217 = add i64 %3216, %3215
  %3218 = icmp eq i64 %3217, 2
  %3219 = zext i1 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3219, i8* %3220, align 1
  store %struct.Memory* %loadMem_416a98, %struct.Memory** %MEMORY
  %loadMem_416aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %PC.i521
  %3225 = add i64 %3224, 55
  %3226 = load i64, i64* %PC.i521
  %3227 = add i64 %3226, 6
  %3228 = load i64, i64* %PC.i521
  %3229 = add i64 %3228, 6
  store i64 %3229, i64* %PC.i521
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3231 = load i8, i8* %3230, align 1
  store i8 %3231, i8* %BRANCH_TAKEN, align 1
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3233 = icmp ne i8 %3231, 0
  %3234 = select i1 %3233, i64 %3225, i64 %3227
  store i64 %3234, i64* %3232, align 8
  store %struct.Memory* %loadMem_416aa1, %struct.Memory** %MEMORY
  %loadBr_416aa1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416aa1 = icmp eq i8 %loadBr_416aa1, 1
  br i1 %cmpBr_416aa1, label %block_.L_416ad8, label %block_416aa7

block_416aa7:                                     ; preds = %block_416a98
  %loadMem_416aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 1
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %PC.i519
  %3242 = add i64 %3241, 8
  store i64 %3242, i64* %PC.i519
  %3243 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %3243, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_416aa7, %struct.Memory** %MEMORY
  %loadMem_416aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 5
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 15
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RBP.i518
  %3254 = sub i64 %3253, 64
  %3255 = load i64, i64* %PC.i516
  %3256 = add i64 %3255, 4
  store i64 %3256, i64* %PC.i516
  %3257 = inttoptr i64 %3254 to i64*
  %3258 = load i64, i64* %3257
  store i64 %3258, i64* %RCX.i517, align 8
  store %struct.Memory* %loadMem_416aaf, %struct.Memory** %MEMORY
  %loadMem_416ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 1
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 5
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RCX.i515
  %3269 = load i64, i64* %RAX.i514
  %3270 = load i64, i64* %PC.i513
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i513
  %3272 = inttoptr i64 %3268 to i64*
  store i64 %3269, i64* %3272
  store %struct.Memory* %loadMem_416ab3, %struct.Memory** %MEMORY
  %loadMem_416ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %PC.i512
  %3277 = add i64 %3276, 12
  store i64 %3277, i64* %PC.i512
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_416ab6, %struct.Memory** %MEMORY
  %loadMem_416ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 7
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %3283 to i64*
  %3284 = load i64, i64* %PC.i510
  %3285 = add i64 %3284, 7
  store i64 %3285, i64* %PC.i510
  %3286 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %3287 = zext i32 %3286 to i64
  store i64 %3287, i64* %RDX.i511, align 8
  store %struct.Memory* %loadMem_416ac2, %struct.Memory** %MEMORY
  %loadMem_416ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 7
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RDX.i509 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RDX.i509
  %3295 = load i64, i64* %PC.i508
  %3296 = add i64 %3295, 3
  store i64 %3296, i64* %PC.i508
  %3297 = trunc i64 %3294 to i32
  %3298 = add i32 1, %3297
  %3299 = zext i32 %3298 to i64
  store i64 %3299, i64* %RDX.i509, align 8
  %3300 = icmp ult i32 %3298, %3297
  %3301 = icmp ult i32 %3298, 1
  %3302 = or i1 %3300, %3301
  %3303 = zext i1 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3303, i8* %3304, align 1
  %3305 = and i32 %3298, 255
  %3306 = call i32 @llvm.ctpop.i32(i32 %3305)
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3309, i8* %3310, align 1
  %3311 = xor i64 1, %3294
  %3312 = trunc i64 %3311 to i32
  %3313 = xor i32 %3312, %3298
  %3314 = lshr i32 %3313, 4
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3316, i8* %3317, align 1
  %3318 = icmp eq i32 %3298, 0
  %3319 = zext i1 %3318 to i8
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3319, i8* %3320, align 1
  %3321 = lshr i32 %3298, 31
  %3322 = trunc i32 %3321 to i8
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3322, i8* %3323, align 1
  %3324 = lshr i32 %3297, 31
  %3325 = xor i32 %3321, %3324
  %3326 = add i32 %3325, %3321
  %3327 = icmp eq i32 %3326, 2
  %3328 = zext i1 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3328, i8* %3329, align 1
  store %struct.Memory* %loadMem_416ac9, %struct.Memory** %MEMORY
  %loadMem_416acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 7
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %EDX.i507 = bitcast %union.anon* %3335 to i32*
  %3336 = load i32, i32* %EDX.i507
  %3337 = zext i32 %3336 to i64
  %3338 = load i64, i64* %PC.i506
  %3339 = add i64 %3338, 7
  store i64 %3339, i64* %PC.i506
  store i32 %3336, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416acc, %struct.Memory** %MEMORY
  %loadMem_416ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3342 to i64*
  %3343 = load i64, i64* %PC.i505
  %3344 = add i64 %3343, 118
  %3345 = load i64, i64* %PC.i505
  %3346 = add i64 %3345, 5
  store i64 %3346, i64* %PC.i505
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3344, i64* %3347, align 8
  store %struct.Memory* %loadMem_416ad3, %struct.Memory** %MEMORY
  br label %block_.L_416b49

block_.L_416ad8:                                  ; preds = %block_416a98
  %loadMem_416ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 1
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %PC.i503
  %3355 = add i64 %3354, 7
  store i64 %3355, i64* %PC.i503
  %3356 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %3357 = zext i32 %3356 to i64
  store i64 %3357, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_416ad8, %struct.Memory** %MEMORY
  %loadMem_416adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 33
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 1
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %RAX.i502
  %3365 = load i64, i64* %PC.i501
  %3366 = add i64 %3365, 3
  store i64 %3366, i64* %PC.i501
  %3367 = trunc i64 %3364 to i32
  %3368 = add i32 1, %3367
  %3369 = zext i32 %3368 to i64
  store i64 %3369, i64* %RAX.i502, align 8
  %3370 = icmp ult i32 %3368, %3367
  %3371 = icmp ult i32 %3368, 1
  %3372 = or i1 %3370, %3371
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3373, i8* %3374, align 1
  %3375 = and i32 %3368, 255
  %3376 = call i32 @llvm.ctpop.i32(i32 %3375)
  %3377 = trunc i32 %3376 to i8
  %3378 = and i8 %3377, 1
  %3379 = xor i8 %3378, 1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3379, i8* %3380, align 1
  %3381 = xor i64 1, %3364
  %3382 = trunc i64 %3381 to i32
  %3383 = xor i32 %3382, %3368
  %3384 = lshr i32 %3383, 4
  %3385 = trunc i32 %3384 to i8
  %3386 = and i8 %3385, 1
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3386, i8* %3387, align 1
  %3388 = icmp eq i32 %3368, 0
  %3389 = zext i1 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3389, i8* %3390, align 1
  %3391 = lshr i32 %3368, 31
  %3392 = trunc i32 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3392, i8* %3393, align 1
  %3394 = lshr i32 %3367, 31
  %3395 = xor i32 %3391, %3394
  %3396 = add i32 %3395, %3391
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3398, i8* %3399, align 1
  store %struct.Memory* %loadMem_416adf, %struct.Memory** %MEMORY
  %loadMem_416ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 1
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %EAX.i499 = bitcast %union.anon* %3405 to i32*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 15
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3408 to i64*
  %3409 = load i32, i32* %EAX.i499
  %3410 = zext i32 %3409 to i64
  %3411 = load i64, i64* %RBP.i500
  %3412 = sub i64 %3411, 8
  %3413 = load i64, i64* %PC.i498
  %3414 = add i64 %3413, 3
  store i64 %3414, i64* %PC.i498
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = sub i32 %3409, %3416
  %3418 = icmp ult i32 %3409, %3416
  %3419 = zext i1 %3418 to i8
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3419, i8* %3420, align 1
  %3421 = and i32 %3417, 255
  %3422 = call i32 @llvm.ctpop.i32(i32 %3421)
  %3423 = trunc i32 %3422 to i8
  %3424 = and i8 %3423, 1
  %3425 = xor i8 %3424, 1
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3425, i8* %3426, align 1
  %3427 = xor i32 %3416, %3409
  %3428 = xor i32 %3427, %3417
  %3429 = lshr i32 %3428, 4
  %3430 = trunc i32 %3429 to i8
  %3431 = and i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3431, i8* %3432, align 1
  %3433 = icmp eq i32 %3417, 0
  %3434 = zext i1 %3433 to i8
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3434, i8* %3435, align 1
  %3436 = lshr i32 %3417, 31
  %3437 = trunc i32 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3437, i8* %3438, align 1
  %3439 = lshr i32 %3409, 31
  %3440 = lshr i32 %3416, 31
  %3441 = xor i32 %3440, %3439
  %3442 = xor i32 %3436, %3439
  %3443 = add i32 %3442, %3441
  %3444 = icmp eq i32 %3443, 2
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3445, i8* %3446, align 1
  store %struct.Memory* %loadMem_416ae2, %struct.Memory** %MEMORY
  %loadMem_416ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3449 to i64*
  %3450 = load i64, i64* %PC.i497
  %3451 = add i64 %3450, 50
  %3452 = load i64, i64* %PC.i497
  %3453 = add i64 %3452, 6
  %3454 = load i64, i64* %PC.i497
  %3455 = add i64 %3454, 6
  store i64 %3455, i64* %PC.i497
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3457 = load i8, i8* %3456, align 1
  %3458 = icmp ne i8 %3457, 0
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3460 = load i8, i8* %3459, align 1
  %3461 = icmp ne i8 %3460, 0
  %3462 = xor i1 %3458, %3461
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %BRANCH_TAKEN, align 1
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3465 = select i1 %3462, i64 %3451, i64 %3453
  store i64 %3465, i64* %3464, align 8
  store %struct.Memory* %loadMem_416ae5, %struct.Memory** %MEMORY
  %loadBr_416ae5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ae5 = icmp eq i8 %loadBr_416ae5, 1
  br i1 %cmpBr_416ae5, label %block_.L_416b17, label %block_416aeb

block_416aeb:                                     ; preds = %block_.L_416ad8
  %loadMem_416aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 11
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RDI.i496 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %PC.i495
  %3473 = add i64 %3472, 10
  store i64 %3473, i64* %PC.i495
  store i64 ptrtoint (%G__0x456a78_type* @G__0x456a78 to i64), i64* %RDI.i496, align 8
  store %struct.Memory* %loadMem_416aeb, %struct.Memory** %MEMORY
  %loadMem_416af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 15
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RBP.i494
  %3484 = sub i64 %3483, 24
  %3485 = load i64, i64* %PC.i492
  %3486 = add i64 %3485, 4
  store i64 %3486, i64* %PC.i492
  %3487 = inttoptr i64 %3484 to i64*
  %3488 = load i64, i64* %3487
  store i64 %3488, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_416af5, %struct.Memory** %MEMORY
  %loadMem_416af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 5
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 15
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RBP.i491
  %3499 = sub i64 %3498, 80
  %3500 = load i64, i64* %PC.i489
  %3501 = add i64 %3500, 4
  store i64 %3501, i64* %PC.i489
  %3502 = inttoptr i64 %3499 to i32*
  %3503 = load i32, i32* %3502
  %3504 = sext i32 %3503 to i64
  store i64 %3504, i64* %RCX.i490, align 8
  store %struct.Memory* %loadMem_416af9, %struct.Memory** %MEMORY
  %loadMem_416afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 5
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %3510 to i64*
  %3511 = load i64, i64* %RCX.i488
  %3512 = load i64, i64* %PC.i487
  %3513 = add i64 %3512, 4
  store i64 %3513, i64* %PC.i487
  %3514 = shl i64 %3511, 3
  %3515 = icmp slt i64 %3514, 0
  %3516 = shl i64 %3514, 1
  store i64 %3516, i64* %RCX.i488, align 8
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3518 = zext i1 %3515 to i8
  store i8 %3518, i8* %3517, align 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3520 = trunc i64 %3516 to i32
  %3521 = and i32 %3520, 254
  %3522 = call i32 @llvm.ctpop.i32(i32 %3521)
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  %3525 = xor i8 %3524, 1
  store i8 %3525, i8* %3519, align 1
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3526, align 1
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3528 = icmp eq i64 %3516, 0
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %3527, align 1
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3531 = lshr i64 %3516, 63
  %3532 = trunc i64 %3531 to i8
  store i8 %3532, i8* %3530, align 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3533, align 1
  store %struct.Memory* %loadMem_416afd, %struct.Memory** %MEMORY
  %loadMem_416b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 1
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 5
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %3542 to i64*
  %3543 = load i64, i64* %RAX.i485
  %3544 = load i64, i64* %RCX.i486
  %3545 = load i64, i64* %PC.i484
  %3546 = add i64 %3545, 3
  store i64 %3546, i64* %PC.i484
  %3547 = add i64 %3544, %3543
  store i64 %3547, i64* %RAX.i485, align 8
  %3548 = icmp ult i64 %3547, %3543
  %3549 = icmp ult i64 %3547, %3544
  %3550 = or i1 %3548, %3549
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3551, i8* %3552, align 1
  %3553 = trunc i64 %3547 to i32
  %3554 = and i32 %3553, 255
  %3555 = call i32 @llvm.ctpop.i32(i32 %3554)
  %3556 = trunc i32 %3555 to i8
  %3557 = and i8 %3556, 1
  %3558 = xor i8 %3557, 1
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3558, i8* %3559, align 1
  %3560 = xor i64 %3544, %3543
  %3561 = xor i64 %3560, %3547
  %3562 = lshr i64 %3561, 4
  %3563 = trunc i64 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3564, i8* %3565, align 1
  %3566 = icmp eq i64 %3547, 0
  %3567 = zext i1 %3566 to i8
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3567, i8* %3568, align 1
  %3569 = lshr i64 %3547, 63
  %3570 = trunc i64 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3570, i8* %3571, align 1
  %3572 = lshr i64 %3543, 63
  %3573 = lshr i64 %3544, 63
  %3574 = xor i64 %3569, %3572
  %3575 = xor i64 %3569, %3573
  %3576 = add i64 %3574, %3575
  %3577 = icmp eq i64 %3576, 2
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3578, i8* %3579, align 1
  store %struct.Memory* %loadMem_416b01, %struct.Memory** %MEMORY
  %loadMem_416b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 1
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 9
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RSI.i483 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RAX.i482
  %3590 = load i64, i64* %PC.i481
  %3591 = add i64 %3590, 3
  store i64 %3591, i64* %PC.i481
  %3592 = inttoptr i64 %3589 to i64*
  %3593 = load i64, i64* %3592
  store i64 %3593, i64* %RSI.i483, align 8
  store %struct.Memory* %loadMem_416b04, %struct.Memory** %MEMORY
  %loadMem_416b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 7
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 15
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RBP.i480
  %3604 = sub i64 %3603, 40
  %3605 = load i64, i64* %PC.i478
  %3606 = add i64 %3605, 4
  store i64 %3606, i64* %PC.i478
  %3607 = inttoptr i64 %3604 to i64*
  %3608 = load i64, i64* %3607
  store i64 %3608, i64* %RDX.i479, align 8
  store %struct.Memory* %loadMem_416b07, %struct.Memory** %MEMORY
  %loadMem_416b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 1
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %3615 = bitcast %union.anon* %3614 to %struct.anon.2*
  %AL.i477 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3615, i32 0, i32 0
  %3616 = load i64, i64* %PC.i476
  %3617 = add i64 %3616, 2
  store i64 %3617, i64* %PC.i476
  store i8 0, i8* %AL.i477, align 1
  store %struct.Memory* %loadMem_416b0b, %struct.Memory** %MEMORY
  %loadMem1_416b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 33
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %PC.i475
  %3622 = add i64 %3621, 163587
  %3623 = load i64, i64* %PC.i475
  %3624 = add i64 %3623, 5
  %3625 = load i64, i64* %PC.i475
  %3626 = add i64 %3625, 5
  store i64 %3626, i64* %PC.i475
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3628 = load i64, i64* %3627, align 8
  %3629 = add i64 %3628, -8
  %3630 = inttoptr i64 %3629 to i64*
  store i64 %3624, i64* %3630
  store i64 %3629, i64* %3627, align 8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3622, i64* %3631, align 8
  store %struct.Memory* %loadMem1_416b0d, %struct.Memory** %MEMORY
  %loadMem2_416b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416b0d = load i64, i64* %3
  %call2_416b0d = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416b0d, %struct.Memory* %loadMem2_416b0d)
  store %struct.Memory* %call2_416b0d, %struct.Memory** %MEMORY
  %loadMem_416b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 33
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %PC.i474
  %3636 = add i64 %3635, 50
  %3637 = load i64, i64* %PC.i474
  %3638 = add i64 %3637, 5
  store i64 %3638, i64* %PC.i474
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3636, i64* %3639, align 8
  store %struct.Memory* %loadMem_416b12, %struct.Memory** %MEMORY
  br label %block_.L_416b44

block_.L_416b17:                                  ; preds = %block_.L_416ad8
  %loadMem_416b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 33
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 1
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 15
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %3648 to i64*
  %3649 = load i64, i64* %RBP.i473
  %3650 = sub i64 %3649, 16
  %3651 = load i64, i64* %PC.i471
  %3652 = add i64 %3651, 4
  store i64 %3652, i64* %PC.i471
  %3653 = inttoptr i64 %3650 to i64*
  %3654 = load i64, i64* %3653
  store i64 %3654, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_416b17, %struct.Memory** %MEMORY
  %loadMem_416b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 5
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %3660 to i64*
  %3661 = load i64, i64* %PC.i469
  %3662 = add i64 %3661, 7
  store i64 %3662, i64* %PC.i469
  %3663 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %3664 = zext i32 %3663 to i64
  store i64 %3664, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_416b1b, %struct.Memory** %MEMORY
  %loadMem_416b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 33
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3667 to i64*
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 5
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %3670 to i64*
  %3671 = load i64, i64* %RCX.i468
  %3672 = load i64, i64* %PC.i467
  %3673 = add i64 %3672, 3
  store i64 %3673, i64* %PC.i467
  %3674 = trunc i64 %3671 to i32
  %3675 = add i32 1, %3674
  %3676 = zext i32 %3675 to i64
  store i64 %3676, i64* %RCX.i468, align 8
  %3677 = icmp ult i32 %3675, %3674
  %3678 = icmp ult i32 %3675, 1
  %3679 = or i1 %3677, %3678
  %3680 = zext i1 %3679 to i8
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3680, i8* %3681, align 1
  %3682 = and i32 %3675, 255
  %3683 = call i32 @llvm.ctpop.i32(i32 %3682)
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  %3686 = xor i8 %3685, 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3686, i8* %3687, align 1
  %3688 = xor i64 1, %3671
  %3689 = trunc i64 %3688 to i32
  %3690 = xor i32 %3689, %3675
  %3691 = lshr i32 %3690, 4
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3693, i8* %3694, align 1
  %3695 = icmp eq i32 %3675, 0
  %3696 = zext i1 %3695 to i8
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3696, i8* %3697, align 1
  %3698 = lshr i32 %3675, 31
  %3699 = trunc i32 %3698 to i8
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3699, i8* %3700, align 1
  %3701 = lshr i32 %3674, 31
  %3702 = xor i32 %3698, %3701
  %3703 = add i32 %3702, %3698
  %3704 = icmp eq i32 %3703, 2
  %3705 = zext i1 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3705, i8* %3706, align 1
  store %struct.Memory* %loadMem_416b22, %struct.Memory** %MEMORY
  %loadMem_416b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 5
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %ECX.i465 = bitcast %union.anon* %3712 to i32*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 7
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %3715 to i64*
  %3716 = load i32, i32* %ECX.i465
  %3717 = zext i32 %3716 to i64
  %3718 = load i64, i64* %PC.i464
  %3719 = add i64 %3718, 3
  store i64 %3719, i64* %PC.i464
  %3720 = shl i64 %3717, 32
  %3721 = ashr exact i64 %3720, 32
  store i64 %3721, i64* %RDX.i466, align 8
  store %struct.Memory* %loadMem_416b25, %struct.Memory** %MEMORY
  %loadMem_416b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 1
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 7
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RDX.i463 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %RAX.i462
  %3732 = load i64, i64* %RDX.i463
  %3733 = mul i64 %3732, 8
  %3734 = add i64 %3733, %3731
  %3735 = load i64, i64* %PC.i461
  %3736 = add i64 %3735, 4
  store i64 %3736, i64* %PC.i461
  %3737 = inttoptr i64 %3734 to i64*
  %3738 = load i64, i64* %3737
  store i64 %3738, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_416b28, %struct.Memory** %MEMORY
  %loadMem_416b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 7
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 15
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %3747 to i64*
  %3748 = load i64, i64* %RBP.i460
  %3749 = sub i64 %3748, 64
  %3750 = load i64, i64* %PC.i458
  %3751 = add i64 %3750, 4
  store i64 %3751, i64* %PC.i458
  %3752 = inttoptr i64 %3749 to i64*
  %3753 = load i64, i64* %3752
  store i64 %3753, i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_416b2c, %struct.Memory** %MEMORY
  %loadMem_416b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 1
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 7
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RDX.i457 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RDX.i457
  %3764 = load i64, i64* %RAX.i456
  %3765 = load i64, i64* %PC.i455
  %3766 = add i64 %3765, 3
  store i64 %3766, i64* %PC.i455
  %3767 = inttoptr i64 %3763 to i64*
  store i64 %3764, i64* %3767
  store %struct.Memory* %loadMem_416b30, %struct.Memory** %MEMORY
  %loadMem_416b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 5
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %PC.i453
  %3775 = add i64 %3774, 7
  store i64 %3775, i64* %PC.i453
  %3776 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %3777 = zext i32 %3776 to i64
  store i64 %3777, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_416b33, %struct.Memory** %MEMORY
  %loadMem_416b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 5
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %3783 to i64*
  %3784 = load i64, i64* %RCX.i452
  %3785 = load i64, i64* %PC.i451
  %3786 = add i64 %3785, 3
  store i64 %3786, i64* %PC.i451
  %3787 = trunc i64 %3784 to i32
  %3788 = add i32 2, %3787
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %RCX.i452, align 8
  %3790 = icmp ult i32 %3788, %3787
  %3791 = icmp ult i32 %3788, 2
  %3792 = or i1 %3790, %3791
  %3793 = zext i1 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3793, i8* %3794, align 1
  %3795 = and i32 %3788, 255
  %3796 = call i32 @llvm.ctpop.i32(i32 %3795)
  %3797 = trunc i32 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = xor i8 %3798, 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3799, i8* %3800, align 1
  %3801 = xor i64 2, %3784
  %3802 = trunc i64 %3801 to i32
  %3803 = xor i32 %3802, %3788
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3806, i8* %3807, align 1
  %3808 = icmp eq i32 %3788, 0
  %3809 = zext i1 %3808 to i8
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3809, i8* %3810, align 1
  %3811 = lshr i32 %3788, 31
  %3812 = trunc i32 %3811 to i8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3812, i8* %3813, align 1
  %3814 = lshr i32 %3787, 31
  %3815 = xor i32 %3811, %3814
  %3816 = add i32 %3815, %3811
  %3817 = icmp eq i32 %3816, 2
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3818, i8* %3819, align 1
  store %struct.Memory* %loadMem_416b3a, %struct.Memory** %MEMORY
  %loadMem_416b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 5
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %ECX.i450 = bitcast %union.anon* %3825 to i32*
  %3826 = load i32, i32* %ECX.i450
  %3827 = zext i32 %3826 to i64
  %3828 = load i64, i64* %PC.i449
  %3829 = add i64 %3828, 7
  store i64 %3829, i64* %PC.i449
  store i32 %3826, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416b3d, %struct.Memory** %MEMORY
  br label %block_.L_416b44

block_.L_416b44:                                  ; preds = %block_.L_416b17, %block_416aeb
  %loadMem_416b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %PC.i448
  %3834 = add i64 %3833, 5
  %3835 = load i64, i64* %PC.i448
  %3836 = add i64 %3835, 5
  store i64 %3836, i64* %PC.i448
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3834, i64* %3837, align 8
  store %struct.Memory* %loadMem_416b44, %struct.Memory** %MEMORY
  br label %block_.L_416b49

block_.L_416b49:                                  ; preds = %block_.L_416b44, %block_416aa7
  %loadMem_416b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3840 to i64*
  %3841 = load i64, i64* %PC.i447
  %3842 = add i64 %3841, 87
  %3843 = load i64, i64* %PC.i447
  %3844 = add i64 %3843, 5
  store i64 %3844, i64* %PC.i447
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3842, i64* %3845, align 8
  store %struct.Memory* %loadMem_416b49, %struct.Memory** %MEMORY
  br label %block_.L_416ba0

block_.L_416b4e:                                  ; preds = %block_.L_416a66
  %loadMem_416b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %PC.i446
  %3850 = add i64 %3849, 9
  store i64 %3850, i64* %PC.i446
  %3851 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3852, align 1
  %3853 = trunc i64 %3851 to i32
  %3854 = and i32 %3853, 255
  %3855 = call i32 @llvm.ctpop.i32(i32 %3854)
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  %3858 = xor i8 %3857, 1
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3858, i8* %3859, align 1
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3860, align 1
  %3861 = icmp eq i64 %3851, 0
  %3862 = zext i1 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3862, i8* %3863, align 1
  %3864 = lshr i64 %3851, 63
  %3865 = trunc i64 %3864 to i8
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3865, i8* %3866, align 1
  %3867 = lshr i64 %3851, 63
  %3868 = xor i64 %3864, %3867
  %3869 = add i64 %3868, %3867
  %3870 = icmp eq i64 %3869, 2
  %3871 = zext i1 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3871, i8* %3872, align 1
  store %struct.Memory* %loadMem_416b4e, %struct.Memory** %MEMORY
  %loadMem_416b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 33
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3875 to i64*
  %3876 = load i64, i64* %PC.i445
  %3877 = add i64 %3876, 45
  %3878 = load i64, i64* %PC.i445
  %3879 = add i64 %3878, 6
  %3880 = load i64, i64* %PC.i445
  %3881 = add i64 %3880, 6
  store i64 %3881, i64* %PC.i445
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3883 = load i8, i8* %3882, align 1
  store i8 %3883, i8* %BRANCH_TAKEN, align 1
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3885 = icmp ne i8 %3883, 0
  %3886 = select i1 %3885, i64 %3877, i64 %3879
  store i64 %3886, i64* %3884, align 8
  store %struct.Memory* %loadMem_416b57, %struct.Memory** %MEMORY
  %loadBr_416b57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416b57 = icmp eq i8 %loadBr_416b57, 1
  br i1 %cmpBr_416b57, label %block_.L_416b84, label %block_416b5d

block_416b5d:                                     ; preds = %block_.L_416b4e
  %loadMem_416b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 33
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 11
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %RDI.i444 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %PC.i443
  %3894 = add i64 %3893, 10
  store i64 %3894, i64* %PC.i443
  store i64 ptrtoint (%G__0x456a9a_type* @G__0x456a9a to i64), i64* %RDI.i444, align 8
  store %struct.Memory* %loadMem_416b5d, %struct.Memory** %MEMORY
  %loadMem_416b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 1
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 15
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %3903 to i64*
  %3904 = load i64, i64* %RBP.i442
  %3905 = sub i64 %3904, 24
  %3906 = load i64, i64* %PC.i440
  %3907 = add i64 %3906, 4
  store i64 %3907, i64* %PC.i440
  %3908 = inttoptr i64 %3905 to i64*
  %3909 = load i64, i64* %3908
  store i64 %3909, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_416b67, %struct.Memory** %MEMORY
  %loadMem_416b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 5
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 15
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3918 to i64*
  %3919 = load i64, i64* %RBP.i439
  %3920 = sub i64 %3919, 80
  %3921 = load i64, i64* %PC.i437
  %3922 = add i64 %3921, 4
  store i64 %3922, i64* %PC.i437
  %3923 = inttoptr i64 %3920 to i32*
  %3924 = load i32, i32* %3923
  %3925 = sext i32 %3924 to i64
  store i64 %3925, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_416b6b, %struct.Memory** %MEMORY
  %loadMem_416b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 5
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %RCX.i436
  %3933 = load i64, i64* %PC.i435
  %3934 = add i64 %3933, 4
  store i64 %3934, i64* %PC.i435
  %3935 = shl i64 %3932, 3
  %3936 = icmp slt i64 %3935, 0
  %3937 = shl i64 %3935, 1
  store i64 %3937, i64* %RCX.i436, align 8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3939 = zext i1 %3936 to i8
  store i8 %3939, i8* %3938, align 1
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3941 = trunc i64 %3937 to i32
  %3942 = and i32 %3941, 254
  %3943 = call i32 @llvm.ctpop.i32(i32 %3942)
  %3944 = trunc i32 %3943 to i8
  %3945 = and i8 %3944, 1
  %3946 = xor i8 %3945, 1
  store i8 %3946, i8* %3940, align 1
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3947, align 1
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3949 = icmp eq i64 %3937, 0
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %3948, align 1
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3952 = lshr i64 %3937, 63
  %3953 = trunc i64 %3952 to i8
  store i8 %3953, i8* %3951, align 1
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3954, align 1
  store %struct.Memory* %loadMem_416b6f, %struct.Memory** %MEMORY
  %loadMem_416b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 1
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 5
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %RAX.i433
  %3965 = load i64, i64* %RCX.i434
  %3966 = load i64, i64* %PC.i432
  %3967 = add i64 %3966, 3
  store i64 %3967, i64* %PC.i432
  %3968 = add i64 %3965, %3964
  store i64 %3968, i64* %RAX.i433, align 8
  %3969 = icmp ult i64 %3968, %3964
  %3970 = icmp ult i64 %3968, %3965
  %3971 = or i1 %3969, %3970
  %3972 = zext i1 %3971 to i8
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3972, i8* %3973, align 1
  %3974 = trunc i64 %3968 to i32
  %3975 = and i32 %3974, 255
  %3976 = call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3979, i8* %3980, align 1
  %3981 = xor i64 %3965, %3964
  %3982 = xor i64 %3981, %3968
  %3983 = lshr i64 %3982, 4
  %3984 = trunc i64 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3985, i8* %3986, align 1
  %3987 = icmp eq i64 %3968, 0
  %3988 = zext i1 %3987 to i8
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3988, i8* %3989, align 1
  %3990 = lshr i64 %3968, 63
  %3991 = trunc i64 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3991, i8* %3992, align 1
  %3993 = lshr i64 %3964, 63
  %3994 = lshr i64 %3965, 63
  %3995 = xor i64 %3990, %3993
  %3996 = xor i64 %3990, %3994
  %3997 = add i64 %3995, %3996
  %3998 = icmp eq i64 %3997, 2
  %3999 = zext i1 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3999, i8* %4000, align 1
  store %struct.Memory* %loadMem_416b73, %struct.Memory** %MEMORY
  %loadMem_416b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 1
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 9
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RSI.i431 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RAX.i430
  %4011 = load i64, i64* %PC.i429
  %4012 = add i64 %4011, 3
  store i64 %4012, i64* %PC.i429
  %4013 = inttoptr i64 %4010 to i64*
  %4014 = load i64, i64* %4013
  store i64 %4014, i64* %RSI.i431, align 8
  store %struct.Memory* %loadMem_416b76, %struct.Memory** %MEMORY
  %loadMem_416b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 7
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 15
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4023 to i64*
  %4024 = load i64, i64* %RBP.i428
  %4025 = sub i64 %4024, 40
  %4026 = load i64, i64* %PC.i426
  %4027 = add i64 %4026, 4
  store i64 %4027, i64* %PC.i426
  %4028 = inttoptr i64 %4025 to i64*
  %4029 = load i64, i64* %4028
  store i64 %4029, i64* %RDX.i427, align 8
  store %struct.Memory* %loadMem_416b79, %struct.Memory** %MEMORY
  %loadMem_416b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 1
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %4036 = bitcast %union.anon* %4035 to %struct.anon.2*
  %AL.i425 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4036, i32 0, i32 0
  %4037 = load i64, i64* %PC.i424
  %4038 = add i64 %4037, 2
  store i64 %4038, i64* %PC.i424
  store i8 0, i8* %AL.i425, align 1
  store %struct.Memory* %loadMem_416b7d, %struct.Memory** %MEMORY
  %loadMem1_416b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4041 to i64*
  %4042 = load i64, i64* %PC.i423
  %4043 = add i64 %4042, 163473
  %4044 = load i64, i64* %PC.i423
  %4045 = add i64 %4044, 5
  %4046 = load i64, i64* %PC.i423
  %4047 = add i64 %4046, 5
  store i64 %4047, i64* %PC.i423
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4049 = load i64, i64* %4048, align 8
  %4050 = add i64 %4049, -8
  %4051 = inttoptr i64 %4050 to i64*
  store i64 %4045, i64* %4051
  store i64 %4050, i64* %4048, align 8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4043, i64* %4052, align 8
  store %struct.Memory* %loadMem1_416b7f, %struct.Memory** %MEMORY
  %loadMem2_416b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416b7f = load i64, i64* %3
  %call2_416b7f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416b7f, %struct.Memory* %loadMem2_416b7f)
  store %struct.Memory* %call2_416b7f, %struct.Memory** %MEMORY
  br label %block_.L_416b84

block_.L_416b84:                                  ; preds = %block_416b5d, %block_.L_416b4e
  %loadMem_416b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 1
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 15
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %RBP.i422
  %4063 = sub i64 %4062, 64
  %4064 = load i64, i64* %PC.i420
  %4065 = add i64 %4064, 4
  store i64 %4065, i64* %PC.i420
  %4066 = inttoptr i64 %4063 to i64*
  %4067 = load i64, i64* %4066
  store i64 %4067, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_416b84, %struct.Memory** %MEMORY
  %loadMem_416b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 33
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 1
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RAX.i419
  %4075 = load i64, i64* %PC.i418
  %4076 = add i64 %4075, 7
  store i64 %4076, i64* %PC.i418
  %4077 = inttoptr i64 %4074 to i64*
  store i64 0, i64* %4077
  store %struct.Memory* %loadMem_416b88, %struct.Memory** %MEMORY
  %loadMem_416b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 33
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4080 to i64*
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 5
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %4083 to i64*
  %4084 = load i64, i64* %PC.i416
  %4085 = add i64 %4084, 7
  store i64 %4085, i64* %PC.i416
  %4086 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %4087 = zext i32 %4086 to i64
  store i64 %4087, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_416b8f, %struct.Memory** %MEMORY
  %loadMem_416b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 33
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 5
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %RCX.i415
  %4095 = load i64, i64* %PC.i414
  %4096 = add i64 %4095, 3
  store i64 %4096, i64* %PC.i414
  %4097 = trunc i64 %4094 to i32
  %4098 = add i32 1, %4097
  %4099 = zext i32 %4098 to i64
  store i64 %4099, i64* %RCX.i415, align 8
  %4100 = icmp ult i32 %4098, %4097
  %4101 = icmp ult i32 %4098, 1
  %4102 = or i1 %4100, %4101
  %4103 = zext i1 %4102 to i8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4103, i8* %4104, align 1
  %4105 = and i32 %4098, 255
  %4106 = call i32 @llvm.ctpop.i32(i32 %4105)
  %4107 = trunc i32 %4106 to i8
  %4108 = and i8 %4107, 1
  %4109 = xor i8 %4108, 1
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4109, i8* %4110, align 1
  %4111 = xor i64 1, %4094
  %4112 = trunc i64 %4111 to i32
  %4113 = xor i32 %4112, %4098
  %4114 = lshr i32 %4113, 4
  %4115 = trunc i32 %4114 to i8
  %4116 = and i8 %4115, 1
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4116, i8* %4117, align 1
  %4118 = icmp eq i32 %4098, 0
  %4119 = zext i1 %4118 to i8
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4119, i8* %4120, align 1
  %4121 = lshr i32 %4098, 31
  %4122 = trunc i32 %4121 to i8
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4122, i8* %4123, align 1
  %4124 = lshr i32 %4097, 31
  %4125 = xor i32 %4121, %4124
  %4126 = add i32 %4125, %4121
  %4127 = icmp eq i32 %4126, 2
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4128, i8* %4129, align 1
  store %struct.Memory* %loadMem_416b96, %struct.Memory** %MEMORY
  %loadMem_416b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 5
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %ECX.i413 = bitcast %union.anon* %4135 to i32*
  %4136 = load i32, i32* %ECX.i413
  %4137 = zext i32 %4136 to i64
  %4138 = load i64, i64* %PC.i412
  %4139 = add i64 %4138, 7
  store i64 %4139, i64* %PC.i412
  store i32 %4136, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416b99, %struct.Memory** %MEMORY
  br label %block_.L_416ba0

block_.L_416ba0:                                  ; preds = %block_.L_416b84, %block_.L_416b49
  %loadMem_416ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 33
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %PC.i411
  %4144 = add i64 %4143, 550
  %4145 = load i64, i64* %PC.i411
  %4146 = add i64 %4145, 5
  store i64 %4146, i64* %PC.i411
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4144, i64* %4147, align 8
  store %struct.Memory* %loadMem_416ba0, %struct.Memory** %MEMORY
  br label %block_.L_416dc6

block_.L_416ba5:                                  ; preds = %block_416889, %block_.L_41687a
  %loadMem_416ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %PC.i410
  %4152 = add i64 %4151, 9
  store i64 %4152, i64* %PC.i410
  %4153 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4154, align 1
  %4155 = trunc i64 %4153 to i32
  %4156 = and i32 %4155, 255
  %4157 = call i32 @llvm.ctpop.i32(i32 %4156)
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4160, i8* %4161, align 1
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4162, align 1
  %4163 = icmp eq i64 %4153, 0
  %4164 = zext i1 %4163 to i8
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4164, i8* %4165, align 1
  %4166 = lshr i64 %4153, 63
  %4167 = trunc i64 %4166 to i8
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4167, i8* %4168, align 1
  %4169 = lshr i64 %4153, 63
  %4170 = xor i64 %4166, %4169
  %4171 = add i64 %4170, %4169
  %4172 = icmp eq i64 %4171, 2
  %4173 = zext i1 %4172 to i8
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4173, i8* %4174, align 1
  store %struct.Memory* %loadMem_416ba5, %struct.Memory** %MEMORY
  %loadMem_416bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4177 to i64*
  %4178 = load i64, i64* %PC.i409
  %4179 = add i64 %4178, 34
  %4180 = load i64, i64* %PC.i409
  %4181 = add i64 %4180, 6
  %4182 = load i64, i64* %PC.i409
  %4183 = add i64 %4182, 6
  store i64 %4183, i64* %PC.i409
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4185 = load i8, i8* %4184, align 1
  %4186 = icmp eq i8 %4185, 0
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %BRANCH_TAKEN, align 1
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4189 = select i1 %4186, i64 %4179, i64 %4181
  store i64 %4189, i64* %4188, align 8
  store %struct.Memory* %loadMem_416bae, %struct.Memory** %MEMORY
  %loadBr_416bae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416bae = icmp eq i8 %loadBr_416bae, 1
  br i1 %cmpBr_416bae, label %block_.L_416bd0, label %block_416bb4

block_416bb4:                                     ; preds = %block_.L_416ba5
  %loadMem_416bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 33
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 1
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4195 to i64*
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 15
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4198 to i64*
  %4199 = load i64, i64* %RBP.i408
  %4200 = sub i64 %4199, 16
  %4201 = load i64, i64* %PC.i406
  %4202 = add i64 %4201, 4
  store i64 %4202, i64* %PC.i406
  %4203 = inttoptr i64 %4200 to i64*
  %4204 = load i64, i64* %4203
  store i64 %4204, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_416bb4, %struct.Memory** %MEMORY
  %loadMem_416bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 33
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 5
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %PC.i404
  %4212 = add i64 %4211, 8
  store i64 %4212, i64* %PC.i404
  %4213 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %4214 = sext i32 %4213 to i64
  store i64 %4214, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_416bb8, %struct.Memory** %MEMORY
  %loadMem_416bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 33
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4217 to i64*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 1
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 5
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RAX.i402
  %4225 = load i64, i64* %RCX.i403
  %4226 = mul i64 %4225, 8
  %4227 = add i64 %4226, %4224
  %4228 = load i64, i64* %PC.i401
  %4229 = add i64 %4228, 4
  store i64 %4229, i64* %PC.i401
  %4230 = inttoptr i64 %4227 to i64*
  %4231 = load i64, i64* %4230
  store i64 %4231, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_416bc0, %struct.Memory** %MEMORY
  %loadMem_416bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 1
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %4237 to i64*
  %4238 = load i64, i64* %RAX.i400
  %4239 = load i64, i64* %PC.i399
  %4240 = add i64 %4239, 4
  store i64 %4240, i64* %PC.i399
  %4241 = add i64 1, %4238
  store i64 %4241, i64* %RAX.i400, align 8
  %4242 = icmp ult i64 %4241, %4238
  %4243 = icmp ult i64 %4241, 1
  %4244 = or i1 %4242, %4243
  %4245 = zext i1 %4244 to i8
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4245, i8* %4246, align 1
  %4247 = trunc i64 %4241 to i32
  %4248 = and i32 %4247, 255
  %4249 = call i32 @llvm.ctpop.i32(i32 %4248)
  %4250 = trunc i32 %4249 to i8
  %4251 = and i8 %4250, 1
  %4252 = xor i8 %4251, 1
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4252, i8* %4253, align 1
  %4254 = xor i64 1, %4238
  %4255 = xor i64 %4254, %4241
  %4256 = lshr i64 %4255, 4
  %4257 = trunc i64 %4256 to i8
  %4258 = and i8 %4257, 1
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4258, i8* %4259, align 1
  %4260 = icmp eq i64 %4241, 0
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4261, i8* %4262, align 1
  %4263 = lshr i64 %4241, 63
  %4264 = trunc i64 %4263 to i8
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4264, i8* %4265, align 1
  %4266 = lshr i64 %4238, 63
  %4267 = xor i64 %4263, %4266
  %4268 = add i64 %4267, %4263
  %4269 = icmp eq i64 %4268, 2
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4270, i8* %4271, align 1
  store %struct.Memory* %loadMem_416bc4, %struct.Memory** %MEMORY
  %loadMem_416bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 1
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %RAX.i398
  %4279 = load i64, i64* %PC.i397
  %4280 = add i64 %4279, 8
  store i64 %4280, i64* %PC.i397
  store i64 %4278, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_416bc8, %struct.Memory** %MEMORY
  br label %block_.L_416bd0

block_.L_416bd0:                                  ; preds = %block_416bb4, %block_.L_416ba5
  %loadMem_416bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 15
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %4286 to i64*
  %4287 = load i64, i64* %RBP.i396
  %4288 = sub i64 %4287, 80
  %4289 = load i64, i64* %PC.i395
  %4290 = add i64 %4289, 7
  store i64 %4290, i64* %PC.i395
  %4291 = inttoptr i64 %4288 to i32*
  store i32 -1, i32* %4291
  store %struct.Memory* %loadMem_416bd0, %struct.Memory** %MEMORY
  %loadMem_416bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 33
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 15
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %4297 to i64*
  %4298 = load i64, i64* %RBP.i394
  %4299 = sub i64 %4298, 68
  %4300 = load i64, i64* %PC.i393
  %4301 = add i64 %4300, 7
  store i64 %4301, i64* %PC.i393
  %4302 = inttoptr i64 %4299 to i32*
  store i32 0, i32* %4302
  store %struct.Memory* %loadMem_416bd7, %struct.Memory** %MEMORY
  br label %block_.L_416bde

block_.L_416bde:                                  ; preds = %block_.L_416c3c, %block_.L_416bd0
  %loadMem_416bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 33
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 1
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %4308 to i64*
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 15
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %4311 to i64*
  %4312 = load i64, i64* %RBP.i392
  %4313 = sub i64 %4312, 68
  %4314 = load i64, i64* %PC.i390
  %4315 = add i64 %4314, 3
  store i64 %4315, i64* %PC.i390
  %4316 = inttoptr i64 %4313 to i32*
  %4317 = load i32, i32* %4316
  %4318 = zext i32 %4317 to i64
  store i64 %4318, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_416bde, %struct.Memory** %MEMORY
  %loadMem_416be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 33
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 1
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %EAX.i388 = bitcast %union.anon* %4324 to i32*
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 15
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %4327 to i64*
  %4328 = load i32, i32* %EAX.i388
  %4329 = zext i32 %4328 to i64
  %4330 = load i64, i64* %RBP.i389
  %4331 = sub i64 %4330, 28
  %4332 = load i64, i64* %PC.i387
  %4333 = add i64 %4332, 3
  store i64 %4333, i64* %PC.i387
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334
  %4336 = sub i32 %4328, %4335
  %4337 = icmp ult i32 %4328, %4335
  %4338 = zext i1 %4337 to i8
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4338, i8* %4339, align 1
  %4340 = and i32 %4336, 255
  %4341 = call i32 @llvm.ctpop.i32(i32 %4340)
  %4342 = trunc i32 %4341 to i8
  %4343 = and i8 %4342, 1
  %4344 = xor i8 %4343, 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4344, i8* %4345, align 1
  %4346 = xor i32 %4335, %4328
  %4347 = xor i32 %4346, %4336
  %4348 = lshr i32 %4347, 4
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4350, i8* %4351, align 1
  %4352 = icmp eq i32 %4336, 0
  %4353 = zext i1 %4352 to i8
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4353, i8* %4354, align 1
  %4355 = lshr i32 %4336, 31
  %4356 = trunc i32 %4355 to i8
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4356, i8* %4357, align 1
  %4358 = lshr i32 %4328, 31
  %4359 = lshr i32 %4335, 31
  %4360 = xor i32 %4359, %4358
  %4361 = xor i32 %4355, %4358
  %4362 = add i32 %4361, %4360
  %4363 = icmp eq i32 %4362, 2
  %4364 = zext i1 %4363 to i8
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4364, i8* %4365, align 1
  store %struct.Memory* %loadMem_416be1, %struct.Memory** %MEMORY
  %loadMem_416be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 33
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %PC.i386
  %4370 = add i64 %4369, 102
  %4371 = load i64, i64* %PC.i386
  %4372 = add i64 %4371, 6
  %4373 = load i64, i64* %PC.i386
  %4374 = add i64 %4373, 6
  store i64 %4374, i64* %PC.i386
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4376 = load i8, i8* %4375, align 1
  %4377 = icmp ne i8 %4376, 0
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4379 = load i8, i8* %4378, align 1
  %4380 = icmp ne i8 %4379, 0
  %4381 = xor i1 %4377, %4380
  %4382 = xor i1 %4381, true
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %BRANCH_TAKEN, align 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4385 = select i1 %4381, i64 %4372, i64 %4370
  store i64 %4385, i64* %4384, align 8
  store %struct.Memory* %loadMem_416be4, %struct.Memory** %MEMORY
  %loadBr_416be4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416be4 = icmp eq i8 %loadBr_416be4, 1
  br i1 %cmpBr_416be4, label %block_.L_416c4a, label %block_416bea

block_416bea:                                     ; preds = %block_.L_416bde
  %loadMem_416bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 33
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 1
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 15
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %4394 to i64*
  %4395 = load i64, i64* %RBP.i385
  %4396 = sub i64 %4395, 24
  %4397 = load i64, i64* %PC.i383
  %4398 = add i64 %4397, 4
  store i64 %4398, i64* %PC.i383
  %4399 = inttoptr i64 %4396 to i64*
  %4400 = load i64, i64* %4399
  store i64 %4400, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_416bea, %struct.Memory** %MEMORY
  %loadMem_416bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 5
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 15
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %4409 to i64*
  %4410 = load i64, i64* %RBP.i382
  %4411 = sub i64 %4410, 68
  %4412 = load i64, i64* %PC.i380
  %4413 = add i64 %4412, 4
  store i64 %4413, i64* %PC.i380
  %4414 = inttoptr i64 %4411 to i32*
  %4415 = load i32, i32* %4414
  %4416 = sext i32 %4415 to i64
  store i64 %4416, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_416bee, %struct.Memory** %MEMORY
  %loadMem_416bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 33
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 5
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RCX.i379
  %4424 = load i64, i64* %PC.i378
  %4425 = add i64 %4424, 4
  store i64 %4425, i64* %PC.i378
  %4426 = shl i64 %4423, 3
  %4427 = icmp slt i64 %4426, 0
  %4428 = shl i64 %4426, 1
  store i64 %4428, i64* %RCX.i379, align 8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4430 = zext i1 %4427 to i8
  store i8 %4430, i8* %4429, align 1
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4432 = trunc i64 %4428 to i32
  %4433 = and i32 %4432, 254
  %4434 = call i32 @llvm.ctpop.i32(i32 %4433)
  %4435 = trunc i32 %4434 to i8
  %4436 = and i8 %4435, 1
  %4437 = xor i8 %4436, 1
  store i8 %4437, i8* %4431, align 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4438, align 1
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4440 = icmp eq i64 %4428, 0
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %4439, align 1
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4443 = lshr i64 %4428, 63
  %4444 = trunc i64 %4443 to i8
  store i8 %4444, i8* %4442, align 1
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4445, align 1
  store %struct.Memory* %loadMem_416bf2, %struct.Memory** %MEMORY
  %loadMem_416bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 33
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4448 to i64*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 1
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 5
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %4454 to i64*
  %4455 = load i64, i64* %RAX.i376
  %4456 = load i64, i64* %RCX.i377
  %4457 = load i64, i64* %PC.i375
  %4458 = add i64 %4457, 3
  store i64 %4458, i64* %PC.i375
  %4459 = add i64 %4456, %4455
  store i64 %4459, i64* %RAX.i376, align 8
  %4460 = icmp ult i64 %4459, %4455
  %4461 = icmp ult i64 %4459, %4456
  %4462 = or i1 %4460, %4461
  %4463 = zext i1 %4462 to i8
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4463, i8* %4464, align 1
  %4465 = trunc i64 %4459 to i32
  %4466 = and i32 %4465, 255
  %4467 = call i32 @llvm.ctpop.i32(i32 %4466)
  %4468 = trunc i32 %4467 to i8
  %4469 = and i8 %4468, 1
  %4470 = xor i8 %4469, 1
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4470, i8* %4471, align 1
  %4472 = xor i64 %4456, %4455
  %4473 = xor i64 %4472, %4459
  %4474 = lshr i64 %4473, 4
  %4475 = trunc i64 %4474 to i8
  %4476 = and i8 %4475, 1
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4476, i8* %4477, align 1
  %4478 = icmp eq i64 %4459, 0
  %4479 = zext i1 %4478 to i8
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4479, i8* %4480, align 1
  %4481 = lshr i64 %4459, 63
  %4482 = trunc i64 %4481 to i8
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4482, i8* %4483, align 1
  %4484 = lshr i64 %4455, 63
  %4485 = lshr i64 %4456, 63
  %4486 = xor i64 %4481, %4484
  %4487 = xor i64 %4481, %4485
  %4488 = add i64 %4486, %4487
  %4489 = icmp eq i64 %4488, 2
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4490, i8* %4491, align 1
  store %struct.Memory* %loadMem_416bf6, %struct.Memory** %MEMORY
  %loadMem_416bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 33
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4494 to i64*
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 1
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %4497 to i64*
  %4498 = load i64, i64* %RAX.i374
  %4499 = add i64 %4498, 8
  %4500 = load i64, i64* %PC.i373
  %4501 = add i64 %4500, 4
  store i64 %4501, i64* %PC.i373
  %4502 = inttoptr i64 %4499 to i32*
  %4503 = load i32, i32* %4502
  %4504 = sub i32 %4503, 1
  %4505 = icmp ult i32 %4503, 1
  %4506 = zext i1 %4505 to i8
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4506, i8* %4507, align 1
  %4508 = and i32 %4504, 255
  %4509 = call i32 @llvm.ctpop.i32(i32 %4508)
  %4510 = trunc i32 %4509 to i8
  %4511 = and i8 %4510, 1
  %4512 = xor i8 %4511, 1
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4512, i8* %4513, align 1
  %4514 = xor i32 %4503, 1
  %4515 = xor i32 %4514, %4504
  %4516 = lshr i32 %4515, 4
  %4517 = trunc i32 %4516 to i8
  %4518 = and i8 %4517, 1
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4518, i8* %4519, align 1
  %4520 = icmp eq i32 %4504, 0
  %4521 = zext i1 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4521, i8* %4522, align 1
  %4523 = lshr i32 %4504, 31
  %4524 = trunc i32 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4524, i8* %4525, align 1
  %4526 = lshr i32 %4503, 31
  %4527 = xor i32 %4523, %4526
  %4528 = add i32 %4527, %4526
  %4529 = icmp eq i32 %4528, 2
  %4530 = zext i1 %4529 to i8
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4530, i8* %4531, align 1
  store %struct.Memory* %loadMem_416bf9, %struct.Memory** %MEMORY
  %loadMem_416bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 33
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %PC.i372
  %4536 = add i64 %4535, 58
  %4537 = load i64, i64* %PC.i372
  %4538 = add i64 %4537, 6
  %4539 = load i64, i64* %PC.i372
  %4540 = add i64 %4539, 6
  store i64 %4540, i64* %PC.i372
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4542 = load i8, i8* %4541, align 1
  %4543 = icmp eq i8 %4542, 0
  %4544 = zext i1 %4543 to i8
  store i8 %4544, i8* %BRANCH_TAKEN, align 1
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4546 = select i1 %4543, i64 %4536, i64 %4538
  store i64 %4546, i64* %4545, align 8
  store %struct.Memory* %loadMem_416bfd, %struct.Memory** %MEMORY
  %loadBr_416bfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416bfd = icmp eq i8 %loadBr_416bfd, 1
  br i1 %cmpBr_416bfd, label %block_.L_416c37, label %block_416c03

block_416c03:                                     ; preds = %block_416bea
  %loadMem_416c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 33
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 1
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %4552 to i64*
  %4553 = load i64, i64* %PC.i370
  %4554 = add i64 %4553, 8
  store i64 %4554, i64* %PC.i370
  %4555 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %4555, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_416c03, %struct.Memory** %MEMORY
  %loadMem_416c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 33
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 1
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 5
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %4564 to i64*
  %4565 = load i64, i64* %RAX.i368
  %4566 = load i64, i64* %PC.i367
  %4567 = add i64 %4566, 3
  store i64 %4567, i64* %PC.i367
  %4568 = inttoptr i64 %4565 to i8*
  %4569 = load i8, i8* %4568
  %4570 = sext i8 %4569 to i64
  %4571 = and i64 %4570, 4294967295
  store i64 %4571, i64* %RCX.i369, align 8
  store %struct.Memory* %loadMem_416c0b, %struct.Memory** %MEMORY
  %loadMem_416c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 1
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 15
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %RBP.i366
  %4582 = sub i64 %4581, 24
  %4583 = load i64, i64* %PC.i364
  %4584 = add i64 %4583, 4
  store i64 %4584, i64* %PC.i364
  %4585 = inttoptr i64 %4582 to i64*
  %4586 = load i64, i64* %4585
  store i64 %4586, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_416c0e, %struct.Memory** %MEMORY
  %loadMem_416c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 33
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 7
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 15
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %RBP.i363
  %4597 = sub i64 %4596, 68
  %4598 = load i64, i64* %PC.i361
  %4599 = add i64 %4598, 4
  store i64 %4599, i64* %PC.i361
  %4600 = inttoptr i64 %4597 to i32*
  %4601 = load i32, i32* %4600
  %4602 = sext i32 %4601 to i64
  store i64 %4602, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_416c12, %struct.Memory** %MEMORY
  %loadMem_416c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 7
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RDX.i360
  %4610 = load i64, i64* %PC.i359
  %4611 = add i64 %4610, 4
  store i64 %4611, i64* %PC.i359
  %4612 = shl i64 %4609, 3
  %4613 = icmp slt i64 %4612, 0
  %4614 = shl i64 %4612, 1
  store i64 %4614, i64* %RDX.i360, align 8
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4616 = zext i1 %4613 to i8
  store i8 %4616, i8* %4615, align 1
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4618 = trunc i64 %4614 to i32
  %4619 = and i32 %4618, 254
  %4620 = call i32 @llvm.ctpop.i32(i32 %4619)
  %4621 = trunc i32 %4620 to i8
  %4622 = and i8 %4621, 1
  %4623 = xor i8 %4622, 1
  store i8 %4623, i8* %4617, align 1
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4624, align 1
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4626 = icmp eq i64 %4614, 0
  %4627 = zext i1 %4626 to i8
  store i8 %4627, i8* %4625, align 1
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4629 = lshr i64 %4614, 63
  %4630 = trunc i64 %4629 to i8
  store i8 %4630, i8* %4628, align 1
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4631, align 1
  store %struct.Memory* %loadMem_416c16, %struct.Memory** %MEMORY
  %loadMem_416c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 1
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 7
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RAX.i357
  %4642 = load i64, i64* %RDX.i358
  %4643 = load i64, i64* %PC.i356
  %4644 = add i64 %4643, 3
  store i64 %4644, i64* %PC.i356
  %4645 = add i64 %4642, %4641
  store i64 %4645, i64* %RAX.i357, align 8
  %4646 = icmp ult i64 %4645, %4641
  %4647 = icmp ult i64 %4645, %4642
  %4648 = or i1 %4646, %4647
  %4649 = zext i1 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4649, i8* %4650, align 1
  %4651 = trunc i64 %4645 to i32
  %4652 = and i32 %4651, 255
  %4653 = call i32 @llvm.ctpop.i32(i32 %4652)
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  %4656 = xor i8 %4655, 1
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4656, i8* %4657, align 1
  %4658 = xor i64 %4642, %4641
  %4659 = xor i64 %4658, %4645
  %4660 = lshr i64 %4659, 4
  %4661 = trunc i64 %4660 to i8
  %4662 = and i8 %4661, 1
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4662, i8* %4663, align 1
  %4664 = icmp eq i64 %4645, 0
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4665, i8* %4666, align 1
  %4667 = lshr i64 %4645, 63
  %4668 = trunc i64 %4667 to i8
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4668, i8* %4669, align 1
  %4670 = lshr i64 %4641, 63
  %4671 = lshr i64 %4642, 63
  %4672 = xor i64 %4667, %4670
  %4673 = xor i64 %4667, %4671
  %4674 = add i64 %4672, %4673
  %4675 = icmp eq i64 %4674, 2
  %4676 = zext i1 %4675 to i8
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4676, i8* %4677, align 1
  store %struct.Memory* %loadMem_416c1a, %struct.Memory** %MEMORY
  %loadMem_416c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 33
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 1
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RAX.i355
  %4685 = load i64, i64* %PC.i354
  %4686 = add i64 %4685, 3
  store i64 %4686, i64* %PC.i354
  %4687 = inttoptr i64 %4684 to i64*
  %4688 = load i64, i64* %4687
  store i64 %4688, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_416c1d, %struct.Memory** %MEMORY
  %loadMem_416c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 33
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4691 to i64*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 1
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 9
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %RSI.i353 = bitcast %union.anon* %4697 to i64*
  %4698 = load i64, i64* %RAX.i352
  %4699 = add i64 %4698, 1
  %4700 = load i64, i64* %PC.i351
  %4701 = add i64 %4700, 4
  store i64 %4701, i64* %PC.i351
  %4702 = inttoptr i64 %4699 to i8*
  %4703 = load i8, i8* %4702
  %4704 = sext i8 %4703 to i64
  %4705 = and i64 %4704, 4294967295
  store i64 %4705, i64* %RSI.i353, align 8
  store %struct.Memory* %loadMem_416c20, %struct.Memory** %MEMORY
  %loadMem_416c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 5
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %4711 to i32*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 9
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4714 to i32*
  %4715 = load i32, i32* %ECX.i350
  %4716 = zext i32 %4715 to i64
  %4717 = load i32, i32* %ESI.i
  %4718 = zext i32 %4717 to i64
  %4719 = load i64, i64* %PC.i349
  %4720 = add i64 %4719, 2
  store i64 %4720, i64* %PC.i349
  %4721 = sub i32 %4715, %4717
  %4722 = icmp ult i32 %4715, %4717
  %4723 = zext i1 %4722 to i8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4723, i8* %4724, align 1
  %4725 = and i32 %4721, 255
  %4726 = call i32 @llvm.ctpop.i32(i32 %4725)
  %4727 = trunc i32 %4726 to i8
  %4728 = and i8 %4727, 1
  %4729 = xor i8 %4728, 1
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4729, i8* %4730, align 1
  %4731 = xor i64 %4718, %4716
  %4732 = trunc i64 %4731 to i32
  %4733 = xor i32 %4732, %4721
  %4734 = lshr i32 %4733, 4
  %4735 = trunc i32 %4734 to i8
  %4736 = and i8 %4735, 1
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4736, i8* %4737, align 1
  %4738 = icmp eq i32 %4721, 0
  %4739 = zext i1 %4738 to i8
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4739, i8* %4740, align 1
  %4741 = lshr i32 %4721, 31
  %4742 = trunc i32 %4741 to i8
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4742, i8* %4743, align 1
  %4744 = lshr i32 %4715, 31
  %4745 = lshr i32 %4717, 31
  %4746 = xor i32 %4745, %4744
  %4747 = xor i32 %4741, %4744
  %4748 = add i32 %4747, %4746
  %4749 = icmp eq i32 %4748, 2
  %4750 = zext i1 %4749 to i8
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4750, i8* %4751, align 1
  store %struct.Memory* %loadMem_416c24, %struct.Memory** %MEMORY
  %loadMem_416c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 33
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4754 to i64*
  %4755 = load i64, i64* %PC.i348
  %4756 = add i64 %4755, 17
  %4757 = load i64, i64* %PC.i348
  %4758 = add i64 %4757, 6
  %4759 = load i64, i64* %PC.i348
  %4760 = add i64 %4759, 6
  store i64 %4760, i64* %PC.i348
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4762 = load i8, i8* %4761, align 1
  %4763 = icmp eq i8 %4762, 0
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %BRANCH_TAKEN, align 1
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4766 = select i1 %4763, i64 %4756, i64 %4758
  store i64 %4766, i64* %4765, align 8
  store %struct.Memory* %loadMem_416c26, %struct.Memory** %MEMORY
  %loadBr_416c26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c26 = icmp eq i8 %loadBr_416c26, 1
  br i1 %cmpBr_416c26, label %block_.L_416c37, label %block_416c2c

block_416c2c:                                     ; preds = %block_416c03
  %loadMem_416c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 1
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 15
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %RBP.i347
  %4777 = sub i64 %4776, 68
  %4778 = load i64, i64* %PC.i345
  %4779 = add i64 %4778, 3
  store i64 %4779, i64* %PC.i345
  %4780 = inttoptr i64 %4777 to i32*
  %4781 = load i32, i32* %4780
  %4782 = zext i32 %4781 to i64
  store i64 %4782, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_416c2c, %struct.Memory** %MEMORY
  %loadMem_416c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %4788 to i32*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 15
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RBP.i344
  %4793 = sub i64 %4792, 80
  %4794 = load i32, i32* %EAX.i343
  %4795 = zext i32 %4794 to i64
  %4796 = load i64, i64* %PC.i342
  %4797 = add i64 %4796, 3
  store i64 %4797, i64* %PC.i342
  %4798 = inttoptr i64 %4793 to i32*
  store i32 %4794, i32* %4798
  store %struct.Memory* %loadMem_416c2f, %struct.Memory** %MEMORY
  %loadMem_416c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %4801 to i64*
  %4802 = load i64, i64* %PC.i341
  %4803 = add i64 %4802, 24
  %4804 = load i64, i64* %PC.i341
  %4805 = add i64 %4804, 5
  store i64 %4805, i64* %PC.i341
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4803, i64* %4806, align 8
  store %struct.Memory* %loadMem_416c32, %struct.Memory** %MEMORY
  br label %block_.L_416c4a

block_.L_416c37:                                  ; preds = %block_416c03, %block_416bea
  %loadMem_416c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4809 to i64*
  %4810 = load i64, i64* %PC.i340
  %4811 = add i64 %4810, 5
  %4812 = load i64, i64* %PC.i340
  %4813 = add i64 %4812, 5
  store i64 %4813, i64* %PC.i340
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4811, i64* %4814, align 8
  store %struct.Memory* %loadMem_416c37, %struct.Memory** %MEMORY
  br label %block_.L_416c3c

block_.L_416c3c:                                  ; preds = %block_.L_416c37
  %loadMem_416c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 1
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 15
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RBP.i339
  %4825 = sub i64 %4824, 68
  %4826 = load i64, i64* %PC.i337
  %4827 = add i64 %4826, 3
  store i64 %4827, i64* %PC.i337
  %4828 = inttoptr i64 %4825 to i32*
  %4829 = load i32, i32* %4828
  %4830 = zext i32 %4829 to i64
  store i64 %4830, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_416c3c, %struct.Memory** %MEMORY
  %loadMem_416c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 33
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 1
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RAX.i336
  %4838 = load i64, i64* %PC.i335
  %4839 = add i64 %4838, 3
  store i64 %4839, i64* %PC.i335
  %4840 = trunc i64 %4837 to i32
  %4841 = add i32 1, %4840
  %4842 = zext i32 %4841 to i64
  store i64 %4842, i64* %RAX.i336, align 8
  %4843 = icmp ult i32 %4841, %4840
  %4844 = icmp ult i32 %4841, 1
  %4845 = or i1 %4843, %4844
  %4846 = zext i1 %4845 to i8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4846, i8* %4847, align 1
  %4848 = and i32 %4841, 255
  %4849 = call i32 @llvm.ctpop.i32(i32 %4848)
  %4850 = trunc i32 %4849 to i8
  %4851 = and i8 %4850, 1
  %4852 = xor i8 %4851, 1
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4852, i8* %4853, align 1
  %4854 = xor i64 1, %4837
  %4855 = trunc i64 %4854 to i32
  %4856 = xor i32 %4855, %4841
  %4857 = lshr i32 %4856, 4
  %4858 = trunc i32 %4857 to i8
  %4859 = and i8 %4858, 1
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4859, i8* %4860, align 1
  %4861 = icmp eq i32 %4841, 0
  %4862 = zext i1 %4861 to i8
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4862, i8* %4863, align 1
  %4864 = lshr i32 %4841, 31
  %4865 = trunc i32 %4864 to i8
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4865, i8* %4866, align 1
  %4867 = lshr i32 %4840, 31
  %4868 = xor i32 %4864, %4867
  %4869 = add i32 %4868, %4864
  %4870 = icmp eq i32 %4869, 2
  %4871 = zext i1 %4870 to i8
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4871, i8* %4872, align 1
  store %struct.Memory* %loadMem_416c3f, %struct.Memory** %MEMORY
  %loadMem_416c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 1
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %4878 to i32*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 15
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %4881 to i64*
  %4882 = load i64, i64* %RBP.i334
  %4883 = sub i64 %4882, 68
  %4884 = load i32, i32* %EAX.i333
  %4885 = zext i32 %4884 to i64
  %4886 = load i64, i64* %PC.i332
  %4887 = add i64 %4886, 3
  store i64 %4887, i64* %PC.i332
  %4888 = inttoptr i64 %4883 to i32*
  store i32 %4884, i32* %4888
  store %struct.Memory* %loadMem_416c42, %struct.Memory** %MEMORY
  %loadMem_416c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4891 to i64*
  %4892 = load i64, i64* %PC.i331
  %4893 = add i64 %4892, -103
  %4894 = load i64, i64* %PC.i331
  %4895 = add i64 %4894, 5
  store i64 %4895, i64* %PC.i331
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4893, i64* %4896, align 8
  store %struct.Memory* %loadMem_416c45, %struct.Memory** %MEMORY
  br label %block_.L_416bde

block_.L_416c4a:                                  ; preds = %block_416c2c, %block_.L_416bde
  %loadMem_416c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 33
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 15
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %4902 to i64*
  %4903 = load i64, i64* %RBP.i330
  %4904 = sub i64 %4903, 80
  %4905 = load i64, i64* %PC.i329
  %4906 = add i64 %4905, 4
  store i64 %4906, i64* %PC.i329
  %4907 = inttoptr i64 %4904 to i32*
  %4908 = load i32, i32* %4907
  %4909 = sub i32 %4908, -1
  %4910 = icmp ult i32 %4908, -1
  %4911 = zext i1 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4911, i8* %4912, align 1
  %4913 = and i32 %4909, 255
  %4914 = call i32 @llvm.ctpop.i32(i32 %4913)
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = xor i8 %4916, 1
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4917, i8* %4918, align 1
  %4919 = xor i32 %4908, -1
  %4920 = xor i32 %4919, %4909
  %4921 = lshr i32 %4920, 4
  %4922 = trunc i32 %4921 to i8
  %4923 = and i8 %4922, 1
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4923, i8* %4924, align 1
  %4925 = icmp eq i32 %4909, 0
  %4926 = zext i1 %4925 to i8
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4926, i8* %4927, align 1
  %4928 = lshr i32 %4909, 31
  %4929 = trunc i32 %4928 to i8
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4929, i8* %4930, align 1
  %4931 = lshr i32 %4908, 31
  %4932 = xor i32 %4931, 1
  %4933 = xor i32 %4928, %4931
  %4934 = add i32 %4933, %4932
  %4935 = icmp eq i32 %4934, 2
  %4936 = zext i1 %4935 to i8
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4936, i8* %4937, align 1
  store %struct.Memory* %loadMem_416c4a, %struct.Memory** %MEMORY
  %loadMem_416c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 33
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4940 to i64*
  %4941 = load i64, i64* %PC.i328
  %4942 = add i64 %4941, 38
  %4943 = load i64, i64* %PC.i328
  %4944 = add i64 %4943, 6
  %4945 = load i64, i64* %PC.i328
  %4946 = add i64 %4945, 6
  store i64 %4946, i64* %PC.i328
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4948 = load i8, i8* %4947, align 1
  %4949 = icmp eq i8 %4948, 0
  %4950 = zext i1 %4949 to i8
  store i8 %4950, i8* %BRANCH_TAKEN, align 1
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4952 = select i1 %4949, i64 %4942, i64 %4944
  store i64 %4952, i64* %4951, align 8
  store %struct.Memory* %loadMem_416c4e, %struct.Memory** %MEMORY
  %loadBr_416c4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c4e = icmp eq i8 %loadBr_416c4e, 1
  br i1 %cmpBr_416c4e, label %block_.L_416c74, label %block_416c54

block_416c54:                                     ; preds = %block_.L_416c4a
  %loadMem_416c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 33
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 11
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %RDI.i327 = bitcast %union.anon* %4958 to i64*
  %4959 = load i64, i64* %PC.i326
  %4960 = add i64 %4959, 10
  store i64 %4960, i64* %PC.i326
  store i64 ptrtoint (%G__0x456ac1_type* @G__0x456ac1 to i64), i64* %RDI.i327, align 8
  store %struct.Memory* %loadMem_416c54, %struct.Memory** %MEMORY
  %loadMem_416c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 33
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4963 to i64*
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 1
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %4966 to i64*
  %4967 = load i64, i64* %PC.i324
  %4968 = add i64 %4967, 8
  store i64 %4968, i64* %PC.i324
  %4969 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %4969, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_416c5e, %struct.Memory** %MEMORY
  %loadMem_416c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 33
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 1
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 9
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RSI.i323 = bitcast %union.anon* %4978 to i64*
  %4979 = load i64, i64* %RAX.i322
  %4980 = load i64, i64* %PC.i321
  %4981 = add i64 %4980, 3
  store i64 %4981, i64* %PC.i321
  %4982 = inttoptr i64 %4979 to i8*
  %4983 = load i8, i8* %4982
  %4984 = sext i8 %4983 to i64
  %4985 = and i64 %4984, 4294967295
  store i64 %4985, i64* %RSI.i323, align 8
  store %struct.Memory* %loadMem_416c66, %struct.Memory** %MEMORY
  %loadMem_416c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 7
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 15
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RBP.i320
  %4996 = sub i64 %4995, 40
  %4997 = load i64, i64* %PC.i318
  %4998 = add i64 %4997, 4
  store i64 %4998, i64* %PC.i318
  %4999 = inttoptr i64 %4996 to i64*
  %5000 = load i64, i64* %4999
  store i64 %5000, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_416c69, %struct.Memory** %MEMORY
  %loadMem_416c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 33
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 1
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %5007 = bitcast %union.anon* %5006 to %struct.anon.2*
  %AL.i317 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5007, i32 0, i32 0
  %5008 = load i64, i64* %PC.i316
  %5009 = add i64 %5008, 2
  store i64 %5009, i64* %PC.i316
  store i8 0, i8* %AL.i317, align 1
  store %struct.Memory* %loadMem_416c6d, %struct.Memory** %MEMORY
  %loadMem1_416c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %PC.i315
  %5014 = add i64 %5013, 163233
  %5015 = load i64, i64* %PC.i315
  %5016 = add i64 %5015, 5
  %5017 = load i64, i64* %PC.i315
  %5018 = add i64 %5017, 5
  store i64 %5018, i64* %PC.i315
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5020 = load i64, i64* %5019, align 8
  %5021 = add i64 %5020, -8
  %5022 = inttoptr i64 %5021 to i64*
  store i64 %5016, i64* %5022
  store i64 %5021, i64* %5019, align 8
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5014, i64* %5023, align 8
  store %struct.Memory* %loadMem1_416c6f, %struct.Memory** %MEMORY
  %loadMem2_416c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416c6f = load i64, i64* %3
  %call2_416c6f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416c6f, %struct.Memory* %loadMem2_416c6f)
  store %struct.Memory* %call2_416c6f, %struct.Memory** %MEMORY
  br label %block_.L_416c74

block_.L_416c74:                                  ; preds = %block_416c54, %block_.L_416c4a
  %loadMem_416c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 1
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 15
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %RBP.i314
  %5034 = sub i64 %5033, 24
  %5035 = load i64, i64* %PC.i312
  %5036 = add i64 %5035, 4
  store i64 %5036, i64* %PC.i312
  %5037 = inttoptr i64 %5034 to i64*
  %5038 = load i64, i64* %5037
  store i64 %5038, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_416c74, %struct.Memory** %MEMORY
  %loadMem_416c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 5
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %5044 to i64*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 15
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %RBP.i311
  %5049 = sub i64 %5048, 80
  %5050 = load i64, i64* %PC.i309
  %5051 = add i64 %5050, 4
  store i64 %5051, i64* %PC.i309
  %5052 = inttoptr i64 %5049 to i32*
  %5053 = load i32, i32* %5052
  %5054 = sext i32 %5053 to i64
  store i64 %5054, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_416c78, %struct.Memory** %MEMORY
  %loadMem_416c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 5
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %RCX.i308
  %5062 = load i64, i64* %PC.i307
  %5063 = add i64 %5062, 4
  store i64 %5063, i64* %PC.i307
  %5064 = shl i64 %5061, 3
  %5065 = icmp slt i64 %5064, 0
  %5066 = shl i64 %5064, 1
  store i64 %5066, i64* %RCX.i308, align 8
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5068 = zext i1 %5065 to i8
  store i8 %5068, i8* %5067, align 1
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5070 = trunc i64 %5066 to i32
  %5071 = and i32 %5070, 254
  %5072 = call i32 @llvm.ctpop.i32(i32 %5071)
  %5073 = trunc i32 %5072 to i8
  %5074 = and i8 %5073, 1
  %5075 = xor i8 %5074, 1
  store i8 %5075, i8* %5069, align 1
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5076, align 1
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5078 = icmp eq i64 %5066, 0
  %5079 = zext i1 %5078 to i8
  store i8 %5079, i8* %5077, align 1
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5081 = lshr i64 %5066, 63
  %5082 = trunc i64 %5081 to i8
  store i8 %5082, i8* %5080, align 1
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5083, align 1
  store %struct.Memory* %loadMem_416c7c, %struct.Memory** %MEMORY
  %loadMem_416c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 5
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RAX.i305
  %5094 = load i64, i64* %RCX.i306
  %5095 = load i64, i64* %PC.i304
  %5096 = add i64 %5095, 3
  store i64 %5096, i64* %PC.i304
  %5097 = add i64 %5094, %5093
  store i64 %5097, i64* %RAX.i305, align 8
  %5098 = icmp ult i64 %5097, %5093
  %5099 = icmp ult i64 %5097, %5094
  %5100 = or i1 %5098, %5099
  %5101 = zext i1 %5100 to i8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5101, i8* %5102, align 1
  %5103 = trunc i64 %5097 to i32
  %5104 = and i32 %5103, 255
  %5105 = call i32 @llvm.ctpop.i32(i32 %5104)
  %5106 = trunc i32 %5105 to i8
  %5107 = and i8 %5106, 1
  %5108 = xor i8 %5107, 1
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5108, i8* %5109, align 1
  %5110 = xor i64 %5094, %5093
  %5111 = xor i64 %5110, %5097
  %5112 = lshr i64 %5111, 4
  %5113 = trunc i64 %5112 to i8
  %5114 = and i8 %5113, 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5114, i8* %5115, align 1
  %5116 = icmp eq i64 %5097, 0
  %5117 = zext i1 %5116 to i8
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5117, i8* %5118, align 1
  %5119 = lshr i64 %5097, 63
  %5120 = trunc i64 %5119 to i8
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5120, i8* %5121, align 1
  %5122 = lshr i64 %5093, 63
  %5123 = lshr i64 %5094, 63
  %5124 = xor i64 %5119, %5122
  %5125 = xor i64 %5119, %5123
  %5126 = add i64 %5124, %5125
  %5127 = icmp eq i64 %5126, 2
  %5128 = zext i1 %5127 to i8
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5128, i8* %5129, align 1
  store %struct.Memory* %loadMem_416c80, %struct.Memory** %MEMORY
  %loadMem_416c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 33
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 1
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %RAX.i303
  %5137 = load i64, i64* %PC.i302
  %5138 = add i64 %5137, 3
  store i64 %5138, i64* %PC.i302
  %5139 = inttoptr i64 %5136 to i64*
  %5140 = load i64, i64* %5139
  store i64 %5140, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_416c83, %struct.Memory** %MEMORY
  %loadMem_416c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 5
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 15
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5149 to i64*
  %5150 = load i64, i64* %RBP.i301
  %5151 = sub i64 %5150, 56
  %5152 = load i64, i64* %PC.i299
  %5153 = add i64 %5152, 4
  store i64 %5153, i64* %PC.i299
  %5154 = inttoptr i64 %5151 to i64*
  %5155 = load i64, i64* %5154
  store i64 %5155, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_416c86, %struct.Memory** %MEMORY
  %loadMem_416c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 33
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 1
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %5161 to i64*
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 5
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %RCX.i298
  %5166 = load i64, i64* %RAX.i297
  %5167 = load i64, i64* %PC.i296
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i296
  %5169 = inttoptr i64 %5165 to i64*
  store i64 %5166, i64* %5169
  store %struct.Memory* %loadMem_416c8a, %struct.Memory** %MEMORY
  %loadMem_416c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 1
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 15
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %5178 to i64*
  %5179 = load i64, i64* %RBP.i295
  %5180 = sub i64 %5179, 24
  %5181 = load i64, i64* %PC.i293
  %5182 = add i64 %5181, 4
  store i64 %5182, i64* %PC.i293
  %5183 = inttoptr i64 %5180 to i64*
  %5184 = load i64, i64* %5183
  store i64 %5184, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_416c8d, %struct.Memory** %MEMORY
  %loadMem_416c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 5
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 15
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %5193 to i64*
  %5194 = load i64, i64* %RBP.i292
  %5195 = sub i64 %5194, 80
  %5196 = load i64, i64* %PC.i290
  %5197 = add i64 %5196, 4
  store i64 %5197, i64* %PC.i290
  %5198 = inttoptr i64 %5195 to i32*
  %5199 = load i32, i32* %5198
  %5200 = sext i32 %5199 to i64
  store i64 %5200, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_416c91, %struct.Memory** %MEMORY
  %loadMem_416c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 5
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RCX.i289
  %5208 = load i64, i64* %PC.i288
  %5209 = add i64 %5208, 4
  store i64 %5209, i64* %PC.i288
  %5210 = shl i64 %5207, 3
  %5211 = icmp slt i64 %5210, 0
  %5212 = shl i64 %5210, 1
  store i64 %5212, i64* %RCX.i289, align 8
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5214 = zext i1 %5211 to i8
  store i8 %5214, i8* %5213, align 1
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5216 = trunc i64 %5212 to i32
  %5217 = and i32 %5216, 254
  %5218 = call i32 @llvm.ctpop.i32(i32 %5217)
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  %5221 = xor i8 %5220, 1
  store i8 %5221, i8* %5215, align 1
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5222, align 1
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5224 = icmp eq i64 %5212, 0
  %5225 = zext i1 %5224 to i8
  store i8 %5225, i8* %5223, align 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5227 = lshr i64 %5212, 63
  %5228 = trunc i64 %5227 to i8
  store i8 %5228, i8* %5226, align 1
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5229, align 1
  store %struct.Memory* %loadMem_416c95, %struct.Memory** %MEMORY
  %loadMem_416c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 33
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5232 to i64*
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 1
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 5
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5238 to i64*
  %5239 = load i64, i64* %RAX.i286
  %5240 = load i64, i64* %RCX.i287
  %5241 = load i64, i64* %PC.i285
  %5242 = add i64 %5241, 3
  store i64 %5242, i64* %PC.i285
  %5243 = add i64 %5240, %5239
  store i64 %5243, i64* %RAX.i286, align 8
  %5244 = icmp ult i64 %5243, %5239
  %5245 = icmp ult i64 %5243, %5240
  %5246 = or i1 %5244, %5245
  %5247 = zext i1 %5246 to i8
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5247, i8* %5248, align 1
  %5249 = trunc i64 %5243 to i32
  %5250 = and i32 %5249, 255
  %5251 = call i32 @llvm.ctpop.i32(i32 %5250)
  %5252 = trunc i32 %5251 to i8
  %5253 = and i8 %5252, 1
  %5254 = xor i8 %5253, 1
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5254, i8* %5255, align 1
  %5256 = xor i64 %5240, %5239
  %5257 = xor i64 %5256, %5243
  %5258 = lshr i64 %5257, 4
  %5259 = trunc i64 %5258 to i8
  %5260 = and i8 %5259, 1
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5260, i8* %5261, align 1
  %5262 = icmp eq i64 %5243, 0
  %5263 = zext i1 %5262 to i8
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5263, i8* %5264, align 1
  %5265 = lshr i64 %5243, 63
  %5266 = trunc i64 %5265 to i8
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5266, i8* %5267, align 1
  %5268 = lshr i64 %5239, 63
  %5269 = lshr i64 %5240, 63
  %5270 = xor i64 %5265, %5268
  %5271 = xor i64 %5265, %5269
  %5272 = add i64 %5270, %5271
  %5273 = icmp eq i64 %5272, 2
  %5274 = zext i1 %5273 to i8
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5274, i8* %5275, align 1
  store %struct.Memory* %loadMem_416c99, %struct.Memory** %MEMORY
  %loadMem_416c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 33
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5278 to i64*
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5280 = getelementptr inbounds %struct.GPR, %struct.GPR* %5279, i32 0, i32 1
  %5281 = getelementptr inbounds %struct.Reg, %struct.Reg* %5280, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %5281 to i64*
  %5282 = load i64, i64* %RAX.i284
  %5283 = add i64 %5282, 12
  %5284 = load i64, i64* %PC.i283
  %5285 = add i64 %5284, 4
  store i64 %5285, i64* %PC.i283
  %5286 = inttoptr i64 %5283 to i32*
  %5287 = load i32, i32* %5286
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5288, align 1
  %5289 = and i32 %5287, 255
  %5290 = call i32 @llvm.ctpop.i32(i32 %5289)
  %5291 = trunc i32 %5290 to i8
  %5292 = and i8 %5291, 1
  %5293 = xor i8 %5292, 1
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5293, i8* %5294, align 1
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5295, align 1
  %5296 = icmp eq i32 %5287, 0
  %5297 = zext i1 %5296 to i8
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5297, i8* %5298, align 1
  %5299 = lshr i32 %5287, 31
  %5300 = trunc i32 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5300, i8* %5301, align 1
  %5302 = lshr i32 %5287, 31
  %5303 = xor i32 %5299, %5302
  %5304 = add i32 %5303, %5302
  %5305 = icmp eq i32 %5304, 2
  %5306 = zext i1 %5305 to i8
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5306, i8* %5307, align 1
  store %struct.Memory* %loadMem_416c9c, %struct.Memory** %MEMORY
  %loadMem_416ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 33
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %PC.i282
  %5312 = add i64 %5311, 198
  %5313 = load i64, i64* %PC.i282
  %5314 = add i64 %5313, 6
  %5315 = load i64, i64* %PC.i282
  %5316 = add i64 %5315, 6
  store i64 %5316, i64* %PC.i282
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5318 = load i8, i8* %5317, align 1
  store i8 %5318, i8* %BRANCH_TAKEN, align 1
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5320 = icmp ne i8 %5318, 0
  %5321 = select i1 %5320, i64 %5312, i64 %5314
  store i64 %5321, i64* %5319, align 8
  store %struct.Memory* %loadMem_416ca0, %struct.Memory** %MEMORY
  %loadBr_416ca0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ca0 = icmp eq i8 %loadBr_416ca0, 1
  br i1 %cmpBr_416ca0, label %block_.L_416d66, label %block_416ca6

block_416ca6:                                     ; preds = %block_.L_416c74
  %loadMem_416ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 33
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5324 to i64*
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 1
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %5327 to i64*
  %5328 = load i64, i64* %PC.i280
  %5329 = add i64 %5328, 8
  store i64 %5329, i64* %PC.i280
  %5330 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %5330, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_416ca6, %struct.Memory** %MEMORY
  %loadMem_416cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 33
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5333 to i64*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 1
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %5336 to i64*
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 5
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %5339 to i64*
  %5340 = load i64, i64* %RAX.i278
  %5341 = add i64 %5340, 1
  %5342 = load i64, i64* %PC.i277
  %5343 = add i64 %5342, 4
  store i64 %5343, i64* %PC.i277
  %5344 = inttoptr i64 %5341 to i8*
  %5345 = load i8, i8* %5344
  %5346 = sext i8 %5345 to i64
  %5347 = and i64 %5346, 4294967295
  store i64 %5347, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_416cae, %struct.Memory** %MEMORY
  %loadMem_416cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 5
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %ECX.i276 = bitcast %union.anon* %5353 to i32*
  %5354 = load i32, i32* %ECX.i276
  %5355 = zext i32 %5354 to i64
  %5356 = load i64, i64* %PC.i275
  %5357 = add i64 %5356, 3
  store i64 %5357, i64* %PC.i275
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5358, align 1
  %5359 = and i32 %5354, 255
  %5360 = call i32 @llvm.ctpop.i32(i32 %5359)
  %5361 = trunc i32 %5360 to i8
  %5362 = and i8 %5361, 1
  %5363 = xor i8 %5362, 1
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5363, i8* %5364, align 1
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5365, align 1
  %5366 = icmp eq i32 %5354, 0
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5367, i8* %5368, align 1
  %5369 = lshr i32 %5354, 31
  %5370 = trunc i32 %5369 to i8
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5370, i8* %5371, align 1
  %5372 = lshr i32 %5354, 31
  %5373 = xor i32 %5369, %5372
  %5374 = add i32 %5373, %5372
  %5375 = icmp eq i32 %5374, 2
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5376, i8* %5377, align 1
  store %struct.Memory* %loadMem_416cb2, %struct.Memory** %MEMORY
  %loadMem_416cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5380 to i64*
  %5381 = load i64, i64* %PC.i274
  %5382 = add i64 %5381, 47
  %5383 = load i64, i64* %PC.i274
  %5384 = add i64 %5383, 6
  %5385 = load i64, i64* %PC.i274
  %5386 = add i64 %5385, 6
  store i64 %5386, i64* %PC.i274
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5388 = load i8, i8* %5387, align 1
  store i8 %5388, i8* %BRANCH_TAKEN, align 1
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5390 = icmp ne i8 %5388, 0
  %5391 = select i1 %5390, i64 %5382, i64 %5384
  store i64 %5391, i64* %5389, align 8
  store %struct.Memory* %loadMem_416cb5, %struct.Memory** %MEMORY
  %loadBr_416cb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416cb5 = icmp eq i8 %loadBr_416cb5, 1
  br i1 %cmpBr_416cb5, label %block_.L_416ce4, label %block_416cbb

block_416cbb:                                     ; preds = %block_416ca6
  %loadMem_416cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 1
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %PC.i272
  %5399 = add i64 %5398, 8
  store i64 %5399, i64* %PC.i272
  %5400 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %5400, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_416cbb, %struct.Memory** %MEMORY
  %loadMem_416cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 33
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 1
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %5406 to i64*
  %5407 = load i64, i64* %RAX.i271
  %5408 = load i64, i64* %PC.i270
  %5409 = add i64 %5408, 4
  store i64 %5409, i64* %PC.i270
  %5410 = add i64 1, %5407
  store i64 %5410, i64* %RAX.i271, align 8
  %5411 = icmp ult i64 %5410, %5407
  %5412 = icmp ult i64 %5410, 1
  %5413 = or i1 %5411, %5412
  %5414 = zext i1 %5413 to i8
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5414, i8* %5415, align 1
  %5416 = trunc i64 %5410 to i32
  %5417 = and i32 %5416, 255
  %5418 = call i32 @llvm.ctpop.i32(i32 %5417)
  %5419 = trunc i32 %5418 to i8
  %5420 = and i8 %5419, 1
  %5421 = xor i8 %5420, 1
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5421, i8* %5422, align 1
  %5423 = xor i64 1, %5407
  %5424 = xor i64 %5423, %5410
  %5425 = lshr i64 %5424, 4
  %5426 = trunc i64 %5425 to i8
  %5427 = and i8 %5426, 1
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5427, i8* %5428, align 1
  %5429 = icmp eq i64 %5410, 0
  %5430 = zext i1 %5429 to i8
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5430, i8* %5431, align 1
  %5432 = lshr i64 %5410, 63
  %5433 = trunc i64 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5433, i8* %5434, align 1
  %5435 = lshr i64 %5407, 63
  %5436 = xor i64 %5432, %5435
  %5437 = add i64 %5436, %5432
  %5438 = icmp eq i64 %5437, 2
  %5439 = zext i1 %5438 to i8
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5439, i8* %5440, align 1
  store %struct.Memory* %loadMem_416cc3, %struct.Memory** %MEMORY
  %loadMem_416cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 33
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 5
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 15
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %5449 to i64*
  %5450 = load i64, i64* %RBP.i269
  %5451 = sub i64 %5450, 64
  %5452 = load i64, i64* %PC.i267
  %5453 = add i64 %5452, 4
  store i64 %5453, i64* %PC.i267
  %5454 = inttoptr i64 %5451 to i64*
  %5455 = load i64, i64* %5454
  store i64 %5455, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_416cc7, %struct.Memory** %MEMORY
  %loadMem_416ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 33
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5458 to i64*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 1
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %5461 to i64*
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 5
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %5464 to i64*
  %5465 = load i64, i64* %RCX.i266
  %5466 = load i64, i64* %RAX.i265
  %5467 = load i64, i64* %PC.i264
  %5468 = add i64 %5467, 3
  store i64 %5468, i64* %PC.i264
  %5469 = inttoptr i64 %5465 to i64*
  store i64 %5466, i64* %5469
  store %struct.Memory* %loadMem_416ccb, %struct.Memory** %MEMORY
  %loadMem_416cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 7
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %5475 to i64*
  %5476 = load i64, i64* %PC.i262
  %5477 = add i64 %5476, 7
  store i64 %5477, i64* %PC.i262
  %5478 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %5479 = zext i32 %5478 to i64
  store i64 %5479, i64* %RDX.i263, align 8
  store %struct.Memory* %loadMem_416cce, %struct.Memory** %MEMORY
  %loadMem_416cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 33
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 7
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RDX.i261
  %5487 = load i64, i64* %PC.i260
  %5488 = add i64 %5487, 3
  store i64 %5488, i64* %PC.i260
  %5489 = trunc i64 %5486 to i32
  %5490 = add i32 1, %5489
  %5491 = zext i32 %5490 to i64
  store i64 %5491, i64* %RDX.i261, align 8
  %5492 = icmp ult i32 %5490, %5489
  %5493 = icmp ult i32 %5490, 1
  %5494 = or i1 %5492, %5493
  %5495 = zext i1 %5494 to i8
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5495, i8* %5496, align 1
  %5497 = and i32 %5490, 255
  %5498 = call i32 @llvm.ctpop.i32(i32 %5497)
  %5499 = trunc i32 %5498 to i8
  %5500 = and i8 %5499, 1
  %5501 = xor i8 %5500, 1
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5501, i8* %5502, align 1
  %5503 = xor i64 1, %5486
  %5504 = trunc i64 %5503 to i32
  %5505 = xor i32 %5504, %5490
  %5506 = lshr i32 %5505, 4
  %5507 = trunc i32 %5506 to i8
  %5508 = and i8 %5507, 1
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5508, i8* %5509, align 1
  %5510 = icmp eq i32 %5490, 0
  %5511 = zext i1 %5510 to i8
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5511, i8* %5512, align 1
  %5513 = lshr i32 %5490, 31
  %5514 = trunc i32 %5513 to i8
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5514, i8* %5515, align 1
  %5516 = lshr i32 %5489, 31
  %5517 = xor i32 %5513, %5516
  %5518 = add i32 %5517, %5513
  %5519 = icmp eq i32 %5518, 2
  %5520 = zext i1 %5519 to i8
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5520, i8* %5521, align 1
  store %struct.Memory* %loadMem_416cd5, %struct.Memory** %MEMORY
  %loadMem_416cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 33
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5524 to i64*
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 7
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5527 to i32*
  %5528 = load i32, i32* %EDX.i
  %5529 = zext i32 %5528 to i64
  %5530 = load i64, i64* %PC.i259
  %5531 = add i64 %5530, 7
  store i64 %5531, i64* %PC.i259
  store i32 %5528, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416cd8, %struct.Memory** %MEMORY
  %loadMem_416cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5534 to i64*
  %5535 = load i64, i64* %PC.i258
  %5536 = add i64 %5535, 118
  %5537 = load i64, i64* %PC.i258
  %5538 = add i64 %5537, 5
  store i64 %5538, i64* %PC.i258
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5536, i64* %5539, align 8
  store %struct.Memory* %loadMem_416cdf, %struct.Memory** %MEMORY
  br label %block_.L_416d55

block_.L_416ce4:                                  ; preds = %block_416ca6
  %loadMem_416ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5542 to i64*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 1
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %5545 to i64*
  %5546 = load i64, i64* %PC.i256
  %5547 = add i64 %5546, 7
  store i64 %5547, i64* %PC.i256
  %5548 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %5549 = zext i32 %5548 to i64
  store i64 %5549, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_416ce4, %struct.Memory** %MEMORY
  %loadMem_416ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 33
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5552 to i64*
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 1
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %5555 to i64*
  %5556 = load i64, i64* %RAX.i255
  %5557 = load i64, i64* %PC.i254
  %5558 = add i64 %5557, 3
  store i64 %5558, i64* %PC.i254
  %5559 = trunc i64 %5556 to i32
  %5560 = add i32 1, %5559
  %5561 = zext i32 %5560 to i64
  store i64 %5561, i64* %RAX.i255, align 8
  %5562 = icmp ult i32 %5560, %5559
  %5563 = icmp ult i32 %5560, 1
  %5564 = or i1 %5562, %5563
  %5565 = zext i1 %5564 to i8
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5565, i8* %5566, align 1
  %5567 = and i32 %5560, 255
  %5568 = call i32 @llvm.ctpop.i32(i32 %5567)
  %5569 = trunc i32 %5568 to i8
  %5570 = and i8 %5569, 1
  %5571 = xor i8 %5570, 1
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5571, i8* %5572, align 1
  %5573 = xor i64 1, %5556
  %5574 = trunc i64 %5573 to i32
  %5575 = xor i32 %5574, %5560
  %5576 = lshr i32 %5575, 4
  %5577 = trunc i32 %5576 to i8
  %5578 = and i8 %5577, 1
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5578, i8* %5579, align 1
  %5580 = icmp eq i32 %5560, 0
  %5581 = zext i1 %5580 to i8
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5581, i8* %5582, align 1
  %5583 = lshr i32 %5560, 31
  %5584 = trunc i32 %5583 to i8
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5584, i8* %5585, align 1
  %5586 = lshr i32 %5559, 31
  %5587 = xor i32 %5583, %5586
  %5588 = add i32 %5587, %5583
  %5589 = icmp eq i32 %5588, 2
  %5590 = zext i1 %5589 to i8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5590, i8* %5591, align 1
  store %struct.Memory* %loadMem_416ceb, %struct.Memory** %MEMORY
  %loadMem_416cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 33
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5594 to i64*
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 1
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %EAX.i252 = bitcast %union.anon* %5597 to i32*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 15
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %5600 to i64*
  %5601 = load i32, i32* %EAX.i252
  %5602 = zext i32 %5601 to i64
  %5603 = load i64, i64* %RBP.i253
  %5604 = sub i64 %5603, 8
  %5605 = load i64, i64* %PC.i251
  %5606 = add i64 %5605, 3
  store i64 %5606, i64* %PC.i251
  %5607 = inttoptr i64 %5604 to i32*
  %5608 = load i32, i32* %5607
  %5609 = sub i32 %5601, %5608
  %5610 = icmp ult i32 %5601, %5608
  %5611 = zext i1 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5611, i8* %5612, align 1
  %5613 = and i32 %5609, 255
  %5614 = call i32 @llvm.ctpop.i32(i32 %5613)
  %5615 = trunc i32 %5614 to i8
  %5616 = and i8 %5615, 1
  %5617 = xor i8 %5616, 1
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5617, i8* %5618, align 1
  %5619 = xor i32 %5608, %5601
  %5620 = xor i32 %5619, %5609
  %5621 = lshr i32 %5620, 4
  %5622 = trunc i32 %5621 to i8
  %5623 = and i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5623, i8* %5624, align 1
  %5625 = icmp eq i32 %5609, 0
  %5626 = zext i1 %5625 to i8
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5626, i8* %5627, align 1
  %5628 = lshr i32 %5609, 31
  %5629 = trunc i32 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5629, i8* %5630, align 1
  %5631 = lshr i32 %5601, 31
  %5632 = lshr i32 %5608, 31
  %5633 = xor i32 %5632, %5631
  %5634 = xor i32 %5628, %5631
  %5635 = add i32 %5634, %5633
  %5636 = icmp eq i32 %5635, 2
  %5637 = zext i1 %5636 to i8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5637, i8* %5638, align 1
  store %struct.Memory* %loadMem_416cee, %struct.Memory** %MEMORY
  %loadMem_416cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5641 to i64*
  %5642 = load i64, i64* %PC.i250
  %5643 = add i64 %5642, 56
  %5644 = load i64, i64* %PC.i250
  %5645 = add i64 %5644, 6
  %5646 = load i64, i64* %PC.i250
  %5647 = add i64 %5646, 6
  store i64 %5647, i64* %PC.i250
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5649 = load i8, i8* %5648, align 1
  %5650 = icmp ne i8 %5649, 0
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5652 = load i8, i8* %5651, align 1
  %5653 = icmp ne i8 %5652, 0
  %5654 = xor i1 %5650, %5653
  %5655 = xor i1 %5654, true
  %5656 = zext i1 %5655 to i8
  store i8 %5656, i8* %BRANCH_TAKEN, align 1
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5658 = select i1 %5654, i64 %5645, i64 %5643
  store i64 %5658, i64* %5657, align 8
  store %struct.Memory* %loadMem_416cf1, %struct.Memory** %MEMORY
  %loadBr_416cf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416cf1 = icmp eq i8 %loadBr_416cf1, 1
  br i1 %cmpBr_416cf1, label %block_.L_416d29, label %block_416cf7

block_416cf7:                                     ; preds = %block_.L_416ce4
  %loadMem_416cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 33
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 1
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 15
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %5667 to i64*
  %5668 = load i64, i64* %RBP.i249
  %5669 = sub i64 %5668, 16
  %5670 = load i64, i64* %PC.i247
  %5671 = add i64 %5670, 4
  store i64 %5671, i64* %PC.i247
  %5672 = inttoptr i64 %5669 to i64*
  %5673 = load i64, i64* %5672
  store i64 %5673, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_416cf7, %struct.Memory** %MEMORY
  %loadMem_416cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 5
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %PC.i245
  %5681 = add i64 %5680, 7
  store i64 %5681, i64* %PC.i245
  %5682 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %5683 = zext i32 %5682 to i64
  store i64 %5683, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_416cfb, %struct.Memory** %MEMORY
  %loadMem_416d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 5
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %5689 to i64*
  %5690 = load i64, i64* %RCX.i244
  %5691 = load i64, i64* %PC.i243
  %5692 = add i64 %5691, 3
  store i64 %5692, i64* %PC.i243
  %5693 = trunc i64 %5690 to i32
  %5694 = add i32 1, %5693
  %5695 = zext i32 %5694 to i64
  store i64 %5695, i64* %RCX.i244, align 8
  %5696 = icmp ult i32 %5694, %5693
  %5697 = icmp ult i32 %5694, 1
  %5698 = or i1 %5696, %5697
  %5699 = zext i1 %5698 to i8
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5699, i8* %5700, align 1
  %5701 = and i32 %5694, 255
  %5702 = call i32 @llvm.ctpop.i32(i32 %5701)
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  %5705 = xor i8 %5704, 1
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5705, i8* %5706, align 1
  %5707 = xor i64 1, %5690
  %5708 = trunc i64 %5707 to i32
  %5709 = xor i32 %5708, %5694
  %5710 = lshr i32 %5709, 4
  %5711 = trunc i32 %5710 to i8
  %5712 = and i8 %5711, 1
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5712, i8* %5713, align 1
  %5714 = icmp eq i32 %5694, 0
  %5715 = zext i1 %5714 to i8
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5715, i8* %5716, align 1
  %5717 = lshr i32 %5694, 31
  %5718 = trunc i32 %5717 to i8
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5718, i8* %5719, align 1
  %5720 = lshr i32 %5693, 31
  %5721 = xor i32 %5717, %5720
  %5722 = add i32 %5721, %5717
  %5723 = icmp eq i32 %5722, 2
  %5724 = zext i1 %5723 to i8
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5724, i8* %5725, align 1
  store %struct.Memory* %loadMem_416d02, %struct.Memory** %MEMORY
  %loadMem_416d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 33
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5728 to i64*
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 5
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %ECX.i241 = bitcast %union.anon* %5731 to i32*
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 7
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %5734 to i64*
  %5735 = load i32, i32* %ECX.i241
  %5736 = zext i32 %5735 to i64
  %5737 = load i64, i64* %PC.i240
  %5738 = add i64 %5737, 3
  store i64 %5738, i64* %PC.i240
  %5739 = shl i64 %5736, 32
  %5740 = ashr exact i64 %5739, 32
  store i64 %5740, i64* %RDX.i242, align 8
  store %struct.Memory* %loadMem_416d05, %struct.Memory** %MEMORY
  %loadMem_416d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 33
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5743 to i64*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 1
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5746 to i64*
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 7
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %5749 to i64*
  %5750 = load i64, i64* %RAX.i238
  %5751 = load i64, i64* %RDX.i239
  %5752 = mul i64 %5751, 8
  %5753 = add i64 %5752, %5750
  %5754 = load i64, i64* %PC.i237
  %5755 = add i64 %5754, 4
  store i64 %5755, i64* %PC.i237
  %5756 = inttoptr i64 %5753 to i64*
  %5757 = load i64, i64* %5756
  store i64 %5757, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_416d08, %struct.Memory** %MEMORY
  %loadMem_416d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 7
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 15
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %5766 to i64*
  %5767 = load i64, i64* %RBP.i236
  %5768 = sub i64 %5767, 64
  %5769 = load i64, i64* %PC.i234
  %5770 = add i64 %5769, 4
  store i64 %5770, i64* %PC.i234
  %5771 = inttoptr i64 %5768 to i64*
  %5772 = load i64, i64* %5771
  store i64 %5772, i64* %RDX.i235, align 8
  store %struct.Memory* %loadMem_416d0c, %struct.Memory** %MEMORY
  %loadMem_416d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 1
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %5778 to i64*
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 7
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %5781 to i64*
  %5782 = load i64, i64* %RDX.i233
  %5783 = load i64, i64* %RAX.i232
  %5784 = load i64, i64* %PC.i231
  %5785 = add i64 %5784, 3
  store i64 %5785, i64* %PC.i231
  %5786 = inttoptr i64 %5782 to i64*
  store i64 %5783, i64* %5786
  store %struct.Memory* %loadMem_416d10, %struct.Memory** %MEMORY
  %loadMem_416d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 33
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 5
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %PC.i229
  %5794 = add i64 %5793, 7
  store i64 %5794, i64* %PC.i229
  %5795 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %5796 = zext i32 %5795 to i64
  store i64 %5796, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_416d13, %struct.Memory** %MEMORY
  %loadMem_416d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 33
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5799 to i64*
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 5
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %5802 to i64*
  %5803 = load i64, i64* %RCX.i228
  %5804 = load i64, i64* %PC.i227
  %5805 = add i64 %5804, 3
  store i64 %5805, i64* %PC.i227
  %5806 = trunc i64 %5803 to i32
  %5807 = add i32 2, %5806
  %5808 = zext i32 %5807 to i64
  store i64 %5808, i64* %RCX.i228, align 8
  %5809 = icmp ult i32 %5807, %5806
  %5810 = icmp ult i32 %5807, 2
  %5811 = or i1 %5809, %5810
  %5812 = zext i1 %5811 to i8
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5812, i8* %5813, align 1
  %5814 = and i32 %5807, 255
  %5815 = call i32 @llvm.ctpop.i32(i32 %5814)
  %5816 = trunc i32 %5815 to i8
  %5817 = and i8 %5816, 1
  %5818 = xor i8 %5817, 1
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5818, i8* %5819, align 1
  %5820 = xor i64 2, %5803
  %5821 = trunc i64 %5820 to i32
  %5822 = xor i32 %5821, %5807
  %5823 = lshr i32 %5822, 4
  %5824 = trunc i32 %5823 to i8
  %5825 = and i8 %5824, 1
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5825, i8* %5826, align 1
  %5827 = icmp eq i32 %5807, 0
  %5828 = zext i1 %5827 to i8
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5828, i8* %5829, align 1
  %5830 = lshr i32 %5807, 31
  %5831 = trunc i32 %5830 to i8
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5831, i8* %5832, align 1
  %5833 = lshr i32 %5806, 31
  %5834 = xor i32 %5830, %5833
  %5835 = add i32 %5834, %5830
  %5836 = icmp eq i32 %5835, 2
  %5837 = zext i1 %5836 to i8
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5837, i8* %5838, align 1
  store %struct.Memory* %loadMem_416d1a, %struct.Memory** %MEMORY
  %loadMem_416d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 33
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %5841 to i64*
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 5
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %ECX.i226 = bitcast %union.anon* %5844 to i32*
  %5845 = load i32, i32* %ECX.i226
  %5846 = zext i32 %5845 to i64
  %5847 = load i64, i64* %PC.i225
  %5848 = add i64 %5847, 7
  store i64 %5848, i64* %PC.i225
  store i32 %5845, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416d1d, %struct.Memory** %MEMORY
  %loadMem_416d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 33
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5851 to i64*
  %5852 = load i64, i64* %PC.i224
  %5853 = add i64 %5852, 44
  %5854 = load i64, i64* %PC.i224
  %5855 = add i64 %5854, 5
  store i64 %5855, i64* %PC.i224
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5853, i64* %5856, align 8
  store %struct.Memory* %loadMem_416d24, %struct.Memory** %MEMORY
  br label %block_.L_416d50

block_.L_416d29:                                  ; preds = %block_.L_416ce4
  %loadMem_416d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 33
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5859 to i64*
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 11
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %5862 to i64*
  %5863 = load i64, i64* %PC.i222
  %5864 = add i64 %5863, 10
  store i64 %5864, i64* %PC.i222
  store i64 ptrtoint (%G__0x456a78_type* @G__0x456a78 to i64), i64* %RDI.i223, align 8
  store %struct.Memory* %loadMem_416d29, %struct.Memory** %MEMORY
  %loadMem_416d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 33
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5867 to i64*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 1
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 15
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %RBP.i221
  %5875 = sub i64 %5874, 24
  %5876 = load i64, i64* %PC.i219
  %5877 = add i64 %5876, 4
  store i64 %5877, i64* %PC.i219
  %5878 = inttoptr i64 %5875 to i64*
  %5879 = load i64, i64* %5878
  store i64 %5879, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_416d33, %struct.Memory** %MEMORY
  %loadMem_416d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 33
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5882 to i64*
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 5
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 15
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %5888 to i64*
  %5889 = load i64, i64* %RBP.i218
  %5890 = sub i64 %5889, 80
  %5891 = load i64, i64* %PC.i216
  %5892 = add i64 %5891, 4
  store i64 %5892, i64* %PC.i216
  %5893 = inttoptr i64 %5890 to i32*
  %5894 = load i32, i32* %5893
  %5895 = sext i32 %5894 to i64
  store i64 %5895, i64* %RCX.i217, align 8
  store %struct.Memory* %loadMem_416d37, %struct.Memory** %MEMORY
  %loadMem_416d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 33
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5898 to i64*
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 5
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %5901 to i64*
  %5902 = load i64, i64* %RCX.i215
  %5903 = load i64, i64* %PC.i214
  %5904 = add i64 %5903, 4
  store i64 %5904, i64* %PC.i214
  %5905 = shl i64 %5902, 3
  %5906 = icmp slt i64 %5905, 0
  %5907 = shl i64 %5905, 1
  store i64 %5907, i64* %RCX.i215, align 8
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5909 = zext i1 %5906 to i8
  store i8 %5909, i8* %5908, align 1
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5911 = trunc i64 %5907 to i32
  %5912 = and i32 %5911, 254
  %5913 = call i32 @llvm.ctpop.i32(i32 %5912)
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  %5916 = xor i8 %5915, 1
  store i8 %5916, i8* %5910, align 1
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5917, align 1
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5919 = icmp eq i64 %5907, 0
  %5920 = zext i1 %5919 to i8
  store i8 %5920, i8* %5918, align 1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5922 = lshr i64 %5907, 63
  %5923 = trunc i64 %5922 to i8
  store i8 %5923, i8* %5921, align 1
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5924, align 1
  store %struct.Memory* %loadMem_416d3b, %struct.Memory** %MEMORY
  %loadMem_416d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 1
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 5
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %5933 to i64*
  %5934 = load i64, i64* %RAX.i212
  %5935 = load i64, i64* %RCX.i213
  %5936 = load i64, i64* %PC.i211
  %5937 = add i64 %5936, 3
  store i64 %5937, i64* %PC.i211
  %5938 = add i64 %5935, %5934
  store i64 %5938, i64* %RAX.i212, align 8
  %5939 = icmp ult i64 %5938, %5934
  %5940 = icmp ult i64 %5938, %5935
  %5941 = or i1 %5939, %5940
  %5942 = zext i1 %5941 to i8
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5942, i8* %5943, align 1
  %5944 = trunc i64 %5938 to i32
  %5945 = and i32 %5944, 255
  %5946 = call i32 @llvm.ctpop.i32(i32 %5945)
  %5947 = trunc i32 %5946 to i8
  %5948 = and i8 %5947, 1
  %5949 = xor i8 %5948, 1
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5949, i8* %5950, align 1
  %5951 = xor i64 %5935, %5934
  %5952 = xor i64 %5951, %5938
  %5953 = lshr i64 %5952, 4
  %5954 = trunc i64 %5953 to i8
  %5955 = and i8 %5954, 1
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5955, i8* %5956, align 1
  %5957 = icmp eq i64 %5938, 0
  %5958 = zext i1 %5957 to i8
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5958, i8* %5959, align 1
  %5960 = lshr i64 %5938, 63
  %5961 = trunc i64 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5961, i8* %5962, align 1
  %5963 = lshr i64 %5934, 63
  %5964 = lshr i64 %5935, 63
  %5965 = xor i64 %5960, %5963
  %5966 = xor i64 %5960, %5964
  %5967 = add i64 %5965, %5966
  %5968 = icmp eq i64 %5967, 2
  %5969 = zext i1 %5968 to i8
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5969, i8* %5970, align 1
  store %struct.Memory* %loadMem_416d3f, %struct.Memory** %MEMORY
  %loadMem_416d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 33
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 1
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %5976 to i64*
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 9
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %RSI.i210 = bitcast %union.anon* %5979 to i64*
  %5980 = load i64, i64* %RAX.i209
  %5981 = load i64, i64* %PC.i208
  %5982 = add i64 %5981, 3
  store i64 %5982, i64* %PC.i208
  %5983 = inttoptr i64 %5980 to i64*
  %5984 = load i64, i64* %5983
  store i64 %5984, i64* %RSI.i210, align 8
  store %struct.Memory* %loadMem_416d42, %struct.Memory** %MEMORY
  %loadMem_416d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5987 to i64*
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 7
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %5990 to i64*
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 15
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5993 to i64*
  %5994 = load i64, i64* %RBP.i207
  %5995 = sub i64 %5994, 40
  %5996 = load i64, i64* %PC.i205
  %5997 = add i64 %5996, 4
  store i64 %5997, i64* %PC.i205
  %5998 = inttoptr i64 %5995 to i64*
  %5999 = load i64, i64* %5998
  store i64 %5999, i64* %RDX.i206, align 8
  store %struct.Memory* %loadMem_416d45, %struct.Memory** %MEMORY
  %loadMem_416d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 1
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %6006 = bitcast %union.anon* %6005 to %struct.anon.2*
  %AL.i204 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6006, i32 0, i32 0
  %6007 = load i64, i64* %PC.i203
  %6008 = add i64 %6007, 2
  store i64 %6008, i64* %PC.i203
  store i8 0, i8* %AL.i204, align 1
  store %struct.Memory* %loadMem_416d49, %struct.Memory** %MEMORY
  %loadMem1_416d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 33
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6011 to i64*
  %6012 = load i64, i64* %PC.i202
  %6013 = add i64 %6012, 163013
  %6014 = load i64, i64* %PC.i202
  %6015 = add i64 %6014, 5
  %6016 = load i64, i64* %PC.i202
  %6017 = add i64 %6016, 5
  store i64 %6017, i64* %PC.i202
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6019 = load i64, i64* %6018, align 8
  %6020 = add i64 %6019, -8
  %6021 = inttoptr i64 %6020 to i64*
  store i64 %6015, i64* %6021
  store i64 %6020, i64* %6018, align 8
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6013, i64* %6022, align 8
  store %struct.Memory* %loadMem1_416d4b, %struct.Memory** %MEMORY
  %loadMem2_416d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416d4b = load i64, i64* %3
  %call2_416d4b = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416d4b, %struct.Memory* %loadMem2_416d4b)
  store %struct.Memory* %call2_416d4b, %struct.Memory** %MEMORY
  br label %block_.L_416d50

block_.L_416d50:                                  ; preds = %block_.L_416d29, %block_416cf7
  %loadMem_416d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 33
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6025 to i64*
  %6026 = load i64, i64* %PC.i201
  %6027 = add i64 %6026, 5
  %6028 = load i64, i64* %PC.i201
  %6029 = add i64 %6028, 5
  store i64 %6029, i64* %PC.i201
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6027, i64* %6030, align 8
  store %struct.Memory* %loadMem_416d50, %struct.Memory** %MEMORY
  br label %block_.L_416d55

block_.L_416d55:                                  ; preds = %block_.L_416d50, %block_416cbb
  %loadMem_416d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 33
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %6033 to i64*
  %6034 = load i64, i64* %PC.i200
  %6035 = add i64 %6034, 12
  store i64 %6035, i64* %PC.i200
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_416d55, %struct.Memory** %MEMORY
  %loadMem_416d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6038 to i64*
  %6039 = load i64, i64* %PC.i199
  %6040 = add i64 %6039, 96
  %6041 = load i64, i64* %PC.i199
  %6042 = add i64 %6041, 5
  store i64 %6042, i64* %PC.i199
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6040, i64* %6043, align 8
  store %struct.Memory* %loadMem_416d61, %struct.Memory** %MEMORY
  br label %block_.L_416dc1

block_.L_416d66:                                  ; preds = %block_.L_416c74
  %loadMem_416d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6045 = getelementptr inbounds %struct.GPR, %struct.GPR* %6044, i32 0, i32 33
  %6046 = getelementptr inbounds %struct.Reg, %struct.Reg* %6045, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6046 to i64*
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 1
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 15
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6052 to i64*
  %6053 = load i64, i64* %RBP.i198
  %6054 = sub i64 %6053, 64
  %6055 = load i64, i64* %PC.i196
  %6056 = add i64 %6055, 4
  store i64 %6056, i64* %PC.i196
  %6057 = inttoptr i64 %6054 to i64*
  %6058 = load i64, i64* %6057
  store i64 %6058, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_416d66, %struct.Memory** %MEMORY
  %loadMem_416d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6060 = getelementptr inbounds %struct.GPR, %struct.GPR* %6059, i32 0, i32 33
  %6061 = getelementptr inbounds %struct.Reg, %struct.Reg* %6060, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6061 to i64*
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 1
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %6064 to i64*
  %6065 = load i64, i64* %RAX.i195
  %6066 = load i64, i64* %PC.i194
  %6067 = add i64 %6066, 7
  store i64 %6067, i64* %PC.i194
  %6068 = inttoptr i64 %6065 to i64*
  store i64 0, i64* %6068
  store %struct.Memory* %loadMem_416d6a, %struct.Memory** %MEMORY
  %loadMem_416d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 33
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6071 to i64*
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 1
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %6074 to i64*
  %6075 = load i64, i64* %PC.i192
  %6076 = add i64 %6075, 8
  store i64 %6076, i64* %PC.i192
  %6077 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %6077, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_416d71, %struct.Memory** %MEMORY
  %loadMem_416d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 33
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6080 to i64*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 1
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %6083 to i64*
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 5
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %RAX.i190
  %6088 = add i64 %6087, 1
  %6089 = load i64, i64* %PC.i189
  %6090 = add i64 %6089, 4
  store i64 %6090, i64* %PC.i189
  %6091 = inttoptr i64 %6088 to i8*
  %6092 = load i8, i8* %6091
  %6093 = sext i8 %6092 to i64
  %6094 = and i64 %6093, 4294967295
  store i64 %6094, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_416d79, %struct.Memory** %MEMORY
  %loadMem_416d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 33
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6097 to i64*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 5
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6100 to i32*
  %6101 = load i32, i32* %ECX.i
  %6102 = zext i32 %6101 to i64
  %6103 = load i64, i64* %PC.i188
  %6104 = add i64 %6103, 3
  store i64 %6104, i64* %PC.i188
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6105, align 1
  %6106 = and i32 %6101, 255
  %6107 = call i32 @llvm.ctpop.i32(i32 %6106)
  %6108 = trunc i32 %6107 to i8
  %6109 = and i8 %6108, 1
  %6110 = xor i8 %6109, 1
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6110, i8* %6111, align 1
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6112, align 1
  %6113 = icmp eq i32 %6101, 0
  %6114 = zext i1 %6113 to i8
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6114, i8* %6115, align 1
  %6116 = lshr i32 %6101, 31
  %6117 = trunc i32 %6116 to i8
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6117, i8* %6118, align 1
  %6119 = lshr i32 %6101, 31
  %6120 = xor i32 %6116, %6119
  %6121 = add i32 %6120, %6119
  %6122 = icmp eq i32 %6121, 2
  %6123 = zext i1 %6122 to i8
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6123, i8* %6124, align 1
  store %struct.Memory* %loadMem_416d7d, %struct.Memory** %MEMORY
  %loadMem_416d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 33
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6127 to i64*
  %6128 = load i64, i64* %PC.i187
  %6129 = add i64 %6128, 31
  %6130 = load i64, i64* %PC.i187
  %6131 = add i64 %6130, 6
  %6132 = load i64, i64* %PC.i187
  %6133 = add i64 %6132, 6
  store i64 %6133, i64* %PC.i187
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6135 = load i8, i8* %6134, align 1
  store i8 %6135, i8* %BRANCH_TAKEN, align 1
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6137 = icmp ne i8 %6135, 0
  %6138 = select i1 %6137, i64 %6129, i64 %6131
  store i64 %6138, i64* %6136, align 8
  store %struct.Memory* %loadMem_416d80, %struct.Memory** %MEMORY
  %loadBr_416d80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416d80 = icmp eq i8 %loadBr_416d80, 1
  br i1 %cmpBr_416d80, label %block_.L_416d9f, label %block_416d86

block_416d86:                                     ; preds = %block_.L_416d66
  %loadMem_416d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 33
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 1
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %6144 to i64*
  %6145 = load i64, i64* %PC.i185
  %6146 = add i64 %6145, 8
  store i64 %6146, i64* %PC.i185
  %6147 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %6147, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_416d86, %struct.Memory** %MEMORY
  %loadMem_416d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 1
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6153 to i64*
  %6154 = load i64, i64* %RAX.i184
  %6155 = load i64, i64* %PC.i183
  %6156 = add i64 %6155, 4
  store i64 %6156, i64* %PC.i183
  %6157 = add i64 1, %6154
  store i64 %6157, i64* %RAX.i184, align 8
  %6158 = icmp ult i64 %6157, %6154
  %6159 = icmp ult i64 %6157, 1
  %6160 = or i1 %6158, %6159
  %6161 = zext i1 %6160 to i8
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6161, i8* %6162, align 1
  %6163 = trunc i64 %6157 to i32
  %6164 = and i32 %6163, 255
  %6165 = call i32 @llvm.ctpop.i32(i32 %6164)
  %6166 = trunc i32 %6165 to i8
  %6167 = and i8 %6166, 1
  %6168 = xor i8 %6167, 1
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6168, i8* %6169, align 1
  %6170 = xor i64 1, %6154
  %6171 = xor i64 %6170, %6157
  %6172 = lshr i64 %6171, 4
  %6173 = trunc i64 %6172 to i8
  %6174 = and i8 %6173, 1
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6174, i8* %6175, align 1
  %6176 = icmp eq i64 %6157, 0
  %6177 = zext i1 %6176 to i8
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6177, i8* %6178, align 1
  %6179 = lshr i64 %6157, 63
  %6180 = trunc i64 %6179 to i8
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6180, i8* %6181, align 1
  %6182 = lshr i64 %6154, 63
  %6183 = xor i64 %6179, %6182
  %6184 = add i64 %6183, %6179
  %6185 = icmp eq i64 %6184, 2
  %6186 = zext i1 %6185 to i8
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6186, i8* %6187, align 1
  store %struct.Memory* %loadMem_416d8e, %struct.Memory** %MEMORY
  %loadMem_416d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 33
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 1
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %6193 to i64*
  %6194 = load i64, i64* %RAX.i182
  %6195 = load i64, i64* %PC.i181
  %6196 = add i64 %6195, 8
  store i64 %6196, i64* %PC.i181
  store i64 %6194, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_416d92, %struct.Memory** %MEMORY
  %loadMem_416d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 33
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6199 to i64*
  %6200 = load i64, i64* %PC.i180
  %6201 = add i64 %6200, 34
  %6202 = load i64, i64* %PC.i180
  %6203 = add i64 %6202, 5
  store i64 %6203, i64* %PC.i180
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6201, i64* %6204, align 8
  store %struct.Memory* %loadMem_416d9a, %struct.Memory** %MEMORY
  br label %block_.L_416dbc

block_.L_416d9f:                                  ; preds = %block_.L_416d66
  %loadMem_416d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 33
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 1
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %PC.i178
  %6212 = add i64 %6211, 7
  store i64 %6212, i64* %PC.i178
  %6213 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %6214 = zext i32 %6213 to i64
  store i64 %6214, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_416d9f, %struct.Memory** %MEMORY
  %loadMem_416da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 33
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 1
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %6220 to i64*
  %6221 = load i64, i64* %RAX.i177
  %6222 = load i64, i64* %PC.i176
  %6223 = add i64 %6222, 3
  store i64 %6223, i64* %PC.i176
  %6224 = trunc i64 %6221 to i32
  %6225 = add i32 1, %6224
  %6226 = zext i32 %6225 to i64
  store i64 %6226, i64* %RAX.i177, align 8
  %6227 = icmp ult i32 %6225, %6224
  %6228 = icmp ult i32 %6225, 1
  %6229 = or i1 %6227, %6228
  %6230 = zext i1 %6229 to i8
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6230, i8* %6231, align 1
  %6232 = and i32 %6225, 255
  %6233 = call i32 @llvm.ctpop.i32(i32 %6232)
  %6234 = trunc i32 %6233 to i8
  %6235 = and i8 %6234, 1
  %6236 = xor i8 %6235, 1
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6236, i8* %6237, align 1
  %6238 = xor i64 1, %6221
  %6239 = trunc i64 %6238 to i32
  %6240 = xor i32 %6239, %6225
  %6241 = lshr i32 %6240, 4
  %6242 = trunc i32 %6241 to i8
  %6243 = and i8 %6242, 1
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6243, i8* %6244, align 1
  %6245 = icmp eq i32 %6225, 0
  %6246 = zext i1 %6245 to i8
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6246, i8* %6247, align 1
  %6248 = lshr i32 %6225, 31
  %6249 = trunc i32 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6249, i8* %6250, align 1
  %6251 = lshr i32 %6224, 31
  %6252 = xor i32 %6248, %6251
  %6253 = add i32 %6252, %6248
  %6254 = icmp eq i32 %6253, 2
  %6255 = zext i1 %6254 to i8
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6255, i8* %6256, align 1
  store %struct.Memory* %loadMem_416da6, %struct.Memory** %MEMORY
  %loadMem_416da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 33
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6259 to i64*
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 1
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %EAX.i175 = bitcast %union.anon* %6262 to i32*
  %6263 = load i32, i32* %EAX.i175
  %6264 = zext i32 %6263 to i64
  %6265 = load i64, i64* %PC.i174
  %6266 = add i64 %6265, 7
  store i64 %6266, i64* %PC.i174
  store i32 %6263, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  store %struct.Memory* %loadMem_416da9, %struct.Memory** %MEMORY
  %loadMem_416db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 33
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6269 to i64*
  %6270 = load i64, i64* %PC.i173
  %6271 = add i64 %6270, 12
  store i64 %6271, i64* %PC.i173
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store %struct.Memory* %loadMem_416db0, %struct.Memory** %MEMORY
  br label %block_.L_416dbc

block_.L_416dbc:                                  ; preds = %block_.L_416d9f, %block_416d86
  %loadMem_416dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 33
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6274 to i64*
  %6275 = load i64, i64* %PC.i172
  %6276 = add i64 %6275, 5
  %6277 = load i64, i64* %PC.i172
  %6278 = add i64 %6277, 5
  store i64 %6278, i64* %PC.i172
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6276, i64* %6279, align 8
  store %struct.Memory* %loadMem_416dbc, %struct.Memory** %MEMORY
  br label %block_.L_416dc1

block_.L_416dc1:                                  ; preds = %block_.L_416dbc, %block_.L_416d55
  %loadMem_416dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 33
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6282 to i64*
  %6283 = load i64, i64* %PC.i171
  %6284 = add i64 %6283, 5
  %6285 = load i64, i64* %PC.i171
  %6286 = add i64 %6285, 5
  store i64 %6286, i64* %PC.i171
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6284, i64* %6287, align 8
  store %struct.Memory* %loadMem_416dc1, %struct.Memory** %MEMORY
  br label %block_.L_416dc6

block_.L_416dc6:                                  ; preds = %block_.L_416dc1, %block_.L_416ba0
  %loadMem_416dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 33
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6290 to i64*
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 1
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %6293 to i64*
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 15
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6296 to i64*
  %6297 = load i64, i64* %RBP.i170
  %6298 = sub i64 %6297, 24
  %6299 = load i64, i64* %PC.i168
  %6300 = add i64 %6299, 4
  store i64 %6300, i64* %PC.i168
  %6301 = inttoptr i64 %6298 to i64*
  %6302 = load i64, i64* %6301
  store i64 %6302, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_416dc6, %struct.Memory** %MEMORY
  %loadMem_416dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6304 = getelementptr inbounds %struct.GPR, %struct.GPR* %6303, i32 0, i32 33
  %6305 = getelementptr inbounds %struct.Reg, %struct.Reg* %6304, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6305 to i64*
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6307 = getelementptr inbounds %struct.GPR, %struct.GPR* %6306, i32 0, i32 5
  %6308 = getelementptr inbounds %struct.Reg, %struct.Reg* %6307, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %6308 to i64*
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 15
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6311 to i64*
  %6312 = load i64, i64* %RBP.i167
  %6313 = sub i64 %6312, 80
  %6314 = load i64, i64* %PC.i165
  %6315 = add i64 %6314, 4
  store i64 %6315, i64* %PC.i165
  %6316 = inttoptr i64 %6313 to i32*
  %6317 = load i32, i32* %6316
  %6318 = sext i32 %6317 to i64
  store i64 %6318, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_416dca, %struct.Memory** %MEMORY
  %loadMem_416dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 33
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6321 to i64*
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 5
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %6324 to i64*
  %6325 = load i64, i64* %RCX.i164
  %6326 = load i64, i64* %PC.i163
  %6327 = add i64 %6326, 4
  store i64 %6327, i64* %PC.i163
  %6328 = shl i64 %6325, 3
  %6329 = icmp slt i64 %6328, 0
  %6330 = shl i64 %6328, 1
  store i64 %6330, i64* %RCX.i164, align 8
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6332 = zext i1 %6329 to i8
  store i8 %6332, i8* %6331, align 1
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6334 = trunc i64 %6330 to i32
  %6335 = and i32 %6334, 254
  %6336 = call i32 @llvm.ctpop.i32(i32 %6335)
  %6337 = trunc i32 %6336 to i8
  %6338 = and i8 %6337, 1
  %6339 = xor i8 %6338, 1
  store i8 %6339, i8* %6333, align 1
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6340, align 1
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6342 = icmp eq i64 %6330, 0
  %6343 = zext i1 %6342 to i8
  store i8 %6343, i8* %6341, align 1
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6345 = lshr i64 %6330, 63
  %6346 = trunc i64 %6345 to i8
  store i8 %6346, i8* %6344, align 1
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6347, align 1
  store %struct.Memory* %loadMem_416dce, %struct.Memory** %MEMORY
  %loadMem_416dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 33
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6350 to i64*
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 1
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %6353 to i64*
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 5
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %6356 to i64*
  %6357 = load i64, i64* %RAX.i161
  %6358 = load i64, i64* %RCX.i162
  %6359 = load i64, i64* %PC.i160
  %6360 = add i64 %6359, 3
  store i64 %6360, i64* %PC.i160
  %6361 = add i64 %6358, %6357
  store i64 %6361, i64* %RAX.i161, align 8
  %6362 = icmp ult i64 %6361, %6357
  %6363 = icmp ult i64 %6361, %6358
  %6364 = or i1 %6362, %6363
  %6365 = zext i1 %6364 to i8
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6365, i8* %6366, align 1
  %6367 = trunc i64 %6361 to i32
  %6368 = and i32 %6367, 255
  %6369 = call i32 @llvm.ctpop.i32(i32 %6368)
  %6370 = trunc i32 %6369 to i8
  %6371 = and i8 %6370, 1
  %6372 = xor i8 %6371, 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6372, i8* %6373, align 1
  %6374 = xor i64 %6358, %6357
  %6375 = xor i64 %6374, %6361
  %6376 = lshr i64 %6375, 4
  %6377 = trunc i64 %6376 to i8
  %6378 = and i8 %6377, 1
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6378, i8* %6379, align 1
  %6380 = icmp eq i64 %6361, 0
  %6381 = zext i1 %6380 to i8
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6381, i8* %6382, align 1
  %6383 = lshr i64 %6361, 63
  %6384 = trunc i64 %6383 to i8
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6384, i8* %6385, align 1
  %6386 = lshr i64 %6357, 63
  %6387 = lshr i64 %6358, 63
  %6388 = xor i64 %6383, %6386
  %6389 = xor i64 %6383, %6387
  %6390 = add i64 %6388, %6389
  %6391 = icmp eq i64 %6390, 2
  %6392 = zext i1 %6391 to i8
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6392, i8* %6393, align 1
  store %struct.Memory* %loadMem_416dd2, %struct.Memory** %MEMORY
  %loadMem_416dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6395 = getelementptr inbounds %struct.GPR, %struct.GPR* %6394, i32 0, i32 33
  %6396 = getelementptr inbounds %struct.Reg, %struct.Reg* %6395, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6396 to i64*
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6398 = getelementptr inbounds %struct.GPR, %struct.GPR* %6397, i32 0, i32 1
  %6399 = getelementptr inbounds %struct.Reg, %struct.Reg* %6398, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %6399 to i64*
  %6400 = load i64, i64* %RAX.i159
  %6401 = add i64 %6400, 12
  %6402 = load i64, i64* %PC.i158
  %6403 = add i64 %6402, 4
  store i64 %6403, i64* %PC.i158
  %6404 = inttoptr i64 %6401 to i32*
  %6405 = load i32, i32* %6404
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6406, align 1
  %6407 = and i32 %6405, 255
  %6408 = call i32 @llvm.ctpop.i32(i32 %6407)
  %6409 = trunc i32 %6408 to i8
  %6410 = and i8 %6409, 1
  %6411 = xor i8 %6410, 1
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6411, i8* %6412, align 1
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6413, align 1
  %6414 = icmp eq i32 %6405, 0
  %6415 = zext i1 %6414 to i8
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6415, i8* %6416, align 1
  %6417 = lshr i32 %6405, 31
  %6418 = trunc i32 %6417 to i8
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6418, i8* %6419, align 1
  %6420 = lshr i32 %6405, 31
  %6421 = xor i32 %6417, %6420
  %6422 = add i32 %6421, %6420
  %6423 = icmp eq i32 %6422, 2
  %6424 = zext i1 %6423 to i8
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6424, i8* %6425, align 1
  store %struct.Memory* %loadMem_416dd5, %struct.Memory** %MEMORY
  %loadMem_416dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 33
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6428 to i64*
  %6429 = load i64, i64* %PC.i157
  %6430 = add i64 %6429, 287
  %6431 = load i64, i64* %PC.i157
  %6432 = add i64 %6431, 6
  %6433 = load i64, i64* %PC.i157
  %6434 = add i64 %6433, 6
  store i64 %6434, i64* %PC.i157
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6436 = load i8, i8* %6435, align 1
  store i8 %6436, i8* %BRANCH_TAKEN, align 1
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6438 = icmp ne i8 %6436, 0
  %6439 = select i1 %6438, i64 %6430, i64 %6432
  store i64 %6439, i64* %6437, align 8
  store %struct.Memory* %loadMem_416dd9, %struct.Memory** %MEMORY
  %loadBr_416dd9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416dd9 = icmp eq i8 %loadBr_416dd9, 1
  br i1 %cmpBr_416dd9, label %block_.L_416ef8, label %block_416ddf

block_416ddf:                                     ; preds = %block_.L_416dc6
  %loadMem_416ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 33
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6442 to i64*
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6444 = getelementptr inbounds %struct.GPR, %struct.GPR* %6443, i32 0, i32 1
  %6445 = getelementptr inbounds %struct.Reg, %struct.Reg* %6444, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %6445 to i64*
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 15
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6448 to i64*
  %6449 = load i64, i64* %RBP.i156
  %6450 = sub i64 %6449, 24
  %6451 = load i64, i64* %PC.i154
  %6452 = add i64 %6451, 4
  store i64 %6452, i64* %PC.i154
  %6453 = inttoptr i64 %6450 to i64*
  %6454 = load i64, i64* %6453
  store i64 %6454, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_416ddf, %struct.Memory** %MEMORY
  %loadMem_416de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 33
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6457 to i64*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 5
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %6460 to i64*
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 15
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %6463 to i64*
  %6464 = load i64, i64* %RBP.i153
  %6465 = sub i64 %6464, 80
  %6466 = load i64, i64* %PC.i151
  %6467 = add i64 %6466, 4
  store i64 %6467, i64* %PC.i151
  %6468 = inttoptr i64 %6465 to i32*
  %6469 = load i32, i32* %6468
  %6470 = sext i32 %6469 to i64
  store i64 %6470, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_416de3, %struct.Memory** %MEMORY
  %loadMem_416de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 33
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6473 to i64*
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 5
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %6476 to i64*
  %6477 = load i64, i64* %RCX.i150
  %6478 = load i64, i64* %PC.i149
  %6479 = add i64 %6478, 4
  store i64 %6479, i64* %PC.i149
  %6480 = shl i64 %6477, 3
  %6481 = icmp slt i64 %6480, 0
  %6482 = shl i64 %6480, 1
  store i64 %6482, i64* %RCX.i150, align 8
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6484 = zext i1 %6481 to i8
  store i8 %6484, i8* %6483, align 1
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6486 = trunc i64 %6482 to i32
  %6487 = and i32 %6486, 254
  %6488 = call i32 @llvm.ctpop.i32(i32 %6487)
  %6489 = trunc i32 %6488 to i8
  %6490 = and i8 %6489, 1
  %6491 = xor i8 %6490, 1
  store i8 %6491, i8* %6485, align 1
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6492, align 1
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6494 = icmp eq i64 %6482, 0
  %6495 = zext i1 %6494 to i8
  store i8 %6495, i8* %6493, align 1
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6497 = lshr i64 %6482, 63
  %6498 = trunc i64 %6497 to i8
  store i8 %6498, i8* %6496, align 1
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6499, align 1
  store %struct.Memory* %loadMem_416de7, %struct.Memory** %MEMORY
  %loadMem_416deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 33
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6502 to i64*
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 1
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %6505 to i64*
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 5
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %6508 to i64*
  %6509 = load i64, i64* %RAX.i147
  %6510 = load i64, i64* %RCX.i148
  %6511 = load i64, i64* %PC.i146
  %6512 = add i64 %6511, 3
  store i64 %6512, i64* %PC.i146
  %6513 = add i64 %6510, %6509
  store i64 %6513, i64* %RAX.i147, align 8
  %6514 = icmp ult i64 %6513, %6509
  %6515 = icmp ult i64 %6513, %6510
  %6516 = or i1 %6514, %6515
  %6517 = zext i1 %6516 to i8
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6517, i8* %6518, align 1
  %6519 = trunc i64 %6513 to i32
  %6520 = and i32 %6519, 255
  %6521 = call i32 @llvm.ctpop.i32(i32 %6520)
  %6522 = trunc i32 %6521 to i8
  %6523 = and i8 %6522, 1
  %6524 = xor i8 %6523, 1
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6524, i8* %6525, align 1
  %6526 = xor i64 %6510, %6509
  %6527 = xor i64 %6526, %6513
  %6528 = lshr i64 %6527, 4
  %6529 = trunc i64 %6528 to i8
  %6530 = and i8 %6529, 1
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6530, i8* %6531, align 1
  %6532 = icmp eq i64 %6513, 0
  %6533 = zext i1 %6532 to i8
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6533, i8* %6534, align 1
  %6535 = lshr i64 %6513, 63
  %6536 = trunc i64 %6535 to i8
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6536, i8* %6537, align 1
  %6538 = lshr i64 %6509, 63
  %6539 = lshr i64 %6510, 63
  %6540 = xor i64 %6535, %6538
  %6541 = xor i64 %6535, %6539
  %6542 = add i64 %6540, %6541
  %6543 = icmp eq i64 %6542, 2
  %6544 = zext i1 %6543 to i8
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6544, i8* %6545, align 1
  store %struct.Memory* %loadMem_416deb, %struct.Memory** %MEMORY
  %loadMem_416dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 33
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6548 to i64*
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6550 = getelementptr inbounds %struct.GPR, %struct.GPR* %6549, i32 0, i32 1
  %6551 = getelementptr inbounds %struct.Reg, %struct.Reg* %6550, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %6551 to i64*
  %6552 = load i64, i64* %RAX.i145
  %6553 = add i64 %6552, 12
  %6554 = load i64, i64* %PC.i144
  %6555 = add i64 %6554, 4
  store i64 %6555, i64* %PC.i144
  %6556 = inttoptr i64 %6553 to i32*
  %6557 = load i32, i32* %6556
  %6558 = sub i32 %6557, 1
  %6559 = icmp ult i32 %6557, 1
  %6560 = zext i1 %6559 to i8
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6560, i8* %6561, align 1
  %6562 = and i32 %6558, 255
  %6563 = call i32 @llvm.ctpop.i32(i32 %6562)
  %6564 = trunc i32 %6563 to i8
  %6565 = and i8 %6564, 1
  %6566 = xor i8 %6565, 1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6566, i8* %6567, align 1
  %6568 = xor i32 %6557, 1
  %6569 = xor i32 %6568, %6558
  %6570 = lshr i32 %6569, 4
  %6571 = trunc i32 %6570 to i8
  %6572 = and i8 %6571, 1
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6572, i8* %6573, align 1
  %6574 = icmp eq i32 %6558, 0
  %6575 = zext i1 %6574 to i8
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6575, i8* %6576, align 1
  %6577 = lshr i32 %6558, 31
  %6578 = trunc i32 %6577 to i8
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6578, i8* %6579, align 1
  %6580 = lshr i32 %6557, 31
  %6581 = xor i32 %6577, %6580
  %6582 = add i32 %6581, %6580
  %6583 = icmp eq i32 %6582, 2
  %6584 = zext i1 %6583 to i8
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6584, i8* %6585, align 1
  store %struct.Memory* %loadMem_416dee, %struct.Memory** %MEMORY
  %loadMem_416df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6587 = getelementptr inbounds %struct.GPR, %struct.GPR* %6586, i32 0, i32 33
  %6588 = getelementptr inbounds %struct.Reg, %struct.Reg* %6587, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6588 to i64*
  %6589 = load i64, i64* %PC.i143
  %6590 = add i64 %6589, 71
  %6591 = load i64, i64* %PC.i143
  %6592 = add i64 %6591, 6
  %6593 = load i64, i64* %PC.i143
  %6594 = add i64 %6593, 6
  store i64 %6594, i64* %PC.i143
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6596 = load i8, i8* %6595, align 1
  %6597 = icmp eq i8 %6596, 0
  %6598 = zext i1 %6597 to i8
  store i8 %6598, i8* %BRANCH_TAKEN, align 1
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6600 = select i1 %6597, i64 %6590, i64 %6592
  store i64 %6600, i64* %6599, align 8
  store %struct.Memory* %loadMem_416df2, %struct.Memory** %MEMORY
  %loadBr_416df2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416df2 = icmp eq i8 %loadBr_416df2, 1
  br i1 %cmpBr_416df2, label %block_.L_416e39, label %block_416df8

block_416df8:                                     ; preds = %block_416ddf
  %loadMem_416df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 33
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 1
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6606 to i64*
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 15
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %6609 to i64*
  %6610 = load i64, i64* %RBP.i142
  %6611 = sub i64 %6610, 64
  %6612 = load i64, i64* %PC.i140
  %6613 = add i64 %6612, 4
  store i64 %6613, i64* %PC.i140
  %6614 = inttoptr i64 %6611 to i64*
  %6615 = load i64, i64* %6614
  store i64 %6615, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_416df8, %struct.Memory** %MEMORY
  %loadMem_416dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 33
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6618 to i64*
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 1
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %6621 to i64*
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 11
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %RDI.i139 = bitcast %union.anon* %6624 to i64*
  %6625 = load i64, i64* %RAX.i138
  %6626 = load i64, i64* %PC.i137
  %6627 = add i64 %6626, 3
  store i64 %6627, i64* %PC.i137
  %6628 = inttoptr i64 %6625 to i64*
  %6629 = load i64, i64* %6628
  store i64 %6629, i64* %RDI.i139, align 8
  store %struct.Memory* %loadMem_416dfc, %struct.Memory** %MEMORY
  %loadMem1_416dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 33
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6632 to i64*
  %6633 = load i64, i64* %PC.i136
  %6634 = add i64 %6633, 238705
  %6635 = load i64, i64* %PC.i136
  %6636 = add i64 %6635, 5
  %6637 = load i64, i64* %PC.i136
  %6638 = add i64 %6637, 5
  store i64 %6638, i64* %PC.i136
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6640 = load i64, i64* %6639, align 8
  %6641 = add i64 %6640, -8
  %6642 = inttoptr i64 %6641 to i64*
  store i64 %6636, i64* %6642
  store i64 %6641, i64* %6639, align 8
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6634, i64* %6643, align 8
  store %struct.Memory* %loadMem1_416dff, %struct.Memory** %MEMORY
  %loadMem2_416dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416dff = load i64, i64* %3
  %call2_416dff = call %struct.Memory* @sub_451270.IsInt(%struct.State* %0, i64 %loadPC_416dff, %struct.Memory* %loadMem2_416dff)
  store %struct.Memory* %call2_416dff, %struct.Memory** %MEMORY
  %loadMem_416e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 33
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6646 to i64*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 1
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %EAX.i135 = bitcast %union.anon* %6649 to i32*
  %6650 = load i32, i32* %EAX.i135
  %6651 = zext i32 %6650 to i64
  %6652 = load i64, i64* %PC.i134
  %6653 = add i64 %6652, 3
  store i64 %6653, i64* %PC.i134
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6654, align 1
  %6655 = and i32 %6650, 255
  %6656 = call i32 @llvm.ctpop.i32(i32 %6655)
  %6657 = trunc i32 %6656 to i8
  %6658 = and i8 %6657, 1
  %6659 = xor i8 %6658, 1
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6659, i8* %6660, align 1
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6661, align 1
  %6662 = icmp eq i32 %6650, 0
  %6663 = zext i1 %6662 to i8
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6663, i8* %6664, align 1
  %6665 = lshr i32 %6650, 31
  %6666 = trunc i32 %6665 to i8
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6666, i8* %6667, align 1
  %6668 = lshr i32 %6650, 31
  %6669 = xor i32 %6665, %6668
  %6670 = add i32 %6669, %6668
  %6671 = icmp eq i32 %6670, 2
  %6672 = zext i1 %6671 to i8
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6672, i8* %6673, align 1
  store %struct.Memory* %loadMem_416e04, %struct.Memory** %MEMORY
  %loadMem_416e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 33
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6676 to i64*
  %6677 = load i64, i64* %PC.i133
  %6678 = add i64 %6677, 50
  %6679 = load i64, i64* %PC.i133
  %6680 = add i64 %6679, 6
  %6681 = load i64, i64* %PC.i133
  %6682 = add i64 %6681, 6
  store i64 %6682, i64* %PC.i133
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6684 = load i8, i8* %6683, align 1
  %6685 = icmp eq i8 %6684, 0
  %6686 = zext i1 %6685 to i8
  store i8 %6686, i8* %BRANCH_TAKEN, align 1
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6688 = select i1 %6685, i64 %6678, i64 %6680
  store i64 %6688, i64* %6687, align 8
  store %struct.Memory* %loadMem_416e07, %struct.Memory** %MEMORY
  %loadBr_416e07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416e07 = icmp eq i8 %loadBr_416e07, 1
  br i1 %cmpBr_416e07, label %block_.L_416e39, label %block_416e0d

block_416e0d:                                     ; preds = %block_416df8
  %loadMem_416e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 33
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6691 to i64*
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 11
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %6694 to i64*
  %6695 = load i64, i64* %PC.i131
  %6696 = add i64 %6695, 10
  store i64 %6696, i64* %PC.i131
  store i64 ptrtoint (%G__0x456ad9_type* @G__0x456ad9 to i64), i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_416e0d, %struct.Memory** %MEMORY
  %loadMem_416e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 33
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6699 to i64*
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 1
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 15
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %6705 to i64*
  %6706 = load i64, i64* %RBP.i130
  %6707 = sub i64 %6706, 24
  %6708 = load i64, i64* %PC.i128
  %6709 = add i64 %6708, 4
  store i64 %6709, i64* %PC.i128
  %6710 = inttoptr i64 %6707 to i64*
  %6711 = load i64, i64* %6710
  store i64 %6711, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_416e17, %struct.Memory** %MEMORY
  %loadMem_416e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 33
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6714 to i64*
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6716 = getelementptr inbounds %struct.GPR, %struct.GPR* %6715, i32 0, i32 5
  %6717 = getelementptr inbounds %struct.Reg, %struct.Reg* %6716, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %6717 to i64*
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 15
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %6720 to i64*
  %6721 = load i64, i64* %RBP.i127
  %6722 = sub i64 %6721, 80
  %6723 = load i64, i64* %PC.i125
  %6724 = add i64 %6723, 4
  store i64 %6724, i64* %PC.i125
  %6725 = inttoptr i64 %6722 to i32*
  %6726 = load i32, i32* %6725
  %6727 = sext i32 %6726 to i64
  store i64 %6727, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_416e1b, %struct.Memory** %MEMORY
  %loadMem_416e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 33
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6730 to i64*
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6732 = getelementptr inbounds %struct.GPR, %struct.GPR* %6731, i32 0, i32 5
  %6733 = getelementptr inbounds %struct.Reg, %struct.Reg* %6732, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %6733 to i64*
  %6734 = load i64, i64* %RCX.i124
  %6735 = load i64, i64* %PC.i123
  %6736 = add i64 %6735, 4
  store i64 %6736, i64* %PC.i123
  %6737 = shl i64 %6734, 3
  %6738 = icmp slt i64 %6737, 0
  %6739 = shl i64 %6737, 1
  store i64 %6739, i64* %RCX.i124, align 8
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6741 = zext i1 %6738 to i8
  store i8 %6741, i8* %6740, align 1
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6743 = trunc i64 %6739 to i32
  %6744 = and i32 %6743, 254
  %6745 = call i32 @llvm.ctpop.i32(i32 %6744)
  %6746 = trunc i32 %6745 to i8
  %6747 = and i8 %6746, 1
  %6748 = xor i8 %6747, 1
  store i8 %6748, i8* %6742, align 1
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6749, align 1
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6751 = icmp eq i64 %6739, 0
  %6752 = zext i1 %6751 to i8
  store i8 %6752, i8* %6750, align 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6754 = lshr i64 %6739, 63
  %6755 = trunc i64 %6754 to i8
  store i8 %6755, i8* %6753, align 1
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6756, align 1
  store %struct.Memory* %loadMem_416e1f, %struct.Memory** %MEMORY
  %loadMem_416e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 33
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6759 to i64*
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 1
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6762 to i64*
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 5
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %6765 to i64*
  %6766 = load i64, i64* %RAX.i121
  %6767 = load i64, i64* %RCX.i122
  %6768 = load i64, i64* %PC.i120
  %6769 = add i64 %6768, 3
  store i64 %6769, i64* %PC.i120
  %6770 = add i64 %6767, %6766
  store i64 %6770, i64* %RAX.i121, align 8
  %6771 = icmp ult i64 %6770, %6766
  %6772 = icmp ult i64 %6770, %6767
  %6773 = or i1 %6771, %6772
  %6774 = zext i1 %6773 to i8
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6774, i8* %6775, align 1
  %6776 = trunc i64 %6770 to i32
  %6777 = and i32 %6776, 255
  %6778 = call i32 @llvm.ctpop.i32(i32 %6777)
  %6779 = trunc i32 %6778 to i8
  %6780 = and i8 %6779, 1
  %6781 = xor i8 %6780, 1
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6781, i8* %6782, align 1
  %6783 = xor i64 %6767, %6766
  %6784 = xor i64 %6783, %6770
  %6785 = lshr i64 %6784, 4
  %6786 = trunc i64 %6785 to i8
  %6787 = and i8 %6786, 1
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6787, i8* %6788, align 1
  %6789 = icmp eq i64 %6770, 0
  %6790 = zext i1 %6789 to i8
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6790, i8* %6791, align 1
  %6792 = lshr i64 %6770, 63
  %6793 = trunc i64 %6792 to i8
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6793, i8* %6794, align 1
  %6795 = lshr i64 %6766, 63
  %6796 = lshr i64 %6767, 63
  %6797 = xor i64 %6792, %6795
  %6798 = xor i64 %6792, %6796
  %6799 = add i64 %6797, %6798
  %6800 = icmp eq i64 %6799, 2
  %6801 = zext i1 %6800 to i8
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6801, i8* %6802, align 1
  store %struct.Memory* %loadMem_416e23, %struct.Memory** %MEMORY
  %loadMem_416e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 33
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 1
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 9
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %6811 to i64*
  %6812 = load i64, i64* %RAX.i118
  %6813 = load i64, i64* %PC.i117
  %6814 = add i64 %6813, 3
  store i64 %6814, i64* %PC.i117
  %6815 = inttoptr i64 %6812 to i64*
  %6816 = load i64, i64* %6815
  store i64 %6816, i64* %RSI.i119, align 8
  store %struct.Memory* %loadMem_416e26, %struct.Memory** %MEMORY
  %loadMem_416e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 33
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6819 to i64*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 7
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %6822 to i64*
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6824 = getelementptr inbounds %struct.GPR, %struct.GPR* %6823, i32 0, i32 15
  %6825 = getelementptr inbounds %struct.Reg, %struct.Reg* %6824, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %6825 to i64*
  %6826 = load i64, i64* %RBP.i116
  %6827 = sub i64 %6826, 40
  %6828 = load i64, i64* %PC.i114
  %6829 = add i64 %6828, 4
  store i64 %6829, i64* %PC.i114
  %6830 = inttoptr i64 %6827 to i64*
  %6831 = load i64, i64* %6830
  store i64 %6831, i64* %RDX.i115, align 8
  store %struct.Memory* %loadMem_416e29, %struct.Memory** %MEMORY
  %loadMem_416e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 33
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6834 to i64*
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 1
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %6838 = bitcast %union.anon* %6837 to %struct.anon.2*
  %AL.i113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6838, i32 0, i32 0
  %6839 = load i64, i64* %PC.i112
  %6840 = add i64 %6839, 2
  store i64 %6840, i64* %PC.i112
  store i8 0, i8* %AL.i113, align 1
  store %struct.Memory* %loadMem_416e2d, %struct.Memory** %MEMORY
  %loadMem1_416e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 33
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %6843 to i64*
  %6844 = load i64, i64* %PC.i111
  %6845 = add i64 %6844, 162785
  %6846 = load i64, i64* %PC.i111
  %6847 = add i64 %6846, 5
  %6848 = load i64, i64* %PC.i111
  %6849 = add i64 %6848, 5
  store i64 %6849, i64* %PC.i111
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6851 = load i64, i64* %6850, align 8
  %6852 = add i64 %6851, -8
  %6853 = inttoptr i64 %6852 to i64*
  store i64 %6847, i64* %6853
  store i64 %6852, i64* %6850, align 8
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6845, i64* %6854, align 8
  store %struct.Memory* %loadMem1_416e2f, %struct.Memory** %MEMORY
  %loadMem2_416e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416e2f = load i64, i64* %3
  %call2_416e2f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416e2f, %struct.Memory* %loadMem2_416e2f)
  store %struct.Memory* %call2_416e2f, %struct.Memory** %MEMORY
  %loadMem_416e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 33
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6857 to i64*
  %6858 = load i64, i64* %PC.i110
  %6859 = add i64 %6858, 191
  %6860 = load i64, i64* %PC.i110
  %6861 = add i64 %6860, 5
  store i64 %6861, i64* %PC.i110
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6859, i64* %6862, align 8
  store %struct.Memory* %loadMem_416e34, %struct.Memory** %MEMORY
  br label %block_.L_416ef3

block_.L_416e39:                                  ; preds = %block_416df8, %block_416ddf
  %loadMem_416e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 33
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6865 to i64*
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6867 = getelementptr inbounds %struct.GPR, %struct.GPR* %6866, i32 0, i32 1
  %6868 = getelementptr inbounds %struct.Reg, %struct.Reg* %6867, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %6868 to i64*
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6870 = getelementptr inbounds %struct.GPR, %struct.GPR* %6869, i32 0, i32 15
  %6871 = getelementptr inbounds %struct.Reg, %struct.Reg* %6870, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %6871 to i64*
  %6872 = load i64, i64* %RBP.i109
  %6873 = sub i64 %6872, 24
  %6874 = load i64, i64* %PC.i107
  %6875 = add i64 %6874, 4
  store i64 %6875, i64* %PC.i107
  %6876 = inttoptr i64 %6873 to i64*
  %6877 = load i64, i64* %6876
  store i64 %6877, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_416e39, %struct.Memory** %MEMORY
  %loadMem_416e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 33
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6880 to i64*
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6882 = getelementptr inbounds %struct.GPR, %struct.GPR* %6881, i32 0, i32 5
  %6883 = getelementptr inbounds %struct.Reg, %struct.Reg* %6882, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %6883 to i64*
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6885 = getelementptr inbounds %struct.GPR, %struct.GPR* %6884, i32 0, i32 15
  %6886 = getelementptr inbounds %struct.Reg, %struct.Reg* %6885, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %6886 to i64*
  %6887 = load i64, i64* %RBP.i106
  %6888 = sub i64 %6887, 80
  %6889 = load i64, i64* %PC.i104
  %6890 = add i64 %6889, 4
  store i64 %6890, i64* %PC.i104
  %6891 = inttoptr i64 %6888 to i32*
  %6892 = load i32, i32* %6891
  %6893 = sext i32 %6892 to i64
  store i64 %6893, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_416e3d, %struct.Memory** %MEMORY
  %loadMem_416e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 33
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6896 to i64*
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 5
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %6899 to i64*
  %6900 = load i64, i64* %RCX.i103
  %6901 = load i64, i64* %PC.i102
  %6902 = add i64 %6901, 4
  store i64 %6902, i64* %PC.i102
  %6903 = shl i64 %6900, 3
  %6904 = icmp slt i64 %6903, 0
  %6905 = shl i64 %6903, 1
  store i64 %6905, i64* %RCX.i103, align 8
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6907 = zext i1 %6904 to i8
  store i8 %6907, i8* %6906, align 1
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6909 = trunc i64 %6905 to i32
  %6910 = and i32 %6909, 254
  %6911 = call i32 @llvm.ctpop.i32(i32 %6910)
  %6912 = trunc i32 %6911 to i8
  %6913 = and i8 %6912, 1
  %6914 = xor i8 %6913, 1
  store i8 %6914, i8* %6908, align 1
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6915, align 1
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6917 = icmp eq i64 %6905, 0
  %6918 = zext i1 %6917 to i8
  store i8 %6918, i8* %6916, align 1
  %6919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6920 = lshr i64 %6905, 63
  %6921 = trunc i64 %6920 to i8
  store i8 %6921, i8* %6919, align 1
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6922, align 1
  store %struct.Memory* %loadMem_416e41, %struct.Memory** %MEMORY
  %loadMem_416e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 33
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 1
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %6928 to i64*
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 5
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %6931 to i64*
  %6932 = load i64, i64* %RAX.i100
  %6933 = load i64, i64* %RCX.i101
  %6934 = load i64, i64* %PC.i99
  %6935 = add i64 %6934, 3
  store i64 %6935, i64* %PC.i99
  %6936 = add i64 %6933, %6932
  store i64 %6936, i64* %RAX.i100, align 8
  %6937 = icmp ult i64 %6936, %6932
  %6938 = icmp ult i64 %6936, %6933
  %6939 = or i1 %6937, %6938
  %6940 = zext i1 %6939 to i8
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6940, i8* %6941, align 1
  %6942 = trunc i64 %6936 to i32
  %6943 = and i32 %6942, 255
  %6944 = call i32 @llvm.ctpop.i32(i32 %6943)
  %6945 = trunc i32 %6944 to i8
  %6946 = and i8 %6945, 1
  %6947 = xor i8 %6946, 1
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6947, i8* %6948, align 1
  %6949 = xor i64 %6933, %6932
  %6950 = xor i64 %6949, %6936
  %6951 = lshr i64 %6950, 4
  %6952 = trunc i64 %6951 to i8
  %6953 = and i8 %6952, 1
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6953, i8* %6954, align 1
  %6955 = icmp eq i64 %6936, 0
  %6956 = zext i1 %6955 to i8
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6956, i8* %6957, align 1
  %6958 = lshr i64 %6936, 63
  %6959 = trunc i64 %6958 to i8
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6959, i8* %6960, align 1
  %6961 = lshr i64 %6932, 63
  %6962 = lshr i64 %6933, 63
  %6963 = xor i64 %6958, %6961
  %6964 = xor i64 %6958, %6962
  %6965 = add i64 %6963, %6964
  %6966 = icmp eq i64 %6965, 2
  %6967 = zext i1 %6966 to i8
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6967, i8* %6968, align 1
  store %struct.Memory* %loadMem_416e45, %struct.Memory** %MEMORY
  %loadMem_416e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6970 = getelementptr inbounds %struct.GPR, %struct.GPR* %6969, i32 0, i32 33
  %6971 = getelementptr inbounds %struct.Reg, %struct.Reg* %6970, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6971 to i64*
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6973 = getelementptr inbounds %struct.GPR, %struct.GPR* %6972, i32 0, i32 1
  %6974 = getelementptr inbounds %struct.Reg, %struct.Reg* %6973, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %6974 to i64*
  %6975 = load i64, i64* %RAX.i98
  %6976 = add i64 %6975, 12
  %6977 = load i64, i64* %PC.i97
  %6978 = add i64 %6977, 4
  store i64 %6978, i64* %PC.i97
  %6979 = inttoptr i64 %6976 to i32*
  %6980 = load i32, i32* %6979
  %6981 = sub i32 %6980, 2
  %6982 = icmp ult i32 %6980, 2
  %6983 = zext i1 %6982 to i8
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6983, i8* %6984, align 1
  %6985 = and i32 %6981, 255
  %6986 = call i32 @llvm.ctpop.i32(i32 %6985)
  %6987 = trunc i32 %6986 to i8
  %6988 = and i8 %6987, 1
  %6989 = xor i8 %6988, 1
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6989, i8* %6990, align 1
  %6991 = xor i32 %6980, 2
  %6992 = xor i32 %6991, %6981
  %6993 = lshr i32 %6992, 4
  %6994 = trunc i32 %6993 to i8
  %6995 = and i8 %6994, 1
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6995, i8* %6996, align 1
  %6997 = icmp eq i32 %6981, 0
  %6998 = zext i1 %6997 to i8
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6998, i8* %6999, align 1
  %7000 = lshr i32 %6981, 31
  %7001 = trunc i32 %7000 to i8
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7001, i8* %7002, align 1
  %7003 = lshr i32 %6980, 31
  %7004 = xor i32 %7000, %7003
  %7005 = add i32 %7004, %7003
  %7006 = icmp eq i32 %7005, 2
  %7007 = zext i1 %7006 to i8
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7007, i8* %7008, align 1
  store %struct.Memory* %loadMem_416e48, %struct.Memory** %MEMORY
  %loadMem_416e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 33
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7011 to i64*
  %7012 = load i64, i64* %PC.i96
  %7013 = add i64 %7012, 71
  %7014 = load i64, i64* %PC.i96
  %7015 = add i64 %7014, 6
  %7016 = load i64, i64* %PC.i96
  %7017 = add i64 %7016, 6
  store i64 %7017, i64* %PC.i96
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7019 = load i8, i8* %7018, align 1
  %7020 = icmp eq i8 %7019, 0
  %7021 = zext i1 %7020 to i8
  store i8 %7021, i8* %BRANCH_TAKEN, align 1
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7023 = select i1 %7020, i64 %7013, i64 %7015
  store i64 %7023, i64* %7022, align 8
  store %struct.Memory* %loadMem_416e4c, %struct.Memory** %MEMORY
  %loadBr_416e4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416e4c = icmp eq i8 %loadBr_416e4c, 1
  br i1 %cmpBr_416e4c, label %block_.L_416e93, label %block_416e52

block_416e52:                                     ; preds = %block_.L_416e39
  %loadMem_416e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 33
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7026 to i64*
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 1
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %7029 to i64*
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7031 = getelementptr inbounds %struct.GPR, %struct.GPR* %7030, i32 0, i32 15
  %7032 = getelementptr inbounds %struct.Reg, %struct.Reg* %7031, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %7032 to i64*
  %7033 = load i64, i64* %RBP.i95
  %7034 = sub i64 %7033, 64
  %7035 = load i64, i64* %PC.i93
  %7036 = add i64 %7035, 4
  store i64 %7036, i64* %PC.i93
  %7037 = inttoptr i64 %7034 to i64*
  %7038 = load i64, i64* %7037
  store i64 %7038, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_416e52, %struct.Memory** %MEMORY
  %loadMem_416e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 33
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7041 to i64*
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 1
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %7044 to i64*
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7046 = getelementptr inbounds %struct.GPR, %struct.GPR* %7045, i32 0, i32 11
  %7047 = getelementptr inbounds %struct.Reg, %struct.Reg* %7046, i32 0, i32 0
  %RDI.i92 = bitcast %union.anon* %7047 to i64*
  %7048 = load i64, i64* %RAX.i91
  %7049 = load i64, i64* %PC.i90
  %7050 = add i64 %7049, 3
  store i64 %7050, i64* %PC.i90
  %7051 = inttoptr i64 %7048 to i64*
  %7052 = load i64, i64* %7051
  store i64 %7052, i64* %RDI.i92, align 8
  store %struct.Memory* %loadMem_416e56, %struct.Memory** %MEMORY
  %loadMem1_416e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7054 = getelementptr inbounds %struct.GPR, %struct.GPR* %7053, i32 0, i32 33
  %7055 = getelementptr inbounds %struct.Reg, %struct.Reg* %7054, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7055 to i64*
  %7056 = load i64, i64* %PC.i89
  %7057 = add i64 %7056, 239175
  %7058 = load i64, i64* %PC.i89
  %7059 = add i64 %7058, 5
  %7060 = load i64, i64* %PC.i89
  %7061 = add i64 %7060, 5
  store i64 %7061, i64* %PC.i89
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7063 = load i64, i64* %7062, align 8
  %7064 = add i64 %7063, -8
  %7065 = inttoptr i64 %7064 to i64*
  store i64 %7059, i64* %7065
  store i64 %7064, i64* %7062, align 8
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7057, i64* %7066, align 8
  store %struct.Memory* %loadMem1_416e59, %struct.Memory** %MEMORY
  %loadMem2_416e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416e59 = load i64, i64* %3
  %call2_416e59 = call %struct.Memory* @sub_4514a0.IsReal(%struct.State* %0, i64 %loadPC_416e59, %struct.Memory* %loadMem2_416e59)
  store %struct.Memory* %call2_416e59, %struct.Memory** %MEMORY
  %loadMem_416e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 33
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7069 to i64*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 1
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %7072 to i32*
  %7073 = load i32, i32* %EAX.i88
  %7074 = zext i32 %7073 to i64
  %7075 = load i64, i64* %PC.i87
  %7076 = add i64 %7075, 3
  store i64 %7076, i64* %PC.i87
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7077, align 1
  %7078 = and i32 %7073, 255
  %7079 = call i32 @llvm.ctpop.i32(i32 %7078)
  %7080 = trunc i32 %7079 to i8
  %7081 = and i8 %7080, 1
  %7082 = xor i8 %7081, 1
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7082, i8* %7083, align 1
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7084, align 1
  %7085 = icmp eq i32 %7073, 0
  %7086 = zext i1 %7085 to i8
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7086, i8* %7087, align 1
  %7088 = lshr i32 %7073, 31
  %7089 = trunc i32 %7088 to i8
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7089, i8* %7090, align 1
  %7091 = lshr i32 %7073, 31
  %7092 = xor i32 %7088, %7091
  %7093 = add i32 %7092, %7091
  %7094 = icmp eq i32 %7093, 2
  %7095 = zext i1 %7094 to i8
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7095, i8* %7096, align 1
  store %struct.Memory* %loadMem_416e5e, %struct.Memory** %MEMORY
  %loadMem_416e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 33
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7099 to i64*
  %7100 = load i64, i64* %PC.i86
  %7101 = add i64 %7100, 50
  %7102 = load i64, i64* %PC.i86
  %7103 = add i64 %7102, 6
  %7104 = load i64, i64* %PC.i86
  %7105 = add i64 %7104, 6
  store i64 %7105, i64* %PC.i86
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7107 = load i8, i8* %7106, align 1
  %7108 = icmp eq i8 %7107, 0
  %7109 = zext i1 %7108 to i8
  store i8 %7109, i8* %BRANCH_TAKEN, align 1
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7111 = select i1 %7108, i64 %7101, i64 %7103
  store i64 %7111, i64* %7110, align 8
  store %struct.Memory* %loadMem_416e61, %struct.Memory** %MEMORY
  %loadBr_416e61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416e61 = icmp eq i8 %loadBr_416e61, 1
  br i1 %cmpBr_416e61, label %block_.L_416e93, label %block_416e67

block_416e67:                                     ; preds = %block_416e52
  %loadMem_416e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 33
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 11
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %7117 to i64*
  %7118 = load i64, i64* %PC.i84
  %7119 = add i64 %7118, 10
  store i64 %7119, i64* %PC.i84
  store i64 ptrtoint (%G__0x456b03_type* @G__0x456b03 to i64), i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_416e67, %struct.Memory** %MEMORY
  %loadMem_416e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 33
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7122 to i64*
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 1
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %7125 to i64*
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7127 = getelementptr inbounds %struct.GPR, %struct.GPR* %7126, i32 0, i32 15
  %7128 = getelementptr inbounds %struct.Reg, %struct.Reg* %7127, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %7128 to i64*
  %7129 = load i64, i64* %RBP.i83
  %7130 = sub i64 %7129, 24
  %7131 = load i64, i64* %PC.i81
  %7132 = add i64 %7131, 4
  store i64 %7132, i64* %PC.i81
  %7133 = inttoptr i64 %7130 to i64*
  %7134 = load i64, i64* %7133
  store i64 %7134, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_416e71, %struct.Memory** %MEMORY
  %loadMem_416e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 5
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %7140 to i64*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 15
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %7143 to i64*
  %7144 = load i64, i64* %RBP.i80
  %7145 = sub i64 %7144, 80
  %7146 = load i64, i64* %PC.i78
  %7147 = add i64 %7146, 4
  store i64 %7147, i64* %PC.i78
  %7148 = inttoptr i64 %7145 to i32*
  %7149 = load i32, i32* %7148
  %7150 = sext i32 %7149 to i64
  store i64 %7150, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_416e75, %struct.Memory** %MEMORY
  %loadMem_416e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 33
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 5
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %7156 to i64*
  %7157 = load i64, i64* %RCX.i77
  %7158 = load i64, i64* %PC.i76
  %7159 = add i64 %7158, 4
  store i64 %7159, i64* %PC.i76
  %7160 = shl i64 %7157, 3
  %7161 = icmp slt i64 %7160, 0
  %7162 = shl i64 %7160, 1
  store i64 %7162, i64* %RCX.i77, align 8
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7164 = zext i1 %7161 to i8
  store i8 %7164, i8* %7163, align 1
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7166 = trunc i64 %7162 to i32
  %7167 = and i32 %7166, 254
  %7168 = call i32 @llvm.ctpop.i32(i32 %7167)
  %7169 = trunc i32 %7168 to i8
  %7170 = and i8 %7169, 1
  %7171 = xor i8 %7170, 1
  store i8 %7171, i8* %7165, align 1
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7172, align 1
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7174 = icmp eq i64 %7162, 0
  %7175 = zext i1 %7174 to i8
  store i8 %7175, i8* %7173, align 1
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7177 = lshr i64 %7162, 63
  %7178 = trunc i64 %7177 to i8
  store i8 %7178, i8* %7176, align 1
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7179, align 1
  store %struct.Memory* %loadMem_416e79, %struct.Memory** %MEMORY
  %loadMem_416e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 33
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 1
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 5
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RAX.i74
  %7190 = load i64, i64* %RCX.i75
  %7191 = load i64, i64* %PC.i73
  %7192 = add i64 %7191, 3
  store i64 %7192, i64* %PC.i73
  %7193 = add i64 %7190, %7189
  store i64 %7193, i64* %RAX.i74, align 8
  %7194 = icmp ult i64 %7193, %7189
  %7195 = icmp ult i64 %7193, %7190
  %7196 = or i1 %7194, %7195
  %7197 = zext i1 %7196 to i8
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7197, i8* %7198, align 1
  %7199 = trunc i64 %7193 to i32
  %7200 = and i32 %7199, 255
  %7201 = call i32 @llvm.ctpop.i32(i32 %7200)
  %7202 = trunc i32 %7201 to i8
  %7203 = and i8 %7202, 1
  %7204 = xor i8 %7203, 1
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7204, i8* %7205, align 1
  %7206 = xor i64 %7190, %7189
  %7207 = xor i64 %7206, %7193
  %7208 = lshr i64 %7207, 4
  %7209 = trunc i64 %7208 to i8
  %7210 = and i8 %7209, 1
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7210, i8* %7211, align 1
  %7212 = icmp eq i64 %7193, 0
  %7213 = zext i1 %7212 to i8
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7213, i8* %7214, align 1
  %7215 = lshr i64 %7193, 63
  %7216 = trunc i64 %7215 to i8
  %7217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7216, i8* %7217, align 1
  %7218 = lshr i64 %7189, 63
  %7219 = lshr i64 %7190, 63
  %7220 = xor i64 %7215, %7218
  %7221 = xor i64 %7215, %7219
  %7222 = add i64 %7220, %7221
  %7223 = icmp eq i64 %7222, 2
  %7224 = zext i1 %7223 to i8
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7224, i8* %7225, align 1
  store %struct.Memory* %loadMem_416e7d, %struct.Memory** %MEMORY
  %loadMem_416e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 33
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7228 to i64*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 1
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 9
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %RSI.i72 = bitcast %union.anon* %7234 to i64*
  %7235 = load i64, i64* %RAX.i71
  %7236 = load i64, i64* %PC.i70
  %7237 = add i64 %7236, 3
  store i64 %7237, i64* %PC.i70
  %7238 = inttoptr i64 %7235 to i64*
  %7239 = load i64, i64* %7238
  store i64 %7239, i64* %RSI.i72, align 8
  store %struct.Memory* %loadMem_416e80, %struct.Memory** %MEMORY
  %loadMem_416e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 33
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7242 to i64*
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 7
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %7245 to i64*
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 15
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %7248 to i64*
  %7249 = load i64, i64* %RBP.i69
  %7250 = sub i64 %7249, 40
  %7251 = load i64, i64* %PC.i67
  %7252 = add i64 %7251, 4
  store i64 %7252, i64* %PC.i67
  %7253 = inttoptr i64 %7250 to i64*
  %7254 = load i64, i64* %7253
  store i64 %7254, i64* %RDX.i68, align 8
  store %struct.Memory* %loadMem_416e83, %struct.Memory** %MEMORY
  %loadMem_416e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7256 = getelementptr inbounds %struct.GPR, %struct.GPR* %7255, i32 0, i32 33
  %7257 = getelementptr inbounds %struct.Reg, %struct.Reg* %7256, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7257 to i64*
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7259 = getelementptr inbounds %struct.GPR, %struct.GPR* %7258, i32 0, i32 1
  %7260 = getelementptr inbounds %struct.Reg, %struct.Reg* %7259, i32 0, i32 0
  %7261 = bitcast %union.anon* %7260 to %struct.anon.2*
  %AL.i66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7261, i32 0, i32 0
  %7262 = load i64, i64* %PC.i65
  %7263 = add i64 %7262, 2
  store i64 %7263, i64* %PC.i65
  store i8 0, i8* %AL.i66, align 1
  store %struct.Memory* %loadMem_416e87, %struct.Memory** %MEMORY
  %loadMem1_416e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 33
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7266 to i64*
  %7267 = load i64, i64* %PC.i64
  %7268 = add i64 %7267, 162695
  %7269 = load i64, i64* %PC.i64
  %7270 = add i64 %7269, 5
  %7271 = load i64, i64* %PC.i64
  %7272 = add i64 %7271, 5
  store i64 %7272, i64* %PC.i64
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7274 = load i64, i64* %7273, align 8
  %7275 = add i64 %7274, -8
  %7276 = inttoptr i64 %7275 to i64*
  store i64 %7270, i64* %7276
  store i64 %7275, i64* %7273, align 8
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7268, i64* %7277, align 8
  store %struct.Memory* %loadMem1_416e89, %struct.Memory** %MEMORY
  %loadMem2_416e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416e89 = load i64, i64* %3
  %call2_416e89 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416e89, %struct.Memory* %loadMem2_416e89)
  store %struct.Memory* %call2_416e89, %struct.Memory** %MEMORY
  %loadMem_416e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 33
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7280 to i64*
  %7281 = load i64, i64* %PC.i63
  %7282 = add i64 %7281, 96
  %7283 = load i64, i64* %PC.i63
  %7284 = add i64 %7283, 5
  store i64 %7284, i64* %PC.i63
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7282, i64* %7285, align 8
  store %struct.Memory* %loadMem_416e8e, %struct.Memory** %MEMORY
  br label %block_.L_416eee

block_.L_416e93:                                  ; preds = %block_416e52, %block_.L_416e39
  %loadMem_416e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7287 = getelementptr inbounds %struct.GPR, %struct.GPR* %7286, i32 0, i32 33
  %7288 = getelementptr inbounds %struct.Reg, %struct.Reg* %7287, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7288 to i64*
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 1
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %7291 to i64*
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7293 = getelementptr inbounds %struct.GPR, %struct.GPR* %7292, i32 0, i32 15
  %7294 = getelementptr inbounds %struct.Reg, %struct.Reg* %7293, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7294 to i64*
  %7295 = load i64, i64* %RBP.i62
  %7296 = sub i64 %7295, 24
  %7297 = load i64, i64* %PC.i60
  %7298 = add i64 %7297, 4
  store i64 %7298, i64* %PC.i60
  %7299 = inttoptr i64 %7296 to i64*
  %7300 = load i64, i64* %7299
  store i64 %7300, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_416e93, %struct.Memory** %MEMORY
  %loadMem_416e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7302 = getelementptr inbounds %struct.GPR, %struct.GPR* %7301, i32 0, i32 33
  %7303 = getelementptr inbounds %struct.Reg, %struct.Reg* %7302, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7303 to i64*
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7305 = getelementptr inbounds %struct.GPR, %struct.GPR* %7304, i32 0, i32 5
  %7306 = getelementptr inbounds %struct.Reg, %struct.Reg* %7305, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %7306 to i64*
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7308 = getelementptr inbounds %struct.GPR, %struct.GPR* %7307, i32 0, i32 15
  %7309 = getelementptr inbounds %struct.Reg, %struct.Reg* %7308, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %7309 to i64*
  %7310 = load i64, i64* %RBP.i59
  %7311 = sub i64 %7310, 80
  %7312 = load i64, i64* %PC.i57
  %7313 = add i64 %7312, 4
  store i64 %7313, i64* %PC.i57
  %7314 = inttoptr i64 %7311 to i32*
  %7315 = load i32, i32* %7314
  %7316 = sext i32 %7315 to i64
  store i64 %7316, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_416e97, %struct.Memory** %MEMORY
  %loadMem_416e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 33
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7319 to i64*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 5
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %7322 to i64*
  %7323 = load i64, i64* %RCX.i56
  %7324 = load i64, i64* %PC.i55
  %7325 = add i64 %7324, 4
  store i64 %7325, i64* %PC.i55
  %7326 = shl i64 %7323, 3
  %7327 = icmp slt i64 %7326, 0
  %7328 = shl i64 %7326, 1
  store i64 %7328, i64* %RCX.i56, align 8
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7330 = zext i1 %7327 to i8
  store i8 %7330, i8* %7329, align 1
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7332 = trunc i64 %7328 to i32
  %7333 = and i32 %7332, 254
  %7334 = call i32 @llvm.ctpop.i32(i32 %7333)
  %7335 = trunc i32 %7334 to i8
  %7336 = and i8 %7335, 1
  %7337 = xor i8 %7336, 1
  store i8 %7337, i8* %7331, align 1
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7338, align 1
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7340 = icmp eq i64 %7328, 0
  %7341 = zext i1 %7340 to i8
  store i8 %7341, i8* %7339, align 1
  %7342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7343 = lshr i64 %7328, 63
  %7344 = trunc i64 %7343 to i8
  store i8 %7344, i8* %7342, align 1
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7345, align 1
  store %struct.Memory* %loadMem_416e9b, %struct.Memory** %MEMORY
  %loadMem_416e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 1
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %7351 to i64*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 5
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %7354 to i64*
  %7355 = load i64, i64* %RAX.i53
  %7356 = load i64, i64* %RCX.i54
  %7357 = load i64, i64* %PC.i52
  %7358 = add i64 %7357, 3
  store i64 %7358, i64* %PC.i52
  %7359 = add i64 %7356, %7355
  store i64 %7359, i64* %RAX.i53, align 8
  %7360 = icmp ult i64 %7359, %7355
  %7361 = icmp ult i64 %7359, %7356
  %7362 = or i1 %7360, %7361
  %7363 = zext i1 %7362 to i8
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7363, i8* %7364, align 1
  %7365 = trunc i64 %7359 to i32
  %7366 = and i32 %7365, 255
  %7367 = call i32 @llvm.ctpop.i32(i32 %7366)
  %7368 = trunc i32 %7367 to i8
  %7369 = and i8 %7368, 1
  %7370 = xor i8 %7369, 1
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7370, i8* %7371, align 1
  %7372 = xor i64 %7356, %7355
  %7373 = xor i64 %7372, %7359
  %7374 = lshr i64 %7373, 4
  %7375 = trunc i64 %7374 to i8
  %7376 = and i8 %7375, 1
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7376, i8* %7377, align 1
  %7378 = icmp eq i64 %7359, 0
  %7379 = zext i1 %7378 to i8
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7379, i8* %7380, align 1
  %7381 = lshr i64 %7359, 63
  %7382 = trunc i64 %7381 to i8
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7382, i8* %7383, align 1
  %7384 = lshr i64 %7355, 63
  %7385 = lshr i64 %7356, 63
  %7386 = xor i64 %7381, %7384
  %7387 = xor i64 %7381, %7385
  %7388 = add i64 %7386, %7387
  %7389 = icmp eq i64 %7388, 2
  %7390 = zext i1 %7389 to i8
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7390, i8* %7391, align 1
  store %struct.Memory* %loadMem_416e9f, %struct.Memory** %MEMORY
  %loadMem_416ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 33
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7394 to i64*
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 1
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %7397 to i64*
  %7398 = load i64, i64* %RAX.i51
  %7399 = add i64 %7398, 12
  %7400 = load i64, i64* %PC.i50
  %7401 = add i64 %7400, 4
  store i64 %7401, i64* %PC.i50
  %7402 = inttoptr i64 %7399 to i32*
  %7403 = load i32, i32* %7402
  %7404 = sub i32 %7403, 3
  %7405 = icmp ult i32 %7403, 3
  %7406 = zext i1 %7405 to i8
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7406, i8* %7407, align 1
  %7408 = and i32 %7404, 255
  %7409 = call i32 @llvm.ctpop.i32(i32 %7408)
  %7410 = trunc i32 %7409 to i8
  %7411 = and i8 %7410, 1
  %7412 = xor i8 %7411, 1
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7412, i8* %7413, align 1
  %7414 = xor i32 %7403, 3
  %7415 = xor i32 %7414, %7404
  %7416 = lshr i32 %7415, 4
  %7417 = trunc i32 %7416 to i8
  %7418 = and i8 %7417, 1
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7418, i8* %7419, align 1
  %7420 = icmp eq i32 %7404, 0
  %7421 = zext i1 %7420 to i8
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7421, i8* %7422, align 1
  %7423 = lshr i32 %7404, 31
  %7424 = trunc i32 %7423 to i8
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7424, i8* %7425, align 1
  %7426 = lshr i32 %7403, 31
  %7427 = xor i32 %7423, %7426
  %7428 = add i32 %7427, %7426
  %7429 = icmp eq i32 %7428, 2
  %7430 = zext i1 %7429 to i8
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7430, i8* %7431, align 1
  store %struct.Memory* %loadMem_416ea2, %struct.Memory** %MEMORY
  %loadMem_416ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 33
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7434 to i64*
  %7435 = load i64, i64* %PC.i49
  %7436 = add i64 %7435, 67
  %7437 = load i64, i64* %PC.i49
  %7438 = add i64 %7437, 6
  %7439 = load i64, i64* %PC.i49
  %7440 = add i64 %7439, 6
  store i64 %7440, i64* %PC.i49
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7442 = load i8, i8* %7441, align 1
  %7443 = icmp eq i8 %7442, 0
  %7444 = zext i1 %7443 to i8
  store i8 %7444, i8* %BRANCH_TAKEN, align 1
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7446 = select i1 %7443, i64 %7436, i64 %7438
  store i64 %7446, i64* %7445, align 8
  store %struct.Memory* %loadMem_416ea6, %struct.Memory** %MEMORY
  %loadBr_416ea6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ea6 = icmp eq i8 %loadBr_416ea6, 1
  br i1 %cmpBr_416ea6, label %block_.L_416ee9, label %block_416eac

block_416eac:                                     ; preds = %block_.L_416e93
  %loadMem_416eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 33
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7449 to i64*
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7451 = getelementptr inbounds %struct.GPR, %struct.GPR* %7450, i32 0, i32 1
  %7452 = getelementptr inbounds %struct.Reg, %struct.Reg* %7451, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %7452 to i64*
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 15
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %7455 to i64*
  %7456 = load i64, i64* %RBP.i48
  %7457 = sub i64 %7456, 64
  %7458 = load i64, i64* %PC.i46
  %7459 = add i64 %7458, 4
  store i64 %7459, i64* %PC.i46
  %7460 = inttoptr i64 %7457 to i64*
  %7461 = load i64, i64* %7460
  store i64 %7461, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_416eac, %struct.Memory** %MEMORY
  %loadMem_416eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7463 = getelementptr inbounds %struct.GPR, %struct.GPR* %7462, i32 0, i32 33
  %7464 = getelementptr inbounds %struct.Reg, %struct.Reg* %7463, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7464 to i64*
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7466 = getelementptr inbounds %struct.GPR, %struct.GPR* %7465, i32 0, i32 1
  %7467 = getelementptr inbounds %struct.Reg, %struct.Reg* %7466, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %7467 to i64*
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 11
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %RDI.i45 = bitcast %union.anon* %7470 to i64*
  %7471 = load i64, i64* %RAX.i44
  %7472 = load i64, i64* %PC.i43
  %7473 = add i64 %7472, 3
  store i64 %7473, i64* %PC.i43
  %7474 = inttoptr i64 %7471 to i64*
  %7475 = load i64, i64* %7474
  store i64 %7475, i64* %RDI.i45, align 8
  store %struct.Memory* %loadMem_416eb0, %struct.Memory** %MEMORY
  %loadMem1_416eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7477 = getelementptr inbounds %struct.GPR, %struct.GPR* %7476, i32 0, i32 33
  %7478 = getelementptr inbounds %struct.Reg, %struct.Reg* %7477, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7478 to i64*
  %7479 = load i64, i64* %PC.i42
  %7480 = add i64 %7479, -88659
  %7481 = load i64, i64* %PC.i42
  %7482 = add i64 %7481, 5
  %7483 = load i64, i64* %PC.i42
  %7484 = add i64 %7483, 5
  store i64 %7484, i64* %PC.i42
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7486 = load i64, i64* %7485, align 8
  %7487 = add i64 %7486, -8
  %7488 = inttoptr i64 %7487 to i64*
  store i64 %7482, i64* %7488
  store i64 %7487, i64* %7485, align 8
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7480, i64* %7489, align 8
  store %struct.Memory* %loadMem1_416eb3, %struct.Memory** %MEMORY
  %loadMem2_416eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416eb3 = load i64, i64* %3
  %7490 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_416eb3)
  store %struct.Memory* %7490, %struct.Memory** %MEMORY
  %loadMem_416eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7492 = getelementptr inbounds %struct.GPR, %struct.GPR* %7491, i32 0, i32 33
  %7493 = getelementptr inbounds %struct.Reg, %struct.Reg* %7492, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7493 to i64*
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 1
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7496 to i64*
  %7497 = load i64, i64* %RAX.i38
  %7498 = load i64, i64* %PC.i37
  %7499 = add i64 %7498, 4
  store i64 %7499, i64* %PC.i37
  %7500 = sub i64 %7497, 1
  %7501 = icmp ult i64 %7497, 1
  %7502 = zext i1 %7501 to i8
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7502, i8* %7503, align 1
  %7504 = trunc i64 %7500 to i32
  %7505 = and i32 %7504, 255
  %7506 = call i32 @llvm.ctpop.i32(i32 %7505)
  %7507 = trunc i32 %7506 to i8
  %7508 = and i8 %7507, 1
  %7509 = xor i8 %7508, 1
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7509, i8* %7510, align 1
  %7511 = xor i64 1, %7497
  %7512 = xor i64 %7511, %7500
  %7513 = lshr i64 %7512, 4
  %7514 = trunc i64 %7513 to i8
  %7515 = and i8 %7514, 1
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7515, i8* %7516, align 1
  %7517 = icmp eq i64 %7500, 0
  %7518 = zext i1 %7517 to i8
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7518, i8* %7519, align 1
  %7520 = lshr i64 %7500, 63
  %7521 = trunc i64 %7520 to i8
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7521, i8* %7522, align 1
  %7523 = lshr i64 %7497, 63
  %7524 = xor i64 %7520, %7523
  %7525 = add i64 %7524, %7523
  %7526 = icmp eq i64 %7525, 2
  %7527 = zext i1 %7526 to i8
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7527, i8* %7528, align 1
  store %struct.Memory* %loadMem_416eb8, %struct.Memory** %MEMORY
  %loadMem_416ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 33
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7531 to i64*
  %7532 = load i64, i64* %PC.i36
  %7533 = add i64 %7532, 45
  %7534 = load i64, i64* %PC.i36
  %7535 = add i64 %7534, 6
  %7536 = load i64, i64* %PC.i36
  %7537 = add i64 %7536, 6
  store i64 %7537, i64* %PC.i36
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7539 = load i8, i8* %7538, align 1
  store i8 %7539, i8* %BRANCH_TAKEN, align 1
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7541 = icmp ne i8 %7539, 0
  %7542 = select i1 %7541, i64 %7533, i64 %7535
  store i64 %7542, i64* %7540, align 8
  store %struct.Memory* %loadMem_416ebc, %struct.Memory** %MEMORY
  %loadBr_416ebc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ebc = icmp eq i8 %loadBr_416ebc, 1
  br i1 %cmpBr_416ebc, label %block_.L_416ee9, label %block_416ec2

block_416ec2:                                     ; preds = %block_416eac
  %loadMem_416ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7544 = getelementptr inbounds %struct.GPR, %struct.GPR* %7543, i32 0, i32 33
  %7545 = getelementptr inbounds %struct.Reg, %struct.Reg* %7544, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7545 to i64*
  %7546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7547 = getelementptr inbounds %struct.GPR, %struct.GPR* %7546, i32 0, i32 11
  %7548 = getelementptr inbounds %struct.Reg, %struct.Reg* %7547, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7548 to i64*
  %7549 = load i64, i64* %PC.i35
  %7550 = add i64 %7549, 10
  store i64 %7550, i64* %PC.i35
  store i64 ptrtoint (%G__0x456b2e_type* @G__0x456b2e to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_416ec2, %struct.Memory** %MEMORY
  %loadMem_416ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 33
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7553 to i64*
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 1
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %7556 to i64*
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7558 = getelementptr inbounds %struct.GPR, %struct.GPR* %7557, i32 0, i32 15
  %7559 = getelementptr inbounds %struct.Reg, %struct.Reg* %7558, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %7559 to i64*
  %7560 = load i64, i64* %RBP.i34
  %7561 = sub i64 %7560, 24
  %7562 = load i64, i64* %PC.i32
  %7563 = add i64 %7562, 4
  store i64 %7563, i64* %PC.i32
  %7564 = inttoptr i64 %7561 to i64*
  %7565 = load i64, i64* %7564
  store i64 %7565, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_416ecc, %struct.Memory** %MEMORY
  %loadMem_416ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7567 = getelementptr inbounds %struct.GPR, %struct.GPR* %7566, i32 0, i32 33
  %7568 = getelementptr inbounds %struct.Reg, %struct.Reg* %7567, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7568 to i64*
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7570 = getelementptr inbounds %struct.GPR, %struct.GPR* %7569, i32 0, i32 5
  %7571 = getelementptr inbounds %struct.Reg, %struct.Reg* %7570, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %7571 to i64*
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7573 = getelementptr inbounds %struct.GPR, %struct.GPR* %7572, i32 0, i32 15
  %7574 = getelementptr inbounds %struct.Reg, %struct.Reg* %7573, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7574 to i64*
  %7575 = load i64, i64* %RBP.i31
  %7576 = sub i64 %7575, 80
  %7577 = load i64, i64* %PC.i29
  %7578 = add i64 %7577, 4
  store i64 %7578, i64* %PC.i29
  %7579 = inttoptr i64 %7576 to i32*
  %7580 = load i32, i32* %7579
  %7581 = sext i32 %7580 to i64
  store i64 %7581, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_416ed0, %struct.Memory** %MEMORY
  %loadMem_416ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 33
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7584 to i64*
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7586 = getelementptr inbounds %struct.GPR, %struct.GPR* %7585, i32 0, i32 5
  %7587 = getelementptr inbounds %struct.Reg, %struct.Reg* %7586, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %7587 to i64*
  %7588 = load i64, i64* %RCX.i28
  %7589 = load i64, i64* %PC.i27
  %7590 = add i64 %7589, 4
  store i64 %7590, i64* %PC.i27
  %7591 = shl i64 %7588, 3
  %7592 = icmp slt i64 %7591, 0
  %7593 = shl i64 %7591, 1
  store i64 %7593, i64* %RCX.i28, align 8
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7595 = zext i1 %7592 to i8
  store i8 %7595, i8* %7594, align 1
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7597 = trunc i64 %7593 to i32
  %7598 = and i32 %7597, 254
  %7599 = call i32 @llvm.ctpop.i32(i32 %7598)
  %7600 = trunc i32 %7599 to i8
  %7601 = and i8 %7600, 1
  %7602 = xor i8 %7601, 1
  store i8 %7602, i8* %7596, align 1
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7603, align 1
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7605 = icmp eq i64 %7593, 0
  %7606 = zext i1 %7605 to i8
  store i8 %7606, i8* %7604, align 1
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7608 = lshr i64 %7593, 63
  %7609 = trunc i64 %7608 to i8
  store i8 %7609, i8* %7607, align 1
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7610, align 1
  store %struct.Memory* %loadMem_416ed4, %struct.Memory** %MEMORY
  %loadMem_416ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7612 = getelementptr inbounds %struct.GPR, %struct.GPR* %7611, i32 0, i32 33
  %7613 = getelementptr inbounds %struct.Reg, %struct.Reg* %7612, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7613 to i64*
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7615 = getelementptr inbounds %struct.GPR, %struct.GPR* %7614, i32 0, i32 1
  %7616 = getelementptr inbounds %struct.Reg, %struct.Reg* %7615, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %7616 to i64*
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7618 = getelementptr inbounds %struct.GPR, %struct.GPR* %7617, i32 0, i32 5
  %7619 = getelementptr inbounds %struct.Reg, %struct.Reg* %7618, i32 0, i32 0
  %RCX.i26 = bitcast %union.anon* %7619 to i64*
  %7620 = load i64, i64* %RAX.i25
  %7621 = load i64, i64* %RCX.i26
  %7622 = load i64, i64* %PC.i24
  %7623 = add i64 %7622, 3
  store i64 %7623, i64* %PC.i24
  %7624 = add i64 %7621, %7620
  store i64 %7624, i64* %RAX.i25, align 8
  %7625 = icmp ult i64 %7624, %7620
  %7626 = icmp ult i64 %7624, %7621
  %7627 = or i1 %7625, %7626
  %7628 = zext i1 %7627 to i8
  %7629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7628, i8* %7629, align 1
  %7630 = trunc i64 %7624 to i32
  %7631 = and i32 %7630, 255
  %7632 = call i32 @llvm.ctpop.i32(i32 %7631)
  %7633 = trunc i32 %7632 to i8
  %7634 = and i8 %7633, 1
  %7635 = xor i8 %7634, 1
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7635, i8* %7636, align 1
  %7637 = xor i64 %7621, %7620
  %7638 = xor i64 %7637, %7624
  %7639 = lshr i64 %7638, 4
  %7640 = trunc i64 %7639 to i8
  %7641 = and i8 %7640, 1
  %7642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7641, i8* %7642, align 1
  %7643 = icmp eq i64 %7624, 0
  %7644 = zext i1 %7643 to i8
  %7645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7644, i8* %7645, align 1
  %7646 = lshr i64 %7624, 63
  %7647 = trunc i64 %7646 to i8
  %7648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7647, i8* %7648, align 1
  %7649 = lshr i64 %7620, 63
  %7650 = lshr i64 %7621, 63
  %7651 = xor i64 %7646, %7649
  %7652 = xor i64 %7646, %7650
  %7653 = add i64 %7651, %7652
  %7654 = icmp eq i64 %7653, 2
  %7655 = zext i1 %7654 to i8
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7655, i8* %7656, align 1
  store %struct.Memory* %loadMem_416ed8, %struct.Memory** %MEMORY
  %loadMem_416edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7658 = getelementptr inbounds %struct.GPR, %struct.GPR* %7657, i32 0, i32 33
  %7659 = getelementptr inbounds %struct.Reg, %struct.Reg* %7658, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7659 to i64*
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7661 = getelementptr inbounds %struct.GPR, %struct.GPR* %7660, i32 0, i32 1
  %7662 = getelementptr inbounds %struct.Reg, %struct.Reg* %7661, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %7662 to i64*
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7664 = getelementptr inbounds %struct.GPR, %struct.GPR* %7663, i32 0, i32 9
  %7665 = getelementptr inbounds %struct.Reg, %struct.Reg* %7664, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7665 to i64*
  %7666 = load i64, i64* %RAX.i23
  %7667 = load i64, i64* %PC.i22
  %7668 = add i64 %7667, 3
  store i64 %7668, i64* %PC.i22
  %7669 = inttoptr i64 %7666 to i64*
  %7670 = load i64, i64* %7669
  store i64 %7670, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_416edb, %struct.Memory** %MEMORY
  %loadMem_416ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7672 = getelementptr inbounds %struct.GPR, %struct.GPR* %7671, i32 0, i32 33
  %7673 = getelementptr inbounds %struct.Reg, %struct.Reg* %7672, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7673 to i64*
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7675 = getelementptr inbounds %struct.GPR, %struct.GPR* %7674, i32 0, i32 7
  %7676 = getelementptr inbounds %struct.Reg, %struct.Reg* %7675, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7676 to i64*
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7678 = getelementptr inbounds %struct.GPR, %struct.GPR* %7677, i32 0, i32 15
  %7679 = getelementptr inbounds %struct.Reg, %struct.Reg* %7678, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7679 to i64*
  %7680 = load i64, i64* %RBP.i21
  %7681 = sub i64 %7680, 40
  %7682 = load i64, i64* %PC.i20
  %7683 = add i64 %7682, 4
  store i64 %7683, i64* %PC.i20
  %7684 = inttoptr i64 %7681 to i64*
  %7685 = load i64, i64* %7684
  store i64 %7685, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_416ede, %struct.Memory** %MEMORY
  %loadMem_416ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 33
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7688 to i64*
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 1
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %7692 = bitcast %union.anon* %7691 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7692, i32 0, i32 0
  %7693 = load i64, i64* %PC.i19
  %7694 = add i64 %7693, 2
  store i64 %7694, i64* %PC.i19
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_416ee2, %struct.Memory** %MEMORY
  %loadMem1_416ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 33
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7697 to i64*
  %7698 = load i64, i64* %PC.i18
  %7699 = add i64 %7698, 162604
  %7700 = load i64, i64* %PC.i18
  %7701 = add i64 %7700, 5
  %7702 = load i64, i64* %PC.i18
  %7703 = add i64 %7702, 5
  store i64 %7703, i64* %PC.i18
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7705 = load i64, i64* %7704, align 8
  %7706 = add i64 %7705, -8
  %7707 = inttoptr i64 %7706 to i64*
  store i64 %7701, i64* %7707
  store i64 %7706, i64* %7704, align 8
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7699, i64* %7708, align 8
  store %struct.Memory* %loadMem1_416ee4, %struct.Memory** %MEMORY
  %loadMem2_416ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416ee4 = load i64, i64* %3
  %call2_416ee4 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_416ee4, %struct.Memory* %loadMem2_416ee4)
  store %struct.Memory* %call2_416ee4, %struct.Memory** %MEMORY
  br label %block_.L_416ee9

block_.L_416ee9:                                  ; preds = %block_416ec2, %block_416eac, %block_.L_416e93
  %loadMem_416ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7710 = getelementptr inbounds %struct.GPR, %struct.GPR* %7709, i32 0, i32 33
  %7711 = getelementptr inbounds %struct.Reg, %struct.Reg* %7710, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7711 to i64*
  %7712 = load i64, i64* %PC.i17
  %7713 = add i64 %7712, 5
  %7714 = load i64, i64* %PC.i17
  %7715 = add i64 %7714, 5
  store i64 %7715, i64* %PC.i17
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7713, i64* %7716, align 8
  store %struct.Memory* %loadMem_416ee9, %struct.Memory** %MEMORY
  br label %block_.L_416eee

block_.L_416eee:                                  ; preds = %block_.L_416ee9, %block_416e67
  %loadMem_416eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7718 = getelementptr inbounds %struct.GPR, %struct.GPR* %7717, i32 0, i32 33
  %7719 = getelementptr inbounds %struct.Reg, %struct.Reg* %7718, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7719 to i64*
  %7720 = load i64, i64* %PC.i16
  %7721 = add i64 %7720, 5
  %7722 = load i64, i64* %PC.i16
  %7723 = add i64 %7722, 5
  store i64 %7723, i64* %PC.i16
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7721, i64* %7724, align 8
  store %struct.Memory* %loadMem_416eee, %struct.Memory** %MEMORY
  br label %block_.L_416ef3

block_.L_416ef3:                                  ; preds = %block_.L_416eee, %block_416e0d
  %loadMem_416ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7726 = getelementptr inbounds %struct.GPR, %struct.GPR* %7725, i32 0, i32 33
  %7727 = getelementptr inbounds %struct.Reg, %struct.Reg* %7726, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7727 to i64*
  %7728 = load i64, i64* %PC.i15
  %7729 = add i64 %7728, 5
  %7730 = load i64, i64* %PC.i15
  %7731 = add i64 %7730, 5
  store i64 %7731, i64* %PC.i15
  %7732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7729, i64* %7732, align 8
  store %struct.Memory* %loadMem_416ef3, %struct.Memory** %MEMORY
  br label %block_.L_416ef8

block_.L_416ef8:                                  ; preds = %block_.L_416ef3, %block_.L_416dc6
  %loadMem_416ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7734 = getelementptr inbounds %struct.GPR, %struct.GPR* %7733, i32 0, i32 33
  %7735 = getelementptr inbounds %struct.Reg, %struct.Reg* %7734, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7735 to i64*
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7737 = getelementptr inbounds %struct.GPR, %struct.GPR* %7736, i32 0, i32 1
  %7738 = getelementptr inbounds %struct.Reg, %struct.Reg* %7737, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %7738 to i64*
  %7739 = load i64, i64* %PC.i13
  %7740 = add i64 %7739, 7
  store i64 %7740, i64* %PC.i13
  %7741 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %7742 = zext i32 %7741 to i64
  store i64 %7742, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_416ef8, %struct.Memory** %MEMORY
  %loadMem_416eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7744 = getelementptr inbounds %struct.GPR, %struct.GPR* %7743, i32 0, i32 33
  %7745 = getelementptr inbounds %struct.Reg, %struct.Reg* %7744, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7745 to i64*
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7747 = getelementptr inbounds %struct.GPR, %struct.GPR* %7746, i32 0, i32 5
  %7748 = getelementptr inbounds %struct.Reg, %struct.Reg* %7747, i32 0, i32 0
  %RCX.i11 = bitcast %union.anon* %7748 to i64*
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 15
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %7751 to i64*
  %7752 = load i64, i64* %RBP.i12
  %7753 = sub i64 %7752, 48
  %7754 = load i64, i64* %PC.i10
  %7755 = add i64 %7754, 4
  store i64 %7755, i64* %PC.i10
  %7756 = inttoptr i64 %7753 to i64*
  %7757 = load i64, i64* %7756
  store i64 %7757, i64* %RCX.i11, align 8
  store %struct.Memory* %loadMem_416eff, %struct.Memory** %MEMORY
  %loadMem_416f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7759 = getelementptr inbounds %struct.GPR, %struct.GPR* %7758, i32 0, i32 33
  %7760 = getelementptr inbounds %struct.Reg, %struct.Reg* %7759, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7760 to i64*
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7762 = getelementptr inbounds %struct.GPR, %struct.GPR* %7761, i32 0, i32 1
  %7763 = getelementptr inbounds %struct.Reg, %struct.Reg* %7762, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7763 to i32*
  %7764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7765 = getelementptr inbounds %struct.GPR, %struct.GPR* %7764, i32 0, i32 5
  %7766 = getelementptr inbounds %struct.Reg, %struct.Reg* %7765, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7766 to i64*
  %7767 = load i64, i64* %RCX.i
  %7768 = load i32, i32* %EAX.i
  %7769 = zext i32 %7768 to i64
  %7770 = load i64, i64* %PC.i9
  %7771 = add i64 %7770, 2
  store i64 %7771, i64* %PC.i9
  %7772 = inttoptr i64 %7767 to i32*
  store i32 %7768, i32* %7772
  store %struct.Memory* %loadMem_416f03, %struct.Memory** %MEMORY
  %loadMem_416f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7774 = getelementptr inbounds %struct.GPR, %struct.GPR* %7773, i32 0, i32 33
  %7775 = getelementptr inbounds %struct.Reg, %struct.Reg* %7774, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7775 to i64*
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 15
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7778 to i64*
  %7779 = load i64, i64* %RBP.i8
  %7780 = sub i64 %7779, 4
  %7781 = load i64, i64* %PC.i7
  %7782 = add i64 %7781, 7
  store i64 %7782, i64* %PC.i7
  %7783 = inttoptr i64 %7780 to i32*
  store i32 1, i32* %7783
  store %struct.Memory* %loadMem_416f05, %struct.Memory** %MEMORY
  br label %block_.L_416f0c

block_.L_416f0c:                                  ; preds = %block_.L_416ef8, %block_41683a, %block_.L_4167e6
  %loadMem_416f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7785 = getelementptr inbounds %struct.GPR, %struct.GPR* %7784, i32 0, i32 33
  %7786 = getelementptr inbounds %struct.Reg, %struct.Reg* %7785, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7786 to i64*
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 1
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7789 to i64*
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 15
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7792 to i64*
  %7793 = load i64, i64* %RBP.i6
  %7794 = sub i64 %7793, 4
  %7795 = load i64, i64* %PC.i5
  %7796 = add i64 %7795, 3
  store i64 %7796, i64* %PC.i5
  %7797 = inttoptr i64 %7794 to i32*
  %7798 = load i32, i32* %7797
  %7799 = zext i32 %7798 to i64
  store i64 %7799, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_416f0c, %struct.Memory** %MEMORY
  %loadMem_416f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7801 = getelementptr inbounds %struct.GPR, %struct.GPR* %7800, i32 0, i32 33
  %7802 = getelementptr inbounds %struct.Reg, %struct.Reg* %7801, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7802 to i64*
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7804 = getelementptr inbounds %struct.GPR, %struct.GPR* %7803, i32 0, i32 13
  %7805 = getelementptr inbounds %struct.Reg, %struct.Reg* %7804, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7805 to i64*
  %7806 = load i64, i64* %RSP.i
  %7807 = load i64, i64* %PC.i4
  %7808 = add i64 %7807, 4
  store i64 %7808, i64* %PC.i4
  %7809 = add i64 96, %7806
  store i64 %7809, i64* %RSP.i, align 8
  %7810 = icmp ult i64 %7809, %7806
  %7811 = icmp ult i64 %7809, 96
  %7812 = or i1 %7810, %7811
  %7813 = zext i1 %7812 to i8
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7813, i8* %7814, align 1
  %7815 = trunc i64 %7809 to i32
  %7816 = and i32 %7815, 255
  %7817 = call i32 @llvm.ctpop.i32(i32 %7816)
  %7818 = trunc i32 %7817 to i8
  %7819 = and i8 %7818, 1
  %7820 = xor i8 %7819, 1
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7820, i8* %7821, align 1
  %7822 = xor i64 96, %7806
  %7823 = xor i64 %7822, %7809
  %7824 = lshr i64 %7823, 4
  %7825 = trunc i64 %7824 to i8
  %7826 = and i8 %7825, 1
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7826, i8* %7827, align 1
  %7828 = icmp eq i64 %7809, 0
  %7829 = zext i1 %7828 to i8
  %7830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7829, i8* %7830, align 1
  %7831 = lshr i64 %7809, 63
  %7832 = trunc i64 %7831 to i8
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7832, i8* %7833, align 1
  %7834 = lshr i64 %7806, 63
  %7835 = xor i64 %7831, %7834
  %7836 = add i64 %7835, %7831
  %7837 = icmp eq i64 %7836, 2
  %7838 = zext i1 %7837 to i8
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7838, i8* %7839, align 1
  store %struct.Memory* %loadMem_416f0f, %struct.Memory** %MEMORY
  %loadMem_416f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 33
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7842 to i64*
  %7843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7844 = getelementptr inbounds %struct.GPR, %struct.GPR* %7843, i32 0, i32 15
  %7845 = getelementptr inbounds %struct.Reg, %struct.Reg* %7844, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7845 to i64*
  %7846 = load i64, i64* %PC.i2
  %7847 = add i64 %7846, 1
  store i64 %7847, i64* %PC.i2
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7849 = load i64, i64* %7848, align 8
  %7850 = add i64 %7849, 8
  %7851 = inttoptr i64 %7849 to i64*
  %7852 = load i64, i64* %7851
  store i64 %7852, i64* %RBP.i3, align 8
  store i64 %7850, i64* %7848, align 8
  store %struct.Memory* %loadMem_416f13, %struct.Memory** %MEMORY
  %loadMem_416f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7854 = getelementptr inbounds %struct.GPR, %struct.GPR* %7853, i32 0, i32 33
  %7855 = getelementptr inbounds %struct.Reg, %struct.Reg* %7854, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7855 to i64*
  %7856 = load i64, i64* %PC.i1
  %7857 = add i64 %7856, 1
  store i64 %7857, i64* %PC.i1
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7860 = load i64, i64* %7859, align 8
  %7861 = inttoptr i64 %7860 to i64*
  %7862 = load i64, i64* %7861
  store i64 %7862, i64* %7858, align 8
  %7863 = add i64 %7860, 8
  store i64 %7863, i64* %7859, align 8
  store %struct.Memory* %loadMem_416f14, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_416f14
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

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
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

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_4167e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 45
  %14 = icmp ult i32 %9, 45
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
  %23 = xor i64 45, %10
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

define %struct.Memory* @routine_jne_.L_4167e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x456fc4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_416815(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x661200___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  store i64 0, i64* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_416f0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x456fc3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64 4294967295), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41687a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x661200(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %8, 63
  %25 = xor i64 %21, %24
  %26 = add i64 %25, %24
  %27 = icmp eq i64 %26, 2
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_416ba5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456fc3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_0x661200___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 61, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strchr_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x663070(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_416903(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x663070___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i8*
  store i8 0, i8* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_4169dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4169c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq___rdx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4169c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4169dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4169c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4169ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41692b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
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

define %struct.Memory* @routine_jle_.L_416a37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_416a37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456a2a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456a2a_type* @G__0x456a2a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
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

define %struct.Memory* @routine_jne_.L_416a66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456a60___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456a60_type* @G__0x456a60 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_je_.L_416b4e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_416ad8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x0__0x663070(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x661200___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x661200(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416b49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jl_.L_416b17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456a78___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456a78_type* @G__0x456a78 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416b44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x661200(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416ba0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_416b84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456a9a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456a9a_type* @G__0x456a9a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i64*
  store i64 0, i64* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416dc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_416bd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_416c4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_416c37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1
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

define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jmpq_.L_416c4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_416c3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_416bde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_jne_.L_416c74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456ac1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456ac1_type* @G__0x456ac1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_416d66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_416ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_416d55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_416d29(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_416d50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_416dc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_416d9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_416dbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_416ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_416e39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.IsInt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456ad9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456ad9_type* @G__0x456ad9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416ef3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_416e93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.IsReal(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456b03___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456b03_type* @G__0x456b03 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416eee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_416ee9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 1
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_je_.L_416ee9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456b2e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456b2e_type* @G__0x456b2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_416ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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
