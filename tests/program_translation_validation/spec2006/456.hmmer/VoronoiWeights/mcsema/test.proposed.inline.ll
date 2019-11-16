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
%G_0x1508__rip__type = type <{ [4 x i8] }>
%G_0x1520__rip__type = type <{ [8 x i8] }>
%G_0x158d__rip__type = type <{ [4 x i8] }>
%G_0xedf__rip__type = type <{ [8 x i8] }>
%G_0xf8c__rip__type = type <{ [4 x i8] }>
%G__0x45b4d2_type = type <{ [8 x i8] }>
%G__0x45b580_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x1508__rip_ = global %G_0x1508__rip__type zeroinitializer
@G_0x1520__rip_ = global %G_0x1520__rip__type zeroinitializer
@G_0x158d__rip_ = global %G_0x158d__rip__type zeroinitializer
@G_0xedf__rip_ = global %G_0xedf__rip__type zeroinitializer
@G_0xf8c__rip_ = global %G_0xf8c__rip__type zeroinitializer
@G__0x45b4d2 = global %G__0x45b4d2_type zeroinitializer
@G__0x45b580 = global %G__0x45b580_type zeroinitializer

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

declare %struct.Memory* @sub_4539c0.simple_diffmx(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446110.Free2DArray(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_453b10.simple_distance(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @VoronoiWeights(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_453170 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_453170, %struct.Memory** %MEMORY
  %loadMem_453171 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_453171, %struct.Memory** %MEMORY
  %loadMem_453174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i18 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i18
  %36 = load i64, i64* %PC.i17
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i17
  %38 = sub i64 %35, 240
  store i64 %38, i64* %RSP.i18, align 8
  %39 = icmp ult i64 %35, 240
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
  %49 = xor i64 240, %35
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
  store %struct.Memory* %loadMem_453174, %struct.Memory** %MEMORY
  %loadMem_45317b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i24 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i25
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i24
  %79 = load i64, i64* %PC.i23
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i23
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_45317b, %struct.Memory** %MEMORY
  %loadMem_45317f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i133
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i132
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i132
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_45317f, %struct.Memory** %MEMORY
  %loadMem_453182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i150
  %108 = sub i64 %107, 16
  %109 = load i32, i32* %EDX.i
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i149
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i149
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_453182, %struct.Memory** %MEMORY
  %loadMem_453185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i180
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %RCX.i179
  %126 = load i64, i64* %PC.i178
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i178
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_453185, %struct.Memory** %MEMORY
  %loadMem_453189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i200
  %136 = sub i64 %135, 12
  %137 = load i64, i64* %PC.i199
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC.i199
  %139 = inttoptr i64 %136 to i32*
  %140 = load i32, i32* %139
  %141 = sub i32 %140, 1
  %142 = icmp ult i32 %140, 1
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %143, i8* %144, align 1
  %145 = and i32 %141, 255
  %146 = call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %149, i8* %150, align 1
  %151 = xor i32 %140, 1
  %152 = xor i32 %151, %141
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %155, i8* %156, align 1
  %157 = icmp eq i32 %141, 0
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %158, i8* %159, align 1
  %160 = lshr i32 %141, 31
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %161, i8* %162, align 1
  %163 = lshr i32 %140, 31
  %164 = xor i32 %160, %163
  %165 = add i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %167, i8* %168, align 1
  store %struct.Memory* %loadMem_453189, %struct.Memory** %MEMORY
  %loadMem_45318d = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %PC.i727
  %173 = add i64 %172, 27
  %174 = load i64, i64* %PC.i727
  %175 = add i64 %174, 6
  %176 = load i64, i64* %PC.i727
  %177 = add i64 %176, 6
  store i64 %177, i64* %PC.i727
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %179 = load i8, i8* %178, align 1
  %180 = icmp eq i8 %179, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %BRANCH_TAKEN, align 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = select i1 %180, i64 %173, i64 %175
  store i64 %183, i64* %182, align 8
  store %struct.Memory* %loadMem_45318d, %struct.Memory** %MEMORY
  %loadBr_45318d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45318d = icmp eq i8 %loadBr_45318d, 1
  br i1 %cmpBr_45318d, label %block_.L_4531a8, label %block_453193

block_453193:                                     ; preds = %entry
  %loadMem_453193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %187, i64 0, i64 0
  %YMM0.i897 = bitcast %union.VectorReg* %188 to %"class.std::bitset"*
  %189 = bitcast %"class.std::bitset"* %YMM0.i897 to i8*
  %190 = load i64, i64* %PC.i896
  %191 = add i64 %190, ptrtoint (%G_0x158d__rip__type* @G_0x158d__rip_ to i64)
  %192 = load i64, i64* %PC.i896
  %193 = add i64 %192, 8
  store i64 %193, i64* %PC.i896
  %194 = inttoptr i64 %191 to float*
  %195 = load float, float* %194
  %196 = bitcast i8* %189 to float*
  store float %195, float* %196, align 1
  %197 = getelementptr inbounds i8, i8* %189, i64 4
  %198 = bitcast i8* %197 to float*
  store float 0.000000e+00, float* %198, align 1
  %199 = getelementptr inbounds i8, i8* %189, i64 8
  %200 = bitcast i8* %199 to float*
  store float 0.000000e+00, float* %200, align 1
  %201 = getelementptr inbounds i8, i8* %189, i64 12
  %202 = bitcast i8* %201 to float*
  store float 0.000000e+00, float* %202, align 1
  store %struct.Memory* %loadMem_453193, %struct.Memory** %MEMORY
  %loadMem_45319b = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RAX.i989 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i990 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i990
  %213 = sub i64 %212, 24
  %214 = load i64, i64* %PC.i988
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i988
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RAX.i989, align 8
  store %struct.Memory* %loadMem_45319b, %struct.Memory** %MEMORY
  %loadMem_45319f = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RAX.i986 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %224, i64 0, i64 0
  %XMM0.i987 = bitcast %union.VectorReg* %225 to %union.vec128_t*
  %226 = load i64, i64* %RAX.i986
  %227 = bitcast %union.vec128_t* %XMM0.i987 to i8*
  %228 = load i64, i64* %PC.i985
  %229 = add i64 %228, 4
  store i64 %229, i64* %PC.i985
  %230 = bitcast i8* %227 to <2 x float>*
  %231 = load <2 x float>, <2 x float>* %230, align 1
  %232 = extractelement <2 x float> %231, i32 0
  %233 = inttoptr i64 %226 to float*
  store float %232, float* %233
  store %struct.Memory* %loadMem_45319f, %struct.Memory** %MEMORY
  %loadMem_4531a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %PC.i984
  %238 = add i64 %237, 2066
  %239 = load i64, i64* %PC.i984
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i984
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %238, i64* %241, align 8
  store %struct.Memory* %loadMem_4531a3, %struct.Memory** %MEMORY
  br label %block_.L_4539b5

block_.L_4531a8:                                  ; preds = %entry
  %loadMem_4531a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 7
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RDX.i982 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i983 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %RBP.i983
  %252 = sub i64 %251, 32
  %253 = load i64, i64* %PC.i981
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC.i981
  store i64 %252, i64* %RDX.i982, align 8
  store %struct.Memory* %loadMem_4531a8, %struct.Memory** %MEMORY
  %loadMem_4531ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i980 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i980
  %262 = sub i64 %261, 220
  %263 = load i64, i64* %PC.i979
  %264 = add i64 %263, 10
  store i64 %264, i64* %PC.i979
  %265 = inttoptr i64 %262 to i32*
  store i32 50, i32* %265
  store %struct.Memory* %loadMem_4531ac, %struct.Memory** %MEMORY
  %loadMem_4531b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 11
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RDI.i977 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i978 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i978
  %276 = sub i64 %275, 8
  %277 = load i64, i64* %PC.i976
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC.i976
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %RDI.i977, align 8
  store %struct.Memory* %loadMem_4531b6, %struct.Memory** %MEMORY
  %loadMem_4531ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 9
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RSI.i974 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i975 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RBP.i975
  %291 = sub i64 %290, 12
  %292 = load i64, i64* %PC.i973
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC.i973
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RSI.i974, align 8
  store %struct.Memory* %loadMem_4531ba, %struct.Memory** %MEMORY
  %loadMem1_4531bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %PC.i972
  %301 = add i64 %300, 2051
  %302 = load i64, i64* %PC.i972
  %303 = add i64 %302, 5
  %304 = load i64, i64* %PC.i972
  %305 = add i64 %304, 5
  store i64 %305, i64* %PC.i972
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %303, i64* %309
  store i64 %308, i64* %306, align 8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %301, i64* %310, align 8
  store %struct.Memory* %loadMem1_4531bd, %struct.Memory** %MEMORY
  %loadMem2_4531bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4531bd = load i64, i64* %3
  %call2_4531bd = call %struct.Memory* @sub_4539c0.simple_diffmx(%struct.State* %0, i64 %loadPC_4531bd, %struct.Memory* %loadMem2_4531bd)
  store %struct.Memory* %call2_4531bd, %struct.Memory** %MEMORY
  %loadMem_4531c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %EAX.i971 = bitcast %union.anon* %316 to i32*
  %317 = load i32, i32* %EAX.i971
  %318 = zext i32 %317 to i64
  %319 = load i64, i64* %PC.i970
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC.i970
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %321, align 1
  %322 = and i32 %317, 255
  %323 = call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %326, i8* %327, align 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %328, align 1
  %329 = icmp eq i32 %317, 0
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %330, i8* %331, align 1
  %332 = lshr i32 %317, 31
  %333 = trunc i32 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %333, i8* %334, align 1
  %335 = lshr i32 %317, 31
  %336 = xor i32 %332, %335
  %337 = add i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %339, i8* %340, align 1
  store %struct.Memory* %loadMem_4531c2, %struct.Memory** %MEMORY
  %loadMem_4531c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %PC.i969
  %345 = add i64 %344, 23
  %346 = load i64, i64* %PC.i969
  %347 = add i64 %346, 6
  %348 = load i64, i64* %PC.i969
  %349 = add i64 %348, 6
  store i64 %349, i64* %PC.i969
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %351 = load i8, i8* %350, align 1
  %352 = icmp eq i8 %351, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %BRANCH_TAKEN, align 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %355 = select i1 %352, i64 %345, i64 %347
  store i64 %355, i64* %354, align 8
  store %struct.Memory* %loadMem_4531c5, %struct.Memory** %MEMORY
  %loadBr_4531c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4531c5 = icmp eq i8 %loadBr_4531c5, 1
  br i1 %cmpBr_4531c5, label %block_.L_4531dc, label %block_4531cb

block_4531cb:                                     ; preds = %block_.L_4531a8
  %loadMem_4531cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 11
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RDI.i968 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %PC.i967
  %363 = add i64 %362, 10
  store i64 %363, i64* %PC.i967
  store i64 ptrtoint (%G__0x45b580_type* @G__0x45b580 to i64), i64* %RDI.i968, align 8
  store %struct.Memory* %loadMem_4531cb, %struct.Memory** %MEMORY
  %loadMem_4531d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %370 = bitcast %union.anon* %369 to %struct.anon.2*
  %AL.i966 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %370, i32 0, i32 0
  %371 = load i64, i64* %PC.i965
  %372 = add i64 %371, 2
  store i64 %372, i64* %PC.i965
  store i8 0, i8* %AL.i966, align 1
  store %struct.Memory* %loadMem_4531d5, %struct.Memory** %MEMORY
  %loadMem1_4531d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %PC.i964
  %377 = add i64 %376, -83911
  %378 = load i64, i64* %PC.i964
  %379 = add i64 %378, 5
  %380 = load i64, i64* %PC.i964
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC.i964
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %379, i64* %385
  store i64 %384, i64* %382, align 8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %377, i64* %386, align 8
  store %struct.Memory* %loadMem1_4531d7, %struct.Memory** %MEMORY
  %loadMem2_4531d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4531d7 = load i64, i64* %3
  %call2_4531d7 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_4531d7, %struct.Memory* %loadMem2_4531d7)
  store %struct.Memory* %call2_4531d7, %struct.Memory** %MEMORY
  br label %block_.L_4531dc

block_.L_4531dc:                                  ; preds = %block_4531cb, %block_.L_4531a8
  %loadMem_4531dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 11
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RDI.i963 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %PC.i962
  %394 = add i64 %393, 10
  store i64 %394, i64* %PC.i962
  store i64 ptrtoint (%G__0x45b4d2_type* @G__0x45b4d2 to i64), i64* %RDI.i963, align 8
  store %struct.Memory* %loadMem_4531dc, %struct.Memory** %MEMORY
  %loadMem_4531e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 9
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RSI.i961 = bitcast %union.anon* %400 to i64*
  %401 = load i64, i64* %PC.i960
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC.i960
  store i64 184, i64* %RSI.i961, align 8
  store %struct.Memory* %loadMem_4531e6, %struct.Memory** %MEMORY
  %loadMem_4531eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RAX.i958 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i959
  %413 = sub i64 %412, 12
  %414 = load i64, i64* %PC.i957
  %415 = add i64 %414, 4
  store i64 %415, i64* %PC.i957
  %416 = inttoptr i64 %413 to i32*
  %417 = load i32, i32* %416
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %RAX.i958, align 8
  store %struct.Memory* %loadMem_4531eb, %struct.Memory** %MEMORY
  %loadMem_4531ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RAX.i956 = bitcast %union.anon* %424 to i64*
  %425 = load i64, i64* %RAX.i956
  %426 = load i64, i64* %PC.i955
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC.i955
  %428 = shl i64 %425, 1
  %429 = icmp slt i64 %428, 0
  %430 = shl i64 %428, 1
  store i64 %430, i64* %RAX.i956, align 8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %432 = zext i1 %429 to i8
  store i8 %432, i8* %431, align 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %434 = trunc i64 %430 to i32
  %435 = and i32 %434, 254
  %436 = call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %433, align 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %440, align 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %442 = icmp eq i64 %430, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %441, align 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %445 = lshr i64 %430, 63
  %446 = trunc i64 %445 to i8
  store i8 %446, i8* %444, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %447, align 1
  store %struct.Memory* %loadMem_4531ef, %struct.Memory** %MEMORY
  %loadMem_4531f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 7
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RDX.i954 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RAX.i953
  %458 = load i64, i64* %PC.i952
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC.i952
  store i64 %457, i64* %RDX.i954, align 8
  store %struct.Memory* %loadMem_4531f3, %struct.Memory** %MEMORY
  %loadMem1_4531f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %PC.i951
  %464 = add i64 %463, -53654
  %465 = load i64, i64* %PC.i951
  %466 = add i64 %465, 5
  %467 = load i64, i64* %PC.i951
  %468 = add i64 %467, 5
  store i64 %468, i64* %PC.i951
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = add i64 %470, -8
  %472 = inttoptr i64 %471 to i64*
  store i64 %466, i64* %472
  store i64 %471, i64* %469, align 8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %464, i64* %473, align 8
  store %struct.Memory* %loadMem1_4531f6, %struct.Memory** %MEMORY
  %loadMem2_4531f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4531f6 = load i64, i64* %3
  %call2_4531f6 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4531f6, %struct.Memory* %loadMem2_4531f6)
  store %struct.Memory* %call2_4531f6, %struct.Memory** %MEMORY
  %loadMem_4531fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i950 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %RBP.i950
  %484 = sub i64 %483, 40
  %485 = load i64, i64* %RAX.i949
  %486 = load i64, i64* %PC.i948
  %487 = add i64 %486, 4
  store i64 %487, i64* %PC.i948
  %488 = inttoptr i64 %484 to i64*
  store i64 %485, i64* %488
  store %struct.Memory* %loadMem_4531fb, %struct.Memory** %MEMORY
  %loadMem_4531ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 15
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RBP.i947
  %496 = sub i64 %495, 192
  %497 = load i64, i64* %PC.i946
  %498 = add i64 %497, 10
  store i64 %498, i64* %PC.i946
  %499 = inttoptr i64 %496 to i32*
  store i32 0, i32* %499
  store %struct.Memory* %loadMem_4531ff, %struct.Memory** %MEMORY
  br label %block_.L_453209

block_.L_453209:                                  ; preds = %block_.L_4532c0, %block_.L_4531dc
  %loadMem_453209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RAX.i944 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i945
  %510 = sub i64 %509, 192
  %511 = load i64, i64* %PC.i943
  %512 = add i64 %511, 6
  store i64 %512, i64* %PC.i943
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i944, align 8
  store %struct.Memory* %loadMem_453209, %struct.Memory** %MEMORY
  %loadMem_45320f = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %EAX.i941 = bitcast %union.anon* %521 to i32*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i942 = bitcast %union.anon* %524 to i64*
  %525 = load i32, i32* %EAX.i941
  %526 = zext i32 %525 to i64
  %527 = load i64, i64* %RBP.i942
  %528 = sub i64 %527, 12
  %529 = load i64, i64* %PC.i940
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC.i940
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531
  %533 = sub i32 %525, %532
  %534 = icmp ult i32 %525, %532
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %535, i8* %536, align 1
  %537 = and i32 %533, 255
  %538 = call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %541, i8* %542, align 1
  %543 = xor i32 %532, %525
  %544 = xor i32 %543, %533
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %547, i8* %548, align 1
  %549 = icmp eq i32 %533, 0
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %550, i8* %551, align 1
  %552 = lshr i32 %533, 31
  %553 = trunc i32 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %553, i8* %554, align 1
  %555 = lshr i32 %525, 31
  %556 = lshr i32 %532, 31
  %557 = xor i32 %556, %555
  %558 = xor i32 %552, %555
  %559 = add i32 %558, %557
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %561, i8* %562, align 1
  store %struct.Memory* %loadMem_45320f, %struct.Memory** %MEMORY
  %loadMem_453212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %PC.i939
  %567 = add i64 %566, 234
  %568 = load i64, i64* %PC.i939
  %569 = add i64 %568, 6
  %570 = load i64, i64* %PC.i939
  %571 = add i64 %570, 6
  store i64 %571, i64* %PC.i939
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %573 = load i8, i8* %572, align 1
  %574 = icmp ne i8 %573, 0
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %576 = load i8, i8* %575, align 1
  %577 = icmp ne i8 %576, 0
  %578 = xor i1 %574, %577
  %579 = xor i1 %578, true
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %BRANCH_TAKEN, align 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %582 = select i1 %578, i64 %569, i64 %567
  store i64 %582, i64* %581, align 8
  store %struct.Memory* %loadMem_453212, %struct.Memory** %MEMORY
  %loadBr_453212 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453212 = icmp eq i8 %loadBr_453212, 1
  br i1 %cmpBr_453212, label %block_.L_4532fc, label %block_453218

block_453218:                                     ; preds = %block_.L_453209
  %loadMem_453218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %586, i64 0, i64 0
  %YMM0.i938 = bitcast %union.VectorReg* %587 to %"class.std::bitset"*
  %588 = bitcast %"class.std::bitset"* %YMM0.i938 to i8*
  %589 = load i64, i64* %PC.i937
  %590 = add i64 %589, ptrtoint (%G_0x1508__rip__type* @G_0x1508__rip_ to i64)
  %591 = load i64, i64* %PC.i937
  %592 = add i64 %591, 8
  store i64 %592, i64* %PC.i937
  %593 = inttoptr i64 %590 to float*
  %594 = load float, float* %593
  %595 = bitcast i8* %588 to float*
  store float %594, float* %595, align 1
  %596 = getelementptr inbounds i8, i8* %588, i64 4
  %597 = bitcast i8* %596 to float*
  store float 0.000000e+00, float* %597, align 1
  %598 = getelementptr inbounds i8, i8* %588, i64 8
  %599 = bitcast i8* %598 to float*
  store float 0.000000e+00, float* %599, align 1
  %600 = getelementptr inbounds i8, i8* %588, i64 12
  %601 = bitcast i8* %600 to float*
  store float 0.000000e+00, float* %601, align 1
  store %struct.Memory* %loadMem_453218, %struct.Memory** %MEMORY
  %loadMem_453220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 15
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %608, i64 0, i64 0
  %XMM0.i936 = bitcast %union.VectorReg* %609 to %union.vec128_t*
  %610 = load i64, i64* %RBP.i935
  %611 = sub i64 %610, 204
  %612 = bitcast %union.vec128_t* %XMM0.i936 to i8*
  %613 = load i64, i64* %PC.i934
  %614 = add i64 %613, 8
  store i64 %614, i64* %PC.i934
  %615 = bitcast i8* %612 to <2 x float>*
  %616 = load <2 x float>, <2 x float>* %615, align 1
  %617 = extractelement <2 x float> %616, i32 0
  %618 = inttoptr i64 %611 to float*
  store float %617, float* %618
  store %struct.Memory* %loadMem_453220, %struct.Memory** %MEMORY
  %loadMem_453228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RBP.i933
  %626 = sub i64 %625, 200
  %627 = load i64, i64* %PC.i932
  %628 = add i64 %627, 10
  store i64 %628, i64* %PC.i932
  %629 = inttoptr i64 %626 to i32*
  store i32 0, i32* %629
  store %struct.Memory* %loadMem_453228, %struct.Memory** %MEMORY
  br label %block_.L_453232

block_.L_453232:                                  ; preds = %block_.L_4532ac, %block_453218
  %loadMem_453232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RAX.i930 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 15
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RBP.i931
  %640 = sub i64 %639, 200
  %641 = load i64, i64* %PC.i929
  %642 = add i64 %641, 6
  store i64 %642, i64* %PC.i929
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i930, align 8
  store %struct.Memory* %loadMem_453232, %struct.Memory** %MEMORY
  %loadMem_453238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %EAX.i927 = bitcast %union.anon* %651 to i32*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %654 to i64*
  %655 = load i32, i32* %EAX.i927
  %656 = zext i32 %655 to i64
  %657 = load i64, i64* %RBP.i928
  %658 = sub i64 %657, 12
  %659 = load i64, i64* %PC.i926
  %660 = add i64 %659, 3
  store i64 %660, i64* %PC.i926
  %661 = inttoptr i64 %658 to i32*
  %662 = load i32, i32* %661
  %663 = sub i32 %655, %662
  %664 = icmp ult i32 %655, %662
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %665, i8* %666, align 1
  %667 = and i32 %663, 255
  %668 = call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %671, i8* %672, align 1
  %673 = xor i32 %662, %655
  %674 = xor i32 %673, %663
  %675 = lshr i32 %674, 4
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %677, i8* %678, align 1
  %679 = icmp eq i32 %663, 0
  %680 = zext i1 %679 to i8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %680, i8* %681, align 1
  %682 = lshr i32 %663, 31
  %683 = trunc i32 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %683, i8* %684, align 1
  %685 = lshr i32 %655, 31
  %686 = lshr i32 %662, 31
  %687 = xor i32 %686, %685
  %688 = xor i32 %682, %685
  %689 = add i32 %688, %687
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %691, i8* %692, align 1
  store %struct.Memory* %loadMem_453238, %struct.Memory** %MEMORY
  %loadMem_45323b = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %PC.i925
  %697 = add i64 %696, 133
  %698 = load i64, i64* %PC.i925
  %699 = add i64 %698, 6
  %700 = load i64, i64* %PC.i925
  %701 = add i64 %700, 6
  store i64 %701, i64* %PC.i925
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %703 = load i8, i8* %702, align 1
  %704 = icmp ne i8 %703, 0
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %706 = load i8, i8* %705, align 1
  %707 = icmp ne i8 %706, 0
  %708 = xor i1 %704, %707
  %709 = xor i1 %708, true
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %BRANCH_TAKEN, align 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %712 = select i1 %708, i64 %699, i64 %697
  store i64 %712, i64* %711, align 8
  store %struct.Memory* %loadMem_45323b, %struct.Memory** %MEMORY
  %loadBr_45323b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45323b = icmp eq i8 %loadBr_45323b, 1
  br i1 %cmpBr_45323b, label %block_.L_4532c0, label %block_453241

block_453241:                                     ; preds = %block_.L_453232
  %loadMem_453241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RAX.i923 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i924 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i924
  %723 = sub i64 %722, 200
  %724 = load i64, i64* %PC.i922
  %725 = add i64 %724, 6
  store i64 %725, i64* %PC.i922
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i923, align 8
  store %struct.Memory* %loadMem_453241, %struct.Memory** %MEMORY
  %loadMem_453247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %EAX.i920 = bitcast %union.anon* %734 to i32*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %737 to i64*
  %738 = load i32, i32* %EAX.i920
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %RBP.i921
  %741 = sub i64 %740, 192
  %742 = load i64, i64* %PC.i919
  %743 = add i64 %742, 6
  store i64 %743, i64* %PC.i919
  %744 = inttoptr i64 %741 to i32*
  %745 = load i32, i32* %744
  %746 = sub i32 %738, %745
  %747 = icmp ult i32 %738, %745
  %748 = zext i1 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %748, i8* %749, align 1
  %750 = and i32 %746, 255
  %751 = call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %754, i8* %755, align 1
  %756 = xor i32 %745, %738
  %757 = xor i32 %756, %746
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %760, i8* %761, align 1
  %762 = icmp eq i32 %746, 0
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %763, i8* %764, align 1
  %765 = lshr i32 %746, 31
  %766 = trunc i32 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %766, i8* %767, align 1
  %768 = lshr i32 %738, 31
  %769 = lshr i32 %745, 31
  %770 = xor i32 %769, %768
  %771 = xor i32 %765, %768
  %772 = add i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %774, i8* %775, align 1
  store %struct.Memory* %loadMem_453247, %struct.Memory** %MEMORY
  %loadMem_45324d = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %PC.i918
  %780 = add i64 %779, 11
  %781 = load i64, i64* %PC.i918
  %782 = add i64 %781, 6
  %783 = load i64, i64* %PC.i918
  %784 = add i64 %783, 6
  store i64 %784, i64* %PC.i918
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %786 = load i8, i8* %785, align 1
  %787 = icmp eq i8 %786, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %BRANCH_TAKEN, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %790 = select i1 %787, i64 %780, i64 %782
  store i64 %790, i64* %789, align 8
  store %struct.Memory* %loadMem_45324d, %struct.Memory** %MEMORY
  %loadBr_45324d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45324d = icmp eq i8 %loadBr_45324d, 1
  br i1 %cmpBr_45324d, label %block_.L_453258, label %block_453253

block_453253:                                     ; preds = %block_453241
  %loadMem_453253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %PC.i917
  %795 = add i64 %794, 89
  %796 = load i64, i64* %PC.i917
  %797 = add i64 %796, 5
  store i64 %797, i64* %PC.i917
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %795, i64* %798, align 8
  store %struct.Memory* %loadMem_453253, %struct.Memory** %MEMORY
  br label %block_.L_4532ac

block_.L_453258:                                  ; preds = %block_453241
  %loadMem_453258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 1
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RAX.i915 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 15
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %807 to i64*
  %808 = load i64, i64* %RBP.i916
  %809 = sub i64 %808, 32
  %810 = load i64, i64* %PC.i914
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC.i914
  %812 = inttoptr i64 %809 to i64*
  %813 = load i64, i64* %812
  store i64 %813, i64* %RAX.i915, align 8
  store %struct.Memory* %loadMem_453258, %struct.Memory** %MEMORY
  %loadMem_45325c = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 5
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RCX.i912 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 15
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %RBP.i913
  %824 = sub i64 %823, 192
  %825 = load i64, i64* %PC.i911
  %826 = add i64 %825, 7
  store i64 %826, i64* %PC.i911
  %827 = inttoptr i64 %824 to i32*
  %828 = load i32, i32* %827
  %829 = sext i32 %828 to i64
  store i64 %829, i64* %RCX.i912, align 8
  store %struct.Memory* %loadMem_45325c, %struct.Memory** %MEMORY
  %loadMem_453263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RAX.i909 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 5
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RCX.i910 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RAX.i909
  %840 = load i64, i64* %RCX.i910
  %841 = mul i64 %840, 8
  %842 = add i64 %841, %839
  %843 = load i64, i64* %PC.i908
  %844 = add i64 %843, 4
  store i64 %844, i64* %PC.i908
  %845 = inttoptr i64 %842 to i64*
  %846 = load i64, i64* %845
  store i64 %846, i64* %RAX.i909, align 8
  store %struct.Memory* %loadMem_453263, %struct.Memory** %MEMORY
  %loadMem_453267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 5
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RCX.i906 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 15
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RBP.i907 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %RBP.i907
  %857 = sub i64 %856, 200
  %858 = load i64, i64* %PC.i905
  %859 = add i64 %858, 7
  store i64 %859, i64* %PC.i905
  %860 = inttoptr i64 %857 to i32*
  %861 = load i32, i32* %860
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i906, align 8
  store %struct.Memory* %loadMem_453267, %struct.Memory** %MEMORY
  %loadMem_45326e = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 1
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RAX.i902 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 5
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RCX.i903 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %872, i64 0, i64 0
  %YMM0.i904 = bitcast %union.VectorReg* %873 to %"class.std::bitset"*
  %874 = bitcast %"class.std::bitset"* %YMM0.i904 to i8*
  %875 = load i64, i64* %RAX.i902
  %876 = load i64, i64* %RCX.i903
  %877 = mul i64 %876, 4
  %878 = add i64 %877, %875
  %879 = load i64, i64* %PC.i901
  %880 = add i64 %879, 5
  store i64 %880, i64* %PC.i901
  %881 = inttoptr i64 %878 to float*
  %882 = load float, float* %881
  %883 = bitcast i8* %874 to float*
  store float %882, float* %883, align 1
  %884 = getelementptr inbounds i8, i8* %874, i64 4
  %885 = bitcast i8* %884 to float*
  store float 0.000000e+00, float* %885, align 1
  %886 = getelementptr inbounds i8, i8* %874, i64 8
  %887 = bitcast i8* %886 to float*
  store float 0.000000e+00, float* %887, align 1
  %888 = getelementptr inbounds i8, i8* %874, i64 12
  %889 = bitcast i8* %888 to float*
  store float 0.000000e+00, float* %889, align 1
  store %struct.Memory* %loadMem_45326e, %struct.Memory** %MEMORY
  %loadMem_453273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 15
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %896, i64 0, i64 1
  %YMM1.i900 = bitcast %union.VectorReg* %897 to %"class.std::bitset"*
  %898 = bitcast %"class.std::bitset"* %YMM1.i900 to i8*
  %899 = load i64, i64* %RBP.i899
  %900 = sub i64 %899, 204
  %901 = load i64, i64* %PC.i898
  %902 = add i64 %901, 8
  store i64 %902, i64* %PC.i898
  %903 = inttoptr i64 %900 to float*
  %904 = load float, float* %903
  %905 = bitcast i8* %898 to float*
  store float %904, float* %905, align 1
  %906 = getelementptr inbounds i8, i8* %898, i64 4
  %907 = bitcast i8* %906 to float*
  store float 0.000000e+00, float* %907, align 1
  %908 = getelementptr inbounds i8, i8* %898, i64 8
  %909 = bitcast i8* %908 to float*
  store float 0.000000e+00, float* %909, align 1
  %910 = getelementptr inbounds i8, i8* %898, i64 12
  %911 = bitcast i8* %910 to float*
  store float 0.000000e+00, float* %911, align 1
  store %struct.Memory* %loadMem_453273, %struct.Memory** %MEMORY
  %loadMem_45327b = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %915, i64 0, i64 0
  %XMM0.i893 = bitcast %union.VectorReg* %916 to %union.vec128_t*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %917, i64 0, i64 1
  %XMM1.i894 = bitcast %union.VectorReg* %918 to %union.vec128_t*
  %919 = bitcast %union.vec128_t* %XMM1.i894 to i8*
  %920 = bitcast %union.vec128_t* %XMM0.i893 to i8*
  %921 = load i64, i64* %PC.i892
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC.i892
  %923 = bitcast i8* %919 to <2 x float>*
  %924 = load <2 x float>, <2 x float>* %923, align 1
  %925 = extractelement <2 x float> %924, i32 0
  %926 = bitcast i8* %920 to <2 x float>*
  %927 = load <2 x float>, <2 x float>* %926, align 1
  %928 = extractelement <2 x float> %927, i32 0
  %929 = fcmp uno float %925, %928
  br i1 %929, label %930, label %942

; <label>:930:                                    ; preds = %block_.L_453258
  %931 = fadd float %925, %928
  %932 = bitcast float %931 to i32
  %933 = and i32 %932, 2143289344
  %934 = icmp eq i32 %933, 2139095040
  %935 = and i32 %932, 4194303
  %936 = icmp ne i32 %935, 0
  %937 = and i1 %934, %936
  br i1 %937, label %938, label %948

; <label>:938:                                    ; preds = %930
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %940 = load i64, i64* %939, align 8
  %941 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %940, %struct.Memory* %loadMem_45327b)
  br label %routine_ucomiss__xmm0___xmm1.exit895

; <label>:942:                                    ; preds = %block_.L_453258
  %943 = fcmp ogt float %925, %928
  br i1 %943, label %948, label %944

; <label>:944:                                    ; preds = %942
  %945 = fcmp olt float %925, %928
  br i1 %945, label %948, label %946

; <label>:946:                                    ; preds = %944
  %947 = fcmp oeq float %925, %928
  br i1 %947, label %948, label %955

; <label>:948:                                    ; preds = %946, %944, %942, %930
  %949 = phi i8 [ 0, %942 ], [ 0, %944 ], [ 1, %946 ], [ 1, %930 ]
  %950 = phi i8 [ 0, %942 ], [ 0, %944 ], [ 0, %946 ], [ 1, %930 ]
  %951 = phi i8 [ 0, %942 ], [ 1, %944 ], [ 0, %946 ], [ 1, %930 ]
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %949, i8* %952, align 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %950, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %951, i8* %954, align 1
  br label %955

; <label>:955:                                    ; preds = %948, %946
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %956, align 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %957, align 1
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %958, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit895

routine_ucomiss__xmm0___xmm1.exit895:             ; preds = %938, %955
  %959 = phi %struct.Memory* [ %941, %938 ], [ %loadMem_45327b, %955 ]
  store %struct.Memory* %959, %struct.Memory** %MEMORY
  %loadMem_45327e = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %PC.i891
  %964 = add i64 %963, 41
  %965 = load i64, i64* %PC.i891
  %966 = add i64 %965, 6
  %967 = load i64, i64* %PC.i891
  %968 = add i64 %967, 6
  store i64 %968, i64* %PC.i891
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %970 = load i8, i8* %969, align 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %972 = load i8, i8* %971, align 1
  %973 = or i8 %972, %970
  %974 = icmp ne i8 %973, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %BRANCH_TAKEN, align 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %977 = select i1 %974, i64 %964, i64 %966
  store i64 %977, i64* %976, align 8
  store %struct.Memory* %loadMem_45327e, %struct.Memory** %MEMORY
  %loadBr_45327e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45327e = icmp eq i8 %loadBr_45327e, 1
  br i1 %cmpBr_45327e, label %block_.L_4532a7, label %block_453284

block_453284:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit895
  %loadMem_453284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 1
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 15
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RBP.i890 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RBP.i890
  %988 = sub i64 %987, 32
  %989 = load i64, i64* %PC.i888
  %990 = add i64 %989, 4
  store i64 %990, i64* %PC.i888
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991
  store i64 %992, i64* %RAX.i889, align 8
  store %struct.Memory* %loadMem_453284, %struct.Memory** %MEMORY
  %loadMem_453288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RCX.i886 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i887
  %1003 = sub i64 %1002, 192
  %1004 = load i64, i64* %PC.i885
  %1005 = add i64 %1004, 7
  store i64 %1005, i64* %PC.i885
  %1006 = inttoptr i64 %1003 to i32*
  %1007 = load i32, i32* %1006
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RCX.i886, align 8
  store %struct.Memory* %loadMem_453288, %struct.Memory** %MEMORY
  %loadMem_45328f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 5
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RCX.i884 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RAX.i883
  %1019 = load i64, i64* %RCX.i884
  %1020 = mul i64 %1019, 8
  %1021 = add i64 %1020, %1018
  %1022 = load i64, i64* %PC.i882
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %PC.i882
  %1024 = inttoptr i64 %1021 to i64*
  %1025 = load i64, i64* %1024
  store i64 %1025, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_45328f, %struct.Memory** %MEMORY
  %loadMem_453293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 5
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RCX.i880 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 15
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %RBP.i881
  %1036 = sub i64 %1035, 200
  %1037 = load i64, i64* %PC.i879
  %1038 = add i64 %1037, 7
  store i64 %1038, i64* %PC.i879
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039
  %1041 = sext i32 %1040 to i64
  store i64 %1041, i64* %RCX.i880, align 8
  store %struct.Memory* %loadMem_453293, %struct.Memory** %MEMORY
  %loadMem_45329a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RAX.i876 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RCX.i877 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1051, i64 0, i64 0
  %YMM0.i878 = bitcast %union.VectorReg* %1052 to %"class.std::bitset"*
  %1053 = bitcast %"class.std::bitset"* %YMM0.i878 to i8*
  %1054 = load i64, i64* %RAX.i876
  %1055 = load i64, i64* %RCX.i877
  %1056 = mul i64 %1055, 4
  %1057 = add i64 %1056, %1054
  %1058 = load i64, i64* %PC.i875
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %PC.i875
  %1060 = inttoptr i64 %1057 to float*
  %1061 = load float, float* %1060
  %1062 = bitcast i8* %1053 to float*
  store float %1061, float* %1062, align 1
  %1063 = getelementptr inbounds i8, i8* %1053, i64 4
  %1064 = bitcast i8* %1063 to float*
  store float 0.000000e+00, float* %1064, align 1
  %1065 = getelementptr inbounds i8, i8* %1053, i64 8
  %1066 = bitcast i8* %1065 to float*
  store float 0.000000e+00, float* %1066, align 1
  %1067 = getelementptr inbounds i8, i8* %1053, i64 12
  %1068 = bitcast i8* %1067 to float*
  store float 0.000000e+00, float* %1068, align 1
  store %struct.Memory* %loadMem_45329a, %struct.Memory** %MEMORY
  %loadMem_45329f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 15
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1075, i64 0, i64 0
  %XMM0.i874 = bitcast %union.VectorReg* %1076 to %union.vec128_t*
  %1077 = load i64, i64* %RBP.i873
  %1078 = sub i64 %1077, 204
  %1079 = bitcast %union.vec128_t* %XMM0.i874 to i8*
  %1080 = load i64, i64* %PC.i872
  %1081 = add i64 %1080, 8
  store i64 %1081, i64* %PC.i872
  %1082 = bitcast i8* %1079 to <2 x float>*
  %1083 = load <2 x float>, <2 x float>* %1082, align 1
  %1084 = extractelement <2 x float> %1083, i32 0
  %1085 = inttoptr i64 %1078 to float*
  store float %1084, float* %1085
  store %struct.Memory* %loadMem_45329f, %struct.Memory** %MEMORY
  br label %block_.L_4532a7

block_.L_4532a7:                                  ; preds = %block_453284, %routine_ucomiss__xmm0___xmm1.exit895
  %loadMem_4532a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %PC.i871
  %1090 = add i64 %1089, 5
  %1091 = load i64, i64* %PC.i871
  %1092 = add i64 %1091, 5
  store i64 %1092, i64* %PC.i871
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1090, i64* %1093, align 8
  store %struct.Memory* %loadMem_4532a7, %struct.Memory** %MEMORY
  br label %block_.L_4532ac

block_.L_4532ac:                                  ; preds = %block_.L_4532a7, %block_453253
  %loadMem_4532ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 1
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 15
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %RBP.i870
  %1104 = sub i64 %1103, 200
  %1105 = load i64, i64* %PC.i868
  %1106 = add i64 %1105, 6
  store i64 %1106, i64* %PC.i868
  %1107 = inttoptr i64 %1104 to i32*
  %1108 = load i32, i32* %1107
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_4532ac, %struct.Memory** %MEMORY
  %loadMem_4532b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RAX.i867
  %1117 = load i64, i64* %PC.i866
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC.i866
  %1119 = trunc i64 %1116 to i32
  %1120 = add i32 1, %1119
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RAX.i867, align 8
  %1122 = icmp ult i32 %1120, %1119
  %1123 = icmp ult i32 %1120, 1
  %1124 = or i1 %1122, %1123
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1125, i8* %1126, align 1
  %1127 = and i32 %1120, 255
  %1128 = call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1131, i8* %1132, align 1
  %1133 = xor i64 1, %1116
  %1134 = trunc i64 %1133 to i32
  %1135 = xor i32 %1134, %1120
  %1136 = lshr i32 %1135, 4
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1138, i8* %1139, align 1
  %1140 = icmp eq i32 %1120, 0
  %1141 = zext i1 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1141, i8* %1142, align 1
  %1143 = lshr i32 %1120, 31
  %1144 = trunc i32 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1144, i8* %1145, align 1
  %1146 = lshr i32 %1119, 31
  %1147 = xor i32 %1143, %1146
  %1148 = add i32 %1147, %1143
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1150, i8* %1151, align 1
  store %struct.Memory* %loadMem_4532b2, %struct.Memory** %MEMORY
  %loadMem_4532b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 1
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %EAX.i864 = bitcast %union.anon* %1157 to i32*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i865
  %1162 = sub i64 %1161, 200
  %1163 = load i32, i32* %EAX.i864
  %1164 = zext i32 %1163 to i64
  %1165 = load i64, i64* %PC.i863
  %1166 = add i64 %1165, 6
  store i64 %1166, i64* %PC.i863
  %1167 = inttoptr i64 %1162 to i32*
  store i32 %1163, i32* %1167
  store %struct.Memory* %loadMem_4532b5, %struct.Memory** %MEMORY
  %loadMem_4532bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1170 to i64*
  %1171 = load i64, i64* %PC.i862
  %1172 = add i64 %1171, -137
  %1173 = load i64, i64* %PC.i862
  %1174 = add i64 %1173, 5
  store i64 %1174, i64* %PC.i862
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1172, i64* %1175, align 8
  store %struct.Memory* %loadMem_4532bb, %struct.Memory** %MEMORY
  br label %block_.L_453232

block_.L_4532c0:                                  ; preds = %block_.L_453232
  %loadMem_4532c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1179, i64 0, i64 0
  %YMM0.i861 = bitcast %union.VectorReg* %1180 to %"class.std::bitset"*
  %1181 = bitcast %"class.std::bitset"* %YMM0.i861 to i8*
  %1182 = load i64, i64* %PC.i860
  %1183 = add i64 %1182, ptrtoint (%G_0x1520__rip__type* @G_0x1520__rip_ to i64)
  %1184 = load i64, i64* %PC.i860
  %1185 = add i64 %1184, 8
  store i64 %1185, i64* %PC.i860
  %1186 = inttoptr i64 %1183 to double*
  %1187 = load double, double* %1186
  %1188 = bitcast i8* %1181 to double*
  store double %1187, double* %1188, align 1
  %1189 = getelementptr inbounds i8, i8* %1181, i64 8
  %1190 = bitcast i8* %1189 to double*
  store double 0.000000e+00, double* %1190, align 1
  store %struct.Memory* %loadMem_4532c0, %struct.Memory** %MEMORY
  %loadMem_4532c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 15
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1197, i64 0, i64 1
  %YMM1.i859 = bitcast %union.VectorReg* %1198 to %"class.std::bitset"*
  %1199 = bitcast %"class.std::bitset"* %YMM1.i859 to i8*
  %1200 = load i64, i64* %RBP.i858
  %1201 = sub i64 %1200, 204
  %1202 = load i64, i64* %PC.i857
  %1203 = add i64 %1202, 8
  store i64 %1203, i64* %PC.i857
  %1204 = inttoptr i64 %1201 to float*
  %1205 = load float, float* %1204
  %1206 = fpext float %1205 to double
  %1207 = bitcast i8* %1199 to double*
  store double %1206, double* %1207, align 1
  store %struct.Memory* %loadMem_4532c8, %struct.Memory** %MEMORY
  %loadMem_4532d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1211, i64 0, i64 1
  %YMM1.i855 = bitcast %union.VectorReg* %1212 to %"class.std::bitset"*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1213, i64 0, i64 0
  %XMM0.i856 = bitcast %union.VectorReg* %1214 to %union.vec128_t*
  %1215 = bitcast %"class.std::bitset"* %YMM1.i855 to i8*
  %1216 = bitcast %"class.std::bitset"* %YMM1.i855 to i8*
  %1217 = bitcast %union.vec128_t* %XMM0.i856 to i8*
  %1218 = load i64, i64* %PC.i854
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %PC.i854
  %1220 = bitcast i8* %1216 to double*
  %1221 = load double, double* %1220, align 1
  %1222 = getelementptr inbounds i8, i8* %1216, i64 8
  %1223 = bitcast i8* %1222 to i64*
  %1224 = load i64, i64* %1223, align 1
  %1225 = bitcast i8* %1217 to double*
  %1226 = load double, double* %1225, align 1
  %1227 = fdiv double %1221, %1226
  %1228 = bitcast i8* %1215 to double*
  store double %1227, double* %1228, align 1
  %1229 = getelementptr inbounds i8, i8* %1215, i64 8
  %1230 = bitcast i8* %1229 to i64*
  store i64 %1224, i64* %1230, align 1
  store %struct.Memory* %loadMem_4532d0, %struct.Memory** %MEMORY
  %loadMem_4532d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1234, i64 0, i64 0
  %YMM0.i852 = bitcast %union.VectorReg* %1235 to %"class.std::bitset"*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1236, i64 0, i64 1
  %XMM1.i853 = bitcast %union.VectorReg* %1237 to %union.vec128_t*
  %1238 = bitcast %"class.std::bitset"* %YMM0.i852 to i8*
  %1239 = bitcast %union.vec128_t* %XMM1.i853 to i8*
  %1240 = load i64, i64* %PC.i851
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %PC.i851
  %1242 = bitcast i8* %1238 to <2 x i32>*
  %1243 = load <2 x i32>, <2 x i32>* %1242, align 1
  %1244 = getelementptr inbounds i8, i8* %1238, i64 8
  %1245 = bitcast i8* %1244 to <2 x i32>*
  %1246 = load <2 x i32>, <2 x i32>* %1245, align 1
  %1247 = bitcast i8* %1239 to double*
  %1248 = load double, double* %1247, align 1
  %1249 = fptrunc double %1248 to float
  %1250 = bitcast i8* %1238 to float*
  store float %1249, float* %1250, align 1
  %1251 = extractelement <2 x i32> %1243, i32 1
  %1252 = getelementptr inbounds i8, i8* %1238, i64 4
  %1253 = bitcast i8* %1252 to i32*
  store i32 %1251, i32* %1253, align 1
  %1254 = extractelement <2 x i32> %1246, i32 0
  %1255 = bitcast i8* %1244 to i32*
  store i32 %1254, i32* %1255, align 1
  %1256 = extractelement <2 x i32> %1246, i32 1
  %1257 = getelementptr inbounds i8, i8* %1238, i64 12
  %1258 = bitcast i8* %1257 to i32*
  store i32 %1256, i32* %1258, align 1
  store %struct.Memory* %loadMem_4532d4, %struct.Memory** %MEMORY
  %loadMem_4532d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 15
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %RBP.i850
  %1269 = sub i64 %1268, 40
  %1270 = load i64, i64* %PC.i848
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %PC.i848
  %1272 = inttoptr i64 %1269 to i64*
  %1273 = load i64, i64* %1272
  store i64 %1273, i64* %RAX.i849, align 8
  store %struct.Memory* %loadMem_4532d8, %struct.Memory** %MEMORY
  %loadMem_4532dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 5
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RCX.i846 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %1282 to i64*
  %1283 = load i64, i64* %RBP.i847
  %1284 = sub i64 %1283, 192
  %1285 = load i64, i64* %PC.i845
  %1286 = add i64 %1285, 7
  store i64 %1286, i64* %PC.i845
  %1287 = inttoptr i64 %1284 to i32*
  %1288 = load i32, i32* %1287
  %1289 = sext i32 %1288 to i64
  store i64 %1289, i64* %RCX.i846, align 8
  store %struct.Memory* %loadMem_4532dc, %struct.Memory** %MEMORY
  %loadMem_4532e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 1
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 5
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1299, i64 0, i64 0
  %XMM0.i844 = bitcast %union.VectorReg* %1300 to %union.vec128_t*
  %1301 = load i64, i64* %RAX.i842
  %1302 = load i64, i64* %RCX.i843
  %1303 = mul i64 %1302, 4
  %1304 = add i64 %1303, %1301
  %1305 = bitcast %union.vec128_t* %XMM0.i844 to i8*
  %1306 = load i64, i64* %PC.i841
  %1307 = add i64 %1306, 5
  store i64 %1307, i64* %PC.i841
  %1308 = bitcast i8* %1305 to <2 x float>*
  %1309 = load <2 x float>, <2 x float>* %1308, align 1
  %1310 = extractelement <2 x float> %1309, i32 0
  %1311 = inttoptr i64 %1304 to float*
  store float %1310, float* %1311
  store %struct.Memory* %loadMem_4532e3, %struct.Memory** %MEMORY
  %loadMem_4532e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 1
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 15
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %RBP.i840
  %1322 = sub i64 %1321, 192
  %1323 = load i64, i64* %PC.i838
  %1324 = add i64 %1323, 6
  store i64 %1324, i64* %PC.i838
  %1325 = inttoptr i64 %1322 to i32*
  %1326 = load i32, i32* %1325
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX.i839, align 8
  store %struct.Memory* %loadMem_4532e8, %struct.Memory** %MEMORY
  %loadMem_4532ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 1
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RAX.i837 = bitcast %union.anon* %1333 to i64*
  %1334 = load i64, i64* %RAX.i837
  %1335 = load i64, i64* %PC.i836
  %1336 = add i64 %1335, 3
  store i64 %1336, i64* %PC.i836
  %1337 = trunc i64 %1334 to i32
  %1338 = add i32 1, %1337
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RAX.i837, align 8
  %1340 = icmp ult i32 %1338, %1337
  %1341 = icmp ult i32 %1338, 1
  %1342 = or i1 %1340, %1341
  %1343 = zext i1 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1343, i8* %1344, align 1
  %1345 = and i32 %1338, 255
  %1346 = call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1349, i8* %1350, align 1
  %1351 = xor i64 1, %1334
  %1352 = trunc i64 %1351 to i32
  %1353 = xor i32 %1352, %1338
  %1354 = lshr i32 %1353, 4
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1356, i8* %1357, align 1
  %1358 = icmp eq i32 %1338, 0
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1359, i8* %1360, align 1
  %1361 = lshr i32 %1338, 31
  %1362 = trunc i32 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1362, i8* %1363, align 1
  %1364 = lshr i32 %1337, 31
  %1365 = xor i32 %1361, %1364
  %1366 = add i32 %1365, %1361
  %1367 = icmp eq i32 %1366, 2
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1368, i8* %1369, align 1
  store %struct.Memory* %loadMem_4532ee, %struct.Memory** %MEMORY
  %loadMem_4532f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %EAX.i834 = bitcast %union.anon* %1375 to i32*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 15
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RBP.i835
  %1380 = sub i64 %1379, 192
  %1381 = load i32, i32* %EAX.i834
  %1382 = zext i32 %1381 to i64
  %1383 = load i64, i64* %PC.i833
  %1384 = add i64 %1383, 6
  store i64 %1384, i64* %PC.i833
  %1385 = inttoptr i64 %1380 to i32*
  store i32 %1381, i32* %1385
  store %struct.Memory* %loadMem_4532f1, %struct.Memory** %MEMORY
  %loadMem_4532f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1388 to i64*
  %1389 = load i64, i64* %PC.i832
  %1390 = add i64 %1389, -238
  %1391 = load i64, i64* %PC.i832
  %1392 = add i64 %1391, 5
  store i64 %1392, i64* %PC.i832
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1390, i64* %1393, align 8
  store %struct.Memory* %loadMem_4532f7, %struct.Memory** %MEMORY
  br label %block_.L_453209

block_.L_4532fc:                                  ; preds = %block_.L_453209
  %loadMem_4532fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i831
  %1404 = sub i64 %1403, 32
  %1405 = load i64, i64* %PC.i829
  %1406 = add i64 %1405, 4
  store i64 %1406, i64* %PC.i829
  %1407 = inttoptr i64 %1404 to i64*
  %1408 = load i64, i64* %1407
  store i64 %1408, i64* %RAX.i830, align 8
  store %struct.Memory* %loadMem_4532fc, %struct.Memory** %MEMORY
  %loadMem_453300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 9
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RSI.i827 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 15
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RBP.i828
  %1419 = sub i64 %1418, 12
  %1420 = load i64, i64* %PC.i826
  %1421 = add i64 %1420, 3
  store i64 %1421, i64* %PC.i826
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RSI.i827, align 8
  store %struct.Memory* %loadMem_453300, %struct.Memory** %MEMORY
  %loadMem_453303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 1
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 11
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RDI.i825 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %RAX.i824
  %1435 = load i64, i64* %PC.i823
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %PC.i823
  store i64 %1434, i64* %RDI.i825, align 8
  store %struct.Memory* %loadMem_453303, %struct.Memory** %MEMORY
  %loadMem1_453306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %PC.i822
  %1441 = add i64 %1440, -53750
  %1442 = load i64, i64* %PC.i822
  %1443 = add i64 %1442, 5
  %1444 = load i64, i64* %PC.i822
  %1445 = add i64 %1444, 5
  store i64 %1445, i64* %PC.i822
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1447 = load i64, i64* %1446, align 8
  %1448 = add i64 %1447, -8
  %1449 = inttoptr i64 %1448 to i64*
  store i64 %1443, i64* %1449
  store i64 %1448, i64* %1446, align 8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1441, i64* %1450, align 8
  store %struct.Memory* %loadMem1_453306, %struct.Memory** %MEMORY
  %loadMem2_453306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453306 = load i64, i64* %3
  %call2_453306 = call %struct.Memory* @sub_446110.Free2DArray(%struct.State* %0, i64 %loadPC_453306, %struct.Memory* %loadMem2_453306)
  store %struct.Memory* %call2_453306, %struct.Memory** %MEMORY
  %loadMem_45330b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 11
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RDI.i821 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %PC.i820
  %1458 = add i64 %1457, 10
  store i64 %1458, i64* %PC.i820
  store i64 ptrtoint (%G__0x45b4d2_type* @G__0x45b4d2 to i64), i64* %RDI.i821, align 8
  store %struct.Memory* %loadMem_45330b, %struct.Memory** %MEMORY
  %loadMem_453315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 9
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RSI.i819 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %PC.i818
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %PC.i818
  store i64 198, i64* %RSI.i819, align 8
  store %struct.Memory* %loadMem_453315, %struct.Memory** %MEMORY
  %loadMem_45331a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 15
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %RBP.i817
  %1477 = sub i64 %1476, 16
  %1478 = load i64, i64* %PC.i815
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %PC.i815
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RAX.i816, align 8
  store %struct.Memory* %loadMem_45331a, %struct.Memory** %MEMORY
  %loadMem_45331e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %RAX.i814
  %1490 = load i64, i64* %PC.i813
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC.i813
  %1492 = shl i64 %1489, 2
  %1493 = icmp slt i64 %1492, 0
  %1494 = shl i64 %1492, 1
  store i64 %1494, i64* %RAX.i814, align 8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1496 = zext i1 %1493 to i8
  store i8 %1496, i8* %1495, align 1
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1498 = trunc i64 %1494 to i32
  %1499 = and i32 %1498, 254
  %1500 = call i32 @llvm.ctpop.i32(i32 %1499)
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  store i8 %1503, i8* %1497, align 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1504, align 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1506 = icmp eq i64 %1494, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %1505, align 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1509 = lshr i64 %1494, 63
  %1510 = trunc i64 %1509 to i8
  store i8 %1510, i8* %1508, align 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1511, align 1
  store %struct.Memory* %loadMem_45331e, %struct.Memory** %MEMORY
  %loadMem_453322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 33
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 1
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 7
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RDX.i812 = bitcast %union.anon* %1520 to i64*
  %1521 = load i64, i64* %RAX.i811
  %1522 = load i64, i64* %PC.i810
  %1523 = add i64 %1522, 3
  store i64 %1523, i64* %PC.i810
  store i64 %1521, i64* %RDX.i812, align 8
  store %struct.Memory* %loadMem_453322, %struct.Memory** %MEMORY
  %loadMem1_453325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1526 to i64*
  %1527 = load i64, i64* %PC.i809
  %1528 = add i64 %1527, -53957
  %1529 = load i64, i64* %PC.i809
  %1530 = add i64 %1529, 5
  %1531 = load i64, i64* %PC.i809
  %1532 = add i64 %1531, 5
  store i64 %1532, i64* %PC.i809
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1534 = load i64, i64* %1533, align 8
  %1535 = add i64 %1534, -8
  %1536 = inttoptr i64 %1535 to i64*
  store i64 %1530, i64* %1536
  store i64 %1535, i64* %1533, align 8
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1528, i64* %1537, align 8
  store %struct.Memory* %loadMem1_453325, %struct.Memory** %MEMORY
  %loadMem2_453325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453325 = load i64, i64* %3
  %call2_453325 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_453325, %struct.Memory* %loadMem2_453325)
  store %struct.Memory* %call2_453325, %struct.Memory** %MEMORY
  %loadMem_45332a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 11
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RDI.i808 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %PC.i807
  %1545 = add i64 %1544, 10
  store i64 %1545, i64* %PC.i807
  store i64 ptrtoint (%G__0x45b4d2_type* @G__0x45b4d2 to i64), i64* %RDI.i808, align 8
  store %struct.Memory* %loadMem_45332a, %struct.Memory** %MEMORY
  %loadMem_453334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 9
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RSI.i806 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %PC.i805
  %1553 = add i64 %1552, 5
  store i64 %1553, i64* %PC.i805
  store i64 199, i64* %RSI.i806, align 8
  store %struct.Memory* %loadMem_453334, %struct.Memory** %MEMORY
  %loadMem_453339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 1
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 15
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %RBP.i804
  %1564 = sub i64 %1563, 48
  %1565 = load i64, i64* %RAX.i803
  %1566 = load i64, i64* %PC.i802
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %PC.i802
  %1568 = inttoptr i64 %1564 to i64*
  store i64 %1565, i64* %1568
  store %struct.Memory* %loadMem_453339, %struct.Memory** %MEMORY
  %loadMem_45333d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 1
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 15
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RBP.i801
  %1579 = sub i64 %1578, 16
  %1580 = load i64, i64* %PC.i799
  %1581 = add i64 %1580, 4
  store i64 %1581, i64* %PC.i799
  %1582 = inttoptr i64 %1579 to i32*
  %1583 = load i32, i32* %1582
  %1584 = sext i32 %1583 to i64
  store i64 %1584, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_45333d, %struct.Memory** %MEMORY
  %loadMem_453341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 1
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RAX.i798
  %1592 = load i64, i64* %PC.i797
  %1593 = add i64 %1592, 4
  store i64 %1593, i64* %PC.i797
  %1594 = shl i64 %1591, 1
  %1595 = icmp slt i64 %1594, 0
  %1596 = shl i64 %1594, 1
  store i64 %1596, i64* %RAX.i798, align 8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1598 = zext i1 %1595 to i8
  store i8 %1598, i8* %1597, align 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1600 = trunc i64 %1596 to i32
  %1601 = and i32 %1600, 254
  %1602 = call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %1599, align 1
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1606, align 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1608 = icmp eq i64 %1596, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %1607, align 1
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1611 = lshr i64 %1596, 63
  %1612 = trunc i64 %1611 to i8
  store i8 %1612, i8* %1610, align 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1613, align 1
  store %struct.Memory* %loadMem_453341, %struct.Memory** %MEMORY
  %loadMem_453345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 1
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 7
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RDX.i796 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %RAX.i795
  %1624 = load i64, i64* %PC.i794
  %1625 = add i64 %1624, 3
  store i64 %1625, i64* %PC.i794
  store i64 %1623, i64* %RDX.i796, align 8
  store %struct.Memory* %loadMem_453345, %struct.Memory** %MEMORY
  %loadMem1_453348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %PC.i793
  %1630 = add i64 %1629, -53992
  %1631 = load i64, i64* %PC.i793
  %1632 = add i64 %1631, 5
  %1633 = load i64, i64* %PC.i793
  %1634 = add i64 %1633, 5
  store i64 %1634, i64* %PC.i793
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1636 = load i64, i64* %1635, align 8
  %1637 = add i64 %1636, -8
  %1638 = inttoptr i64 %1637 to i64*
  store i64 %1632, i64* %1638
  store i64 %1637, i64* %1635, align 8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1630, i64* %1639, align 8
  store %struct.Memory* %loadMem1_453348, %struct.Memory** %MEMORY
  %loadMem2_453348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453348 = load i64, i64* %3
  %call2_453348 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_453348, %struct.Memory* %loadMem2_453348)
  store %struct.Memory* %call2_453348, %struct.Memory** %MEMORY
  %loadMem_45334d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 1
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 15
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %RBP.i792
  %1650 = sub i64 %1649, 56
  %1651 = load i64, i64* %RAX.i791
  %1652 = load i64, i64* %PC.i790
  %1653 = add i64 %1652, 4
  store i64 %1653, i64* %PC.i790
  %1654 = inttoptr i64 %1650 to i64*
  store i64 %1651, i64* %1654
  store %struct.Memory* %loadMem_45334d, %struct.Memory** %MEMORY
  %loadMem_453351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 15
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RBP.i789
  %1662 = sub i64 %1661, 188
  %1663 = load i64, i64* %PC.i788
  %1664 = add i64 %1663, 10
  store i64 %1664, i64* %PC.i788
  %1665 = inttoptr i64 %1662 to i32*
  store i32 0, i32* %1665
  store %struct.Memory* %loadMem_453351, %struct.Memory** %MEMORY
  br label %block_.L_45335b

block_.L_45335b:                                  ; preds = %block_45336a, %block_.L_4532fc
  %loadMem_45335b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RAX.i786 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 15
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RBP.i787
  %1676 = sub i64 %1675, 188
  %1677 = load i64, i64* %PC.i785
  %1678 = add i64 %1677, 6
  store i64 %1678, i64* %PC.i785
  %1679 = inttoptr i64 %1676 to i32*
  %1680 = load i32, i32* %1679
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RAX.i786, align 8
  store %struct.Memory* %loadMem_45335b, %struct.Memory** %MEMORY
  %loadMem_453361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 1
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %EAX.i783 = bitcast %union.anon* %1687 to i32*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 15
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %1690 to i64*
  %1691 = load i32, i32* %EAX.i783
  %1692 = zext i32 %1691 to i64
  %1693 = load i64, i64* %RBP.i784
  %1694 = sub i64 %1693, 16
  %1695 = load i64, i64* %PC.i782
  %1696 = add i64 %1695, 3
  store i64 %1696, i64* %PC.i782
  %1697 = inttoptr i64 %1694 to i32*
  %1698 = load i32, i32* %1697
  %1699 = sub i32 %1691, %1698
  %1700 = icmp ult i32 %1691, %1698
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1701, i8* %1702, align 1
  %1703 = and i32 %1699, 255
  %1704 = call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1707, i8* %1708, align 1
  %1709 = xor i32 %1698, %1691
  %1710 = xor i32 %1709, %1699
  %1711 = lshr i32 %1710, 4
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1713, i8* %1714, align 1
  %1715 = icmp eq i32 %1699, 0
  %1716 = zext i1 %1715 to i8
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1716, i8* %1717, align 1
  %1718 = lshr i32 %1699, 31
  %1719 = trunc i32 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1719, i8* %1720, align 1
  %1721 = lshr i32 %1691, 31
  %1722 = lshr i32 %1698, 31
  %1723 = xor i32 %1722, %1721
  %1724 = xor i32 %1718, %1721
  %1725 = add i32 %1724, %1723
  %1726 = icmp eq i32 %1725, 2
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1727, i8* %1728, align 1
  store %struct.Memory* %loadMem_453361, %struct.Memory** %MEMORY
  %loadMem_453364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1731 to i64*
  %1732 = load i64, i64* %PC.i781
  %1733 = add i64 %1732, 68
  %1734 = load i64, i64* %PC.i781
  %1735 = add i64 %1734, 6
  %1736 = load i64, i64* %PC.i781
  %1737 = add i64 %1736, 6
  store i64 %1737, i64* %PC.i781
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1739 = load i8, i8* %1738, align 1
  %1740 = icmp ne i8 %1739, 0
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1742 = load i8, i8* %1741, align 1
  %1743 = icmp ne i8 %1742, 0
  %1744 = xor i1 %1740, %1743
  %1745 = xor i1 %1744, true
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %BRANCH_TAKEN, align 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1748 = select i1 %1744, i64 %1735, i64 %1733
  store i64 %1748, i64* %1747, align 8
  store %struct.Memory* %loadMem_453364, %struct.Memory** %MEMORY
  %loadBr_453364 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453364 = icmp eq i8 %loadBr_453364, 1
  br i1 %cmpBr_453364, label %block_.L_4533a8, label %block_45336a

block_45336a:                                     ; preds = %block_.L_45335b
  %loadMem_45336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 11
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RDI.i780 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %PC.i779
  %1756 = add i64 %1755, 10
  store i64 %1756, i64* %PC.i779
  store i64 ptrtoint (%G__0x45b4d2_type* @G__0x45b4d2 to i64), i64* %RDI.i780, align 8
  store %struct.Memory* %loadMem_45336a, %struct.Memory** %MEMORY
  %loadMem_453374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 9
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RSI.i778 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %PC.i777
  %1764 = add i64 %1763, 5
  store i64 %1764, i64* %PC.i777
  store i64 201, i64* %RSI.i778, align 8
  store %struct.Memory* %loadMem_453374, %struct.Memory** %MEMORY
  %loadMem_453379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 1
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %PC.i775
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %PC.i775
  store i64 27, i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_453379, %struct.Memory** %MEMORY
  %loadMem_45337e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 1
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %EAX.i773 = bitcast %union.anon* %1778 to i32*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 7
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RDX.i774 = bitcast %union.anon* %1781 to i64*
  %1782 = load i32, i32* %EAX.i773
  %1783 = zext i32 %1782 to i64
  %1784 = load i64, i64* %PC.i772
  %1785 = add i64 %1784, 2
  store i64 %1785, i64* %PC.i772
  %1786 = and i64 %1783, 4294967295
  store i64 %1786, i64* %RDX.i774, align 8
  store %struct.Memory* %loadMem_45337e, %struct.Memory** %MEMORY
  %loadMem1_453380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %PC.i771
  %1791 = add i64 %1790, -54048
  %1792 = load i64, i64* %PC.i771
  %1793 = add i64 %1792, 5
  %1794 = load i64, i64* %PC.i771
  %1795 = add i64 %1794, 5
  store i64 %1795, i64* %PC.i771
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1797 = load i64, i64* %1796, align 8
  %1798 = add i64 %1797, -8
  %1799 = inttoptr i64 %1798 to i64*
  store i64 %1793, i64* %1799
  store i64 %1798, i64* %1796, align 8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1791, i64* %1800, align 8
  store %struct.Memory* %loadMem1_453380, %struct.Memory** %MEMORY
  %loadMem2_453380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453380 = load i64, i64* %3
  %call2_453380 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_453380, %struct.Memory* %loadMem2_453380)
  store %struct.Memory* %call2_453380, %struct.Memory** %MEMORY
  %loadMem_453385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 33
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 7
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RDX.i769 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 15
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %1809 to i64*
  %1810 = load i64, i64* %RBP.i770
  %1811 = sub i64 %1810, 48
  %1812 = load i64, i64* %PC.i768
  %1813 = add i64 %1812, 4
  store i64 %1813, i64* %PC.i768
  %1814 = inttoptr i64 %1811 to i64*
  %1815 = load i64, i64* %1814
  store i64 %1815, i64* %RDX.i769, align 8
  store %struct.Memory* %loadMem_453385, %struct.Memory** %MEMORY
  %loadMem_453389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 11
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RDI.i766 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 15
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %1824 to i64*
  %1825 = load i64, i64* %RBP.i767
  %1826 = sub i64 %1825, 188
  %1827 = load i64, i64* %PC.i765
  %1828 = add i64 %1827, 7
  store i64 %1828, i64* %PC.i765
  %1829 = inttoptr i64 %1826 to i32*
  %1830 = load i32, i32* %1829
  %1831 = sext i32 %1830 to i64
  store i64 %1831, i64* %RDI.i766, align 8
  store %struct.Memory* %loadMem_453389, %struct.Memory** %MEMORY
  %loadMem_453390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 1
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 7
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RDX.i763 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 11
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RDI.i764 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RDX.i763
  %1845 = load i64, i64* %RDI.i764
  %1846 = mul i64 %1845, 8
  %1847 = add i64 %1846, %1844
  %1848 = load i64, i64* %RAX.i762
  %1849 = load i64, i64* %PC.i761
  %1850 = add i64 %1849, 4
  store i64 %1850, i64* %PC.i761
  %1851 = inttoptr i64 %1847 to i64*
  store i64 %1848, i64* %1851
  store %struct.Memory* %loadMem_453390, %struct.Memory** %MEMORY
  %loadMem_453394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i760
  %1862 = sub i64 %1861, 188
  %1863 = load i64, i64* %PC.i758
  %1864 = add i64 %1863, 6
  store i64 %1864, i64* %PC.i758
  %1865 = inttoptr i64 %1862 to i32*
  %1866 = load i32, i32* %1865
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RAX.i759, align 8
  store %struct.Memory* %loadMem_453394, %struct.Memory** %MEMORY
  %loadMem_45339a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 1
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RAX.i757
  %1875 = load i64, i64* %PC.i756
  %1876 = add i64 %1875, 3
  store i64 %1876, i64* %PC.i756
  %1877 = trunc i64 %1874 to i32
  %1878 = add i32 1, %1877
  %1879 = zext i32 %1878 to i64
  store i64 %1879, i64* %RAX.i757, align 8
  %1880 = icmp ult i32 %1878, %1877
  %1881 = icmp ult i32 %1878, 1
  %1882 = or i1 %1880, %1881
  %1883 = zext i1 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1883, i8* %1884, align 1
  %1885 = and i32 %1878, 255
  %1886 = call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1889, i8* %1890, align 1
  %1891 = xor i64 1, %1874
  %1892 = trunc i64 %1891 to i32
  %1893 = xor i32 %1892, %1878
  %1894 = lshr i32 %1893, 4
  %1895 = trunc i32 %1894 to i8
  %1896 = and i8 %1895, 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1896, i8* %1897, align 1
  %1898 = icmp eq i32 %1878, 0
  %1899 = zext i1 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i32 %1878, 31
  %1902 = trunc i32 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1902, i8* %1903, align 1
  %1904 = lshr i32 %1877, 31
  %1905 = xor i32 %1901, %1904
  %1906 = add i32 %1905, %1901
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1908, i8* %1909, align 1
  store %struct.Memory* %loadMem_45339a, %struct.Memory** %MEMORY
  %loadMem_45339d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 1
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %EAX.i754 = bitcast %union.anon* %1915 to i32*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RBP.i755
  %1920 = sub i64 %1919, 188
  %1921 = load i32, i32* %EAX.i754
  %1922 = zext i32 %1921 to i64
  %1923 = load i64, i64* %PC.i753
  %1924 = add i64 %1923, 6
  store i64 %1924, i64* %PC.i753
  %1925 = inttoptr i64 %1920 to i32*
  store i32 %1921, i32* %1925
  store %struct.Memory* %loadMem_45339d, %struct.Memory** %MEMORY
  %loadMem_4533a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1928 to i64*
  %1929 = load i64, i64* %PC.i752
  %1930 = add i64 %1929, -72
  %1931 = load i64, i64* %PC.i752
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i752
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1930, i64* %1933, align 8
  store %struct.Memory* %loadMem_4533a3, %struct.Memory** %MEMORY
  br label %block_.L_45335b

block_.L_4533a8:                                  ; preds = %block_.L_45335b
  %loadMem_4533a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 15
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i751
  %1941 = sub i64 %1940, 188
  %1942 = load i64, i64* %PC.i750
  %1943 = add i64 %1942, 10
  store i64 %1943, i64* %PC.i750
  %1944 = inttoptr i64 %1941 to i32*
  store i32 0, i32* %1944
  store %struct.Memory* %loadMem_4533a8, %struct.Memory** %MEMORY
  br label %block_.L_4533b2

block_.L_4533b2:                                  ; preds = %block_.L_453651, %block_.L_4533a8
  %loadMem_4533b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 1
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i749
  %1955 = sub i64 %1954, 188
  %1956 = load i64, i64* %PC.i747
  %1957 = add i64 %1956, 6
  store i64 %1957, i64* %PC.i747
  %1958 = inttoptr i64 %1955 to i32*
  %1959 = load i32, i32* %1958
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RAX.i748, align 8
  store %struct.Memory* %loadMem_4533b2, %struct.Memory** %MEMORY
  %loadMem_4533b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %EAX.i745 = bitcast %union.anon* %1966 to i32*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 15
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %1969 to i64*
  %1970 = load i32, i32* %EAX.i745
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %RBP.i746
  %1973 = sub i64 %1972, 16
  %1974 = load i64, i64* %PC.i744
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %PC.i744
  %1976 = inttoptr i64 %1973 to i32*
  %1977 = load i32, i32* %1976
  %1978 = sub i32 %1970, %1977
  %1979 = icmp ult i32 %1970, %1977
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1980, i8* %1981, align 1
  %1982 = and i32 %1978, 255
  %1983 = call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1986, i8* %1987, align 1
  %1988 = xor i32 %1977, %1970
  %1989 = xor i32 %1988, %1978
  %1990 = lshr i32 %1989, 4
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1992, i8* %1993, align 1
  %1994 = icmp eq i32 %1978, 0
  %1995 = zext i1 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1995, i8* %1996, align 1
  %1997 = lshr i32 %1978, 31
  %1998 = trunc i32 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1998, i8* %1999, align 1
  %2000 = lshr i32 %1970, 31
  %2001 = lshr i32 %1977, 31
  %2002 = xor i32 %2001, %2000
  %2003 = xor i32 %1997, %2000
  %2004 = add i32 %2003, %2002
  %2005 = icmp eq i32 %2004, 2
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2006, i8* %2007, align 1
  store %struct.Memory* %loadMem_4533b8, %struct.Memory** %MEMORY
  %loadMem_4533bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 33
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %PC.i743
  %2012 = add i64 %2011, 682
  %2013 = load i64, i64* %PC.i743
  %2014 = add i64 %2013, 6
  %2015 = load i64, i64* %PC.i743
  %2016 = add i64 %2015, 6
  store i64 %2016, i64* %PC.i743
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2018 = load i8, i8* %2017, align 1
  %2019 = icmp ne i8 %2018, 0
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2021 = load i8, i8* %2020, align 1
  %2022 = icmp ne i8 %2021, 0
  %2023 = xor i1 %2019, %2022
  %2024 = xor i1 %2023, true
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %BRANCH_TAKEN, align 1
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2027 = select i1 %2023, i64 %2014, i64 %2012
  store i64 %2027, i64* %2026, align 8
  store %struct.Memory* %loadMem_4533bb, %struct.Memory** %MEMORY
  %loadBr_4533bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4533bb = icmp eq i8 %loadBr_4533bb, 1
  br i1 %cmpBr_4533bb, label %block_.L_453665, label %block_4533c1

block_4533c1:                                     ; preds = %block_.L_4533b2
  %loadMem_4533c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 9
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %ESI.i741 = bitcast %union.anon* %2033 to i32*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 9
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RSI.i742 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %RSI.i742
  %2038 = load i32, i32* %ESI.i741
  %2039 = zext i32 %2038 to i64
  %2040 = load i64, i64* %PC.i740
  %2041 = add i64 %2040, 2
  store i64 %2041, i64* %PC.i740
  %2042 = xor i64 %2039, %2037
  %2043 = trunc i64 %2042 to i32
  %2044 = and i64 %2042, 4294967295
  store i64 %2044, i64* %RSI.i742, align 8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2045, align 1
  %2046 = and i32 %2043, 255
  %2047 = call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2050, i8* %2051, align 1
  %2052 = icmp eq i32 %2043, 0
  %2053 = zext i1 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2053, i8* %2054, align 1
  %2055 = lshr i32 %2043, 31
  %2056 = trunc i32 %2055 to i8
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2056, i8* %2057, align 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2058, align 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2059, align 1
  store %struct.Memory* %loadMem_4533c1, %struct.Memory** %MEMORY
  %loadMem_4533c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 33
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 1
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %PC.i738
  %2067 = add i64 %2066, 5
  store i64 %2067, i64* %PC.i738
  store i64 108, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_4533c3, %struct.Memory** %MEMORY
  %loadMem_4533c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 1
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %EAX.i736 = bitcast %union.anon* %2073 to i32*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 7
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RDX.i737 = bitcast %union.anon* %2076 to i64*
  %2077 = load i32, i32* %EAX.i736
  %2078 = zext i32 %2077 to i64
  %2079 = load i64, i64* %PC.i735
  %2080 = add i64 %2079, 2
  store i64 %2080, i64* %PC.i735
  %2081 = and i64 %2078, 4294967295
  store i64 %2081, i64* %RDX.i737, align 8
  store %struct.Memory* %loadMem_4533c8, %struct.Memory** %MEMORY
  %loadMem_4533ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 5
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 15
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RBP.i734
  %2092 = sub i64 %2091, 176
  %2093 = load i64, i64* %PC.i732
  %2094 = add i64 %2093, 7
  store i64 %2094, i64* %PC.i732
  store i64 %2092, i64* %RCX.i733, align 8
  store %struct.Memory* %loadMem_4533ca, %struct.Memory** %MEMORY
  %loadMem_4533d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 5
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 11
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RDI.i731 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RCX.i730
  %2105 = load i64, i64* %PC.i729
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC.i729
  store i64 %2104, i64* %RDI.i731, align 8
  store %struct.Memory* %loadMem_4533d1, %struct.Memory** %MEMORY
  %loadMem1_4533d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %PC.i728
  %2111 = add i64 %2110, -335620
  %2112 = load i64, i64* %PC.i728
  %2113 = add i64 %2112, 5
  %2114 = load i64, i64* %PC.i728
  %2115 = add i64 %2114, 5
  store i64 %2115, i64* %PC.i728
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2117 = load i64, i64* %2116, align 8
  %2118 = add i64 %2117, -8
  %2119 = inttoptr i64 %2118 to i64*
  store i64 %2113, i64* %2119
  store i64 %2118, i64* %2116, align 8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2111, i64* %2120, align 8
  store %struct.Memory* %loadMem1_4533d4, %struct.Memory** %MEMORY
  %loadMem2_4533d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4533d4 = load i64, i64* %3
  %2121 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_4533d4)
  store %struct.Memory* %2121, %struct.Memory** %MEMORY
  %loadMem_4533d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RBP.i726
  %2129 = sub i64 %2128, 192
  %2130 = load i64, i64* %PC.i725
  %2131 = add i64 %2130, 10
  store i64 %2131, i64* %PC.i725
  %2132 = inttoptr i64 %2129 to i32*
  store i32 0, i32* %2132
  store %struct.Memory* %loadMem_4533d9, %struct.Memory** %MEMORY
  br label %block_.L_4533e3

block_.L_4533e3:                                  ; preds = %block_.L_453561, %block_4533c1
  %loadMem_4533e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 1
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 15
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %RBP.i724
  %2143 = sub i64 %2142, 192
  %2144 = load i64, i64* %PC.i722
  %2145 = add i64 %2144, 6
  store i64 %2145, i64* %PC.i722
  %2146 = inttoptr i64 %2143 to i32*
  %2147 = load i32, i32* %2146
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RAX.i723, align 8
  store %struct.Memory* %loadMem_4533e3, %struct.Memory** %MEMORY
  %loadMem_4533e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 1
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %EAX.i720 = bitcast %union.anon* %2154 to i32*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 15
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %2157 to i64*
  %2158 = load i32, i32* %EAX.i720
  %2159 = zext i32 %2158 to i64
  %2160 = load i64, i64* %RBP.i721
  %2161 = sub i64 %2160, 12
  %2162 = load i64, i64* %PC.i719
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i719
  %2164 = inttoptr i64 %2161 to i32*
  %2165 = load i32, i32* %2164
  %2166 = sub i32 %2158, %2165
  %2167 = icmp ult i32 %2158, %2165
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2168, i8* %2169, align 1
  %2170 = and i32 %2166, 255
  %2171 = call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2174, i8* %2175, align 1
  %2176 = xor i32 %2165, %2158
  %2177 = xor i32 %2176, %2166
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2180, i8* %2181, align 1
  %2182 = icmp eq i32 %2166, 0
  %2183 = zext i1 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2183, i8* %2184, align 1
  %2185 = lshr i32 %2166, 31
  %2186 = trunc i32 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2186, i8* %2187, align 1
  %2188 = lshr i32 %2158, 31
  %2189 = lshr i32 %2165, 31
  %2190 = xor i32 %2189, %2188
  %2191 = xor i32 %2185, %2188
  %2192 = add i32 %2191, %2190
  %2193 = icmp eq i32 %2192, 2
  %2194 = zext i1 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2194, i8* %2195, align 1
  store %struct.Memory* %loadMem_4533e9, %struct.Memory** %MEMORY
  %loadMem_4533ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2198 to i64*
  %2199 = load i64, i64* %PC.i718
  %2200 = add i64 %2199, 393
  %2201 = load i64, i64* %PC.i718
  %2202 = add i64 %2201, 6
  %2203 = load i64, i64* %PC.i718
  %2204 = add i64 %2203, 6
  store i64 %2204, i64* %PC.i718
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2206 = load i8, i8* %2205, align 1
  %2207 = icmp ne i8 %2206, 0
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2209 = load i8, i8* %2208, align 1
  %2210 = icmp ne i8 %2209, 0
  %2211 = xor i1 %2207, %2210
  %2212 = xor i1 %2211, true
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %BRANCH_TAKEN, align 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2215 = select i1 %2211, i64 %2202, i64 %2200
  store i64 %2215, i64* %2214, align 8
  store %struct.Memory* %loadMem_4533ec, %struct.Memory** %MEMORY
  %loadBr_4533ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4533ec = icmp eq i8 %loadBr_4533ec, 1
  br i1 %cmpBr_4533ec, label %block_.L_453575, label %block_4533f2

block_4533f2:                                     ; preds = %block_.L_4533e3
  %loadMem_4533f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 1
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 15
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RBP.i717
  %2226 = sub i64 %2225, 8
  %2227 = load i64, i64* %PC.i715
  %2228 = add i64 %2227, 4
  store i64 %2228, i64* %PC.i715
  %2229 = inttoptr i64 %2226 to i64*
  %2230 = load i64, i64* %2229
  store i64 %2230, i64* %RAX.i716, align 8
  store %struct.Memory* %loadMem_4533f2, %struct.Memory** %MEMORY
  %loadMem_4533f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 5
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 15
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %2239 to i64*
  %2240 = load i64, i64* %RBP.i714
  %2241 = sub i64 %2240, 192
  %2242 = load i64, i64* %PC.i712
  %2243 = add i64 %2242, 7
  store i64 %2243, i64* %PC.i712
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244
  %2246 = sext i32 %2245 to i64
  store i64 %2246, i64* %RCX.i713, align 8
  store %struct.Memory* %loadMem_4533f6, %struct.Memory** %MEMORY
  %loadMem_4533fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 1
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 5
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RCX.i711 = bitcast %union.anon* %2255 to i64*
  %2256 = load i64, i64* %RAX.i710
  %2257 = load i64, i64* %RCX.i711
  %2258 = mul i64 %2257, 8
  %2259 = add i64 %2258, %2256
  %2260 = load i64, i64* %PC.i709
  %2261 = add i64 %2260, 4
  store i64 %2261, i64* %PC.i709
  %2262 = inttoptr i64 %2259 to i64*
  %2263 = load i64, i64* %2262
  store i64 %2263, i64* %RAX.i710, align 8
  store %struct.Memory* %loadMem_4533fd, %struct.Memory** %MEMORY
  %loadMem_453401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 5
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RBP.i708
  %2274 = sub i64 %2273, 188
  %2275 = load i64, i64* %PC.i706
  %2276 = add i64 %2275, 7
  store i64 %2276, i64* %PC.i706
  %2277 = inttoptr i64 %2274 to i32*
  %2278 = load i32, i32* %2277
  %2279 = sext i32 %2278 to i64
  store i64 %2279, i64* %RCX.i707, align 8
  store %struct.Memory* %loadMem_453401, %struct.Memory** %MEMORY
  %loadMem_453408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 5
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 7
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RDX.i705 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RAX.i703
  %2293 = load i64, i64* %RCX.i704
  %2294 = add i64 %2293, %2292
  %2295 = load i64, i64* %PC.i702
  %2296 = add i64 %2295, 4
  store i64 %2296, i64* %PC.i702
  %2297 = inttoptr i64 %2294 to i8*
  %2298 = load i8, i8* %2297
  %2299 = sext i8 %2298 to i64
  %2300 = and i64 %2299, 4294967295
  store i64 %2300, i64* %RDX.i705, align 8
  store %struct.Memory* %loadMem_453408, %struct.Memory** %MEMORY
  %loadMem_45340c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 7
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %EDX.i701 = bitcast %union.anon* %2306 to i32*
  %2307 = load i32, i32* %EDX.i701
  %2308 = zext i32 %2307 to i64
  %2309 = load i64, i64* %PC.i700
  %2310 = add i64 %2309, 3
  store i64 %2310, i64* %PC.i700
  %2311 = sub i32 %2307, 32
  %2312 = icmp ult i32 %2307, 32
  %2313 = zext i1 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2313, i8* %2314, align 1
  %2315 = and i32 %2311, 255
  %2316 = call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2319, i8* %2320, align 1
  %2321 = xor i64 32, %2308
  %2322 = trunc i64 %2321 to i32
  %2323 = xor i32 %2322, %2311
  %2324 = lshr i32 %2323, 4
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2326, i8* %2327, align 1
  %2328 = icmp eq i32 %2311, 0
  %2329 = zext i1 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2329, i8* %2330, align 1
  %2331 = lshr i32 %2311, 31
  %2332 = trunc i32 %2331 to i8
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2332, i8* %2333, align 1
  %2334 = lshr i32 %2307, 31
  %2335 = xor i32 %2331, %2334
  %2336 = add i32 %2335, %2334
  %2337 = icmp eq i32 %2336, 2
  %2338 = zext i1 %2337 to i8
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2338, i8* %2339, align 1
  store %struct.Memory* %loadMem_45340c, %struct.Memory** %MEMORY
  %loadMem_45340f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %PC.i699
  %2344 = add i64 %2343, 326
  %2345 = load i64, i64* %PC.i699
  %2346 = add i64 %2345, 6
  %2347 = load i64, i64* %PC.i699
  %2348 = add i64 %2347, 6
  store i64 %2348, i64* %PC.i699
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2350 = load i8, i8* %2349, align 1
  store i8 %2350, i8* %BRANCH_TAKEN, align 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2352 = icmp ne i8 %2350, 0
  %2353 = select i1 %2352, i64 %2344, i64 %2346
  store i64 %2353, i64* %2351, align 8
  store %struct.Memory* %loadMem_45340f, %struct.Memory** %MEMORY
  %loadBr_45340f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45340f = icmp eq i8 %loadBr_45340f, 1
  br i1 %cmpBr_45340f, label %block_.L_453555, label %block_453415

block_453415:                                     ; preds = %block_4533f2
  %loadMem_453415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 33
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 1
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RAX.i697 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 15
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %RBP.i698
  %2364 = sub i64 %2363, 8
  %2365 = load i64, i64* %PC.i696
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %PC.i696
  %2367 = inttoptr i64 %2364 to i64*
  %2368 = load i64, i64* %2367
  store i64 %2368, i64* %RAX.i697, align 8
  store %struct.Memory* %loadMem_453415, %struct.Memory** %MEMORY
  %loadMem_453419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 5
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 15
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %RBP.i695
  %2379 = sub i64 %2378, 192
  %2380 = load i64, i64* %PC.i693
  %2381 = add i64 %2380, 7
  store i64 %2381, i64* %PC.i693
  %2382 = inttoptr i64 %2379 to i32*
  %2383 = load i32, i32* %2382
  %2384 = sext i32 %2383 to i64
  store i64 %2384, i64* %RCX.i694, align 8
  store %struct.Memory* %loadMem_453419, %struct.Memory** %MEMORY
  %loadMem_453420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 1
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 5
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RCX.i692 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RAX.i691
  %2395 = load i64, i64* %RCX.i692
  %2396 = mul i64 %2395, 8
  %2397 = add i64 %2396, %2394
  %2398 = load i64, i64* %PC.i690
  %2399 = add i64 %2398, 4
  store i64 %2399, i64* %PC.i690
  %2400 = inttoptr i64 %2397 to i64*
  %2401 = load i64, i64* %2400
  store i64 %2401, i64* %RAX.i691, align 8
  store %struct.Memory* %loadMem_453420, %struct.Memory** %MEMORY
  %loadMem_453424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 5
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RCX.i688 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2410 to i64*
  %2411 = load i64, i64* %RBP.i689
  %2412 = sub i64 %2411, 188
  %2413 = load i64, i64* %PC.i687
  %2414 = add i64 %2413, 7
  store i64 %2414, i64* %PC.i687
  %2415 = inttoptr i64 %2412 to i32*
  %2416 = load i32, i32* %2415
  %2417 = sext i32 %2416 to i64
  store i64 %2417, i64* %RCX.i688, align 8
  store %struct.Memory* %loadMem_453424, %struct.Memory** %MEMORY
  %loadMem_45342b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 1
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 5
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 7
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RDX.i686 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %RAX.i684
  %2431 = load i64, i64* %RCX.i685
  %2432 = add i64 %2431, %2430
  %2433 = load i64, i64* %PC.i683
  %2434 = add i64 %2433, 4
  store i64 %2434, i64* %PC.i683
  %2435 = inttoptr i64 %2432 to i8*
  %2436 = load i8, i8* %2435
  %2437 = sext i8 %2436 to i64
  %2438 = and i64 %2437, 4294967295
  store i64 %2438, i64* %RDX.i686, align 8
  store %struct.Memory* %loadMem_45342b, %struct.Memory** %MEMORY
  %loadMem_45342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 7
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %EDX.i682 = bitcast %union.anon* %2444 to i32*
  %2445 = load i32, i32* %EDX.i682
  %2446 = zext i32 %2445 to i64
  %2447 = load i64, i64* %PC.i681
  %2448 = add i64 %2447, 3
  store i64 %2448, i64* %PC.i681
  %2449 = sub i32 %2445, 46
  %2450 = icmp ult i32 %2445, 46
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2451, i8* %2452, align 1
  %2453 = and i32 %2449, 255
  %2454 = call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2457, i8* %2458, align 1
  %2459 = xor i64 46, %2446
  %2460 = trunc i64 %2459 to i32
  %2461 = xor i32 %2460, %2449
  %2462 = lshr i32 %2461, 4
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2464, i8* %2465, align 1
  %2466 = icmp eq i32 %2449, 0
  %2467 = zext i1 %2466 to i8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2467, i8* %2468, align 1
  %2469 = lshr i32 %2449, 31
  %2470 = trunc i32 %2469 to i8
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2470, i8* %2471, align 1
  %2472 = lshr i32 %2445, 31
  %2473 = xor i32 %2469, %2472
  %2474 = add i32 %2473, %2472
  %2475 = icmp eq i32 %2474, 2
  %2476 = zext i1 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2476, i8* %2477, align 1
  store %struct.Memory* %loadMem_45342f, %struct.Memory** %MEMORY
  %loadMem_453432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %PC.i680
  %2482 = add i64 %2481, 291
  %2483 = load i64, i64* %PC.i680
  %2484 = add i64 %2483, 6
  %2485 = load i64, i64* %PC.i680
  %2486 = add i64 %2485, 6
  store i64 %2486, i64* %PC.i680
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2488 = load i8, i8* %2487, align 1
  store i8 %2488, i8* %BRANCH_TAKEN, align 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2490 = icmp ne i8 %2488, 0
  %2491 = select i1 %2490, i64 %2482, i64 %2484
  store i64 %2491, i64* %2489, align 8
  store %struct.Memory* %loadMem_453432, %struct.Memory** %MEMORY
  %loadBr_453432 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453432 = icmp eq i8 %loadBr_453432, 1
  br i1 %cmpBr_453432, label %block_.L_453555, label %block_453438

block_453438:                                     ; preds = %block_453415
  %loadMem_453438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 1
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 15
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %RBP.i679
  %2502 = sub i64 %2501, 8
  %2503 = load i64, i64* %PC.i677
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %PC.i677
  %2505 = inttoptr i64 %2502 to i64*
  %2506 = load i64, i64* %2505
  store i64 %2506, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_453438, %struct.Memory** %MEMORY
  %loadMem_45343c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 5
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RCX.i675 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 15
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %RBP.i676
  %2517 = sub i64 %2516, 192
  %2518 = load i64, i64* %PC.i674
  %2519 = add i64 %2518, 7
  store i64 %2519, i64* %PC.i674
  %2520 = inttoptr i64 %2517 to i32*
  %2521 = load i32, i32* %2520
  %2522 = sext i32 %2521 to i64
  store i64 %2522, i64* %RCX.i675, align 8
  store %struct.Memory* %loadMem_45343c, %struct.Memory** %MEMORY
  %loadMem_453443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 1
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 5
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RAX.i672
  %2533 = load i64, i64* %RCX.i673
  %2534 = mul i64 %2533, 8
  %2535 = add i64 %2534, %2532
  %2536 = load i64, i64* %PC.i671
  %2537 = add i64 %2536, 4
  store i64 %2537, i64* %PC.i671
  %2538 = inttoptr i64 %2535 to i64*
  %2539 = load i64, i64* %2538
  store i64 %2539, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_453443, %struct.Memory** %MEMORY
  %loadMem_453447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 5
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RBP.i670
  %2550 = sub i64 %2549, 188
  %2551 = load i64, i64* %PC.i668
  %2552 = add i64 %2551, 7
  store i64 %2552, i64* %PC.i668
  %2553 = inttoptr i64 %2550 to i32*
  %2554 = load i32, i32* %2553
  %2555 = sext i32 %2554 to i64
  store i64 %2555, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_453447, %struct.Memory** %MEMORY
  %loadMem_45344e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 1
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 5
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 7
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RDX.i667 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RAX.i665
  %2569 = load i64, i64* %RCX.i666
  %2570 = add i64 %2569, %2568
  %2571 = load i64, i64* %PC.i664
  %2572 = add i64 %2571, 4
  store i64 %2572, i64* %PC.i664
  %2573 = inttoptr i64 %2570 to i8*
  %2574 = load i8, i8* %2573
  %2575 = sext i8 %2574 to i64
  %2576 = and i64 %2575, 4294967295
  store i64 %2576, i64* %RDX.i667, align 8
  store %struct.Memory* %loadMem_45344e, %struct.Memory** %MEMORY
  %loadMem_453452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 7
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %EDX.i663 = bitcast %union.anon* %2582 to i32*
  %2583 = load i32, i32* %EDX.i663
  %2584 = zext i32 %2583 to i64
  %2585 = load i64, i64* %PC.i662
  %2586 = add i64 %2585, 3
  store i64 %2586, i64* %PC.i662
  %2587 = sub i32 %2583, 95
  %2588 = icmp ult i32 %2583, 95
  %2589 = zext i1 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2589, i8* %2590, align 1
  %2591 = and i32 %2587, 255
  %2592 = call i32 @llvm.ctpop.i32(i32 %2591)
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2595, i8* %2596, align 1
  %2597 = xor i64 95, %2584
  %2598 = trunc i64 %2597 to i32
  %2599 = xor i32 %2598, %2587
  %2600 = lshr i32 %2599, 4
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2602, i8* %2603, align 1
  %2604 = icmp eq i32 %2587, 0
  %2605 = zext i1 %2604 to i8
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2605, i8* %2606, align 1
  %2607 = lshr i32 %2587, 31
  %2608 = trunc i32 %2607 to i8
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2608, i8* %2609, align 1
  %2610 = lshr i32 %2583, 31
  %2611 = xor i32 %2607, %2610
  %2612 = add i32 %2611, %2610
  %2613 = icmp eq i32 %2612, 2
  %2614 = zext i1 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2614, i8* %2615, align 1
  store %struct.Memory* %loadMem_453452, %struct.Memory** %MEMORY
  %loadMem_453455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %PC.i661
  %2620 = add i64 %2619, 256
  %2621 = load i64, i64* %PC.i661
  %2622 = add i64 %2621, 6
  %2623 = load i64, i64* %PC.i661
  %2624 = add i64 %2623, 6
  store i64 %2624, i64* %PC.i661
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2626 = load i8, i8* %2625, align 1
  store i8 %2626, i8* %BRANCH_TAKEN, align 1
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2628 = icmp ne i8 %2626, 0
  %2629 = select i1 %2628, i64 %2620, i64 %2622
  store i64 %2629, i64* %2627, align 8
  store %struct.Memory* %loadMem_453455, %struct.Memory** %MEMORY
  %loadBr_453455 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453455 = icmp eq i8 %loadBr_453455, 1
  br i1 %cmpBr_453455, label %block_.L_453555, label %block_45345b

block_45345b:                                     ; preds = %block_453438
  %loadMem_45345b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 33
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 1
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 15
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2638 to i64*
  %2639 = load i64, i64* %RBP.i660
  %2640 = sub i64 %2639, 8
  %2641 = load i64, i64* %PC.i658
  %2642 = add i64 %2641, 4
  store i64 %2642, i64* %PC.i658
  %2643 = inttoptr i64 %2640 to i64*
  %2644 = load i64, i64* %2643
  store i64 %2644, i64* %RAX.i659, align 8
  store %struct.Memory* %loadMem_45345b, %struct.Memory** %MEMORY
  %loadMem_45345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2647 to i64*
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 5
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 15
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RBP.i657
  %2655 = sub i64 %2654, 192
  %2656 = load i64, i64* %PC.i655
  %2657 = add i64 %2656, 7
  store i64 %2657, i64* %PC.i655
  %2658 = inttoptr i64 %2655 to i32*
  %2659 = load i32, i32* %2658
  %2660 = sext i32 %2659 to i64
  store i64 %2660, i64* %RCX.i656, align 8
  store %struct.Memory* %loadMem_45345f, %struct.Memory** %MEMORY
  %loadMem_453466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 1
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 5
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RAX.i653
  %2671 = load i64, i64* %RCX.i654
  %2672 = mul i64 %2671, 8
  %2673 = add i64 %2672, %2670
  %2674 = load i64, i64* %PC.i652
  %2675 = add i64 %2674, 4
  store i64 %2675, i64* %PC.i652
  %2676 = inttoptr i64 %2673 to i64*
  %2677 = load i64, i64* %2676
  store i64 %2677, i64* %RAX.i653, align 8
  store %struct.Memory* %loadMem_453466, %struct.Memory** %MEMORY
  %loadMem_45346a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 5
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 15
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %RBP.i651
  %2688 = sub i64 %2687, 188
  %2689 = load i64, i64* %PC.i649
  %2690 = add i64 %2689, 7
  store i64 %2690, i64* %PC.i649
  %2691 = inttoptr i64 %2688 to i32*
  %2692 = load i32, i32* %2691
  %2693 = sext i32 %2692 to i64
  store i64 %2693, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_45346a, %struct.Memory** %MEMORY
  %loadMem_453471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 1
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 5
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 7
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %2705 to i64*
  %2706 = load i64, i64* %RAX.i646
  %2707 = load i64, i64* %RCX.i647
  %2708 = add i64 %2707, %2706
  %2709 = load i64, i64* %PC.i645
  %2710 = add i64 %2709, 4
  store i64 %2710, i64* %PC.i645
  %2711 = inttoptr i64 %2708 to i8*
  %2712 = load i8, i8* %2711
  %2713 = sext i8 %2712 to i64
  %2714 = and i64 %2713, 4294967295
  store i64 %2714, i64* %RDX.i648, align 8
  store %struct.Memory* %loadMem_453471, %struct.Memory** %MEMORY
  %loadMem_453475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 7
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %EDX.i644 = bitcast %union.anon* %2720 to i32*
  %2721 = load i32, i32* %EDX.i644
  %2722 = zext i32 %2721 to i64
  %2723 = load i64, i64* %PC.i643
  %2724 = add i64 %2723, 3
  store i64 %2724, i64* %PC.i643
  %2725 = sub i32 %2721, 45
  %2726 = icmp ult i32 %2721, 45
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2727, i8* %2728, align 1
  %2729 = and i32 %2725, 255
  %2730 = call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2733, i8* %2734, align 1
  %2735 = xor i64 45, %2722
  %2736 = trunc i64 %2735 to i32
  %2737 = xor i32 %2736, %2725
  %2738 = lshr i32 %2737, 4
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2740, i8* %2741, align 1
  %2742 = icmp eq i32 %2725, 0
  %2743 = zext i1 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2743, i8* %2744, align 1
  %2745 = lshr i32 %2725, 31
  %2746 = trunc i32 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2746, i8* %2747, align 1
  %2748 = lshr i32 %2721, 31
  %2749 = xor i32 %2745, %2748
  %2750 = add i32 %2749, %2748
  %2751 = icmp eq i32 %2750, 2
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2752, i8* %2753, align 1
  store %struct.Memory* %loadMem_453475, %struct.Memory** %MEMORY
  %loadMem_453478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %PC.i642
  %2758 = add i64 %2757, 221
  %2759 = load i64, i64* %PC.i642
  %2760 = add i64 %2759, 6
  %2761 = load i64, i64* %PC.i642
  %2762 = add i64 %2761, 6
  store i64 %2762, i64* %PC.i642
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2764 = load i8, i8* %2763, align 1
  store i8 %2764, i8* %BRANCH_TAKEN, align 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2766 = icmp ne i8 %2764, 0
  %2767 = select i1 %2766, i64 %2758, i64 %2760
  store i64 %2767, i64* %2765, align 8
  store %struct.Memory* %loadMem_453478, %struct.Memory** %MEMORY
  %loadBr_453478 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453478 = icmp eq i8 %loadBr_453478, 1
  br i1 %cmpBr_453478, label %block_.L_453555, label %block_45347e

block_45347e:                                     ; preds = %block_45345b
  %loadMem_45347e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 1
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 15
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %RBP.i641
  %2778 = sub i64 %2777, 8
  %2779 = load i64, i64* %PC.i639
  %2780 = add i64 %2779, 4
  store i64 %2780, i64* %PC.i639
  %2781 = inttoptr i64 %2778 to i64*
  %2782 = load i64, i64* %2781
  store i64 %2782, i64* %RAX.i640, align 8
  store %struct.Memory* %loadMem_45347e, %struct.Memory** %MEMORY
  %loadMem_453482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 5
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 15
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2791 to i64*
  %2792 = load i64, i64* %RBP.i638
  %2793 = sub i64 %2792, 192
  %2794 = load i64, i64* %PC.i636
  %2795 = add i64 %2794, 7
  store i64 %2795, i64* %PC.i636
  %2796 = inttoptr i64 %2793 to i32*
  %2797 = load i32, i32* %2796
  %2798 = sext i32 %2797 to i64
  store i64 %2798, i64* %RCX.i637, align 8
  store %struct.Memory* %loadMem_453482, %struct.Memory** %MEMORY
  %loadMem_453489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 1
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 5
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %2807 to i64*
  %2808 = load i64, i64* %RAX.i634
  %2809 = load i64, i64* %RCX.i635
  %2810 = mul i64 %2809, 8
  %2811 = add i64 %2810, %2808
  %2812 = load i64, i64* %PC.i633
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i633
  %2814 = inttoptr i64 %2811 to i64*
  %2815 = load i64, i64* %2814
  store i64 %2815, i64* %RAX.i634, align 8
  store %struct.Memory* %loadMem_453489, %struct.Memory** %MEMORY
  %loadMem_45348d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 5
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 15
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RBP.i632
  %2826 = sub i64 %2825, 188
  %2827 = load i64, i64* %PC.i630
  %2828 = add i64 %2827, 7
  store i64 %2828, i64* %PC.i630
  %2829 = inttoptr i64 %2826 to i32*
  %2830 = load i32, i32* %2829
  %2831 = sext i32 %2830 to i64
  store i64 %2831, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_45348d, %struct.Memory** %MEMORY
  %loadMem_453494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 33
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 1
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 5
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %RCX.i628 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 7
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %2843 to i64*
  %2844 = load i64, i64* %RAX.i627
  %2845 = load i64, i64* %RCX.i628
  %2846 = add i64 %2845, %2844
  %2847 = load i64, i64* %PC.i626
  %2848 = add i64 %2847, 4
  store i64 %2848, i64* %PC.i626
  %2849 = inttoptr i64 %2846 to i8*
  %2850 = load i8, i8* %2849
  %2851 = sext i8 %2850 to i64
  %2852 = and i64 %2851, 4294967295
  store i64 %2852, i64* %RDX.i629, align 8
  store %struct.Memory* %loadMem_453494, %struct.Memory** %MEMORY
  %loadMem_453498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 7
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %EDX.i625 = bitcast %union.anon* %2858 to i32*
  %2859 = load i32, i32* %EDX.i625
  %2860 = zext i32 %2859 to i64
  %2861 = load i64, i64* %PC.i624
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC.i624
  %2863 = sub i32 %2859, 126
  %2864 = icmp ult i32 %2859, 126
  %2865 = zext i1 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2865, i8* %2866, align 1
  %2867 = and i32 %2863, 255
  %2868 = call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2871, i8* %2872, align 1
  %2873 = xor i64 126, %2860
  %2874 = trunc i64 %2873 to i32
  %2875 = xor i32 %2874, %2863
  %2876 = lshr i32 %2875, 4
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2878, i8* %2879, align 1
  %2880 = icmp eq i32 %2863, 0
  %2881 = zext i1 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2881, i8* %2882, align 1
  %2883 = lshr i32 %2863, 31
  %2884 = trunc i32 %2883 to i8
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2884, i8* %2885, align 1
  %2886 = lshr i32 %2859, 31
  %2887 = xor i32 %2883, %2886
  %2888 = add i32 %2887, %2886
  %2889 = icmp eq i32 %2888, 2
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2890, i8* %2891, align 1
  store %struct.Memory* %loadMem_453498, %struct.Memory** %MEMORY
  %loadMem_45349b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %PC.i623
  %2896 = add i64 %2895, 186
  %2897 = load i64, i64* %PC.i623
  %2898 = add i64 %2897, 6
  %2899 = load i64, i64* %PC.i623
  %2900 = add i64 %2899, 6
  store i64 %2900, i64* %PC.i623
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2902 = load i8, i8* %2901, align 1
  store i8 %2902, i8* %BRANCH_TAKEN, align 1
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2904 = icmp ne i8 %2902, 0
  %2905 = select i1 %2904, i64 %2896, i64 %2898
  store i64 %2905, i64* %2903, align 8
  store %struct.Memory* %loadMem_45349b, %struct.Memory** %MEMORY
  %loadBr_45349b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45349b = icmp eq i8 %loadBr_45349b, 1
  br i1 %cmpBr_45349b, label %block_.L_453555, label %block_4534a1

block_4534a1:                                     ; preds = %block_45347e
  %loadMem1_4534a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %PC.i622
  %2910 = add i64 %2909, -335249
  %2911 = load i64, i64* %PC.i622
  %2912 = add i64 %2911, 5
  %2913 = load i64, i64* %PC.i622
  %2914 = add i64 %2913, 5
  store i64 %2914, i64* %PC.i622
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2916 = load i64, i64* %2915, align 8
  %2917 = add i64 %2916, -8
  %2918 = inttoptr i64 %2917 to i64*
  store i64 %2912, i64* %2918
  store i64 %2917, i64* %2915, align 8
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2910, i64* %2919, align 8
  store %struct.Memory* %loadMem1_4534a1, %struct.Memory** %MEMORY
  %loadMem2_4534a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4534a1 = load i64, i64* %3
  %call2_4534a1 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_4534a1, %struct.Memory* %loadMem2_4534a1)
  store %struct.Memory* %call2_4534a1, %struct.Memory** %MEMORY
  %loadMem_4534a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %RAX.i621
  %2927 = load i64, i64* %PC.i620
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %PC.i620
  %2929 = inttoptr i64 %2926 to i64*
  %2930 = load i64, i64* %2929
  store i64 %2930, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_4534a6, %struct.Memory** %MEMORY
  %loadMem_4534a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 5
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 15
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %RBP.i619
  %2941 = sub i64 %2940, 8
  %2942 = load i64, i64* %PC.i617
  %2943 = add i64 %2942, 4
  store i64 %2943, i64* %PC.i617
  %2944 = inttoptr i64 %2941 to i64*
  %2945 = load i64, i64* %2944
  store i64 %2945, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_4534a9, %struct.Memory** %MEMORY
  %loadMem_4534ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 7
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RDX.i615 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 15
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %RBP.i616
  %2956 = sub i64 %2955, 192
  %2957 = load i64, i64* %PC.i614
  %2958 = add i64 %2957, 7
  store i64 %2958, i64* %PC.i614
  %2959 = inttoptr i64 %2956 to i32*
  %2960 = load i32, i32* %2959
  %2961 = sext i32 %2960 to i64
  store i64 %2961, i64* %RDX.i615, align 8
  store %struct.Memory* %loadMem_4534ad, %struct.Memory** %MEMORY
  %loadMem_4534b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 5
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 7
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RCX.i612
  %2972 = load i64, i64* %RDX.i613
  %2973 = mul i64 %2972, 8
  %2974 = add i64 %2973, %2971
  %2975 = load i64, i64* %PC.i611
  %2976 = add i64 %2975, 4
  store i64 %2976, i64* %PC.i611
  %2977 = inttoptr i64 %2974 to i64*
  %2978 = load i64, i64* %2977
  store i64 %2978, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_4534b4, %struct.Memory** %MEMORY
  %loadMem_4534b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 7
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 15
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %RBP.i610
  %2989 = sub i64 %2988, 188
  %2990 = load i64, i64* %PC.i608
  %2991 = add i64 %2990, 7
  store i64 %2991, i64* %PC.i608
  %2992 = inttoptr i64 %2989 to i32*
  %2993 = load i32, i32* %2992
  %2994 = sext i32 %2993 to i64
  store i64 %2994, i64* %RDX.i609, align 8
  store %struct.Memory* %loadMem_4534b8, %struct.Memory** %MEMORY
  %loadMem_4534bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 5
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %3000 to i64*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 7
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RDX.i606 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 9
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RSI.i607 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %RCX.i605
  %3008 = load i64, i64* %RDX.i606
  %3009 = add i64 %3008, %3007
  %3010 = load i64, i64* %PC.i604
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i604
  %3012 = inttoptr i64 %3009 to i8*
  %3013 = load i8, i8* %3012
  %3014 = sext i8 %3013 to i64
  %3015 = and i64 %3014, 4294967295
  store i64 %3015, i64* %RSI.i607, align 8
  store %struct.Memory* %loadMem_4534bf, %struct.Memory** %MEMORY
  %loadMem_4534c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 9
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %ESI.i602 = bitcast %union.anon* %3021 to i32*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 5
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %3024 to i64*
  %3025 = load i32, i32* %ESI.i602
  %3026 = zext i32 %3025 to i64
  %3027 = load i64, i64* %PC.i601
  %3028 = add i64 %3027, 3
  store i64 %3028, i64* %PC.i601
  %3029 = shl i64 %3026, 32
  %3030 = ashr exact i64 %3029, 32
  store i64 %3030, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_4534c3, %struct.Memory** %MEMORY
  %loadMem_4534c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 1
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 5
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 9
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %3042 to i64*
  %3043 = load i64, i64* %RAX.i598
  %3044 = load i64, i64* %RCX.i599
  %3045 = mul i64 %3044, 2
  %3046 = add i64 %3045, %3043
  %3047 = load i64, i64* %PC.i597
  %3048 = add i64 %3047, 4
  store i64 %3048, i64* %PC.i597
  %3049 = inttoptr i64 %3046 to i16*
  %3050 = load i16, i16* %3049
  %3051 = zext i16 %3050 to i64
  store i64 %3051, i64* %RSI.i600, align 8
  store %struct.Memory* %loadMem_4534c6, %struct.Memory** %MEMORY
  %loadMem_4534ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 33
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 9
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RSI.i596 = bitcast %union.anon* %3057 to i64*
  %3058 = load i64, i64* %RSI.i596
  %3059 = load i64, i64* %PC.i595
  %3060 = add i64 %3059, 6
  store i64 %3060, i64* %PC.i595
  %3061 = and i64 256, %3058
  %3062 = trunc i64 %3061 to i32
  store i64 %3061, i64* %RSI.i596, align 8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3063, align 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3064, align 1
  %3065 = icmp eq i32 %3062, 0
  %3066 = zext i1 %3065 to i8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3066, i8* %3067, align 1
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3068, align 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3069, align 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3070, align 1
  store %struct.Memory* %loadMem_4534ca, %struct.Memory** %MEMORY
  %loadMem_4534d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 9
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %ESI.i594 = bitcast %union.anon* %3076 to i32*
  %3077 = load i32, i32* %ESI.i594
  %3078 = zext i32 %3077 to i64
  %3079 = load i64, i64* %PC.i593
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i593
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3081, align 1
  %3082 = and i32 %3077, 255
  %3083 = call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3086, i8* %3087, align 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3088, align 1
  %3089 = icmp eq i32 %3077, 0
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3090, i8* %3091, align 1
  %3092 = lshr i32 %3077, 31
  %3093 = trunc i32 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3093, i8* %3094, align 1
  %3095 = lshr i32 %3077, 31
  %3096 = xor i32 %3092, %3095
  %3097 = add i32 %3096, %3095
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3099, i8* %3100, align 1
  store %struct.Memory* %loadMem_4534d0, %struct.Memory** %MEMORY
  %loadMem_4534d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %PC.i592
  %3105 = add i64 %3104, 46
  %3106 = load i64, i64* %PC.i592
  %3107 = add i64 %3106, 6
  %3108 = load i64, i64* %PC.i592
  %3109 = add i64 %3108, 6
  store i64 %3109, i64* %PC.i592
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3111 = load i8, i8* %3110, align 1
  store i8 %3111, i8* %BRANCH_TAKEN, align 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3113 = icmp ne i8 %3111, 0
  %3114 = select i1 %3113, i64 %3105, i64 %3107
  store i64 %3114, i64* %3112, align 8
  store %struct.Memory* %loadMem_4534d3, %struct.Memory** %MEMORY
  %loadBr_4534d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4534d3 = icmp eq i8 %loadBr_4534d3, 1
  br i1 %cmpBr_4534d3, label %block_.L_453501, label %block_4534d9

block_4534d9:                                     ; preds = %block_4534a1
  %loadMem_4534d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 1
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 15
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %3123 to i64*
  %3124 = load i64, i64* %RBP.i591
  %3125 = sub i64 %3124, 8
  %3126 = load i64, i64* %PC.i589
  %3127 = add i64 %3126, 4
  store i64 %3127, i64* %PC.i589
  %3128 = inttoptr i64 %3125 to i64*
  %3129 = load i64, i64* %3128
  store i64 %3129, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_4534d9, %struct.Memory** %MEMORY
  %loadMem_4534dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 5
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 15
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3138 to i64*
  %3139 = load i64, i64* %RBP.i588
  %3140 = sub i64 %3139, 192
  %3141 = load i64, i64* %PC.i586
  %3142 = add i64 %3141, 7
  store i64 %3142, i64* %PC.i586
  %3143 = inttoptr i64 %3140 to i32*
  %3144 = load i32, i32* %3143
  %3145 = sext i32 %3144 to i64
  store i64 %3145, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_4534dd, %struct.Memory** %MEMORY
  %loadMem_4534e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 1
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 5
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RAX.i584
  %3156 = load i64, i64* %RCX.i585
  %3157 = mul i64 %3156, 8
  %3158 = add i64 %3157, %3155
  %3159 = load i64, i64* %PC.i583
  %3160 = add i64 %3159, 4
  store i64 %3160, i64* %PC.i583
  %3161 = inttoptr i64 %3158 to i64*
  %3162 = load i64, i64* %3161
  store i64 %3162, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_4534e4, %struct.Memory** %MEMORY
  %loadMem_4534e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 5
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 15
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %RBP.i582
  %3173 = sub i64 %3172, 188
  %3174 = load i64, i64* %PC.i580
  %3175 = add i64 %3174, 7
  store i64 %3175, i64* %PC.i580
  %3176 = inttoptr i64 %3173 to i32*
  %3177 = load i32, i32* %3176
  %3178 = sext i32 %3177 to i64
  store i64 %3178, i64* %RCX.i581, align 8
  store %struct.Memory* %loadMem_4534e8, %struct.Memory** %MEMORY
  %loadMem_4534ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 1
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 5
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 7
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %3190 to i64*
  %3191 = load i64, i64* %RAX.i577
  %3192 = load i64, i64* %RCX.i578
  %3193 = add i64 %3192, %3191
  %3194 = load i64, i64* %PC.i576
  %3195 = add i64 %3194, 4
  store i64 %3195, i64* %PC.i576
  %3196 = inttoptr i64 %3193 to i8*
  %3197 = load i8, i8* %3196
  %3198 = sext i8 %3197 to i64
  %3199 = and i64 %3198, 4294967295
  store i64 %3199, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_4534ef, %struct.Memory** %MEMORY
  %loadMem_4534f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 7
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RDX.i575 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %RDX.i575
  %3207 = load i64, i64* %PC.i574
  %3208 = add i64 %3207, 3
  store i64 %3208, i64* %PC.i574
  %3209 = trunc i64 %3206 to i32
  %3210 = sub i32 %3209, 65
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RDX.i575, align 8
  %3212 = icmp ult i32 %3209, 65
  %3213 = zext i1 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3213, i8* %3214, align 1
  %3215 = and i32 %3210, 255
  %3216 = call i32 @llvm.ctpop.i32(i32 %3215)
  %3217 = trunc i32 %3216 to i8
  %3218 = and i8 %3217, 1
  %3219 = xor i8 %3218, 1
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3219, i8* %3220, align 1
  %3221 = xor i64 65, %3206
  %3222 = trunc i64 %3221 to i32
  %3223 = xor i32 %3222, %3210
  %3224 = lshr i32 %3223, 4
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3226, i8* %3227, align 1
  %3228 = icmp eq i32 %3210, 0
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3229, i8* %3230, align 1
  %3231 = lshr i32 %3210, 31
  %3232 = trunc i32 %3231 to i8
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3232, i8* %3233, align 1
  %3234 = lshr i32 %3209, 31
  %3235 = xor i32 %3231, %3234
  %3236 = add i32 %3235, %3234
  %3237 = icmp eq i32 %3236, 2
  %3238 = zext i1 %3237 to i8
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3238, i8* %3239, align 1
  store %struct.Memory* %loadMem_4534f3, %struct.Memory** %MEMORY
  %loadMem_4534f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 7
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %EDX.i572 = bitcast %union.anon* %3245 to i32*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 15
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RBP.i573
  %3250 = sub i64 %3249, 196
  %3251 = load i32, i32* %EDX.i572
  %3252 = zext i32 %3251 to i64
  %3253 = load i64, i64* %PC.i571
  %3254 = add i64 %3253, 6
  store i64 %3254, i64* %PC.i571
  %3255 = inttoptr i64 %3250 to i32*
  store i32 %3251, i32* %3255
  store %struct.Memory* %loadMem_4534f6, %struct.Memory** %MEMORY
  %loadMem_4534fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %PC.i570
  %3260 = add i64 %3259, 40
  %3261 = load i64, i64* %PC.i570
  %3262 = add i64 %3261, 5
  store i64 %3262, i64* %PC.i570
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3260, i64* %3263, align 8
  store %struct.Memory* %loadMem_4534fc, %struct.Memory** %MEMORY
  br label %block_.L_453524

block_.L_453501:                                  ; preds = %block_4534a1
  %loadMem_453501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 1
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 15
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RBP.i569
  %3274 = sub i64 %3273, 8
  %3275 = load i64, i64* %PC.i567
  %3276 = add i64 %3275, 4
  store i64 %3276, i64* %PC.i567
  %3277 = inttoptr i64 %3274 to i64*
  %3278 = load i64, i64* %3277
  store i64 %3278, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_453501, %struct.Memory** %MEMORY
  %loadMem_453505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 5
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 15
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RBP.i566
  %3289 = sub i64 %3288, 192
  %3290 = load i64, i64* %PC.i564
  %3291 = add i64 %3290, 7
  store i64 %3291, i64* %PC.i564
  %3292 = inttoptr i64 %3289 to i32*
  %3293 = load i32, i32* %3292
  %3294 = sext i32 %3293 to i64
  store i64 %3294, i64* %RCX.i565, align 8
  store %struct.Memory* %loadMem_453505, %struct.Memory** %MEMORY
  %loadMem_45350c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 1
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 5
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %RAX.i562
  %3305 = load i64, i64* %RCX.i563
  %3306 = mul i64 %3305, 8
  %3307 = add i64 %3306, %3304
  %3308 = load i64, i64* %PC.i561
  %3309 = add i64 %3308, 4
  store i64 %3309, i64* %PC.i561
  %3310 = inttoptr i64 %3307 to i64*
  %3311 = load i64, i64* %3310
  store i64 %3311, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_45350c, %struct.Memory** %MEMORY
  %loadMem_453510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 5
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 15
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %RBP.i560
  %3322 = sub i64 %3321, 188
  %3323 = load i64, i64* %PC.i558
  %3324 = add i64 %3323, 7
  store i64 %3324, i64* %PC.i558
  %3325 = inttoptr i64 %3322 to i32*
  %3326 = load i32, i32* %3325
  %3327 = sext i32 %3326 to i64
  store i64 %3327, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_453510, %struct.Memory** %MEMORY
  %loadMem_453517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 1
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 5
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 7
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %RAX.i555
  %3341 = load i64, i64* %RCX.i556
  %3342 = add i64 %3341, %3340
  %3343 = load i64, i64* %PC.i554
  %3344 = add i64 %3343, 4
  store i64 %3344, i64* %PC.i554
  %3345 = inttoptr i64 %3342 to i8*
  %3346 = load i8, i8* %3345
  %3347 = sext i8 %3346 to i64
  %3348 = and i64 %3347, 4294967295
  store i64 %3348, i64* %RDX.i557, align 8
  store %struct.Memory* %loadMem_453517, %struct.Memory** %MEMORY
  %loadMem_45351b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 7
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RDX.i553 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %RDX.i553
  %3356 = load i64, i64* %PC.i552
  %3357 = add i64 %3356, 3
  store i64 %3357, i64* %PC.i552
  %3358 = trunc i64 %3355 to i32
  %3359 = sub i32 %3358, 97
  %3360 = zext i32 %3359 to i64
  store i64 %3360, i64* %RDX.i553, align 8
  %3361 = icmp ult i32 %3358, 97
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3362, i8* %3363, align 1
  %3364 = and i32 %3359, 255
  %3365 = call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3368, i8* %3369, align 1
  %3370 = xor i64 97, %3355
  %3371 = trunc i64 %3370 to i32
  %3372 = xor i32 %3371, %3359
  %3373 = lshr i32 %3372, 4
  %3374 = trunc i32 %3373 to i8
  %3375 = and i8 %3374, 1
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3375, i8* %3376, align 1
  %3377 = icmp eq i32 %3359, 0
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3378, i8* %3379, align 1
  %3380 = lshr i32 %3359, 31
  %3381 = trunc i32 %3380 to i8
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3381, i8* %3382, align 1
  %3383 = lshr i32 %3358, 31
  %3384 = xor i32 %3380, %3383
  %3385 = add i32 %3384, %3383
  %3386 = icmp eq i32 %3385, 2
  %3387 = zext i1 %3386 to i8
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3387, i8* %3388, align 1
  store %struct.Memory* %loadMem_45351b, %struct.Memory** %MEMORY
  %loadMem_45351e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 7
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %EDX.i550 = bitcast %union.anon* %3394 to i32*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 15
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RBP.i551
  %3399 = sub i64 %3398, 196
  %3400 = load i32, i32* %EDX.i550
  %3401 = zext i32 %3400 to i64
  %3402 = load i64, i64* %PC.i549
  %3403 = add i64 %3402, 6
  store i64 %3403, i64* %PC.i549
  %3404 = inttoptr i64 %3399 to i32*
  store i32 %3400, i32* %3404
  store %struct.Memory* %loadMem_45351e, %struct.Memory** %MEMORY
  br label %block_.L_453524

block_.L_453524:                                  ; preds = %block_.L_453501, %block_4534d9
  %loadMem_453524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 15
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RBP.i548
  %3412 = sub i64 %3411, 196
  %3413 = load i64, i64* %PC.i547
  %3414 = add i64 %3413, 7
  store i64 %3414, i64* %PC.i547
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3417, align 1
  %3418 = and i32 %3416, 255
  %3419 = call i32 @llvm.ctpop.i32(i32 %3418)
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = xor i8 %3421, 1
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3422, i8* %3423, align 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3424, align 1
  %3425 = icmp eq i32 %3416, 0
  %3426 = zext i1 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3426, i8* %3427, align 1
  %3428 = lshr i32 %3416, 31
  %3429 = trunc i32 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3429, i8* %3430, align 1
  %3431 = lshr i32 %3416, 31
  %3432 = xor i32 %3428, %3431
  %3433 = add i32 %3432, %3431
  %3434 = icmp eq i32 %3433, 2
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3435, i8* %3436, align 1
  store %struct.Memory* %loadMem_453524, %struct.Memory** %MEMORY
  %loadMem_45352b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %PC.i546
  %3441 = add i64 %3440, 37
  %3442 = load i64, i64* %PC.i546
  %3443 = add i64 %3442, 6
  %3444 = load i64, i64* %PC.i546
  %3445 = add i64 %3444, 6
  store i64 %3445, i64* %PC.i546
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3447 = load i8, i8* %3446, align 1
  %3448 = icmp ne i8 %3447, 0
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3450 = load i8, i8* %3449, align 1
  %3451 = icmp ne i8 %3450, 0
  %3452 = xor i1 %3448, %3451
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %BRANCH_TAKEN, align 1
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3455 = select i1 %3452, i64 %3441, i64 %3443
  store i64 %3455, i64* %3454, align 8
  store %struct.Memory* %loadMem_45352b, %struct.Memory** %MEMORY
  %loadBr_45352b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45352b = icmp eq i8 %loadBr_45352b, 1
  br i1 %cmpBr_45352b, label %block_.L_453550, label %block_453531

block_453531:                                     ; preds = %block_.L_453524
  %loadMem_453531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 15
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RBP.i545
  %3463 = sub i64 %3462, 196
  %3464 = load i64, i64* %PC.i544
  %3465 = add i64 %3464, 7
  store i64 %3465, i64* %PC.i544
  %3466 = inttoptr i64 %3463 to i32*
  %3467 = load i32, i32* %3466
  %3468 = sub i32 %3467, 26
  %3469 = icmp ult i32 %3467, 26
  %3470 = zext i1 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3470, i8* %3471, align 1
  %3472 = and i32 %3468, 255
  %3473 = call i32 @llvm.ctpop.i32(i32 %3472)
  %3474 = trunc i32 %3473 to i8
  %3475 = and i8 %3474, 1
  %3476 = xor i8 %3475, 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3476, i8* %3477, align 1
  %3478 = xor i32 %3467, 26
  %3479 = xor i32 %3478, %3468
  %3480 = lshr i32 %3479, 4
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3482, i8* %3483, align 1
  %3484 = icmp eq i32 %3468, 0
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3485, i8* %3486, align 1
  %3487 = lshr i32 %3468, 31
  %3488 = trunc i32 %3487 to i8
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3488, i8* %3489, align 1
  %3490 = lshr i32 %3467, 31
  %3491 = xor i32 %3487, %3490
  %3492 = add i32 %3491, %3490
  %3493 = icmp eq i32 %3492, 2
  %3494 = zext i1 %3493 to i8
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3494, i8* %3495, align 1
  store %struct.Memory* %loadMem_453531, %struct.Memory** %MEMORY
  %loadMem_453538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %PC.i543
  %3500 = add i64 %3499, 24
  %3501 = load i64, i64* %PC.i543
  %3502 = add i64 %3501, 6
  %3503 = load i64, i64* %PC.i543
  %3504 = add i64 %3503, 6
  store i64 %3504, i64* %PC.i543
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3506 = load i8, i8* %3505, align 1
  %3507 = icmp ne i8 %3506, 0
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3509 = load i8, i8* %3508, align 1
  %3510 = icmp ne i8 %3509, 0
  %3511 = xor i1 %3507, %3510
  %3512 = xor i1 %3511, true
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %BRANCH_TAKEN, align 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3515 = select i1 %3511, i64 %3502, i64 %3500
  store i64 %3515, i64* %3514, align 8
  store %struct.Memory* %loadMem_453538, %struct.Memory** %MEMORY
  %loadBr_453538 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453538 = icmp eq i8 %loadBr_453538, 1
  br i1 %cmpBr_453538, label %block_.L_453550, label %block_45353e

block_45353e:                                     ; preds = %block_453531
  %loadMem_45353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 1
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 15
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RBP.i542
  %3526 = sub i64 %3525, 196
  %3527 = load i64, i64* %PC.i540
  %3528 = add i64 %3527, 7
  store i64 %3528, i64* %PC.i540
  %3529 = inttoptr i64 %3526 to i32*
  %3530 = load i32, i32* %3529
  %3531 = sext i32 %3530 to i64
  store i64 %3531, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_45353e, %struct.Memory** %MEMORY
  %loadMem_453545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 1
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 15
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %RBP.i539
  %3542 = load i64, i64* %RAX.i538
  %3543 = mul i64 %3542, 4
  %3544 = add i64 %3541, -176
  %3545 = add i64 %3544, %3543
  %3546 = load i64, i64* %PC.i537
  %3547 = add i64 %3546, 11
  store i64 %3547, i64* %PC.i537
  %3548 = inttoptr i64 %3545 to i32*
  store i32 1, i32* %3548
  store %struct.Memory* %loadMem_453545, %struct.Memory** %MEMORY
  br label %block_.L_453550

block_.L_453550:                                  ; preds = %block_45353e, %block_453531, %block_.L_453524
  %loadMem_453550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %PC.i536
  %3553 = add i64 %3552, 12
  %3554 = load i64, i64* %PC.i536
  %3555 = add i64 %3554, 5
  store i64 %3555, i64* %PC.i536
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3553, i64* %3556, align 8
  store %struct.Memory* %loadMem_453550, %struct.Memory** %MEMORY
  br label %block_.L_45355c

block_.L_453555:                                  ; preds = %block_45347e, %block_45345b, %block_453438, %block_453415, %block_4533f2
  %loadMem_453555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 33
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3559 to i64*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 15
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %3562 to i64*
  %3563 = load i64, i64* %RBP.i535
  %3564 = sub i64 %3563, 72
  %3565 = load i64, i64* %PC.i534
  %3566 = add i64 %3565, 7
  store i64 %3566, i64* %PC.i534
  %3567 = inttoptr i64 %3564 to i32*
  store i32 1, i32* %3567
  store %struct.Memory* %loadMem_453555, %struct.Memory** %MEMORY
  br label %block_.L_45355c

block_.L_45355c:                                  ; preds = %block_.L_453555, %block_.L_453550
  %loadMem_45355c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3570 to i64*
  %3571 = load i64, i64* %PC.i533
  %3572 = add i64 %3571, 5
  %3573 = load i64, i64* %PC.i533
  %3574 = add i64 %3573, 5
  store i64 %3574, i64* %PC.i533
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3572, i64* %3575, align 8
  store %struct.Memory* %loadMem_45355c, %struct.Memory** %MEMORY
  br label %block_.L_453561

block_.L_453561:                                  ; preds = %block_.L_45355c
  %loadMem_453561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 1
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 15
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %RBP.i532
  %3586 = sub i64 %3585, 192
  %3587 = load i64, i64* %PC.i530
  %3588 = add i64 %3587, 6
  store i64 %3588, i64* %PC.i530
  %3589 = inttoptr i64 %3586 to i32*
  %3590 = load i32, i32* %3589
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_453561, %struct.Memory** %MEMORY
  %loadMem_453567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 1
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %RAX.i529
  %3599 = load i64, i64* %PC.i528
  %3600 = add i64 %3599, 3
  store i64 %3600, i64* %PC.i528
  %3601 = trunc i64 %3598 to i32
  %3602 = add i32 1, %3601
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RAX.i529, align 8
  %3604 = icmp ult i32 %3602, %3601
  %3605 = icmp ult i32 %3602, 1
  %3606 = or i1 %3604, %3605
  %3607 = zext i1 %3606 to i8
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3607, i8* %3608, align 1
  %3609 = and i32 %3602, 255
  %3610 = call i32 @llvm.ctpop.i32(i32 %3609)
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  %3613 = xor i8 %3612, 1
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3613, i8* %3614, align 1
  %3615 = xor i64 1, %3598
  %3616 = trunc i64 %3615 to i32
  %3617 = xor i32 %3616, %3602
  %3618 = lshr i32 %3617, 4
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3620, i8* %3621, align 1
  %3622 = icmp eq i32 %3602, 0
  %3623 = zext i1 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3623, i8* %3624, align 1
  %3625 = lshr i32 %3602, 31
  %3626 = trunc i32 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3626, i8* %3627, align 1
  %3628 = lshr i32 %3601, 31
  %3629 = xor i32 %3625, %3628
  %3630 = add i32 %3629, %3625
  %3631 = icmp eq i32 %3630, 2
  %3632 = zext i1 %3631 to i8
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3632, i8* %3633, align 1
  store %struct.Memory* %loadMem_453567, %struct.Memory** %MEMORY
  %loadMem_45356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 1
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %EAX.i526 = bitcast %union.anon* %3639 to i32*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 15
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3642 to i64*
  %3643 = load i64, i64* %RBP.i527
  %3644 = sub i64 %3643, 192
  %3645 = load i32, i32* %EAX.i526
  %3646 = zext i32 %3645 to i64
  %3647 = load i64, i64* %PC.i525
  %3648 = add i64 %3647, 6
  store i64 %3648, i64* %PC.i525
  %3649 = inttoptr i64 %3644 to i32*
  store i32 %3645, i32* %3649
  store %struct.Memory* %loadMem_45356a, %struct.Memory** %MEMORY
  %loadMem_453570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %PC.i524
  %3654 = add i64 %3653, -397
  %3655 = load i64, i64* %PC.i524
  %3656 = add i64 %3655, 5
  store i64 %3656, i64* %PC.i524
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3654, i64* %3657, align 8
  store %struct.Memory* %loadMem_453570, %struct.Memory** %MEMORY
  br label %block_.L_4533e3

block_.L_453575:                                  ; preds = %block_.L_4533e3
  %loadMem_453575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 1
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 15
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %3666 to i64*
  %3667 = load i64, i64* %RBP.i523
  %3668 = sub i64 %3667, 56
  %3669 = load i64, i64* %PC.i521
  %3670 = add i64 %3669, 4
  store i64 %3670, i64* %PC.i521
  %3671 = inttoptr i64 %3668 to i64*
  %3672 = load i64, i64* %3671
  store i64 %3672, i64* %RAX.i522, align 8
  store %struct.Memory* %loadMem_453575, %struct.Memory** %MEMORY
  %loadMem_453579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 33
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 5
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 15
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %RBP.i520
  %3683 = sub i64 %3682, 188
  %3684 = load i64, i64* %PC.i518
  %3685 = add i64 %3684, 7
  store i64 %3685, i64* %PC.i518
  %3686 = inttoptr i64 %3683 to i32*
  %3687 = load i32, i32* %3686
  %3688 = sext i32 %3687 to i64
  store i64 %3688, i64* %RCX.i519, align 8
  store %struct.Memory* %loadMem_453579, %struct.Memory** %MEMORY
  %loadMem_453580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 1
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %3694 to i64*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 5
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %3697 to i64*
  %3698 = load i64, i64* %RAX.i516
  %3699 = load i64, i64* %RCX.i517
  %3700 = mul i64 %3699, 4
  %3701 = add i64 %3700, %3698
  %3702 = load i64, i64* %PC.i515
  %3703 = add i64 %3702, 7
  store i64 %3703, i64* %PC.i515
  %3704 = inttoptr i64 %3701 to i32*
  store i32 0, i32* %3704
  store %struct.Memory* %loadMem_453580, %struct.Memory** %MEMORY
  %loadMem_453587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 15
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %3710 to i64*
  %3711 = load i64, i64* %RBP.i514
  %3712 = sub i64 %3711, 200
  %3713 = load i64, i64* %PC.i513
  %3714 = add i64 %3713, 10
  store i64 %3714, i64* %PC.i513
  %3715 = inttoptr i64 %3712 to i32*
  store i32 0, i32* %3715
  store %struct.Memory* %loadMem_453587, %struct.Memory** %MEMORY
  br label %block_.L_453591

block_.L_453591:                                  ; preds = %block_.L_4535f8, %block_.L_453575
  %loadMem_453591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i512
  %3723 = sub i64 %3722, 200
  %3724 = load i64, i64* %PC.i511
  %3725 = add i64 %3724, 7
  store i64 %3725, i64* %PC.i511
  %3726 = inttoptr i64 %3723 to i32*
  %3727 = load i32, i32* %3726
  %3728 = sub i32 %3727, 26
  %3729 = icmp ult i32 %3727, 26
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3730, i8* %3731, align 1
  %3732 = and i32 %3728, 255
  %3733 = call i32 @llvm.ctpop.i32(i32 %3732)
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3736, i8* %3737, align 1
  %3738 = xor i32 %3727, 26
  %3739 = xor i32 %3738, %3728
  %3740 = lshr i32 %3739, 4
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3742, i8* %3743, align 1
  %3744 = icmp eq i32 %3728, 0
  %3745 = zext i1 %3744 to i8
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3745, i8* %3746, align 1
  %3747 = lshr i32 %3728, 31
  %3748 = trunc i32 %3747 to i8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3748, i8* %3749, align 1
  %3750 = lshr i32 %3727, 31
  %3751 = xor i32 %3747, %3750
  %3752 = add i32 %3751, %3750
  %3753 = icmp eq i32 %3752, 2
  %3754 = zext i1 %3753 to i8
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3754, i8* %3755, align 1
  store %struct.Memory* %loadMem_453591, %struct.Memory** %MEMORY
  %loadMem_453598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 33
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3758 to i64*
  %3759 = load i64, i64* %PC.i510
  %3760 = add i64 %3759, 116
  %3761 = load i64, i64* %PC.i510
  %3762 = add i64 %3761, 6
  %3763 = load i64, i64* %PC.i510
  %3764 = add i64 %3763, 6
  store i64 %3764, i64* %PC.i510
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3766 = load i8, i8* %3765, align 1
  %3767 = icmp ne i8 %3766, 0
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3769 = load i8, i8* %3768, align 1
  %3770 = icmp ne i8 %3769, 0
  %3771 = xor i1 %3767, %3770
  %3772 = xor i1 %3771, true
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %BRANCH_TAKEN, align 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3775 = select i1 %3771, i64 %3762, i64 %3760
  store i64 %3775, i64* %3774, align 8
  store %struct.Memory* %loadMem_453598, %struct.Memory** %MEMORY
  %loadBr_453598 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453598 = icmp eq i8 %loadBr_453598, 1
  br i1 %cmpBr_453598, label %block_.L_45360c, label %block_45359e

block_45359e:                                     ; preds = %block_.L_453591
  %loadMem_45359e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 1
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 15
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3784 to i64*
  %3785 = load i64, i64* %RBP.i509
  %3786 = sub i64 %3785, 200
  %3787 = load i64, i64* %PC.i507
  %3788 = add i64 %3787, 7
  store i64 %3788, i64* %PC.i507
  %3789 = inttoptr i64 %3786 to i32*
  %3790 = load i32, i32* %3789
  %3791 = sext i32 %3790 to i64
  store i64 %3791, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_45359e, %struct.Memory** %MEMORY
  %loadMem_4535a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 1
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 15
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %3800 to i64*
  %3801 = load i64, i64* %RBP.i506
  %3802 = load i64, i64* %RAX.i505
  %3803 = mul i64 %3802, 4
  %3804 = add i64 %3801, -176
  %3805 = add i64 %3804, %3803
  %3806 = load i64, i64* %PC.i504
  %3807 = add i64 %3806, 8
  store i64 %3807, i64* %PC.i504
  %3808 = inttoptr i64 %3805 to i32*
  %3809 = load i32, i32* %3808
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3810, align 1
  %3811 = and i32 %3809, 255
  %3812 = call i32 @llvm.ctpop.i32(i32 %3811)
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  %3815 = xor i8 %3814, 1
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3815, i8* %3816, align 1
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3817, align 1
  %3818 = icmp eq i32 %3809, 0
  %3819 = zext i1 %3818 to i8
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3819, i8* %3820, align 1
  %3821 = lshr i32 %3809, 31
  %3822 = trunc i32 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3822, i8* %3823, align 1
  %3824 = lshr i32 %3809, 31
  %3825 = xor i32 %3821, %3824
  %3826 = add i32 %3825, %3824
  %3827 = icmp eq i32 %3826, 2
  %3828 = zext i1 %3827 to i8
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3828, i8* %3829, align 1
  store %struct.Memory* %loadMem_4535a5, %struct.Memory** %MEMORY
  %loadMem_4535ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %PC.i503
  %3834 = add i64 %3833, 70
  %3835 = load i64, i64* %PC.i503
  %3836 = add i64 %3835, 6
  %3837 = load i64, i64* %PC.i503
  %3838 = add i64 %3837, 6
  store i64 %3838, i64* %PC.i503
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3840 = load i8, i8* %3839, align 1
  store i8 %3840, i8* %BRANCH_TAKEN, align 1
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3842 = icmp ne i8 %3840, 0
  %3843 = select i1 %3842, i64 %3834, i64 %3836
  store i64 %3843, i64* %3841, align 8
  store %struct.Memory* %loadMem_4535ad, %struct.Memory** %MEMORY
  %loadBr_4535ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4535ad = icmp eq i8 %loadBr_4535ad, 1
  br i1 %cmpBr_4535ad, label %block_.L_4535f3, label %block_4535b3

block_4535b3:                                     ; preds = %block_45359e
  %loadMem_4535b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 1
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 15
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i502
  %3854 = sub i64 %3853, 200
  %3855 = load i64, i64* %PC.i500
  %3856 = add i64 %3855, 6
  store i64 %3856, i64* %PC.i500
  %3857 = inttoptr i64 %3854 to i32*
  %3858 = load i32, i32* %3857
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_4535b3, %struct.Memory** %MEMORY
  %loadMem_4535b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 1
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %RAX.i499
  %3867 = load i64, i64* %PC.i498
  %3868 = add i64 %3867, 3
  store i64 %3868, i64* %PC.i498
  %3869 = trunc i64 %3866 to i32
  %3870 = add i32 65, %3869
  %3871 = zext i32 %3870 to i64
  store i64 %3871, i64* %RAX.i499, align 8
  %3872 = icmp ult i32 %3870, %3869
  %3873 = icmp ult i32 %3870, 65
  %3874 = or i1 %3872, %3873
  %3875 = zext i1 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3875, i8* %3876, align 1
  %3877 = and i32 %3870, 255
  %3878 = call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3881, i8* %3882, align 1
  %3883 = xor i64 65, %3866
  %3884 = trunc i64 %3883 to i32
  %3885 = xor i32 %3884, %3870
  %3886 = lshr i32 %3885, 4
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3888, i8* %3889, align 1
  %3890 = icmp eq i32 %3870, 0
  %3891 = zext i1 %3890 to i8
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3891, i8* %3892, align 1
  %3893 = lshr i32 %3870, 31
  %3894 = trunc i32 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3894, i8* %3895, align 1
  %3896 = lshr i32 %3869, 31
  %3897 = xor i32 %3893, %3896
  %3898 = add i32 %3897, %3893
  %3899 = icmp eq i32 %3898, 2
  %3900 = zext i1 %3899 to i8
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3900, i8* %3901, align 1
  store %struct.Memory* %loadMem_4535b9, %struct.Memory** %MEMORY
  %loadMem_4535bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %3908 = bitcast %union.anon* %3907 to %struct.anon.2*
  %AL.i496 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3908, i32 0, i32 0
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 5
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %3912 = bitcast %union.anon* %3911 to %struct.anon.2*
  %CL.i497 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3912, i32 0, i32 0
  %3913 = load i8, i8* %AL.i496
  %3914 = zext i8 %3913 to i64
  %3915 = load i64, i64* %PC.i495
  %3916 = add i64 %3915, 2
  store i64 %3916, i64* %PC.i495
  store i8 %3913, i8* %CL.i497, align 1
  store %struct.Memory* %loadMem_4535bc, %struct.Memory** %MEMORY
  %loadMem_4535be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 7
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RDX.i493 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 15
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %RBP.i494
  %3927 = sub i64 %3926, 48
  %3928 = load i64, i64* %PC.i492
  %3929 = add i64 %3928, 4
  store i64 %3929, i64* %PC.i492
  %3930 = inttoptr i64 %3927 to i64*
  %3931 = load i64, i64* %3930
  store i64 %3931, i64* %RDX.i493, align 8
  store %struct.Memory* %loadMem_4535be, %struct.Memory** %MEMORY
  %loadMem_4535c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 9
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RSI.i490 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 15
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %RBP.i491
  %3942 = sub i64 %3941, 188
  %3943 = load i64, i64* %PC.i489
  %3944 = add i64 %3943, 7
  store i64 %3944, i64* %PC.i489
  %3945 = inttoptr i64 %3942 to i32*
  %3946 = load i32, i32* %3945
  %3947 = sext i32 %3946 to i64
  store i64 %3947, i64* %RSI.i490, align 8
  store %struct.Memory* %loadMem_4535c2, %struct.Memory** %MEMORY
  %loadMem_4535c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 7
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 9
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RSI.i488 = bitcast %union.anon* %3956 to i64*
  %3957 = load i64, i64* %RDX.i487
  %3958 = load i64, i64* %RSI.i488
  %3959 = mul i64 %3958, 8
  %3960 = add i64 %3959, %3957
  %3961 = load i64, i64* %PC.i486
  %3962 = add i64 %3961, 4
  store i64 %3962, i64* %PC.i486
  %3963 = inttoptr i64 %3960 to i64*
  %3964 = load i64, i64* %3963
  store i64 %3964, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_4535c9, %struct.Memory** %MEMORY
  %loadMem_4535cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 9
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 15
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RBP.i485
  %3975 = sub i64 %3974, 56
  %3976 = load i64, i64* %PC.i483
  %3977 = add i64 %3976, 4
  store i64 %3977, i64* %PC.i483
  %3978 = inttoptr i64 %3975 to i64*
  %3979 = load i64, i64* %3978
  store i64 %3979, i64* %RSI.i484, align 8
  store %struct.Memory* %loadMem_4535cd, %struct.Memory** %MEMORY
  %loadMem_4535d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 11
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RDI.i481 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 15
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %RBP.i482
  %3990 = sub i64 %3989, 188
  %3991 = load i64, i64* %PC.i480
  %3992 = add i64 %3991, 7
  store i64 %3992, i64* %PC.i480
  %3993 = inttoptr i64 %3990 to i32*
  %3994 = load i32, i32* %3993
  %3995 = sext i32 %3994 to i64
  store i64 %3995, i64* %RDI.i481, align 8
  store %struct.Memory* %loadMem_4535d1, %struct.Memory** %MEMORY
  %loadMem_4535d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 33
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 9
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RSI.i478 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 11
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RDI.i479 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %RSI.i478
  %4006 = load i64, i64* %RDI.i479
  %4007 = mul i64 %4006, 4
  %4008 = add i64 %4007, %4005
  %4009 = load i64, i64* %PC.i477
  %4010 = add i64 %4009, 4
  store i64 %4010, i64* %PC.i477
  %4011 = inttoptr i64 %4008 to i32*
  %4012 = load i32, i32* %4011
  %4013 = sext i32 %4012 to i64
  store i64 %4013, i64* %RSI.i478, align 8
  store %struct.Memory* %loadMem_4535d8, %struct.Memory** %MEMORY
  %loadMem_4535dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 5
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %4020 = bitcast %union.anon* %4019 to %struct.anon.2*
  %CL.i474 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4020, i32 0, i32 0
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 7
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RDX.i475 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 9
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RSI.i476 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RDX.i475
  %4028 = load i64, i64* %RSI.i476
  %4029 = add i64 %4028, %4027
  %4030 = load i8, i8* %CL.i474
  %4031 = zext i8 %4030 to i64
  %4032 = load i64, i64* %PC.i473
  %4033 = add i64 %4032, 3
  store i64 %4033, i64* %PC.i473
  %4034 = inttoptr i64 %4029 to i8*
  store i8 %4030, i8* %4034
  store %struct.Memory* %loadMem_4535dc, %struct.Memory** %MEMORY
  %loadMem_4535df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 33
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4037 to i64*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 7
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 15
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %RBP.i472
  %4045 = sub i64 %4044, 56
  %4046 = load i64, i64* %PC.i470
  %4047 = add i64 %4046, 4
  store i64 %4047, i64* %PC.i470
  %4048 = inttoptr i64 %4045 to i64*
  %4049 = load i64, i64* %4048
  store i64 %4049, i64* %RDX.i471, align 8
  store %struct.Memory* %loadMem_4535df, %struct.Memory** %MEMORY
  %loadMem_4535e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 9
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RSI.i468 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 15
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4058 to i64*
  %4059 = load i64, i64* %RBP.i469
  %4060 = sub i64 %4059, 188
  %4061 = load i64, i64* %PC.i467
  %4062 = add i64 %4061, 7
  store i64 %4062, i64* %PC.i467
  %4063 = inttoptr i64 %4060 to i32*
  %4064 = load i32, i32* %4063
  %4065 = sext i32 %4064 to i64
  store i64 %4065, i64* %RSI.i468, align 8
  store %struct.Memory* %loadMem_4535e3, %struct.Memory** %MEMORY
  %loadMem_4535ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 1
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 7
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RDX.i465 = bitcast %union.anon* %4074 to i64*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 9
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %RSI.i466 = bitcast %union.anon* %4077 to i64*
  %4078 = load i64, i64* %RDX.i465
  %4079 = load i64, i64* %RSI.i466
  %4080 = mul i64 %4079, 4
  %4081 = add i64 %4080, %4078
  %4082 = load i64, i64* %PC.i463
  %4083 = add i64 %4082, 3
  store i64 %4083, i64* %PC.i463
  %4084 = inttoptr i64 %4081 to i32*
  %4085 = load i32, i32* %4084
  %4086 = zext i32 %4085 to i64
  store i64 %4086, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_4535ea, %struct.Memory** %MEMORY
  %loadMem_4535ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 1
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RAX.i462
  %4094 = load i64, i64* %PC.i461
  %4095 = add i64 %4094, 3
  store i64 %4095, i64* %PC.i461
  %4096 = trunc i64 %4093 to i32
  %4097 = add i32 1, %4096
  %4098 = zext i32 %4097 to i64
  store i64 %4098, i64* %RAX.i462, align 8
  %4099 = icmp ult i32 %4097, %4096
  %4100 = icmp ult i32 %4097, 1
  %4101 = or i1 %4099, %4100
  %4102 = zext i1 %4101 to i8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4102, i8* %4103, align 1
  %4104 = and i32 %4097, 255
  %4105 = call i32 @llvm.ctpop.i32(i32 %4104)
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = xor i8 %4107, 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4108, i8* %4109, align 1
  %4110 = xor i64 1, %4093
  %4111 = trunc i64 %4110 to i32
  %4112 = xor i32 %4111, %4097
  %4113 = lshr i32 %4112, 4
  %4114 = trunc i32 %4113 to i8
  %4115 = and i8 %4114, 1
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4115, i8* %4116, align 1
  %4117 = icmp eq i32 %4097, 0
  %4118 = zext i1 %4117 to i8
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4118, i8* %4119, align 1
  %4120 = lshr i32 %4097, 31
  %4121 = trunc i32 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4121, i8* %4122, align 1
  %4123 = lshr i32 %4096, 31
  %4124 = xor i32 %4120, %4123
  %4125 = add i32 %4124, %4120
  %4126 = icmp eq i32 %4125, 2
  %4127 = zext i1 %4126 to i8
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4127, i8* %4128, align 1
  store %struct.Memory* %loadMem_4535ed, %struct.Memory** %MEMORY
  %loadMem_4535f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 33
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 1
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %4134 to i32*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 7
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 9
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RSI.i460 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RDX.i459
  %4142 = load i64, i64* %RSI.i460
  %4143 = mul i64 %4142, 4
  %4144 = add i64 %4143, %4141
  %4145 = load i32, i32* %EAX.i458
  %4146 = zext i32 %4145 to i64
  %4147 = load i64, i64* %PC.i457
  %4148 = add i64 %4147, 3
  store i64 %4148, i64* %PC.i457
  %4149 = inttoptr i64 %4144 to i32*
  store i32 %4145, i32* %4149
  store %struct.Memory* %loadMem_4535f0, %struct.Memory** %MEMORY
  br label %block_.L_4535f3

block_.L_4535f3:                                  ; preds = %block_4535b3, %block_45359e
  %loadMem_4535f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 33
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %PC.i456
  %4154 = add i64 %4153, 5
  %4155 = load i64, i64* %PC.i456
  %4156 = add i64 %4155, 5
  store i64 %4156, i64* %PC.i456
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4154, i64* %4157, align 8
  store %struct.Memory* %loadMem_4535f3, %struct.Memory** %MEMORY
  br label %block_.L_4535f8

block_.L_4535f8:                                  ; preds = %block_.L_4535f3
  %loadMem_4535f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 1
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 15
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4166 to i64*
  %4167 = load i64, i64* %RBP.i455
  %4168 = sub i64 %4167, 200
  %4169 = load i64, i64* %PC.i453
  %4170 = add i64 %4169, 6
  store i64 %4170, i64* %PC.i453
  %4171 = inttoptr i64 %4168 to i32*
  %4172 = load i32, i32* %4171
  %4173 = zext i32 %4172 to i64
  store i64 %4173, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_4535f8, %struct.Memory** %MEMORY
  %loadMem_4535fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 33
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 1
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %4179 to i64*
  %4180 = load i64, i64* %RAX.i452
  %4181 = load i64, i64* %PC.i451
  %4182 = add i64 %4181, 3
  store i64 %4182, i64* %PC.i451
  %4183 = trunc i64 %4180 to i32
  %4184 = add i32 1, %4183
  %4185 = zext i32 %4184 to i64
  store i64 %4185, i64* %RAX.i452, align 8
  %4186 = icmp ult i32 %4184, %4183
  %4187 = icmp ult i32 %4184, 1
  %4188 = or i1 %4186, %4187
  %4189 = zext i1 %4188 to i8
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4189, i8* %4190, align 1
  %4191 = and i32 %4184, 255
  %4192 = call i32 @llvm.ctpop.i32(i32 %4191)
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  %4195 = xor i8 %4194, 1
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4195, i8* %4196, align 1
  %4197 = xor i64 1, %4180
  %4198 = trunc i64 %4197 to i32
  %4199 = xor i32 %4198, %4184
  %4200 = lshr i32 %4199, 4
  %4201 = trunc i32 %4200 to i8
  %4202 = and i8 %4201, 1
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4202, i8* %4203, align 1
  %4204 = icmp eq i32 %4184, 0
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4205, i8* %4206, align 1
  %4207 = lshr i32 %4184, 31
  %4208 = trunc i32 %4207 to i8
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4208, i8* %4209, align 1
  %4210 = lshr i32 %4183, 31
  %4211 = xor i32 %4207, %4210
  %4212 = add i32 %4211, %4207
  %4213 = icmp eq i32 %4212, 2
  %4214 = zext i1 %4213 to i8
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4214, i8* %4215, align 1
  store %struct.Memory* %loadMem_4535fe, %struct.Memory** %MEMORY
  %loadMem_453601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 33
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 1
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %4221 to i32*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 15
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %4224 to i64*
  %4225 = load i64, i64* %RBP.i450
  %4226 = sub i64 %4225, 200
  %4227 = load i32, i32* %EAX.i449
  %4228 = zext i32 %4227 to i64
  %4229 = load i64, i64* %PC.i448
  %4230 = add i64 %4229, 6
  store i64 %4230, i64* %PC.i448
  %4231 = inttoptr i64 %4226 to i32*
  store i32 %4227, i32* %4231
  store %struct.Memory* %loadMem_453601, %struct.Memory** %MEMORY
  %loadMem_453607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4234 to i64*
  %4235 = load i64, i64* %PC.i447
  %4236 = add i64 %4235, -118
  %4237 = load i64, i64* %PC.i447
  %4238 = add i64 %4237, 5
  store i64 %4238, i64* %PC.i447
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4236, i64* %4239, align 8
  store %struct.Memory* %loadMem_453607, %struct.Memory** %MEMORY
  br label %block_.L_453591

block_.L_45360c:                                  ; preds = %block_.L_453591
  %loadMem_45360c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 15
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %4245 to i64*
  %4246 = load i64, i64* %RBP.i446
  %4247 = sub i64 %4246, 72
  %4248 = load i64, i64* %PC.i445
  %4249 = add i64 %4248, 4
  store i64 %4249, i64* %PC.i445
  %4250 = inttoptr i64 %4247 to i32*
  %4251 = load i32, i32* %4250
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4252, align 1
  %4253 = and i32 %4251, 255
  %4254 = call i32 @llvm.ctpop.i32(i32 %4253)
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4257, i8* %4258, align 1
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4259, align 1
  %4260 = icmp eq i32 %4251, 0
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4261, i8* %4262, align 1
  %4263 = lshr i32 %4251, 31
  %4264 = trunc i32 %4263 to i8
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4264, i8* %4265, align 1
  %4266 = lshr i32 %4251, 31
  %4267 = xor i32 %4263, %4266
  %4268 = add i32 %4267, %4266
  %4269 = icmp eq i32 %4268, 2
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4270, i8* %4271, align 1
  store %struct.Memory* %loadMem_45360c, %struct.Memory** %MEMORY
  %loadMem_453610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4274 to i64*
  %4275 = load i64, i64* %PC.i444
  %4276 = add i64 %4275, 60
  %4277 = load i64, i64* %PC.i444
  %4278 = add i64 %4277, 6
  %4279 = load i64, i64* %PC.i444
  %4280 = add i64 %4279, 6
  store i64 %4280, i64* %PC.i444
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4282 = load i8, i8* %4281, align 1
  store i8 %4282, i8* %BRANCH_TAKEN, align 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4284 = icmp ne i8 %4282, 0
  %4285 = select i1 %4284, i64 %4276, i64 %4278
  store i64 %4285, i64* %4283, align 8
  store %struct.Memory* %loadMem_453610, %struct.Memory** %MEMORY
  %loadBr_453610 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453610 = icmp eq i8 %loadBr_453610, 1
  br i1 %cmpBr_453610, label %block_.L_45364c, label %block_453616

block_453616:                                     ; preds = %block_.L_45360c
  %loadMem_453616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 1
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 15
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %4294 to i64*
  %4295 = load i64, i64* %RBP.i443
  %4296 = sub i64 %4295, 48
  %4297 = load i64, i64* %PC.i441
  %4298 = add i64 %4297, 4
  store i64 %4298, i64* %PC.i441
  %4299 = inttoptr i64 %4296 to i64*
  %4300 = load i64, i64* %4299
  store i64 %4300, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_453616, %struct.Memory** %MEMORY
  %loadMem_45361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 5
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 15
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RBP.i440
  %4311 = sub i64 %4310, 188
  %4312 = load i64, i64* %PC.i438
  %4313 = add i64 %4312, 7
  store i64 %4313, i64* %PC.i438
  %4314 = inttoptr i64 %4311 to i32*
  %4315 = load i32, i32* %4314
  %4316 = sext i32 %4315 to i64
  store i64 %4316, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_45361a, %struct.Memory** %MEMORY
  %loadMem_453621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 33
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 1
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 5
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %RAX.i436
  %4327 = load i64, i64* %RCX.i437
  %4328 = mul i64 %4327, 8
  %4329 = add i64 %4328, %4326
  %4330 = load i64, i64* %PC.i435
  %4331 = add i64 %4330, 4
  store i64 %4331, i64* %PC.i435
  %4332 = inttoptr i64 %4329 to i64*
  %4333 = load i64, i64* %4332
  store i64 %4333, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_453621, %struct.Memory** %MEMORY
  %loadMem_453625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 5
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 15
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %4342 to i64*
  %4343 = load i64, i64* %RBP.i434
  %4344 = sub i64 %4343, 56
  %4345 = load i64, i64* %PC.i432
  %4346 = add i64 %4345, 4
  store i64 %4346, i64* %PC.i432
  %4347 = inttoptr i64 %4344 to i64*
  %4348 = load i64, i64* %4347
  store i64 %4348, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_453625, %struct.Memory** %MEMORY
  %loadMem_453629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 33
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4351 to i64*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 7
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 15
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %4357 to i64*
  %4358 = load i64, i64* %RBP.i431
  %4359 = sub i64 %4358, 188
  %4360 = load i64, i64* %PC.i429
  %4361 = add i64 %4360, 7
  store i64 %4361, i64* %PC.i429
  %4362 = inttoptr i64 %4359 to i32*
  %4363 = load i32, i32* %4362
  %4364 = sext i32 %4363 to i64
  store i64 %4364, i64* %RDX.i430, align 8
  store %struct.Memory* %loadMem_453629, %struct.Memory** %MEMORY
  %loadMem_453630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 33
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 5
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 7
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RCX.i427
  %4375 = load i64, i64* %RDX.i428
  %4376 = mul i64 %4375, 4
  %4377 = add i64 %4376, %4374
  %4378 = load i64, i64* %PC.i426
  %4379 = add i64 %4378, 4
  store i64 %4379, i64* %PC.i426
  %4380 = inttoptr i64 %4377 to i32*
  %4381 = load i32, i32* %4380
  %4382 = sext i32 %4381 to i64
  store i64 %4382, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_453630, %struct.Memory** %MEMORY
  %loadMem_453634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 33
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 1
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 5
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %4391 to i64*
  %4392 = load i64, i64* %RAX.i424
  %4393 = load i64, i64* %RCX.i425
  %4394 = add i64 %4393, %4392
  %4395 = load i64, i64* %PC.i423
  %4396 = add i64 %4395, 4
  store i64 %4396, i64* %PC.i423
  %4397 = inttoptr i64 %4394 to i8*
  store i8 32, i8* %4397
  store %struct.Memory* %loadMem_453634, %struct.Memory** %MEMORY
  %loadMem_453638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 33
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4400 to i64*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 1
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 15
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %RBP.i422
  %4408 = sub i64 %4407, 56
  %4409 = load i64, i64* %PC.i420
  %4410 = add i64 %4409, 4
  store i64 %4410, i64* %PC.i420
  %4411 = inttoptr i64 %4408 to i64*
  %4412 = load i64, i64* %4411
  store i64 %4412, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_453638, %struct.Memory** %MEMORY
  %loadMem_45363c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 33
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4415 to i64*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 5
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %4418 to i64*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 15
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %RBP.i419
  %4423 = sub i64 %4422, 188
  %4424 = load i64, i64* %PC.i417
  %4425 = add i64 %4424, 7
  store i64 %4425, i64* %PC.i417
  %4426 = inttoptr i64 %4423 to i32*
  %4427 = load i32, i32* %4426
  %4428 = sext i32 %4427 to i64
  store i64 %4428, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_45363c, %struct.Memory** %MEMORY
  %loadMem_453643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 1
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 5
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 9
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RSI.i416 = bitcast %union.anon* %4440 to i64*
  %4441 = load i64, i64* %RAX.i414
  %4442 = load i64, i64* %RCX.i415
  %4443 = mul i64 %4442, 4
  %4444 = add i64 %4443, %4441
  %4445 = load i64, i64* %PC.i413
  %4446 = add i64 %4445, 3
  store i64 %4446, i64* %PC.i413
  %4447 = inttoptr i64 %4444 to i32*
  %4448 = load i32, i32* %4447
  %4449 = zext i32 %4448 to i64
  store i64 %4449, i64* %RSI.i416, align 8
  store %struct.Memory* %loadMem_453643, %struct.Memory** %MEMORY
  %loadMem_453646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 9
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %4455 to i64*
  %4456 = load i64, i64* %RSI.i412
  %4457 = load i64, i64* %PC.i411
  %4458 = add i64 %4457, 3
  store i64 %4458, i64* %PC.i411
  %4459 = trunc i64 %4456 to i32
  %4460 = add i32 1, %4459
  %4461 = zext i32 %4460 to i64
  store i64 %4461, i64* %RSI.i412, align 8
  %4462 = icmp ult i32 %4460, %4459
  %4463 = icmp ult i32 %4460, 1
  %4464 = or i1 %4462, %4463
  %4465 = zext i1 %4464 to i8
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4465, i8* %4466, align 1
  %4467 = and i32 %4460, 255
  %4468 = call i32 @llvm.ctpop.i32(i32 %4467)
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  %4471 = xor i8 %4470, 1
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4471, i8* %4472, align 1
  %4473 = xor i64 1, %4456
  %4474 = trunc i64 %4473 to i32
  %4475 = xor i32 %4474, %4460
  %4476 = lshr i32 %4475, 4
  %4477 = trunc i32 %4476 to i8
  %4478 = and i8 %4477, 1
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4478, i8* %4479, align 1
  %4480 = icmp eq i32 %4460, 0
  %4481 = zext i1 %4480 to i8
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4481, i8* %4482, align 1
  %4483 = lshr i32 %4460, 31
  %4484 = trunc i32 %4483 to i8
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4484, i8* %4485, align 1
  %4486 = lshr i32 %4459, 31
  %4487 = xor i32 %4483, %4486
  %4488 = add i32 %4487, %4483
  %4489 = icmp eq i32 %4488, 2
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4490, i8* %4491, align 1
  store %struct.Memory* %loadMem_453646, %struct.Memory** %MEMORY
  %loadMem_453649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 33
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4494 to i64*
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 9
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %ESI.i408 = bitcast %union.anon* %4497 to i32*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 1
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 5
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RAX.i409
  %4505 = load i64, i64* %RCX.i410
  %4506 = mul i64 %4505, 4
  %4507 = add i64 %4506, %4504
  %4508 = load i32, i32* %ESI.i408
  %4509 = zext i32 %4508 to i64
  %4510 = load i64, i64* %PC.i407
  %4511 = add i64 %4510, 3
  store i64 %4511, i64* %PC.i407
  %4512 = inttoptr i64 %4507 to i32*
  store i32 %4508, i32* %4512
  store %struct.Memory* %loadMem_453649, %struct.Memory** %MEMORY
  br label %block_.L_45364c

block_.L_45364c:                                  ; preds = %block_453616, %block_.L_45360c
  %loadMem_45364c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %PC.i406
  %4517 = add i64 %4516, 5
  %4518 = load i64, i64* %PC.i406
  %4519 = add i64 %4518, 5
  store i64 %4519, i64* %PC.i406
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4517, i64* %4520, align 8
  store %struct.Memory* %loadMem_45364c, %struct.Memory** %MEMORY
  br label %block_.L_453651

block_.L_453651:                                  ; preds = %block_.L_45364c
  %loadMem_453651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 1
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 15
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RBP.i405
  %4531 = sub i64 %4530, 188
  %4532 = load i64, i64* %PC.i403
  %4533 = add i64 %4532, 6
  store i64 %4533, i64* %PC.i403
  %4534 = inttoptr i64 %4531 to i32*
  %4535 = load i32, i32* %4534
  %4536 = zext i32 %4535 to i64
  store i64 %4536, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_453651, %struct.Memory** %MEMORY
  %loadMem_453657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 1
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4542 to i64*
  %4543 = load i64, i64* %RAX.i402
  %4544 = load i64, i64* %PC.i401
  %4545 = add i64 %4544, 3
  store i64 %4545, i64* %PC.i401
  %4546 = trunc i64 %4543 to i32
  %4547 = add i32 1, %4546
  %4548 = zext i32 %4547 to i64
  store i64 %4548, i64* %RAX.i402, align 8
  %4549 = icmp ult i32 %4547, %4546
  %4550 = icmp ult i32 %4547, 1
  %4551 = or i1 %4549, %4550
  %4552 = zext i1 %4551 to i8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4552, i8* %4553, align 1
  %4554 = and i32 %4547, 255
  %4555 = call i32 @llvm.ctpop.i32(i32 %4554)
  %4556 = trunc i32 %4555 to i8
  %4557 = and i8 %4556, 1
  %4558 = xor i8 %4557, 1
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4558, i8* %4559, align 1
  %4560 = xor i64 1, %4543
  %4561 = trunc i64 %4560 to i32
  %4562 = xor i32 %4561, %4547
  %4563 = lshr i32 %4562, 4
  %4564 = trunc i32 %4563 to i8
  %4565 = and i8 %4564, 1
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4565, i8* %4566, align 1
  %4567 = icmp eq i32 %4547, 0
  %4568 = zext i1 %4567 to i8
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4568, i8* %4569, align 1
  %4570 = lshr i32 %4547, 31
  %4571 = trunc i32 %4570 to i8
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4571, i8* %4572, align 1
  %4573 = lshr i32 %4546, 31
  %4574 = xor i32 %4570, %4573
  %4575 = add i32 %4574, %4570
  %4576 = icmp eq i32 %4575, 2
  %4577 = zext i1 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4577, i8* %4578, align 1
  store %struct.Memory* %loadMem_453657, %struct.Memory** %MEMORY
  %loadMem_45365a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 33
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4581 to i64*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 1
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %4584 to i32*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 15
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %4587 to i64*
  %4588 = load i64, i64* %RBP.i400
  %4589 = sub i64 %4588, 188
  %4590 = load i32, i32* %EAX.i399
  %4591 = zext i32 %4590 to i64
  %4592 = load i64, i64* %PC.i398
  %4593 = add i64 %4592, 6
  store i64 %4593, i64* %PC.i398
  %4594 = inttoptr i64 %4589 to i32*
  store i32 %4590, i32* %4594
  store %struct.Memory* %loadMem_45365a, %struct.Memory** %MEMORY
  %loadMem_453660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %PC.i397
  %4599 = add i64 %4598, -686
  %4600 = load i64, i64* %PC.i397
  %4601 = add i64 %4600, 5
  store i64 %4601, i64* %PC.i397
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4599, i64* %4602, align 8
  store %struct.Memory* %loadMem_453660, %struct.Memory** %MEMORY
  br label %block_.L_4533b2

block_.L_453665:                                  ; preds = %block_.L_4533b2
  %loadMem_453665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 11
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RDI.i396 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %PC.i395
  %4610 = add i64 %4609, 10
  store i64 %4610, i64* %PC.i395
  store i64 ptrtoint (%G__0x45b4d2_type* @G__0x45b4d2 to i64), i64* %RDI.i396, align 8
  store %struct.Memory* %loadMem_453665, %struct.Memory** %MEMORY
  %loadMem_45366f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 33
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 9
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RSI.i394 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %PC.i393
  %4618 = add i64 %4617, 5
  store i64 %4618, i64* %PC.i393
  store i64 268, i64* %RSI.i394, align 8
  store %struct.Memory* %loadMem_45366f, %struct.Memory** %MEMORY
  %loadMem_453674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 33
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 1
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 15
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %4627 to i64*
  %4628 = load i64, i64* %RBP.i392
  %4629 = sub i64 %4628, 16
  %4630 = load i64, i64* %PC.i390
  %4631 = add i64 %4630, 3
  store i64 %4631, i64* %PC.i390
  %4632 = inttoptr i64 %4629 to i32*
  %4633 = load i32, i32* %4632
  %4634 = zext i32 %4633 to i64
  store i64 %4634, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_453674, %struct.Memory** %MEMORY
  %loadMem_453677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 1
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RAX.i389
  %4642 = load i64, i64* %PC.i388
  %4643 = add i64 %4642, 3
  store i64 %4643, i64* %PC.i388
  %4644 = trunc i64 %4641 to i32
  %4645 = add i32 1, %4644
  %4646 = zext i32 %4645 to i64
  store i64 %4646, i64* %RAX.i389, align 8
  %4647 = icmp ult i32 %4645, %4644
  %4648 = icmp ult i32 %4645, 1
  %4649 = or i1 %4647, %4648
  %4650 = zext i1 %4649 to i8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4650, i8* %4651, align 1
  %4652 = and i32 %4645, 255
  %4653 = call i32 @llvm.ctpop.i32(i32 %4652)
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  %4656 = xor i8 %4655, 1
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4656, i8* %4657, align 1
  %4658 = xor i64 1, %4641
  %4659 = trunc i64 %4658 to i32
  %4660 = xor i32 %4659, %4645
  %4661 = lshr i32 %4660, 4
  %4662 = trunc i32 %4661 to i8
  %4663 = and i8 %4662, 1
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4663, i8* %4664, align 1
  %4665 = icmp eq i32 %4645, 0
  %4666 = zext i1 %4665 to i8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4666, i8* %4667, align 1
  %4668 = lshr i32 %4645, 31
  %4669 = trunc i32 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4669, i8* %4670, align 1
  %4671 = lshr i32 %4644, 31
  %4672 = xor i32 %4668, %4671
  %4673 = add i32 %4672, %4668
  %4674 = icmp eq i32 %4673, 2
  %4675 = zext i1 %4674 to i8
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4675, i8* %4676, align 1
  store %struct.Memory* %loadMem_453677, %struct.Memory** %MEMORY
  %loadMem_45367a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 33
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 1
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %4682 to i32*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 5
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %4685 to i64*
  %4686 = load i32, i32* %EAX.i386
  %4687 = zext i32 %4686 to i64
  %4688 = load i64, i64* %PC.i385
  %4689 = add i64 %4688, 3
  store i64 %4689, i64* %PC.i385
  %4690 = shl i64 %4687, 32
  %4691 = ashr exact i64 %4690, 32
  store i64 %4691, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_45367a, %struct.Memory** %MEMORY
  %loadMem_45367d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 5
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %4697 to i64*
  %4698 = load i64, i64* %RCX.i384
  %4699 = load i64, i64* %PC.i383
  %4700 = add i64 %4699, 4
  store i64 %4700, i64* %PC.i383
  store %struct.Memory* %loadMem_45367d, %struct.Memory** %MEMORY
  %loadMem_453681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 5
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 7
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RCX.i381
  %4711 = load i64, i64* %PC.i380
  %4712 = add i64 %4711, 3
  store i64 %4712, i64* %PC.i380
  store i64 %4710, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_453681, %struct.Memory** %MEMORY
  %loadMem1_453684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 33
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4715 to i64*
  %4716 = load i64, i64* %PC.i379
  %4717 = add i64 %4716, -54820
  %4718 = load i64, i64* %PC.i379
  %4719 = add i64 %4718, 5
  %4720 = load i64, i64* %PC.i379
  %4721 = add i64 %4720, 5
  store i64 %4721, i64* %PC.i379
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4723 = load i64, i64* %4722, align 8
  %4724 = add i64 %4723, -8
  %4725 = inttoptr i64 %4724 to i64*
  store i64 %4719, i64* %4725
  store i64 %4724, i64* %4722, align 8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4717, i64* %4726, align 8
  store %struct.Memory* %loadMem1_453684, %struct.Memory** %MEMORY
  %loadMem2_453684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453684 = load i64, i64* %3
  %call2_453684 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_453684, %struct.Memory* %loadMem2_453684)
  store %struct.Memory* %call2_453684, %struct.Memory** %MEMORY
  %loadMem_453689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 33
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4730, i64 0, i64 0
  %YMM0.i377 = bitcast %union.VectorReg* %4731 to %"class.std::bitset"*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4732, i64 0, i64 0
  %XMM0.i378 = bitcast %union.VectorReg* %4733 to %union.vec128_t*
  %4734 = bitcast %"class.std::bitset"* %YMM0.i377 to i8*
  %4735 = bitcast %"class.std::bitset"* %YMM0.i377 to i8*
  %4736 = bitcast %union.vec128_t* %XMM0.i378 to i8*
  %4737 = load i64, i64* %PC.i376
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i376
  %4739 = bitcast i8* %4735 to i64*
  %4740 = load i64, i64* %4739, align 1
  %4741 = getelementptr inbounds i8, i8* %4735, i64 8
  %4742 = bitcast i8* %4741 to i64*
  %4743 = load i64, i64* %4742, align 1
  %4744 = bitcast i8* %4736 to i64*
  %4745 = load i64, i64* %4744, align 1
  %4746 = getelementptr inbounds i8, i8* %4736, i64 8
  %4747 = bitcast i8* %4746 to i64*
  %4748 = load i64, i64* %4747, align 1
  %4749 = xor i64 %4745, %4740
  %4750 = xor i64 %4748, %4743
  %4751 = trunc i64 %4749 to i32
  %4752 = lshr i64 %4749, 32
  %4753 = trunc i64 %4752 to i32
  %4754 = bitcast i8* %4734 to i32*
  store i32 %4751, i32* %4754, align 1
  %4755 = getelementptr inbounds i8, i8* %4734, i64 4
  %4756 = bitcast i8* %4755 to i32*
  store i32 %4753, i32* %4756, align 1
  %4757 = trunc i64 %4750 to i32
  %4758 = getelementptr inbounds i8, i8* %4734, i64 8
  %4759 = bitcast i8* %4758 to i32*
  store i32 %4757, i32* %4759, align 1
  %4760 = lshr i64 %4750, 32
  %4761 = trunc i64 %4760 to i32
  %4762 = getelementptr inbounds i8, i8* %4734, i64 12
  %4763 = bitcast i8* %4762 to i32*
  store i32 %4761, i32* %4763, align 1
  store %struct.Memory* %loadMem_453689, %struct.Memory** %MEMORY
  %loadMem_45368c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 1
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 15
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %4772 to i64*
  %4773 = load i64, i64* %RBP.i375
  %4774 = sub i64 %4773, 184
  %4775 = load i64, i64* %RAX.i374
  %4776 = load i64, i64* %PC.i373
  %4777 = add i64 %4776, 7
  store i64 %4777, i64* %PC.i373
  %4778 = inttoptr i64 %4774 to i64*
  store i64 %4775, i64* %4778
  store %struct.Memory* %loadMem_45368c, %struct.Memory** %MEMORY
  %loadMem_453693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 33
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 15
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4784 to i64*
  %4785 = load i64, i64* %RBP.i372
  %4786 = sub i64 %4785, 228
  %4787 = load i64, i64* %PC.i371
  %4788 = add i64 %4787, 10
  store i64 %4788, i64* %PC.i371
  %4789 = inttoptr i64 %4786 to i32*
  store i32 42, i32* %4789
  store %struct.Memory* %loadMem_453693, %struct.Memory** %MEMORY
  %loadMem_45369d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 11
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RDI.i369 = bitcast %union.anon* %4795 to i64*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 15
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %4798 to i64*
  %4799 = load i64, i64* %RBP.i370
  %4800 = sub i64 %4799, 24
  %4801 = load i64, i64* %PC.i368
  %4802 = add i64 %4801, 4
  store i64 %4802, i64* %PC.i368
  %4803 = inttoptr i64 %4800 to i64*
  %4804 = load i64, i64* %4803
  store i64 %4804, i64* %RDI.i369, align 8
  store %struct.Memory* %loadMem_45369d, %struct.Memory** %MEMORY
  %loadMem_4536a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 33
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 9
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RSI.i366 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 15
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %4813 to i64*
  %4814 = load i64, i64* %RBP.i367
  %4815 = sub i64 %4814, 12
  %4816 = load i64, i64* %PC.i365
  %4817 = add i64 %4816, 3
  store i64 %4817, i64* %PC.i365
  %4818 = inttoptr i64 %4815 to i32*
  %4819 = load i32, i32* %4818
  %4820 = zext i32 %4819 to i64
  store i64 %4820, i64* %RSI.i366, align 8
  store %struct.Memory* %loadMem_4536a1, %struct.Memory** %MEMORY
  %loadMem1_4536a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 33
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %PC.i364
  %4825 = add i64 %4824, -5988
  %4826 = load i64, i64* %PC.i364
  %4827 = add i64 %4826, 5
  %4828 = load i64, i64* %PC.i364
  %4829 = add i64 %4828, 5
  store i64 %4829, i64* %PC.i364
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4831 = load i64, i64* %4830, align 8
  %4832 = add i64 %4831, -8
  %4833 = inttoptr i64 %4832 to i64*
  store i64 %4827, i64* %4833
  store i64 %4832, i64* %4830, align 8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4825, i64* %4834, align 8
  store %struct.Memory* %loadMem1_4536a4, %struct.Memory** %MEMORY
  %loadMem2_4536a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4536a4 = load i64, i64* %3
  %call2_4536a4 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %loadPC_4536a4, %struct.Memory* %loadMem2_4536a4)
  store %struct.Memory* %call2_4536a4, %struct.Memory** %MEMORY
  %loadMem_4536a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 15
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %4840 to i64*
  %4841 = load i64, i64* %RBP.i363
  %4842 = sub i64 %4841, 224
  %4843 = load i64, i64* %PC.i362
  %4844 = add i64 %4843, 10
  store i64 %4844, i64* %PC.i362
  %4845 = inttoptr i64 %4842 to i32*
  store i32 0, i32* %4845
  store %struct.Memory* %loadMem_4536a9, %struct.Memory** %MEMORY
  br label %block_.L_4536b3

block_.L_4536b3:                                  ; preds = %block_.L_4538f9, %block_.L_453665
  %loadMem_4536b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 33
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4848 to i64*
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 1
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 15
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %4854 to i64*
  %4855 = load i64, i64* %RBP.i361
  %4856 = sub i64 %4855, 224
  %4857 = load i64, i64* %PC.i359
  %4858 = add i64 %4857, 6
  store i64 %4858, i64* %PC.i359
  %4859 = inttoptr i64 %4856 to i32*
  %4860 = load i32, i32* %4859
  %4861 = zext i32 %4860 to i64
  store i64 %4861, i64* %RAX.i360, align 8
  store %struct.Memory* %loadMem_4536b3, %struct.Memory** %MEMORY
  %loadMem_4536b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 33
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 5
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 15
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %4870 to i64*
  %4871 = load i64, i64* %RBP.i358
  %4872 = sub i64 %4871, 220
  %4873 = load i64, i64* %PC.i356
  %4874 = add i64 %4873, 6
  store i64 %4874, i64* %PC.i356
  %4875 = inttoptr i64 %4872 to i32*
  %4876 = load i32, i32* %4875
  %4877 = zext i32 %4876 to i64
  store i64 %4877, i64* %RCX.i357, align 8
  store %struct.Memory* %loadMem_4536b9, %struct.Memory** %MEMORY
  %loadMem_4536bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 33
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %4880 to i64*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 5
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 15
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %RCX.i354
  %4888 = load i64, i64* %RBP.i355
  %4889 = sub i64 %4888, 12
  %4890 = load i64, i64* %PC.i353
  %4891 = add i64 %4890, 4
  store i64 %4891, i64* %PC.i353
  %4892 = inttoptr i64 %4889 to i32*
  %4893 = load i32, i32* %4892
  %4894 = shl i64 %4887, 32
  %4895 = ashr exact i64 %4894, 32
  %4896 = sext i32 %4893 to i64
  %4897 = mul i64 %4896, %4895
  %4898 = trunc i64 %4897 to i32
  %4899 = and i64 %4897, 4294967295
  store i64 %4899, i64* %RCX.i354, align 8
  %4900 = shl i64 %4897, 32
  %4901 = ashr exact i64 %4900, 32
  %4902 = icmp ne i64 %4901, %4897
  %4903 = zext i1 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4903, i8* %4904, align 1
  %4905 = and i32 %4898, 255
  %4906 = call i32 @llvm.ctpop.i32(i32 %4905)
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  %4909 = xor i8 %4908, 1
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4909, i8* %4910, align 1
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4911, align 1
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4912, align 1
  %4913 = lshr i32 %4898, 31
  %4914 = trunc i32 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4914, i8* %4915, align 1
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4903, i8* %4916, align 1
  store %struct.Memory* %loadMem_4536bf, %struct.Memory** %MEMORY
  %loadMem_4536c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 33
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 1
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %4922 to i32*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 5
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4925 to i32*
  %4926 = load i32, i32* %EAX.i352
  %4927 = zext i32 %4926 to i64
  %4928 = load i32, i32* %ECX.i
  %4929 = zext i32 %4928 to i64
  %4930 = load i64, i64* %PC.i351
  %4931 = add i64 %4930, 2
  store i64 %4931, i64* %PC.i351
  %4932 = sub i32 %4926, %4928
  %4933 = icmp ult i32 %4926, %4928
  %4934 = zext i1 %4933 to i8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4934, i8* %4935, align 1
  %4936 = and i32 %4932, 255
  %4937 = call i32 @llvm.ctpop.i32(i32 %4936)
  %4938 = trunc i32 %4937 to i8
  %4939 = and i8 %4938, 1
  %4940 = xor i8 %4939, 1
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4940, i8* %4941, align 1
  %4942 = xor i64 %4929, %4927
  %4943 = trunc i64 %4942 to i32
  %4944 = xor i32 %4943, %4932
  %4945 = lshr i32 %4944, 4
  %4946 = trunc i32 %4945 to i8
  %4947 = and i8 %4946, 1
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4947, i8* %4948, align 1
  %4949 = icmp eq i32 %4932, 0
  %4950 = zext i1 %4949 to i8
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4950, i8* %4951, align 1
  %4952 = lshr i32 %4932, 31
  %4953 = trunc i32 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4953, i8* %4954, align 1
  %4955 = lshr i32 %4926, 31
  %4956 = lshr i32 %4928, 31
  %4957 = xor i32 %4956, %4955
  %4958 = xor i32 %4952, %4955
  %4959 = add i32 %4958, %4957
  %4960 = icmp eq i32 %4959, 2
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4961, i8* %4962, align 1
  store %struct.Memory* %loadMem_4536c3, %struct.Memory** %MEMORY
  %loadMem_4536c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %PC.i350
  %4967 = add i64 %4966, 621
  %4968 = load i64, i64* %PC.i350
  %4969 = add i64 %4968, 6
  %4970 = load i64, i64* %PC.i350
  %4971 = add i64 %4970, 6
  store i64 %4971, i64* %PC.i350
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4973 = load i8, i8* %4972, align 1
  %4974 = icmp ne i8 %4973, 0
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4976 = load i8, i8* %4975, align 1
  %4977 = icmp ne i8 %4976, 0
  %4978 = xor i1 %4974, %4977
  %4979 = xor i1 %4978, true
  %4980 = zext i1 %4979 to i8
  store i8 %4980, i8* %BRANCH_TAKEN, align 1
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4982 = select i1 %4978, i64 %4969, i64 %4967
  store i64 %4982, i64* %4981, align 8
  store %struct.Memory* %loadMem_4536c5, %struct.Memory** %MEMORY
  %loadBr_4536c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4536c5 = icmp eq i8 %loadBr_4536c5, 1
  br i1 %cmpBr_4536c5, label %block_.L_453932, label %block_4536cb

block_4536cb:                                     ; preds = %block_.L_4536b3
  %loadMem_4536cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 33
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4985 to i64*
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 15
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %4988 to i64*
  %4989 = load i64, i64* %RBP.i349
  %4990 = sub i64 %4989, 188
  %4991 = load i64, i64* %PC.i348
  %4992 = add i64 %4991, 10
  store i64 %4992, i64* %PC.i348
  %4993 = inttoptr i64 %4990 to i32*
  store i32 0, i32* %4993
  store %struct.Memory* %loadMem_4536cb, %struct.Memory** %MEMORY
  br label %block_.L_4536d5

block_.L_4536d5:                                  ; preds = %block_.L_453750, %block_4536cb
  %loadMem_4536d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 1
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i347
  %5004 = sub i64 %5003, 188
  %5005 = load i64, i64* %PC.i345
  %5006 = add i64 %5005, 6
  store i64 %5006, i64* %PC.i345
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007
  %5009 = zext i32 %5008 to i64
  store i64 %5009, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_4536d5, %struct.Memory** %MEMORY
  %loadMem_4536db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 1
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %5015 to i32*
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 15
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5018 to i64*
  %5019 = load i32, i32* %EAX.i343
  %5020 = zext i32 %5019 to i64
  %5021 = load i64, i64* %RBP.i344
  %5022 = sub i64 %5021, 16
  %5023 = load i64, i64* %PC.i342
  %5024 = add i64 %5023, 3
  store i64 %5024, i64* %PC.i342
  %5025 = inttoptr i64 %5022 to i32*
  %5026 = load i32, i32* %5025
  %5027 = sub i32 %5019, %5026
  %5028 = icmp ult i32 %5019, %5026
  %5029 = zext i1 %5028 to i8
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5029, i8* %5030, align 1
  %5031 = and i32 %5027, 255
  %5032 = call i32 @llvm.ctpop.i32(i32 %5031)
  %5033 = trunc i32 %5032 to i8
  %5034 = and i8 %5033, 1
  %5035 = xor i8 %5034, 1
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5035, i8* %5036, align 1
  %5037 = xor i32 %5026, %5019
  %5038 = xor i32 %5037, %5027
  %5039 = lshr i32 %5038, 4
  %5040 = trunc i32 %5039 to i8
  %5041 = and i8 %5040, 1
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5041, i8* %5042, align 1
  %5043 = icmp eq i32 %5027, 0
  %5044 = zext i1 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5044, i8* %5045, align 1
  %5046 = lshr i32 %5027, 31
  %5047 = trunc i32 %5046 to i8
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5047, i8* %5048, align 1
  %5049 = lshr i32 %5019, 31
  %5050 = lshr i32 %5026, 31
  %5051 = xor i32 %5050, %5049
  %5052 = xor i32 %5046, %5049
  %5053 = add i32 %5052, %5051
  %5054 = icmp eq i32 %5053, 2
  %5055 = zext i1 %5054 to i8
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5055, i8* %5056, align 1
  store %struct.Memory* %loadMem_4536db, %struct.Memory** %MEMORY
  %loadMem_4536de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 33
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5059 to i64*
  %5060 = load i64, i64* %PC.i341
  %5061 = add i64 %5060, 159
  %5062 = load i64, i64* %PC.i341
  %5063 = add i64 %5062, 6
  %5064 = load i64, i64* %PC.i341
  %5065 = add i64 %5064, 6
  store i64 %5065, i64* %PC.i341
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5067 = load i8, i8* %5066, align 1
  %5068 = icmp ne i8 %5067, 0
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5070 = load i8, i8* %5069, align 1
  %5071 = icmp ne i8 %5070, 0
  %5072 = xor i1 %5068, %5071
  %5073 = xor i1 %5072, true
  %5074 = zext i1 %5073 to i8
  store i8 %5074, i8* %BRANCH_TAKEN, align 1
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5076 = select i1 %5072, i64 %5063, i64 %5061
  store i64 %5076, i64* %5075, align 8
  store %struct.Memory* %loadMem_4536de, %struct.Memory** %MEMORY
  %loadBr_4536de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4536de = icmp eq i8 %loadBr_4536de, 1
  br i1 %cmpBr_4536de, label %block_.L_45377d, label %block_4536e4

block_4536e4:                                     ; preds = %block_.L_4536d5
  %loadMem_4536e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 1
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 15
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RBP.i340
  %5087 = sub i64 %5086, 56
  %5088 = load i64, i64* %PC.i338
  %5089 = add i64 %5088, 4
  store i64 %5089, i64* %PC.i338
  %5090 = inttoptr i64 %5087 to i64*
  %5091 = load i64, i64* %5090
  store i64 %5091, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_4536e4, %struct.Memory** %MEMORY
  %loadMem_4536e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 33
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 5
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %5097 to i64*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 15
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %5100 to i64*
  %5101 = load i64, i64* %RBP.i337
  %5102 = sub i64 %5101, 188
  %5103 = load i64, i64* %PC.i335
  %5104 = add i64 %5103, 7
  store i64 %5104, i64* %PC.i335
  %5105 = inttoptr i64 %5102 to i32*
  %5106 = load i32, i32* %5105
  %5107 = sext i32 %5106 to i64
  store i64 %5107, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_4536e8, %struct.Memory** %MEMORY
  %loadMem_4536ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 33
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5110 to i64*
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 1
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 5
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %5116 to i64*
  %5117 = load i64, i64* %RAX.i333
  %5118 = load i64, i64* %RCX.i334
  %5119 = mul i64 %5118, 4
  %5120 = add i64 %5119, %5117
  %5121 = load i64, i64* %PC.i332
  %5122 = add i64 %5121, 4
  store i64 %5122, i64* %PC.i332
  %5123 = inttoptr i64 %5120 to i32*
  %5124 = load i32, i32* %5123
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5125, align 1
  %5126 = and i32 %5124, 255
  %5127 = call i32 @llvm.ctpop.i32(i32 %5126)
  %5128 = trunc i32 %5127 to i8
  %5129 = and i8 %5128, 1
  %5130 = xor i8 %5129, 1
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5130, i8* %5131, align 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5132, align 1
  %5133 = icmp eq i32 %5124, 0
  %5134 = zext i1 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5134, i8* %5135, align 1
  %5136 = lshr i32 %5124, 31
  %5137 = trunc i32 %5136 to i8
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5137, i8* %5138, align 1
  %5139 = lshr i32 %5124, 31
  %5140 = xor i32 %5136, %5139
  %5141 = add i32 %5140, %5139
  %5142 = icmp eq i32 %5141, 2
  %5143 = zext i1 %5142 to i8
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5143, i8* %5144, align 1
  store %struct.Memory* %loadMem_4536ef, %struct.Memory** %MEMORY
  %loadMem_4536f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 33
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5147 to i64*
  %5148 = load i64, i64* %PC.i331
  %5149 = add i64 %5148, 22
  %5150 = load i64, i64* %PC.i331
  %5151 = add i64 %5150, 6
  %5152 = load i64, i64* %PC.i331
  %5153 = add i64 %5152, 6
  store i64 %5153, i64* %PC.i331
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5155 = load i8, i8* %5154, align 1
  %5156 = icmp eq i8 %5155, 0
  %5157 = zext i1 %5156 to i8
  store i8 %5157, i8* %BRANCH_TAKEN, align 1
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5159 = select i1 %5156, i64 %5149, i64 %5151
  store i64 %5159, i64* %5158, align 8
  store %struct.Memory* %loadMem_4536f3, %struct.Memory** %MEMORY
  %loadBr_4536f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4536f3 = icmp eq i8 %loadBr_4536f3, 1
  br i1 %cmpBr_4536f3, label %block_.L_453709, label %block_4536f9

block_4536f9:                                     ; preds = %block_4536e4
  %loadMem_4536f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 1
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %PC.i329
  %5167 = add i64 %5166, 5
  store i64 %5167, i64* %PC.i329
  store i64 32, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_4536f9, %struct.Memory** %MEMORY
  %loadMem_4536fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 33
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 1
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %5173 to i32*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 15
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %RBP.i328
  %5178 = sub i64 %5177, 232
  %5179 = load i32, i32* %EAX.i327
  %5180 = zext i32 %5179 to i64
  %5181 = load i64, i64* %PC.i326
  %5182 = add i64 %5181, 6
  store i64 %5182, i64* %PC.i326
  %5183 = inttoptr i64 %5178 to i32*
  store i32 %5179, i32* %5183
  store %struct.Memory* %loadMem_4536fe, %struct.Memory** %MEMORY
  %loadMem_453704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 33
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5186 to i64*
  %5187 = load i64, i64* %PC.i325
  %5188 = add i64 %5187, 76
  %5189 = load i64, i64* %PC.i325
  %5190 = add i64 %5189, 5
  store i64 %5190, i64* %PC.i325
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5188, i64* %5191, align 8
  store %struct.Memory* %loadMem_453704, %struct.Memory** %MEMORY
  br label %block_.L_453750

block_.L_453709:                                  ; preds = %block_4536e4
  %loadMem_453709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 33
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 1
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %5197 to i64*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 15
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %5200 to i64*
  %5201 = load i64, i64* %RBP.i324
  %5202 = sub i64 %5201, 48
  %5203 = load i64, i64* %PC.i322
  %5204 = add i64 %5203, 4
  store i64 %5204, i64* %PC.i322
  %5205 = inttoptr i64 %5202 to i64*
  %5206 = load i64, i64* %5205
  store i64 %5206, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_453709, %struct.Memory** %MEMORY
  %loadMem_45370d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 5
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %5212 to i64*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 15
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %5215 to i64*
  %5216 = load i64, i64* %RBP.i321
  %5217 = sub i64 %5216, 188
  %5218 = load i64, i64* %PC.i319
  %5219 = add i64 %5218, 7
  store i64 %5219, i64* %PC.i319
  %5220 = inttoptr i64 %5217 to i32*
  %5221 = load i32, i32* %5220
  %5222 = sext i32 %5221 to i64
  store i64 %5222, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_45370d, %struct.Memory** %MEMORY
  %loadMem_453714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 33
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 1
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 5
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %RAX.i317
  %5233 = load i64, i64* %RCX.i318
  %5234 = mul i64 %5233, 8
  %5235 = add i64 %5234, %5232
  %5236 = load i64, i64* %PC.i316
  %5237 = add i64 %5236, 4
  store i64 %5237, i64* %PC.i316
  %5238 = inttoptr i64 %5235 to i64*
  %5239 = load i64, i64* %5238
  store i64 %5239, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_453714, %struct.Memory** %MEMORY
  %loadMem_453718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 33
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 1
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 15
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5248 to i64*
  %5249 = load i64, i64* %RBP.i315
  %5250 = sub i64 %5249, 240
  %5251 = load i64, i64* %RAX.i314
  %5252 = load i64, i64* %PC.i313
  %5253 = add i64 %5252, 7
  store i64 %5253, i64* %PC.i313
  %5254 = inttoptr i64 %5250 to i64*
  store i64 %5251, i64* %5254
  store %struct.Memory* %loadMem_453718, %struct.Memory** %MEMORY
  %loadMem1_45371f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5257 to i64*
  %5258 = load i64, i64* %PC.i312
  %5259 = add i64 %5258, -58143
  %5260 = load i64, i64* %PC.i312
  %5261 = add i64 %5260, 5
  %5262 = load i64, i64* %PC.i312
  %5263 = add i64 %5262, 5
  store i64 %5263, i64* %PC.i312
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5265 = load i64, i64* %5264, align 8
  %5266 = add i64 %5265, -8
  %5267 = inttoptr i64 %5266 to i64*
  store i64 %5261, i64* %5267
  store i64 %5266, i64* %5264, align 8
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5259, i64* %5268, align 8
  store %struct.Memory* %loadMem1_45371f, %struct.Memory** %MEMORY
  %loadMem2_45371f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45371f = load i64, i64* %3
  %call2_45371f = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_45371f, %struct.Memory* %loadMem2_45371f)
  store %struct.Memory* %call2_45371f, %struct.Memory** %MEMORY
  %loadMem_453724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 33
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 1
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 15
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %RBP.i311
  %5279 = sub i64 %5278, 56
  %5280 = load i64, i64* %PC.i309
  %5281 = add i64 %5280, 4
  store i64 %5281, i64* %PC.i309
  %5282 = inttoptr i64 %5279 to i64*
  %5283 = load i64, i64* %5282
  store i64 %5283, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_453724, %struct.Memory** %MEMORY
  %loadMem_453728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 5
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 15
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %5292 to i64*
  %5293 = load i64, i64* %RBP.i308
  %5294 = sub i64 %5293, 188
  %5295 = load i64, i64* %PC.i306
  %5296 = add i64 %5295, 7
  store i64 %5296, i64* %PC.i306
  %5297 = inttoptr i64 %5294 to i32*
  %5298 = load i32, i32* %5297
  %5299 = sext i32 %5298 to i64
  store i64 %5299, i64* %RCX.i307, align 8
  store %struct.Memory* %loadMem_453728, %struct.Memory** %MEMORY
  %loadMem_45372f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 33
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 1
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 5
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5309, i64 0, i64 1
  %YMM1.i305 = bitcast %union.VectorReg* %5310 to %"class.std::bitset"*
  %5311 = bitcast %"class.std::bitset"* %YMM1.i305 to i8*
  %5312 = load i64, i64* %RAX.i303
  %5313 = load i64, i64* %RCX.i304
  %5314 = mul i64 %5313, 4
  %5315 = add i64 %5314, %5312
  %5316 = load i64, i64* %PC.i302
  %5317 = add i64 %5316, 5
  store i64 %5317, i64* %PC.i302
  %5318 = inttoptr i64 %5315 to i32*
  %5319 = load i32, i32* %5318
  %5320 = sitofp i32 %5319 to double
  %5321 = bitcast i8* %5311 to double*
  store double %5320, double* %5321, align 1
  store %struct.Memory* %loadMem_45372f, %struct.Memory** %MEMORY
  %loadMem_453734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 33
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5324 to i64*
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5325, i64 0, i64 0
  %YMM0.i300 = bitcast %union.VectorReg* %5326 to %"class.std::bitset"*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5328 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5327, i64 0, i64 1
  %XMM1.i301 = bitcast %union.VectorReg* %5328 to %union.vec128_t*
  %5329 = bitcast %"class.std::bitset"* %YMM0.i300 to i8*
  %5330 = bitcast %"class.std::bitset"* %YMM0.i300 to i8*
  %5331 = bitcast %union.vec128_t* %XMM1.i301 to i8*
  %5332 = load i64, i64* %PC.i299
  %5333 = add i64 %5332, 4
  store i64 %5333, i64* %PC.i299
  %5334 = bitcast i8* %5330 to double*
  %5335 = load double, double* %5334, align 1
  %5336 = getelementptr inbounds i8, i8* %5330, i64 8
  %5337 = bitcast i8* %5336 to i64*
  %5338 = load i64, i64* %5337, align 1
  %5339 = bitcast i8* %5331 to double*
  %5340 = load double, double* %5339, align 1
  %5341 = fmul double %5335, %5340
  %5342 = bitcast i8* %5329 to double*
  store double %5341, double* %5342, align 1
  %5343 = getelementptr inbounds i8, i8* %5329, i64 8
  %5344 = bitcast i8* %5343 to i64*
  store i64 %5338, i64* %5344, align 1
  store %struct.Memory* %loadMem_453734, %struct.Memory** %MEMORY
  %loadMem_453738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 33
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 7
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5351, i64 0, i64 0
  %XMM0.i298 = bitcast %union.VectorReg* %5352 to %union.vec128_t*
  %5353 = bitcast %union.vec128_t* %XMM0.i298 to i8*
  %5354 = load i64, i64* %PC.i296
  %5355 = add i64 %5354, 4
  store i64 %5355, i64* %PC.i296
  %5356 = bitcast i8* %5353 to double*
  %5357 = load double, double* %5356, align 1
  %5358 = call double @llvm.trunc.f64(double %5357)
  %5359 = call double @llvm.fabs.f64(double %5358)
  %5360 = fcmp ogt double %5359, 0x41DFFFFFFFC00000
  %5361 = fptosi double %5358 to i32
  %5362 = zext i32 %5361 to i64
  %5363 = select i1 %5360, i64 2147483648, i64 %5362
  store i64 %5363, i64* %RDX.i297, align 8
  store %struct.Memory* %loadMem_453738, %struct.Memory** %MEMORY
  %loadMem_45373c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 7
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %EDX.i294 = bitcast %union.anon* %5369 to i32*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 1
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5372 to i64*
  %5373 = load i32, i32* %EDX.i294
  %5374 = zext i32 %5373 to i64
  %5375 = load i64, i64* %PC.i293
  %5376 = add i64 %5375, 3
  store i64 %5376, i64* %PC.i293
  %5377 = shl i64 %5374, 32
  %5378 = ashr exact i64 %5377, 32
  store i64 %5378, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_45373c, %struct.Memory** %MEMORY
  %loadMem_45373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 33
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 5
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 15
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %5387 to i64*
  %5388 = load i64, i64* %RBP.i292
  %5389 = sub i64 %5388, 240
  %5390 = load i64, i64* %PC.i290
  %5391 = add i64 %5390, 7
  store i64 %5391, i64* %PC.i290
  %5392 = inttoptr i64 %5389 to i64*
  %5393 = load i64, i64* %5392
  store i64 %5393, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_45373f, %struct.Memory** %MEMORY
  %loadMem_453746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 33
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 1
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 5
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 7
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %5405 to i64*
  %5406 = load i64, i64* %RCX.i288
  %5407 = load i64, i64* %RAX.i287
  %5408 = add i64 %5407, %5406
  %5409 = load i64, i64* %PC.i286
  %5410 = add i64 %5409, 4
  store i64 %5410, i64* %PC.i286
  %5411 = inttoptr i64 %5408 to i8*
  %5412 = load i8, i8* %5411
  %5413 = sext i8 %5412 to i64
  %5414 = and i64 %5413, 4294967295
  store i64 %5414, i64* %RDX.i289, align 8
  store %struct.Memory* %loadMem_453746, %struct.Memory** %MEMORY
  %loadMem_45374a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 7
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %EDX.i284 = bitcast %union.anon* %5420 to i32*
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 15
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %5423 to i64*
  %5424 = load i64, i64* %RBP.i285
  %5425 = sub i64 %5424, 232
  %5426 = load i32, i32* %EDX.i284
  %5427 = zext i32 %5426 to i64
  %5428 = load i64, i64* %PC.i283
  %5429 = add i64 %5428, 6
  store i64 %5429, i64* %PC.i283
  %5430 = inttoptr i64 %5425 to i32*
  store i32 %5426, i32* %5430
  store %struct.Memory* %loadMem_45374a, %struct.Memory** %MEMORY
  br label %block_.L_453750

block_.L_453750:                                  ; preds = %block_.L_453709, %block_4536f9
  %loadMem_453750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 33
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5433 to i64*
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 1
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %5436 to i64*
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 15
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %5439 to i64*
  %5440 = load i64, i64* %RBP.i282
  %5441 = sub i64 %5440, 232
  %5442 = load i64, i64* %PC.i280
  %5443 = add i64 %5442, 6
  store i64 %5443, i64* %PC.i280
  %5444 = inttoptr i64 %5441 to i32*
  %5445 = load i32, i32* %5444
  %5446 = zext i32 %5445 to i64
  store i64 %5446, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_453750, %struct.Memory** %MEMORY
  %loadMem_453756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 33
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5449 to i64*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 1
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %5453 = bitcast %union.anon* %5452 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5453, i32 0, i32 0
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 5
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %5457 = bitcast %union.anon* %5456 to %struct.anon.2*
  %CL.i279 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5457, i32 0, i32 0
  %5458 = load i8, i8* %AL.i
  %5459 = zext i8 %5458 to i64
  %5460 = load i64, i64* %PC.i278
  %5461 = add i64 %5460, 2
  store i64 %5461, i64* %PC.i278
  store i8 %5458, i8* %CL.i279, align 1
  store %struct.Memory* %loadMem_453756, %struct.Memory** %MEMORY
  %loadMem_453758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 7
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 15
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %RBP.i277
  %5472 = sub i64 %5471, 184
  %5473 = load i64, i64* %PC.i275
  %5474 = add i64 %5473, 7
  store i64 %5474, i64* %PC.i275
  %5475 = inttoptr i64 %5472 to i64*
  %5476 = load i64, i64* %5475
  store i64 %5476, i64* %RDX.i276, align 8
  store %struct.Memory* %loadMem_453758, %struct.Memory** %MEMORY
  %loadMem_45375f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 9
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RSI.i273 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 15
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RBP.i274
  %5487 = sub i64 %5486, 188
  %5488 = load i64, i64* %PC.i272
  %5489 = add i64 %5488, 7
  store i64 %5489, i64* %PC.i272
  %5490 = inttoptr i64 %5487 to i32*
  %5491 = load i32, i32* %5490
  %5492 = sext i32 %5491 to i64
  store i64 %5492, i64* %RSI.i273, align 8
  store %struct.Memory* %loadMem_45375f, %struct.Memory** %MEMORY
  %loadMem_453766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 5
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %5499 = bitcast %union.anon* %5498 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5499, i32 0, i32 0
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 7
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 9
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %RDX.i
  %5507 = load i64, i64* %RSI.i271
  %5508 = add i64 %5507, %5506
  %5509 = load i8, i8* %CL.i
  %5510 = zext i8 %5509 to i64
  %5511 = load i64, i64* %PC.i270
  %5512 = add i64 %5511, 3
  store i64 %5512, i64* %PC.i270
  %5513 = inttoptr i64 %5508 to i8*
  store i8 %5509, i8* %5513
  store %struct.Memory* %loadMem_453766, %struct.Memory** %MEMORY
  %loadMem_453769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 1
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %5519 to i64*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 15
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %5522 to i64*
  %5523 = load i64, i64* %RBP.i269
  %5524 = sub i64 %5523, 188
  %5525 = load i64, i64* %PC.i267
  %5526 = add i64 %5525, 6
  store i64 %5526, i64* %PC.i267
  %5527 = inttoptr i64 %5524 to i32*
  %5528 = load i32, i32* %5527
  %5529 = zext i32 %5528 to i64
  store i64 %5529, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_453769, %struct.Memory** %MEMORY
  %loadMem_45376f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 33
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5532 to i64*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 1
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %5535 to i64*
  %5536 = load i64, i64* %RAX.i266
  %5537 = load i64, i64* %PC.i265
  %5538 = add i64 %5537, 3
  store i64 %5538, i64* %PC.i265
  %5539 = trunc i64 %5536 to i32
  %5540 = add i32 1, %5539
  %5541 = zext i32 %5540 to i64
  store i64 %5541, i64* %RAX.i266, align 8
  %5542 = icmp ult i32 %5540, %5539
  %5543 = icmp ult i32 %5540, 1
  %5544 = or i1 %5542, %5543
  %5545 = zext i1 %5544 to i8
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5545, i8* %5546, align 1
  %5547 = and i32 %5540, 255
  %5548 = call i32 @llvm.ctpop.i32(i32 %5547)
  %5549 = trunc i32 %5548 to i8
  %5550 = and i8 %5549, 1
  %5551 = xor i8 %5550, 1
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5551, i8* %5552, align 1
  %5553 = xor i64 1, %5536
  %5554 = trunc i64 %5553 to i32
  %5555 = xor i32 %5554, %5540
  %5556 = lshr i32 %5555, 4
  %5557 = trunc i32 %5556 to i8
  %5558 = and i8 %5557, 1
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5558, i8* %5559, align 1
  %5560 = icmp eq i32 %5540, 0
  %5561 = zext i1 %5560 to i8
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5561, i8* %5562, align 1
  %5563 = lshr i32 %5540, 31
  %5564 = trunc i32 %5563 to i8
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5564, i8* %5565, align 1
  %5566 = lshr i32 %5539, 31
  %5567 = xor i32 %5563, %5566
  %5568 = add i32 %5567, %5563
  %5569 = icmp eq i32 %5568, 2
  %5570 = zext i1 %5569 to i8
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5570, i8* %5571, align 1
  store %struct.Memory* %loadMem_45376f, %struct.Memory** %MEMORY
  %loadMem_453772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 1
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %EAX.i263 = bitcast %union.anon* %5577 to i32*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 15
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %5580 to i64*
  %5581 = load i64, i64* %RBP.i264
  %5582 = sub i64 %5581, 188
  %5583 = load i32, i32* %EAX.i263
  %5584 = zext i32 %5583 to i64
  %5585 = load i64, i64* %PC.i262
  %5586 = add i64 %5585, 6
  store i64 %5586, i64* %PC.i262
  %5587 = inttoptr i64 %5582 to i32*
  store i32 %5583, i32* %5587
  store %struct.Memory* %loadMem_453772, %struct.Memory** %MEMORY
  %loadMem_453778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5589 = getelementptr inbounds %struct.GPR, %struct.GPR* %5588, i32 0, i32 33
  %5590 = getelementptr inbounds %struct.Reg, %struct.Reg* %5589, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5590 to i64*
  %5591 = load i64, i64* %PC.i261
  %5592 = add i64 %5591, -163
  %5593 = load i64, i64* %PC.i261
  %5594 = add i64 %5593, 5
  store i64 %5594, i64* %PC.i261
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5592, i64* %5595, align 8
  store %struct.Memory* %loadMem_453778, %struct.Memory** %MEMORY
  br label %block_.L_4536d5

block_.L_45377d:                                  ; preds = %block_.L_4536d5
  %loadMem_45377d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 33
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 1
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5601 to i64*
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 15
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5604 to i64*
  %5605 = load i64, i64* %RBP.i260
  %5606 = sub i64 %5605, 184
  %5607 = load i64, i64* %PC.i258
  %5608 = add i64 %5607, 7
  store i64 %5608, i64* %PC.i258
  %5609 = inttoptr i64 %5606 to i64*
  %5610 = load i64, i64* %5609
  store i64 %5610, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_45377d, %struct.Memory** %MEMORY
  %loadMem_453784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 33
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5613 to i64*
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 5
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %5616 to i64*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 15
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5619 to i64*
  %5620 = load i64, i64* %RBP.i257
  %5621 = sub i64 %5620, 188
  %5622 = load i64, i64* %PC.i255
  %5623 = add i64 %5622, 7
  store i64 %5623, i64* %PC.i255
  %5624 = inttoptr i64 %5621 to i32*
  %5625 = load i32, i32* %5624
  %5626 = sext i32 %5625 to i64
  store i64 %5626, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_453784, %struct.Memory** %MEMORY
  %loadMem_45378b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 1
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 5
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %RAX.i253
  %5637 = load i64, i64* %RCX.i254
  %5638 = add i64 %5637, %5636
  %5639 = load i64, i64* %PC.i252
  %5640 = add i64 %5639, 4
  store i64 %5640, i64* %PC.i252
  %5641 = inttoptr i64 %5638 to i8*
  store i8 0, i8* %5641
  store %struct.Memory* %loadMem_45378b, %struct.Memory** %MEMORY
  %loadMem1_45378f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5644 to i64*
  %5645 = load i64, i64* %PC.i251
  %5646 = add i64 %5645, -58255
  %5647 = load i64, i64* %PC.i251
  %5648 = add i64 %5647, 5
  %5649 = load i64, i64* %PC.i251
  %5650 = add i64 %5649, 5
  store i64 %5650, i64* %PC.i251
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5652 = load i64, i64* %5651, align 8
  %5653 = add i64 %5652, -8
  %5654 = inttoptr i64 %5653 to i64*
  store i64 %5648, i64* %5654
  store i64 %5653, i64* %5651, align 8
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5646, i64* %5655, align 8
  store %struct.Memory* %loadMem1_45378f, %struct.Memory** %MEMORY
  %loadMem2_45378f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45378f = load i64, i64* %3
  %call2_45378f = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_45378f, %struct.Memory* %loadMem2_45378f)
  store %struct.Memory* %call2_45378f, %struct.Memory** %MEMORY
  %loadMem_453794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5659, i64 0, i64 1
  %YMM1.i250 = bitcast %union.VectorReg* %5660 to %"class.std::bitset"*
  %5661 = bitcast %"class.std::bitset"* %YMM1.i250 to i8*
  %5662 = load i64, i64* %PC.i249
  %5663 = add i64 %5662, ptrtoint (%G_0xf8c__rip__type* @G_0xf8c__rip_ to i64)
  %5664 = load i64, i64* %PC.i249
  %5665 = add i64 %5664, 8
  store i64 %5665, i64* %PC.i249
  %5666 = inttoptr i64 %5663 to float*
  %5667 = load float, float* %5666
  %5668 = bitcast i8* %5661 to float*
  store float %5667, float* %5668, align 1
  %5669 = getelementptr inbounds i8, i8* %5661, i64 4
  %5670 = bitcast i8* %5669 to float*
  store float 0.000000e+00, float* %5670, align 1
  %5671 = getelementptr inbounds i8, i8* %5661, i64 8
  %5672 = bitcast i8* %5671 to float*
  store float 0.000000e+00, float* %5672, align 1
  %5673 = getelementptr inbounds i8, i8* %5661, i64 12
  %5674 = bitcast i8* %5673 to float*
  store float 0.000000e+00, float* %5674, align 1
  store %struct.Memory* %loadMem_453794, %struct.Memory** %MEMORY
  %loadMem_45379c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 33
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5677 to i64*
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5678, i64 0, i64 0
  %YMM0.i247 = bitcast %union.VectorReg* %5679 to %"class.std::bitset"*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5680, i64 0, i64 0
  %XMM0.i248 = bitcast %union.VectorReg* %5681 to %union.vec128_t*
  %5682 = bitcast %"class.std::bitset"* %YMM0.i247 to i8*
  %5683 = bitcast %union.vec128_t* %XMM0.i248 to i8*
  %5684 = load i64, i64* %PC.i246
  %5685 = add i64 %5684, 4
  store i64 %5685, i64* %PC.i246
  %5686 = bitcast i8* %5682 to <2 x i32>*
  %5687 = load <2 x i32>, <2 x i32>* %5686, align 1
  %5688 = getelementptr inbounds i8, i8* %5682, i64 8
  %5689 = bitcast i8* %5688 to <2 x i32>*
  %5690 = load <2 x i32>, <2 x i32>* %5689, align 1
  %5691 = bitcast i8* %5683 to double*
  %5692 = load double, double* %5691, align 1
  %5693 = fptrunc double %5692 to float
  %5694 = bitcast i8* %5682 to float*
  store float %5693, float* %5694, align 1
  %5695 = extractelement <2 x i32> %5687, i32 1
  %5696 = getelementptr inbounds i8, i8* %5682, i64 4
  %5697 = bitcast i8* %5696 to i32*
  store i32 %5695, i32* %5697, align 1
  %5698 = extractelement <2 x i32> %5690, i32 0
  %5699 = bitcast i8* %5688 to i32*
  store i32 %5698, i32* %5699, align 1
  %5700 = extractelement <2 x i32> %5690, i32 1
  %5701 = getelementptr inbounds i8, i8* %5682, i64 12
  %5702 = bitcast i8* %5701 to i32*
  store i32 %5700, i32* %5702, align 1
  store %struct.Memory* %loadMem_45379c, %struct.Memory** %MEMORY
  %loadMem_4537a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 33
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 15
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5709, i64 0, i64 0
  %XMM0.i245 = bitcast %union.VectorReg* %5710 to %union.vec128_t*
  %5711 = load i64, i64* %RBP.i244
  %5712 = sub i64 %5711, 216
  %5713 = bitcast %union.vec128_t* %XMM0.i245 to i8*
  %5714 = load i64, i64* %PC.i243
  %5715 = add i64 %5714, 8
  store i64 %5715, i64* %PC.i243
  %5716 = bitcast i8* %5713 to <2 x float>*
  %5717 = load <2 x float>, <2 x float>* %5716, align 1
  %5718 = extractelement <2 x float> %5717, i32 0
  %5719 = inttoptr i64 %5712 to float*
  store float %5718, float* %5719
  store %struct.Memory* %loadMem_4537a0, %struct.Memory** %MEMORY
  %loadMem_4537a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 33
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 15
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %5725 to i64*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5726, i64 0, i64 1
  %XMM1.i242 = bitcast %union.VectorReg* %5727 to %union.vec128_t*
  %5728 = load i64, i64* %RBP.i241
  %5729 = sub i64 %5728, 204
  %5730 = bitcast %union.vec128_t* %XMM1.i242 to i8*
  %5731 = load i64, i64* %PC.i240
  %5732 = add i64 %5731, 8
  store i64 %5732, i64* %PC.i240
  %5733 = bitcast i8* %5730 to <2 x float>*
  %5734 = load <2 x float>, <2 x float>* %5733, align 1
  %5735 = extractelement <2 x float> %5734, i32 0
  %5736 = inttoptr i64 %5729 to float*
  store float %5735, float* %5736
  store %struct.Memory* %loadMem_4537a8, %struct.Memory** %MEMORY
  %loadMem_4537b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 33
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %5739 to i64*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 15
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5742 to i64*
  %5743 = load i64, i64* %RBP.i239
  %5744 = sub i64 %5743, 192
  %5745 = load i64, i64* %PC.i238
  %5746 = add i64 %5745, 10
  store i64 %5746, i64* %PC.i238
  %5747 = inttoptr i64 %5744 to i32*
  store i32 0, i32* %5747
  store %struct.Memory* %loadMem_4537b0, %struct.Memory** %MEMORY
  br label %block_.L_4537ba

block_.L_4537ba:                                  ; preds = %block_.L_4538e5, %block_.L_45377d
  %loadMem_4537ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 1
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 15
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %RBP.i237
  %5758 = sub i64 %5757, 192
  %5759 = load i64, i64* %PC.i235
  %5760 = add i64 %5759, 6
  store i64 %5760, i64* %PC.i235
  %5761 = inttoptr i64 %5758 to i32*
  %5762 = load i32, i32* %5761
  %5763 = zext i32 %5762 to i64
  store i64 %5763, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_4537ba, %struct.Memory** %MEMORY
  %loadMem_4537c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 33
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %5766 to i64*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 1
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %5769 to i32*
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 15
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %5772 to i64*
  %5773 = load i32, i32* %EAX.i233
  %5774 = zext i32 %5773 to i64
  %5775 = load i64, i64* %RBP.i234
  %5776 = sub i64 %5775, 12
  %5777 = load i64, i64* %PC.i232
  %5778 = add i64 %5777, 3
  store i64 %5778, i64* %PC.i232
  %5779 = inttoptr i64 %5776 to i32*
  %5780 = load i32, i32* %5779
  %5781 = sub i32 %5773, %5780
  %5782 = icmp ult i32 %5773, %5780
  %5783 = zext i1 %5782 to i8
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5783, i8* %5784, align 1
  %5785 = and i32 %5781, 255
  %5786 = call i32 @llvm.ctpop.i32(i32 %5785)
  %5787 = trunc i32 %5786 to i8
  %5788 = and i8 %5787, 1
  %5789 = xor i8 %5788, 1
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5789, i8* %5790, align 1
  %5791 = xor i32 %5780, %5773
  %5792 = xor i32 %5791, %5781
  %5793 = lshr i32 %5792, 4
  %5794 = trunc i32 %5793 to i8
  %5795 = and i8 %5794, 1
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5795, i8* %5796, align 1
  %5797 = icmp eq i32 %5781, 0
  %5798 = zext i1 %5797 to i8
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5798, i8* %5799, align 1
  %5800 = lshr i32 %5781, 31
  %5801 = trunc i32 %5800 to i8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5801, i8* %5802, align 1
  %5803 = lshr i32 %5773, 31
  %5804 = lshr i32 %5780, 31
  %5805 = xor i32 %5804, %5803
  %5806 = xor i32 %5800, %5803
  %5807 = add i32 %5806, %5805
  %5808 = icmp eq i32 %5807, 2
  %5809 = zext i1 %5808 to i8
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5809, i8* %5810, align 1
  store %struct.Memory* %loadMem_4537c0, %struct.Memory** %MEMORY
  %loadMem_4537c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5812 = getelementptr inbounds %struct.GPR, %struct.GPR* %5811, i32 0, i32 33
  %5813 = getelementptr inbounds %struct.Reg, %struct.Reg* %5812, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5813 to i64*
  %5814 = load i64, i64* %PC.i231
  %5815 = add i64 %5814, 310
  %5816 = load i64, i64* %PC.i231
  %5817 = add i64 %5816, 6
  %5818 = load i64, i64* %PC.i231
  %5819 = add i64 %5818, 6
  store i64 %5819, i64* %PC.i231
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5821 = load i8, i8* %5820, align 1
  %5822 = icmp ne i8 %5821, 0
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5824 = load i8, i8* %5823, align 1
  %5825 = icmp ne i8 %5824, 0
  %5826 = xor i1 %5822, %5825
  %5827 = xor i1 %5826, true
  %5828 = zext i1 %5827 to i8
  store i8 %5828, i8* %BRANCH_TAKEN, align 1
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5830 = select i1 %5826, i64 %5817, i64 %5815
  store i64 %5830, i64* %5829, align 8
  store %struct.Memory* %loadMem_4537c3, %struct.Memory** %MEMORY
  %loadBr_4537c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4537c3 = icmp eq i8 %loadBr_4537c3, 1
  br i1 %cmpBr_4537c3, label %block_.L_4538f9, label %block_4537c9

block_4537c9:                                     ; preds = %block_.L_4537ba
  %loadMem_4537c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 1
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 15
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RBP.i230
  %5841 = sub i64 %5840, 8
  %5842 = load i64, i64* %PC.i228
  %5843 = add i64 %5842, 4
  store i64 %5843, i64* %PC.i228
  %5844 = inttoptr i64 %5841 to i64*
  %5845 = load i64, i64* %5844
  store i64 %5845, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_4537c9, %struct.Memory** %MEMORY
  %loadMem_4537cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 5
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 15
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %5854 to i64*
  %5855 = load i64, i64* %RBP.i227
  %5856 = sub i64 %5855, 192
  %5857 = load i64, i64* %PC.i225
  %5858 = add i64 %5857, 7
  store i64 %5858, i64* %PC.i225
  %5859 = inttoptr i64 %5856 to i32*
  %5860 = load i32, i32* %5859
  %5861 = sext i32 %5860 to i64
  store i64 %5861, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_4537cd, %struct.Memory** %MEMORY
  %loadMem_4537d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 33
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5864 to i64*
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 1
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %5867 to i64*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 5
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 11
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %RAX.i222
  %5875 = load i64, i64* %RCX.i223
  %5876 = mul i64 %5875, 8
  %5877 = add i64 %5876, %5874
  %5878 = load i64, i64* %PC.i221
  %5879 = add i64 %5878, 4
  store i64 %5879, i64* %PC.i221
  %5880 = inttoptr i64 %5877 to i64*
  %5881 = load i64, i64* %5880
  store i64 %5881, i64* %RDI.i224, align 8
  store %struct.Memory* %loadMem_4537d4, %struct.Memory** %MEMORY
  %loadMem_4537d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 33
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5884 to i64*
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 9
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %RSI.i219 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 15
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %5890 to i64*
  %5891 = load i64, i64* %RBP.i220
  %5892 = sub i64 %5891, 184
  %5893 = load i64, i64* %PC.i218
  %5894 = add i64 %5893, 7
  store i64 %5894, i64* %PC.i218
  %5895 = inttoptr i64 %5892 to i64*
  %5896 = load i64, i64* %5895
  store i64 %5896, i64* %RSI.i219, align 8
  store %struct.Memory* %loadMem_4537d8, %struct.Memory** %MEMORY
  %loadMem1_4537df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 33
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5899 to i64*
  %5900 = load i64, i64* %PC.i217
  %5901 = add i64 %5900, 817
  %5902 = load i64, i64* %PC.i217
  %5903 = add i64 %5902, 5
  %5904 = load i64, i64* %PC.i217
  %5905 = add i64 %5904, 5
  store i64 %5905, i64* %PC.i217
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5907 = load i64, i64* %5906, align 8
  %5908 = add i64 %5907, -8
  %5909 = inttoptr i64 %5908 to i64*
  store i64 %5903, i64* %5909
  store i64 %5908, i64* %5906, align 8
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5901, i64* %5910, align 8
  store %struct.Memory* %loadMem1_4537df, %struct.Memory** %MEMORY
  %loadMem2_4537df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4537df = load i64, i64* %3
  %call2_4537df = call %struct.Memory* @sub_453b10.simple_distance(%struct.State* %0, i64 %loadPC_4537df, %struct.Memory* %loadMem2_4537df)
  store %struct.Memory* %call2_4537df, %struct.Memory** %MEMORY
  %loadMem_4537e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 33
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 15
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %5916 to i64*
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5917, i64 0, i64 0
  %XMM0.i216 = bitcast %union.VectorReg* %5918 to %union.vec128_t*
  %5919 = load i64, i64* %RBP.i215
  %5920 = sub i64 %5919, 208
  %5921 = bitcast %union.vec128_t* %XMM0.i216 to i8*
  %5922 = load i64, i64* %PC.i214
  %5923 = add i64 %5922, 8
  store i64 %5923, i64* %PC.i214
  %5924 = bitcast i8* %5921 to <2 x float>*
  %5925 = load <2 x float>, <2 x float>* %5924, align 1
  %5926 = extractelement <2 x float> %5925, i32 0
  %5927 = inttoptr i64 %5920 to float*
  store float %5926, float* %5927
  store %struct.Memory* %loadMem_4537e4, %struct.Memory** %MEMORY
  %loadMem_4537ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 33
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 15
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %5933 to i64*
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5934, i64 0, i64 0
  %YMM0.i213 = bitcast %union.VectorReg* %5935 to %"class.std::bitset"*
  %5936 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %5937 = load i64, i64* %RBP.i212
  %5938 = sub i64 %5937, 208
  %5939 = load i64, i64* %PC.i211
  %5940 = add i64 %5939, 8
  store i64 %5940, i64* %PC.i211
  %5941 = inttoptr i64 %5938 to float*
  %5942 = load float, float* %5941
  %5943 = bitcast i8* %5936 to float*
  store float %5942, float* %5943, align 1
  %5944 = getelementptr inbounds i8, i8* %5936, i64 4
  %5945 = bitcast i8* %5944 to float*
  store float 0.000000e+00, float* %5945, align 1
  %5946 = getelementptr inbounds i8, i8* %5936, i64 8
  %5947 = bitcast i8* %5946 to float*
  store float 0.000000e+00, float* %5947, align 1
  %5948 = getelementptr inbounds i8, i8* %5936, i64 12
  %5949 = bitcast i8* %5948 to float*
  store float 0.000000e+00, float* %5949, align 1
  store %struct.Memory* %loadMem_4537ec, %struct.Memory** %MEMORY
  %loadMem_4537f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 33
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5952 to i64*
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 1
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %5955 to i64*
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 15
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5958 to i64*
  %5959 = load i64, i64* %RBP.i210
  %5960 = sub i64 %5959, 40
  %5961 = load i64, i64* %PC.i208
  %5962 = add i64 %5961, 4
  store i64 %5962, i64* %PC.i208
  %5963 = inttoptr i64 %5960 to i64*
  %5964 = load i64, i64* %5963
  store i64 %5964, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_4537f4, %struct.Memory** %MEMORY
  %loadMem_4537f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 33
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5967 to i64*
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 5
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 15
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5973 to i64*
  %5974 = load i64, i64* %RBP.i207
  %5975 = sub i64 %5974, 192
  %5976 = load i64, i64* %PC.i205
  %5977 = add i64 %5976, 7
  store i64 %5977, i64* %PC.i205
  %5978 = inttoptr i64 %5975 to i32*
  %5979 = load i32, i32* %5978
  %5980 = sext i32 %5979 to i64
  store i64 %5980, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_4537f8, %struct.Memory** %MEMORY
  %loadMem_4537ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 33
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 1
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %5986 to i64*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 5
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %5989 to i64*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5990, i64 0, i64 1
  %YMM1.i204 = bitcast %union.VectorReg* %5991 to %"class.std::bitset"*
  %5992 = bitcast %"class.std::bitset"* %YMM1.i204 to i8*
  %5993 = load i64, i64* %RAX.i202
  %5994 = load i64, i64* %RCX.i203
  %5995 = mul i64 %5994, 4
  %5996 = add i64 %5995, %5993
  %5997 = load i64, i64* %PC.i201
  %5998 = add i64 %5997, 5
  store i64 %5998, i64* %PC.i201
  %5999 = inttoptr i64 %5996 to float*
  %6000 = load float, float* %5999
  %6001 = bitcast i8* %5992 to float*
  store float %6000, float* %6001, align 1
  %6002 = getelementptr inbounds i8, i8* %5992, i64 4
  %6003 = bitcast i8* %6002 to float*
  store float 0.000000e+00, float* %6003, align 1
  %6004 = getelementptr inbounds i8, i8* %5992, i64 8
  %6005 = bitcast i8* %6004 to float*
  store float 0.000000e+00, float* %6005, align 1
  %6006 = getelementptr inbounds i8, i8* %5992, i64 12
  %6007 = bitcast i8* %6006 to float*
  store float 0.000000e+00, float* %6007, align 1
  store %struct.Memory* %loadMem_4537ff, %struct.Memory** %MEMORY
  %loadMem_453804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 33
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6010 to i64*
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6011, i64 0, i64 0
  %XMM0.i196 = bitcast %union.VectorReg* %6012 to %union.vec128_t*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6013, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %6014 to %union.vec128_t*
  %6015 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %6016 = bitcast %union.vec128_t* %XMM0.i196 to i8*
  %6017 = load i64, i64* %PC.i195
  %6018 = add i64 %6017, 3
  store i64 %6018, i64* %PC.i195
  %6019 = bitcast i8* %6015 to <2 x float>*
  %6020 = load <2 x float>, <2 x float>* %6019, align 1
  %6021 = extractelement <2 x float> %6020, i32 0
  %6022 = bitcast i8* %6016 to <2 x float>*
  %6023 = load <2 x float>, <2 x float>* %6022, align 1
  %6024 = extractelement <2 x float> %6023, i32 0
  %6025 = fcmp uno float %6021, %6024
  br i1 %6025, label %6026, label %6038

; <label>:6026:                                   ; preds = %block_4537c9
  %6027 = fadd float %6021, %6024
  %6028 = bitcast float %6027 to i32
  %6029 = and i32 %6028, 2143289344
  %6030 = icmp eq i32 %6029, 2139095040
  %6031 = and i32 %6028, 4194303
  %6032 = icmp ne i32 %6031, 0
  %6033 = and i1 %6030, %6032
  br i1 %6033, label %6034, label %6044

; <label>:6034:                                   ; preds = %6026
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6036 = load i64, i64* %6035, align 8
  %6037 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6036, %struct.Memory* %loadMem_453804)
  br label %routine_ucomiss__xmm0___xmm1.exit198

; <label>:6038:                                   ; preds = %block_4537c9
  %6039 = fcmp ogt float %6021, %6024
  br i1 %6039, label %6044, label %6040

; <label>:6040:                                   ; preds = %6038
  %6041 = fcmp olt float %6021, %6024
  br i1 %6041, label %6044, label %6042

; <label>:6042:                                   ; preds = %6040
  %6043 = fcmp oeq float %6021, %6024
  br i1 %6043, label %6044, label %6051

; <label>:6044:                                   ; preds = %6042, %6040, %6038, %6026
  %6045 = phi i8 [ 0, %6038 ], [ 0, %6040 ], [ 1, %6042 ], [ 1, %6026 ]
  %6046 = phi i8 [ 0, %6038 ], [ 0, %6040 ], [ 0, %6042 ], [ 1, %6026 ]
  %6047 = phi i8 [ 0, %6038 ], [ 1, %6040 ], [ 0, %6042 ], [ 1, %6026 ]
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6045, i8* %6048, align 1
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6046, i8* %6049, align 1
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6047, i8* %6050, align 1
  br label %6051

; <label>:6051:                                   ; preds = %6044, %6042
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6052, align 1
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6053, align 1
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6054, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit198

routine_ucomiss__xmm0___xmm1.exit198:             ; preds = %6034, %6051
  %6055 = phi %struct.Memory* [ %6037, %6034 ], [ %loadMem_453804, %6051 ]
  store %struct.Memory* %6055, %struct.Memory** %MEMORY
  %loadMem_453807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 33
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6058 to i64*
  %6059 = load i64, i64* %PC.i194
  %6060 = add i64 %6059, 23
  %6061 = load i64, i64* %PC.i194
  %6062 = add i64 %6061, 6
  %6063 = load i64, i64* %PC.i194
  %6064 = add i64 %6063, 6
  store i64 %6064, i64* %PC.i194
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6066 = load i8, i8* %6065, align 1
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6068 = load i8, i8* %6067, align 1
  %6069 = or i8 %6068, %6066
  %6070 = icmp ne i8 %6069, 0
  %6071 = zext i1 %6070 to i8
  store i8 %6071, i8* %BRANCH_TAKEN, align 1
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6073 = select i1 %6070, i64 %6060, i64 %6062
  store i64 %6073, i64* %6072, align 8
  store %struct.Memory* %loadMem_453807, %struct.Memory** %MEMORY
  %loadBr_453807 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453807 = icmp eq i8 %loadBr_453807, 1
  br i1 %cmpBr_453807, label %block_.L_45381e, label %block_45380d

block_45380d:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit198
  %loadMem_45380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 1
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 15
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %RBP.i193
  %6084 = sub i64 %6083, 192
  %6085 = load i64, i64* %PC.i191
  %6086 = add i64 %6085, 6
  store i64 %6086, i64* %PC.i191
  %6087 = inttoptr i64 %6084 to i32*
  %6088 = load i32, i32* %6087
  %6089 = zext i32 %6088 to i64
  store i64 %6089, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_45380d, %struct.Memory** %MEMORY
  %loadMem_453813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6092 to i64*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 1
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %6095 to i32*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 15
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6098 to i64*
  %6099 = load i64, i64* %RBP.i190
  %6100 = sub i64 %6099, 228
  %6101 = load i32, i32* %EAX.i189
  %6102 = zext i32 %6101 to i64
  %6103 = load i64, i64* %PC.i188
  %6104 = add i64 %6103, 6
  store i64 %6104, i64* %PC.i188
  %6105 = inttoptr i64 %6100 to i32*
  store i32 %6101, i32* %6105
  store %struct.Memory* %loadMem_453813, %struct.Memory** %MEMORY
  %loadMem_453819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 33
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6108 to i64*
  %6109 = load i64, i64* %PC.i187
  %6110 = add i64 %6109, 224
  %6111 = load i64, i64* %PC.i187
  %6112 = add i64 %6111, 5
  store i64 %6112, i64* %PC.i187
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6110, i64* %6113, align 8
  store %struct.Memory* %loadMem_453819, %struct.Memory** %MEMORY
  br label %block_.L_4538f9

block_.L_45381e:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit198
  %loadMem_45381e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 33
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6116 to i64*
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 15
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6119 to i64*
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6120, i64 0, i64 0
  %YMM0.i186 = bitcast %union.VectorReg* %6121 to %"class.std::bitset"*
  %6122 = bitcast %"class.std::bitset"* %YMM0.i186 to i8*
  %6123 = load i64, i64* %RBP.i185
  %6124 = sub i64 %6123, 208
  %6125 = load i64, i64* %PC.i184
  %6126 = add i64 %6125, 8
  store i64 %6126, i64* %PC.i184
  %6127 = inttoptr i64 %6124 to float*
  %6128 = load float, float* %6127
  %6129 = bitcast i8* %6122 to float*
  store float %6128, float* %6129, align 1
  %6130 = getelementptr inbounds i8, i8* %6122, i64 4
  %6131 = bitcast i8* %6130 to float*
  store float 0.000000e+00, float* %6131, align 1
  %6132 = getelementptr inbounds i8, i8* %6122, i64 8
  %6133 = bitcast i8* %6132 to float*
  store float 0.000000e+00, float* %6133, align 1
  %6134 = getelementptr inbounds i8, i8* %6122, i64 12
  %6135 = bitcast i8* %6134 to float*
  store float 0.000000e+00, float* %6135, align 1
  store %struct.Memory* %loadMem_45381e, %struct.Memory** %MEMORY
  %loadMem_453826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 15
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6142, i64 0, i64 1
  %YMM1.i183 = bitcast %union.VectorReg* %6143 to %"class.std::bitset"*
  %6144 = bitcast %"class.std::bitset"* %YMM1.i183 to i8*
  %6145 = load i64, i64* %RBP.i182
  %6146 = sub i64 %6145, 204
  %6147 = load i64, i64* %PC.i181
  %6148 = add i64 %6147, 8
  store i64 %6148, i64* %PC.i181
  %6149 = inttoptr i64 %6146 to float*
  %6150 = load float, float* %6149
  %6151 = bitcast i8* %6144 to float*
  store float %6150, float* %6151, align 1
  %6152 = getelementptr inbounds i8, i8* %6144, i64 4
  %6153 = bitcast i8* %6152 to float*
  store float 0.000000e+00, float* %6153, align 1
  %6154 = getelementptr inbounds i8, i8* %6144, i64 8
  %6155 = bitcast i8* %6154 to float*
  store float 0.000000e+00, float* %6155, align 1
  %6156 = getelementptr inbounds i8, i8* %6144, i64 12
  %6157 = bitcast i8* %6156 to float*
  store float 0.000000e+00, float* %6157, align 1
  store %struct.Memory* %loadMem_453826, %struct.Memory** %MEMORY
  %loadMem_45382e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 33
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6160 to i64*
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6161, i64 0, i64 0
  %XMM0.i176 = bitcast %union.VectorReg* %6162 to %union.vec128_t*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6163, i64 0, i64 1
  %XMM1.i177 = bitcast %union.VectorReg* %6164 to %union.vec128_t*
  %6165 = bitcast %union.vec128_t* %XMM1.i177 to i8*
  %6166 = bitcast %union.vec128_t* %XMM0.i176 to i8*
  %6167 = load i64, i64* %PC.i175
  %6168 = add i64 %6167, 3
  store i64 %6168, i64* %PC.i175
  %6169 = bitcast i8* %6165 to <2 x float>*
  %6170 = load <2 x float>, <2 x float>* %6169, align 1
  %6171 = extractelement <2 x float> %6170, i32 0
  %6172 = bitcast i8* %6166 to <2 x float>*
  %6173 = load <2 x float>, <2 x float>* %6172, align 1
  %6174 = extractelement <2 x float> %6173, i32 0
  %6175 = fcmp uno float %6171, %6174
  br i1 %6175, label %6176, label %6188

; <label>:6176:                                   ; preds = %block_.L_45381e
  %6177 = fadd float %6171, %6174
  %6178 = bitcast float %6177 to i32
  %6179 = and i32 %6178, 2143289344
  %6180 = icmp eq i32 %6179, 2139095040
  %6181 = and i32 %6178, 4194303
  %6182 = icmp ne i32 %6181, 0
  %6183 = and i1 %6180, %6182
  br i1 %6183, label %6184, label %6194

; <label>:6184:                                   ; preds = %6176
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6186 = load i64, i64* %6185, align 8
  %6187 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6186, %struct.Memory* %loadMem_45382e)
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:6188:                                   ; preds = %block_.L_45381e
  %6189 = fcmp ogt float %6171, %6174
  br i1 %6189, label %6194, label %6190

; <label>:6190:                                   ; preds = %6188
  %6191 = fcmp olt float %6171, %6174
  br i1 %6191, label %6194, label %6192

; <label>:6192:                                   ; preds = %6190
  %6193 = fcmp oeq float %6171, %6174
  br i1 %6193, label %6194, label %6201

; <label>:6194:                                   ; preds = %6192, %6190, %6188, %6176
  %6195 = phi i8 [ 0, %6188 ], [ 0, %6190 ], [ 1, %6192 ], [ 1, %6176 ]
  %6196 = phi i8 [ 0, %6188 ], [ 0, %6190 ], [ 0, %6192 ], [ 1, %6176 ]
  %6197 = phi i8 [ 0, %6188 ], [ 1, %6190 ], [ 0, %6192 ], [ 1, %6176 ]
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6195, i8* %6198, align 1
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6196, i8* %6199, align 1
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6197, i8* %6200, align 1
  br label %6201

; <label>:6201:                                   ; preds = %6194, %6192
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6202, align 1
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6203, align 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6204, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %6184, %6201
  %6205 = phi %struct.Memory* [ %6187, %6184 ], [ %loadMem_45382e, %6201 ]
  store %struct.Memory* %6205, %struct.Memory** %MEMORY
  %loadMem_453831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 33
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6208 to i64*
  %6209 = load i64, i64* %PC.i174
  %6210 = add i64 %6209, 56
  %6211 = load i64, i64* %PC.i174
  %6212 = add i64 %6211, 6
  %6213 = load i64, i64* %PC.i174
  %6214 = add i64 %6213, 6
  store i64 %6214, i64* %PC.i174
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6216 = load i8, i8* %6215, align 1
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6218 = load i8, i8* %6217, align 1
  %6219 = or i8 %6218, %6216
  %6220 = icmp ne i8 %6219, 0
  %6221 = zext i1 %6220 to i8
  store i8 %6221, i8* %BRANCH_TAKEN, align 1
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6223 = select i1 %6220, i64 %6210, i64 %6212
  store i64 %6223, i64* %6222, align 8
  store %struct.Memory* %loadMem_453831, %struct.Memory** %MEMORY
  %loadBr_453831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453831 = icmp eq i8 %loadBr_453831, 1
  br i1 %cmpBr_453831, label %block_.L_453869, label %block_453837

block_453837:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem1_453837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 33
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6226 to i64*
  %6227 = load i64, i64* %PC.i173
  %6228 = add i64 %6227, -58423
  %6229 = load i64, i64* %PC.i173
  %6230 = add i64 %6229, 5
  %6231 = load i64, i64* %PC.i173
  %6232 = add i64 %6231, 5
  store i64 %6232, i64* %PC.i173
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6234 = load i64, i64* %6233, align 8
  %6235 = add i64 %6234, -8
  %6236 = inttoptr i64 %6235 to i64*
  store i64 %6230, i64* %6236
  store i64 %6235, i64* %6233, align 8
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6228, i64* %6237, align 8
  store %struct.Memory* %loadMem1_453837, %struct.Memory** %MEMORY
  %loadMem2_453837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453837 = load i64, i64* %3
  %call2_453837 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_453837, %struct.Memory* %loadMem2_453837)
  store %struct.Memory* %call2_453837, %struct.Memory** %MEMORY
  %loadMem_45383c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 33
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6240 to i64*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6241, i64 0, i64 0
  %YMM0.i171 = bitcast %union.VectorReg* %6242 to %"class.std::bitset"*
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6243, i64 0, i64 0
  %XMM0.i172 = bitcast %union.VectorReg* %6244 to %union.vec128_t*
  %6245 = bitcast %"class.std::bitset"* %YMM0.i171 to i8*
  %6246 = bitcast %union.vec128_t* %XMM0.i172 to i8*
  %6247 = load i64, i64* %PC.i170
  %6248 = add i64 %6247, 4
  store i64 %6248, i64* %PC.i170
  %6249 = bitcast i8* %6245 to <2 x i32>*
  %6250 = load <2 x i32>, <2 x i32>* %6249, align 1
  %6251 = getelementptr inbounds i8, i8* %6245, i64 8
  %6252 = bitcast i8* %6251 to <2 x i32>*
  %6253 = load <2 x i32>, <2 x i32>* %6252, align 1
  %6254 = bitcast i8* %6246 to double*
  %6255 = load double, double* %6254, align 1
  %6256 = fptrunc double %6255 to float
  %6257 = bitcast i8* %6245 to float*
  store float %6256, float* %6257, align 1
  %6258 = extractelement <2 x i32> %6250, i32 1
  %6259 = getelementptr inbounds i8, i8* %6245, i64 4
  %6260 = bitcast i8* %6259 to i32*
  store i32 %6258, i32* %6260, align 1
  %6261 = extractelement <2 x i32> %6253, i32 0
  %6262 = bitcast i8* %6251 to i32*
  store i32 %6261, i32* %6262, align 1
  %6263 = extractelement <2 x i32> %6253, i32 1
  %6264 = getelementptr inbounds i8, i8* %6245, i64 12
  %6265 = bitcast i8* %6264 to i32*
  store i32 %6263, i32* %6265, align 1
  store %struct.Memory* %loadMem_45383c, %struct.Memory** %MEMORY
  %loadMem_453840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 33
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 15
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6271 to i64*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6272, i64 0, i64 0
  %XMM0.i169 = bitcast %union.VectorReg* %6273 to %union.vec128_t*
  %6274 = load i64, i64* %RBP.i168
  %6275 = sub i64 %6274, 216
  %6276 = bitcast %union.vec128_t* %XMM0.i169 to i8*
  %6277 = load i64, i64* %PC.i167
  %6278 = add i64 %6277, 8
  store i64 %6278, i64* %PC.i167
  %6279 = bitcast i8* %6276 to <2 x float>*
  %6280 = load <2 x float>, <2 x float>* %6279, align 1
  %6281 = extractelement <2 x float> %6280, i32 0
  %6282 = inttoptr i64 %6275 to float*
  store float %6281, float* %6282
  store %struct.Memory* %loadMem_453840, %struct.Memory** %MEMORY
  %loadMem_453848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 33
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6285 to i64*
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 1
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %6288 to i64*
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 15
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %6291 to i64*
  %6292 = load i64, i64* %RBP.i166
  %6293 = sub i64 %6292, 192
  %6294 = load i64, i64* %PC.i164
  %6295 = add i64 %6294, 6
  store i64 %6295, i64* %PC.i164
  %6296 = inttoptr i64 %6293 to i32*
  %6297 = load i32, i32* %6296
  %6298 = zext i32 %6297 to i64
  store i64 %6298, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_453848, %struct.Memory** %MEMORY
  %loadMem_45384e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 1
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %6304 to i32*
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 15
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %6307 to i64*
  %6308 = load i64, i64* %RBP.i163
  %6309 = sub i64 %6308, 228
  %6310 = load i32, i32* %EAX.i162
  %6311 = zext i32 %6310 to i64
  %6312 = load i64, i64* %PC.i161
  %6313 = add i64 %6312, 6
  store i64 %6313, i64* %PC.i161
  %6314 = inttoptr i64 %6309 to i32*
  store i32 %6310, i32* %6314
  store %struct.Memory* %loadMem_45384e, %struct.Memory** %MEMORY
  %loadMem_453854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6316 = getelementptr inbounds %struct.GPR, %struct.GPR* %6315, i32 0, i32 33
  %6317 = getelementptr inbounds %struct.Reg, %struct.Reg* %6316, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6317 to i64*
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6319 = getelementptr inbounds %struct.GPR, %struct.GPR* %6318, i32 0, i32 15
  %6320 = getelementptr inbounds %struct.Reg, %struct.Reg* %6319, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6320 to i64*
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6321, i64 0, i64 0
  %YMM0.i160 = bitcast %union.VectorReg* %6322 to %"class.std::bitset"*
  %6323 = bitcast %"class.std::bitset"* %YMM0.i160 to i8*
  %6324 = load i64, i64* %RBP.i159
  %6325 = sub i64 %6324, 208
  %6326 = load i64, i64* %PC.i158
  %6327 = add i64 %6326, 8
  store i64 %6327, i64* %PC.i158
  %6328 = inttoptr i64 %6325 to float*
  %6329 = load float, float* %6328
  %6330 = bitcast i8* %6323 to float*
  store float %6329, float* %6330, align 1
  %6331 = getelementptr inbounds i8, i8* %6323, i64 4
  %6332 = bitcast i8* %6331 to float*
  store float 0.000000e+00, float* %6332, align 1
  %6333 = getelementptr inbounds i8, i8* %6323, i64 8
  %6334 = bitcast i8* %6333 to float*
  store float 0.000000e+00, float* %6334, align 1
  %6335 = getelementptr inbounds i8, i8* %6323, i64 12
  %6336 = bitcast i8* %6335 to float*
  store float 0.000000e+00, float* %6336, align 1
  store %struct.Memory* %loadMem_453854, %struct.Memory** %MEMORY
  %loadMem_45385c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 33
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6339 to i64*
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6341 = getelementptr inbounds %struct.GPR, %struct.GPR* %6340, i32 0, i32 15
  %6342 = getelementptr inbounds %struct.Reg, %struct.Reg* %6341, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6342 to i64*
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6343, i64 0, i64 0
  %XMM0.i157 = bitcast %union.VectorReg* %6344 to %union.vec128_t*
  %6345 = load i64, i64* %RBP.i156
  %6346 = sub i64 %6345, 204
  %6347 = bitcast %union.vec128_t* %XMM0.i157 to i8*
  %6348 = load i64, i64* %PC.i155
  %6349 = add i64 %6348, 8
  store i64 %6349, i64* %PC.i155
  %6350 = bitcast i8* %6347 to <2 x float>*
  %6351 = load <2 x float>, <2 x float>* %6350, align 1
  %6352 = extractelement <2 x float> %6351, i32 0
  %6353 = inttoptr i64 %6346 to float*
  store float %6352, float* %6353
  store %struct.Memory* %loadMem_45385c, %struct.Memory** %MEMORY
  %loadMem_453864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 33
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6356 to i64*
  %6357 = load i64, i64* %PC.i154
  %6358 = add i64 %6357, 124
  %6359 = load i64, i64* %PC.i154
  %6360 = add i64 %6359, 5
  store i64 %6360, i64* %PC.i154
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6358, i64* %6361, align 8
  store %struct.Memory* %loadMem_453864, %struct.Memory** %MEMORY
  br label %block_.L_4538e0

block_.L_453869:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_453869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 33
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6364 to i64*
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 15
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6368, i64 0, i64 0
  %YMM0.i153 = bitcast %union.VectorReg* %6369 to %"class.std::bitset"*
  %6370 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %6371 = load i64, i64* %RBP.i152
  %6372 = sub i64 %6371, 208
  %6373 = load i64, i64* %PC.i151
  %6374 = add i64 %6373, 8
  store i64 %6374, i64* %PC.i151
  %6375 = inttoptr i64 %6372 to float*
  %6376 = load float, float* %6375
  %6377 = bitcast i8* %6370 to float*
  store float %6376, float* %6377, align 1
  %6378 = getelementptr inbounds i8, i8* %6370, i64 4
  %6379 = bitcast i8* %6378 to float*
  store float 0.000000e+00, float* %6379, align 1
  %6380 = getelementptr inbounds i8, i8* %6370, i64 8
  %6381 = bitcast i8* %6380 to float*
  store float 0.000000e+00, float* %6381, align 1
  %6382 = getelementptr inbounds i8, i8* %6370, i64 12
  %6383 = bitcast i8* %6382 to float*
  store float 0.000000e+00, float* %6383, align 1
  store %struct.Memory* %loadMem_453869, %struct.Memory** %MEMORY
  %loadMem_453871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 33
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 15
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6389 to i64*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6390, i64 0, i64 0
  %XMM0.i148 = bitcast %union.VectorReg* %6391 to %union.vec128_t*
  %6392 = bitcast %union.vec128_t* %XMM0.i148 to i8*
  %6393 = load i64, i64* %RBP.i147
  %6394 = sub i64 %6393, 204
  %6395 = load i64, i64* %PC.i146
  %6396 = add i64 %6395, 7
  store i64 %6396, i64* %PC.i146
  %6397 = bitcast i8* %6392 to <2 x float>*
  %6398 = load <2 x float>, <2 x float>* %6397, align 1
  %6399 = extractelement <2 x float> %6398, i32 0
  %6400 = inttoptr i64 %6394 to float*
  %6401 = load float, float* %6400
  %6402 = fcmp uno float %6399, %6401
  br i1 %6402, label %6403, label %6415

; <label>:6403:                                   ; preds = %block_.L_453869
  %6404 = fadd float %6399, %6401
  %6405 = bitcast float %6404 to i32
  %6406 = and i32 %6405, 2143289344
  %6407 = icmp eq i32 %6406, 2139095040
  %6408 = and i32 %6405, 4194303
  %6409 = icmp ne i32 %6408, 0
  %6410 = and i1 %6407, %6409
  br i1 %6410, label %6411, label %6421

; <label>:6411:                                   ; preds = %6403
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6413 = load i64, i64* %6412, align 8
  %6414 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6413, %struct.Memory* %loadMem_453871)
  br label %routine_ucomiss_MINUS0xcc__rbp____xmm0.exit

; <label>:6415:                                   ; preds = %block_.L_453869
  %6416 = fcmp ogt float %6399, %6401
  br i1 %6416, label %6421, label %6417

; <label>:6417:                                   ; preds = %6415
  %6418 = fcmp olt float %6399, %6401
  br i1 %6418, label %6421, label %6419

; <label>:6419:                                   ; preds = %6417
  %6420 = fcmp oeq float %6399, %6401
  br i1 %6420, label %6421, label %6428

; <label>:6421:                                   ; preds = %6419, %6417, %6415, %6403
  %6422 = phi i8 [ 0, %6415 ], [ 0, %6417 ], [ 1, %6419 ], [ 1, %6403 ]
  %6423 = phi i8 [ 0, %6415 ], [ 0, %6417 ], [ 0, %6419 ], [ 1, %6403 ]
  %6424 = phi i8 [ 0, %6415 ], [ 1, %6417 ], [ 0, %6419 ], [ 1, %6403 ]
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6422, i8* %6425, align 1
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6423, i8* %6426, align 1
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6424, i8* %6427, align 1
  br label %6428

; <label>:6428:                                   ; preds = %6421, %6419
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6429, align 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6430, align 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6431, align 1
  br label %routine_ucomiss_MINUS0xcc__rbp____xmm0.exit

routine_ucomiss_MINUS0xcc__rbp____xmm0.exit:      ; preds = %6411, %6428
  %6432 = phi %struct.Memory* [ %6414, %6411 ], [ %loadMem_453871, %6428 ]
  store %struct.Memory* %6432, %struct.Memory** %MEMORY
  %loadMem_453878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 33
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6435 to i64*
  %6436 = load i64, i64* %PC.i145
  %6437 = add i64 %6436, 99
  %6438 = load i64, i64* %PC.i145
  %6439 = add i64 %6438, 6
  %6440 = load i64, i64* %PC.i145
  %6441 = add i64 %6440, 6
  store i64 %6441, i64* %PC.i145
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6443 = load i8, i8* %6442, align 1
  %6444 = icmp eq i8 %6443, 0
  %6445 = zext i1 %6444 to i8
  store i8 %6445, i8* %BRANCH_TAKEN, align 1
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6447 = select i1 %6444, i64 %6437, i64 %6439
  store i64 %6447, i64* %6446, align 8
  store %struct.Memory* %loadMem_453878, %struct.Memory** %MEMORY
  %loadBr_453878 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453878 = icmp eq i8 %loadBr_453878, 1
  br i1 %cmpBr_453878, label %block_.L_4538db, label %block_45387e

block_45387e:                                     ; preds = %routine_ucomiss_MINUS0xcc__rbp____xmm0.exit
  %loadMem_45387e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6450 to i64*
  %6451 = load i64, i64* %PC.i144
  %6452 = add i64 %6451, 93
  %6453 = load i64, i64* %PC.i144
  %6454 = add i64 %6453, 6
  %6455 = load i64, i64* %PC.i144
  %6456 = add i64 %6455, 6
  store i64 %6456, i64* %PC.i144
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6458 = load i8, i8* %6457, align 1
  store i8 %6458, i8* %BRANCH_TAKEN, align 1
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6460 = icmp ne i8 %6458, 0
  %6461 = select i1 %6460, i64 %6452, i64 %6454
  store i64 %6461, i64* %6459, align 8
  store %struct.Memory* %loadMem_45387e, %struct.Memory** %MEMORY
  %loadBr_45387e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45387e = icmp eq i8 %loadBr_45387e, 1
  br i1 %cmpBr_45387e, label %block_.L_4538db, label %block_453884

block_453884:                                     ; preds = %block_45387e
  %loadMem1_453884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 33
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6464 to i64*
  %6465 = load i64, i64* %PC.i143
  %6466 = add i64 %6465, -58500
  %6467 = load i64, i64* %PC.i143
  %6468 = add i64 %6467, 5
  %6469 = load i64, i64* %PC.i143
  %6470 = add i64 %6469, 5
  store i64 %6470, i64* %PC.i143
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6472 = load i64, i64* %6471, align 8
  %6473 = add i64 %6472, -8
  %6474 = inttoptr i64 %6473 to i64*
  store i64 %6468, i64* %6474
  store i64 %6473, i64* %6471, align 8
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6466, i64* %6475, align 8
  store %struct.Memory* %loadMem1_453884, %struct.Memory** %MEMORY
  %loadMem2_453884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453884 = load i64, i64* %3
  %call2_453884 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_453884, %struct.Memory* %loadMem2_453884)
  store %struct.Memory* %call2_453884, %struct.Memory** %MEMORY
  %loadMem_453889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6479, i64 0, i64 0
  %YMM0.i141 = bitcast %union.VectorReg* %6480 to %"class.std::bitset"*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6481, i64 0, i64 0
  %XMM0.i142 = bitcast %union.VectorReg* %6482 to %union.vec128_t*
  %6483 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %6484 = bitcast %union.vec128_t* %XMM0.i142 to i8*
  %6485 = load i64, i64* %PC.i140
  %6486 = add i64 %6485, 4
  store i64 %6486, i64* %PC.i140
  %6487 = bitcast i8* %6483 to <2 x i32>*
  %6488 = load <2 x i32>, <2 x i32>* %6487, align 1
  %6489 = getelementptr inbounds i8, i8* %6483, i64 8
  %6490 = bitcast i8* %6489 to <2 x i32>*
  %6491 = load <2 x i32>, <2 x i32>* %6490, align 1
  %6492 = bitcast i8* %6484 to double*
  %6493 = load double, double* %6492, align 1
  %6494 = fptrunc double %6493 to float
  %6495 = bitcast i8* %6483 to float*
  store float %6494, float* %6495, align 1
  %6496 = extractelement <2 x i32> %6488, i32 1
  %6497 = getelementptr inbounds i8, i8* %6483, i64 4
  %6498 = bitcast i8* %6497 to i32*
  store i32 %6496, i32* %6498, align 1
  %6499 = extractelement <2 x i32> %6491, i32 0
  %6500 = bitcast i8* %6489 to i32*
  store i32 %6499, i32* %6500, align 1
  %6501 = extractelement <2 x i32> %6491, i32 1
  %6502 = getelementptr inbounds i8, i8* %6483, i64 12
  %6503 = bitcast i8* %6502 to i32*
  store i32 %6501, i32* %6503, align 1
  store %struct.Memory* %loadMem_453889, %struct.Memory** %MEMORY
  %loadMem_45388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6505 = getelementptr inbounds %struct.GPR, %struct.GPR* %6504, i32 0, i32 33
  %6506 = getelementptr inbounds %struct.Reg, %struct.Reg* %6505, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6506 to i64*
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6508 = getelementptr inbounds %struct.GPR, %struct.GPR* %6507, i32 0, i32 15
  %6509 = getelementptr inbounds %struct.Reg, %struct.Reg* %6508, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %6509 to i64*
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6511 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6510, i64 0, i64 0
  %XMM0.i139 = bitcast %union.VectorReg* %6511 to %union.vec128_t*
  %6512 = load i64, i64* %RBP.i138
  %6513 = sub i64 %6512, 212
  %6514 = bitcast %union.vec128_t* %XMM0.i139 to i8*
  %6515 = load i64, i64* %PC.i137
  %6516 = add i64 %6515, 8
  store i64 %6516, i64* %PC.i137
  %6517 = bitcast i8* %6514 to <2 x float>*
  %6518 = load <2 x float>, <2 x float>* %6517, align 1
  %6519 = extractelement <2 x float> %6518, i32 0
  %6520 = inttoptr i64 %6513 to float*
  store float %6519, float* %6520
  store %struct.Memory* %loadMem_45388d, %struct.Memory** %MEMORY
  %loadMem_453895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 15
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6527, i64 0, i64 0
  %YMM0.i136 = bitcast %union.VectorReg* %6528 to %"class.std::bitset"*
  %6529 = bitcast %"class.std::bitset"* %YMM0.i136 to i8*
  %6530 = load i64, i64* %RBP.i135
  %6531 = sub i64 %6530, 212
  %6532 = load i64, i64* %PC.i134
  %6533 = add i64 %6532, 8
  store i64 %6533, i64* %PC.i134
  %6534 = inttoptr i64 %6531 to float*
  %6535 = load float, float* %6534
  %6536 = bitcast i8* %6529 to float*
  store float %6535, float* %6536, align 1
  %6537 = getelementptr inbounds i8, i8* %6529, i64 4
  %6538 = bitcast i8* %6537 to float*
  store float 0.000000e+00, float* %6538, align 1
  %6539 = getelementptr inbounds i8, i8* %6529, i64 8
  %6540 = bitcast i8* %6539 to float*
  store float 0.000000e+00, float* %6540, align 1
  %6541 = getelementptr inbounds i8, i8* %6529, i64 12
  %6542 = bitcast i8* %6541 to float*
  store float 0.000000e+00, float* %6542, align 1
  store %struct.Memory* %loadMem_453895, %struct.Memory** %MEMORY
  %loadMem_45389d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 33
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6545 to i64*
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 15
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %6548 to i64*
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6549, i64 0, i64 0
  %XMM0.i131 = bitcast %union.VectorReg* %6550 to %union.vec128_t*
  %6551 = bitcast %union.vec128_t* %XMM0.i131 to i8*
  %6552 = load i64, i64* %RBP.i130
  %6553 = sub i64 %6552, 216
  %6554 = load i64, i64* %PC.i129
  %6555 = add i64 %6554, 7
  store i64 %6555, i64* %PC.i129
  %6556 = bitcast i8* %6551 to <2 x float>*
  %6557 = load <2 x float>, <2 x float>* %6556, align 1
  %6558 = extractelement <2 x float> %6557, i32 0
  %6559 = inttoptr i64 %6553 to float*
  %6560 = load float, float* %6559
  %6561 = fcmp uno float %6558, %6560
  br i1 %6561, label %6562, label %6574

; <label>:6562:                                   ; preds = %block_453884
  %6563 = fadd float %6558, %6560
  %6564 = bitcast float %6563 to i32
  %6565 = and i32 %6564, 2143289344
  %6566 = icmp eq i32 %6565, 2139095040
  %6567 = and i32 %6564, 4194303
  %6568 = icmp ne i32 %6567, 0
  %6569 = and i1 %6566, %6568
  br i1 %6569, label %6570, label %6580

; <label>:6570:                                   ; preds = %6562
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6572 = load i64, i64* %6571, align 8
  %6573 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6572, %struct.Memory* %loadMem_45389d)
  br label %routine_ucomiss_MINUS0xd8__rbp____xmm0.exit

; <label>:6574:                                   ; preds = %block_453884
  %6575 = fcmp ogt float %6558, %6560
  br i1 %6575, label %6580, label %6576

; <label>:6576:                                   ; preds = %6574
  %6577 = fcmp olt float %6558, %6560
  br i1 %6577, label %6580, label %6578

; <label>:6578:                                   ; preds = %6576
  %6579 = fcmp oeq float %6558, %6560
  br i1 %6579, label %6580, label %6587

; <label>:6580:                                   ; preds = %6578, %6576, %6574, %6562
  %6581 = phi i8 [ 0, %6574 ], [ 0, %6576 ], [ 1, %6578 ], [ 1, %6562 ]
  %6582 = phi i8 [ 0, %6574 ], [ 0, %6576 ], [ 0, %6578 ], [ 1, %6562 ]
  %6583 = phi i8 [ 0, %6574 ], [ 1, %6576 ], [ 0, %6578 ], [ 1, %6562 ]
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6581, i8* %6584, align 1
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6582, i8* %6585, align 1
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6583, i8* %6586, align 1
  br label %6587

; <label>:6587:                                   ; preds = %6580, %6578
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6588, align 1
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6589, align 1
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6590, align 1
  br label %routine_ucomiss_MINUS0xd8__rbp____xmm0.exit

routine_ucomiss_MINUS0xd8__rbp____xmm0.exit:      ; preds = %6570, %6587
  %6591 = phi %struct.Memory* [ %6573, %6570 ], [ %loadMem_45389d, %6587 ]
  store %struct.Memory* %6591, %struct.Memory** %MEMORY
  %loadMem_4538a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6593 = getelementptr inbounds %struct.GPR, %struct.GPR* %6592, i32 0, i32 33
  %6594 = getelementptr inbounds %struct.Reg, %struct.Reg* %6593, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6594 to i64*
  %6595 = load i64, i64* %PC.i128
  %6596 = add i64 %6595, 50
  %6597 = load i64, i64* %PC.i128
  %6598 = add i64 %6597, 6
  %6599 = load i64, i64* %PC.i128
  %6600 = add i64 %6599, 6
  store i64 %6600, i64* %PC.i128
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6602 = load i8, i8* %6601, align 1
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6604 = load i8, i8* %6603, align 1
  %6605 = or i8 %6604, %6602
  %6606 = icmp ne i8 %6605, 0
  %6607 = zext i1 %6606 to i8
  store i8 %6607, i8* %BRANCH_TAKEN, align 1
  %6608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6609 = select i1 %6606, i64 %6596, i64 %6598
  store i64 %6609, i64* %6608, align 8
  store %struct.Memory* %loadMem_4538a4, %struct.Memory** %MEMORY
  %loadBr_4538a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4538a4 = icmp eq i8 %loadBr_4538a4, 1
  br i1 %cmpBr_4538a4, label %block_.L_4538d6, label %block_4538aa

block_4538aa:                                     ; preds = %routine_ucomiss_MINUS0xd8__rbp____xmm0.exit
  %loadMem_4538aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 33
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6612 to i64*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 15
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %6615 to i64*
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6616, i64 0, i64 0
  %YMM0.i127 = bitcast %union.VectorReg* %6617 to %"class.std::bitset"*
  %6618 = bitcast %"class.std::bitset"* %YMM0.i127 to i8*
  %6619 = load i64, i64* %RBP.i126
  %6620 = sub i64 %6619, 212
  %6621 = load i64, i64* %PC.i125
  %6622 = add i64 %6621, 8
  store i64 %6622, i64* %PC.i125
  %6623 = inttoptr i64 %6620 to float*
  %6624 = load float, float* %6623
  %6625 = bitcast i8* %6618 to float*
  store float %6624, float* %6625, align 1
  %6626 = getelementptr inbounds i8, i8* %6618, i64 4
  %6627 = bitcast i8* %6626 to float*
  store float 0.000000e+00, float* %6627, align 1
  %6628 = getelementptr inbounds i8, i8* %6618, i64 8
  %6629 = bitcast i8* %6628 to float*
  store float 0.000000e+00, float* %6629, align 1
  %6630 = getelementptr inbounds i8, i8* %6618, i64 12
  %6631 = bitcast i8* %6630 to float*
  store float 0.000000e+00, float* %6631, align 1
  store %struct.Memory* %loadMem_4538aa, %struct.Memory** %MEMORY
  %loadMem_4538b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 33
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6634 to i64*
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 15
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %6637 to i64*
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6639 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6638, i64 0, i64 0
  %XMM0.i124 = bitcast %union.VectorReg* %6639 to %union.vec128_t*
  %6640 = load i64, i64* %RBP.i123
  %6641 = sub i64 %6640, 216
  %6642 = bitcast %union.vec128_t* %XMM0.i124 to i8*
  %6643 = load i64, i64* %PC.i122
  %6644 = add i64 %6643, 8
  store i64 %6644, i64* %PC.i122
  %6645 = bitcast i8* %6642 to <2 x float>*
  %6646 = load <2 x float>, <2 x float>* %6645, align 1
  %6647 = extractelement <2 x float> %6646, i32 0
  %6648 = inttoptr i64 %6641 to float*
  store float %6647, float* %6648
  store %struct.Memory* %loadMem_4538b2, %struct.Memory** %MEMORY
  %loadMem_4538ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6650 = getelementptr inbounds %struct.GPR, %struct.GPR* %6649, i32 0, i32 33
  %6651 = getelementptr inbounds %struct.Reg, %struct.Reg* %6650, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %6651 to i64*
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 1
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %6654 to i64*
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 15
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %6657 to i64*
  %6658 = load i64, i64* %RBP.i121
  %6659 = sub i64 %6658, 192
  %6660 = load i64, i64* %PC.i119
  %6661 = add i64 %6660, 6
  store i64 %6661, i64* %PC.i119
  %6662 = inttoptr i64 %6659 to i32*
  %6663 = load i32, i32* %6662
  %6664 = zext i32 %6663 to i64
  store i64 %6664, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_4538ba, %struct.Memory** %MEMORY
  %loadMem_4538c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6666 = getelementptr inbounds %struct.GPR, %struct.GPR* %6665, i32 0, i32 33
  %6667 = getelementptr inbounds %struct.Reg, %struct.Reg* %6666, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6667 to i64*
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6669 = getelementptr inbounds %struct.GPR, %struct.GPR* %6668, i32 0, i32 1
  %6670 = getelementptr inbounds %struct.Reg, %struct.Reg* %6669, i32 0, i32 0
  %EAX.i117 = bitcast %union.anon* %6670 to i32*
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 15
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %6673 to i64*
  %6674 = load i64, i64* %RBP.i118
  %6675 = sub i64 %6674, 228
  %6676 = load i32, i32* %EAX.i117
  %6677 = zext i32 %6676 to i64
  %6678 = load i64, i64* %PC.i116
  %6679 = add i64 %6678, 6
  store i64 %6679, i64* %PC.i116
  %6680 = inttoptr i64 %6675 to i32*
  store i32 %6676, i32* %6680
  store %struct.Memory* %loadMem_4538c0, %struct.Memory** %MEMORY
  %loadMem_4538c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 33
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6683 to i64*
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 15
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %6686 to i64*
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6687, i64 0, i64 0
  %YMM0.i115 = bitcast %union.VectorReg* %6688 to %"class.std::bitset"*
  %6689 = bitcast %"class.std::bitset"* %YMM0.i115 to i8*
  %6690 = load i64, i64* %RBP.i114
  %6691 = sub i64 %6690, 208
  %6692 = load i64, i64* %PC.i113
  %6693 = add i64 %6692, 8
  store i64 %6693, i64* %PC.i113
  %6694 = inttoptr i64 %6691 to float*
  %6695 = load float, float* %6694
  %6696 = bitcast i8* %6689 to float*
  store float %6695, float* %6696, align 1
  %6697 = getelementptr inbounds i8, i8* %6689, i64 4
  %6698 = bitcast i8* %6697 to float*
  store float 0.000000e+00, float* %6698, align 1
  %6699 = getelementptr inbounds i8, i8* %6689, i64 8
  %6700 = bitcast i8* %6699 to float*
  store float 0.000000e+00, float* %6700, align 1
  %6701 = getelementptr inbounds i8, i8* %6689, i64 12
  %6702 = bitcast i8* %6701 to float*
  store float 0.000000e+00, float* %6702, align 1
  store %struct.Memory* %loadMem_4538c6, %struct.Memory** %MEMORY
  %loadMem_4538ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 33
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 15
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %6708 to i64*
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6709, i64 0, i64 0
  %XMM0.i112 = bitcast %union.VectorReg* %6710 to %union.vec128_t*
  %6711 = load i64, i64* %RBP.i111
  %6712 = sub i64 %6711, 204
  %6713 = bitcast %union.vec128_t* %XMM0.i112 to i8*
  %6714 = load i64, i64* %PC.i110
  %6715 = add i64 %6714, 8
  store i64 %6715, i64* %PC.i110
  %6716 = bitcast i8* %6713 to <2 x float>*
  %6717 = load <2 x float>, <2 x float>* %6716, align 1
  %6718 = extractelement <2 x float> %6717, i32 0
  %6719 = inttoptr i64 %6712 to float*
  store float %6718, float* %6719
  store %struct.Memory* %loadMem_4538ce, %struct.Memory** %MEMORY
  br label %block_.L_4538d6

block_.L_4538d6:                                  ; preds = %block_4538aa, %routine_ucomiss_MINUS0xd8__rbp____xmm0.exit
  %loadMem_4538d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 33
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6722 to i64*
  %6723 = load i64, i64* %PC.i109
  %6724 = add i64 %6723, 5
  %6725 = load i64, i64* %PC.i109
  %6726 = add i64 %6725, 5
  store i64 %6726, i64* %PC.i109
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6724, i64* %6727, align 8
  store %struct.Memory* %loadMem_4538d6, %struct.Memory** %MEMORY
  br label %block_.L_4538db

block_.L_4538db:                                  ; preds = %block_.L_4538d6, %block_45387e, %routine_ucomiss_MINUS0xcc__rbp____xmm0.exit
  %loadMem_4538db = load %struct.Memory*, %struct.Memory** %MEMORY
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 33
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6730 to i64*
  %6731 = load i64, i64* %PC.i108
  %6732 = add i64 %6731, 5
  %6733 = load i64, i64* %PC.i108
  %6734 = add i64 %6733, 5
  store i64 %6734, i64* %PC.i108
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6732, i64* %6735, align 8
  store %struct.Memory* %loadMem_4538db, %struct.Memory** %MEMORY
  br label %block_.L_4538e0

block_.L_4538e0:                                  ; preds = %block_.L_4538db, %block_453837
  %loadMem_4538e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6737 = getelementptr inbounds %struct.GPR, %struct.GPR* %6736, i32 0, i32 33
  %6738 = getelementptr inbounds %struct.Reg, %struct.Reg* %6737, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6738 to i64*
  %6739 = load i64, i64* %PC.i107
  %6740 = add i64 %6739, 5
  %6741 = load i64, i64* %PC.i107
  %6742 = add i64 %6741, 5
  store i64 %6742, i64* %PC.i107
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6740, i64* %6743, align 8
  store %struct.Memory* %loadMem_4538e0, %struct.Memory** %MEMORY
  br label %block_.L_4538e5

block_.L_4538e5:                                  ; preds = %block_.L_4538e0
  %loadMem_4538e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 33
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6746 to i64*
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 1
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %6749 to i64*
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 15
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %6752 to i64*
  %6753 = load i64, i64* %RBP.i106
  %6754 = sub i64 %6753, 192
  %6755 = load i64, i64* %PC.i104
  %6756 = add i64 %6755, 6
  store i64 %6756, i64* %PC.i104
  %6757 = inttoptr i64 %6754 to i32*
  %6758 = load i32, i32* %6757
  %6759 = zext i32 %6758 to i64
  store i64 %6759, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_4538e5, %struct.Memory** %MEMORY
  %loadMem_4538eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 33
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6762 to i64*
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 1
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %6765 to i64*
  %6766 = load i64, i64* %RAX.i103
  %6767 = load i64, i64* %PC.i102
  %6768 = add i64 %6767, 3
  store i64 %6768, i64* %PC.i102
  %6769 = trunc i64 %6766 to i32
  %6770 = add i32 1, %6769
  %6771 = zext i32 %6770 to i64
  store i64 %6771, i64* %RAX.i103, align 8
  %6772 = icmp ult i32 %6770, %6769
  %6773 = icmp ult i32 %6770, 1
  %6774 = or i1 %6772, %6773
  %6775 = zext i1 %6774 to i8
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6775, i8* %6776, align 1
  %6777 = and i32 %6770, 255
  %6778 = call i32 @llvm.ctpop.i32(i32 %6777)
  %6779 = trunc i32 %6778 to i8
  %6780 = and i8 %6779, 1
  %6781 = xor i8 %6780, 1
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6781, i8* %6782, align 1
  %6783 = xor i64 1, %6766
  %6784 = trunc i64 %6783 to i32
  %6785 = xor i32 %6784, %6770
  %6786 = lshr i32 %6785, 4
  %6787 = trunc i32 %6786 to i8
  %6788 = and i8 %6787, 1
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6788, i8* %6789, align 1
  %6790 = icmp eq i32 %6770, 0
  %6791 = zext i1 %6790 to i8
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6791, i8* %6792, align 1
  %6793 = lshr i32 %6770, 31
  %6794 = trunc i32 %6793 to i8
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6794, i8* %6795, align 1
  %6796 = lshr i32 %6769, 31
  %6797 = xor i32 %6793, %6796
  %6798 = add i32 %6797, %6793
  %6799 = icmp eq i32 %6798, 2
  %6800 = zext i1 %6799 to i8
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6800, i8* %6801, align 1
  store %struct.Memory* %loadMem_4538eb, %struct.Memory** %MEMORY
  %loadMem_4538ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 33
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6804 to i64*
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 1
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %EAX.i100 = bitcast %union.anon* %6807 to i32*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 15
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %6810 to i64*
  %6811 = load i64, i64* %RBP.i101
  %6812 = sub i64 %6811, 192
  %6813 = load i32, i32* %EAX.i100
  %6814 = zext i32 %6813 to i64
  %6815 = load i64, i64* %PC.i99
  %6816 = add i64 %6815, 6
  store i64 %6816, i64* %PC.i99
  %6817 = inttoptr i64 %6812 to i32*
  store i32 %6813, i32* %6817
  store %struct.Memory* %loadMem_4538ee, %struct.Memory** %MEMORY
  %loadMem_4538f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6820 to i64*
  %6821 = load i64, i64* %PC.i98
  %6822 = add i64 %6821, -314
  %6823 = load i64, i64* %PC.i98
  %6824 = add i64 %6823, 5
  store i64 %6824, i64* %PC.i98
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6822, i64* %6825, align 8
  store %struct.Memory* %loadMem_4538f4, %struct.Memory** %MEMORY
  br label %block_.L_4537ba

block_.L_4538f9:                                  ; preds = %block_45380d, %block_.L_4537ba
  %loadMem_4538f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6829, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %6830 to %"class.std::bitset"*
  %6831 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %6832 = load i64, i64* %PC.i96
  %6833 = add i64 %6832, ptrtoint (%G_0xedf__rip__type* @G_0xedf__rip_ to i64)
  %6834 = load i64, i64* %PC.i96
  %6835 = add i64 %6834, 8
  store i64 %6835, i64* %PC.i96
  %6836 = inttoptr i64 %6833 to double*
  %6837 = load double, double* %6836
  %6838 = bitcast i8* %6831 to double*
  store double %6837, double* %6838, align 1
  %6839 = getelementptr inbounds i8, i8* %6831, i64 8
  %6840 = bitcast i8* %6839 to double*
  store double 0.000000e+00, double* %6840, align 1
  store %struct.Memory* %loadMem_4538f9, %struct.Memory** %MEMORY
  %loadMem_453901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 33
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6843 to i64*
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 1
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %6846 to i64*
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 15
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %6849 to i64*
  %6850 = load i64, i64* %RBP.i95
  %6851 = sub i64 %6850, 24
  %6852 = load i64, i64* %PC.i93
  %6853 = add i64 %6852, 4
  store i64 %6853, i64* %PC.i93
  %6854 = inttoptr i64 %6851 to i64*
  %6855 = load i64, i64* %6854
  store i64 %6855, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_453901, %struct.Memory** %MEMORY
  %loadMem_453905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6857 = getelementptr inbounds %struct.GPR, %struct.GPR* %6856, i32 0, i32 33
  %6858 = getelementptr inbounds %struct.Reg, %struct.Reg* %6857, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6858 to i64*
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 5
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 15
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6864 to i64*
  %6865 = load i64, i64* %RBP.i92
  %6866 = sub i64 %6865, 228
  %6867 = load i64, i64* %PC.i90
  %6868 = add i64 %6867, 7
  store i64 %6868, i64* %PC.i90
  %6869 = inttoptr i64 %6866 to i32*
  %6870 = load i32, i32* %6869
  %6871 = sext i32 %6870 to i64
  store i64 %6871, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_453905, %struct.Memory** %MEMORY
  %loadMem_45390c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6873 = getelementptr inbounds %struct.GPR, %struct.GPR* %6872, i32 0, i32 33
  %6874 = getelementptr inbounds %struct.Reg, %struct.Reg* %6873, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6874 to i64*
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 1
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %6877 to i64*
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 5
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6880 to i64*
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6881, i64 0, i64 1
  %YMM1.i89 = bitcast %union.VectorReg* %6882 to %"class.std::bitset"*
  %6883 = bitcast %"class.std::bitset"* %YMM1.i89 to i8*
  %6884 = load i64, i64* %RAX.i87
  %6885 = load i64, i64* %RCX.i88
  %6886 = mul i64 %6885, 4
  %6887 = add i64 %6886, %6884
  %6888 = load i64, i64* %PC.i86
  %6889 = add i64 %6888, 5
  store i64 %6889, i64* %PC.i86
  %6890 = inttoptr i64 %6887 to float*
  %6891 = load float, float* %6890
  %6892 = fpext float %6891 to double
  %6893 = bitcast i8* %6883 to double*
  store double %6892, double* %6893, align 1
  store %struct.Memory* %loadMem_45390c, %struct.Memory** %MEMORY
  %loadMem_453911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 33
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6896 to i64*
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6898 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6897, i64 0, i64 1
  %YMM1.i84 = bitcast %union.VectorReg* %6898 to %"class.std::bitset"*
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6899, i64 0, i64 0
  %XMM0.i85 = bitcast %union.VectorReg* %6900 to %union.vec128_t*
  %6901 = bitcast %"class.std::bitset"* %YMM1.i84 to i8*
  %6902 = bitcast %"class.std::bitset"* %YMM1.i84 to i8*
  %6903 = bitcast %union.vec128_t* %XMM0.i85 to i8*
  %6904 = load i64, i64* %PC.i83
  %6905 = add i64 %6904, 4
  store i64 %6905, i64* %PC.i83
  %6906 = bitcast i8* %6902 to double*
  %6907 = load double, double* %6906, align 1
  %6908 = getelementptr inbounds i8, i8* %6902, i64 8
  %6909 = bitcast i8* %6908 to i64*
  %6910 = load i64, i64* %6909, align 1
  %6911 = bitcast i8* %6903 to double*
  %6912 = load double, double* %6911, align 1
  %6913 = fadd double %6907, %6912
  %6914 = bitcast i8* %6901 to double*
  store double %6913, double* %6914, align 1
  %6915 = getelementptr inbounds i8, i8* %6901, i64 8
  %6916 = bitcast i8* %6915 to i64*
  store i64 %6910, i64* %6916, align 1
  store %struct.Memory* %loadMem_453911, %struct.Memory** %MEMORY
  %loadMem_453915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 33
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6919 to i64*
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6920, i64 0, i64 0
  %YMM0.i81 = bitcast %union.VectorReg* %6921 to %"class.std::bitset"*
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6922, i64 0, i64 1
  %XMM1.i82 = bitcast %union.VectorReg* %6923 to %union.vec128_t*
  %6924 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %6925 = bitcast %union.vec128_t* %XMM1.i82 to i8*
  %6926 = load i64, i64* %PC.i80
  %6927 = add i64 %6926, 4
  store i64 %6927, i64* %PC.i80
  %6928 = bitcast i8* %6924 to <2 x i32>*
  %6929 = load <2 x i32>, <2 x i32>* %6928, align 1
  %6930 = getelementptr inbounds i8, i8* %6924, i64 8
  %6931 = bitcast i8* %6930 to <2 x i32>*
  %6932 = load <2 x i32>, <2 x i32>* %6931, align 1
  %6933 = bitcast i8* %6925 to double*
  %6934 = load double, double* %6933, align 1
  %6935 = fptrunc double %6934 to float
  %6936 = bitcast i8* %6924 to float*
  store float %6935, float* %6936, align 1
  %6937 = extractelement <2 x i32> %6929, i32 1
  %6938 = getelementptr inbounds i8, i8* %6924, i64 4
  %6939 = bitcast i8* %6938 to i32*
  store i32 %6937, i32* %6939, align 1
  %6940 = extractelement <2 x i32> %6932, i32 0
  %6941 = bitcast i8* %6930 to i32*
  store i32 %6940, i32* %6941, align 1
  %6942 = extractelement <2 x i32> %6932, i32 1
  %6943 = getelementptr inbounds i8, i8* %6924, i64 12
  %6944 = bitcast i8* %6943 to i32*
  store i32 %6942, i32* %6944, align 1
  store %struct.Memory* %loadMem_453915, %struct.Memory** %MEMORY
  %loadMem_453919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6946 = getelementptr inbounds %struct.GPR, %struct.GPR* %6945, i32 0, i32 33
  %6947 = getelementptr inbounds %struct.Reg, %struct.Reg* %6946, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6947 to i64*
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 1
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %6950 to i64*
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 5
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6954, i64 0, i64 0
  %XMM0.i79 = bitcast %union.VectorReg* %6955 to %union.vec128_t*
  %6956 = load i64, i64* %RAX.i77
  %6957 = load i64, i64* %RCX.i78
  %6958 = mul i64 %6957, 4
  %6959 = add i64 %6958, %6956
  %6960 = bitcast %union.vec128_t* %XMM0.i79 to i8*
  %6961 = load i64, i64* %PC.i76
  %6962 = add i64 %6961, 5
  store i64 %6962, i64* %PC.i76
  %6963 = bitcast i8* %6960 to <2 x float>*
  %6964 = load <2 x float>, <2 x float>* %6963, align 1
  %6965 = extractelement <2 x float> %6964, i32 0
  %6966 = inttoptr i64 %6959 to float*
  store float %6965, float* %6966
  store %struct.Memory* %loadMem_453919, %struct.Memory** %MEMORY
  %loadMem_45391e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 33
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 1
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %6972 to i64*
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 15
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %6975 to i64*
  %6976 = load i64, i64* %RBP.i75
  %6977 = sub i64 %6976, 224
  %6978 = load i64, i64* %PC.i73
  %6979 = add i64 %6978, 6
  store i64 %6979, i64* %PC.i73
  %6980 = inttoptr i64 %6977 to i32*
  %6981 = load i32, i32* %6980
  %6982 = zext i32 %6981 to i64
  store i64 %6982, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_45391e, %struct.Memory** %MEMORY
  %loadMem_453924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 33
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6985 to i64*
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 1
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %6988 to i64*
  %6989 = load i64, i64* %RAX.i72
  %6990 = load i64, i64* %PC.i71
  %6991 = add i64 %6990, 3
  store i64 %6991, i64* %PC.i71
  %6992 = trunc i64 %6989 to i32
  %6993 = add i32 1, %6992
  %6994 = zext i32 %6993 to i64
  store i64 %6994, i64* %RAX.i72, align 8
  %6995 = icmp ult i32 %6993, %6992
  %6996 = icmp ult i32 %6993, 1
  %6997 = or i1 %6995, %6996
  %6998 = zext i1 %6997 to i8
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6998, i8* %6999, align 1
  %7000 = and i32 %6993, 255
  %7001 = call i32 @llvm.ctpop.i32(i32 %7000)
  %7002 = trunc i32 %7001 to i8
  %7003 = and i8 %7002, 1
  %7004 = xor i8 %7003, 1
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7004, i8* %7005, align 1
  %7006 = xor i64 1, %6989
  %7007 = trunc i64 %7006 to i32
  %7008 = xor i32 %7007, %6993
  %7009 = lshr i32 %7008, 4
  %7010 = trunc i32 %7009 to i8
  %7011 = and i8 %7010, 1
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7011, i8* %7012, align 1
  %7013 = icmp eq i32 %6993, 0
  %7014 = zext i1 %7013 to i8
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7014, i8* %7015, align 1
  %7016 = lshr i32 %6993, 31
  %7017 = trunc i32 %7016 to i8
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7017, i8* %7018, align 1
  %7019 = lshr i32 %6992, 31
  %7020 = xor i32 %7016, %7019
  %7021 = add i32 %7020, %7016
  %7022 = icmp eq i32 %7021, 2
  %7023 = zext i1 %7022 to i8
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7023, i8* %7024, align 1
  store %struct.Memory* %loadMem_453924, %struct.Memory** %MEMORY
  %loadMem_453927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 33
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7027 to i64*
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 1
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %EAX.i69 = bitcast %union.anon* %7030 to i32*
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7032 = getelementptr inbounds %struct.GPR, %struct.GPR* %7031, i32 0, i32 15
  %7033 = getelementptr inbounds %struct.Reg, %struct.Reg* %7032, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %7033 to i64*
  %7034 = load i64, i64* %RBP.i70
  %7035 = sub i64 %7034, 224
  %7036 = load i32, i32* %EAX.i69
  %7037 = zext i32 %7036 to i64
  %7038 = load i64, i64* %PC.i68
  %7039 = add i64 %7038, 6
  store i64 %7039, i64* %PC.i68
  %7040 = inttoptr i64 %7035 to i32*
  store i32 %7036, i32* %7040
  store %struct.Memory* %loadMem_453927, %struct.Memory** %MEMORY
  %loadMem_45392d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7043 to i64*
  %7044 = load i64, i64* %PC.i67
  %7045 = add i64 %7044, -634
  %7046 = load i64, i64* %PC.i67
  %7047 = add i64 %7046, 5
  store i64 %7047, i64* %PC.i67
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7045, i64* %7048, align 8
  store %struct.Memory* %loadMem_45392d, %struct.Memory** %MEMORY
  br label %block_.L_4536b3

block_.L_453932:                                  ; preds = %block_.L_4536b3
  %loadMem_453932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7050 = getelementptr inbounds %struct.GPR, %struct.GPR* %7049, i32 0, i32 33
  %7051 = getelementptr inbounds %struct.Reg, %struct.Reg* %7050, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7051 to i64*
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 15
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %7054 to i64*
  %7055 = load i64, i64* %RBP.i66
  %7056 = sub i64 %7055, 192
  %7057 = load i64, i64* %PC.i65
  %7058 = add i64 %7057, 10
  store i64 %7058, i64* %PC.i65
  %7059 = inttoptr i64 %7056 to i32*
  store i32 0, i32* %7059
  store %struct.Memory* %loadMem_453932, %struct.Memory** %MEMORY
  br label %block_.L_45393c

block_.L_45393c:                                  ; preds = %block_45394b, %block_.L_453932
  %loadMem_45393c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 33
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %7062 to i64*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 1
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %7065 to i64*
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 15
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %7068 to i64*
  %7069 = load i64, i64* %RBP.i64
  %7070 = sub i64 %7069, 192
  %7071 = load i64, i64* %PC.i62
  %7072 = add i64 %7071, 6
  store i64 %7072, i64* %PC.i62
  %7073 = inttoptr i64 %7070 to i32*
  %7074 = load i32, i32* %7073
  %7075 = zext i32 %7074 to i64
  store i64 %7075, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_45393c, %struct.Memory** %MEMORY
  %loadMem_453942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 33
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7078 to i64*
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 1
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %EAX.i60 = bitcast %union.anon* %7081 to i32*
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7083 = getelementptr inbounds %struct.GPR, %struct.GPR* %7082, i32 0, i32 15
  %7084 = getelementptr inbounds %struct.Reg, %struct.Reg* %7083, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %7084 to i64*
  %7085 = load i32, i32* %EAX.i60
  %7086 = zext i32 %7085 to i64
  %7087 = load i64, i64* %RBP.i61
  %7088 = sub i64 %7087, 12
  %7089 = load i64, i64* %PC.i59
  %7090 = add i64 %7089, 3
  store i64 %7090, i64* %PC.i59
  %7091 = inttoptr i64 %7088 to i32*
  %7092 = load i32, i32* %7091
  %7093 = sub i32 %7085, %7092
  %7094 = icmp ult i32 %7085, %7092
  %7095 = zext i1 %7094 to i8
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7095, i8* %7096, align 1
  %7097 = and i32 %7093, 255
  %7098 = call i32 @llvm.ctpop.i32(i32 %7097)
  %7099 = trunc i32 %7098 to i8
  %7100 = and i8 %7099, 1
  %7101 = xor i8 %7100, 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7101, i8* %7102, align 1
  %7103 = xor i32 %7092, %7085
  %7104 = xor i32 %7103, %7093
  %7105 = lshr i32 %7104, 4
  %7106 = trunc i32 %7105 to i8
  %7107 = and i8 %7106, 1
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7107, i8* %7108, align 1
  %7109 = icmp eq i32 %7093, 0
  %7110 = zext i1 %7109 to i8
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7110, i8* %7111, align 1
  %7112 = lshr i32 %7093, 31
  %7113 = trunc i32 %7112 to i8
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7113, i8* %7114, align 1
  %7115 = lshr i32 %7085, 31
  %7116 = lshr i32 %7092, 31
  %7117 = xor i32 %7116, %7115
  %7118 = xor i32 %7112, %7115
  %7119 = add i32 %7118, %7117
  %7120 = icmp eq i32 %7119, 2
  %7121 = zext i1 %7120 to i8
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7121, i8* %7122, align 1
  store %struct.Memory* %loadMem_453942, %struct.Memory** %MEMORY
  %loadMem_453945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 33
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7125 to i64*
  %7126 = load i64, i64* %PC.i58
  %7127 = add i64 %7126, 70
  %7128 = load i64, i64* %PC.i58
  %7129 = add i64 %7128, 6
  %7130 = load i64, i64* %PC.i58
  %7131 = add i64 %7130, 6
  store i64 %7131, i64* %PC.i58
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7133 = load i8, i8* %7132, align 1
  %7134 = icmp ne i8 %7133, 0
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7136 = load i8, i8* %7135, align 1
  %7137 = icmp ne i8 %7136, 0
  %7138 = xor i1 %7134, %7137
  %7139 = xor i1 %7138, true
  %7140 = zext i1 %7139 to i8
  store i8 %7140, i8* %BRANCH_TAKEN, align 1
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7142 = select i1 %7138, i64 %7129, i64 %7127
  store i64 %7142, i64* %7141, align 8
  store %struct.Memory* %loadMem_453945, %struct.Memory** %MEMORY
  %loadBr_453945 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453945 = icmp eq i8 %loadBr_453945, 1
  br i1 %cmpBr_453945, label %block_.L_45398b, label %block_45394b

block_45394b:                                     ; preds = %block_.L_45393c
  %loadMem_45394b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7144 = getelementptr inbounds %struct.GPR, %struct.GPR* %7143, i32 0, i32 33
  %7145 = getelementptr inbounds %struct.Reg, %struct.Reg* %7144, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7145 to i64*
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 1
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 15
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %7151 to i64*
  %7152 = load i64, i64* %RBP.i57
  %7153 = sub i64 %7152, 24
  %7154 = load i64, i64* %PC.i55
  %7155 = add i64 %7154, 4
  store i64 %7155, i64* %PC.i55
  %7156 = inttoptr i64 %7153 to i64*
  %7157 = load i64, i64* %7156
  store i64 %7157, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_45394b, %struct.Memory** %MEMORY
  %loadMem_45394f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 33
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7160 to i64*
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7162 = getelementptr inbounds %struct.GPR, %struct.GPR* %7161, i32 0, i32 5
  %7163 = getelementptr inbounds %struct.Reg, %struct.Reg* %7162, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %7163 to i64*
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 15
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %7166 to i64*
  %7167 = load i64, i64* %RBP.i54
  %7168 = sub i64 %7167, 192
  %7169 = load i64, i64* %PC.i52
  %7170 = add i64 %7169, 7
  store i64 %7170, i64* %PC.i52
  %7171 = inttoptr i64 %7168 to i32*
  %7172 = load i32, i32* %7171
  %7173 = sext i32 %7172 to i64
  store i64 %7173, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_45394f, %struct.Memory** %MEMORY
  %loadMem_453956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 33
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7176 to i64*
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 1
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %7179 to i64*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 5
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7184 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7183, i64 0, i64 0
  %YMM0.i51 = bitcast %union.VectorReg* %7184 to %"class.std::bitset"*
  %7185 = bitcast %"class.std::bitset"* %YMM0.i51 to i8*
  %7186 = load i64, i64* %RAX.i49
  %7187 = load i64, i64* %RCX.i50
  %7188 = mul i64 %7187, 4
  %7189 = add i64 %7188, %7186
  %7190 = load i64, i64* %PC.i48
  %7191 = add i64 %7190, 5
  store i64 %7191, i64* %PC.i48
  %7192 = inttoptr i64 %7189 to float*
  %7193 = load float, float* %7192
  %7194 = bitcast i8* %7185 to float*
  store float %7193, float* %7194, align 1
  %7195 = getelementptr inbounds i8, i8* %7185, i64 4
  %7196 = bitcast i8* %7195 to float*
  store float 0.000000e+00, float* %7196, align 1
  %7197 = getelementptr inbounds i8, i8* %7185, i64 8
  %7198 = bitcast i8* %7197 to float*
  store float 0.000000e+00, float* %7198, align 1
  %7199 = getelementptr inbounds i8, i8* %7185, i64 12
  %7200 = bitcast i8* %7199 to float*
  store float 0.000000e+00, float* %7200, align 1
  store %struct.Memory* %loadMem_453956, %struct.Memory** %MEMORY
  %loadMem_45395b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 33
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7203 to i64*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 15
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7206 to i64*
  %7207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7207, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %7208 to %"class.std::bitset"*
  %7209 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %7210 = load i64, i64* %RBP.i47
  %7211 = sub i64 %7210, 220
  %7212 = load i64, i64* %PC.i46
  %7213 = add i64 %7212, 8
  store i64 %7213, i64* %PC.i46
  %7214 = bitcast i8* %7209 to <2 x i32>*
  %7215 = load <2 x i32>, <2 x i32>* %7214, align 1
  %7216 = getelementptr inbounds i8, i8* %7209, i64 8
  %7217 = bitcast i8* %7216 to <2 x i32>*
  %7218 = load <2 x i32>, <2 x i32>* %7217, align 1
  %7219 = inttoptr i64 %7211 to i32*
  %7220 = load i32, i32* %7219
  %7221 = sitofp i32 %7220 to float
  %7222 = bitcast i8* %7209 to float*
  store float %7221, float* %7222, align 1
  %7223 = extractelement <2 x i32> %7215, i32 1
  %7224 = getelementptr inbounds i8, i8* %7209, i64 4
  %7225 = bitcast i8* %7224 to i32*
  store i32 %7223, i32* %7225, align 1
  %7226 = extractelement <2 x i32> %7218, i32 0
  %7227 = bitcast i8* %7216 to i32*
  store i32 %7226, i32* %7227, align 1
  %7228 = extractelement <2 x i32> %7218, i32 1
  %7229 = getelementptr inbounds i8, i8* %7209, i64 12
  %7230 = bitcast i8* %7229 to i32*
  store i32 %7228, i32* %7230, align 1
  store %struct.Memory* %loadMem_45395b, %struct.Memory** %MEMORY
  %loadMem_453963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7232 = getelementptr inbounds %struct.GPR, %struct.GPR* %7231, i32 0, i32 33
  %7233 = getelementptr inbounds %struct.Reg, %struct.Reg* %7232, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7233 to i64*
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7234, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %7235 to %"class.std::bitset"*
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7236, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %7237 to %union.vec128_t*
  %7238 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7239 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7240 = bitcast %union.vec128_t* %XMM1.i to i8*
  %7241 = load i64, i64* %PC.i45
  %7242 = add i64 %7241, 4
  store i64 %7242, i64* %PC.i45
  %7243 = bitcast i8* %7239 to <2 x float>*
  %7244 = load <2 x float>, <2 x float>* %7243, align 1
  %7245 = getelementptr inbounds i8, i8* %7239, i64 8
  %7246 = bitcast i8* %7245 to <2 x i32>*
  %7247 = load <2 x i32>, <2 x i32>* %7246, align 1
  %7248 = bitcast i8* %7240 to <2 x float>*
  %7249 = load <2 x float>, <2 x float>* %7248, align 1
  %7250 = extractelement <2 x float> %7244, i32 0
  %7251 = extractelement <2 x float> %7249, i32 0
  %7252 = fdiv float %7250, %7251
  %7253 = bitcast i8* %7238 to float*
  store float %7252, float* %7253, align 1
  %7254 = bitcast <2 x float> %7244 to <2 x i32>
  %7255 = extractelement <2 x i32> %7254, i32 1
  %7256 = getelementptr inbounds i8, i8* %7238, i64 4
  %7257 = bitcast i8* %7256 to i32*
  store i32 %7255, i32* %7257, align 1
  %7258 = extractelement <2 x i32> %7247, i32 0
  %7259 = getelementptr inbounds i8, i8* %7238, i64 8
  %7260 = bitcast i8* %7259 to i32*
  store i32 %7258, i32* %7260, align 1
  %7261 = extractelement <2 x i32> %7247, i32 1
  %7262 = getelementptr inbounds i8, i8* %7238, i64 12
  %7263 = bitcast i8* %7262 to i32*
  store i32 %7261, i32* %7263, align 1
  store %struct.Memory* %loadMem_453963, %struct.Memory** %MEMORY
  %loadMem_453967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 33
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7266 to i64*
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 1
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7269 to i64*
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7271 = getelementptr inbounds %struct.GPR, %struct.GPR* %7270, i32 0, i32 15
  %7272 = getelementptr inbounds %struct.Reg, %struct.Reg* %7271, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7272 to i64*
  %7273 = load i64, i64* %RBP.i44
  %7274 = sub i64 %7273, 24
  %7275 = load i64, i64* %PC.i42
  %7276 = add i64 %7275, 4
  store i64 %7276, i64* %PC.i42
  %7277 = inttoptr i64 %7274 to i64*
  %7278 = load i64, i64* %7277
  store i64 %7278, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_453967, %struct.Memory** %MEMORY
  %loadMem_45396b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 33
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 5
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %7284 to i64*
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7286 = getelementptr inbounds %struct.GPR, %struct.GPR* %7285, i32 0, i32 15
  %7287 = getelementptr inbounds %struct.Reg, %struct.Reg* %7286, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %7287 to i64*
  %7288 = load i64, i64* %RBP.i41
  %7289 = sub i64 %7288, 192
  %7290 = load i64, i64* %PC.i39
  %7291 = add i64 %7290, 7
  store i64 %7291, i64* %PC.i39
  %7292 = inttoptr i64 %7289 to i32*
  %7293 = load i32, i32* %7292
  %7294 = sext i32 %7293 to i64
  store i64 %7294, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_45396b, %struct.Memory** %MEMORY
  %loadMem_453972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 33
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7297 to i64*
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7299 = getelementptr inbounds %struct.GPR, %struct.GPR* %7298, i32 0, i32 1
  %7300 = getelementptr inbounds %struct.Reg, %struct.Reg* %7299, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7300 to i64*
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7302 = getelementptr inbounds %struct.GPR, %struct.GPR* %7301, i32 0, i32 5
  %7303 = getelementptr inbounds %struct.Reg, %struct.Reg* %7302, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7303 to i64*
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7304, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %7305 to %union.vec128_t*
  %7306 = load i64, i64* %RAX.i38
  %7307 = load i64, i64* %RCX.i
  %7308 = mul i64 %7307, 4
  %7309 = add i64 %7308, %7306
  %7310 = bitcast %union.vec128_t* %XMM0.i to i8*
  %7311 = load i64, i64* %PC.i37
  %7312 = add i64 %7311, 5
  store i64 %7312, i64* %PC.i37
  %7313 = bitcast i8* %7310 to <2 x float>*
  %7314 = load <2 x float>, <2 x float>* %7313, align 1
  %7315 = extractelement <2 x float> %7314, i32 0
  %7316 = inttoptr i64 %7309 to float*
  store float %7315, float* %7316
  store %struct.Memory* %loadMem_453972, %struct.Memory** %MEMORY
  %loadMem_453977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 33
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7319 to i64*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 1
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %7322 to i64*
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 15
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %7325 to i64*
  %7326 = load i64, i64* %RBP.i36
  %7327 = sub i64 %7326, 192
  %7328 = load i64, i64* %PC.i34
  %7329 = add i64 %7328, 6
  store i64 %7329, i64* %PC.i34
  %7330 = inttoptr i64 %7327 to i32*
  %7331 = load i32, i32* %7330
  %7332 = zext i32 %7331 to i64
  store i64 %7332, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_453977, %struct.Memory** %MEMORY
  %loadMem_45397d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 33
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7335 to i64*
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 1
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7338 to i64*
  %7339 = load i64, i64* %RAX.i
  %7340 = load i64, i64* %PC.i33
  %7341 = add i64 %7340, 3
  store i64 %7341, i64* %PC.i33
  %7342 = trunc i64 %7339 to i32
  %7343 = add i32 1, %7342
  %7344 = zext i32 %7343 to i64
  store i64 %7344, i64* %RAX.i, align 8
  %7345 = icmp ult i32 %7343, %7342
  %7346 = icmp ult i32 %7343, 1
  %7347 = or i1 %7345, %7346
  %7348 = zext i1 %7347 to i8
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7348, i8* %7349, align 1
  %7350 = and i32 %7343, 255
  %7351 = call i32 @llvm.ctpop.i32(i32 %7350)
  %7352 = trunc i32 %7351 to i8
  %7353 = and i8 %7352, 1
  %7354 = xor i8 %7353, 1
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7354, i8* %7355, align 1
  %7356 = xor i64 1, %7339
  %7357 = trunc i64 %7356 to i32
  %7358 = xor i32 %7357, %7343
  %7359 = lshr i32 %7358, 4
  %7360 = trunc i32 %7359 to i8
  %7361 = and i8 %7360, 1
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7361, i8* %7362, align 1
  %7363 = icmp eq i32 %7343, 0
  %7364 = zext i1 %7363 to i8
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7364, i8* %7365, align 1
  %7366 = lshr i32 %7343, 31
  %7367 = trunc i32 %7366 to i8
  %7368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7367, i8* %7368, align 1
  %7369 = lshr i32 %7342, 31
  %7370 = xor i32 %7366, %7369
  %7371 = add i32 %7370, %7366
  %7372 = icmp eq i32 %7371, 2
  %7373 = zext i1 %7372 to i8
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7373, i8* %7374, align 1
  store %struct.Memory* %loadMem_45397d, %struct.Memory** %MEMORY
  %loadMem_453980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7376 = getelementptr inbounds %struct.GPR, %struct.GPR* %7375, i32 0, i32 33
  %7377 = getelementptr inbounds %struct.Reg, %struct.Reg* %7376, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7377 to i64*
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7379 = getelementptr inbounds %struct.GPR, %struct.GPR* %7378, i32 0, i32 1
  %7380 = getelementptr inbounds %struct.Reg, %struct.Reg* %7379, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7380 to i32*
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7382 = getelementptr inbounds %struct.GPR, %struct.GPR* %7381, i32 0, i32 15
  %7383 = getelementptr inbounds %struct.Reg, %struct.Reg* %7382, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %7383 to i64*
  %7384 = load i64, i64* %RBP.i32
  %7385 = sub i64 %7384, 192
  %7386 = load i32, i32* %EAX.i
  %7387 = zext i32 %7386 to i64
  %7388 = load i64, i64* %PC.i31
  %7389 = add i64 %7388, 6
  store i64 %7389, i64* %PC.i31
  %7390 = inttoptr i64 %7385 to i32*
  store i32 %7386, i32* %7390
  store %struct.Memory* %loadMem_453980, %struct.Memory** %MEMORY
  %loadMem_453986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 33
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7393 to i64*
  %7394 = load i64, i64* %PC.i30
  %7395 = add i64 %7394, -74
  %7396 = load i64, i64* %PC.i30
  %7397 = add i64 %7396, 5
  store i64 %7397, i64* %PC.i30
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7395, i64* %7398, align 8
  store %struct.Memory* %loadMem_453986, %struct.Memory** %MEMORY
  br label %block_.L_45393c

block_.L_45398b:                                  ; preds = %block_.L_45393c
  %loadMem_45398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 33
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7401 to i64*
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 11
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %RDI.i28 = bitcast %union.anon* %7404 to i64*
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 15
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %7407 to i64*
  %7408 = load i64, i64* %RBP.i29
  %7409 = sub i64 %7408, 184
  %7410 = load i64, i64* %PC.i27
  %7411 = add i64 %7410, 7
  store i64 %7411, i64* %PC.i27
  %7412 = inttoptr i64 %7409 to i64*
  %7413 = load i64, i64* %7412
  store i64 %7413, i64* %RDI.i28, align 8
  store %struct.Memory* %loadMem_45398b, %struct.Memory** %MEMORY
  %loadMem1_453992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 33
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7416 to i64*
  %7417 = load i64, i64* %PC.i26
  %7418 = add i64 %7417, -337426
  %7419 = load i64, i64* %PC.i26
  %7420 = add i64 %7419, 5
  %7421 = load i64, i64* %PC.i26
  %7422 = add i64 %7421, 5
  store i64 %7422, i64* %PC.i26
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7424 = load i64, i64* %7423, align 8
  %7425 = add i64 %7424, -8
  %7426 = inttoptr i64 %7425 to i64*
  store i64 %7420, i64* %7426
  store i64 %7425, i64* %7423, align 8
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7418, i64* %7427, align 8
  store %struct.Memory* %loadMem1_453992, %struct.Memory** %MEMORY
  %loadMem2_453992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453992 = load i64, i64* %3
  %7428 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_453992)
  store %struct.Memory* %7428, %struct.Memory** %MEMORY
  %loadMem_453997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 33
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7431 to i64*
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 11
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %RDI.i21 = bitcast %union.anon* %7434 to i64*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 15
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %7437 to i64*
  %7438 = load i64, i64* %RBP.i22
  %7439 = sub i64 %7438, 56
  %7440 = load i64, i64* %PC.i20
  %7441 = add i64 %7440, 4
  store i64 %7441, i64* %PC.i20
  %7442 = inttoptr i64 %7439 to i64*
  %7443 = load i64, i64* %7442
  store i64 %7443, i64* %RDI.i21, align 8
  store %struct.Memory* %loadMem_453997, %struct.Memory** %MEMORY
  %loadMem1_45399b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 33
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7446 to i64*
  %7447 = load i64, i64* %PC.i19
  %7448 = add i64 %7447, -337435
  %7449 = load i64, i64* %PC.i19
  %7450 = add i64 %7449, 5
  %7451 = load i64, i64* %PC.i19
  %7452 = add i64 %7451, 5
  store i64 %7452, i64* %PC.i19
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7454 = load i64, i64* %7453, align 8
  %7455 = add i64 %7454, -8
  %7456 = inttoptr i64 %7455 to i64*
  store i64 %7450, i64* %7456
  store i64 %7455, i64* %7453, align 8
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7448, i64* %7457, align 8
  store %struct.Memory* %loadMem1_45399b, %struct.Memory** %MEMORY
  %loadMem2_45399b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45399b = load i64, i64* %3
  %7458 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_45399b)
  store %struct.Memory* %7458, %struct.Memory** %MEMORY
  %loadMem_4539a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 33
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7461 to i64*
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7463 = getelementptr inbounds %struct.GPR, %struct.GPR* %7462, i32 0, i32 11
  %7464 = getelementptr inbounds %struct.Reg, %struct.Reg* %7463, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %7464 to i64*
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7466 = getelementptr inbounds %struct.GPR, %struct.GPR* %7465, i32 0, i32 15
  %7467 = getelementptr inbounds %struct.Reg, %struct.Reg* %7466, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %7467 to i64*
  %7468 = load i64, i64* %RBP.i16
  %7469 = sub i64 %7468, 40
  %7470 = load i64, i64* %PC.i14
  %7471 = add i64 %7470, 4
  store i64 %7471, i64* %PC.i14
  %7472 = inttoptr i64 %7469 to i64*
  %7473 = load i64, i64* %7472
  store i64 %7473, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_4539a0, %struct.Memory** %MEMORY
  %loadMem1_4539a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7475 = getelementptr inbounds %struct.GPR, %struct.GPR* %7474, i32 0, i32 33
  %7476 = getelementptr inbounds %struct.Reg, %struct.Reg* %7475, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7476 to i64*
  %7477 = load i64, i64* %PC.i13
  %7478 = add i64 %7477, -337444
  %7479 = load i64, i64* %PC.i13
  %7480 = add i64 %7479, 5
  %7481 = load i64, i64* %PC.i13
  %7482 = add i64 %7481, 5
  store i64 %7482, i64* %PC.i13
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7484 = load i64, i64* %7483, align 8
  %7485 = add i64 %7484, -8
  %7486 = inttoptr i64 %7485 to i64*
  store i64 %7480, i64* %7486
  store i64 %7485, i64* %7483, align 8
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7478, i64* %7487, align 8
  store %struct.Memory* %loadMem1_4539a4, %struct.Memory** %MEMORY
  %loadMem2_4539a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4539a4 = load i64, i64* %3
  %7488 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4539a4)
  store %struct.Memory* %7488, %struct.Memory** %MEMORY
  %loadMem_4539a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7490 = getelementptr inbounds %struct.GPR, %struct.GPR* %7489, i32 0, i32 33
  %7491 = getelementptr inbounds %struct.Reg, %struct.Reg* %7490, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7491 to i64*
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 11
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7494 to i64*
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7496 = getelementptr inbounds %struct.GPR, %struct.GPR* %7495, i32 0, i32 15
  %7497 = getelementptr inbounds %struct.Reg, %struct.Reg* %7496, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %7497 to i64*
  %7498 = load i64, i64* %RBP.i9
  %7499 = sub i64 %7498, 48
  %7500 = load i64, i64* %PC.i8
  %7501 = add i64 %7500, 4
  store i64 %7501, i64* %PC.i8
  %7502 = inttoptr i64 %7499 to i64*
  %7503 = load i64, i64* %7502
  store i64 %7503, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4539a9, %struct.Memory** %MEMORY
  %loadMem_4539ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 33
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7506 to i64*
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 9
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 15
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %7512 to i64*
  %7513 = load i64, i64* %RBP.i7
  %7514 = sub i64 %7513, 16
  %7515 = load i64, i64* %PC.i6
  %7516 = add i64 %7515, 3
  store i64 %7516, i64* %PC.i6
  %7517 = inttoptr i64 %7514 to i32*
  %7518 = load i32, i32* %7517
  %7519 = zext i32 %7518 to i64
  store i64 %7519, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4539ad, %struct.Memory** %MEMORY
  %loadMem1_4539b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 33
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7522 to i64*
  %7523 = load i64, i64* %PC.i5
  %7524 = add i64 %7523, -55456
  %7525 = load i64, i64* %PC.i5
  %7526 = add i64 %7525, 5
  %7527 = load i64, i64* %PC.i5
  %7528 = add i64 %7527, 5
  store i64 %7528, i64* %PC.i5
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7530 = load i64, i64* %7529, align 8
  %7531 = add i64 %7530, -8
  %7532 = inttoptr i64 %7531 to i64*
  store i64 %7526, i64* %7532
  store i64 %7531, i64* %7529, align 8
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7524, i64* %7533, align 8
  store %struct.Memory* %loadMem1_4539b0, %struct.Memory** %MEMORY
  %loadMem2_4539b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4539b0 = load i64, i64* %3
  %call2_4539b0 = call %struct.Memory* @sub_446110.Free2DArray(%struct.State* %0, i64 %loadPC_4539b0, %struct.Memory* %loadMem2_4539b0)
  store %struct.Memory* %call2_4539b0, %struct.Memory** %MEMORY
  br label %block_.L_4539b5

block_.L_4539b5:                                  ; preds = %block_.L_45398b, %block_453193
  %loadMem_4539b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7535 = getelementptr inbounds %struct.GPR, %struct.GPR* %7534, i32 0, i32 33
  %7536 = getelementptr inbounds %struct.Reg, %struct.Reg* %7535, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7536 to i64*
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 13
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7539 to i64*
  %7540 = load i64, i64* %RSP.i
  %7541 = load i64, i64* %PC.i4
  %7542 = add i64 %7541, 7
  store i64 %7542, i64* %PC.i4
  %7543 = add i64 240, %7540
  store i64 %7543, i64* %RSP.i, align 8
  %7544 = icmp ult i64 %7543, %7540
  %7545 = icmp ult i64 %7543, 240
  %7546 = or i1 %7544, %7545
  %7547 = zext i1 %7546 to i8
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7547, i8* %7548, align 1
  %7549 = trunc i64 %7543 to i32
  %7550 = and i32 %7549, 255
  %7551 = call i32 @llvm.ctpop.i32(i32 %7550)
  %7552 = trunc i32 %7551 to i8
  %7553 = and i8 %7552, 1
  %7554 = xor i8 %7553, 1
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7554, i8* %7555, align 1
  %7556 = xor i64 240, %7540
  %7557 = xor i64 %7556, %7543
  %7558 = lshr i64 %7557, 4
  %7559 = trunc i64 %7558 to i8
  %7560 = and i8 %7559, 1
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7560, i8* %7561, align 1
  %7562 = icmp eq i64 %7543, 0
  %7563 = zext i1 %7562 to i8
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7563, i8* %7564, align 1
  %7565 = lshr i64 %7543, 63
  %7566 = trunc i64 %7565 to i8
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7566, i8* %7567, align 1
  %7568 = lshr i64 %7540, 63
  %7569 = xor i64 %7565, %7568
  %7570 = add i64 %7569, %7565
  %7571 = icmp eq i64 %7570, 2
  %7572 = zext i1 %7571 to i8
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7572, i8* %7573, align 1
  store %struct.Memory* %loadMem_4539b5, %struct.Memory** %MEMORY
  %loadMem_4539bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7575 = getelementptr inbounds %struct.GPR, %struct.GPR* %7574, i32 0, i32 33
  %7576 = getelementptr inbounds %struct.Reg, %struct.Reg* %7575, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7576 to i64*
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7578 = getelementptr inbounds %struct.GPR, %struct.GPR* %7577, i32 0, i32 15
  %7579 = getelementptr inbounds %struct.Reg, %struct.Reg* %7578, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7579 to i64*
  %7580 = load i64, i64* %PC.i2
  %7581 = add i64 %7580, 1
  store i64 %7581, i64* %PC.i2
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7583 = load i64, i64* %7582, align 8
  %7584 = add i64 %7583, 8
  %7585 = inttoptr i64 %7583 to i64*
  %7586 = load i64, i64* %7585
  store i64 %7586, i64* %RBP.i3, align 8
  store i64 %7584, i64* %7582, align 8
  store %struct.Memory* %loadMem_4539bc, %struct.Memory** %MEMORY
  %loadMem_4539bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7588 = getelementptr inbounds %struct.GPR, %struct.GPR* %7587, i32 0, i32 33
  %7589 = getelementptr inbounds %struct.Reg, %struct.Reg* %7588, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7589 to i64*
  %7590 = load i64, i64* %PC.i1
  %7591 = add i64 %7590, 1
  store i64 %7591, i64* %PC.i1
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7594 = load i64, i64* %7593, align 8
  %7595 = inttoptr i64 %7594 to i64*
  %7596 = load i64, i64* %7595
  store i64 %7596, i64* %7592, align 8
  %7597 = add i64 %7594, 8
  store i64 %7597, i64* %7593, align 8
  store %struct.Memory* %loadMem_4539bd, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4539bd
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

define %struct.Memory* @routine_subq__0xf0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 240
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 240
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
  %23 = xor i64 240, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4531a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x158d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x158d__rip__type* @G_0x158d__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4539b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x32__MINUS0xdc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 50, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.simple_diffmx(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4531dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45b580___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b580_type* @G__0x45b580 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x45b4d2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b4d2_type* @G__0x45b4d2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xb8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 184, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jge_.L_4532fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x1508__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1508__rip__type* @G_0x1508__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xcc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 204
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4532c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 192
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jne_.L_453258(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4532ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xc8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xcc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
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

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = bitcast i8* %11 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = extractelement <2 x float> %18, i32 0
  %20 = fcmp uno float %16, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd float %16, %19
  %23 = bitcast float %22 to i32
  %24 = and i32 %23, 2143289344
  %25 = icmp eq i32 %24, 2139095040
  %26 = and i32 %23, 4194303
  %27 = icmp ne i32 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt float %16, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt float %16, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq float %16, %19
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %37, %35, %33, %21
  %40 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 1, %37 ], [ 1, %21 ]
  %41 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 0, %37 ], [ 1, %21 ]
  %42 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 0, %37 ], [ 1, %21 ]
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %39, %37
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %49, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jbe_.L_4532a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453232(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x1520__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1520__rip__type* @G_0x1520__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0xcc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453209(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.Free2DArray(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc6___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 198, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0xc7___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 199, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
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

define %struct.Memory* @routine_jge_.L_4533a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 201, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1b___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 27, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45335b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_453665(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x6c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 108, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_jge_.L_453575(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 32
  %14 = icmp ult i32 %9, 32
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
  %23 = xor i64 32, %10
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

define %struct.Memory* @routine_je_.L_453555(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 46
  %14 = icmp ult i32 %9, 46
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
  %23 = xor i64 46, %10
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

define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 95
  %14 = icmp ult i32 %9, 95
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
  %23 = xor i64 95, %10
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

define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 126
  %14 = icmp ult i32 %9, 126
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
  %23 = xor i64 126, %10
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

define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x100___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 256, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RSI, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_453501(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x41___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 65
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 65
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
  %24 = xor i64 65, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453524(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x61___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 97
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 97
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
  %24 = xor i64 97, %9
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 196
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

define %struct.Memory* @routine_jl_.L_453550(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1a__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 26
  %16 = icmp ult i32 %14, 26
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
  %25 = xor i32 %14, 26
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

define %struct.Memory* @routine_jge_.L_453550(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xb0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -176
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45355c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453561(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4533e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1a__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 26
  %16 = icmp ult i32 %14, 26
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
  %25 = xor i32 %14, 26
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

define %struct.Memory* @routine_jge_.L_45360c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xc8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0xb0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -176
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4535f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x41___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 65, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 65
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
  %26 = xor i64 65, %9
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rsi__rdi_4____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl____rdx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4535f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_453591(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
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

define %struct.Memory* @routine_je_.L_45364c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x20____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 32, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453651(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4533b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x10c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 268, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0x2a__MINUS0xe4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 42, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xe0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xdc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_jge_.L_453932(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_45377d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_453709(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x20___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 32, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453750(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_random(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rcx__rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RAX
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

define %struct.Memory* @routine_movl__edx__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xe8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4536d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 0, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0xf8c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf8c__rip__type* @G_0xf8c__rip_ to i64)
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 216
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

define %struct.Memory* @routine_movss__xmm1__MINUS0xcc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 204
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

define %struct.Memory* @routine_jge_.L_4538f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.simple_distance(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xd0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_45381e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4538f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_453869(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4538e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_ucomiss_MINUS0xcc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
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

define %struct.Memory* @routine_jne_.L_4538db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4538db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 212
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

define %struct.Memory* @routine_movss_MINUS0xd4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 212
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

define %struct.Memory* @routine_ucomiss_MINUS0xd8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
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

define %struct.Memory* @routine_jbe_.L_4538d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4538db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4538e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4537ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xedf__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xedf__rip__type* @G_0xedf__rip_ to i64)
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

define %struct.Memory* @routine_movslq_MINUS0xe4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4536b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_45398b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0xdc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
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

define %struct.Memory* @routine_jmpq_.L_45393c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xf0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 240, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 240
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
  %25 = xor i64 240, %9
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
