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
%G_0x1fb72__rip__type = type <{ [4 x i8] }>
%G_0x1fba1__rip__type = type <{ [4 x i8] }>
%G_0x1fd1e__rip__type = type <{ [8 x i8] }>
%G_0x1fd72__rip__type = type <{ [4 x i8] }>
%G_0x1fda1__rip__type = type <{ [8 x i8] }>
%G_0x1fe32__rip__type = type <{ [8 x i8] }>
%G_0x1fe4a__rip__type = type <{ [8 x i8] }>
%G_0x1fe6d__rip__type = type <{ [4 x i8] }>
%G_0x1fe7c__rip__type = type <{ [4 x i8] }>
%G_0x1fea4__rip__type = type <{ [4 x i8] }>
%G_0x1fea9__rip__type = type <{ [4 x i8] }>
%G_0x1ff38__rip__type = type <{ [8 x i8] }>
%G_0x1ff50__rip__type = type <{ [8 x i8] }>
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
@G_0x1fb72__rip_ = global %G_0x1fb72__rip__type zeroinitializer
@G_0x1fba1__rip_ = global %G_0x1fba1__rip__type zeroinitializer
@G_0x1fd1e__rip_ = global %G_0x1fd1e__rip__type zeroinitializer
@G_0x1fd72__rip_ = global %G_0x1fd72__rip__type zeroinitializer
@G_0x1fda1__rip_ = global %G_0x1fda1__rip__type zeroinitializer
@G_0x1fe32__rip_ = global %G_0x1fe32__rip__type zeroinitializer
@G_0x1fe4a__rip_ = global %G_0x1fe4a__rip__type zeroinitializer
@G_0x1fe6d__rip_ = global %G_0x1fe6d__rip__type zeroinitializer
@G_0x1fe7c__rip_ = global %G_0x1fe7c__rip__type zeroinitializer
@G_0x1fea4__rip_ = global %G_0x1fea4__rip__type zeroinitializer
@G_0x1fea9__rip_ = global %G_0x1fea9__rip__type zeroinitializer
@G_0x1ff38__rip_ = global %G_0x1ff38__rip__type zeroinitializer
@G_0x1ff50__rip_ = global %G_0x1ff50__rip__type zeroinitializer

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

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_427db0.Prob2Score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Plan7ESTConfig(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_434890 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_434890, %struct.Memory** %MEMORY
  %loadMem_434891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i448 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i448
  %27 = load i64, i64* %PC.i447
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i447
  store i64 %26, i64* %RBP.i449, align 8
  store %struct.Memory* %loadMem_434891, %struct.Memory** %MEMORY
  %loadMem_434894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i446 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i446
  %36 = load i64, i64* %PC.i445
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i445
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i446, align 8
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
  store %struct.Memory* %loadMem_434894, %struct.Memory** %MEMORY
  %loadMem_434898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 2
  %YMM2.i444 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM2.i444 to i8*
  %73 = load i64, i64* %PC.i443
  %74 = add i64 %73, ptrtoint (%G_0x1ff50__rip__type* @G_0x1ff50__rip_ to i64)
  %75 = load i64, i64* %PC.i443
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i443
  %77 = inttoptr i64 %74 to double*
  %78 = load double, double* %77
  %79 = bitcast i8* %72 to double*
  store double %78, double* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 8
  %81 = bitcast i8* %80 to double*
  store double 0.000000e+00, double* %81, align 1
  store %struct.Memory* %loadMem_434898, %struct.Memory** %MEMORY
  %loadMem_4348a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %86 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %85, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %86 to %"class.std::bitset"*
  %87 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %88 = load i64, i64* %PC.i442
  %89 = add i64 %88, ptrtoint (%G_0x1ff38__rip__type* @G_0x1ff38__rip_ to i64)
  %90 = load i64, i64* %PC.i442
  %91 = add i64 %90, 8
  store i64 %91, i64* %PC.i442
  %92 = inttoptr i64 %89 to double*
  %93 = load double, double* %92
  %94 = bitcast i8* %87 to double*
  store double %93, double* %94, align 1
  %95 = getelementptr inbounds i8, i8* %87, i64 8
  %96 = bitcast i8* %95 to double*
  store double 0.000000e+00, double* %96, align 1
  store %struct.Memory* %loadMem_4348a0, %struct.Memory** %MEMORY
  %loadMem_4348a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %100, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %101 to %"class.std::bitset"*
  %102 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %103 = load i64, i64* %PC.i441
  %104 = add i64 %103, ptrtoint (%G_0x1fe7c__rip__type* @G_0x1fe7c__rip_ to i64)
  %105 = load i64, i64* %PC.i441
  %106 = add i64 %105, 8
  store i64 %106, i64* %PC.i441
  %107 = inttoptr i64 %104 to float*
  %108 = load float, float* %107
  %109 = bitcast i8* %102 to float*
  store float %108, float* %109, align 1
  %110 = getelementptr inbounds i8, i8* %102, i64 4
  %111 = bitcast i8* %110 to float*
  store float 0.000000e+00, float* %111, align 1
  %112 = getelementptr inbounds i8, i8* %102, i64 8
  %113 = bitcast i8* %112 to float*
  store float 0.000000e+00, float* %113, align 1
  %114 = getelementptr inbounds i8, i8* %102, i64 12
  %115 = bitcast i8* %114 to float*
  store float 0.000000e+00, float* %115, align 1
  store %struct.Memory* %loadMem_4348a8, %struct.Memory** %MEMORY
  %loadMem_4348b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %119, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %120 to %"class.std::bitset"*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %121, i64 0, i64 5
  %XMM5.i440 = bitcast %union.VectorReg* %122 to %union.vec128_t*
  %123 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %124 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %125 = bitcast %union.vec128_t* %XMM5.i440 to i8*
  %126 = load i64, i64* %PC.i439
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i439
  %128 = bitcast i8* %124 to i64*
  %129 = load i64, i64* %128, align 1
  %130 = getelementptr inbounds i8, i8* %124, i64 8
  %131 = bitcast i8* %130 to i64*
  %132 = load i64, i64* %131, align 1
  %133 = bitcast i8* %125 to i64*
  %134 = load i64, i64* %133, align 1
  %135 = getelementptr inbounds i8, i8* %125, i64 8
  %136 = bitcast i8* %135 to i64*
  %137 = load i64, i64* %136, align 1
  %138 = xor i64 %134, %129
  %139 = xor i64 %137, %132
  %140 = trunc i64 %138 to i32
  %141 = lshr i64 %138, 32
  %142 = trunc i64 %141 to i32
  %143 = bitcast i8* %123 to i32*
  store i32 %140, i32* %143, align 1
  %144 = getelementptr inbounds i8, i8* %123, i64 4
  %145 = bitcast i8* %144 to i32*
  store i32 %142, i32* %145, align 1
  %146 = trunc i64 %139 to i32
  %147 = getelementptr inbounds i8, i8* %123, i64 8
  %148 = bitcast i8* %147 to i32*
  store i32 %146, i32* %148, align 1
  %149 = lshr i64 %139, 32
  %150 = trunc i64 %149 to i32
  %151 = getelementptr inbounds i8, i8* %123, i64 12
  %152 = bitcast i8* %151 to i32*
  store i32 %150, i32* %152, align 1
  store %struct.Memory* %loadMem_4348b0, %struct.Memory** %MEMORY
  %loadMem_4348b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %156, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %157 to %"class.std::bitset"*
  %158 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %159 = load i64, i64* %PC.i438
  %160 = add i64 %159, ptrtoint (%G_0x1fe6d__rip__type* @G_0x1fe6d__rip_ to i64)
  %161 = load i64, i64* %PC.i438
  %162 = add i64 %161, 8
  store i64 %162, i64* %PC.i438
  %163 = inttoptr i64 %160 to float*
  %164 = load float, float* %163
  %165 = bitcast i8* %158 to float*
  store float %164, float* %165, align 1
  %166 = getelementptr inbounds i8, i8* %158, i64 4
  %167 = bitcast i8* %166 to float*
  store float 0.000000e+00, float* %167, align 1
  %168 = getelementptr inbounds i8, i8* %158, i64 8
  %169 = bitcast i8* %168 to float*
  store float 0.000000e+00, float* %169, align 1
  %170 = getelementptr inbounds i8, i8* %158, i64 12
  %171 = bitcast i8* %170 to float*
  store float 0.000000e+00, float* %171, align 1
  store %struct.Memory* %loadMem_4348b3, %struct.Memory** %MEMORY
  %loadMem_4348bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %175, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %176 to %"class.std::bitset"*
  %177 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %178 = load i64, i64* %PC.i437
  %179 = add i64 %178, ptrtoint (%G_0x1fea9__rip__type* @G_0x1fea9__rip_ to i64)
  %180 = load i64, i64* %PC.i437
  %181 = add i64 %180, 8
  store i64 %181, i64* %PC.i437
  %182 = inttoptr i64 %179 to float*
  %183 = load float, float* %182
  %184 = bitcast i8* %177 to float*
  store float %183, float* %184, align 1
  %185 = getelementptr inbounds i8, i8* %177, i64 4
  %186 = bitcast i8* %185 to float*
  store float 0.000000e+00, float* %186, align 1
  %187 = getelementptr inbounds i8, i8* %177, i64 8
  %188 = bitcast i8* %187 to float*
  store float 0.000000e+00, float* %188, align 1
  %189 = getelementptr inbounds i8, i8* %177, i64 12
  %190 = bitcast i8* %189 to float*
  store float 0.000000e+00, float* %190, align 1
  store %struct.Memory* %loadMem_4348bb, %struct.Memory** %MEMORY
  %loadMem_4348c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %194, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %195 to %"class.std::bitset"*
  %196 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %197 = load i64, i64* %PC.i436
  %198 = add i64 %197, ptrtoint (%G_0x1fea4__rip__type* @G_0x1fea4__rip_ to i64)
  %199 = load i64, i64* %PC.i436
  %200 = add i64 %199, 9
  store i64 %200, i64* %PC.i436
  %201 = inttoptr i64 %198 to float*
  %202 = load float, float* %201
  %203 = bitcast i8* %196 to float*
  store float %202, float* %203, align 1
  %204 = getelementptr inbounds i8, i8* %196, i64 4
  %205 = bitcast i8* %204 to float*
  store float 0.000000e+00, float* %205, align 1
  %206 = getelementptr inbounds i8, i8* %196, i64 8
  %207 = bitcast i8* %206 to float*
  store float 0.000000e+00, float* %207, align 1
  %208 = getelementptr inbounds i8, i8* %196, i64 12
  %209 = bitcast i8* %208 to float*
  store float 0.000000e+00, float* %209, align 1
  store %struct.Memory* %loadMem_4348c3, %struct.Memory** %MEMORY
  %loadMem_4348cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 11
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RDI.i434 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RBP.i435
  %220 = sub i64 %219, 8
  %221 = load i64, i64* %RDI.i434
  %222 = load i64, i64* %PC.i433
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC.i433
  %224 = inttoptr i64 %220 to i64*
  store i64 %221, i64* %224
  store %struct.Memory* %loadMem_4348cc, %struct.Memory** %MEMORY
  %loadMem_4348d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 9
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RSI.i431 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 15
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %233 to i64*
  %234 = load i64, i64* %RBP.i432
  %235 = sub i64 %234, 16
  %236 = load i64, i64* %RSI.i431
  %237 = load i64, i64* %PC.i430
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC.i430
  %239 = inttoptr i64 %235 to i64*
  store i64 %236, i64* %239
  store %struct.Memory* %loadMem_4348d0, %struct.Memory** %MEMORY
  %loadMem_4348d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %248 to i64*
  %249 = load i64, i64* %RBP.i429
  %250 = sub i64 %249, 24
  %251 = load i64, i64* %RDX.i428
  %252 = load i64, i64* %PC.i427
  %253 = add i64 %252, 4
  store i64 %253, i64* %PC.i427
  %254 = inttoptr i64 %250 to i64*
  store i64 %251, i64* %254
  store %struct.Memory* %loadMem_4348d4, %struct.Memory** %MEMORY
  %loadMem_4348d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %261, i64 0, i64 0
  %XMM0.i426 = bitcast %union.VectorReg* %262 to %union.vec128_t*
  %263 = load i64, i64* %RBP.i425
  %264 = sub i64 %263, 28
  %265 = bitcast %union.vec128_t* %XMM0.i426 to i8*
  %266 = load i64, i64* %PC.i424
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i424
  %268 = bitcast i8* %265 to <2 x float>*
  %269 = load <2 x float>, <2 x float>* %268, align 1
  %270 = extractelement <2 x float> %269, i32 0
  %271 = inttoptr i64 %264 to float*
  store float %270, float* %271
  store %struct.Memory* %loadMem_4348d8, %struct.Memory** %MEMORY
  %loadMem_4348dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 1
  %XMM1.i423 = bitcast %union.VectorReg* %279 to %union.vec128_t*
  %280 = load i64, i64* %RBP.i422
  %281 = sub i64 %280, 32
  %282 = bitcast %union.vec128_t* %XMM1.i423 to i8*
  %283 = load i64, i64* %PC.i421
  %284 = add i64 %283, 5
  store i64 %284, i64* %PC.i421
  %285 = bitcast i8* %282 to <2 x float>*
  %286 = load <2 x float>, <2 x float>* %285, align 1
  %287 = extractelement <2 x float> %286, i32 0
  %288 = inttoptr i64 %281 to float*
  store float %287, float* %288
  store %struct.Memory* %loadMem_4348dd, %struct.Memory** %MEMORY
  %loadMem_4348e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RBP.i420
  %296 = sub i64 %295, 56
  %297 = load i64, i64* %PC.i419
  %298 = add i64 %297, 8
  store i64 %298, i64* %PC.i419
  %299 = inttoptr i64 %296 to i64*
  store i64 0, i64* %299
  store %struct.Memory* %loadMem_4348e2, %struct.Memory** %MEMORY
  %loadMem_4348ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RDX.i417 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 15
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %308 to i64*
  %309 = load i64, i64* %RBP.i418
  %310 = sub i64 %309, 8
  %311 = load i64, i64* %PC.i416
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC.i416
  %313 = inttoptr i64 %310 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %RDX.i417, align 8
  store %struct.Memory* %loadMem_4348ea, %struct.Memory** %MEMORY
  %loadMem_4348ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 33
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 7
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %321, i64 0, i64 8
  %XMM8.i415 = bitcast %union.VectorReg* %322 to %union.vec128_t*
  %323 = load i64, i64* %RDX.i414
  %324 = add i64 %323, 172
  %325 = bitcast %union.vec128_t* %XMM8.i415 to i8*
  %326 = load i64, i64* %PC.i413
  %327 = add i64 %326, 9
  store i64 %327, i64* %PC.i413
  %328 = bitcast i8* %325 to <2 x float>*
  %329 = load <2 x float>, <2 x float>* %328, align 1
  %330 = extractelement <2 x float> %329, i32 0
  %331 = inttoptr i64 %324 to float*
  store float %330, float* %331
  store %struct.Memory* %loadMem_4348ee, %struct.Memory** %MEMORY
  %loadMem_4348f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 7
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RDX.i411 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i412
  %342 = sub i64 %341, 8
  %343 = load i64, i64* %PC.i410
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i410
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %RDX.i411, align 8
  store %struct.Memory* %loadMem_4348f7, %struct.Memory** %MEMORY
  %loadMem_4348fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 7
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %353, i64 0, i64 7
  %XMM7.i409 = bitcast %union.VectorReg* %354 to %union.vec128_t*
  %355 = load i64, i64* %RDX.i408
  %356 = add i64 %355, 176
  %357 = bitcast %union.vec128_t* %XMM7.i409 to i8*
  %358 = load i64, i64* %PC.i407
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC.i407
  %360 = bitcast i8* %357 to <2 x float>*
  %361 = load <2 x float>, <2 x float>* %360, align 1
  %362 = extractelement <2 x float> %361, i32 0
  %363 = inttoptr i64 %356 to float*
  store float %362, float* %363
  store %struct.Memory* %loadMem_4348fb, %struct.Memory** %MEMORY
  %loadMem_434903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 7
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 15
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %RBP.i406
  %374 = sub i64 %373, 8
  %375 = load i64, i64* %PC.i404
  %376 = add i64 %375, 4
  store i64 %376, i64* %PC.i404
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377
  store i64 %378, i64* %RDX.i405, align 8
  store %struct.Memory* %loadMem_434903, %struct.Memory** %MEMORY
  %loadMem_434907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 7
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %385, i64 0, i64 6
  %XMM6.i403 = bitcast %union.VectorReg* %386 to %union.vec128_t*
  %387 = load i64, i64* %RDX.i402
  %388 = add i64 %387, 180
  %389 = bitcast %union.vec128_t* %XMM6.i403 to i8*
  %390 = load i64, i64* %PC.i401
  %391 = add i64 %390, 8
  store i64 %391, i64* %PC.i401
  %392 = bitcast i8* %389 to <2 x float>*
  %393 = load <2 x float>, <2 x float>* %392, align 1
  %394 = extractelement <2 x float> %393, i32 0
  %395 = inttoptr i64 %388 to float*
  store float %394, float* %395
  store %struct.Memory* %loadMem_434907, %struct.Memory** %MEMORY
  %loadMem_43490f = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 7
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RDX.i399 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 15
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %RBP.i400
  %406 = sub i64 %405, 8
  %407 = load i64, i64* %PC.i398
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC.i398
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409
  store i64 %410, i64* %RDX.i399, align 8
  store %struct.Memory* %loadMem_43490f, %struct.Memory** %MEMORY
  %loadMem_434913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 7
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RDX.i396 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %417, i64 0, i64 5
  %XMM5.i397 = bitcast %union.VectorReg* %418 to %union.vec128_t*
  %419 = load i64, i64* %RDX.i396
  %420 = add i64 %419, 184
  %421 = bitcast %union.vec128_t* %XMM5.i397 to i8*
  %422 = load i64, i64* %PC.i395
  %423 = add i64 %422, 8
  store i64 %423, i64* %PC.i395
  %424 = bitcast i8* %421 to <2 x float>*
  %425 = load <2 x float>, <2 x float>* %424, align 1
  %426 = extractelement <2 x float> %425, i32 0
  %427 = inttoptr i64 %420 to float*
  store float %426, float* %427
  store %struct.Memory* %loadMem_434913, %struct.Memory** %MEMORY
  %loadMem_43491b = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 7
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RDX.i393 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i394
  %438 = sub i64 %437, 8
  %439 = load i64, i64* %PC.i392
  %440 = add i64 %439, 4
  store i64 %440, i64* %PC.i392
  %441 = inttoptr i64 %438 to i64*
  %442 = load i64, i64* %441
  store i64 %442, i64* %RDX.i393, align 8
  store %struct.Memory* %loadMem_43491b, %struct.Memory** %MEMORY
  %loadMem_43491f = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 7
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %449, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %450 to %union.vec128_t*
  %451 = load i64, i64* %RDX.i391
  %452 = add i64 %451, 188
  %453 = bitcast %union.vec128_t* %XMM8.i to i8*
  %454 = load i64, i64* %PC.i390
  %455 = add i64 %454, 9
  store i64 %455, i64* %PC.i390
  %456 = bitcast i8* %453 to <2 x float>*
  %457 = load <2 x float>, <2 x float>* %456, align 1
  %458 = extractelement <2 x float> %457, i32 0
  %459 = inttoptr i64 %452 to float*
  store float %458, float* %459
  store %struct.Memory* %loadMem_43491f, %struct.Memory** %MEMORY
  %loadMem_434928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 7
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RDX.i388 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 15
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %RBP.i389
  %470 = sub i64 %469, 8
  %471 = load i64, i64* %PC.i387
  %472 = add i64 %471, 4
  store i64 %472, i64* %PC.i387
  %473 = inttoptr i64 %470 to i64*
  %474 = load i64, i64* %473
  store i64 %474, i64* %RDX.i388, align 8
  store %struct.Memory* %loadMem_434928, %struct.Memory** %MEMORY
  %loadMem_43492c = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 7
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RDX.i386 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %481, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %482 to %union.vec128_t*
  %483 = load i64, i64* %RDX.i386
  %484 = add i64 %483, 192
  %485 = bitcast %union.vec128_t* %XMM7.i to i8*
  %486 = load i64, i64* %PC.i385
  %487 = add i64 %486, 8
  store i64 %487, i64* %PC.i385
  %488 = bitcast i8* %485 to <2 x float>*
  %489 = load <2 x float>, <2 x float>* %488, align 1
  %490 = extractelement <2 x float> %489, i32 0
  %491 = inttoptr i64 %484 to float*
  store float %490, float* %491
  store %struct.Memory* %loadMem_43492c, %struct.Memory** %MEMORY
  %loadMem_434934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 7
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i384
  %502 = sub i64 %501, 8
  %503 = load i64, i64* %PC.i382
  %504 = add i64 %503, 4
  store i64 %504, i64* %PC.i382
  %505 = inttoptr i64 %502 to i64*
  %506 = load i64, i64* %505
  store i64 %506, i64* %RDX.i383, align 8
  store %struct.Memory* %loadMem_434934, %struct.Memory** %MEMORY
  %loadMem_434938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 7
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %513, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %514 to %union.vec128_t*
  %515 = load i64, i64* %RDX.i381
  %516 = add i64 %515, 196
  %517 = bitcast %union.vec128_t* %XMM6.i to i8*
  %518 = load i64, i64* %PC.i380
  %519 = add i64 %518, 8
  store i64 %519, i64* %PC.i380
  %520 = bitcast i8* %517 to <2 x float>*
  %521 = load <2 x float>, <2 x float>* %520, align 1
  %522 = extractelement <2 x float> %521, i32 0
  %523 = inttoptr i64 %516 to float*
  store float %522, float* %523
  store %struct.Memory* %loadMem_434938, %struct.Memory** %MEMORY
  %loadMem_434940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 7
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i379
  %534 = sub i64 %533, 8
  %535 = load i64, i64* %PC.i377
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i377
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537
  store i64 %538, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_434940, %struct.Memory** %MEMORY
  %loadMem_434944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 7
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %546 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %545, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %546 to %union.vec128_t*
  %547 = load i64, i64* %RDX.i376
  %548 = add i64 %547, 200
  %549 = bitcast %union.vec128_t* %XMM5.i to i8*
  %550 = load i64, i64* %PC.i375
  %551 = add i64 %550, 8
  store i64 %551, i64* %PC.i375
  %552 = bitcast i8* %549 to <2 x float>*
  %553 = load <2 x float>, <2 x float>* %552, align 1
  %554 = extractelement <2 x float> %553, i32 0
  %555 = inttoptr i64 %548 to float*
  store float %554, float* %555
  store %struct.Memory* %loadMem_434944, %struct.Memory** %MEMORY
  %loadMem_43494c = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 7
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RDX.i373 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 15
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RBP.i374
  %566 = sub i64 %565, 8
  %567 = load i64, i64* %PC.i372
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i372
  %569 = inttoptr i64 %566 to i64*
  %570 = load i64, i64* %569
  store i64 %570, i64* %RDX.i373, align 8
  store %struct.Memory* %loadMem_43494c, %struct.Memory** %MEMORY
  %loadMem_434950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 7
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RDX.i371
  %578 = add i64 %577, 208
  %579 = load i64, i64* %PC.i370
  %580 = add i64 %579, 7
  store i64 %580, i64* %PC.i370
  %581 = inttoptr i64 %578 to i64*
  %582 = load i64, i64* %581
  store i64 %582, i64* %RDX.i371, align 8
  store %struct.Memory* %loadMem_434950, %struct.Memory** %MEMORY
  %loadMem_434957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 7
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RDX.i369 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %589, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %590 to %union.vec128_t*
  %591 = load i64, i64* %RDX.i369
  %592 = add i64 %591, 4
  %593 = bitcast %union.vec128_t* %XMM4.i to i8*
  %594 = load i64, i64* %PC.i368
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC.i368
  %596 = bitcast i8* %593 to <2 x float>*
  %597 = load <2 x float>, <2 x float>* %596, align 1
  %598 = extractelement <2 x float> %597, i32 0
  %599 = inttoptr i64 %592 to float*
  store float %598, float* %599
  store %struct.Memory* %loadMem_434957, %struct.Memory** %MEMORY
  %loadMem_43495c = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 7
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RBP.i367
  %610 = sub i64 %609, 8
  %611 = load i64, i64* %PC.i365
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i365
  %613 = inttoptr i64 %610 to i64*
  %614 = load i64, i64* %613
  store i64 %614, i64* %RDX.i366, align 8
  store %struct.Memory* %loadMem_43495c, %struct.Memory** %MEMORY
  %loadMem_434960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RDX.i364
  %622 = add i64 %621, 208
  %623 = load i64, i64* %PC.i363
  %624 = add i64 %623, 7
  store i64 %624, i64* %PC.i363
  %625 = inttoptr i64 %622 to i64*
  %626 = load i64, i64* %625
  store i64 %626, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_434960, %struct.Memory** %MEMORY
  %loadMem_434967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 7
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %632 to i64*
  %633 = load i64, i64* %RDX.i362
  %634 = load i64, i64* %PC.i361
  %635 = add i64 %634, 4
  store i64 %635, i64* %PC.i361
  %636 = add i64 8, %633
  store i64 %636, i64* %RDX.i362, align 8
  %637 = icmp ult i64 %636, %633
  %638 = icmp ult i64 %636, 8
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %640, i8* %641, align 1
  %642 = trunc i64 %636 to i32
  %643 = and i32 %642, 255
  %644 = call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %647, i8* %648, align 1
  %649 = xor i64 8, %633
  %650 = xor i64 %649, %636
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %653, i8* %654, align 1
  %655 = icmp eq i64 %636, 0
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %656, i8* %657, align 1
  %658 = lshr i64 %636, 63
  %659 = trunc i64 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %659, i8* %660, align 1
  %661 = lshr i64 %633, 63
  %662 = xor i64 %658, %661
  %663 = add i64 %662, %658
  %664 = icmp eq i64 %663, 2
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %665, i8* %666, align 1
  store %struct.Memory* %loadMem_434967, %struct.Memory** %MEMORY
  %loadMem_43496b = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 9
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RSI.i359 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RBP.i360
  %677 = sub i64 %676, 8
  %678 = load i64, i64* %PC.i358
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC.i358
  %680 = inttoptr i64 %677 to i64*
  %681 = load i64, i64* %680
  store i64 %681, i64* %RSI.i359, align 8
  store %struct.Memory* %loadMem_43496b, %struct.Memory** %MEMORY
  %loadMem_43496f = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 1
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 9
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RSI.i357 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RSI.i357
  %692 = add i64 %691, 136
  %693 = load i64, i64* %PC.i355
  %694 = add i64 %693, 6
  store i64 %694, i64* %PC.i355
  %695 = inttoptr i64 %692 to i32*
  %696 = load i32, i32* %695
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_43496f, %struct.Memory** %MEMORY
  %loadMem_434975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RAX.i354
  %705 = load i64, i64* %PC.i353
  %706 = add i64 %705, 3
  store i64 %706, i64* %PC.i353
  %707 = trunc i64 %704 to i32
  %708 = sub i32 %707, 1
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RAX.i354, align 8
  %710 = icmp ult i32 %707, 1
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %711, i8* %712, align 1
  %713 = and i32 %708, 255
  %714 = call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %717, i8* %718, align 1
  %719 = xor i64 1, %704
  %720 = trunc i64 %719 to i32
  %721 = xor i32 %720, %708
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %724, i8* %725, align 1
  %726 = icmp eq i32 %708, 0
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %727, i8* %728, align 1
  %729 = lshr i32 %708, 31
  %730 = trunc i32 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %730, i8* %731, align 1
  %732 = lshr i32 %707, 31
  %733 = xor i32 %729, %732
  %734 = add i32 %733, %732
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %736, i8* %737, align 1
  store %struct.Memory* %loadMem_434975, %struct.Memory** %MEMORY
  %loadMem_434978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 9
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RSI.i351 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i352
  %748 = sub i64 %747, 8
  %749 = load i64, i64* %PC.i350
  %750 = add i64 %749, 4
  store i64 %750, i64* %PC.i350
  %751 = inttoptr i64 %748 to i64*
  %752 = load i64, i64* %751
  store i64 %752, i64* %RSI.i351, align 8
  store %struct.Memory* %loadMem_434978, %struct.Memory** %MEMORY
  %loadMem_43497c = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 9
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RSI.i348 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %759, i64 0, i64 0
  %YMM0.i349 = bitcast %union.VectorReg* %760 to %"class.std::bitset"*
  %761 = bitcast %"class.std::bitset"* %YMM0.i349 to i8*
  %762 = load i64, i64* %RSI.i348
  %763 = add i64 %762, 136
  %764 = load i64, i64* %PC.i347
  %765 = add i64 %764, 8
  store i64 %765, i64* %PC.i347
  %766 = bitcast i8* %761 to <2 x i32>*
  %767 = load <2 x i32>, <2 x i32>* %766, align 1
  %768 = getelementptr inbounds i8, i8* %761, i64 8
  %769 = bitcast i8* %768 to <2 x i32>*
  %770 = load <2 x i32>, <2 x i32>* %769, align 1
  %771 = inttoptr i64 %763 to i32*
  %772 = load i32, i32* %771
  %773 = sitofp i32 %772 to float
  %774 = bitcast i8* %761 to float*
  store float %773, float* %774, align 1
  %775 = extractelement <2 x i32> %767, i32 1
  %776 = getelementptr inbounds i8, i8* %761, i64 4
  %777 = bitcast i8* %776 to i32*
  store i32 %775, i32* %777, align 1
  %778 = extractelement <2 x i32> %770, i32 0
  %779 = bitcast i8* %768 to i32*
  store i32 %778, i32* %779, align 1
  %780 = extractelement <2 x i32> %770, i32 1
  %781 = getelementptr inbounds i8, i8* %761, i64 12
  %782 = bitcast i8* %781 to i32*
  store i32 %780, i32* %782, align 1
  store %struct.Memory* %loadMem_43497c, %struct.Memory** %MEMORY
  %loadMem_434984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %786, i64 0, i64 0
  %YMM0.i345 = bitcast %union.VectorReg* %787 to %"class.std::bitset"*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %788, i64 0, i64 0
  %XMM0.i346 = bitcast %union.VectorReg* %789 to %union.vec128_t*
  %790 = bitcast %"class.std::bitset"* %YMM0.i345 to i8*
  %791 = bitcast %union.vec128_t* %XMM0.i346 to i8*
  %792 = load i64, i64* %PC.i344
  %793 = add i64 %792, 4
  store i64 %793, i64* %PC.i344
  %794 = bitcast i8* %791 to <2 x float>*
  %795 = load <2 x float>, <2 x float>* %794, align 1
  %796 = extractelement <2 x float> %795, i32 0
  %797 = fpext float %796 to double
  %798 = bitcast i8* %790 to double*
  store double %797, double* %798, align 1
  store %struct.Memory* %loadMem_434984, %struct.Memory** %MEMORY
  %loadMem_434988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %802, i64 0, i64 0
  %YMM0.i343 = bitcast %union.VectorReg* %803 to %"class.std::bitset"*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %804, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %805 to %union.vec128_t*
  %806 = bitcast %"class.std::bitset"* %YMM0.i343 to i8*
  %807 = bitcast %"class.std::bitset"* %YMM0.i343 to i8*
  %808 = bitcast %union.vec128_t* %XMM3.i to i8*
  %809 = load i64, i64* %PC.i342
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC.i342
  %811 = bitcast i8* %807 to double*
  %812 = load double, double* %811, align 1
  %813 = getelementptr inbounds i8, i8* %807, i64 8
  %814 = bitcast i8* %813 to i64*
  %815 = load i64, i64* %814, align 1
  %816 = bitcast i8* %808 to double*
  %817 = load double, double* %816, align 1
  %818 = fsub double %812, %817
  %819 = bitcast i8* %806 to double*
  store double %818, double* %819, align 1
  %820 = getelementptr inbounds i8, i8* %806, i64 8
  %821 = bitcast i8* %820 to i64*
  store i64 %815, i64* %821, align 1
  store %struct.Memory* %loadMem_434988, %struct.Memory** %MEMORY
  %loadMem_43498c = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %825, i64 0, i64 2
  %YMM2.i340 = bitcast %union.VectorReg* %826 to %"class.std::bitset"*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %827, i64 0, i64 0
  %XMM0.i341 = bitcast %union.VectorReg* %828 to %union.vec128_t*
  %829 = bitcast %"class.std::bitset"* %YMM2.i340 to i8*
  %830 = bitcast %"class.std::bitset"* %YMM2.i340 to i8*
  %831 = bitcast %union.vec128_t* %XMM0.i341 to i8*
  %832 = load i64, i64* %PC.i339
  %833 = add i64 %832, 4
  store i64 %833, i64* %PC.i339
  %834 = bitcast i8* %830 to double*
  %835 = load double, double* %834, align 1
  %836 = getelementptr inbounds i8, i8* %830, i64 8
  %837 = bitcast i8* %836 to i64*
  %838 = load i64, i64* %837, align 1
  %839 = bitcast i8* %831 to double*
  %840 = load double, double* %839, align 1
  %841 = fdiv double %835, %840
  %842 = bitcast i8* %829 to double*
  store double %841, double* %842, align 1
  %843 = getelementptr inbounds i8, i8* %829, i64 8
  %844 = bitcast i8* %843 to i64*
  store i64 %838, i64* %844, align 1
  store %struct.Memory* %loadMem_43498c, %struct.Memory** %MEMORY
  %loadMem_434990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %848, i64 0, i64 0
  %YMM0.i337 = bitcast %union.VectorReg* %849 to %"class.std::bitset"*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %850, i64 0, i64 2
  %XMM2.i338 = bitcast %union.VectorReg* %851 to %union.vec128_t*
  %852 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %853 = bitcast %union.vec128_t* %XMM2.i338 to i8*
  %854 = load i64, i64* %PC.i336
  %855 = add i64 %854, 4
  store i64 %855, i64* %PC.i336
  %856 = bitcast i8* %852 to <2 x i32>*
  %857 = load <2 x i32>, <2 x i32>* %856, align 1
  %858 = getelementptr inbounds i8, i8* %852, i64 8
  %859 = bitcast i8* %858 to <2 x i32>*
  %860 = load <2 x i32>, <2 x i32>* %859, align 1
  %861 = bitcast i8* %853 to double*
  %862 = load double, double* %861, align 1
  %863 = fptrunc double %862 to float
  %864 = bitcast i8* %852 to float*
  store float %863, float* %864, align 1
  %865 = extractelement <2 x i32> %857, i32 1
  %866 = getelementptr inbounds i8, i8* %852, i64 4
  %867 = bitcast i8* %866 to i32*
  store i32 %865, i32* %867, align 1
  %868 = extractelement <2 x i32> %860, i32 0
  %869 = bitcast i8* %858 to i32*
  store i32 %868, i32* %869, align 1
  %870 = extractelement <2 x i32> %860, i32 1
  %871 = getelementptr inbounds i8, i8* %852, i64 12
  %872 = bitcast i8* %871 to i32*
  store i32 %870, i32* %872, align 1
  store %struct.Memory* %loadMem_434990, %struct.Memory** %MEMORY
  %loadMem_434994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 7
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 11
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RDI.i335 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RDX.i334
  %883 = load i64, i64* %PC.i333
  %884 = add i64 %883, 3
  store i64 %884, i64* %PC.i333
  store i64 %882, i64* %RDI.i335, align 8
  store %struct.Memory* %loadMem_434994, %struct.Memory** %MEMORY
  %loadMem_434997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %EAX.i331 = bitcast %union.anon* %890 to i32*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 9
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RSI.i332 = bitcast %union.anon* %893 to i64*
  %894 = load i32, i32* %EAX.i331
  %895 = zext i32 %894 to i64
  %896 = load i64, i64* %PC.i330
  %897 = add i64 %896, 2
  store i64 %897, i64* %PC.i330
  %898 = and i64 %895, 4294967295
  store i64 %898, i64* %RSI.i332, align 8
  store %struct.Memory* %loadMem_434997, %struct.Memory** %MEMORY
  %loadMem1_434999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %PC.i329
  %903 = add i64 %902, 120231
  %904 = load i64, i64* %PC.i329
  %905 = add i64 %904, 5
  %906 = load i64, i64* %PC.i329
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC.i329
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = add i64 %909, -8
  %911 = inttoptr i64 %910 to i64*
  store i64 %905, i64* %911
  store i64 %910, i64* %908, align 8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %903, i64* %912, align 8
  store %struct.Memory* %loadMem1_434999, %struct.Memory** %MEMORY
  %loadMem2_434999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434999 = load i64, i64* %3
  %call2_434999 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %loadPC_434999, %struct.Memory* %loadMem2_434999)
  store %struct.Memory* %call2_434999, %struct.Memory** %MEMORY
  %loadMem_43499e = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %916, i64 0, i64 0
  %YMM0.i328 = bitcast %union.VectorReg* %917 to %"class.std::bitset"*
  %918 = bitcast %"class.std::bitset"* %YMM0.i328 to i8*
  %919 = load i64, i64* %PC.i327
  %920 = add i64 %919, ptrtoint (%G_0x1fe4a__rip__type* @G_0x1fe4a__rip_ to i64)
  %921 = load i64, i64* %PC.i327
  %922 = add i64 %921, 8
  store i64 %922, i64* %PC.i327
  %923 = inttoptr i64 %920 to double*
  %924 = load double, double* %923
  %925 = bitcast i8* %918 to double*
  store double %924, double* %925, align 1
  %926 = getelementptr inbounds i8, i8* %918, i64 8
  %927 = bitcast i8* %926 to double*
  store double 0.000000e+00, double* %927, align 1
  store %struct.Memory* %loadMem_43499e, %struct.Memory** %MEMORY
  %loadMem_4349a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %931, i64 0, i64 1
  %YMM1.i326 = bitcast %union.VectorReg* %932 to %"class.std::bitset"*
  %933 = bitcast %"class.std::bitset"* %YMM1.i326 to i8*
  %934 = load i64, i64* %PC.i325
  %935 = add i64 %934, ptrtoint (%G_0x1fe32__rip__type* @G_0x1fe32__rip_ to i64)
  %936 = load i64, i64* %PC.i325
  %937 = add i64 %936, 8
  store i64 %937, i64* %PC.i325
  %938 = inttoptr i64 %935 to double*
  %939 = load double, double* %938
  %940 = bitcast i8* %933 to double*
  store double %939, double* %940, align 1
  %941 = getelementptr inbounds i8, i8* %933, i64 8
  %942 = bitcast i8* %941 to double*
  store double 0.000000e+00, double* %942, align 1
  store %struct.Memory* %loadMem_4349a6, %struct.Memory** %MEMORY
  %loadMem_4349ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %947 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %946, i64 0, i64 2
  %YMM2.i324 = bitcast %union.VectorReg* %947 to %"class.std::bitset"*
  %948 = bitcast %"class.std::bitset"* %YMM2.i324 to i8*
  %949 = load i64, i64* %PC.i323
  %950 = add i64 %949, ptrtoint (%G_0x1fd72__rip__type* @G_0x1fd72__rip_ to i64)
  %951 = load i64, i64* %PC.i323
  %952 = add i64 %951, 8
  store i64 %952, i64* %PC.i323
  %953 = inttoptr i64 %950 to float*
  %954 = load float, float* %953
  %955 = bitcast i8* %948 to float*
  store float %954, float* %955, align 1
  %956 = getelementptr inbounds i8, i8* %948, i64 4
  %957 = bitcast i8* %956 to float*
  store float 0.000000e+00, float* %957, align 1
  %958 = getelementptr inbounds i8, i8* %948, i64 8
  %959 = bitcast i8* %958 to float*
  store float 0.000000e+00, float* %959, align 1
  %960 = getelementptr inbounds i8, i8* %948, i64 12
  %961 = bitcast i8* %960 to float*
  store float 0.000000e+00, float* %961, align 1
  store %struct.Memory* %loadMem_4349ae, %struct.Memory** %MEMORY
  %loadMem_4349b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 7
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i322
  %972 = sub i64 %971, 8
  %973 = load i64, i64* %PC.i320
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC.i320
  %975 = inttoptr i64 %972 to i64*
  %976 = load i64, i64* %975
  store i64 %976, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_4349b6, %struct.Memory** %MEMORY
  %loadMem_4349ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 7
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %RDX.i319
  %984 = add i64 %983, 216
  %985 = load i64, i64* %PC.i318
  %986 = add i64 %985, 7
  store i64 %986, i64* %PC.i318
  %987 = inttoptr i64 %984 to i64*
  %988 = load i64, i64* %987
  store i64 %988, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_4349ba, %struct.Memory** %MEMORY
  %loadMem_4349c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 11
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RDI.i316 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i317
  %999 = sub i64 %998, 8
  %1000 = load i64, i64* %PC.i315
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %PC.i315
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %RDI.i316, align 8
  store %struct.Memory* %loadMem_4349c1, %struct.Memory** %MEMORY
  %loadMem_4349c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 11
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDI.i314 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RDI.i314
  %1011 = add i64 %1010, 136
  %1012 = load i64, i64* %PC.i313
  %1013 = add i64 %1012, 7
  store i64 %1013, i64* %PC.i313
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = sext i32 %1015 to i64
  store i64 %1016, i64* %RDI.i314, align 8
  store %struct.Memory* %loadMem_4349c5, %struct.Memory** %MEMORY
  %loadMem_4349cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 7
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 11
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RDI.i311 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1026, i64 0, i64 2
  %XMM2.i312 = bitcast %union.VectorReg* %1027 to %union.vec128_t*
  %1028 = load i64, i64* %RDX.i310
  %1029 = load i64, i64* %RDI.i311
  %1030 = mul i64 %1029, 4
  %1031 = add i64 %1030, %1028
  %1032 = bitcast %union.vec128_t* %XMM2.i312 to i8*
  %1033 = load i64, i64* %PC.i309
  %1034 = add i64 %1033, 5
  store i64 %1034, i64* %PC.i309
  %1035 = bitcast i8* %1032 to <2 x float>*
  %1036 = load <2 x float>, <2 x float>* %1035, align 1
  %1037 = extractelement <2 x float> %1036, i32 0
  %1038 = inttoptr i64 %1031 to float*
  store float %1037, float* %1038
  store %struct.Memory* %loadMem_4349cc, %struct.Memory** %MEMORY
  %loadMem_4349d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 7
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RDX.i307 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 15
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %RBP.i308
  %1049 = sub i64 %1048, 8
  %1050 = load i64, i64* %PC.i306
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %PC.i306
  %1052 = inttoptr i64 %1049 to i64*
  %1053 = load i64, i64* %1052
  store i64 %1053, i64* %RDX.i307, align 8
  store %struct.Memory* %loadMem_4349d1, %struct.Memory** %MEMORY
  %loadMem_4349d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 7
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 11
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RDX.i305
  %1064 = add i64 %1063, 216
  %1065 = load i64, i64* %PC.i304
  %1066 = add i64 %1065, 7
  store i64 %1066, i64* %PC.i304
  %1067 = inttoptr i64 %1064 to i64*
  %1068 = load i64, i64* %1067
  store i64 %1068, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4349d5, %struct.Memory** %MEMORY
  %loadMem_4349dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 7
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 15
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %1077 to i64*
  %1078 = load i64, i64* %RBP.i303
  %1079 = sub i64 %1078, 8
  %1080 = load i64, i64* %PC.i301
  %1081 = add i64 %1080, 4
  store i64 %1081, i64* %PC.i301
  %1082 = inttoptr i64 %1079 to i64*
  %1083 = load i64, i64* %1082
  store i64 %1083, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_4349dc, %struct.Memory** %MEMORY
  %loadMem_4349e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 7
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RDX.i300
  %1094 = add i64 %1093, 136
  %1095 = load i64, i64* %PC.i298
  %1096 = add i64 %1095, 6
  store i64 %1096, i64* %PC.i298
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_4349e0, %struct.Memory** %MEMORY
  %loadMem_4349e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 1
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RAX.i297
  %1107 = load i64, i64* %PC.i296
  %1108 = add i64 %1107, 3
  store i64 %1108, i64* %PC.i296
  %1109 = trunc i64 %1106 to i32
  %1110 = sub i32 %1109, 1
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RAX.i297, align 8
  %1112 = icmp ult i32 %1109, 1
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1113, i8* %1114, align 1
  %1115 = and i32 %1110, 255
  %1116 = call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1119, i8* %1120, align 1
  %1121 = xor i64 1, %1106
  %1122 = trunc i64 %1121 to i32
  %1123 = xor i32 %1122, %1110
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1126, i8* %1127, align 1
  %1128 = icmp eq i32 %1110, 0
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i32 %1110, 31
  %1132 = trunc i32 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1132, i8* %1133, align 1
  %1134 = lshr i32 %1109, 31
  %1135 = xor i32 %1131, %1134
  %1136 = add i32 %1135, %1134
  %1137 = icmp eq i32 %1136, 2
  %1138 = zext i1 %1137 to i8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1138, i8* %1139, align 1
  store %struct.Memory* %loadMem_4349e6, %struct.Memory** %MEMORY
  %loadMem_4349e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 7
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RDX.i294 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 15
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1148 to i64*
  %1149 = load i64, i64* %RBP.i295
  %1150 = sub i64 %1149, 8
  %1151 = load i64, i64* %PC.i293
  %1152 = add i64 %1151, 4
  store i64 %1152, i64* %PC.i293
  %1153 = inttoptr i64 %1150 to i64*
  %1154 = load i64, i64* %1153
  store i64 %1154, i64* %RDX.i294, align 8
  store %struct.Memory* %loadMem_4349e9, %struct.Memory** %MEMORY
  %loadMem_4349ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 7
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1161, i64 0, i64 2
  %YMM2.i292 = bitcast %union.VectorReg* %1162 to %"class.std::bitset"*
  %1163 = bitcast %"class.std::bitset"* %YMM2.i292 to i8*
  %1164 = load i64, i64* %RDX.i291
  %1165 = add i64 %1164, 136
  %1166 = load i64, i64* %PC.i290
  %1167 = add i64 %1166, 8
  store i64 %1167, i64* %PC.i290
  %1168 = bitcast i8* %1163 to <2 x i32>*
  %1169 = load <2 x i32>, <2 x i32>* %1168, align 1
  %1170 = getelementptr inbounds i8, i8* %1163, i64 8
  %1171 = bitcast i8* %1170 to <2 x i32>*
  %1172 = load <2 x i32>, <2 x i32>* %1171, align 1
  %1173 = inttoptr i64 %1165 to i32*
  %1174 = load i32, i32* %1173
  %1175 = sitofp i32 %1174 to float
  %1176 = bitcast i8* %1163 to float*
  store float %1175, float* %1176, align 1
  %1177 = extractelement <2 x i32> %1169, i32 1
  %1178 = getelementptr inbounds i8, i8* %1163, i64 4
  %1179 = bitcast i8* %1178 to i32*
  store i32 %1177, i32* %1179, align 1
  %1180 = extractelement <2 x i32> %1172, i32 0
  %1181 = bitcast i8* %1170 to i32*
  store i32 %1180, i32* %1181, align 1
  %1182 = extractelement <2 x i32> %1172, i32 1
  %1183 = getelementptr inbounds i8, i8* %1163, i64 12
  %1184 = bitcast i8* %1183 to i32*
  store i32 %1182, i32* %1184, align 1
  store %struct.Memory* %loadMem_4349ed, %struct.Memory** %MEMORY
  %loadMem_4349f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1188, i64 0, i64 2
  %YMM2.i288 = bitcast %union.VectorReg* %1189 to %"class.std::bitset"*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1190, i64 0, i64 2
  %XMM2.i289 = bitcast %union.VectorReg* %1191 to %union.vec128_t*
  %1192 = bitcast %"class.std::bitset"* %YMM2.i288 to i8*
  %1193 = bitcast %union.vec128_t* %XMM2.i289 to i8*
  %1194 = load i64, i64* %PC.i287
  %1195 = add i64 %1194, 4
  store i64 %1195, i64* %PC.i287
  %1196 = bitcast i8* %1193 to <2 x float>*
  %1197 = load <2 x float>, <2 x float>* %1196, align 1
  %1198 = extractelement <2 x float> %1197, i32 0
  %1199 = fpext float %1198 to double
  %1200 = bitcast i8* %1192 to double*
  store double %1199, double* %1200, align 1
  store %struct.Memory* %loadMem_4349f5, %struct.Memory** %MEMORY
  %loadMem_4349f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1204, i64 0, i64 2
  %YMM2.i285 = bitcast %union.VectorReg* %1205 to %"class.std::bitset"*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1207 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1206, i64 0, i64 1
  %XMM1.i286 = bitcast %union.VectorReg* %1207 to %union.vec128_t*
  %1208 = bitcast %"class.std::bitset"* %YMM2.i285 to i8*
  %1209 = bitcast %"class.std::bitset"* %YMM2.i285 to i8*
  %1210 = bitcast %union.vec128_t* %XMM1.i286 to i8*
  %1211 = load i64, i64* %PC.i284
  %1212 = add i64 %1211, 4
  store i64 %1212, i64* %PC.i284
  %1213 = bitcast i8* %1209 to double*
  %1214 = load double, double* %1213, align 1
  %1215 = getelementptr inbounds i8, i8* %1209, i64 8
  %1216 = bitcast i8* %1215 to i64*
  %1217 = load i64, i64* %1216, align 1
  %1218 = bitcast i8* %1210 to double*
  %1219 = load double, double* %1218, align 1
  %1220 = fsub double %1214, %1219
  %1221 = bitcast i8* %1208 to double*
  store double %1220, double* %1221, align 1
  %1222 = getelementptr inbounds i8, i8* %1208, i64 8
  %1223 = bitcast i8* %1222 to i64*
  store i64 %1217, i64* %1223, align 1
  store %struct.Memory* %loadMem_4349f9, %struct.Memory** %MEMORY
  %loadMem_4349fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1227, i64 0, i64 0
  %YMM0.i282 = bitcast %union.VectorReg* %1228 to %"class.std::bitset"*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1229, i64 0, i64 2
  %XMM2.i283 = bitcast %union.VectorReg* %1230 to %union.vec128_t*
  %1231 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %1232 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %1233 = bitcast %union.vec128_t* %XMM2.i283 to i8*
  %1234 = load i64, i64* %PC.i281
  %1235 = add i64 %1234, 4
  store i64 %1235, i64* %PC.i281
  %1236 = bitcast i8* %1232 to double*
  %1237 = load double, double* %1236, align 1
  %1238 = getelementptr inbounds i8, i8* %1232, i64 8
  %1239 = bitcast i8* %1238 to i64*
  %1240 = load i64, i64* %1239, align 1
  %1241 = bitcast i8* %1233 to double*
  %1242 = load double, double* %1241, align 1
  %1243 = fdiv double %1237, %1242
  %1244 = bitcast i8* %1231 to double*
  store double %1243, double* %1244, align 1
  %1245 = getelementptr inbounds i8, i8* %1231, i64 8
  %1246 = bitcast i8* %1245 to i64*
  store i64 %1240, i64* %1246, align 1
  store %struct.Memory* %loadMem_4349fd, %struct.Memory** %MEMORY
  %loadMem_434a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1250, i64 0, i64 0
  %YMM0.i279 = bitcast %union.VectorReg* %1251 to %"class.std::bitset"*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1252, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %1253 to %union.vec128_t*
  %1254 = bitcast %"class.std::bitset"* %YMM0.i279 to i8*
  %1255 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %1256 = load i64, i64* %PC.i278
  %1257 = add i64 %1256, 4
  store i64 %1257, i64* %PC.i278
  %1258 = bitcast i8* %1254 to <2 x i32>*
  %1259 = load <2 x i32>, <2 x i32>* %1258, align 1
  %1260 = getelementptr inbounds i8, i8* %1254, i64 8
  %1261 = bitcast i8* %1260 to <2 x i32>*
  %1262 = load <2 x i32>, <2 x i32>* %1261, align 1
  %1263 = bitcast i8* %1255 to double*
  %1264 = load double, double* %1263, align 1
  %1265 = fptrunc double %1264 to float
  %1266 = bitcast i8* %1254 to float*
  store float %1265, float* %1266, align 1
  %1267 = extractelement <2 x i32> %1259, i32 1
  %1268 = getelementptr inbounds i8, i8* %1254, i64 4
  %1269 = bitcast i8* %1268 to i32*
  store i32 %1267, i32* %1269, align 1
  %1270 = extractelement <2 x i32> %1262, i32 0
  %1271 = bitcast i8* %1260 to i32*
  store i32 %1270, i32* %1271, align 1
  %1272 = extractelement <2 x i32> %1262, i32 1
  %1273 = getelementptr inbounds i8, i8* %1254, i64 12
  %1274 = bitcast i8* %1273 to i32*
  store i32 %1272, i32* %1274, align 1
  store %struct.Memory* %loadMem_434a01, %struct.Memory** %MEMORY
  %loadMem_434a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 1
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %1280 to i32*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 9
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RSI.i277 = bitcast %union.anon* %1283 to i64*
  %1284 = load i32, i32* %EAX.i276
  %1285 = zext i32 %1284 to i64
  %1286 = load i64, i64* %PC.i275
  %1287 = add i64 %1286, 2
  store i64 %1287, i64* %PC.i275
  %1288 = and i64 %1285, 4294967295
  store i64 %1288, i64* %RSI.i277, align 8
  store %struct.Memory* %loadMem_434a05, %struct.Memory** %MEMORY
  %loadMem1_434a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %PC.i274
  %1293 = add i64 %1292, 120121
  %1294 = load i64, i64* %PC.i274
  %1295 = add i64 %1294, 5
  %1296 = load i64, i64* %PC.i274
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC.i274
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1299 = load i64, i64* %1298, align 8
  %1300 = add i64 %1299, -8
  %1301 = inttoptr i64 %1300 to i64*
  store i64 %1295, i64* %1301
  store i64 %1300, i64* %1298, align 8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1293, i64* %1302, align 8
  store %struct.Memory* %loadMem1_434a07, %struct.Memory** %MEMORY
  %loadMem2_434a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434a07 = load i64, i64* %3
  %call2_434a07 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %loadPC_434a07, %struct.Memory* %loadMem2_434a07)
  store %struct.Memory* %call2_434a07, %struct.Memory** %MEMORY
  %loadMem_434a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 15
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RBP.i273
  %1310 = sub i64 %1309, 36
  %1311 = load i64, i64* %PC.i272
  %1312 = add i64 %1311, 7
  store i64 %1312, i64* %PC.i272
  %1313 = inttoptr i64 %1310 to i32*
  store i32 1, i32* %1313
  store %struct.Memory* %loadMem_434a0c, %struct.Memory** %MEMORY
  br label %block_.L_434a13

block_.L_434a13:                                  ; preds = %block_.L_434b7f, %entry
  %loadMem_434a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 1
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 15
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RBP.i271
  %1324 = sub i64 %1323, 36
  %1325 = load i64, i64* %PC.i269
  %1326 = add i64 %1325, 3
  store i64 %1326, i64* %PC.i269
  %1327 = inttoptr i64 %1324 to i32*
  %1328 = load i32, i32* %1327
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_434a13, %struct.Memory** %MEMORY
  %loadMem_434a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 5
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 15
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RBP.i268
  %1340 = sub i64 %1339, 8
  %1341 = load i64, i64* %PC.i266
  %1342 = add i64 %1341, 4
  store i64 %1342, i64* %PC.i266
  %1343 = inttoptr i64 %1340 to i64*
  %1344 = load i64, i64* %1343
  store i64 %1344, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_434a16, %struct.Memory** %MEMORY
  %loadMem_434a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %1350 to i32*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 5
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %1353 to i64*
  %1354 = load i32, i32* %EAX.i264
  %1355 = zext i32 %1354 to i64
  %1356 = load i64, i64* %RCX.i265
  %1357 = add i64 %1356, 136
  %1358 = load i64, i64* %PC.i263
  %1359 = add i64 %1358, 6
  store i64 %1359, i64* %PC.i263
  %1360 = inttoptr i64 %1357 to i32*
  %1361 = load i32, i32* %1360
  %1362 = sub i32 %1354, %1361
  %1363 = icmp ult i32 %1354, %1361
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1364, i8* %1365, align 1
  %1366 = and i32 %1362, 255
  %1367 = call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1370, i8* %1371, align 1
  %1372 = xor i32 %1361, %1354
  %1373 = xor i32 %1372, %1362
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1376, i8* %1377, align 1
  %1378 = icmp eq i32 %1362, 0
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i32 %1362, 31
  %1382 = trunc i32 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1382, i8* %1383, align 1
  %1384 = lshr i32 %1354, 31
  %1385 = lshr i32 %1361, 31
  %1386 = xor i32 %1385, %1384
  %1387 = xor i32 %1381, %1384
  %1388 = add i32 %1387, %1386
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1390, i8* %1391, align 1
  store %struct.Memory* %loadMem_434a1a, %struct.Memory** %MEMORY
  %loadMem_434a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %PC.i262
  %1396 = add i64 %1395, 450
  %1397 = load i64, i64* %PC.i262
  %1398 = add i64 %1397, 6
  %1399 = load i64, i64* %PC.i262
  %1400 = add i64 %1399, 6
  store i64 %1400, i64* %PC.i262
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1402 = load i8, i8* %1401, align 1
  %1403 = icmp eq i8 %1402, 0
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1405 = load i8, i8* %1404, align 1
  %1406 = icmp ne i8 %1405, 0
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1408 = load i8, i8* %1407, align 1
  %1409 = icmp ne i8 %1408, 0
  %1410 = xor i1 %1406, %1409
  %1411 = xor i1 %1410, true
  %1412 = and i1 %1403, %1411
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %BRANCH_TAKEN, align 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1415 = select i1 %1412, i64 %1396, i64 %1398
  store i64 %1415, i64* %1414, align 8
  store %struct.Memory* %loadMem_434a20, %struct.Memory** %MEMORY
  %loadBr_434a20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434a20 = icmp eq i8 %loadBr_434a20, 1
  br i1 %cmpBr_434a20, label %block_.L_434be2, label %block_434a26

block_434a26:                                     ; preds = %block_.L_434a13
  %loadMem_434a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 15
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RBP.i261
  %1423 = sub i64 %1422, 40
  %1424 = load i64, i64* %PC.i260
  %1425 = add i64 %1424, 7
  store i64 %1425, i64* %PC.i260
  %1426 = inttoptr i64 %1423 to i32*
  store i32 0, i32* %1426
  store %struct.Memory* %loadMem_434a26, %struct.Memory** %MEMORY
  br label %block_.L_434a2d

block_.L_434a2d:                                  ; preds = %block_434a37, %block_434a26
  %loadMem_434a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 15
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RBP.i259
  %1434 = sub i64 %1433, 40
  %1435 = load i64, i64* %PC.i258
  %1436 = add i64 %1435, 4
  store i64 %1436, i64* %PC.i258
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437
  %1439 = sub i32 %1438, 64
  %1440 = icmp ult i32 %1438, 64
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1441, i8* %1442, align 1
  %1443 = and i32 %1439, 255
  %1444 = call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1447, i8* %1448, align 1
  %1449 = xor i32 %1438, 64
  %1450 = xor i32 %1449, %1439
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1453, i8* %1454, align 1
  %1455 = icmp eq i32 %1439, 0
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1456, i8* %1457, align 1
  %1458 = lshr i32 %1439, 31
  %1459 = trunc i32 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1459, i8* %1460, align 1
  %1461 = lshr i32 %1438, 31
  %1462 = xor i32 %1458, %1461
  %1463 = add i32 %1462, %1461
  %1464 = icmp eq i32 %1463, 2
  %1465 = zext i1 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1465, i8* %1466, align 1
  store %struct.Memory* %loadMem_434a2d, %struct.Memory** %MEMORY
  %loadMem_434a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %PC.i257
  %1471 = add i64 %1470, 334
  %1472 = load i64, i64* %PC.i257
  %1473 = add i64 %1472, 6
  %1474 = load i64, i64* %PC.i257
  %1475 = add i64 %1474, 6
  store i64 %1475, i64* %PC.i257
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1477 = load i8, i8* %1476, align 1
  %1478 = icmp ne i8 %1477, 0
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1480 = load i8, i8* %1479, align 1
  %1481 = icmp ne i8 %1480, 0
  %1482 = xor i1 %1478, %1481
  %1483 = xor i1 %1482, true
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %BRANCH_TAKEN, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1486 = select i1 %1482, i64 %1473, i64 %1471
  store i64 %1486, i64* %1485, align 8
  store %struct.Memory* %loadMem_434a31, %struct.Memory** %MEMORY
  %loadBr_434a31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434a31 = icmp eq i8 %loadBr_434a31, 1
  br i1 %cmpBr_434a31, label %block_.L_434b7f, label %block_434a37

block_434a37:                                     ; preds = %block_.L_434a2d
  %loadMem_434a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1490, i64 0, i64 0
  %YMM0.i256 = bitcast %union.VectorReg* %1491 to %"class.std::bitset"*
  %1492 = bitcast %"class.std::bitset"* %YMM0.i256 to i8*
  %1493 = load i64, i64* %PC.i255
  %1494 = add i64 %1493, ptrtoint (%G_0x1fda1__rip__type* @G_0x1fda1__rip_ to i64)
  %1495 = load i64, i64* %PC.i255
  %1496 = add i64 %1495, 8
  store i64 %1496, i64* %PC.i255
  %1497 = inttoptr i64 %1494 to double*
  %1498 = load double, double* %1497
  %1499 = bitcast i8* %1492 to double*
  store double %1498, double* %1499, align 1
  %1500 = getelementptr inbounds i8, i8* %1492, i64 8
  %1501 = bitcast i8* %1500 to double*
  store double 0.000000e+00, double* %1501, align 1
  store %struct.Memory* %loadMem_434a37, %struct.Memory** %MEMORY
  %loadMem_434a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 1
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 15
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1510 to i64*
  %1511 = load i64, i64* %RBP.i254
  %1512 = sub i64 %1511, 8
  %1513 = load i64, i64* %PC.i252
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %PC.i252
  %1515 = inttoptr i64 %1512 to i64*
  %1516 = load i64, i64* %1515
  store i64 %1516, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_434a3f, %struct.Memory** %MEMORY
  %loadMem_434a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 1
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RAX.i251
  %1524 = add i64 %1523, 152
  %1525 = load i64, i64* %PC.i250
  %1526 = add i64 %1525, 7
  store i64 %1526, i64* %PC.i250
  %1527 = inttoptr i64 %1524 to i64*
  %1528 = load i64, i64* %1527
  store i64 %1528, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_434a43, %struct.Memory** %MEMORY
  %loadMem_434a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 5
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RBP.i249
  %1539 = sub i64 %1538, 36
  %1540 = load i64, i64* %PC.i247
  %1541 = add i64 %1540, 4
  store i64 %1541, i64* %PC.i247
  %1542 = inttoptr i64 %1539 to i32*
  %1543 = load i32, i32* %1542
  %1544 = sext i32 %1543 to i64
  store i64 %1544, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_434a4a, %struct.Memory** %MEMORY
  %loadMem_434a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RAX.i245
  %1555 = load i64, i64* %RCX.i246
  %1556 = mul i64 %1555, 8
  %1557 = add i64 %1556, %1554
  %1558 = load i64, i64* %PC.i244
  %1559 = add i64 %1558, 4
  store i64 %1559, i64* %PC.i244
  %1560 = inttoptr i64 %1557 to i64*
  %1561 = load i64, i64* %1560
  store i64 %1561, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_434a4e, %struct.Memory** %MEMORY
  %loadMem_434a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 5
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 15
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %RBP.i243
  %1572 = sub i64 %1571, 16
  %1573 = load i64, i64* %PC.i241
  %1574 = add i64 %1573, 4
  store i64 %1574, i64* %PC.i241
  %1575 = inttoptr i64 %1572 to i64*
  %1576 = load i64, i64* %1575
  store i64 %1576, i64* %RCX.i242, align 8
  store %struct.Memory* %loadMem_434a52, %struct.Memory** %MEMORY
  %loadMem_434a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 7
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RBP.i240
  %1587 = sub i64 %1586, 40
  %1588 = load i64, i64* %PC.i238
  %1589 = add i64 %1588, 4
  store i64 %1589, i64* %PC.i238
  %1590 = inttoptr i64 %1587 to i32*
  %1591 = load i32, i32* %1590
  %1592 = sext i32 %1591 to i64
  store i64 %1592, i64* %RDX.i239, align 8
  store %struct.Memory* %loadMem_434a56, %struct.Memory** %MEMORY
  %loadMem_434a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 5
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %1598 to i64*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 7
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %1601 to i64*
  %1602 = load i64, i64* %RCX.i236
  %1603 = load i64, i64* %RDX.i237
  %1604 = mul i64 %1603, 4
  %1605 = add i64 %1604, %1602
  %1606 = load i64, i64* %PC.i235
  %1607 = add i64 %1606, 4
  store i64 %1607, i64* %PC.i235
  %1608 = inttoptr i64 %1605 to i32*
  %1609 = load i32, i32* %1608
  %1610 = sext i32 %1609 to i64
  store i64 %1610, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_434a5a, %struct.Memory** %MEMORY
  %loadMem_434a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 33
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 1
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1621 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1620, i64 0, i64 1
  %YMM1.i234 = bitcast %union.VectorReg* %1621 to %"class.std::bitset"*
  %1622 = bitcast %"class.std::bitset"* %YMM1.i234 to i8*
  %1623 = load i64, i64* %RAX.i232
  %1624 = load i64, i64* %RCX.i233
  %1625 = mul i64 %1624, 4
  %1626 = add i64 %1625, %1623
  %1627 = load i64, i64* %PC.i231
  %1628 = add i64 %1627, 5
  store i64 %1628, i64* %PC.i231
  %1629 = inttoptr i64 %1626 to float*
  %1630 = load float, float* %1629
  %1631 = bitcast i8* %1622 to float*
  store float %1630, float* %1631, align 1
  %1632 = getelementptr inbounds i8, i8* %1622, i64 4
  %1633 = bitcast i8* %1632 to float*
  store float 0.000000e+00, float* %1633, align 1
  %1634 = getelementptr inbounds i8, i8* %1622, i64 8
  %1635 = bitcast i8* %1634 to float*
  store float 0.000000e+00, float* %1635, align 1
  %1636 = getelementptr inbounds i8, i8* %1622, i64 12
  %1637 = bitcast i8* %1636 to float*
  store float 0.000000e+00, float* %1637, align 1
  store %struct.Memory* %loadMem_434a5e, %struct.Memory** %MEMORY
  %loadMem_434a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 15
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RBP.i230
  %1648 = sub i64 %1647, 24
  %1649 = load i64, i64* %PC.i228
  %1650 = add i64 %1649, 4
  store i64 %1650, i64* %PC.i228
  %1651 = inttoptr i64 %1648 to i64*
  %1652 = load i64, i64* %1651
  store i64 %1652, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_434a63, %struct.Memory** %MEMORY
  %loadMem_434a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 5
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 15
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1661 to i64*
  %1662 = load i64, i64* %RBP.i227
  %1663 = sub i64 %1662, 16
  %1664 = load i64, i64* %PC.i225
  %1665 = add i64 %1664, 4
  store i64 %1665, i64* %PC.i225
  %1666 = inttoptr i64 %1663 to i64*
  %1667 = load i64, i64* %1666
  store i64 %1667, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_434a67, %struct.Memory** %MEMORY
  %loadMem_434a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 7
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 15
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %1676 to i64*
  %1677 = load i64, i64* %RBP.i224
  %1678 = sub i64 %1677, 40
  %1679 = load i64, i64* %PC.i222
  %1680 = add i64 %1679, 4
  store i64 %1680, i64* %PC.i222
  %1681 = inttoptr i64 %1678 to i32*
  %1682 = load i32, i32* %1681
  %1683 = sext i32 %1682 to i64
  store i64 %1683, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_434a6b, %struct.Memory** %MEMORY
  %loadMem_434a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 5
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 7
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %1692 to i64*
  %1693 = load i64, i64* %RCX.i220
  %1694 = load i64, i64* %RDX.i221
  %1695 = mul i64 %1694, 4
  %1696 = add i64 %1695, %1693
  %1697 = load i64, i64* %PC.i219
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %PC.i219
  %1699 = inttoptr i64 %1696 to i32*
  %1700 = load i32, i32* %1699
  %1701 = sext i32 %1700 to i64
  store i64 %1701, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_434a6f, %struct.Memory** %MEMORY
  %loadMem_434a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 1
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 5
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %RAX.i217
  %1712 = load i64, i64* %RCX.i218
  %1713 = mul i64 %1712, 8
  %1714 = add i64 %1713, %1711
  %1715 = load i64, i64* %PC.i216
  %1716 = add i64 %1715, 4
  store i64 %1716, i64* %PC.i216
  %1717 = inttoptr i64 %1714 to i64*
  %1718 = load i64, i64* %1717
  store i64 %1718, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_434a73, %struct.Memory** %MEMORY
  %loadMem_434a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 5
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 15
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RBP.i215
  %1729 = sub i64 %1728, 40
  %1730 = load i64, i64* %PC.i213
  %1731 = add i64 %1730, 4
  store i64 %1731, i64* %PC.i213
  %1732 = inttoptr i64 %1729 to i32*
  %1733 = load i32, i32* %1732
  %1734 = sext i32 %1733 to i64
  store i64 %1734, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_434a77, %struct.Memory** %MEMORY
  %loadMem_434a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 1
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 5
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1744, i64 0, i64 1
  %YMM1.i212 = bitcast %union.VectorReg* %1745 to %"class.std::bitset"*
  %1746 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1747 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1748 = load i64, i64* %RAX.i210
  %1749 = load i64, i64* %RCX.i211
  %1750 = mul i64 %1749, 4
  %1751 = add i64 %1750, %1748
  %1752 = load i64, i64* %PC.i209
  %1753 = add i64 %1752, 5
  store i64 %1753, i64* %PC.i209
  %1754 = bitcast i8* %1747 to <2 x float>*
  %1755 = load <2 x float>, <2 x float>* %1754, align 1
  %1756 = getelementptr inbounds i8, i8* %1747, i64 8
  %1757 = bitcast i8* %1756 to <2 x i32>*
  %1758 = load <2 x i32>, <2 x i32>* %1757, align 1
  %1759 = inttoptr i64 %1751 to float*
  %1760 = load float, float* %1759
  %1761 = extractelement <2 x float> %1755, i32 0
  %1762 = fmul float %1761, %1760
  %1763 = bitcast i8* %1746 to float*
  store float %1762, float* %1763, align 1
  %1764 = bitcast <2 x float> %1755 to <2 x i32>
  %1765 = extractelement <2 x i32> %1764, i32 1
  %1766 = getelementptr inbounds i8, i8* %1746, i64 4
  %1767 = bitcast i8* %1766 to i32*
  store i32 %1765, i32* %1767, align 1
  %1768 = extractelement <2 x i32> %1758, i32 0
  %1769 = getelementptr inbounds i8, i8* %1746, i64 8
  %1770 = bitcast i8* %1769 to i32*
  store i32 %1768, i32* %1770, align 1
  %1771 = extractelement <2 x i32> %1758, i32 1
  %1772 = getelementptr inbounds i8, i8* %1746, i64 12
  %1773 = bitcast i8* %1772 to i32*
  store i32 %1771, i32* %1773, align 1
  store %struct.Memory* %loadMem_434a7b, %struct.Memory** %MEMORY
  %loadMem_434a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1777, i64 0, i64 1
  %YMM1.i207 = bitcast %union.VectorReg* %1778 to %"class.std::bitset"*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1780 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1779, i64 0, i64 1
  %XMM1.i208 = bitcast %union.VectorReg* %1780 to %union.vec128_t*
  %1781 = bitcast %"class.std::bitset"* %YMM1.i207 to i8*
  %1782 = bitcast %union.vec128_t* %XMM1.i208 to i8*
  %1783 = load i64, i64* %PC.i206
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC.i206
  %1785 = bitcast i8* %1782 to <2 x float>*
  %1786 = load <2 x float>, <2 x float>* %1785, align 1
  %1787 = extractelement <2 x float> %1786, i32 0
  %1788 = fpext float %1787 to double
  %1789 = bitcast i8* %1781 to double*
  store double %1788, double* %1789, align 1
  store %struct.Memory* %loadMem_434a80, %struct.Memory** %MEMORY
  %loadMem_434a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 33
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 15
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1796, i64 0, i64 2
  %YMM2.i205 = bitcast %union.VectorReg* %1797 to %"class.std::bitset"*
  %1798 = bitcast %"class.std::bitset"* %YMM2.i205 to i8*
  %1799 = load i64, i64* %RBP.i204
  %1800 = sub i64 %1799, 28
  %1801 = load i64, i64* %PC.i203
  %1802 = add i64 %1801, 5
  store i64 %1802, i64* %PC.i203
  %1803 = inttoptr i64 %1800 to float*
  %1804 = load float, float* %1803
  %1805 = fpext float %1804 to double
  %1806 = bitcast i8* %1798 to double*
  store double %1805, double* %1806, align 1
  store %struct.Memory* %loadMem_434a84, %struct.Memory** %MEMORY
  %loadMem_434a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1810, i64 0, i64 0
  %YMM0.i201 = bitcast %union.VectorReg* %1811 to %"class.std::bitset"*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1812, i64 0, i64 2
  %XMM2.i202 = bitcast %union.VectorReg* %1813 to %union.vec128_t*
  %1814 = bitcast %"class.std::bitset"* %YMM0.i201 to i8*
  %1815 = bitcast %"class.std::bitset"* %YMM0.i201 to i8*
  %1816 = bitcast %union.vec128_t* %XMM2.i202 to i8*
  %1817 = load i64, i64* %PC.i200
  %1818 = add i64 %1817, 4
  store i64 %1818, i64* %PC.i200
  %1819 = bitcast i8* %1815 to double*
  %1820 = load double, double* %1819, align 1
  %1821 = getelementptr inbounds i8, i8* %1815, i64 8
  %1822 = bitcast i8* %1821 to i64*
  %1823 = load i64, i64* %1822, align 1
  %1824 = bitcast i8* %1816 to double*
  %1825 = load double, double* %1824, align 1
  %1826 = fsub double %1820, %1825
  %1827 = bitcast i8* %1814 to double*
  store double %1826, double* %1827, align 1
  %1828 = getelementptr inbounds i8, i8* %1814, i64 8
  %1829 = bitcast i8* %1828 to i64*
  store i64 %1823, i64* %1829, align 1
  store %struct.Memory* %loadMem_434a89, %struct.Memory** %MEMORY
  %loadMem_434a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 15
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1837 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1836, i64 0, i64 2
  %YMM2.i199 = bitcast %union.VectorReg* %1837 to %"class.std::bitset"*
  %1838 = bitcast %"class.std::bitset"* %YMM2.i199 to i8*
  %1839 = load i64, i64* %RBP.i198
  %1840 = sub i64 %1839, 32
  %1841 = load i64, i64* %PC.i197
  %1842 = add i64 %1841, 5
  store i64 %1842, i64* %PC.i197
  %1843 = inttoptr i64 %1840 to float*
  %1844 = load float, float* %1843
  %1845 = fpext float %1844 to double
  %1846 = bitcast i8* %1838 to double*
  store double %1845, double* %1846, align 1
  store %struct.Memory* %loadMem_434a8d, %struct.Memory** %MEMORY
  %loadMem_434a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1850, i64 0, i64 0
  %YMM0.i195 = bitcast %union.VectorReg* %1851 to %"class.std::bitset"*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1853 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1852, i64 0, i64 2
  %XMM2.i196 = bitcast %union.VectorReg* %1853 to %union.vec128_t*
  %1854 = bitcast %"class.std::bitset"* %YMM0.i195 to i8*
  %1855 = bitcast %"class.std::bitset"* %YMM0.i195 to i8*
  %1856 = bitcast %union.vec128_t* %XMM2.i196 to i8*
  %1857 = load i64, i64* %PC.i194
  %1858 = add i64 %1857, 4
  store i64 %1858, i64* %PC.i194
  %1859 = bitcast i8* %1855 to double*
  %1860 = load double, double* %1859, align 1
  %1861 = getelementptr inbounds i8, i8* %1855, i64 8
  %1862 = bitcast i8* %1861 to i64*
  %1863 = load i64, i64* %1862, align 1
  %1864 = bitcast i8* %1856 to double*
  %1865 = load double, double* %1864, align 1
  %1866 = fsub double %1860, %1865
  %1867 = bitcast i8* %1854 to double*
  store double %1866, double* %1867, align 1
  %1868 = getelementptr inbounds i8, i8* %1854, i64 8
  %1869 = bitcast i8* %1868 to i64*
  store i64 %1863, i64* %1869, align 1
  store %struct.Memory* %loadMem_434a92, %struct.Memory** %MEMORY
  %loadMem_434a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1873, i64 0, i64 1
  %YMM1.i192 = bitcast %union.VectorReg* %1874 to %"class.std::bitset"*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1876 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1875, i64 0, i64 0
  %XMM0.i193 = bitcast %union.VectorReg* %1876 to %union.vec128_t*
  %1877 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %1878 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %1879 = bitcast %union.vec128_t* %XMM0.i193 to i8*
  %1880 = load i64, i64* %PC.i191
  %1881 = add i64 %1880, 4
  store i64 %1881, i64* %PC.i191
  %1882 = bitcast i8* %1878 to double*
  %1883 = load double, double* %1882, align 1
  %1884 = getelementptr inbounds i8, i8* %1878, i64 8
  %1885 = bitcast i8* %1884 to i64*
  %1886 = load i64, i64* %1885, align 1
  %1887 = bitcast i8* %1879 to double*
  %1888 = load double, double* %1887, align 1
  %1889 = fmul double %1883, %1888
  %1890 = bitcast i8* %1877 to double*
  store double %1889, double* %1890, align 1
  %1891 = getelementptr inbounds i8, i8* %1877, i64 8
  %1892 = bitcast i8* %1891 to i64*
  store i64 %1886, i64* %1892, align 1
  store %struct.Memory* %loadMem_434a96, %struct.Memory** %MEMORY
  %loadMem_434a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1896, i64 0, i64 0
  %YMM0.i189 = bitcast %union.VectorReg* %1897 to %"class.std::bitset"*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1899 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1898, i64 0, i64 1
  %XMM1.i190 = bitcast %union.VectorReg* %1899 to %union.vec128_t*
  %1900 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %1901 = bitcast %union.vec128_t* %XMM1.i190 to i8*
  %1902 = load i64, i64* %PC.i188
  %1903 = add i64 %1902, 4
  store i64 %1903, i64* %PC.i188
  %1904 = bitcast i8* %1900 to <2 x i32>*
  %1905 = load <2 x i32>, <2 x i32>* %1904, align 1
  %1906 = getelementptr inbounds i8, i8* %1900, i64 8
  %1907 = bitcast i8* %1906 to <2 x i32>*
  %1908 = load <2 x i32>, <2 x i32>* %1907, align 1
  %1909 = bitcast i8* %1901 to double*
  %1910 = load double, double* %1909, align 1
  %1911 = fptrunc double %1910 to float
  %1912 = bitcast i8* %1900 to float*
  store float %1911, float* %1912, align 1
  %1913 = extractelement <2 x i32> %1905, i32 1
  %1914 = getelementptr inbounds i8, i8* %1900, i64 4
  %1915 = bitcast i8* %1914 to i32*
  store i32 %1913, i32* %1915, align 1
  %1916 = extractelement <2 x i32> %1908, i32 0
  %1917 = bitcast i8* %1906 to i32*
  store i32 %1916, i32* %1917, align 1
  %1918 = extractelement <2 x i32> %1908, i32 1
  %1919 = getelementptr inbounds i8, i8* %1900, i64 12
  %1920 = bitcast i8* %1919 to i32*
  store i32 %1918, i32* %1920, align 1
  store %struct.Memory* %loadMem_434a9a, %struct.Memory** %MEMORY
  %loadMem_434a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1928 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1927, i64 0, i64 0
  %XMM0.i187 = bitcast %union.VectorReg* %1928 to %union.vec128_t*
  %1929 = load i64, i64* %RBP.i186
  %1930 = sub i64 %1929, 44
  %1931 = bitcast %union.vec128_t* %XMM0.i187 to i8*
  %1932 = load i64, i64* %PC.i185
  %1933 = add i64 %1932, 5
  store i64 %1933, i64* %PC.i185
  %1934 = bitcast i8* %1931 to <2 x float>*
  %1935 = load <2 x float>, <2 x float>* %1934, align 1
  %1936 = extractelement <2 x float> %1935, i32 0
  %1937 = inttoptr i64 %1930 to float*
  store float %1936, float* %1937
  store %struct.Memory* %loadMem_434a9e, %struct.Memory** %MEMORY
  %loadMem_434aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 15
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1944, i64 0, i64 0
  %YMM0.i184 = bitcast %union.VectorReg* %1945 to %"class.std::bitset"*
  %1946 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %1947 = load i64, i64* %RBP.i183
  %1948 = sub i64 %1947, 44
  %1949 = load i64, i64* %PC.i182
  %1950 = add i64 %1949, 5
  store i64 %1950, i64* %PC.i182
  %1951 = inttoptr i64 %1948 to float*
  %1952 = load float, float* %1951
  %1953 = bitcast i8* %1946 to float*
  store float %1952, float* %1953, align 1
  %1954 = getelementptr inbounds i8, i8* %1946, i64 4
  %1955 = bitcast i8* %1954 to float*
  store float 0.000000e+00, float* %1955, align 1
  %1956 = getelementptr inbounds i8, i8* %1946, i64 8
  %1957 = bitcast i8* %1956 to float*
  store float 0.000000e+00, float* %1957, align 1
  %1958 = getelementptr inbounds i8, i8* %1946, i64 12
  %1959 = bitcast i8* %1958 to float*
  store float 0.000000e+00, float* %1959, align 1
  store %struct.Memory* %loadMem_434aa3, %struct.Memory** %MEMORY
  %loadMem_434aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 1
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 15
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1968 to i64*
  %1969 = load i64, i64* %RBP.i181
  %1970 = sub i64 %1969, 56
  %1971 = load i64, i64* %PC.i179
  %1972 = add i64 %1971, 4
  store i64 %1972, i64* %PC.i179
  %1973 = inttoptr i64 %1970 to i64*
  %1974 = load i64, i64* %1973
  store i64 %1974, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_434aa8, %struct.Memory** %MEMORY
  %loadMem_434aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 5
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 15
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RBP.i178
  %1985 = sub i64 %1984, 40
  %1986 = load i64, i64* %PC.i176
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %PC.i176
  %1988 = inttoptr i64 %1985 to i32*
  %1989 = load i32, i32* %1988
  %1990 = sext i32 %1989 to i64
  store i64 %1990, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_434aac, %struct.Memory** %MEMORY
  %loadMem_434ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 5
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2001 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2000, i64 0, i64 1
  %YMM1.i175 = bitcast %union.VectorReg* %2001 to %"class.std::bitset"*
  %2002 = bitcast %"class.std::bitset"* %YMM1.i175 to i8*
  %2003 = load i64, i64* %RAX.i173
  %2004 = load i64, i64* %RCX.i174
  %2005 = mul i64 %2004, 4
  %2006 = add i64 %2005, %2003
  %2007 = load i64, i64* %PC.i172
  %2008 = add i64 %2007, 5
  store i64 %2008, i64* %PC.i172
  %2009 = inttoptr i64 %2006 to float*
  %2010 = load float, float* %2009
  %2011 = bitcast i8* %2002 to float*
  store float %2010, float* %2011, align 1
  %2012 = getelementptr inbounds i8, i8* %2002, i64 4
  %2013 = bitcast i8* %2012 to float*
  store float 0.000000e+00, float* %2013, align 1
  %2014 = getelementptr inbounds i8, i8* %2002, i64 8
  %2015 = bitcast i8* %2014 to float*
  store float 0.000000e+00, float* %2015, align 1
  %2016 = getelementptr inbounds i8, i8* %2002, i64 12
  %2017 = bitcast i8* %2016 to float*
  store float 0.000000e+00, float* %2017, align 1
  store %struct.Memory* %loadMem_434ab0, %struct.Memory** %MEMORY
  %loadMem1_434ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %PC.i171
  %2022 = add i64 %2021, -52485
  %2023 = load i64, i64* %PC.i171
  %2024 = add i64 %2023, 5
  %2025 = load i64, i64* %PC.i171
  %2026 = add i64 %2025, 5
  store i64 %2026, i64* %PC.i171
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2028 = load i64, i64* %2027, align 8
  %2029 = add i64 %2028, -8
  %2030 = inttoptr i64 %2029 to i64*
  store i64 %2024, i64* %2030
  store i64 %2029, i64* %2027, align 8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2022, i64* %2031, align 8
  store %struct.Memory* %loadMem1_434ab5, %struct.Memory** %MEMORY
  %loadMem2_434ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434ab5 = load i64, i64* %3
  %call2_434ab5 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64 %loadPC_434ab5, %struct.Memory* %loadMem2_434ab5)
  store %struct.Memory* %call2_434ab5, %struct.Memory** %MEMORY
  %loadMem_434aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %2036 to %"class.std::bitset"*
  %2037 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %2038 = load i64, i64* %PC.i169
  %2039 = add i64 %2038, ptrtoint (%G_0x1fd1e__rip__type* @G_0x1fd1e__rip_ to i64)
  %2040 = load i64, i64* %PC.i169
  %2041 = add i64 %2040, 8
  store i64 %2041, i64* %PC.i169
  %2042 = inttoptr i64 %2039 to double*
  %2043 = load double, double* %2042
  %2044 = bitcast i8* %2037 to double*
  store double %2043, double* %2044, align 1
  %2045 = getelementptr inbounds i8, i8* %2037, i64 8
  %2046 = bitcast i8* %2045 to double*
  store double 0.000000e+00, double* %2046, align 1
  store %struct.Memory* %loadMem_434aba, %struct.Memory** %MEMORY
  %loadMem_434ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 5
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 15
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %RBP.i168
  %2057 = sub i64 %2056, 8
  %2058 = load i64, i64* %PC.i166
  %2059 = add i64 %2058, 4
  store i64 %2059, i64* %PC.i166
  %2060 = inttoptr i64 %2057 to i64*
  %2061 = load i64, i64* %2060
  store i64 %2061, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_434ac2, %struct.Memory** %MEMORY
  %loadMem_434ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 5
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RCX.i165
  %2069 = add i64 %2068, 424
  %2070 = load i64, i64* %PC.i164
  %2071 = add i64 %2070, 7
  store i64 %2071, i64* %PC.i164
  %2072 = inttoptr i64 %2069 to i64*
  %2073 = load i64, i64* %2072
  store i64 %2073, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_434ac6, %struct.Memory** %MEMORY
  %loadMem_434acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 7
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i163
  %2084 = sub i64 %2083, 40
  %2085 = load i64, i64* %PC.i161
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %PC.i161
  %2087 = inttoptr i64 %2084 to i32*
  %2088 = load i32, i32* %2087
  %2089 = sext i32 %2088 to i64
  store i64 %2089, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_434acd, %struct.Memory** %MEMORY
  %loadMem_434ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 5
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 7
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RCX.i159
  %2100 = load i64, i64* %RDX.i160
  %2101 = mul i64 %2100, 8
  %2102 = add i64 %2101, %2099
  %2103 = load i64, i64* %PC.i158
  %2104 = add i64 %2103, 4
  store i64 %2104, i64* %PC.i158
  %2105 = inttoptr i64 %2102 to i64*
  %2106 = load i64, i64* %2105
  store i64 %2106, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_434ad1, %struct.Memory** %MEMORY
  %loadMem_434ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 7
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RBP.i157
  %2117 = sub i64 %2116, 36
  %2118 = load i64, i64* %PC.i155
  %2119 = add i64 %2118, 4
  store i64 %2119, i64* %PC.i155
  %2120 = inttoptr i64 %2117 to i32*
  %2121 = load i32, i32* %2120
  %2122 = sext i32 %2121 to i64
  store i64 %2122, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_434ad5, %struct.Memory** %MEMORY
  %loadMem_434ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 1
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %2128 to i32*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 5
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 7
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RCX.i153
  %2136 = load i64, i64* %RDX.i154
  %2137 = mul i64 %2136, 4
  %2138 = add i64 %2137, %2135
  %2139 = load i32, i32* %EAX.i152
  %2140 = zext i32 %2139 to i64
  %2141 = load i64, i64* %PC.i151
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %PC.i151
  %2143 = inttoptr i64 %2138 to i32*
  store i32 %2139, i32* %2143
  store %struct.Memory* %loadMem_434ad9, %struct.Memory** %MEMORY
  %loadMem_434adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 5
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 15
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RBP.i150
  %2154 = sub i64 %2153, 8
  %2155 = load i64, i64* %PC.i148
  %2156 = add i64 %2155, 4
  store i64 %2156, i64* %PC.i148
  %2157 = inttoptr i64 %2154 to i64*
  %2158 = load i64, i64* %2157
  store i64 %2158, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_434adc, %struct.Memory** %MEMORY
  %loadMem_434ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 5
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %RCX.i147
  %2166 = add i64 %2165, 160
  %2167 = load i64, i64* %PC.i146
  %2168 = add i64 %2167, 7
  store i64 %2168, i64* %PC.i146
  %2169 = inttoptr i64 %2166 to i64*
  %2170 = load i64, i64* %2169
  store i64 %2170, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_434ae0, %struct.Memory** %MEMORY
  %loadMem_434ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 7
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 15
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RBP.i145
  %2181 = sub i64 %2180, 36
  %2182 = load i64, i64* %PC.i143
  %2183 = add i64 %2182, 4
  store i64 %2183, i64* %PC.i143
  %2184 = inttoptr i64 %2181 to i32*
  %2185 = load i32, i32* %2184
  %2186 = sext i32 %2185 to i64
  store i64 %2186, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_434ae7, %struct.Memory** %MEMORY
  %loadMem_434aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 5
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %2192 to i64*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 7
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %2195 to i64*
  %2196 = load i64, i64* %RCX.i141
  %2197 = load i64, i64* %RDX.i142
  %2198 = mul i64 %2197, 8
  %2199 = add i64 %2198, %2196
  %2200 = load i64, i64* %PC.i140
  %2201 = add i64 %2200, 4
  store i64 %2201, i64* %PC.i140
  %2202 = inttoptr i64 %2199 to i64*
  %2203 = load i64, i64* %2202
  store i64 %2203, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_434aeb, %struct.Memory** %MEMORY
  %loadMem_434aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 7
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RBP.i139
  %2214 = sub i64 %2213, 16
  %2215 = load i64, i64* %PC.i137
  %2216 = add i64 %2215, 4
  store i64 %2216, i64* %PC.i137
  %2217 = inttoptr i64 %2214 to i64*
  %2218 = load i64, i64* %2217
  store i64 %2218, i64* %RDX.i138, align 8
  store %struct.Memory* %loadMem_434aef, %struct.Memory** %MEMORY
  %loadMem_434af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 9
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 15
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %RBP.i136
  %2229 = sub i64 %2228, 40
  %2230 = load i64, i64* %PC.i134
  %2231 = add i64 %2230, 4
  store i64 %2231, i64* %PC.i134
  %2232 = inttoptr i64 %2229 to i32*
  %2233 = load i32, i32* %2232
  %2234 = sext i32 %2233 to i64
  store i64 %2234, i64* %RSI.i135, align 8
  store %struct.Memory* %loadMem_434af3, %struct.Memory** %MEMORY
  %loadMem_434af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 7
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 9
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RSI.i133 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RDX.i132
  %2245 = load i64, i64* %RSI.i133
  %2246 = mul i64 %2245, 4
  %2247 = add i64 %2246, %2244
  %2248 = load i64, i64* %PC.i131
  %2249 = add i64 %2248, 4
  store i64 %2249, i64* %PC.i131
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250
  %2252 = sext i32 %2251 to i64
  store i64 %2252, i64* %RDX.i132, align 8
  store %struct.Memory* %loadMem_434af7, %struct.Memory** %MEMORY
  %loadMem_434afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 5
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 7
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RDX.i129 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2262, i64 0, i64 1
  %YMM1.i130 = bitcast %union.VectorReg* %2263 to %"class.std::bitset"*
  %2264 = bitcast %"class.std::bitset"* %YMM1.i130 to i8*
  %2265 = load i64, i64* %RCX.i128
  %2266 = load i64, i64* %RDX.i129
  %2267 = mul i64 %2266, 4
  %2268 = add i64 %2267, %2265
  %2269 = load i64, i64* %PC.i127
  %2270 = add i64 %2269, 5
  store i64 %2270, i64* %PC.i127
  %2271 = inttoptr i64 %2268 to float*
  %2272 = load float, float* %2271
  %2273 = bitcast i8* %2264 to float*
  store float %2272, float* %2273, align 1
  %2274 = getelementptr inbounds i8, i8* %2264, i64 4
  %2275 = bitcast i8* %2274 to float*
  store float 0.000000e+00, float* %2275, align 1
  %2276 = getelementptr inbounds i8, i8* %2264, i64 8
  %2277 = bitcast i8* %2276 to float*
  store float 0.000000e+00, float* %2277, align 1
  %2278 = getelementptr inbounds i8, i8* %2264, i64 12
  %2279 = bitcast i8* %2278 to float*
  store float 0.000000e+00, float* %2279, align 1
  store %struct.Memory* %loadMem_434afb, %struct.Memory** %MEMORY
  %loadMem_434b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 5
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 15
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RBP.i126
  %2290 = sub i64 %2289, 24
  %2291 = load i64, i64* %PC.i124
  %2292 = add i64 %2291, 4
  store i64 %2292, i64* %PC.i124
  %2293 = inttoptr i64 %2290 to i64*
  %2294 = load i64, i64* %2293
  store i64 %2294, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_434b00, %struct.Memory** %MEMORY
  %loadMem_434b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 7
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %RBP.i123
  %2305 = sub i64 %2304, 16
  %2306 = load i64, i64* %PC.i121
  %2307 = add i64 %2306, 4
  store i64 %2307, i64* %PC.i121
  %2308 = inttoptr i64 %2305 to i64*
  %2309 = load i64, i64* %2308
  store i64 %2309, i64* %RDX.i122, align 8
  store %struct.Memory* %loadMem_434b04, %struct.Memory** %MEMORY
  %loadMem_434b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 9
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 15
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %RBP.i120
  %2320 = sub i64 %2319, 40
  %2321 = load i64, i64* %PC.i118
  %2322 = add i64 %2321, 4
  store i64 %2322, i64* %PC.i118
  %2323 = inttoptr i64 %2320 to i32*
  %2324 = load i32, i32* %2323
  %2325 = sext i32 %2324 to i64
  store i64 %2325, i64* %RSI.i119, align 8
  store %struct.Memory* %loadMem_434b08, %struct.Memory** %MEMORY
  %loadMem_434b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 7
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 9
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %RDX.i117
  %2336 = load i64, i64* %RSI.i
  %2337 = mul i64 %2336, 4
  %2338 = add i64 %2337, %2335
  %2339 = load i64, i64* %PC.i116
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %PC.i116
  %2341 = inttoptr i64 %2338 to i32*
  %2342 = load i32, i32* %2341
  %2343 = sext i32 %2342 to i64
  store i64 %2343, i64* %RDX.i117, align 8
  store %struct.Memory* %loadMem_434b0c, %struct.Memory** %MEMORY
  %loadMem_434b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 5
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 7
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RCX.i114
  %2354 = load i64, i64* %RDX.i115
  %2355 = mul i64 %2354, 8
  %2356 = add i64 %2355, %2353
  %2357 = load i64, i64* %PC.i113
  %2358 = add i64 %2357, 4
  store i64 %2358, i64* %PC.i113
  %2359 = inttoptr i64 %2356 to i64*
  %2360 = load i64, i64* %2359
  store i64 %2360, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_434b10, %struct.Memory** %MEMORY
  %loadMem_434b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 7
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 15
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %RBP.i112
  %2371 = sub i64 %2370, 40
  %2372 = load i64, i64* %PC.i110
  %2373 = add i64 %2372, 4
  store i64 %2373, i64* %PC.i110
  %2374 = inttoptr i64 %2371 to i32*
  %2375 = load i32, i32* %2374
  %2376 = sext i32 %2375 to i64
  store i64 %2376, i64* %RDX.i111, align 8
  store %struct.Memory* %loadMem_434b14, %struct.Memory** %MEMORY
  %loadMem_434b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 5
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 7
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2386, i64 0, i64 1
  %YMM1.i109 = bitcast %union.VectorReg* %2387 to %"class.std::bitset"*
  %2388 = bitcast %"class.std::bitset"* %YMM1.i109 to i8*
  %2389 = bitcast %"class.std::bitset"* %YMM1.i109 to i8*
  %2390 = load i64, i64* %RCX.i107
  %2391 = load i64, i64* %RDX.i108
  %2392 = mul i64 %2391, 4
  %2393 = add i64 %2392, %2390
  %2394 = load i64, i64* %PC.i106
  %2395 = add i64 %2394, 5
  store i64 %2395, i64* %PC.i106
  %2396 = bitcast i8* %2389 to <2 x float>*
  %2397 = load <2 x float>, <2 x float>* %2396, align 1
  %2398 = getelementptr inbounds i8, i8* %2389, i64 8
  %2399 = bitcast i8* %2398 to <2 x i32>*
  %2400 = load <2 x i32>, <2 x i32>* %2399, align 1
  %2401 = inttoptr i64 %2393 to float*
  %2402 = load float, float* %2401
  %2403 = extractelement <2 x float> %2397, i32 0
  %2404 = fmul float %2403, %2402
  %2405 = bitcast i8* %2388 to float*
  store float %2404, float* %2405, align 1
  %2406 = bitcast <2 x float> %2397 to <2 x i32>
  %2407 = extractelement <2 x i32> %2406, i32 1
  %2408 = getelementptr inbounds i8, i8* %2388, i64 4
  %2409 = bitcast i8* %2408 to i32*
  store i32 %2407, i32* %2409, align 1
  %2410 = extractelement <2 x i32> %2400, i32 0
  %2411 = getelementptr inbounds i8, i8* %2388, i64 8
  %2412 = bitcast i8* %2411 to i32*
  store i32 %2410, i32* %2412, align 1
  %2413 = extractelement <2 x i32> %2400, i32 1
  %2414 = getelementptr inbounds i8, i8* %2388, i64 12
  %2415 = bitcast i8* %2414 to i32*
  store i32 %2413, i32* %2415, align 1
  store %struct.Memory* %loadMem_434b18, %struct.Memory** %MEMORY
  %loadMem_434b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2420 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2419, i64 0, i64 1
  %YMM1.i104 = bitcast %union.VectorReg* %2420 to %"class.std::bitset"*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2421, i64 0, i64 1
  %XMM1.i105 = bitcast %union.VectorReg* %2422 to %union.vec128_t*
  %2423 = bitcast %"class.std::bitset"* %YMM1.i104 to i8*
  %2424 = bitcast %union.vec128_t* %XMM1.i105 to i8*
  %2425 = load i64, i64* %PC.i103
  %2426 = add i64 %2425, 4
  store i64 %2426, i64* %PC.i103
  %2427 = bitcast i8* %2424 to <2 x float>*
  %2428 = load <2 x float>, <2 x float>* %2427, align 1
  %2429 = extractelement <2 x float> %2428, i32 0
  %2430 = fpext float %2429 to double
  %2431 = bitcast i8* %2423 to double*
  store double %2430, double* %2431, align 1
  store %struct.Memory* %loadMem_434b1d, %struct.Memory** %MEMORY
  %loadMem_434b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 2
  %YMM2.i102 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = bitcast %"class.std::bitset"* %YMM2.i102 to i8*
  %2441 = load i64, i64* %RBP.i101
  %2442 = sub i64 %2441, 28
  %2443 = load i64, i64* %PC.i100
  %2444 = add i64 %2443, 5
  store i64 %2444, i64* %PC.i100
  %2445 = inttoptr i64 %2442 to float*
  %2446 = load float, float* %2445
  %2447 = fpext float %2446 to double
  %2448 = bitcast i8* %2440 to double*
  store double %2447, double* %2448, align 1
  store %struct.Memory* %loadMem_434b21, %struct.Memory** %MEMORY
  %loadMem_434b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2452, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %2453 to %"class.std::bitset"*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2454, i64 0, i64 2
  %XMM2.i99 = bitcast %union.VectorReg* %2455 to %union.vec128_t*
  %2456 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %2457 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %2458 = bitcast %union.vec128_t* %XMM2.i99 to i8*
  %2459 = load i64, i64* %PC.i97
  %2460 = add i64 %2459, 4
  store i64 %2460, i64* %PC.i97
  %2461 = bitcast i8* %2457 to double*
  %2462 = load double, double* %2461, align 1
  %2463 = getelementptr inbounds i8, i8* %2457, i64 8
  %2464 = bitcast i8* %2463 to i64*
  %2465 = load i64, i64* %2464, align 1
  %2466 = bitcast i8* %2458 to double*
  %2467 = load double, double* %2466, align 1
  %2468 = fsub double %2462, %2467
  %2469 = bitcast i8* %2456 to double*
  store double %2468, double* %2469, align 1
  %2470 = getelementptr inbounds i8, i8* %2456, i64 8
  %2471 = bitcast i8* %2470 to i64*
  store i64 %2465, i64* %2471, align 1
  store %struct.Memory* %loadMem_434b26, %struct.Memory** %MEMORY
  %loadMem_434b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2479 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2478, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2479 to %"class.std::bitset"*
  %2480 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2481 = load i64, i64* %RBP.i96
  %2482 = sub i64 %2481, 32
  %2483 = load i64, i64* %PC.i95
  %2484 = add i64 %2483, 5
  store i64 %2484, i64* %PC.i95
  %2485 = inttoptr i64 %2482 to float*
  %2486 = load float, float* %2485
  %2487 = fpext float %2486 to double
  %2488 = bitcast i8* %2480 to double*
  store double %2487, double* %2488, align 1
  store %struct.Memory* %loadMem_434b2a, %struct.Memory** %MEMORY
  %loadMem_434b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2491 to i64*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2492, i64 0, i64 0
  %YMM0.i94 = bitcast %union.VectorReg* %2493 to %"class.std::bitset"*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2495 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2494, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2495 to %union.vec128_t*
  %2496 = bitcast %"class.std::bitset"* %YMM0.i94 to i8*
  %2497 = bitcast %"class.std::bitset"* %YMM0.i94 to i8*
  %2498 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2499 = load i64, i64* %PC.i93
  %2500 = add i64 %2499, 4
  store i64 %2500, i64* %PC.i93
  %2501 = bitcast i8* %2497 to double*
  %2502 = load double, double* %2501, align 1
  %2503 = getelementptr inbounds i8, i8* %2497, i64 8
  %2504 = bitcast i8* %2503 to i64*
  %2505 = load i64, i64* %2504, align 1
  %2506 = bitcast i8* %2498 to double*
  %2507 = load double, double* %2506, align 1
  %2508 = fsub double %2502, %2507
  %2509 = bitcast i8* %2496 to double*
  store double %2508, double* %2509, align 1
  %2510 = getelementptr inbounds i8, i8* %2496, i64 8
  %2511 = bitcast i8* %2510 to i64*
  store i64 %2505, i64* %2511, align 1
  store %struct.Memory* %loadMem_434b2f, %struct.Memory** %MEMORY
  %loadMem_434b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2515, i64 0, i64 1
  %YMM1.i91 = bitcast %union.VectorReg* %2516 to %"class.std::bitset"*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2517, i64 0, i64 0
  %XMM0.i92 = bitcast %union.VectorReg* %2518 to %union.vec128_t*
  %2519 = bitcast %"class.std::bitset"* %YMM1.i91 to i8*
  %2520 = bitcast %"class.std::bitset"* %YMM1.i91 to i8*
  %2521 = bitcast %union.vec128_t* %XMM0.i92 to i8*
  %2522 = load i64, i64* %PC.i90
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %PC.i90
  %2524 = bitcast i8* %2520 to double*
  %2525 = load double, double* %2524, align 1
  %2526 = getelementptr inbounds i8, i8* %2520, i64 8
  %2527 = bitcast i8* %2526 to i64*
  %2528 = load i64, i64* %2527, align 1
  %2529 = bitcast i8* %2521 to double*
  %2530 = load double, double* %2529, align 1
  %2531 = fmul double %2525, %2530
  %2532 = bitcast i8* %2519 to double*
  store double %2531, double* %2532, align 1
  %2533 = getelementptr inbounds i8, i8* %2519, i64 8
  %2534 = bitcast i8* %2533 to i64*
  store i64 %2528, i64* %2534, align 1
  store %struct.Memory* %loadMem_434b33, %struct.Memory** %MEMORY
  %loadMem_434b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2538, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %2539 to %"class.std::bitset"*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2541 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2540, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2541 to %union.vec128_t*
  %2542 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %2543 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2544 = load i64, i64* %PC.i88
  %2545 = add i64 %2544, 4
  store i64 %2545, i64* %PC.i88
  %2546 = bitcast i8* %2542 to <2 x i32>*
  %2547 = load <2 x i32>, <2 x i32>* %2546, align 1
  %2548 = getelementptr inbounds i8, i8* %2542, i64 8
  %2549 = bitcast i8* %2548 to <2 x i32>*
  %2550 = load <2 x i32>, <2 x i32>* %2549, align 1
  %2551 = bitcast i8* %2543 to double*
  %2552 = load double, double* %2551, align 1
  %2553 = fptrunc double %2552 to float
  %2554 = bitcast i8* %2542 to float*
  store float %2553, float* %2554, align 1
  %2555 = extractelement <2 x i32> %2547, i32 1
  %2556 = getelementptr inbounds i8, i8* %2542, i64 4
  %2557 = bitcast i8* %2556 to i32*
  store i32 %2555, i32* %2557, align 1
  %2558 = extractelement <2 x i32> %2550, i32 0
  %2559 = bitcast i8* %2548 to i32*
  store i32 %2558, i32* %2559, align 1
  %2560 = extractelement <2 x i32> %2550, i32 1
  %2561 = getelementptr inbounds i8, i8* %2542, i64 12
  %2562 = bitcast i8* %2561 to i32*
  store i32 %2560, i32* %2562, align 1
  store %struct.Memory* %loadMem_434b37, %struct.Memory** %MEMORY
  %loadMem_434b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2569, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2570 to %union.vec128_t*
  %2571 = load i64, i64* %RBP.i87
  %2572 = sub i64 %2571, 44
  %2573 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2574 = load i64, i64* %PC.i86
  %2575 = add i64 %2574, 5
  store i64 %2575, i64* %PC.i86
  %2576 = bitcast i8* %2573 to <2 x float>*
  %2577 = load <2 x float>, <2 x float>* %2576, align 1
  %2578 = extractelement <2 x float> %2577, i32 0
  %2579 = inttoptr i64 %2572 to float*
  store float %2578, float* %2579
  store %struct.Memory* %loadMem_434b3b, %struct.Memory** %MEMORY
  %loadMem_434b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 15
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2586, i64 0, i64 0
  %YMM0.i85 = bitcast %union.VectorReg* %2587 to %"class.std::bitset"*
  %2588 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %2589 = load i64, i64* %RBP.i84
  %2590 = sub i64 %2589, 44
  %2591 = load i64, i64* %PC.i83
  %2592 = add i64 %2591, 5
  store i64 %2592, i64* %PC.i83
  %2593 = inttoptr i64 %2590 to float*
  %2594 = load float, float* %2593
  %2595 = bitcast i8* %2588 to float*
  store float %2594, float* %2595, align 1
  %2596 = getelementptr inbounds i8, i8* %2588, i64 4
  %2597 = bitcast i8* %2596 to float*
  store float 0.000000e+00, float* %2597, align 1
  %2598 = getelementptr inbounds i8, i8* %2588, i64 8
  %2599 = bitcast i8* %2598 to float*
  store float 0.000000e+00, float* %2599, align 1
  %2600 = getelementptr inbounds i8, i8* %2588, i64 12
  %2601 = bitcast i8* %2600 to float*
  store float 0.000000e+00, float* %2601, align 1
  store %struct.Memory* %loadMem_434b40, %struct.Memory** %MEMORY
  %loadMem_434b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 5
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 15
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %RBP.i82
  %2612 = sub i64 %2611, 56
  %2613 = load i64, i64* %PC.i80
  %2614 = add i64 %2613, 4
  store i64 %2614, i64* %PC.i80
  %2615 = inttoptr i64 %2612 to i64*
  %2616 = load i64, i64* %2615
  store i64 %2616, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_434b45, %struct.Memory** %MEMORY
  %loadMem_434b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 7
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %RBP.i79
  %2627 = sub i64 %2626, 40
  %2628 = load i64, i64* %PC.i77
  %2629 = add i64 %2628, 4
  store i64 %2629, i64* %PC.i77
  %2630 = inttoptr i64 %2627 to i32*
  %2631 = load i32, i32* %2630
  %2632 = sext i32 %2631 to i64
  store i64 %2632, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_434b49, %struct.Memory** %MEMORY
  %loadMem_434b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 5
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 7
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2642, i64 0, i64 1
  %YMM1.i76 = bitcast %union.VectorReg* %2643 to %"class.std::bitset"*
  %2644 = bitcast %"class.std::bitset"* %YMM1.i76 to i8*
  %2645 = load i64, i64* %RCX.i74
  %2646 = load i64, i64* %RDX.i75
  %2647 = mul i64 %2646, 4
  %2648 = add i64 %2647, %2645
  %2649 = load i64, i64* %PC.i73
  %2650 = add i64 %2649, 5
  store i64 %2650, i64* %PC.i73
  %2651 = inttoptr i64 %2648 to float*
  %2652 = load float, float* %2651
  %2653 = bitcast i8* %2644 to float*
  store float %2652, float* %2653, align 1
  %2654 = getelementptr inbounds i8, i8* %2644, i64 4
  %2655 = bitcast i8* %2654 to float*
  store float 0.000000e+00, float* %2655, align 1
  %2656 = getelementptr inbounds i8, i8* %2644, i64 8
  %2657 = bitcast i8* %2656 to float*
  store float 0.000000e+00, float* %2657, align 1
  %2658 = getelementptr inbounds i8, i8* %2644, i64 12
  %2659 = bitcast i8* %2658 to float*
  store float 0.000000e+00, float* %2659, align 1
  store %struct.Memory* %loadMem_434b4d, %struct.Memory** %MEMORY
  %loadMem1_434b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %PC.i72
  %2664 = add i64 %2663, -52642
  %2665 = load i64, i64* %PC.i72
  %2666 = add i64 %2665, 5
  %2667 = load i64, i64* %PC.i72
  %2668 = add i64 %2667, 5
  store i64 %2668, i64* %PC.i72
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2670 = load i64, i64* %2669, align 8
  %2671 = add i64 %2670, -8
  %2672 = inttoptr i64 %2671 to i64*
  store i64 %2666, i64* %2672
  store i64 %2671, i64* %2669, align 8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2664, i64* %2673, align 8
  store %struct.Memory* %loadMem1_434b52, %struct.Memory** %MEMORY
  %loadMem2_434b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434b52 = load i64, i64* %3
  %call2_434b52 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64 %loadPC_434b52, %struct.Memory* %loadMem2_434b52)
  store %struct.Memory* %call2_434b52, %struct.Memory** %MEMORY
  %loadMem_434b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 5
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i71
  %2684 = sub i64 %2683, 8
  %2685 = load i64, i64* %PC.i69
  %2686 = add i64 %2685, 4
  store i64 %2686, i64* %PC.i69
  %2687 = inttoptr i64 %2684 to i64*
  %2688 = load i64, i64* %2687
  store i64 %2688, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_434b57, %struct.Memory** %MEMORY
  %loadMem_434b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 33
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 5
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RCX.i68
  %2696 = add i64 %2695, 432
  %2697 = load i64, i64* %PC.i67
  %2698 = add i64 %2697, 7
  store i64 %2698, i64* %PC.i67
  %2699 = inttoptr i64 %2696 to i64*
  %2700 = load i64, i64* %2699
  store i64 %2700, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_434b5b, %struct.Memory** %MEMORY
  %loadMem_434b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 7
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i66
  %2711 = sub i64 %2710, 40
  %2712 = load i64, i64* %PC.i64
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i64
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = sext i32 %2715 to i64
  store i64 %2716, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_434b62, %struct.Memory** %MEMORY
  %loadMem_434b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 7
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RCX.i62
  %2727 = load i64, i64* %RDX.i63
  %2728 = mul i64 %2727, 8
  %2729 = add i64 %2728, %2726
  %2730 = load i64, i64* %PC.i61
  %2731 = add i64 %2730, 4
  store i64 %2731, i64* %PC.i61
  %2732 = inttoptr i64 %2729 to i64*
  %2733 = load i64, i64* %2732
  store i64 %2733, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_434b66, %struct.Memory** %MEMORY
  %loadMem_434b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 33
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 7
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 15
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2742 to i64*
  %2743 = load i64, i64* %RBP.i60
  %2744 = sub i64 %2743, 36
  %2745 = load i64, i64* %PC.i58
  %2746 = add i64 %2745, 4
  store i64 %2746, i64* %PC.i58
  %2747 = inttoptr i64 %2744 to i32*
  %2748 = load i32, i32* %2747
  %2749 = sext i32 %2748 to i64
  store i64 %2749, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_434b6a, %struct.Memory** %MEMORY
  %loadMem_434b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 1
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %2755 to i32*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 5
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 7
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RCX.i57
  %2763 = load i64, i64* %RDX.i
  %2764 = mul i64 %2763, 4
  %2765 = add i64 %2764, %2762
  %2766 = load i32, i32* %EAX.i56
  %2767 = zext i32 %2766 to i64
  %2768 = load i64, i64* %PC.i55
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC.i55
  %2770 = inttoptr i64 %2765 to i32*
  store i32 %2766, i32* %2770
  store %struct.Memory* %loadMem_434b6e, %struct.Memory** %MEMORY
  %loadMem_434b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 1
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 15
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %RBP.i54
  %2781 = sub i64 %2780, 40
  %2782 = load i64, i64* %PC.i52
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %PC.i52
  %2784 = inttoptr i64 %2781 to i32*
  %2785 = load i32, i32* %2784
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_434b71, %struct.Memory** %MEMORY
  %loadMem_434b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 1
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %RAX.i51
  %2794 = load i64, i64* %PC.i50
  %2795 = add i64 %2794, 3
  store i64 %2795, i64* %PC.i50
  %2796 = trunc i64 %2793 to i32
  %2797 = add i32 1, %2796
  %2798 = zext i32 %2797 to i64
  store i64 %2798, i64* %RAX.i51, align 8
  %2799 = icmp ult i32 %2797, %2796
  %2800 = icmp ult i32 %2797, 1
  %2801 = or i1 %2799, %2800
  %2802 = zext i1 %2801 to i8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2802, i8* %2803, align 1
  %2804 = and i32 %2797, 255
  %2805 = call i32 @llvm.ctpop.i32(i32 %2804)
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  %2808 = xor i8 %2807, 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2808, i8* %2809, align 1
  %2810 = xor i64 1, %2793
  %2811 = trunc i64 %2810 to i32
  %2812 = xor i32 %2811, %2797
  %2813 = lshr i32 %2812, 4
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2815, i8* %2816, align 1
  %2817 = icmp eq i32 %2797, 0
  %2818 = zext i1 %2817 to i8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2818, i8* %2819, align 1
  %2820 = lshr i32 %2797, 31
  %2821 = trunc i32 %2820 to i8
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2821, i8* %2822, align 1
  %2823 = lshr i32 %2796, 31
  %2824 = xor i32 %2820, %2823
  %2825 = add i32 %2824, %2820
  %2826 = icmp eq i32 %2825, 2
  %2827 = zext i1 %2826 to i8
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2827, i8* %2828, align 1
  store %struct.Memory* %loadMem_434b74, %struct.Memory** %MEMORY
  %loadMem_434b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 1
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %2834 to i32*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 15
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RBP.i49
  %2839 = sub i64 %2838, 40
  %2840 = load i32, i32* %EAX.i48
  %2841 = zext i32 %2840 to i64
  %2842 = load i64, i64* %PC.i47
  %2843 = add i64 %2842, 3
  store i64 %2843, i64* %PC.i47
  %2844 = inttoptr i64 %2839 to i32*
  store i32 %2840, i32* %2844
  store %struct.Memory* %loadMem_434b77, %struct.Memory** %MEMORY
  %loadMem_434b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %PC.i46
  %2849 = add i64 %2848, -333
  %2850 = load i64, i64* %PC.i46
  %2851 = add i64 %2850, 5
  store i64 %2851, i64* %PC.i46
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2849, i64* %2852, align 8
  store %struct.Memory* %loadMem_434b7a, %struct.Memory** %MEMORY
  br label %block_.L_434a2d

block_.L_434b7f:                                  ; preds = %block_.L_434a2d
  %loadMem_434b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2857 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2856, i64 0, i64 1
  %YMM1.i45 = bitcast %union.VectorReg* %2857 to %"class.std::bitset"*
  %2858 = bitcast %"class.std::bitset"* %YMM1.i45 to i8*
  %2859 = load i64, i64* %PC.i44
  %2860 = add i64 %2859, ptrtoint (%G_0x1fba1__rip__type* @G_0x1fba1__rip_ to i64)
  %2861 = load i64, i64* %PC.i44
  %2862 = add i64 %2861, 8
  store i64 %2862, i64* %PC.i44
  %2863 = inttoptr i64 %2860 to float*
  %2864 = load float, float* %2863
  %2865 = bitcast i8* %2858 to float*
  store float %2864, float* %2865, align 1
  %2866 = getelementptr inbounds i8, i8* %2858, i64 4
  %2867 = bitcast i8* %2866 to float*
  store float 0.000000e+00, float* %2867, align 1
  %2868 = getelementptr inbounds i8, i8* %2858, i64 8
  %2869 = bitcast i8* %2868 to float*
  store float 0.000000e+00, float* %2869, align 1
  %2870 = getelementptr inbounds i8, i8* %2858, i64 12
  %2871 = bitcast i8* %2870 to float*
  store float 0.000000e+00, float* %2871, align 1
  store %struct.Memory* %loadMem_434b7f, %struct.Memory** %MEMORY
  %loadMem_434b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 33
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 1
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 15
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2880 to i64*
  %2881 = load i64, i64* %RBP.i43
  %2882 = sub i64 %2881, 8
  %2883 = load i64, i64* %PC.i41
  %2884 = add i64 %2883, 4
  store i64 %2884, i64* %PC.i41
  %2885 = inttoptr i64 %2882 to i64*
  %2886 = load i64, i64* %2885
  store i64 %2886, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_434b87, %struct.Memory** %MEMORY
  %loadMem_434b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 1
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %RAX.i40
  %2894 = add i64 %2893, 424
  %2895 = load i64, i64* %PC.i39
  %2896 = add i64 %2895, 7
  store i64 %2896, i64* %PC.i39
  %2897 = inttoptr i64 %2894 to i64*
  %2898 = load i64, i64* %2897
  store i64 %2898, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_434b8b, %struct.Memory** %MEMORY
  %loadMem_434b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 1
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %RAX.i38
  %2906 = add i64 %2905, 512
  %2907 = load i64, i64* %PC.i37
  %2908 = add i64 %2907, 7
  store i64 %2908, i64* %PC.i37
  %2909 = inttoptr i64 %2906 to i64*
  %2910 = load i64, i64* %2909
  store i64 %2910, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_434b92, %struct.Memory** %MEMORY
  %loadMem_434b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 15
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RBP.i36
  %2921 = sub i64 %2920, 36
  %2922 = load i64, i64* %PC.i34
  %2923 = add i64 %2922, 4
  store i64 %2923, i64* %PC.i34
  %2924 = inttoptr i64 %2921 to i32*
  %2925 = load i32, i32* %2924
  %2926 = sext i32 %2925 to i64
  store i64 %2926, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_434b99, %struct.Memory** %MEMORY
  %loadMem_434b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 1
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 5
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %RAX.i32
  %2937 = load i64, i64* %RCX.i33
  %2938 = mul i64 %2937, 4
  %2939 = add i64 %2938, %2936
  %2940 = load i64, i64* %PC.i31
  %2941 = add i64 %2940, 7
  store i64 %2941, i64* %PC.i31
  %2942 = inttoptr i64 %2939 to i32*
  store i32 0, i32* %2942
  store %struct.Memory* %loadMem_434b9d, %struct.Memory** %MEMORY
  %loadMem_434ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 15
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2949, i64 0, i64 0
  %YMM0.i30 = bitcast %union.VectorReg* %2950 to %"class.std::bitset"*
  %2951 = bitcast %"class.std::bitset"* %YMM0.i30 to i8*
  %2952 = load i64, i64* %RBP.i29
  %2953 = sub i64 %2952, 28
  %2954 = load i64, i64* %PC.i28
  %2955 = add i64 %2954, 5
  store i64 %2955, i64* %PC.i28
  %2956 = inttoptr i64 %2953 to float*
  %2957 = load float, float* %2956
  %2958 = bitcast i8* %2951 to float*
  store float %2957, float* %2958, align 1
  %2959 = getelementptr inbounds i8, i8* %2951, i64 4
  %2960 = bitcast i8* %2959 to float*
  store float 0.000000e+00, float* %2960, align 1
  %2961 = getelementptr inbounds i8, i8* %2951, i64 8
  %2962 = bitcast i8* %2961 to float*
  store float 0.000000e+00, float* %2962, align 1
  %2963 = getelementptr inbounds i8, i8* %2951, i64 12
  %2964 = bitcast i8* %2963 to float*
  store float 0.000000e+00, float* %2964, align 1
  store %struct.Memory* %loadMem_434ba4, %struct.Memory** %MEMORY
  %loadMem1_434ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 33
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2967 to i64*
  %2968 = load i64, i64* %PC.i27
  %2969 = add i64 %2968, -52729
  %2970 = load i64, i64* %PC.i27
  %2971 = add i64 %2970, 5
  %2972 = load i64, i64* %PC.i27
  %2973 = add i64 %2972, 5
  store i64 %2973, i64* %PC.i27
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2975 = load i64, i64* %2974, align 8
  %2976 = add i64 %2975, -8
  %2977 = inttoptr i64 %2976 to i64*
  store i64 %2971, i64* %2977
  store i64 %2976, i64* %2974, align 8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2969, i64* %2978, align 8
  store %struct.Memory* %loadMem1_434ba9, %struct.Memory** %MEMORY
  %loadMem2_434ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434ba9 = load i64, i64* %3
  %call2_434ba9 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64 %loadPC_434ba9, %struct.Memory* %loadMem2_434ba9)
  store %struct.Memory* %call2_434ba9, %struct.Memory** %MEMORY
  %loadMem_434bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2982, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2983 to %"class.std::bitset"*
  %2984 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2985 = load i64, i64* %PC.i26
  %2986 = add i64 %2985, ptrtoint (%G_0x1fb72__rip__type* @G_0x1fb72__rip_ to i64)
  %2987 = load i64, i64* %PC.i26
  %2988 = add i64 %2987, 8
  store i64 %2988, i64* %PC.i26
  %2989 = inttoptr i64 %2986 to float*
  %2990 = load float, float* %2989
  %2991 = bitcast i8* %2984 to float*
  store float %2990, float* %2991, align 1
  %2992 = getelementptr inbounds i8, i8* %2984, i64 4
  %2993 = bitcast i8* %2992 to float*
  store float 0.000000e+00, float* %2993, align 1
  %2994 = getelementptr inbounds i8, i8* %2984, i64 8
  %2995 = bitcast i8* %2994 to float*
  store float 0.000000e+00, float* %2995, align 1
  %2996 = getelementptr inbounds i8, i8* %2984, i64 12
  %2997 = bitcast i8* %2996 to float*
  store float 0.000000e+00, float* %2997, align 1
  store %struct.Memory* %loadMem_434bae, %struct.Memory** %MEMORY
  %loadMem_434bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 33
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3000 to i64*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 5
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 15
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %RBP.i25
  %3008 = sub i64 %3007, 8
  %3009 = load i64, i64* %PC.i23
  %3010 = add i64 %3009, 4
  store i64 %3010, i64* %PC.i23
  %3011 = inttoptr i64 %3008 to i64*
  %3012 = load i64, i64* %3011
  store i64 %3012, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_434bb6, %struct.Memory** %MEMORY
  %loadMem_434bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 1
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %EAX.i21 = bitcast %union.anon* %3018 to i32*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 5
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RCX.i22 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RCX.i22
  %3023 = add i64 %3022, 440
  %3024 = load i32, i32* %EAX.i21
  %3025 = zext i32 %3024 to i64
  %3026 = load i64, i64* %PC.i20
  %3027 = add i64 %3026, 6
  store i64 %3027, i64* %PC.i20
  %3028 = inttoptr i64 %3023 to i32*
  store i32 %3024, i32* %3028
  store %struct.Memory* %loadMem_434bba, %struct.Memory** %MEMORY
  %loadMem_434bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3035, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3036 to %"class.std::bitset"*
  %3037 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3038 = load i64, i64* %RBP.i19
  %3039 = sub i64 %3038, 32
  %3040 = load i64, i64* %PC.i18
  %3041 = add i64 %3040, 5
  store i64 %3041, i64* %PC.i18
  %3042 = inttoptr i64 %3039 to float*
  %3043 = load float, float* %3042
  %3044 = bitcast i8* %3037 to float*
  store float %3043, float* %3044, align 1
  %3045 = getelementptr inbounds i8, i8* %3037, i64 4
  %3046 = bitcast i8* %3045 to float*
  store float 0.000000e+00, float* %3046, align 1
  %3047 = getelementptr inbounds i8, i8* %3037, i64 8
  %3048 = bitcast i8* %3047 to float*
  store float 0.000000e+00, float* %3048, align 1
  %3049 = getelementptr inbounds i8, i8* %3037, i64 12
  %3050 = bitcast i8* %3049 to float*
  store float 0.000000e+00, float* %3050, align 1
  store %struct.Memory* %loadMem_434bc0, %struct.Memory** %MEMORY
  %loadMem1_434bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %PC.i17
  %3055 = add i64 %3054, -52757
  %3056 = load i64, i64* %PC.i17
  %3057 = add i64 %3056, 5
  %3058 = load i64, i64* %PC.i17
  %3059 = add i64 %3058, 5
  store i64 %3059, i64* %PC.i17
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3061 = load i64, i64* %3060, align 8
  %3062 = add i64 %3061, -8
  %3063 = inttoptr i64 %3062 to i64*
  store i64 %3057, i64* %3063
  store i64 %3062, i64* %3060, align 8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3055, i64* %3064, align 8
  store %struct.Memory* %loadMem1_434bc5, %struct.Memory** %MEMORY
  %loadMem2_434bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434bc5 = load i64, i64* %3
  %call2_434bc5 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64 %loadPC_434bc5, %struct.Memory* %loadMem2_434bc5)
  store %struct.Memory* %call2_434bc5, %struct.Memory** %MEMORY
  %loadMem_434bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 5
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 15
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %RBP.i16
  %3075 = sub i64 %3074, 8
  %3076 = load i64, i64* %PC.i14
  %3077 = add i64 %3076, 4
  store i64 %3077, i64* %PC.i14
  %3078 = inttoptr i64 %3075 to i64*
  %3079 = load i64, i64* %3078
  store i64 %3079, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_434bca, %struct.Memory** %MEMORY
  %loadMem_434bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 1
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %3085 to i32*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 5
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3088 to i64*
  %3089 = load i64, i64* %RCX.i
  %3090 = add i64 %3089, 444
  %3091 = load i32, i32* %EAX.i13
  %3092 = zext i32 %3091 to i64
  %3093 = load i64, i64* %PC.i12
  %3094 = add i64 %3093, 6
  store i64 %3094, i64* %PC.i12
  %3095 = inttoptr i64 %3090 to i32*
  store i32 %3091, i32* %3095
  store %struct.Memory* %loadMem_434bce, %struct.Memory** %MEMORY
  %loadMem_434bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 1
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3104 to i64*
  %3105 = load i64, i64* %RBP.i11
  %3106 = sub i64 %3105, 36
  %3107 = load i64, i64* %PC.i9
  %3108 = add i64 %3107, 3
  store i64 %3108, i64* %PC.i9
  %3109 = inttoptr i64 %3106 to i32*
  %3110 = load i32, i32* %3109
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_434bd4, %struct.Memory** %MEMORY
  %loadMem_434bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 1
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %RAX.i
  %3119 = load i64, i64* %PC.i8
  %3120 = add i64 %3119, 3
  store i64 %3120, i64* %PC.i8
  %3121 = trunc i64 %3118 to i32
  %3122 = add i32 1, %3121
  %3123 = zext i32 %3122 to i64
  store i64 %3123, i64* %RAX.i, align 8
  %3124 = icmp ult i32 %3122, %3121
  %3125 = icmp ult i32 %3122, 1
  %3126 = or i1 %3124, %3125
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3127, i8* %3128, align 1
  %3129 = and i32 %3122, 255
  %3130 = call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3133, i8* %3134, align 1
  %3135 = xor i64 1, %3118
  %3136 = trunc i64 %3135 to i32
  %3137 = xor i32 %3136, %3122
  %3138 = lshr i32 %3137, 4
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3140, i8* %3141, align 1
  %3142 = icmp eq i32 %3122, 0
  %3143 = zext i1 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3143, i8* %3144, align 1
  %3145 = lshr i32 %3122, 31
  %3146 = trunc i32 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3146, i8* %3147, align 1
  %3148 = lshr i32 %3121, 31
  %3149 = xor i32 %3145, %3148
  %3150 = add i32 %3149, %3145
  %3151 = icmp eq i32 %3150, 2
  %3152 = zext i1 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3152, i8* %3153, align 1
  store %struct.Memory* %loadMem_434bd7, %struct.Memory** %MEMORY
  %loadMem_434bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 1
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3159 to i32*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 15
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %RBP.i7
  %3164 = sub i64 %3163, 36
  %3165 = load i32, i32* %EAX.i
  %3166 = zext i32 %3165 to i64
  %3167 = load i64, i64* %PC.i6
  %3168 = add i64 %3167, 3
  store i64 %3168, i64* %PC.i6
  %3169 = inttoptr i64 %3164 to i32*
  store i32 %3165, i32* %3169
  store %struct.Memory* %loadMem_434bda, %struct.Memory** %MEMORY
  %loadMem_434bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %PC.i5
  %3174 = add i64 %3173, -458
  %3175 = load i64, i64* %PC.i5
  %3176 = add i64 %3175, 5
  store i64 %3176, i64* %PC.i5
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3174, i64* %3177, align 8
  store %struct.Memory* %loadMem_434bdd, %struct.Memory** %MEMORY
  br label %block_.L_434a13

block_.L_434be2:                                  ; preds = %block_.L_434a13
  %loadMem_434be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 13
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RSP.i
  %3185 = load i64, i64* %PC.i4
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i4
  %3187 = add i64 64, %3184
  store i64 %3187, i64* %RSP.i, align 8
  %3188 = icmp ult i64 %3187, %3184
  %3189 = icmp ult i64 %3187, 64
  %3190 = or i1 %3188, %3189
  %3191 = zext i1 %3190 to i8
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3191, i8* %3192, align 1
  %3193 = trunc i64 %3187 to i32
  %3194 = and i32 %3193, 255
  %3195 = call i32 @llvm.ctpop.i32(i32 %3194)
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  %3198 = xor i8 %3197, 1
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3198, i8* %3199, align 1
  %3200 = xor i64 64, %3184
  %3201 = xor i64 %3200, %3187
  %3202 = lshr i64 %3201, 4
  %3203 = trunc i64 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3204, i8* %3205, align 1
  %3206 = icmp eq i64 %3187, 0
  %3207 = zext i1 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3207, i8* %3208, align 1
  %3209 = lshr i64 %3187, 63
  %3210 = trunc i64 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3210, i8* %3211, align 1
  %3212 = lshr i64 %3184, 63
  %3213 = xor i64 %3209, %3212
  %3214 = add i64 %3213, %3209
  %3215 = icmp eq i64 %3214, 2
  %3216 = zext i1 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3216, i8* %3217, align 1
  store %struct.Memory* %loadMem_434be2, %struct.Memory** %MEMORY
  %loadMem_434be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3220 to i64*
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 15
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %PC.i2
  %3225 = add i64 %3224, 1
  store i64 %3225, i64* %PC.i2
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3227 = load i64, i64* %3226, align 8
  %3228 = add i64 %3227, 8
  %3229 = inttoptr i64 %3227 to i64*
  %3230 = load i64, i64* %3229
  store i64 %3230, i64* %RBP.i3, align 8
  store i64 %3228, i64* %3226, align 8
  store %struct.Memory* %loadMem_434be6, %struct.Memory** %MEMORY
  %loadMem_434be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %PC.i1
  %3235 = add i64 %3234, 1
  store i64 %3235, i64* %PC.i1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3238 = load i64, i64* %3237, align 8
  %3239 = inttoptr i64 %3238 to i64*
  %3240 = load i64, i64* %3239
  store i64 %3240, i64* %3236, align 8
  %3241 = add i64 %3238, 8
  store i64 %3241, i64* %3237, align 8
  store %struct.Memory* %loadMem_434be7, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_434be7
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

define %struct.Memory* @routine_movsd_0x1ff50__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1ff50__rip__type* @G_0x1ff50__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x1ff38__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1ff38__rip__type* @G_0x1ff38__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x1fe7c__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1fe7c__rip__type* @G_0x1fe7c__rip_ to i64)
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

define %struct.Memory* @routine_xorps__xmm5___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_movss_0x1fe6d__rip____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1fe6d__rip__type* @G_0x1fe6d__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x1fea9__rip____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1fea9__rip__type* @G_0x1fea9__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x1fea4__rip____xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1fea4__rip__type* @G_0x1fea4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 28
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm8__0xac__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 172
  %13 = bitcast %union.vec128_t* %XMM8 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 9
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm7__0xb0__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM7 to i8*
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

define %struct.Memory* @routine_movss__xmm6__0xb4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 180
  %13 = bitcast %union.vec128_t* %XMM6 to i8*
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

define %struct.Memory* @routine_movss__xmm5__0xb8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_movss__xmm8__0xbc__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 188
  %13 = bitcast %union.vec128_t* %XMM8 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 9
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm7__0xc0__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM7 to i8*
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

define %struct.Memory* @routine_movss__xmm6__0xc4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 196
  %13 = bitcast %union.vec128_t* %XMM6 to i8*
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

define %struct.Memory* @routine_movss__xmm5__0xc8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_movq_0xd0__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm4__0x4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_addq__0x8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 8, %9
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 1
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
  %24 = xor i64 1, %9
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

define %struct.Memory* @routine_cvtsi2ssl_0x88__rsi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 136
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movsd_0x1fe4a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fe4a__rip__type* @G_0x1fe4a__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x1fe32__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fe32__rip__type* @G_0x1fe32__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x1fd72__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fd72__rip__type* @G_0x1fd72__rip_ to i64)
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

define %struct.Memory* @routine_movq_0xd8__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_0x88__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2____rdx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RDI
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movq_0xd8__rdx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_0x88__rdx____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 136
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

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
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

define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 136
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

define %struct.Memory* @routine_jg_.L_434be2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x40__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 64
  %16 = icmp ult i32 %14, 64
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
  %25 = xor i32 %14, 64
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

define %struct.Memory* @routine_jge_.L_434b7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1fda1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fda1__rip__type* @G_0x1fda1__rip_ to i64)
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

define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fmul float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 44
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

define %struct.Memory* @routine_movss_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_callq_.Prob2Score(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x1fd1e__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fd1e__rip__type* @G_0x1fd1e__rip_ to i64)
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

define %struct.Memory* @routine_movq_0x1a8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rcx__rdx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_mulss___rcx__rdx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fmul float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
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

define %struct.Memory* @routine_movq_0x1b0__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_434a2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0x1fba1__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fba1__rip__type* @G_0x1fba1__rip_ to i64)
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

define %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x200__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 512
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_movss_0x1fb72__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1fb72__rip__type* @G_0x1fb72__rip_ to i64)
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

define %struct.Memory* @routine_movl__eax__0x1b8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 440
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__0x1bc__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 444
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_434a13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
