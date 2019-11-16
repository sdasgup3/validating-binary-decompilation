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
%G_0x91db6__rip__type = type <{ [8 x i8] }>
%G_0x91e18__rip__type = type <{ [8 x i8] }>
%G_0x91ed2__rip__type = type <{ [8 x i8] }>
%G__0x57eec5_type = type <{ [8 x i8] }>
%G__0x57f208_type = type <{ [8 x i8] }>
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
@G_0x91db6__rip_ = global %G_0x91db6__rip__type zeroinitializer
@G_0x91e18__rip_ = global %G_0x91e18__rip__type zeroinitializer
@G_0x91ed2__rip_ = global %G_0x91ed2__rip__type zeroinitializer
@G__0x57eec5 = global %G__0x57eec5_type zeroinitializer
@G__0x57f208 = global %G__0x57f208_type zeroinitializer

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

declare %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_423120.are_neighbor_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @mark_dragon_hotspot_values(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_450ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_450ef0, %struct.Memory** %MEMORY
  %loadMem_450ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i130 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i130
  %27 = load i64, i64* %PC.i129
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i129
  store i64 %26, i64* %RBP.i131, align 8
  store %struct.Memory* %loadMem_450ef1, %struct.Memory** %MEMORY
  %loadMem_450ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i157 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i157
  %36 = load i64, i64* %PC.i156
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i156
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i157, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_450ef4, %struct.Memory** %MEMORY
  %loadMem_450ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i354 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i355
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i354
  %79 = load i64, i64* %PC.i353
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i353
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_450ef8, %struct.Memory** %MEMORY
  %loadMem_450efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i372 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i373
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i372
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i371
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i371
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_450efc, %struct.Memory** %MEMORY
  %loadMem_450eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %104, i64 0, i64 0
  %XMM0.i422 = bitcast %union.VectorReg* %105 to %union.vec128_t*
  %106 = load i64, i64* %RBP.i421
  %107 = sub i64 %106, 16
  %108 = bitcast %union.vec128_t* %XMM0.i422 to i8*
  %109 = load i64, i64* %PC.i420
  %110 = add i64 %109, 5
  store i64 %110, i64* %PC.i420
  %111 = bitcast i8* %108 to <2 x float>*
  %112 = load <2 x float>, <2 x float>* %111, align 1
  %113 = extractelement <2 x float> %112, i32 0
  %114 = inttoptr i64 %107 to float*
  store float %113, float* %114
  store %struct.Memory* %loadMem_450eff, %struct.Memory** %MEMORY
  %loadMem_450f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RDX.i418 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i419
  %125 = sub i64 %124, 24
  %126 = load i64, i64* %RDX.i418
  %127 = load i64, i64* %PC.i417
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC.i417
  %129 = inttoptr i64 %125 to i64*
  store i64 %126, i64* %129
  store %struct.Memory* %loadMem_450f04, %struct.Memory** %MEMORY
  %loadMem_450f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 15
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %138 to i64*
  %139 = load i64, i64* %RBP.i416
  %140 = sub i64 %139, 12
  %141 = load i64, i64* %PC.i414
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i414
  %143 = inttoptr i64 %140 to i32*
  %144 = load i32, i32* %143
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_450f08, %struct.Memory** %MEMORY
  %loadMem_450f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RDX.i412 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RSI.i413 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %RDX.i412
  %156 = add i64 %155, 12099168
  %157 = load i64, i64* %PC.i411
  %158 = add i64 %157, 8
  store i64 %158, i64* %PC.i411
  %159 = inttoptr i64 %156 to i8*
  %160 = load i8, i8* %159
  %161 = zext i8 %160 to i64
  store i64 %161, i64* %RSI.i413, align 8
  store %struct.Memory* %loadMem_450f0c, %struct.Memory** %MEMORY
  %loadMem_450f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %ESI.i410 = bitcast %union.anon* %167 to i32*
  %168 = load i32, i32* %ESI.i410
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %PC.i409
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i409
  %172 = sub i32 %168, 1
  %173 = icmp ult i32 %168, 1
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %174, i8* %175, align 1
  %176 = and i32 %172, 255
  %177 = call i32 @llvm.ctpop.i32(i32 %176)
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %180, i8* %181, align 1
  %182 = xor i64 1, %169
  %183 = trunc i64 %182 to i32
  %184 = xor i32 %183, %172
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %187, i8* %188, align 1
  %189 = icmp eq i32 %172, 0
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %172, 31
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %193, i8* %194, align 1
  %195 = lshr i32 %168, 31
  %196 = xor i32 %192, %195
  %197 = add i32 %196, %195
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %199, i8* %200, align 1
  store %struct.Memory* %loadMem_450f14, %struct.Memory** %MEMORY
  %loadMem_450f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %PC.i408
  %205 = add i64 %204, 27
  %206 = load i64, i64* %PC.i408
  %207 = add i64 %206, 6
  %208 = load i64, i64* %PC.i408
  %209 = add i64 %208, 6
  store i64 %209, i64* %PC.i408
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %211 = load i8, i8* %210, align 1
  store i8 %211, i8* %BRANCH_TAKEN, align 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %213 = icmp ne i8 %211, 0
  %214 = select i1 %213, i64 %205, i64 %207
  store i64 %214, i64* %212, align 8
  store %struct.Memory* %loadMem_450f17, %struct.Memory** %MEMORY
  %loadBr_450f17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450f17 = icmp eq i8 %loadBr_450f17, 1
  br i1 %cmpBr_450f17, label %block_.L_450f32, label %block_450f1d

block_450f1d:                                     ; preds = %entry
  %loadMem_450f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i407
  %225 = sub i64 %224, 12
  %226 = load i64, i64* %PC.i405
  %227 = add i64 %226, 4
  store i64 %227, i64* %PC.i405
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_450f1d, %struct.Memory** %MEMORY
  %loadMem_450f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RAX.i403
  %241 = add i64 %240, 12099168
  %242 = load i64, i64* %PC.i402
  %243 = add i64 %242, 8
  store i64 %243, i64* %PC.i402
  %244 = inttoptr i64 %241 to i8*
  %245 = load i8, i8* %244
  %246 = zext i8 %245 to i64
  store i64 %246, i64* %RCX.i404, align 8
  store %struct.Memory* %loadMem_450f21, %struct.Memory** %MEMORY
  %loadMem_450f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %ECX.i401 = bitcast %union.anon* %252 to i32*
  %253 = load i32, i32* %ECX.i401
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %PC.i400
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC.i400
  %257 = sub i32 %253, 2
  %258 = icmp ult i32 %253, 2
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
  %267 = xor i64 2, %254
  %268 = trunc i64 %267 to i32
  %269 = xor i32 %268, %257
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %272, i8* %273, align 1
  %274 = icmp eq i32 %257, 0
  %275 = zext i1 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %275, i8* %276, align 1
  %277 = lshr i32 %257, 31
  %278 = trunc i32 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %278, i8* %279, align 1
  %280 = lshr i32 %253, 31
  %281 = xor i32 %277, %280
  %282 = add i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %284, i8* %285, align 1
  store %struct.Memory* %loadMem_450f29, %struct.Memory** %MEMORY
  %loadMem_450f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %PC.i399
  %290 = add i64 %289, 11
  %291 = load i64, i64* %PC.i399
  %292 = add i64 %291, 6
  %293 = load i64, i64* %PC.i399
  %294 = add i64 %293, 6
  store i64 %294, i64* %PC.i399
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %296 = load i8, i8* %295, align 1
  %297 = icmp eq i8 %296, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %BRANCH_TAKEN, align 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %300 = select i1 %297, i64 %290, i64 %292
  store i64 %300, i64* %299, align 8
  store %struct.Memory* %loadMem_450f2c, %struct.Memory** %MEMORY
  %loadBr_450f2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450f2c = icmp eq i8 %loadBr_450f2c, 1
  br i1 %cmpBr_450f2c, label %block_.L_450f37, label %block_.L_450f32

block_.L_450f32:                                  ; preds = %block_450f1d, %entry
  %loadMem_450f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %PC.i398
  %305 = add i64 %304, 94
  %306 = load i64, i64* %PC.i398
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC.i398
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %305, i64* %308, align 8
  store %struct.Memory* %loadMem_450f32, %struct.Memory** %MEMORY
  br label %block_.L_450f90

block_.L_450f37:                                  ; preds = %block_450f1d
  %loadMem_450f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 11
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RDI.i397 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %PC.i396
  %316 = add i64 %315, 10
  store i64 %316, i64* %PC.i396
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI.i397, align 8
  store %struct.Memory* %loadMem_450f37, %struct.Memory** %MEMORY
  %loadMem_450f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 9
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RSI.i395 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i394
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC.i394
  store i64 872, i64* %RSI.i395, align 8
  store %struct.Memory* %loadMem_450f41, %struct.Memory** %MEMORY
  %loadMem_450f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDX.i393 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %PC.i392
  %332 = add i64 %331, 10
  store i64 %332, i64* %PC.i392
  store i64 ptrtoint (%G__0x57f208_type* @G__0x57f208 to i64), i64* %RDX.i393, align 8
  store %struct.Memory* %loadMem_450f46, %struct.Memory** %MEMORY
  %loadMem_450f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %PC.i390
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC.i390
  store i64 20, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_450f50, %struct.Memory** %MEMORY
  %loadMem_450f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RBP.i389
  %351 = sub i64 %350, 12
  %352 = load i64, i64* %PC.i387
  %353 = add i64 %352, 3
  store i64 %353, i64* %PC.i387
  %354 = inttoptr i64 %351 to i32*
  %355 = load i32, i32* %354
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_450f55, %struct.Memory** %MEMORY
  %loadMem_450f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %362 to i32*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 15
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RBP.i386
  %367 = sub i64 %366, 48
  %368 = load i32, i32* %EAX.i385
  %369 = zext i32 %368 to i64
  %370 = load i64, i64* %PC.i384
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC.i384
  %372 = inttoptr i64 %367 to i32*
  store i32 %368, i32* %372
  store %struct.Memory* %loadMem_450f58, %struct.Memory** %MEMORY
  %loadMem_450f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %ECX.i382 = bitcast %union.anon* %378 to i32*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %381 to i64*
  %382 = load i32, i32* %ECX.i382
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %PC.i381
  %385 = add i64 %384, 2
  store i64 %385, i64* %PC.i381
  %386 = and i64 %383, 4294967295
  store i64 %386, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_450f5b, %struct.Memory** %MEMORY
  %loadMem_450f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RBP.i380
  %397 = sub i64 %396, 56
  %398 = load i64, i64* %RDX.i379
  %399 = load i64, i64* %PC.i378
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i378
  %401 = inttoptr i64 %397 to i64*
  store i64 %398, i64* %401
  store %struct.Memory* %loadMem_450f5d, %struct.Memory** %MEMORY
  %loadMem_450f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i377
  %406 = add i64 %405, 1
  store i64 %406, i64* %PC.i377
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %409 = bitcast %union.anon* %408 to i32*
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = lshr i64 %411, 32
  store i64 %412, i64* %407, align 8
  store %struct.Memory* %loadMem_450f61, %struct.Memory** %MEMORY
  %loadMem_450f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 15
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %RBP.i376
  %423 = sub i64 %422, 48
  %424 = load i64, i64* %PC.i374
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC.i374
  %426 = inttoptr i64 %423 to i32*
  %427 = load i32, i32* %426
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_450f62, %struct.Memory** %MEMORY
  %loadMem_450f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 5
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %ECX.i369 = bitcast %union.anon* %434 to i32*
  %435 = load i32, i32* %ECX.i369
  %436 = zext i32 %435 to i64
  %437 = load i64, i64* %PC.i368
  %438 = add i64 %437, 2
  store i64 %438, i64* %PC.i368
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %440 = bitcast %union.anon* %439 to i32*
  %441 = load i32, i32* %440, align 8
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %444 = bitcast %union.anon* %443 to i32*
  %445 = load i32, i32* %444, align 8
  %446 = zext i32 %445 to i64
  %447 = shl i64 %436, 32
  %448 = ashr exact i64 %447, 32
  %449 = shl i64 %446, 32
  %450 = or i64 %449, %442
  %451 = sdiv i64 %450, %448
  %452 = shl i64 %451, 32
  %453 = ashr exact i64 %452, 32
  %454 = icmp eq i64 %451, %453
  br i1 %454, label %459, label %455

; <label>:455:                                    ; preds = %block_.L_450f37
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %457, %struct.Memory* %loadMem_450f65)
  br label %routine_idivl__ecx.exit370

; <label>:459:                                    ; preds = %block_.L_450f37
  %460 = srem i64 %450, %448
  %461 = getelementptr inbounds %union.anon, %union.anon* %439, i64 0, i32 0
  %462 = and i64 %451, 4294967295
  store i64 %462, i64* %461, align 8
  %463 = getelementptr inbounds %union.anon, %union.anon* %443, i64 0, i32 0
  %464 = and i64 %460, 4294967295
  store i64 %464, i64* %463, align 8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %465, align 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %466, align 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %467, align 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %468, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %469, align 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %470, align 1
  br label %routine_idivl__ecx.exit370

routine_idivl__ecx.exit370:                       ; preds = %455, %459
  %471 = phi %struct.Memory* [ %458, %455 ], [ %loadMem_450f65, %459 ]
  store %struct.Memory* %471, %struct.Memory** %MEMORY
  %loadMem_450f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RAX.i367
  %479 = load i64, i64* %PC.i366
  %480 = add i64 %479, 3
  store i64 %480, i64* %PC.i366
  %481 = trunc i64 %478 to i32
  %482 = sub i32 %481, 1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX.i367, align 8
  %484 = icmp ult i32 %481, 1
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %485, i8* %486, align 1
  %487 = and i32 %482, 255
  %488 = call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %491, i8* %492, align 1
  %493 = xor i64 1, %478
  %494 = trunc i64 %493 to i32
  %495 = xor i32 %494, %482
  %496 = lshr i32 %495, 4
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %498, i8* %499, align 1
  %500 = icmp eq i32 %482, 0
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %501, i8* %502, align 1
  %503 = lshr i32 %482, 31
  %504 = trunc i32 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %504, i8* %505, align 1
  %506 = lshr i32 %481, 31
  %507 = xor i32 %503, %506
  %508 = add i32 %507, %506
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %510, i8* %511, align 1
  store %struct.Memory* %loadMem_450f67, %struct.Memory** %MEMORY
  %loadMem_450f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 17
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %R8D.i364 = bitcast %union.anon* %517 to i32*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 15
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %520 to i64*
  %521 = bitcast i32* %R8D.i364 to i64*
  %522 = load i64, i64* %RBP.i365
  %523 = sub i64 %522, 12
  %524 = load i64, i64* %PC.i363
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC.i363
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %521, align 8
  store %struct.Memory* %loadMem_450f6a, %struct.Memory** %MEMORY
  %loadMem_450f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i362
  %539 = sub i64 %538, 60
  %540 = load i32, i32* %EAX.i361
  %541 = zext i32 %540 to i64
  %542 = load i64, i64* %PC.i360
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC.i360
  %544 = inttoptr i64 %539 to i32*
  store i32 %540, i32* %544
  store %struct.Memory* %loadMem_450f6e, %struct.Memory** %MEMORY
  %loadMem_450f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 17
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %R8D.i358 = bitcast %union.anon* %550 to i32*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %553 to i64*
  %554 = load i32, i32* %R8D.i358
  %555 = zext i32 %554 to i64
  %556 = load i64, i64* %PC.i357
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i357
  %558 = and i64 %555, 4294967295
  store i64 %558, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_450f71, %struct.Memory** %MEMORY
  %loadMem_450f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %PC.i356
  %563 = add i64 %562, 1
  store i64 %563, i64* %PC.i356
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %566 = bitcast %union.anon* %565 to i32*
  %567 = load i32, i32* %566, align 8
  %568 = sext i32 %567 to i64
  %569 = lshr i64 %568, 32
  store i64 %569, i64* %564, align 8
  store %struct.Memory* %loadMem_450f74, %struct.Memory** %MEMORY
  %loadMem_450f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 33
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 5
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %ECX.i352 = bitcast %union.anon* %575 to i32*
  %576 = load i32, i32* %ECX.i352
  %577 = zext i32 %576 to i64
  %578 = load i64, i64* %PC.i351
  %579 = add i64 %578, 2
  store i64 %579, i64* %PC.i351
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %581 = bitcast %union.anon* %580 to i32*
  %582 = load i32, i32* %581, align 8
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %585 = bitcast %union.anon* %584 to i32*
  %586 = load i32, i32* %585, align 8
  %587 = zext i32 %586 to i64
  %588 = shl i64 %577, 32
  %589 = ashr exact i64 %588, 32
  %590 = shl i64 %587, 32
  %591 = or i64 %590, %583
  %592 = sdiv i64 %591, %589
  %593 = shl i64 %592, 32
  %594 = ashr exact i64 %593, 32
  %595 = icmp eq i64 %592, %594
  br i1 %595, label %600, label %596

; <label>:596:                                    ; preds = %routine_idivl__ecx.exit370
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %598, %struct.Memory* %loadMem_450f75)
  br label %routine_idivl__ecx.exit

; <label>:600:                                    ; preds = %routine_idivl__ecx.exit370
  %601 = srem i64 %591, %589
  %602 = getelementptr inbounds %union.anon, %union.anon* %580, i64 0, i32 0
  %603 = and i64 %592, 4294967295
  store i64 %603, i64* %602, align 8
  %604 = getelementptr inbounds %union.anon, %union.anon* %584, i64 0, i32 0
  %605 = and i64 %601, 4294967295
  store i64 %605, i64* %604, align 8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %606, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %607, align 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %608, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %609, align 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %610, align 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %611, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %596, %600
  %612 = phi %struct.Memory* [ %599, %596 ], [ %loadMem_450f75, %600 ]
  store %struct.Memory* %612, %struct.Memory** %MEMORY
  %loadMem_450f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 7
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %RDX.i350
  %620 = load i64, i64* %PC.i349
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i349
  %622 = trunc i64 %619 to i32
  %623 = sub i32 %622, 1
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i350, align 8
  %625 = icmp ult i32 %622, 1
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %626, i8* %627, align 1
  %628 = and i32 %623, 255
  %629 = call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %632, i8* %633, align 1
  %634 = xor i64 1, %619
  %635 = trunc i64 %634 to i32
  %636 = xor i32 %635, %623
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %639, i8* %640, align 1
  %641 = icmp eq i32 %623, 0
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %642, i8* %643, align 1
  %644 = lshr i32 %623, 31
  %645 = trunc i32 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %645, i8* %646, align 1
  %647 = lshr i32 %622, 31
  %648 = xor i32 %644, %647
  %649 = add i32 %648, %647
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %651, i8* %652, align 1
  store %struct.Memory* %loadMem_450f77, %struct.Memory** %MEMORY
  %loadMem_450f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 15
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 19
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %R9.i348 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RBP.i347
  %663 = sub i64 %662, 56
  %664 = load i64, i64* %PC.i346
  %665 = add i64 %664, 4
  store i64 %665, i64* %PC.i346
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666
  store i64 %667, i64* %R9.i348, align 8
  store %struct.Memory* %loadMem_450f7a, %struct.Memory** %MEMORY
  %loadMem_450f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %EDX.i344 = bitcast %union.anon* %673 to i32*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i345
  %678 = sub i64 %677, 64
  %679 = load i32, i32* %EDX.i344
  %680 = zext i32 %679 to i64
  %681 = load i64, i64* %PC.i343
  %682 = add i64 %681, 3
  store i64 %682, i64* %PC.i343
  %683 = inttoptr i64 %678 to i32*
  store i32 %679, i32* %683
  store %struct.Memory* %loadMem_450f7e, %struct.Memory** %MEMORY
  %loadMem_450f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 7
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 19
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %R9.i = bitcast %union.anon* %692 to i64*
  %693 = load i64, i64* %R9.i
  %694 = load i64, i64* %PC.i341
  %695 = add i64 %694, 3
  store i64 %695, i64* %PC.i341
  store i64 %693, i64* %RDX.i342, align 8
  store %struct.Memory* %loadMem_450f81, %struct.Memory** %MEMORY
  %loadMem_450f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 5
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 15
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RBP.i340
  %706 = sub i64 %705, 60
  %707 = load i64, i64* %PC.i338
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i338
  %709 = inttoptr i64 %706 to i32*
  %710 = load i32, i32* %709
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_450f84, %struct.Memory** %MEMORY
  %loadMem_450f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 17
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %717 to i32*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %720 to i64*
  %721 = bitcast i32* %R8D.i to i64*
  %722 = load i64, i64* %RBP.i337
  %723 = sub i64 %722, 64
  %724 = load i64, i64* %PC.i336
  %725 = add i64 %724, 4
  store i64 %725, i64* %PC.i336
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %721, align 8
  store %struct.Memory* %loadMem_450f87, %struct.Memory** %MEMORY
  %loadMem1_450f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i335
  %733 = add i64 %732, 4357
  %734 = load i64, i64* %PC.i335
  %735 = add i64 %734, 5
  %736 = load i64, i64* %PC.i335
  %737 = add i64 %736, 5
  store i64 %737, i64* %PC.i335
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = add i64 %739, -8
  %741 = inttoptr i64 %740 to i64*
  store i64 %735, i64* %741
  store i64 %740, i64* %738, align 8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %733, i64* %742, align 8
  store %struct.Memory* %loadMem1_450f8b, %struct.Memory** %MEMORY
  %loadMem2_450f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_450f8b = load i64, i64* %3
  %call2_450f8b = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_450f8b, %struct.Memory* %loadMem2_450f8b)
  store %struct.Memory* %call2_450f8b, %struct.Memory** %MEMORY
  br label %block_.L_450f90

block_.L_450f90:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_450f32
  %loadMem_450f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 15
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i334
  %750 = sub i64 %749, 28
  %751 = load i64, i64* %PC.i333
  %752 = add i64 %751, 7
  store i64 %752, i64* %PC.i333
  %753 = inttoptr i64 %750 to i32*
  store i32 21, i32* %753
  store %struct.Memory* %loadMem_450f90, %struct.Memory** %MEMORY
  br label %block_.L_450f97

block_.L_450f97:                                  ; preds = %block_.L_4511fa, %block_.L_450f90
  %loadMem_450f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 15
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RBP.i332
  %761 = sub i64 %760, 28
  %762 = load i64, i64* %PC.i331
  %763 = add i64 %762, 7
  store i64 %763, i64* %PC.i331
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764
  %766 = sub i32 %765, 400
  %767 = icmp ult i32 %765, 400
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %768, i8* %769, align 1
  %770 = and i32 %766, 255
  %771 = call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %774, i8* %775, align 1
  %776 = xor i32 %765, 400
  %777 = xor i32 %776, %766
  %778 = lshr i32 %777, 4
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %780, i8* %781, align 1
  %782 = icmp eq i32 %766, 0
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %783, i8* %784, align 1
  %785 = lshr i32 %766, 31
  %786 = trunc i32 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %786, i8* %787, align 1
  %788 = lshr i32 %765, 31
  %789 = xor i32 %785, %788
  %790 = add i32 %789, %788
  %791 = icmp eq i32 %790, 2
  %792 = zext i1 %791 to i8
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %792, i8* %793, align 1
  store %struct.Memory* %loadMem_450f97, %struct.Memory** %MEMORY
  %loadMem_450f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %PC.i330
  %798 = add i64 %797, 618
  %799 = load i64, i64* %PC.i330
  %800 = add i64 %799, 6
  %801 = load i64, i64* %PC.i330
  %802 = add i64 %801, 6
  store i64 %802, i64* %PC.i330
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %804 = load i8, i8* %803, align 1
  %805 = icmp ne i8 %804, 0
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %807 = load i8, i8* %806, align 1
  %808 = icmp ne i8 %807, 0
  %809 = xor i1 %805, %808
  %810 = xor i1 %809, true
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %BRANCH_TAKEN, align 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %813 = select i1 %809, i64 %800, i64 %798
  store i64 %813, i64* %812, align 8
  store %struct.Memory* %loadMem_450f9e, %struct.Memory** %MEMORY
  %loadBr_450f9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450f9e = icmp eq i8 %loadBr_450f9e, 1
  br i1 %cmpBr_450f9e, label %block_.L_451208, label %block_450fa4

block_450fa4:                                     ; preds = %block_.L_450f97
  %loadMem_450fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 1
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 15
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %RBP.i329
  %824 = sub i64 %823, 28
  %825 = load i64, i64* %PC.i327
  %826 = add i64 %825, 4
  store i64 %826, i64* %PC.i327
  %827 = inttoptr i64 %824 to i32*
  %828 = load i32, i32* %827
  %829 = sext i32 %828 to i64
  store i64 %829, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_450fa4, %struct.Memory** %MEMORY
  %loadMem_450fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 5
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RAX.i325
  %840 = add i64 %839, 12099168
  %841 = load i64, i64* %PC.i324
  %842 = add i64 %841, 8
  store i64 %842, i64* %PC.i324
  %843 = inttoptr i64 %840 to i8*
  %844 = load i8, i8* %843
  %845 = zext i8 %844 to i64
  store i64 %845, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_450fa8, %struct.Memory** %MEMORY
  %loadMem_450fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 5
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %ECX.i323 = bitcast %union.anon* %851 to i32*
  %852 = load i32, i32* %ECX.i323
  %853 = zext i32 %852 to i64
  %854 = load i64, i64* %PC.i322
  %855 = add i64 %854, 3
  store i64 %855, i64* %PC.i322
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %856, align 1
  %857 = and i32 %852, 255
  %858 = call i32 @llvm.ctpop.i32(i32 %857)
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %861, i8* %862, align 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %863, align 1
  %864 = icmp eq i32 %852, 0
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %865, i8* %866, align 1
  %867 = lshr i32 %852, 31
  %868 = trunc i32 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %868, i8* %869, align 1
  %870 = lshr i32 %852, 31
  %871 = xor i32 %867, %870
  %872 = add i32 %871, %870
  %873 = icmp eq i32 %872, 2
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %874, i8* %875, align 1
  store %struct.Memory* %loadMem_450fb0, %struct.Memory** %MEMORY
  %loadMem_450fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %PC.i321
  %880 = add i64 %879, 11
  %881 = load i64, i64* %PC.i321
  %882 = add i64 %881, 6
  %883 = load i64, i64* %PC.i321
  %884 = add i64 %883, 6
  store i64 %884, i64* %PC.i321
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %886 = load i8, i8* %885, align 1
  store i8 %886, i8* %BRANCH_TAKEN, align 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %888 = icmp ne i8 %886, 0
  %889 = select i1 %888, i64 %880, i64 %882
  store i64 %889, i64* %887, align 8
  store %struct.Memory* %loadMem_450fb3, %struct.Memory** %MEMORY
  %loadBr_450fb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450fb3 = icmp eq i8 %loadBr_450fb3, 1
  br i1 %cmpBr_450fb3, label %block_.L_450fbe, label %block_450fb9

block_450fb9:                                     ; preds = %block_450fa4
  %loadMem_450fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i320
  %894 = add i64 %893, 577
  %895 = load i64, i64* %PC.i320
  %896 = add i64 %895, 5
  store i64 %896, i64* %PC.i320
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %894, i64* %897, align 8
  store %struct.Memory* %loadMem_450fb9, %struct.Memory** %MEMORY
  br label %block_.L_4511fa

block_.L_450fbe:                                  ; preds = %block_450fa4
  %loadMem_450fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 15
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RBP.i319
  %905 = sub i64 %904, 32
  %906 = load i64, i64* %PC.i318
  %907 = add i64 %906, 7
  store i64 %907, i64* %PC.i318
  %908 = inttoptr i64 %905 to i32*
  store i32 0, i32* %908
  store %struct.Memory* %loadMem_450fbe, %struct.Memory** %MEMORY
  br label %block_.L_450fc5

block_.L_450fc5:                                  ; preds = %block_.L_45119d, %block_.L_450fbe
  %loadMem_450fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 15
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %RBP.i317
  %916 = sub i64 %915, 32
  %917 = load i64, i64* %PC.i316
  %918 = add i64 %917, 4
  store i64 %918, i64* %PC.i316
  %919 = inttoptr i64 %916 to i32*
  %920 = load i32, i32* %919
  %921 = sub i32 %920, 8
  %922 = icmp ult i32 %920, 8
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %923, i8* %924, align 1
  %925 = and i32 %921, 255
  %926 = call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %929, i8* %930, align 1
  %931 = xor i32 %920, 8
  %932 = xor i32 %931, %921
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %935, i8* %936, align 1
  %937 = icmp eq i32 %921, 0
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %938, i8* %939, align 1
  %940 = lshr i32 %921, 31
  %941 = trunc i32 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %941, i8* %942, align 1
  %943 = lshr i32 %920, 31
  %944 = xor i32 %940, %943
  %945 = add i32 %944, %943
  %946 = icmp eq i32 %945, 2
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %947, i8* %948, align 1
  store %struct.Memory* %loadMem_450fc5, %struct.Memory** %MEMORY
  %loadMem_450fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %PC.i315
  %953 = add i64 %952, 482
  %954 = load i64, i64* %PC.i315
  %955 = add i64 %954, 6
  %956 = load i64, i64* %PC.i315
  %957 = add i64 %956, 6
  store i64 %957, i64* %PC.i315
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %959 = load i8, i8* %958, align 1
  %960 = icmp ne i8 %959, 0
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %962 = load i8, i8* %961, align 1
  %963 = icmp ne i8 %962, 0
  %964 = xor i1 %960, %963
  %965 = xor i1 %964, true
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %BRANCH_TAKEN, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %968 = select i1 %964, i64 %955, i64 %953
  store i64 %968, i64* %967, align 8
  store %struct.Memory* %loadMem_450fc9, %struct.Memory** %MEMORY
  %loadBr_450fc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450fc9 = icmp eq i8 %loadBr_450fc9, 1
  br i1 %cmpBr_450fc9, label %block_.L_4511ab, label %block_450fcf

block_450fcf:                                     ; preds = %block_.L_450fc5
  %loadMem_450fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 1
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %RBP.i314
  %979 = sub i64 %978, 28
  %980 = load i64, i64* %PC.i312
  %981 = add i64 %980, 3
  store i64 %981, i64* %PC.i312
  %982 = inttoptr i64 %979 to i32*
  %983 = load i32, i32* %982
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_450fcf, %struct.Memory** %MEMORY
  %loadMem_450fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 5
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 15
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %RBP.i311
  %995 = sub i64 %994, 32
  %996 = load i64, i64* %PC.i309
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC.i309
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998
  %1000 = sext i32 %999 to i64
  store i64 %1000, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_450fd2, %struct.Memory** %MEMORY
  %loadMem_450fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 1
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 5
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RAX.i307
  %1011 = load i64, i64* %RCX.i308
  %1012 = mul i64 %1011, 4
  %1013 = add i64 %1012, 8053168
  %1014 = load i64, i64* %PC.i306
  %1015 = add i64 %1014, 7
  store i64 %1015, i64* %PC.i306
  %1016 = trunc i64 %1010 to i32
  %1017 = inttoptr i64 %1013 to i32*
  %1018 = load i32, i32* %1017
  %1019 = add i32 %1018, %1016
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i307, align 8
  %1021 = icmp ult i32 %1019, %1016
  %1022 = icmp ult i32 %1019, %1018
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1024, i8* %1025, align 1
  %1026 = and i32 %1019, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1
  %1032 = xor i32 %1018, %1016
  %1033 = xor i32 %1032, %1019
  %1034 = lshr i32 %1033, 4
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1036, i8* %1037, align 1
  %1038 = icmp eq i32 %1019, 0
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1039, i8* %1040, align 1
  %1041 = lshr i32 %1019, 31
  %1042 = trunc i32 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1042, i8* %1043, align 1
  %1044 = lshr i32 %1016, 31
  %1045 = lshr i32 %1018, 31
  %1046 = xor i32 %1041, %1044
  %1047 = xor i32 %1041, %1045
  %1048 = add i32 %1046, %1047
  %1049 = icmp eq i32 %1048, 2
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1050, i8* %1051, align 1
  store %struct.Memory* %loadMem_450fd6, %struct.Memory** %MEMORY
  %loadMem_450fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 1
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %EAX.i304 = bitcast %union.anon* %1057 to i32*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 15
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1060 to i64*
  %1061 = load i64, i64* %RBP.i305
  %1062 = sub i64 %1061, 36
  %1063 = load i32, i32* %EAX.i304
  %1064 = zext i32 %1063 to i64
  %1065 = load i64, i64* %PC.i303
  %1066 = add i64 %1065, 3
  store i64 %1066, i64* %PC.i303
  %1067 = inttoptr i64 %1062 to i32*
  store i32 %1063, i32* %1067
  store %struct.Memory* %loadMem_450fdd, %struct.Memory** %MEMORY
  %loadMem_450fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 5
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i302
  %1078 = sub i64 %1077, 36
  %1079 = load i64, i64* %PC.i300
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC.i300
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_450fe0, %struct.Memory** %MEMORY
  %loadMem_450fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 5
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RCX.i299
  %1094 = add i64 %1093, 12099168
  %1095 = load i64, i64* %PC.i297
  %1096 = add i64 %1095, 8
  store i64 %1096, i64* %PC.i297
  %1097 = inttoptr i64 %1094 to i8*
  %1098 = load i8, i8* %1097
  %1099 = zext i8 %1098 to i64
  store i64 %1099, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_450fe4, %struct.Memory** %MEMORY
  %loadMem_450fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 1
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %1105 to i32*
  %1106 = load i32, i32* %EAX.i296
  %1107 = zext i32 %1106 to i64
  %1108 = load i64, i64* %PC.i295
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC.i295
  %1110 = sub i32 %1106, 1
  %1111 = icmp ult i32 %1106, 1
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1112, i8* %1113, align 1
  %1114 = and i32 %1110, 255
  %1115 = call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1118, i8* %1119, align 1
  %1120 = xor i64 1, %1107
  %1121 = trunc i64 %1120 to i32
  %1122 = xor i32 %1121, %1110
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1125, i8* %1126, align 1
  %1127 = icmp eq i32 %1110, 0
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1128, i8* %1129, align 1
  %1130 = lshr i32 %1110, 31
  %1131 = trunc i32 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1131, i8* %1132, align 1
  %1133 = lshr i32 %1106, 31
  %1134 = xor i32 %1130, %1133
  %1135 = add i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1137, i8* %1138, align 1
  store %struct.Memory* %loadMem_450fec, %struct.Memory** %MEMORY
  %loadMem_450fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %PC.i294
  %1143 = add i64 %1142, 27
  %1144 = load i64, i64* %PC.i294
  %1145 = add i64 %1144, 6
  %1146 = load i64, i64* %PC.i294
  %1147 = add i64 %1146, 6
  store i64 %1147, i64* %PC.i294
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1149 = load i8, i8* %1148, align 1
  store i8 %1149, i8* %BRANCH_TAKEN, align 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1151 = icmp ne i8 %1149, 0
  %1152 = select i1 %1151, i64 %1143, i64 %1145
  store i64 %1152, i64* %1150, align 8
  store %struct.Memory* %loadMem_450fef, %struct.Memory** %MEMORY
  %loadBr_450fef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450fef = icmp eq i8 %loadBr_450fef, 1
  br i1 %cmpBr_450fef, label %block_.L_45100a, label %block_450ff5

block_450ff5:                                     ; preds = %block_450fcf
  %loadMem_450ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i293
  %1163 = sub i64 %1162, 36
  %1164 = load i64, i64* %PC.i291
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC.i291
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_450ff5, %struct.Memory** %MEMORY
  %loadMem_450ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 5
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RAX.i289
  %1179 = add i64 %1178, 12099168
  %1180 = load i64, i64* %PC.i288
  %1181 = add i64 %1180, 8
  store i64 %1181, i64* %PC.i288
  %1182 = inttoptr i64 %1179 to i8*
  %1183 = load i8, i8* %1182
  %1184 = zext i8 %1183 to i64
  store i64 %1184, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_450ff9, %struct.Memory** %MEMORY
  %loadMem_451001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %ECX.i287 = bitcast %union.anon* %1190 to i32*
  %1191 = load i32, i32* %ECX.i287
  %1192 = zext i32 %1191 to i64
  %1193 = load i64, i64* %PC.i286
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %PC.i286
  %1195 = sub i32 %1191, 2
  %1196 = icmp ult i32 %1191, 2
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
  %1205 = xor i64 2, %1192
  %1206 = trunc i64 %1205 to i32
  %1207 = xor i32 %1206, %1195
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1210, i8* %1211, align 1
  %1212 = icmp eq i32 %1195, 0
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1213, i8* %1214, align 1
  %1215 = lshr i32 %1195, 31
  %1216 = trunc i32 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1216, i8* %1217, align 1
  %1218 = lshr i32 %1191, 31
  %1219 = xor i32 %1215, %1218
  %1220 = add i32 %1219, %1218
  %1221 = icmp eq i32 %1220, 2
  %1222 = zext i1 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1222, i8* %1223, align 1
  store %struct.Memory* %loadMem_451001, %struct.Memory** %MEMORY
  %loadMem_451004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %PC.i285
  %1228 = add i64 %1227, 404
  %1229 = load i64, i64* %PC.i285
  %1230 = add i64 %1229, 6
  %1231 = load i64, i64* %PC.i285
  %1232 = add i64 %1231, 6
  store i64 %1232, i64* %PC.i285
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1234 = load i8, i8* %1233, align 1
  %1235 = icmp eq i8 %1234, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %BRANCH_TAKEN, align 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1238 = select i1 %1235, i64 %1228, i64 %1230
  store i64 %1238, i64* %1237, align 8
  store %struct.Memory* %loadMem_451004, %struct.Memory** %MEMORY
  %loadBr_451004 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451004 = icmp eq i8 %loadBr_451004, 1
  br i1 %cmpBr_451004, label %block_.L_451198, label %block_.L_45100a

block_.L_45100a:                                  ; preds = %block_450ff5, %block_450fcf
  %loadMem_45100a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 11
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RDI.i283 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i284
  %1249 = sub i64 %1248, 36
  %1250 = load i64, i64* %PC.i282
  %1251 = add i64 %1250, 3
  store i64 %1251, i64* %PC.i282
  %1252 = inttoptr i64 %1249 to i32*
  %1253 = load i32, i32* %1252
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RDI.i283, align 8
  store %struct.Memory* %loadMem_45100a, %struct.Memory** %MEMORY
  %loadMem_45100d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 9
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RSI.i280 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i281
  %1265 = sub i64 %1264, 12
  %1266 = load i64, i64* %PC.i279
  %1267 = add i64 %1266, 3
  store i64 %1267, i64* %PC.i279
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RSI.i280, align 8
  store %struct.Memory* %loadMem_45100d, %struct.Memory** %MEMORY
  %loadMem1_451010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %PC.i278
  %1275 = add i64 %1274, -201696
  %1276 = load i64, i64* %PC.i278
  %1277 = add i64 %1276, 5
  %1278 = load i64, i64* %PC.i278
  %1279 = add i64 %1278, 5
  store i64 %1279, i64* %PC.i278
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1281 = load i64, i64* %1280, align 8
  %1282 = add i64 %1281, -8
  %1283 = inttoptr i64 %1282 to i64*
  store i64 %1277, i64* %1283
  store i64 %1282, i64* %1280, align 8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1275, i64* %1284, align 8
  store %struct.Memory* %loadMem1_451010, %struct.Memory** %MEMORY
  %loadMem2_451010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451010 = load i64, i64* %3
  %call2_451010 = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64 %loadPC_451010, %struct.Memory* %loadMem2_451010)
  store %struct.Memory* %call2_451010, %struct.Memory** %MEMORY
  %loadMem_451015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 1
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %1290 to i32*
  %1291 = load i32, i32* %EAX.i277
  %1292 = zext i32 %1291 to i64
  %1293 = load i64, i64* %PC.i276
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %PC.i276
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1295, align 1
  %1296 = and i32 %1291, 255
  %1297 = call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1300, i8* %1301, align 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1302, align 1
  %1303 = icmp eq i32 %1291, 0
  %1304 = zext i1 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1304, i8* %1305, align 1
  %1306 = lshr i32 %1291, 31
  %1307 = trunc i32 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1307, i8* %1308, align 1
  %1309 = lshr i32 %1291, 31
  %1310 = xor i32 %1306, %1309
  %1311 = add i32 %1310, %1309
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1313, i8* %1314, align 1
  store %struct.Memory* %loadMem_451015, %struct.Memory** %MEMORY
  %loadMem_451018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %PC.i275
  %1319 = add i64 %1318, 58
  %1320 = load i64, i64* %PC.i275
  %1321 = add i64 %1320, 6
  %1322 = load i64, i64* %PC.i275
  %1323 = add i64 %1322, 6
  store i64 %1323, i64* %PC.i275
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1325 = load i8, i8* %1324, align 1
  %1326 = icmp eq i8 %1325, 0
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %BRANCH_TAKEN, align 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1329 = select i1 %1326, i64 %1319, i64 %1321
  store i64 %1329, i64* %1328, align 8
  store %struct.Memory* %loadMem_451018, %struct.Memory** %MEMORY
  %loadBr_451018 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451018 = icmp eq i8 %loadBr_451018, 1
  br i1 %cmpBr_451018, label %block_.L_451052, label %block_45101e

block_45101e:                                     ; preds = %block_.L_45100a
  %loadMem_45101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 11
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RDI.i273 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 15
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RBP.i274
  %1340 = sub i64 %1339, 36
  %1341 = load i64, i64* %PC.i272
  %1342 = add i64 %1341, 3
  store i64 %1342, i64* %PC.i272
  %1343 = inttoptr i64 %1340 to i32*
  %1344 = load i32, i32* %1343
  %1345 = zext i32 %1344 to i64
  store i64 %1345, i64* %RDI.i273, align 8
  store %struct.Memory* %loadMem_45101e, %struct.Memory** %MEMORY
  %loadMem_451021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 9
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RSI.i270 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RBP.i271
  %1356 = sub i64 %1355, 12
  %1357 = load i64, i64* %PC.i269
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %PC.i269
  %1359 = inttoptr i64 %1356 to i32*
  %1360 = load i32, i32* %1359
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RSI.i270, align 8
  store %struct.Memory* %loadMem_451021, %struct.Memory** %MEMORY
  %loadMem1_451024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %PC.i268
  %1366 = add i64 %1365, -188164
  %1367 = load i64, i64* %PC.i268
  %1368 = add i64 %1367, 5
  %1369 = load i64, i64* %PC.i268
  %1370 = add i64 %1369, 5
  store i64 %1370, i64* %PC.i268
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1372 = load i64, i64* %1371, align 8
  %1373 = add i64 %1372, -8
  %1374 = inttoptr i64 %1373 to i64*
  store i64 %1368, i64* %1374
  store i64 %1373, i64* %1371, align 8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1366, i64* %1375, align 8
  store %struct.Memory* %loadMem1_451024, %struct.Memory** %MEMORY
  %loadMem2_451024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451024 = load i64, i64* %3
  %call2_451024 = call %struct.Memory* @sub_423120.are_neighbor_dragons(%struct.State* %0, i64 %loadPC_451024, %struct.Memory* %loadMem2_451024)
  store %struct.Memory* %call2_451024, %struct.Memory** %MEMORY
  %loadMem_451029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 1
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %1381 to i32*
  %1382 = load i32, i32* %EAX.i267
  %1383 = zext i32 %1382 to i64
  %1384 = load i64, i64* %PC.i266
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC.i266
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1386, align 1
  %1387 = and i32 %1382, 255
  %1388 = call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1391, i8* %1392, align 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1393, align 1
  %1394 = icmp eq i32 %1382, 0
  %1395 = zext i1 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1395, i8* %1396, align 1
  %1397 = lshr i32 %1382, 31
  %1398 = trunc i32 %1397 to i8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1398, i8* %1399, align 1
  %1400 = lshr i32 %1382, 31
  %1401 = xor i32 %1397, %1400
  %1402 = add i32 %1401, %1400
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1404, i8* %1405, align 1
  store %struct.Memory* %loadMem_451029, %struct.Memory** %MEMORY
  %loadMem_45102c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1408 to i64*
  %1409 = load i64, i64* %PC.i265
  %1410 = add i64 %1409, 364
  %1411 = load i64, i64* %PC.i265
  %1412 = add i64 %1411, 6
  %1413 = load i64, i64* %PC.i265
  %1414 = add i64 %1413, 6
  store i64 %1414, i64* %PC.i265
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1416 = load i8, i8* %1415, align 1
  store i8 %1416, i8* %BRANCH_TAKEN, align 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1418 = icmp ne i8 %1416, 0
  %1419 = select i1 %1418, i64 %1410, i64 %1412
  store i64 %1419, i64* %1417, align 8
  store %struct.Memory* %loadMem_45102c, %struct.Memory** %MEMORY
  %loadBr_45102c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45102c = icmp eq i8 %loadBr_45102c, 1
  br i1 %cmpBr_45102c, label %block_.L_451198, label %block_451032

block_451032:                                     ; preds = %block_45101e
  %loadMem_451032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 1
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 15
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RBP.i264
  %1430 = sub i64 %1429, 36
  %1431 = load i64, i64* %PC.i262
  %1432 = add i64 %1431, 4
  store i64 %1432, i64* %PC.i262
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_451032, %struct.Memory** %MEMORY
  %loadMem_451036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 1
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 5
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RAX.i260
  %1446 = add i64 %1445, 12099168
  %1447 = load i64, i64* %PC.i259
  %1448 = add i64 %1447, 8
  store i64 %1448, i64* %PC.i259
  %1449 = inttoptr i64 %1446 to i8*
  %1450 = load i8, i8* %1449
  %1451 = zext i8 %1450 to i64
  store i64 %1451, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_451036, %struct.Memory** %MEMORY
  %loadMem_45103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 1
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 15
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1460 to i64*
  %1461 = load i64, i64* %RBP.i258
  %1462 = sub i64 %1461, 12
  %1463 = load i64, i64* %PC.i256
  %1464 = add i64 %1463, 4
  store i64 %1464, i64* %PC.i256
  %1465 = inttoptr i64 %1462 to i32*
  %1466 = load i32, i32* %1465
  %1467 = sext i32 %1466 to i64
  store i64 %1467, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_45103e, %struct.Memory** %MEMORY
  %loadMem_451042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 1
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 7
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %RAX.i254
  %1478 = add i64 %1477, 12099168
  %1479 = load i64, i64* %PC.i253
  %1480 = add i64 %1479, 8
  store i64 %1480, i64* %PC.i253
  %1481 = inttoptr i64 %1478 to i8*
  %1482 = load i8, i8* %1481
  %1483 = zext i8 %1482 to i64
  store i64 %1483, i64* %RDX.i255, align 8
  store %struct.Memory* %loadMem_451042, %struct.Memory** %MEMORY
  %loadMem_45104a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 5
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %1489 to i32*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 7
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %EDX.i252 = bitcast %union.anon* %1492 to i32*
  %1493 = load i32, i32* %ECX.i251
  %1494 = zext i32 %1493 to i64
  %1495 = load i32, i32* %EDX.i252
  %1496 = zext i32 %1495 to i64
  %1497 = load i64, i64* %PC.i250
  %1498 = add i64 %1497, 2
  store i64 %1498, i64* %PC.i250
  %1499 = sub i32 %1493, %1495
  %1500 = icmp ult i32 %1493, %1495
  %1501 = zext i1 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1501, i8* %1502, align 1
  %1503 = and i32 %1499, 255
  %1504 = call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1507, i8* %1508, align 1
  %1509 = xor i64 %1496, %1494
  %1510 = trunc i64 %1509 to i32
  %1511 = xor i32 %1510, %1499
  %1512 = lshr i32 %1511, 4
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1514, i8* %1515, align 1
  %1516 = icmp eq i32 %1499, 0
  %1517 = zext i1 %1516 to i8
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1517, i8* %1518, align 1
  %1519 = lshr i32 %1499, 31
  %1520 = trunc i32 %1519 to i8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1520, i8* %1521, align 1
  %1522 = lshr i32 %1493, 31
  %1523 = lshr i32 %1495, 31
  %1524 = xor i32 %1523, %1522
  %1525 = xor i32 %1519, %1522
  %1526 = add i32 %1525, %1524
  %1527 = icmp eq i32 %1526, 2
  %1528 = zext i1 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1528, i8* %1529, align 1
  store %struct.Memory* %loadMem_45104a, %struct.Memory** %MEMORY
  %loadMem_45104c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %PC.i249
  %1534 = add i64 %1533, 332
  %1535 = load i64, i64* %PC.i249
  %1536 = add i64 %1535, 6
  %1537 = load i64, i64* %PC.i249
  %1538 = add i64 %1537, 6
  store i64 %1538, i64* %PC.i249
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1540 = load i8, i8* %1539, align 1
  %1541 = icmp eq i8 %1540, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %BRANCH_TAKEN, align 1
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1544 = select i1 %1541, i64 %1534, i64 %1536
  store i64 %1544, i64* %1543, align 8
  store %struct.Memory* %loadMem_45104c, %struct.Memory** %MEMORY
  %loadBr_45104c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45104c = icmp eq i8 %loadBr_45104c, 1
  br i1 %cmpBr_45104c, label %block_.L_451198, label %block_.L_451052

block_.L_451052:                                  ; preds = %block_451032, %block_.L_45100a
  %loadMem_451052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 11
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 15
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RBP.i248
  %1555 = sub i64 %1554, 36
  %1556 = load i64, i64* %PC.i246
  %1557 = add i64 %1556, 3
  store i64 %1557, i64* %PC.i246
  %1558 = inttoptr i64 %1555 to i32*
  %1559 = load i32, i32* %1558
  %1560 = zext i32 %1559 to i64
  store i64 %1560, i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_451052, %struct.Memory** %MEMORY
  %loadMem1_451055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %PC.i245
  %1565 = add i64 %1564, -268501
  %1566 = load i64, i64* %PC.i245
  %1567 = add i64 %1566, 5
  %1568 = load i64, i64* %PC.i245
  %1569 = add i64 %1568, 5
  store i64 %1569, i64* %PC.i245
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1571 = load i64, i64* %1570, align 8
  %1572 = add i64 %1571, -8
  %1573 = inttoptr i64 %1572 to i64*
  store i64 %1567, i64* %1573
  store i64 %1572, i64* %1570, align 8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1565, i64* %1574, align 8
  store %struct.Memory* %loadMem1_451055, %struct.Memory** %MEMORY
  %loadMem2_451055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451055 = load i64, i64* %3
  %call2_451055 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_451055, %struct.Memory* %loadMem2_451055)
  store %struct.Memory* %call2_451055, %struct.Memory** %MEMORY
  %loadMem_45105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %1580 to i32*
  %1581 = load i32, i32* %EAX.i244
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %PC.i243
  %1584 = add i64 %1583, 3
  store i64 %1584, i64* %PC.i243
  %1585 = sub i32 %1581, 4
  %1586 = icmp ult i32 %1581, 4
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1587, i8* %1588, align 1
  %1589 = and i32 %1585, 255
  %1590 = call i32 @llvm.ctpop.i32(i32 %1589)
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1593, i8* %1594, align 1
  %1595 = xor i64 4, %1582
  %1596 = trunc i64 %1595 to i32
  %1597 = xor i32 %1596, %1585
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1600, i8* %1601, align 1
  %1602 = icmp eq i32 %1585, 0
  %1603 = zext i1 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1603, i8* %1604, align 1
  %1605 = lshr i32 %1585, 31
  %1606 = trunc i32 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i32 %1581, 31
  %1609 = xor i32 %1605, %1608
  %1610 = add i32 %1609, %1608
  %1611 = icmp eq i32 %1610, 2
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1612, i8* %1613, align 1
  store %struct.Memory* %loadMem_45105a, %struct.Memory** %MEMORY
  %loadMem_45105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %PC.i242
  %1618 = add i64 %1617, 23
  %1619 = load i64, i64* %PC.i242
  %1620 = add i64 %1619, 6
  %1621 = load i64, i64* %PC.i242
  %1622 = add i64 %1621, 6
  store i64 %1622, i64* %PC.i242
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1624 = load i8, i8* %1623, align 1
  %1625 = icmp ne i8 %1624, 0
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1627 = load i8, i8* %1626, align 1
  %1628 = icmp ne i8 %1627, 0
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1630 = load i8, i8* %1629, align 1
  %1631 = icmp ne i8 %1630, 0
  %1632 = xor i1 %1628, %1631
  %1633 = or i1 %1625, %1632
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %BRANCH_TAKEN, align 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1636 = select i1 %1633, i64 %1618, i64 %1620
  store i64 %1636, i64* %1635, align 8
  store %struct.Memory* %loadMem_45105d, %struct.Memory** %MEMORY
  %loadBr_45105d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45105d = icmp eq i8 %loadBr_45105d, 1
  br i1 %cmpBr_45105d, label %block_.L_451074, label %block_451063

block_451063:                                     ; preds = %block_.L_451052
  %loadMem_451063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 11
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RDI.i240 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 15
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RBP.i241
  %1647 = sub i64 %1646, 28
  %1648 = load i64, i64* %PC.i239
  %1649 = add i64 %1648, 3
  store i64 %1649, i64* %PC.i239
  %1650 = inttoptr i64 %1647 to i32*
  %1651 = load i32, i32* %1650
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RDI.i240, align 8
  store %struct.Memory* %loadMem_451063, %struct.Memory** %MEMORY
  %loadMem1_451066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1655 to i64*
  %1656 = load i64, i64* %PC.i238
  %1657 = add i64 %1656, -268758
  %1658 = load i64, i64* %PC.i238
  %1659 = add i64 %1658, 5
  %1660 = load i64, i64* %PC.i238
  %1661 = add i64 %1660, 5
  store i64 %1661, i64* %PC.i238
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1663 = load i64, i64* %1662, align 8
  %1664 = add i64 %1663, -8
  %1665 = inttoptr i64 %1664 to i64*
  store i64 %1659, i64* %1665
  store i64 %1664, i64* %1662, align 8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1657, i64* %1666, align 8
  store %struct.Memory* %loadMem1_451066, %struct.Memory** %MEMORY
  %loadMem2_451066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451066 = load i64, i64* %3
  %call2_451066 = call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* %0, i64 %loadPC_451066, %struct.Memory* %loadMem2_451066)
  store %struct.Memory* %call2_451066, %struct.Memory** %MEMORY
  %loadMem_45106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 1
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %1672 to i32*
  %1673 = load i32, i32* %EAX.i237
  %1674 = zext i32 %1673 to i64
  %1675 = load i64, i64* %PC.i236
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %PC.i236
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1677, align 1
  %1678 = and i32 %1673, 255
  %1679 = call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1682, i8* %1683, align 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1684, align 1
  %1685 = icmp eq i32 %1673, 0
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1686, i8* %1687, align 1
  %1688 = lshr i32 %1673, 31
  %1689 = trunc i32 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1689, i8* %1690, align 1
  %1691 = lshr i32 %1673, 31
  %1692 = xor i32 %1688, %1691
  %1693 = add i32 %1692, %1691
  %1694 = icmp eq i32 %1693, 2
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1695, i8* %1696, align 1
  store %struct.Memory* %loadMem_45106b, %struct.Memory** %MEMORY
  %loadMem_45106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %PC.i235
  %1701 = add i64 %1700, 298
  %1702 = load i64, i64* %PC.i235
  %1703 = add i64 %1702, 6
  %1704 = load i64, i64* %PC.i235
  %1705 = add i64 %1704, 6
  store i64 %1705, i64* %PC.i235
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1707 = load i8, i8* %1706, align 1
  store i8 %1707, i8* %BRANCH_TAKEN, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1709 = icmp ne i8 %1707, 0
  %1710 = select i1 %1709, i64 %1701, i64 %1703
  store i64 %1710, i64* %1708, align 8
  store %struct.Memory* %loadMem_45106e, %struct.Memory** %MEMORY
  %loadBr_45106e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45106e = icmp eq i8 %loadBr_45106e, 1
  br i1 %cmpBr_45106e, label %block_.L_451198, label %block_.L_451074

block_.L_451074:                                  ; preds = %block_451063, %block_.L_451052
  %loadMem_451074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 33
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 15
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1716 to i64*
  %1717 = load i64, i64* %RBP.i234
  %1718 = sub i64 %1717, 32
  %1719 = load i64, i64* %PC.i233
  %1720 = add i64 %1719, 4
  store i64 %1720, i64* %PC.i233
  %1721 = inttoptr i64 %1718 to i32*
  %1722 = load i32, i32* %1721
  %1723 = sub i32 %1722, 4
  %1724 = icmp ult i32 %1722, 4
  %1725 = zext i1 %1724 to i8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1725, i8* %1726, align 1
  %1727 = and i32 %1723, 255
  %1728 = call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1731, i8* %1732, align 1
  %1733 = xor i32 %1722, 4
  %1734 = xor i32 %1733, %1723
  %1735 = lshr i32 %1734, 4
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1737, i8* %1738, align 1
  %1739 = icmp eq i32 %1723, 0
  %1740 = zext i1 %1739 to i8
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1740, i8* %1741, align 1
  %1742 = lshr i32 %1723, 31
  %1743 = trunc i32 %1742 to i8
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1743, i8* %1744, align 1
  %1745 = lshr i32 %1722, 31
  %1746 = xor i32 %1742, %1745
  %1747 = add i32 %1746, %1745
  %1748 = icmp eq i32 %1747, 2
  %1749 = zext i1 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1749, i8* %1750, align 1
  store %struct.Memory* %loadMem_451074, %struct.Memory** %MEMORY
  %loadMem_451078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 33
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %PC.i232
  %1755 = add i64 %1754, 102
  %1756 = load i64, i64* %PC.i232
  %1757 = add i64 %1756, 6
  %1758 = load i64, i64* %PC.i232
  %1759 = add i64 %1758, 6
  store i64 %1759, i64* %PC.i232
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1761 = load i8, i8* %1760, align 1
  %1762 = icmp ne i8 %1761, 0
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1764 = load i8, i8* %1763, align 1
  %1765 = icmp ne i8 %1764, 0
  %1766 = xor i1 %1762, %1765
  %1767 = xor i1 %1766, true
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %BRANCH_TAKEN, align 1
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1770 = select i1 %1766, i64 %1757, i64 %1755
  store i64 %1770, i64* %1769, align 8
  store %struct.Memory* %loadMem_451078, %struct.Memory** %MEMORY
  %loadBr_451078 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451078 = icmp eq i8 %loadBr_451078, 1
  br i1 %cmpBr_451078, label %block_.L_4510de, label %block_45107e

block_45107e:                                     ; preds = %block_.L_451074
  %loadMem_45107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 11
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RDI.i230 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 15
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RBP.i231
  %1781 = sub i64 %1780, 36
  %1782 = load i64, i64* %PC.i229
  %1783 = add i64 %1782, 3
  store i64 %1783, i64* %PC.i229
  %1784 = inttoptr i64 %1781 to i32*
  %1785 = load i32, i32* %1784
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RDI.i230, align 8
  store %struct.Memory* %loadMem_45107e, %struct.Memory** %MEMORY
  %loadMem_451081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 9
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 15
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %RBP.i228
  %1797 = sub i64 %1796, 12
  %1798 = load i64, i64* %PC.i226
  %1799 = add i64 %1798, 3
  store i64 %1799, i64* %PC.i226
  %1800 = inttoptr i64 %1797 to i32*
  %1801 = load i32, i32* %1800
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RSI.i227, align 8
  store %struct.Memory* %loadMem_451081, %struct.Memory** %MEMORY
  %loadMem1_451084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %PC.i225
  %1807 = add i64 %1806, -201812
  %1808 = load i64, i64* %PC.i225
  %1809 = add i64 %1808, 5
  %1810 = load i64, i64* %PC.i225
  %1811 = add i64 %1810, 5
  store i64 %1811, i64* %PC.i225
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1813 = load i64, i64* %1812, align 8
  %1814 = add i64 %1813, -8
  %1815 = inttoptr i64 %1814 to i64*
  store i64 %1809, i64* %1815
  store i64 %1814, i64* %1812, align 8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1807, i64* %1816, align 8
  store %struct.Memory* %loadMem1_451084, %struct.Memory** %MEMORY
  %loadMem2_451084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451084 = load i64, i64* %3
  %call2_451084 = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64 %loadPC_451084, %struct.Memory* %loadMem2_451084)
  store %struct.Memory* %call2_451084, %struct.Memory** %MEMORY
  %loadMem_451089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 1
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %1822 to i32*
  %1823 = load i32, i32* %EAX.i224
  %1824 = zext i32 %1823 to i64
  %1825 = load i64, i64* %PC.i223
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %PC.i223
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1827, align 1
  %1828 = and i32 %1823, 255
  %1829 = call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1832, i8* %1833, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1834, align 1
  %1835 = icmp eq i32 %1823, 0
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1836, i8* %1837, align 1
  %1838 = lshr i32 %1823, 31
  %1839 = trunc i32 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1839, i8* %1840, align 1
  %1841 = lshr i32 %1823, 31
  %1842 = xor i32 %1838, %1841
  %1843 = add i32 %1842, %1841
  %1844 = icmp eq i32 %1843, 2
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1845, i8* %1846, align 1
  store %struct.Memory* %loadMem_451089, %struct.Memory** %MEMORY
  %loadMem_45108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %PC.i222
  %1851 = add i64 %1850, 34
  %1852 = load i64, i64* %PC.i222
  %1853 = add i64 %1852, 6
  %1854 = load i64, i64* %PC.i222
  %1855 = add i64 %1854, 6
  store i64 %1855, i64* %PC.i222
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1857 = load i8, i8* %1856, align 1
  store i8 %1857, i8* %BRANCH_TAKEN, align 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1859 = icmp ne i8 %1857, 0
  %1860 = select i1 %1859, i64 %1851, i64 %1853
  store i64 %1860, i64* %1858, align 8
  store %struct.Memory* %loadMem_45108c, %struct.Memory** %MEMORY
  %loadBr_45108c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45108c = icmp eq i8 %loadBr_45108c, 1
  br i1 %cmpBr_45108c, label %block_.L_4510ae, label %block_451092

block_451092:                                     ; preds = %block_45107e
  %loadMem_451092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 15
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1867, i64 0, i64 0
  %YMM0.i221 = bitcast %union.VectorReg* %1868 to %"class.std::bitset"*
  %1869 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %1870 = load i64, i64* %RBP.i220
  %1871 = sub i64 %1870, 16
  %1872 = load i64, i64* %PC.i219
  %1873 = add i64 %1872, 5
  store i64 %1873, i64* %PC.i219
  %1874 = inttoptr i64 %1871 to float*
  %1875 = load float, float* %1874
  %1876 = bitcast i8* %1869 to float*
  store float %1875, float* %1876, align 1
  %1877 = getelementptr inbounds i8, i8* %1869, i64 4
  %1878 = bitcast i8* %1877 to float*
  store float 0.000000e+00, float* %1878, align 1
  %1879 = getelementptr inbounds i8, i8* %1869, i64 8
  %1880 = bitcast i8* %1879 to float*
  store float 0.000000e+00, float* %1880, align 1
  %1881 = getelementptr inbounds i8, i8* %1869, i64 12
  %1882 = bitcast i8* %1881 to float*
  store float 0.000000e+00, float* %1882, align 1
  store %struct.Memory* %loadMem_451092, %struct.Memory** %MEMORY
  %loadMem_451097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 1
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 15
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RBP.i218
  %1893 = sub i64 %1892, 8
  %1894 = load i64, i64* %PC.i216
  %1895 = add i64 %1894, 4
  store i64 %1895, i64* %PC.i216
  %1896 = inttoptr i64 %1893 to i64*
  %1897 = load i64, i64* %1896
  store i64 %1897, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_451097, %struct.Memory** %MEMORY
  %loadMem_45109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 5
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 15
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %RBP.i215
  %1908 = sub i64 %1907, 28
  %1909 = load i64, i64* %PC.i213
  %1910 = add i64 %1909, 4
  store i64 %1910, i64* %PC.i213
  %1911 = inttoptr i64 %1908 to i32*
  %1912 = load i32, i32* %1911
  %1913 = sext i32 %1912 to i64
  store i64 %1913, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_45109b, %struct.Memory** %MEMORY
  %loadMem_45109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 1
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 5
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1923, i64 0, i64 0
  %YMM0.i212 = bitcast %union.VectorReg* %1924 to %"class.std::bitset"*
  %1925 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %1926 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %1927 = load i64, i64* %RAX.i210
  %1928 = load i64, i64* %RCX.i211
  %1929 = mul i64 %1928, 4
  %1930 = add i64 %1929, %1927
  %1931 = load i64, i64* %PC.i209
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i209
  %1933 = bitcast i8* %1926 to <2 x float>*
  %1934 = load <2 x float>, <2 x float>* %1933, align 1
  %1935 = getelementptr inbounds i8, i8* %1926, i64 8
  %1936 = bitcast i8* %1935 to <2 x i32>*
  %1937 = load <2 x i32>, <2 x i32>* %1936, align 1
  %1938 = inttoptr i64 %1930 to float*
  %1939 = load float, float* %1938
  %1940 = extractelement <2 x float> %1934, i32 0
  %1941 = fadd float %1940, %1939
  %1942 = bitcast i8* %1925 to float*
  store float %1941, float* %1942, align 1
  %1943 = bitcast <2 x float> %1934 to <2 x i32>
  %1944 = extractelement <2 x i32> %1943, i32 1
  %1945 = getelementptr inbounds i8, i8* %1925, i64 4
  %1946 = bitcast i8* %1945 to i32*
  store i32 %1944, i32* %1946, align 1
  %1947 = extractelement <2 x i32> %1937, i32 0
  %1948 = getelementptr inbounds i8, i8* %1925, i64 8
  %1949 = bitcast i8* %1948 to i32*
  store i32 %1947, i32* %1949, align 1
  %1950 = extractelement <2 x i32> %1937, i32 1
  %1951 = getelementptr inbounds i8, i8* %1925, i64 12
  %1952 = bitcast i8* %1951 to i32*
  store i32 %1950, i32* %1952, align 1
  store %struct.Memory* %loadMem_45109f, %struct.Memory** %MEMORY
  %loadMem_4510a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 1
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 5
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1963 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1962, i64 0, i64 0
  %XMM0.i208 = bitcast %union.VectorReg* %1963 to %union.vec128_t*
  %1964 = load i64, i64* %RAX.i206
  %1965 = load i64, i64* %RCX.i207
  %1966 = mul i64 %1965, 4
  %1967 = add i64 %1966, %1964
  %1968 = bitcast %union.vec128_t* %XMM0.i208 to i8*
  %1969 = load i64, i64* %PC.i205
  %1970 = add i64 %1969, 5
  store i64 %1970, i64* %PC.i205
  %1971 = bitcast i8* %1968 to <2 x float>*
  %1972 = load <2 x float>, <2 x float>* %1971, align 1
  %1973 = extractelement <2 x float> %1972, i32 0
  %1974 = inttoptr i64 %1967 to float*
  store float %1973, float* %1974
  store %struct.Memory* %loadMem_4510a4, %struct.Memory** %MEMORY
  %loadMem_4510a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1977 to i64*
  %1978 = load i64, i64* %PC.i204
  %1979 = add i64 %1978, 48
  %1980 = load i64, i64* %PC.i204
  %1981 = add i64 %1980, 5
  store i64 %1981, i64* %PC.i204
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1979, i64* %1982, align 8
  store %struct.Memory* %loadMem_4510a9, %struct.Memory** %MEMORY
  br label %block_.L_4510d9

block_.L_4510ae:                                  ; preds = %block_45107e
  %loadMem_4510ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1986, i64 0, i64 0
  %YMM0.i203 = bitcast %union.VectorReg* %1987 to %"class.std::bitset"*
  %1988 = bitcast %"class.std::bitset"* %YMM0.i203 to i8*
  %1989 = load i64, i64* %PC.i202
  %1990 = add i64 %1989, ptrtoint (%G_0x91ed2__rip__type* @G_0x91ed2__rip_ to i64)
  %1991 = load i64, i64* %PC.i202
  %1992 = add i64 %1991, 8
  store i64 %1992, i64* %PC.i202
  %1993 = inttoptr i64 %1990 to double*
  %1994 = load double, double* %1993
  %1995 = bitcast i8* %1988 to double*
  store double %1994, double* %1995, align 1
  %1996 = getelementptr inbounds i8, i8* %1988, i64 8
  %1997 = bitcast i8* %1996 to double*
  store double 0.000000e+00, double* %1997, align 1
  store %struct.Memory* %loadMem_4510ae, %struct.Memory** %MEMORY
  %loadMem_4510b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2004, i64 0, i64 1
  %YMM1.i201 = bitcast %union.VectorReg* %2005 to %"class.std::bitset"*
  %2006 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %2007 = load i64, i64* %RBP.i200
  %2008 = sub i64 %2007, 16
  %2009 = load i64, i64* %PC.i199
  %2010 = add i64 %2009, 5
  store i64 %2010, i64* %PC.i199
  %2011 = inttoptr i64 %2008 to float*
  %2012 = load float, float* %2011
  %2013 = fpext float %2012 to double
  %2014 = bitcast i8* %2006 to double*
  store double %2013, double* %2014, align 1
  store %struct.Memory* %loadMem_4510b6, %struct.Memory** %MEMORY
  %loadMem_4510bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2018, i64 0, i64 0
  %YMM0.i197 = bitcast %union.VectorReg* %2019 to %"class.std::bitset"*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2020, i64 0, i64 1
  %XMM1.i198 = bitcast %union.VectorReg* %2021 to %union.vec128_t*
  %2022 = bitcast %"class.std::bitset"* %YMM0.i197 to i8*
  %2023 = bitcast %"class.std::bitset"* %YMM0.i197 to i8*
  %2024 = bitcast %union.vec128_t* %XMM1.i198 to i8*
  %2025 = load i64, i64* %PC.i196
  %2026 = add i64 %2025, 4
  store i64 %2026, i64* %PC.i196
  %2027 = bitcast i8* %2023 to double*
  %2028 = load double, double* %2027, align 1
  %2029 = getelementptr inbounds i8, i8* %2023, i64 8
  %2030 = bitcast i8* %2029 to i64*
  %2031 = load i64, i64* %2030, align 1
  %2032 = bitcast i8* %2024 to double*
  %2033 = load double, double* %2032, align 1
  %2034 = fmul double %2028, %2033
  %2035 = bitcast i8* %2022 to double*
  store double %2034, double* %2035, align 1
  %2036 = getelementptr inbounds i8, i8* %2022, i64 8
  %2037 = bitcast i8* %2036 to i64*
  store i64 %2031, i64* %2037, align 1
  store %struct.Memory* %loadMem_4510bb, %struct.Memory** %MEMORY
  %loadMem_4510bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 1
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 15
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %RBP.i195
  %2048 = sub i64 %2047, 8
  %2049 = load i64, i64* %PC.i193
  %2050 = add i64 %2049, 4
  store i64 %2050, i64* %PC.i193
  %2051 = inttoptr i64 %2048 to i64*
  %2052 = load i64, i64* %2051
  store i64 %2052, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_4510bf, %struct.Memory** %MEMORY
  %loadMem_4510c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 5
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i192
  %2063 = sub i64 %2062, 28
  %2064 = load i64, i64* %PC.i190
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC.i190
  %2066 = inttoptr i64 %2063 to i32*
  %2067 = load i32, i32* %2066
  %2068 = sext i32 %2067 to i64
  store i64 %2068, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_4510c3, %struct.Memory** %MEMORY
  %loadMem_4510c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 1
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 5
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2078, i64 0, i64 1
  %YMM1.i189 = bitcast %union.VectorReg* %2079 to %"class.std::bitset"*
  %2080 = bitcast %"class.std::bitset"* %YMM1.i189 to i8*
  %2081 = load i64, i64* %RAX.i187
  %2082 = load i64, i64* %RCX.i188
  %2083 = mul i64 %2082, 4
  %2084 = add i64 %2083, %2081
  %2085 = load i64, i64* %PC.i186
  %2086 = add i64 %2085, 5
  store i64 %2086, i64* %PC.i186
  %2087 = inttoptr i64 %2084 to float*
  %2088 = load float, float* %2087
  %2089 = fpext float %2088 to double
  %2090 = bitcast i8* %2080 to double*
  store double %2089, double* %2090, align 1
  store %struct.Memory* %loadMem_4510c7, %struct.Memory** %MEMORY
  %loadMem_4510cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2094, i64 0, i64 1
  %YMM1.i184 = bitcast %union.VectorReg* %2095 to %"class.std::bitset"*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2096, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %2097 to %union.vec128_t*
  %2098 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %2099 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %2100 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %2101 = load i64, i64* %PC.i183
  %2102 = add i64 %2101, 4
  store i64 %2102, i64* %PC.i183
  %2103 = bitcast i8* %2099 to double*
  %2104 = load double, double* %2103, align 1
  %2105 = getelementptr inbounds i8, i8* %2099, i64 8
  %2106 = bitcast i8* %2105 to i64*
  %2107 = load i64, i64* %2106, align 1
  %2108 = bitcast i8* %2100 to double*
  %2109 = load double, double* %2108, align 1
  %2110 = fadd double %2104, %2109
  %2111 = bitcast i8* %2098 to double*
  store double %2110, double* %2111, align 1
  %2112 = getelementptr inbounds i8, i8* %2098, i64 8
  %2113 = bitcast i8* %2112 to i64*
  store i64 %2107, i64* %2113, align 1
  store %struct.Memory* %loadMem_4510cc, %struct.Memory** %MEMORY
  %loadMem_4510d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2117, i64 0, i64 0
  %YMM0.i181 = bitcast %union.VectorReg* %2118 to %"class.std::bitset"*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2119, i64 0, i64 1
  %XMM1.i182 = bitcast %union.VectorReg* %2120 to %union.vec128_t*
  %2121 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %2122 = bitcast %union.vec128_t* %XMM1.i182 to i8*
  %2123 = load i64, i64* %PC.i180
  %2124 = add i64 %2123, 4
  store i64 %2124, i64* %PC.i180
  %2125 = bitcast i8* %2121 to <2 x i32>*
  %2126 = load <2 x i32>, <2 x i32>* %2125, align 1
  %2127 = getelementptr inbounds i8, i8* %2121, i64 8
  %2128 = bitcast i8* %2127 to <2 x i32>*
  %2129 = load <2 x i32>, <2 x i32>* %2128, align 1
  %2130 = bitcast i8* %2122 to double*
  %2131 = load double, double* %2130, align 1
  %2132 = fptrunc double %2131 to float
  %2133 = bitcast i8* %2121 to float*
  store float %2132, float* %2133, align 1
  %2134 = extractelement <2 x i32> %2126, i32 1
  %2135 = getelementptr inbounds i8, i8* %2121, i64 4
  %2136 = bitcast i8* %2135 to i32*
  store i32 %2134, i32* %2136, align 1
  %2137 = extractelement <2 x i32> %2129, i32 0
  %2138 = bitcast i8* %2127 to i32*
  store i32 %2137, i32* %2138, align 1
  %2139 = extractelement <2 x i32> %2129, i32 1
  %2140 = getelementptr inbounds i8, i8* %2121, i64 12
  %2141 = bitcast i8* %2140 to i32*
  store i32 %2139, i32* %2141, align 1
  store %struct.Memory* %loadMem_4510d0, %struct.Memory** %MEMORY
  %loadMem_4510d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 1
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 5
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2151, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %2152 to %union.vec128_t*
  %2153 = load i64, i64* %RAX.i177
  %2154 = load i64, i64* %RCX.i178
  %2155 = mul i64 %2154, 4
  %2156 = add i64 %2155, %2153
  %2157 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %2158 = load i64, i64* %PC.i176
  %2159 = add i64 %2158, 5
  store i64 %2159, i64* %PC.i176
  %2160 = bitcast i8* %2157 to <2 x float>*
  %2161 = load <2 x float>, <2 x float>* %2160, align 1
  %2162 = extractelement <2 x float> %2161, i32 0
  %2163 = inttoptr i64 %2156 to float*
  store float %2162, float* %2163
  store %struct.Memory* %loadMem_4510d4, %struct.Memory** %MEMORY
  br label %block_.L_4510d9

block_.L_4510d9:                                  ; preds = %block_.L_4510ae, %block_451092
  %loadMem_4510d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %PC.i175
  %2168 = add i64 %2167, 210
  %2169 = load i64, i64* %PC.i175
  %2170 = add i64 %2169, 5
  store i64 %2170, i64* %PC.i175
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2168, i64* %2171, align 8
  store %struct.Memory* %loadMem_4510d9, %struct.Memory** %MEMORY
  br label %block_.L_4511ab

block_.L_4510de:                                  ; preds = %block_.L_451074
  %loadMem_4510de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 1
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %PC.i173
  %2179 = add i64 %2178, 5
  store i64 %2179, i64* %PC.i173
  store i64 4, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_4510de, %struct.Memory** %MEMORY
  %loadMem_4510e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 5
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 15
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2188 to i64*
  %2189 = load i64, i64* %RBP.i172
  %2190 = sub i64 %2189, 28
  %2191 = load i64, i64* %PC.i170
  %2192 = add i64 %2191, 3
  store i64 %2192, i64* %PC.i170
  %2193 = inttoptr i64 %2190 to i32*
  %2194 = load i32, i32* %2193
  %2195 = zext i32 %2194 to i64
  store i64 %2195, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_4510e3, %struct.Memory** %MEMORY
  %loadMem_4510e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 7
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 15
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %RBP.i169
  %2206 = sub i64 %2205, 32
  %2207 = load i64, i64* %PC.i167
  %2208 = add i64 %2207, 3
  store i64 %2208, i64* %PC.i167
  %2209 = inttoptr i64 %2206 to i32*
  %2210 = load i32, i32* %2209
  %2211 = zext i32 %2210 to i64
  store i64 %2211, i64* %RDX.i168, align 8
  store %struct.Memory* %loadMem_4510e6, %struct.Memory** %MEMORY
  %loadMem_4510e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %2217 to i32*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i166
  %2222 = sub i64 %2221, 68
  %2223 = load i32, i32* %EAX.i165
  %2224 = zext i32 %2223 to i64
  %2225 = load i64, i64* %PC.i164
  %2226 = add i64 %2225, 3
  store i64 %2226, i64* %PC.i164
  %2227 = inttoptr i64 %2222 to i32*
  store i32 %2223, i32* %2227
  store %struct.Memory* %loadMem_4510e9, %struct.Memory** %MEMORY
  %loadMem_4510ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 7
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %EDX.i162 = bitcast %union.anon* %2233 to i32*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 1
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %2236 to i64*
  %2237 = load i32, i32* %EDX.i162
  %2238 = zext i32 %2237 to i64
  %2239 = load i64, i64* %PC.i161
  %2240 = add i64 %2239, 2
  store i64 %2240, i64* %PC.i161
  %2241 = and i64 %2238, 4294967295
  store i64 %2241, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_4510ec, %struct.Memory** %MEMORY
  %loadMem_4510ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %PC.i160
  %2246 = add i64 %2245, 1
  store i64 %2246, i64* %PC.i160
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2249 = bitcast %union.anon* %2248 to i32*
  %2250 = load i32, i32* %2249, align 8
  %2251 = sext i32 %2250 to i64
  %2252 = lshr i64 %2251, 32
  store i64 %2252, i64* %2247, align 8
  store %struct.Memory* %loadMem_4510ee, %struct.Memory** %MEMORY
  %loadMem_4510ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 9
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RBP.i159
  %2263 = sub i64 %2262, 68
  %2264 = load i64, i64* %PC.i158
  %2265 = add i64 %2264, 3
  store i64 %2265, i64* %PC.i158
  %2266 = inttoptr i64 %2263 to i32*
  %2267 = load i32, i32* %2266
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4510ef, %struct.Memory** %MEMORY
  %loadMem_4510f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 9
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %ESI.i154 = bitcast %union.anon* %2274 to i32*
  %2275 = load i32, i32* %ESI.i154
  %2276 = zext i32 %2275 to i64
  %2277 = load i64, i64* %PC.i153
  %2278 = add i64 %2277, 2
  store i64 %2278, i64* %PC.i153
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2280 = bitcast %union.anon* %2279 to i32*
  %2281 = load i32, i32* %2280, align 8
  %2282 = zext i32 %2281 to i64
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2284 = bitcast %union.anon* %2283 to i32*
  %2285 = load i32, i32* %2284, align 8
  %2286 = zext i32 %2285 to i64
  %2287 = shl i64 %2276, 32
  %2288 = ashr exact i64 %2287, 32
  %2289 = shl i64 %2286, 32
  %2290 = or i64 %2289, %2282
  %2291 = sdiv i64 %2290, %2288
  %2292 = shl i64 %2291, 32
  %2293 = ashr exact i64 %2292, 32
  %2294 = icmp eq i64 %2291, %2293
  br i1 %2294, label %2299, label %2295

; <label>:2295:                                   ; preds = %block_.L_4510de
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2297 = load i64, i64* %2296, align 8
  %2298 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2297, %struct.Memory* %loadMem_4510f2)
  br label %routine_idivl__esi.exit155

; <label>:2299:                                   ; preds = %block_.L_4510de
  %2300 = srem i64 %2290, %2288
  %2301 = getelementptr inbounds %union.anon, %union.anon* %2279, i64 0, i32 0
  %2302 = and i64 %2291, 4294967295
  store i64 %2302, i64* %2301, align 8
  %2303 = getelementptr inbounds %union.anon, %union.anon* %2283, i64 0, i32 0
  %2304 = and i64 %2300, 4294967295
  store i64 %2304, i64* %2303, align 8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2305, align 1
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2306, align 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2307, align 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2308, align 1
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2309, align 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2310, align 1
  br label %routine_idivl__esi.exit155

routine_idivl__esi.exit155:                       ; preds = %2295, %2299
  %2311 = phi %struct.Memory* [ %2298, %2295 ], [ %loadMem_4510f2, %2299 ]
  store %struct.Memory* %2311, %struct.Memory** %MEMORY
  %loadMem_4510f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 7
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %EDX.i151 = bitcast %union.anon* %2317 to i32*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 11
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %2320 to i64*
  %2321 = load i32, i32* %EDX.i151
  %2322 = zext i32 %2321 to i64
  %2323 = load i64, i64* %PC.i150
  %2324 = add i64 %2323, 3
  store i64 %2324, i64* %PC.i150
  %2325 = shl i64 %2322, 32
  %2326 = ashr exact i64 %2325, 32
  store i64 %2326, i64* %RDI.i152, align 8
  store %struct.Memory* %loadMem_4510f4, %struct.Memory** %MEMORY
  %loadMem_4510f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 5
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 11
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RDI.i149 = bitcast %union.anon* %2335 to i64*
  %2336 = load i64, i64* %RCX.i148
  %2337 = load i64, i64* %RDI.i149
  %2338 = mul i64 %2337, 4
  %2339 = add i64 %2338, 8053168
  %2340 = load i64, i64* %PC.i147
  %2341 = add i64 %2340, 7
  store i64 %2341, i64* %PC.i147
  %2342 = trunc i64 %2336 to i32
  %2343 = inttoptr i64 %2339 to i32*
  %2344 = load i32, i32* %2343
  %2345 = add i32 %2344, %2342
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RCX.i148, align 8
  %2347 = icmp ult i32 %2345, %2342
  %2348 = icmp ult i32 %2345, %2344
  %2349 = or i1 %2347, %2348
  %2350 = zext i1 %2349 to i8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2350, i8* %2351, align 1
  %2352 = and i32 %2345, 255
  %2353 = call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2356, i8* %2357, align 1
  %2358 = xor i32 %2344, %2342
  %2359 = xor i32 %2358, %2345
  %2360 = lshr i32 %2359, 4
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2362, i8* %2363, align 1
  %2364 = icmp eq i32 %2345, 0
  %2365 = zext i1 %2364 to i8
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2365, i8* %2366, align 1
  %2367 = lshr i32 %2345, 31
  %2368 = trunc i32 %2367 to i8
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2368, i8* %2369, align 1
  %2370 = lshr i32 %2342, 31
  %2371 = lshr i32 %2344, 31
  %2372 = xor i32 %2367, %2370
  %2373 = xor i32 %2367, %2371
  %2374 = add i32 %2372, %2373
  %2375 = icmp eq i32 %2374, 2
  %2376 = zext i1 %2375 to i8
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2376, i8* %2377, align 1
  store %struct.Memory* %loadMem_4510f7, %struct.Memory** %MEMORY
  %loadMem_4510fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 5
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %ECX.i145 = bitcast %union.anon* %2383 to i32*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RBP.i146
  %2388 = sub i64 %2387, 40
  %2389 = load i32, i32* %ECX.i145
  %2390 = zext i32 %2389 to i64
  %2391 = load i64, i64* %PC.i144
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC.i144
  %2393 = inttoptr i64 %2388 to i32*
  store i32 %2389, i32* %2393
  store %struct.Memory* %loadMem_4510fe, %struct.Memory** %MEMORY
  %loadMem_451101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 5
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 15
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RBP.i143
  %2404 = sub i64 %2403, 28
  %2405 = load i64, i64* %PC.i141
  %2406 = add i64 %2405, 3
  store i64 %2406, i64* %PC.i141
  %2407 = inttoptr i64 %2404 to i32*
  %2408 = load i32, i32* %2407
  %2409 = zext i32 %2408 to i64
  store i64 %2409, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_451101, %struct.Memory** %MEMORY
  %loadMem_451104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 7
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 15
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %RBP.i140
  %2420 = sub i64 %2419, 32
  %2421 = load i64, i64* %PC.i138
  %2422 = add i64 %2421, 3
  store i64 %2422, i64* %PC.i138
  %2423 = inttoptr i64 %2420 to i32*
  %2424 = load i32, i32* %2423
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RDX.i139, align 8
  store %struct.Memory* %loadMem_451104, %struct.Memory** %MEMORY
  %loadMem_451107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 7
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RDX.i137
  %2433 = load i64, i64* %PC.i136
  %2434 = add i64 %2433, 3
  store i64 %2434, i64* %PC.i136
  %2435 = trunc i64 %2432 to i32
  %2436 = add i32 1, %2435
  %2437 = zext i32 %2436 to i64
  store i64 %2437, i64* %RDX.i137, align 8
  %2438 = icmp ult i32 %2436, %2435
  %2439 = icmp ult i32 %2436, 1
  %2440 = or i1 %2438, %2439
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1
  %2443 = and i32 %2436, 255
  %2444 = call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2447, i8* %2448, align 1
  %2449 = xor i64 1, %2432
  %2450 = trunc i64 %2449 to i32
  %2451 = xor i32 %2450, %2436
  %2452 = lshr i32 %2451, 4
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2454, i8* %2455, align 1
  %2456 = icmp eq i32 %2436, 0
  %2457 = zext i1 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2457, i8* %2458, align 1
  %2459 = lshr i32 %2436, 31
  %2460 = trunc i32 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2460, i8* %2461, align 1
  %2462 = lshr i32 %2435, 31
  %2463 = xor i32 %2459, %2462
  %2464 = add i32 %2463, %2459
  %2465 = icmp eq i32 %2464, 2
  %2466 = zext i1 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2466, i8* %2467, align 1
  store %struct.Memory* %loadMem_451107, %struct.Memory** %MEMORY
  %loadMem_45110a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 7
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %EDX.i134 = bitcast %union.anon* %2473 to i32*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 1
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %2476 to i64*
  %2477 = load i32, i32* %EDX.i134
  %2478 = zext i32 %2477 to i64
  %2479 = load i64, i64* %PC.i133
  %2480 = add i64 %2479, 2
  store i64 %2480, i64* %PC.i133
  %2481 = and i64 %2478, 4294967295
  store i64 %2481, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_45110a, %struct.Memory** %MEMORY
  %loadMem_45110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2484 to i64*
  %2485 = load i64, i64* %PC.i132
  %2486 = add i64 %2485, 1
  store i64 %2486, i64* %PC.i132
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2489 = bitcast %union.anon* %2488 to i32*
  %2490 = load i32, i32* %2489, align 8
  %2491 = sext i32 %2490 to i64
  %2492 = lshr i64 %2491, 32
  store i64 %2492, i64* %2487, align 8
  store %struct.Memory* %loadMem_45110c, %struct.Memory** %MEMORY
  %loadMem_45110d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 9
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2498 to i32*
  %2499 = load i32, i32* %ESI.i
  %2500 = zext i32 %2499 to i64
  %2501 = load i64, i64* %PC.i128
  %2502 = add i64 %2501, 2
  store i64 %2502, i64* %PC.i128
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2504 = bitcast %union.anon* %2503 to i32*
  %2505 = load i32, i32* %2504, align 8
  %2506 = zext i32 %2505 to i64
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2508 = bitcast %union.anon* %2507 to i32*
  %2509 = load i32, i32* %2508, align 8
  %2510 = zext i32 %2509 to i64
  %2511 = shl i64 %2500, 32
  %2512 = ashr exact i64 %2511, 32
  %2513 = shl i64 %2510, 32
  %2514 = or i64 %2513, %2506
  %2515 = sdiv i64 %2514, %2512
  %2516 = shl i64 %2515, 32
  %2517 = ashr exact i64 %2516, 32
  %2518 = icmp eq i64 %2515, %2517
  br i1 %2518, label %2523, label %2519

; <label>:2519:                                   ; preds = %routine_idivl__esi.exit155
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2521 = load i64, i64* %2520, align 8
  %2522 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2521, %struct.Memory* %loadMem_45110d)
  br label %routine_idivl__esi.exit

; <label>:2523:                                   ; preds = %routine_idivl__esi.exit155
  %2524 = srem i64 %2514, %2512
  %2525 = getelementptr inbounds %union.anon, %union.anon* %2503, i64 0, i32 0
  %2526 = and i64 %2515, 4294967295
  store i64 %2526, i64* %2525, align 8
  %2527 = getelementptr inbounds %union.anon, %union.anon* %2507, i64 0, i32 0
  %2528 = and i64 %2524, 4294967295
  store i64 %2528, i64* %2527, align 8
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2529, align 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2530, align 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2531, align 1
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2532, align 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2533, align 1
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2534, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2519, %2523
  %2535 = phi %struct.Memory* [ %2522, %2519 ], [ %loadMem_45110d, %2523 ]
  store %struct.Memory* %2535, %struct.Memory** %MEMORY
  %loadMem_45110f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 7
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %EDX.i126 = bitcast %union.anon* %2541 to i32*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 11
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %2544 to i64*
  %2545 = load i32, i32* %EDX.i126
  %2546 = zext i32 %2545 to i64
  %2547 = load i64, i64* %PC.i125
  %2548 = add i64 %2547, 3
  store i64 %2548, i64* %PC.i125
  %2549 = shl i64 %2546, 32
  %2550 = ashr exact i64 %2549, 32
  store i64 %2550, i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_45110f, %struct.Memory** %MEMORY
  %loadMem_451112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 5
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 11
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %RCX.i123
  %2561 = load i64, i64* %RDI.i124
  %2562 = mul i64 %2561, 4
  %2563 = add i64 %2562, 8053168
  %2564 = load i64, i64* %PC.i122
  %2565 = add i64 %2564, 7
  store i64 %2565, i64* %PC.i122
  %2566 = trunc i64 %2560 to i32
  %2567 = inttoptr i64 %2563 to i32*
  %2568 = load i32, i32* %2567
  %2569 = add i32 %2568, %2566
  %2570 = zext i32 %2569 to i64
  store i64 %2570, i64* %RCX.i123, align 8
  %2571 = icmp ult i32 %2569, %2566
  %2572 = icmp ult i32 %2569, %2568
  %2573 = or i1 %2571, %2572
  %2574 = zext i1 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2574, i8* %2575, align 1
  %2576 = and i32 %2569, 255
  %2577 = call i32 @llvm.ctpop.i32(i32 %2576)
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  %2580 = xor i8 %2579, 1
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2580, i8* %2581, align 1
  %2582 = xor i32 %2568, %2566
  %2583 = xor i32 %2582, %2569
  %2584 = lshr i32 %2583, 4
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2586, i8* %2587, align 1
  %2588 = icmp eq i32 %2569, 0
  %2589 = zext i1 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2589, i8* %2590, align 1
  %2591 = lshr i32 %2569, 31
  %2592 = trunc i32 %2591 to i8
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2592, i8* %2593, align 1
  %2594 = lshr i32 %2566, 31
  %2595 = lshr i32 %2568, 31
  %2596 = xor i32 %2591, %2594
  %2597 = xor i32 %2591, %2595
  %2598 = add i32 %2596, %2597
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2600, i8* %2601, align 1
  store %struct.Memory* %loadMem_451112, %struct.Memory** %MEMORY
  %loadMem_451119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 5
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %ECX.i120 = bitcast %union.anon* %2607 to i32*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 15
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %RBP.i121
  %2612 = sub i64 %2611, 44
  %2613 = load i32, i32* %ECX.i120
  %2614 = zext i32 %2613 to i64
  %2615 = load i64, i64* %PC.i119
  %2616 = add i64 %2615, 3
  store i64 %2616, i64* %PC.i119
  %2617 = inttoptr i64 %2612 to i32*
  store i32 %2613, i32* %2617
  store %struct.Memory* %loadMem_451119, %struct.Memory** %MEMORY
  %loadMem_45111c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 11
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RDI.i117 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i118
  %2628 = sub i64 %2627, 40
  %2629 = load i64, i64* %PC.i116
  %2630 = add i64 %2629, 4
  store i64 %2630, i64* %PC.i116
  %2631 = inttoptr i64 %2628 to i32*
  %2632 = load i32, i32* %2631
  %2633 = sext i32 %2632 to i64
  store i64 %2633, i64* %RDI.i117, align 8
  store %struct.Memory* %loadMem_45111c, %struct.Memory** %MEMORY
  %loadMem_451120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 33
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 5
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 11
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RDI.i115 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %RDI.i115
  %2644 = add i64 %2643, 12099168
  %2645 = load i64, i64* %PC.i113
  %2646 = add i64 %2645, 8
  store i64 %2646, i64* %PC.i113
  %2647 = inttoptr i64 %2644 to i8*
  %2648 = load i8, i8* %2647
  %2649 = zext i8 %2648 to i64
  store i64 %2649, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_451120, %struct.Memory** %MEMORY
  %loadMem_451128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 5
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %ECX.i112 = bitcast %union.anon* %2655 to i32*
  %2656 = load i32, i32* %ECX.i112
  %2657 = zext i32 %2656 to i64
  %2658 = load i64, i64* %PC.i111
  %2659 = add i64 %2658, 3
  store i64 %2659, i64* %PC.i111
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2660, align 1
  %2661 = and i32 %2656, 255
  %2662 = call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2665, i8* %2666, align 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2667, align 1
  %2668 = icmp eq i32 %2656, 0
  %2669 = zext i1 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2669, i8* %2670, align 1
  %2671 = lshr i32 %2656, 31
  %2672 = trunc i32 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2672, i8* %2673, align 1
  %2674 = lshr i32 %2656, 31
  %2675 = xor i32 %2671, %2674
  %2676 = add i32 %2675, %2674
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2678, i8* %2679, align 1
  store %struct.Memory* %loadMem_451128, %struct.Memory** %MEMORY
  %loadMem_45112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %PC.i110
  %2684 = add i64 %2683, 61
  %2685 = load i64, i64* %PC.i110
  %2686 = add i64 %2685, 6
  %2687 = load i64, i64* %PC.i110
  %2688 = add i64 %2687, 6
  store i64 %2688, i64* %PC.i110
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2690 = load i8, i8* %2689, align 1
  store i8 %2690, i8* %BRANCH_TAKEN, align 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2692 = icmp ne i8 %2690, 0
  %2693 = select i1 %2692, i64 %2684, i64 %2686
  store i64 %2693, i64* %2691, align 8
  store %struct.Memory* %loadMem_45112b, %struct.Memory** %MEMORY
  %loadBr_45112b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45112b = icmp eq i8 %loadBr_45112b, 1
  br i1 %cmpBr_45112b, label %block_.L_451168, label %block_451131

block_451131:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_451131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 11
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RDI.i108 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 15
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2702 to i64*
  %2703 = load i64, i64* %RBP.i109
  %2704 = sub i64 %2703, 40
  %2705 = load i64, i64* %PC.i107
  %2706 = add i64 %2705, 3
  store i64 %2706, i64* %PC.i107
  %2707 = inttoptr i64 %2704 to i32*
  %2708 = load i32, i32* %2707
  %2709 = zext i32 %2708 to i64
  store i64 %2709, i64* %RDI.i108, align 8
  store %struct.Memory* %loadMem_451131, %struct.Memory** %MEMORY
  %loadMem1_451134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2712 to i64*
  %2713 = load i64, i64* %PC.i106
  %2714 = add i64 %2713, -268724
  %2715 = load i64, i64* %PC.i106
  %2716 = add i64 %2715, 5
  %2717 = load i64, i64* %PC.i106
  %2718 = add i64 %2717, 5
  store i64 %2718, i64* %PC.i106
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2720 = load i64, i64* %2719, align 8
  %2721 = add i64 %2720, -8
  %2722 = inttoptr i64 %2721 to i64*
  store i64 %2716, i64* %2722
  store i64 %2721, i64* %2719, align 8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2714, i64* %2723, align 8
  store %struct.Memory* %loadMem1_451134, %struct.Memory** %MEMORY
  %loadMem2_451134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451134 = load i64, i64* %3
  %call2_451134 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_451134, %struct.Memory* %loadMem2_451134)
  store %struct.Memory* %call2_451134, %struct.Memory** %MEMORY
  %loadMem_451139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 1
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %EAX.i105 = bitcast %union.anon* %2729 to i32*
  %2730 = load i32, i32* %EAX.i105
  %2731 = zext i32 %2730 to i64
  %2732 = load i64, i64* %PC.i104
  %2733 = add i64 %2732, 3
  store i64 %2733, i64* %PC.i104
  %2734 = sub i32 %2730, 2
  %2735 = icmp ult i32 %2730, 2
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2736, i8* %2737, align 1
  %2738 = and i32 %2734, 255
  %2739 = call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2742, i8* %2743, align 1
  %2744 = xor i64 2, %2731
  %2745 = trunc i64 %2744 to i32
  %2746 = xor i32 %2745, %2734
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2749, i8* %2750, align 1
  %2751 = icmp eq i32 %2734, 0
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2752, i8* %2753, align 1
  %2754 = lshr i32 %2734, 31
  %2755 = trunc i32 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2755, i8* %2756, align 1
  %2757 = lshr i32 %2730, 31
  %2758 = xor i32 %2754, %2757
  %2759 = add i32 %2758, %2757
  %2760 = icmp eq i32 %2759, 2
  %2761 = zext i1 %2760 to i8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2761, i8* %2762, align 1
  store %struct.Memory* %loadMem_451139, %struct.Memory** %MEMORY
  %loadMem_45113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %PC.i103
  %2767 = add i64 %2766, 44
  %2768 = load i64, i64* %PC.i103
  %2769 = add i64 %2768, 6
  %2770 = load i64, i64* %PC.i103
  %2771 = add i64 %2770, 6
  store i64 %2771, i64* %PC.i103
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2773 = load i8, i8* %2772, align 1
  %2774 = icmp ne i8 %2773, 0
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2776 = load i8, i8* %2775, align 1
  %2777 = icmp ne i8 %2776, 0
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2779 = load i8, i8* %2778, align 1
  %2780 = icmp ne i8 %2779, 0
  %2781 = xor i1 %2777, %2780
  %2782 = or i1 %2774, %2781
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %BRANCH_TAKEN, align 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2785 = select i1 %2782, i64 %2767, i64 %2769
  store i64 %2785, i64* %2784, align 8
  store %struct.Memory* %loadMem_45113c, %struct.Memory** %MEMORY
  %loadBr_45113c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45113c = icmp eq i8 %loadBr_45113c, 1
  br i1 %cmpBr_45113c, label %block_.L_451168, label %block_451142

block_451142:                                     ; preds = %block_451131
  %loadMem_451142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 1
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 15
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RBP.i102
  %2796 = sub i64 %2795, 44
  %2797 = load i64, i64* %PC.i100
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC.i100
  %2799 = inttoptr i64 %2796 to i32*
  %2800 = load i32, i32* %2799
  %2801 = sext i32 %2800 to i64
  store i64 %2801, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_451142, %struct.Memory** %MEMORY
  %loadMem_451146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 33
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 1
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 5
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %RAX.i98
  %2812 = add i64 %2811, 12099168
  %2813 = load i64, i64* %PC.i97
  %2814 = add i64 %2813, 8
  store i64 %2814, i64* %PC.i97
  %2815 = inttoptr i64 %2812 to i8*
  %2816 = load i8, i8* %2815
  %2817 = zext i8 %2816 to i64
  store i64 %2817, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_451146, %struct.Memory** %MEMORY
  %loadMem_45114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 5
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2823 to i32*
  %2824 = load i32, i32* %ECX.i
  %2825 = zext i32 %2824 to i64
  %2826 = load i64, i64* %PC.i96
  %2827 = add i64 %2826, 3
  store i64 %2827, i64* %PC.i96
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2828, align 1
  %2829 = and i32 %2824, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2835, align 1
  %2836 = icmp eq i32 %2824, 0
  %2837 = zext i1 %2836 to i8
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2837, i8* %2838, align 1
  %2839 = lshr i32 %2824, 31
  %2840 = trunc i32 %2839 to i8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2840, i8* %2841, align 1
  %2842 = lshr i32 %2824, 31
  %2843 = xor i32 %2839, %2842
  %2844 = add i32 %2843, %2842
  %2845 = icmp eq i32 %2844, 2
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2846, i8* %2847, align 1
  store %struct.Memory* %loadMem_45114e, %struct.Memory** %MEMORY
  %loadMem_451151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %PC.i95
  %2852 = add i64 %2851, 23
  %2853 = load i64, i64* %PC.i95
  %2854 = add i64 %2853, 6
  %2855 = load i64, i64* %PC.i95
  %2856 = add i64 %2855, 6
  store i64 %2856, i64* %PC.i95
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2858 = load i8, i8* %2857, align 1
  store i8 %2858, i8* %BRANCH_TAKEN, align 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2860 = icmp ne i8 %2858, 0
  %2861 = select i1 %2860, i64 %2852, i64 %2854
  store i64 %2861, i64* %2859, align 8
  store %struct.Memory* %loadMem_451151, %struct.Memory** %MEMORY
  %loadBr_451151 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451151 = icmp eq i8 %loadBr_451151, 1
  br i1 %cmpBr_451151, label %block_.L_451168, label %block_451157

block_451157:                                     ; preds = %block_451142
  %loadMem_451157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 11
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 15
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2870 to i64*
  %2871 = load i64, i64* %RBP.i94
  %2872 = sub i64 %2871, 44
  %2873 = load i64, i64* %PC.i93
  %2874 = add i64 %2873, 3
  store i64 %2874, i64* %PC.i93
  %2875 = inttoptr i64 %2872 to i32*
  %2876 = load i32, i32* %2875
  %2877 = zext i32 %2876 to i64
  store i64 %2877, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_451157, %struct.Memory** %MEMORY
  %loadMem1_45115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2880 to i64*
  %2881 = load i64, i64* %PC.i92
  %2882 = add i64 %2881, -268762
  %2883 = load i64, i64* %PC.i92
  %2884 = add i64 %2883, 5
  %2885 = load i64, i64* %PC.i92
  %2886 = add i64 %2885, 5
  store i64 %2886, i64* %PC.i92
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2888 = load i64, i64* %2887, align 8
  %2889 = add i64 %2888, -8
  %2890 = inttoptr i64 %2889 to i64*
  store i64 %2884, i64* %2890
  store i64 %2889, i64* %2887, align 8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2882, i64* %2891, align 8
  store %struct.Memory* %loadMem1_45115a, %struct.Memory** %MEMORY
  %loadMem2_45115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45115a = load i64, i64* %3
  %call2_45115a = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_45115a, %struct.Memory* %loadMem2_45115a)
  store %struct.Memory* %call2_45115a, %struct.Memory** %MEMORY
  %loadMem_45115f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 1
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %2897 to i32*
  %2898 = load i32, i32* %EAX.i91
  %2899 = zext i32 %2898 to i64
  %2900 = load i64, i64* %PC.i90
  %2901 = add i64 %2900, 3
  store i64 %2901, i64* %PC.i90
  %2902 = sub i32 %2898, 2
  %2903 = icmp ult i32 %2898, 2
  %2904 = zext i1 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2904, i8* %2905, align 1
  %2906 = and i32 %2902, 255
  %2907 = call i32 @llvm.ctpop.i32(i32 %2906)
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  %2910 = xor i8 %2909, 1
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2910, i8* %2911, align 1
  %2912 = xor i64 2, %2899
  %2913 = trunc i64 %2912 to i32
  %2914 = xor i32 %2913, %2902
  %2915 = lshr i32 %2914, 4
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2917, i8* %2918, align 1
  %2919 = icmp eq i32 %2902, 0
  %2920 = zext i1 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2920, i8* %2921, align 1
  %2922 = lshr i32 %2902, 31
  %2923 = trunc i32 %2922 to i8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2923, i8* %2924, align 1
  %2925 = lshr i32 %2898, 31
  %2926 = xor i32 %2922, %2925
  %2927 = add i32 %2926, %2925
  %2928 = icmp eq i32 %2927, 2
  %2929 = zext i1 %2928 to i8
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2929, i8* %2930, align 1
  store %struct.Memory* %loadMem_45115f, %struct.Memory** %MEMORY
  %loadMem_451162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %PC.i89
  %2935 = add i64 %2934, 49
  %2936 = load i64, i64* %PC.i89
  %2937 = add i64 %2936, 6
  %2938 = load i64, i64* %PC.i89
  %2939 = add i64 %2938, 6
  store i64 %2939, i64* %PC.i89
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2941 = load i8, i8* %2940, align 1
  %2942 = icmp eq i8 %2941, 0
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2944 = load i8, i8* %2943, align 1
  %2945 = icmp ne i8 %2944, 0
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2947 = load i8, i8* %2946, align 1
  %2948 = icmp ne i8 %2947, 0
  %2949 = xor i1 %2945, %2948
  %2950 = xor i1 %2949, true
  %2951 = and i1 %2942, %2950
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %BRANCH_TAKEN, align 1
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2954 = select i1 %2951, i64 %2935, i64 %2937
  store i64 %2954, i64* %2953, align 8
  store %struct.Memory* %loadMem_451162, %struct.Memory** %MEMORY
  %loadBr_451162 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451162 = icmp eq i8 %loadBr_451162, 1
  br i1 %cmpBr_451162, label %block_.L_451193, label %block_.L_451168

block_.L_451168:                                  ; preds = %block_451157, %block_451142, %block_451131, %routine_idivl__esi.exit
  %loadMem_451168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2958, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %2959 to %"class.std::bitset"*
  %2960 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2961 = load i64, i64* %PC.i87
  %2962 = add i64 %2961, ptrtoint (%G_0x91e18__rip__type* @G_0x91e18__rip_ to i64)
  %2963 = load i64, i64* %PC.i87
  %2964 = add i64 %2963, 8
  store i64 %2964, i64* %PC.i87
  %2965 = inttoptr i64 %2962 to double*
  %2966 = load double, double* %2965
  %2967 = bitcast i8* %2960 to double*
  store double %2966, double* %2967, align 1
  %2968 = getelementptr inbounds i8, i8* %2960, i64 8
  %2969 = bitcast i8* %2968 to double*
  store double 0.000000e+00, double* %2969, align 1
  store %struct.Memory* %loadMem_451168, %struct.Memory** %MEMORY
  %loadMem_451170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 15
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2977 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2976, i64 0, i64 1
  %YMM1.i86 = bitcast %union.VectorReg* %2977 to %"class.std::bitset"*
  %2978 = bitcast %"class.std::bitset"* %YMM1.i86 to i8*
  %2979 = load i64, i64* %RBP.i85
  %2980 = sub i64 %2979, 16
  %2981 = load i64, i64* %PC.i84
  %2982 = add i64 %2981, 5
  store i64 %2982, i64* %PC.i84
  %2983 = inttoptr i64 %2980 to float*
  %2984 = load float, float* %2983
  %2985 = fpext float %2984 to double
  %2986 = bitcast i8* %2978 to double*
  store double %2985, double* %2986, align 1
  store %struct.Memory* %loadMem_451170, %struct.Memory** %MEMORY
  %loadMem_451175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2990, i64 0, i64 0
  %YMM0.i82 = bitcast %union.VectorReg* %2991 to %"class.std::bitset"*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2992, i64 0, i64 1
  %XMM1.i83 = bitcast %union.VectorReg* %2993 to %union.vec128_t*
  %2994 = bitcast %"class.std::bitset"* %YMM0.i82 to i8*
  %2995 = bitcast %"class.std::bitset"* %YMM0.i82 to i8*
  %2996 = bitcast %union.vec128_t* %XMM1.i83 to i8*
  %2997 = load i64, i64* %PC.i81
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC.i81
  %2999 = bitcast i8* %2995 to double*
  %3000 = load double, double* %2999, align 1
  %3001 = getelementptr inbounds i8, i8* %2995, i64 8
  %3002 = bitcast i8* %3001 to i64*
  %3003 = load i64, i64* %3002, align 1
  %3004 = bitcast i8* %2996 to double*
  %3005 = load double, double* %3004, align 1
  %3006 = fmul double %3000, %3005
  %3007 = bitcast i8* %2994 to double*
  store double %3006, double* %3007, align 1
  %3008 = getelementptr inbounds i8, i8* %2994, i64 8
  %3009 = bitcast i8* %3008 to i64*
  store i64 %3003, i64* %3009, align 1
  store %struct.Memory* %loadMem_451175, %struct.Memory** %MEMORY
  %loadMem_451179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 1
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 15
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %RBP.i80
  %3020 = sub i64 %3019, 8
  %3021 = load i64, i64* %PC.i78
  %3022 = add i64 %3021, 4
  store i64 %3022, i64* %PC.i78
  %3023 = inttoptr i64 %3020 to i64*
  %3024 = load i64, i64* %3023
  store i64 %3024, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_451179, %struct.Memory** %MEMORY
  %loadMem_45117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %RBP.i77
  %3035 = sub i64 %3034, 28
  %3036 = load i64, i64* %PC.i75
  %3037 = add i64 %3036, 4
  store i64 %3037, i64* %PC.i75
  %3038 = inttoptr i64 %3035 to i32*
  %3039 = load i32, i32* %3038
  %3040 = sext i32 %3039 to i64
  store i64 %3040, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_45117d, %struct.Memory** %MEMORY
  %loadMem_451181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 1
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 5
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3051 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3050, i64 0, i64 1
  %YMM1.i74 = bitcast %union.VectorReg* %3051 to %"class.std::bitset"*
  %3052 = bitcast %"class.std::bitset"* %YMM1.i74 to i8*
  %3053 = load i64, i64* %RAX.i72
  %3054 = load i64, i64* %RCX.i73
  %3055 = mul i64 %3054, 4
  %3056 = add i64 %3055, %3053
  %3057 = load i64, i64* %PC.i71
  %3058 = add i64 %3057, 5
  store i64 %3058, i64* %PC.i71
  %3059 = inttoptr i64 %3056 to float*
  %3060 = load float, float* %3059
  %3061 = fpext float %3060 to double
  %3062 = bitcast i8* %3052 to double*
  store double %3061, double* %3062, align 1
  store %struct.Memory* %loadMem_451181, %struct.Memory** %MEMORY
  %loadMem_451186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3066, i64 0, i64 1
  %YMM1.i69 = bitcast %union.VectorReg* %3067 to %"class.std::bitset"*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3068, i64 0, i64 0
  %XMM0.i70 = bitcast %union.VectorReg* %3069 to %union.vec128_t*
  %3070 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %3071 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %3072 = bitcast %union.vec128_t* %XMM0.i70 to i8*
  %3073 = load i64, i64* %PC.i68
  %3074 = add i64 %3073, 4
  store i64 %3074, i64* %PC.i68
  %3075 = bitcast i8* %3071 to double*
  %3076 = load double, double* %3075, align 1
  %3077 = getelementptr inbounds i8, i8* %3071, i64 8
  %3078 = bitcast i8* %3077 to i64*
  %3079 = load i64, i64* %3078, align 1
  %3080 = bitcast i8* %3072 to double*
  %3081 = load double, double* %3080, align 1
  %3082 = fadd double %3076, %3081
  %3083 = bitcast i8* %3070 to double*
  store double %3082, double* %3083, align 1
  %3084 = getelementptr inbounds i8, i8* %3070, i64 8
  %3085 = bitcast i8* %3084 to i64*
  store i64 %3079, i64* %3085, align 1
  store %struct.Memory* %loadMem_451186, %struct.Memory** %MEMORY
  %loadMem_45118a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3089, i64 0, i64 0
  %YMM0.i66 = bitcast %union.VectorReg* %3090 to %"class.std::bitset"*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3091, i64 0, i64 1
  %XMM1.i67 = bitcast %union.VectorReg* %3092 to %union.vec128_t*
  %3093 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %3094 = bitcast %union.vec128_t* %XMM1.i67 to i8*
  %3095 = load i64, i64* %PC.i65
  %3096 = add i64 %3095, 4
  store i64 %3096, i64* %PC.i65
  %3097 = bitcast i8* %3093 to <2 x i32>*
  %3098 = load <2 x i32>, <2 x i32>* %3097, align 1
  %3099 = getelementptr inbounds i8, i8* %3093, i64 8
  %3100 = bitcast i8* %3099 to <2 x i32>*
  %3101 = load <2 x i32>, <2 x i32>* %3100, align 1
  %3102 = bitcast i8* %3094 to double*
  %3103 = load double, double* %3102, align 1
  %3104 = fptrunc double %3103 to float
  %3105 = bitcast i8* %3093 to float*
  store float %3104, float* %3105, align 1
  %3106 = extractelement <2 x i32> %3098, i32 1
  %3107 = getelementptr inbounds i8, i8* %3093, i64 4
  %3108 = bitcast i8* %3107 to i32*
  store i32 %3106, i32* %3108, align 1
  %3109 = extractelement <2 x i32> %3101, i32 0
  %3110 = bitcast i8* %3099 to i32*
  store i32 %3109, i32* %3110, align 1
  %3111 = extractelement <2 x i32> %3101, i32 1
  %3112 = getelementptr inbounds i8, i8* %3093, i64 12
  %3113 = bitcast i8* %3112 to i32*
  store i32 %3111, i32* %3113, align 1
  store %struct.Memory* %loadMem_45118a, %struct.Memory** %MEMORY
  %loadMem_45118e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 1
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 5
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3123, i64 0, i64 0
  %XMM0.i64 = bitcast %union.VectorReg* %3124 to %union.vec128_t*
  %3125 = load i64, i64* %RAX.i62
  %3126 = load i64, i64* %RCX.i63
  %3127 = mul i64 %3126, 4
  %3128 = add i64 %3127, %3125
  %3129 = bitcast %union.vec128_t* %XMM0.i64 to i8*
  %3130 = load i64, i64* %PC.i61
  %3131 = add i64 %3130, 5
  store i64 %3131, i64* %PC.i61
  %3132 = bitcast i8* %3129 to <2 x float>*
  %3133 = load <2 x float>, <2 x float>* %3132, align 1
  %3134 = extractelement <2 x float> %3133, i32 0
  %3135 = inttoptr i64 %3128 to float*
  store float %3134, float* %3135
  store %struct.Memory* %loadMem_45118e, %struct.Memory** %MEMORY
  br label %block_.L_451193

block_.L_451193:                                  ; preds = %block_.L_451168, %block_451157
  %loadMem_451193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3138 to i64*
  %3139 = load i64, i64* %PC.i60
  %3140 = add i64 %3139, 24
  %3141 = load i64, i64* %PC.i60
  %3142 = add i64 %3141, 5
  store i64 %3142, i64* %PC.i60
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3140, i64* %3143, align 8
  store %struct.Memory* %loadMem_451193, %struct.Memory** %MEMORY
  br label %block_.L_4511ab

block_.L_451198:                                  ; preds = %block_451063, %block_451032, %block_45101e, %block_450ff5
  %loadMem_451198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %PC.i59
  %3148 = add i64 %3147, 5
  %3149 = load i64, i64* %PC.i59
  %3150 = add i64 %3149, 5
  store i64 %3150, i64* %PC.i59
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3148, i64* %3151, align 8
  store %struct.Memory* %loadMem_451198, %struct.Memory** %MEMORY
  br label %block_.L_45119d

block_.L_45119d:                                  ; preds = %block_.L_451198
  %loadMem_45119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 1
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 15
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RBP.i58
  %3162 = sub i64 %3161, 32
  %3163 = load i64, i64* %PC.i56
  %3164 = add i64 %3163, 3
  store i64 %3164, i64* %PC.i56
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = zext i32 %3166 to i64
  store i64 %3167, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_45119d, %struct.Memory** %MEMORY
  %loadMem_4511a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 1
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %3173 to i64*
  %3174 = load i64, i64* %RAX.i55
  %3175 = load i64, i64* %PC.i54
  %3176 = add i64 %3175, 3
  store i64 %3176, i64* %PC.i54
  %3177 = trunc i64 %3174 to i32
  %3178 = add i32 1, %3177
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RAX.i55, align 8
  %3180 = icmp ult i32 %3178, %3177
  %3181 = icmp ult i32 %3178, 1
  %3182 = or i1 %3180, %3181
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3183, i8* %3184, align 1
  %3185 = and i32 %3178, 255
  %3186 = call i32 @llvm.ctpop.i32(i32 %3185)
  %3187 = trunc i32 %3186 to i8
  %3188 = and i8 %3187, 1
  %3189 = xor i8 %3188, 1
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3189, i8* %3190, align 1
  %3191 = xor i64 1, %3174
  %3192 = trunc i64 %3191 to i32
  %3193 = xor i32 %3192, %3178
  %3194 = lshr i32 %3193, 4
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3196, i8* %3197, align 1
  %3198 = icmp eq i32 %3178, 0
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3199, i8* %3200, align 1
  %3201 = lshr i32 %3178, 31
  %3202 = trunc i32 %3201 to i8
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3202, i8* %3203, align 1
  %3204 = lshr i32 %3177, 31
  %3205 = xor i32 %3201, %3204
  %3206 = add i32 %3205, %3201
  %3207 = icmp eq i32 %3206, 2
  %3208 = zext i1 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3208, i8* %3209, align 1
  store %struct.Memory* %loadMem_4511a0, %struct.Memory** %MEMORY
  %loadMem_4511a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %3215 to i32*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 15
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %RBP.i53
  %3220 = sub i64 %3219, 32
  %3221 = load i32, i32* %EAX.i52
  %3222 = zext i32 %3221 to i64
  %3223 = load i64, i64* %PC.i51
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %PC.i51
  %3225 = inttoptr i64 %3220 to i32*
  store i32 %3221, i32* %3225
  store %struct.Memory* %loadMem_4511a3, %struct.Memory** %MEMORY
  %loadMem_4511a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3228 to i64*
  %3229 = load i64, i64* %PC.i50
  %3230 = add i64 %3229, -481
  %3231 = load i64, i64* %PC.i50
  %3232 = add i64 %3231, 5
  store i64 %3232, i64* %PC.i50
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3230, i64* %3233, align 8
  store %struct.Memory* %loadMem_4511a6, %struct.Memory** %MEMORY
  br label %block_.L_450fc5

block_.L_4511ab:                                  ; preds = %block_.L_451193, %block_.L_4510d9, %block_.L_450fc5
  %loadMem_4511ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 15
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RBP.i49
  %3241 = sub i64 %3240, 32
  %3242 = load i64, i64* %PC.i48
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i48
  %3244 = inttoptr i64 %3241 to i32*
  %3245 = load i32, i32* %3244
  %3246 = sub i32 %3245, 8
  %3247 = icmp ult i32 %3245, 8
  %3248 = zext i1 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3248, i8* %3249, align 1
  %3250 = and i32 %3246, 255
  %3251 = call i32 @llvm.ctpop.i32(i32 %3250)
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  %3254 = xor i8 %3253, 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3254, i8* %3255, align 1
  %3256 = xor i32 %3245, 8
  %3257 = xor i32 %3256, %3246
  %3258 = lshr i32 %3257, 4
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3260, i8* %3261, align 1
  %3262 = icmp eq i32 %3246, 0
  %3263 = zext i1 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3263, i8* %3264, align 1
  %3265 = lshr i32 %3246, 31
  %3266 = trunc i32 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3266, i8* %3267, align 1
  %3268 = lshr i32 %3245, 31
  %3269 = xor i32 %3265, %3268
  %3270 = add i32 %3269, %3268
  %3271 = icmp eq i32 %3270, 2
  %3272 = zext i1 %3271 to i8
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3272, i8* %3273, align 1
  store %struct.Memory* %loadMem_4511ab, %struct.Memory** %MEMORY
  %loadMem_4511af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %PC.i47
  %3278 = add i64 %3277, 70
  %3279 = load i64, i64* %PC.i47
  %3280 = add i64 %3279, 6
  %3281 = load i64, i64* %PC.i47
  %3282 = add i64 %3281, 6
  store i64 %3282, i64* %PC.i47
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3284 = load i8, i8* %3283, align 1
  %3285 = icmp eq i8 %3284, 0
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %BRANCH_TAKEN, align 1
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3288 = select i1 %3285, i64 %3278, i64 %3280
  store i64 %3288, i64* %3287, align 8
  store %struct.Memory* %loadMem_4511af, %struct.Memory** %MEMORY
  %loadBr_4511af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4511af = icmp eq i8 %loadBr_4511af, 1
  br i1 %cmpBr_4511af, label %block_.L_4511f5, label %block_4511b5

block_4511b5:                                     ; preds = %block_.L_4511ab
  %loadMem_4511b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 1
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 15
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RBP.i46
  %3299 = sub i64 %3298, 24
  %3300 = load i64, i64* %PC.i44
  %3301 = add i64 %3300, 4
  store i64 %3301, i64* %PC.i44
  %3302 = inttoptr i64 %3299 to i64*
  %3303 = load i64, i64* %3302
  store i64 %3303, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_4511b5, %struct.Memory** %MEMORY
  %loadMem_4511b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 5
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 15
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3312 to i64*
  %3313 = load i64, i64* %RBP.i43
  %3314 = sub i64 %3313, 28
  %3315 = load i64, i64* %PC.i41
  %3316 = add i64 %3315, 4
  store i64 %3316, i64* %PC.i41
  %3317 = inttoptr i64 %3314 to i32*
  %3318 = load i32, i32* %3317
  %3319 = sext i32 %3318 to i64
  store i64 %3319, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_4511b9, %struct.Memory** %MEMORY
  %loadMem_4511bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 1
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 5
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 7
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RAX.i39
  %3333 = load i64, i64* %RCX.i40
  %3334 = add i64 %3333, %3332
  %3335 = load i64, i64* %PC.i38
  %3336 = add i64 %3335, 4
  store i64 %3336, i64* %PC.i38
  %3337 = inttoptr i64 %3334 to i8*
  %3338 = load i8, i8* %3337
  %3339 = sext i8 %3338 to i64
  %3340 = and i64 %3339, 4294967295
  store i64 %3340, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4511bd, %struct.Memory** %MEMORY
  %loadMem_4511c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 7
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3346 to i32*
  %3347 = load i32, i32* %EDX.i
  %3348 = zext i32 %3347 to i64
  %3349 = load i64, i64* %PC.i37
  %3350 = add i64 %3349, 3
  store i64 %3350, i64* %PC.i37
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3351, align 1
  %3352 = and i32 %3347, 255
  %3353 = call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3356, i8* %3357, align 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3358, align 1
  %3359 = icmp eq i32 %3347, 0
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3360, i8* %3361, align 1
  %3362 = lshr i32 %3347, 31
  %3363 = trunc i32 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3363, i8* %3364, align 1
  %3365 = lshr i32 %3347, 31
  %3366 = xor i32 %3362, %3365
  %3367 = add i32 %3366, %3365
  %3368 = icmp eq i32 %3367, 2
  %3369 = zext i1 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3369, i8* %3370, align 1
  store %struct.Memory* %loadMem_4511c1, %struct.Memory** %MEMORY
  %loadMem_4511c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %PC.i36
  %3375 = add i64 %3374, 49
  %3376 = load i64, i64* %PC.i36
  %3377 = add i64 %3376, 6
  %3378 = load i64, i64* %PC.i36
  %3379 = add i64 %3378, 6
  store i64 %3379, i64* %PC.i36
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3381 = load i8, i8* %3380, align 1
  %3382 = icmp eq i8 %3381, 0
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %BRANCH_TAKEN, align 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3385 = select i1 %3382, i64 %3375, i64 %3377
  store i64 %3385, i64* %3384, align 8
  store %struct.Memory* %loadMem_4511c4, %struct.Memory** %MEMORY
  %loadBr_4511c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4511c4 = icmp eq i8 %loadBr_4511c4, 1
  br i1 %cmpBr_4511c4, label %block_.L_4511f5, label %block_4511ca

block_4511ca:                                     ; preds = %block_4511b5
  %loadMem_4511ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3389, i64 0, i64 0
  %YMM0.i35 = bitcast %union.VectorReg* %3390 to %"class.std::bitset"*
  %3391 = bitcast %"class.std::bitset"* %YMM0.i35 to i8*
  %3392 = load i64, i64* %PC.i34
  %3393 = add i64 %3392, ptrtoint (%G_0x91db6__rip__type* @G_0x91db6__rip_ to i64)
  %3394 = load i64, i64* %PC.i34
  %3395 = add i64 %3394, 8
  store i64 %3395, i64* %PC.i34
  %3396 = inttoptr i64 %3393 to double*
  %3397 = load double, double* %3396
  %3398 = bitcast i8* %3391 to double*
  store double %3397, double* %3398, align 1
  %3399 = getelementptr inbounds i8, i8* %3391, i64 8
  %3400 = bitcast i8* %3399 to double*
  store double 0.000000e+00, double* %3400, align 1
  store %struct.Memory* %loadMem_4511ca, %struct.Memory** %MEMORY
  %loadMem_4511d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 15
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3407, i64 0, i64 1
  %YMM1.i33 = bitcast %union.VectorReg* %3408 to %"class.std::bitset"*
  %3409 = bitcast %"class.std::bitset"* %YMM1.i33 to i8*
  %3410 = load i64, i64* %RBP.i32
  %3411 = sub i64 %3410, 16
  %3412 = load i64, i64* %PC.i31
  %3413 = add i64 %3412, 5
  store i64 %3413, i64* %PC.i31
  %3414 = inttoptr i64 %3411 to float*
  %3415 = load float, float* %3414
  %3416 = fpext float %3415 to double
  %3417 = bitcast i8* %3409 to double*
  store double %3416, double* %3417, align 1
  store %struct.Memory* %loadMem_4511d2, %struct.Memory** %MEMORY
  %loadMem_4511d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3421, i64 0, i64 0
  %YMM0.i29 = bitcast %union.VectorReg* %3422 to %"class.std::bitset"*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3423, i64 0, i64 1
  %XMM1.i30 = bitcast %union.VectorReg* %3424 to %union.vec128_t*
  %3425 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %3426 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %3427 = bitcast %union.vec128_t* %XMM1.i30 to i8*
  %3428 = load i64, i64* %PC.i28
  %3429 = add i64 %3428, 4
  store i64 %3429, i64* %PC.i28
  %3430 = bitcast i8* %3426 to double*
  %3431 = load double, double* %3430, align 1
  %3432 = getelementptr inbounds i8, i8* %3426, i64 8
  %3433 = bitcast i8* %3432 to i64*
  %3434 = load i64, i64* %3433, align 1
  %3435 = bitcast i8* %3427 to double*
  %3436 = load double, double* %3435, align 1
  %3437 = fmul double %3431, %3436
  %3438 = bitcast i8* %3425 to double*
  store double %3437, double* %3438, align 1
  %3439 = getelementptr inbounds i8, i8* %3425, i64 8
  %3440 = bitcast i8* %3439 to i64*
  store i64 %3434, i64* %3440, align 1
  store %struct.Memory* %loadMem_4511d7, %struct.Memory** %MEMORY
  %loadMem_4511db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 33
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 1
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 15
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3449 to i64*
  %3450 = load i64, i64* %RBP.i27
  %3451 = sub i64 %3450, 8
  %3452 = load i64, i64* %PC.i25
  %3453 = add i64 %3452, 4
  store i64 %3453, i64* %PC.i25
  %3454 = inttoptr i64 %3451 to i64*
  %3455 = load i64, i64* %3454
  store i64 %3455, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_4511db, %struct.Memory** %MEMORY
  %loadMem_4511df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 5
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %3464 to i64*
  %3465 = load i64, i64* %RBP.i24
  %3466 = sub i64 %3465, 28
  %3467 = load i64, i64* %PC.i22
  %3468 = add i64 %3467, 4
  store i64 %3468, i64* %PC.i22
  %3469 = inttoptr i64 %3466 to i32*
  %3470 = load i32, i32* %3469
  %3471 = sext i32 %3470 to i64
  store i64 %3471, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_4511df, %struct.Memory** %MEMORY
  %loadMem_4511e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 1
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 5
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3481, i64 0, i64 1
  %YMM1.i21 = bitcast %union.VectorReg* %3482 to %"class.std::bitset"*
  %3483 = bitcast %"class.std::bitset"* %YMM1.i21 to i8*
  %3484 = load i64, i64* %RAX.i19
  %3485 = load i64, i64* %RCX.i20
  %3486 = mul i64 %3485, 4
  %3487 = add i64 %3486, %3484
  %3488 = load i64, i64* %PC.i18
  %3489 = add i64 %3488, 5
  store i64 %3489, i64* %PC.i18
  %3490 = inttoptr i64 %3487 to float*
  %3491 = load float, float* %3490
  %3492 = fpext float %3491 to double
  %3493 = bitcast i8* %3483 to double*
  store double %3492, double* %3493, align 1
  store %struct.Memory* %loadMem_4511e3, %struct.Memory** %MEMORY
  %loadMem_4511e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3497, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3498 to %"class.std::bitset"*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3499, i64 0, i64 0
  %XMM0.i17 = bitcast %union.VectorReg* %3500 to %union.vec128_t*
  %3501 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3502 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3503 = bitcast %union.vec128_t* %XMM0.i17 to i8*
  %3504 = load i64, i64* %PC.i16
  %3505 = add i64 %3504, 4
  store i64 %3505, i64* %PC.i16
  %3506 = bitcast i8* %3502 to double*
  %3507 = load double, double* %3506, align 1
  %3508 = getelementptr inbounds i8, i8* %3502, i64 8
  %3509 = bitcast i8* %3508 to i64*
  %3510 = load i64, i64* %3509, align 1
  %3511 = bitcast i8* %3503 to double*
  %3512 = load double, double* %3511, align 1
  %3513 = fsub double %3507, %3512
  %3514 = bitcast i8* %3501 to double*
  store double %3513, double* %3514, align 1
  %3515 = getelementptr inbounds i8, i8* %3501, i64 8
  %3516 = bitcast i8* %3515 to i64*
  store i64 %3510, i64* %3516, align 1
  store %struct.Memory* %loadMem_4511e8, %struct.Memory** %MEMORY
  %loadMem_4511ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 33
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3520, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3521 to %"class.std::bitset"*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3523 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3522, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3523 to %union.vec128_t*
  %3524 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3525 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3526 = load i64, i64* %PC.i15
  %3527 = add i64 %3526, 4
  store i64 %3527, i64* %PC.i15
  %3528 = bitcast i8* %3524 to <2 x i32>*
  %3529 = load <2 x i32>, <2 x i32>* %3528, align 1
  %3530 = getelementptr inbounds i8, i8* %3524, i64 8
  %3531 = bitcast i8* %3530 to <2 x i32>*
  %3532 = load <2 x i32>, <2 x i32>* %3531, align 1
  %3533 = bitcast i8* %3525 to double*
  %3534 = load double, double* %3533, align 1
  %3535 = fptrunc double %3534 to float
  %3536 = bitcast i8* %3524 to float*
  store float %3535, float* %3536, align 1
  %3537 = extractelement <2 x i32> %3529, i32 1
  %3538 = getelementptr inbounds i8, i8* %3524, i64 4
  %3539 = bitcast i8* %3538 to i32*
  store i32 %3537, i32* %3539, align 1
  %3540 = extractelement <2 x i32> %3532, i32 0
  %3541 = bitcast i8* %3530 to i32*
  store i32 %3540, i32* %3541, align 1
  %3542 = extractelement <2 x i32> %3532, i32 1
  %3543 = getelementptr inbounds i8, i8* %3524, i64 12
  %3544 = bitcast i8* %3543 to i32*
  store i32 %3542, i32* %3544, align 1
  store %struct.Memory* %loadMem_4511ec, %struct.Memory** %MEMORY
  %loadMem_4511f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 33
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3547 to i64*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 1
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 5
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3554, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3555 to %union.vec128_t*
  %3556 = load i64, i64* %RAX.i14
  %3557 = load i64, i64* %RCX.i
  %3558 = mul i64 %3557, 4
  %3559 = add i64 %3558, %3556
  %3560 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3561 = load i64, i64* %PC.i13
  %3562 = add i64 %3561, 5
  store i64 %3562, i64* %PC.i13
  %3563 = bitcast i8* %3560 to <2 x float>*
  %3564 = load <2 x float>, <2 x float>* %3563, align 1
  %3565 = extractelement <2 x float> %3564, i32 0
  %3566 = inttoptr i64 %3559 to float*
  store float %3565, float* %3566
  store %struct.Memory* %loadMem_4511f0, %struct.Memory** %MEMORY
  br label %block_.L_4511f5

block_.L_4511f5:                                  ; preds = %block_4511ca, %block_4511b5, %block_.L_4511ab
  %loadMem_4511f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %PC.i12
  %3571 = add i64 %3570, 5
  %3572 = load i64, i64* %PC.i12
  %3573 = add i64 %3572, 5
  store i64 %3573, i64* %PC.i12
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3571, i64* %3574, align 8
  store %struct.Memory* %loadMem_4511f5, %struct.Memory** %MEMORY
  br label %block_.L_4511fa

block_.L_4511fa:                                  ; preds = %block_.L_4511f5, %block_450fb9
  %loadMem_4511fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 15
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %RBP.i11
  %3585 = sub i64 %3584, 28
  %3586 = load i64, i64* %PC.i9
  %3587 = add i64 %3586, 3
  store i64 %3587, i64* %PC.i9
  %3588 = inttoptr i64 %3585 to i32*
  %3589 = load i32, i32* %3588
  %3590 = zext i32 %3589 to i64
  store i64 %3590, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_4511fa, %struct.Memory** %MEMORY
  %loadMem_4511fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %RAX.i
  %3598 = load i64, i64* %PC.i8
  %3599 = add i64 %3598, 3
  store i64 %3599, i64* %PC.i8
  %3600 = trunc i64 %3597 to i32
  %3601 = add i32 1, %3600
  %3602 = zext i32 %3601 to i64
  store i64 %3602, i64* %RAX.i, align 8
  %3603 = icmp ult i32 %3601, %3600
  %3604 = icmp ult i32 %3601, 1
  %3605 = or i1 %3603, %3604
  %3606 = zext i1 %3605 to i8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3606, i8* %3607, align 1
  %3608 = and i32 %3601, 255
  %3609 = call i32 @llvm.ctpop.i32(i32 %3608)
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  %3612 = xor i8 %3611, 1
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3612, i8* %3613, align 1
  %3614 = xor i64 1, %3597
  %3615 = trunc i64 %3614 to i32
  %3616 = xor i32 %3615, %3601
  %3617 = lshr i32 %3616, 4
  %3618 = trunc i32 %3617 to i8
  %3619 = and i8 %3618, 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3619, i8* %3620, align 1
  %3621 = icmp eq i32 %3601, 0
  %3622 = zext i1 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3622, i8* %3623, align 1
  %3624 = lshr i32 %3601, 31
  %3625 = trunc i32 %3624 to i8
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3625, i8* %3626, align 1
  %3627 = lshr i32 %3600, 31
  %3628 = xor i32 %3624, %3627
  %3629 = add i32 %3628, %3624
  %3630 = icmp eq i32 %3629, 2
  %3631 = zext i1 %3630 to i8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3631, i8* %3632, align 1
  store %struct.Memory* %loadMem_4511fd, %struct.Memory** %MEMORY
  %loadMem_451200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 1
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3638 to i32*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 15
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %RBP.i7
  %3643 = sub i64 %3642, 28
  %3644 = load i32, i32* %EAX.i
  %3645 = zext i32 %3644 to i64
  %3646 = load i64, i64* %PC.i6
  %3647 = add i64 %3646, 3
  store i64 %3647, i64* %PC.i6
  %3648 = inttoptr i64 %3643 to i32*
  store i32 %3644, i32* %3648
  store %struct.Memory* %loadMem_451200, %struct.Memory** %MEMORY
  %loadMem_451203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 33
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3651 to i64*
  %3652 = load i64, i64* %PC.i5
  %3653 = add i64 %3652, -620
  %3654 = load i64, i64* %PC.i5
  %3655 = add i64 %3654, 5
  store i64 %3655, i64* %PC.i5
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3653, i64* %3656, align 8
  store %struct.Memory* %loadMem_451203, %struct.Memory** %MEMORY
  br label %block_.L_450f97

block_.L_451208:                                  ; preds = %block_.L_450f97
  %loadMem_451208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 33
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 13
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3662 to i64*
  %3663 = load i64, i64* %RSP.i
  %3664 = load i64, i64* %PC.i4
  %3665 = add i64 %3664, 4
  store i64 %3665, i64* %PC.i4
  %3666 = add i64 80, %3663
  store i64 %3666, i64* %RSP.i, align 8
  %3667 = icmp ult i64 %3666, %3663
  %3668 = icmp ult i64 %3666, 80
  %3669 = or i1 %3667, %3668
  %3670 = zext i1 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3670, i8* %3671, align 1
  %3672 = trunc i64 %3666 to i32
  %3673 = and i32 %3672, 255
  %3674 = call i32 @llvm.ctpop.i32(i32 %3673)
  %3675 = trunc i32 %3674 to i8
  %3676 = and i8 %3675, 1
  %3677 = xor i8 %3676, 1
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3677, i8* %3678, align 1
  %3679 = xor i64 80, %3663
  %3680 = xor i64 %3679, %3666
  %3681 = lshr i64 %3680, 4
  %3682 = trunc i64 %3681 to i8
  %3683 = and i8 %3682, 1
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3683, i8* %3684, align 1
  %3685 = icmp eq i64 %3666, 0
  %3686 = zext i1 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3686, i8* %3687, align 1
  %3688 = lshr i64 %3666, 63
  %3689 = trunc i64 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3689, i8* %3690, align 1
  %3691 = lshr i64 %3663, 63
  %3692 = xor i64 %3688, %3691
  %3693 = add i64 %3692, %3688
  %3694 = icmp eq i64 %3693, 2
  %3695 = zext i1 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3695, i8* %3696, align 1
  store %struct.Memory* %loadMem_451208, %struct.Memory** %MEMORY
  %loadMem_45120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 15
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %PC.i2
  %3704 = add i64 %3703, 1
  store i64 %3704, i64* %PC.i2
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3706 = load i64, i64* %3705, align 8
  %3707 = add i64 %3706, 8
  %3708 = inttoptr i64 %3706 to i64*
  %3709 = load i64, i64* %3708
  store i64 %3709, i64* %RBP.i3, align 8
  store i64 %3707, i64* %3705, align 8
  store %struct.Memory* %loadMem_45120c, %struct.Memory** %MEMORY
  %loadMem_45120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 33
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %PC.i1
  %3714 = add i64 %3713, 1
  store i64 %3714, i64* %PC.i1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3717 = load i64, i64* %3716, align 8
  %3718 = inttoptr i64 %3717 to i64*
  %3719 = load i64, i64* %3718
  store i64 %3719, i64* %3715, align 8
  %3720 = add i64 %3717, 8
  store i64 %3720, i64* %3716, align 8
  store %struct.Memory* %loadMem_45120d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_45120d
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_450f32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_450f37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_450f90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x368___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 872, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57f208___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f208_type* @G__0x57f208 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_451208(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_450fbe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4511fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_4511ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
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

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_45100a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_451198(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_451052(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.are_neighbor_dragons(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_451198(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_callq_.countlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 4
  %14 = icmp ult i32 %9, 4
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
  %23 = xor i64 4, %10
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

define %struct.Memory* @routine_jle_.L_451074(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_edge_vertex(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
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

define %struct.Memory* @routine_jge_.L_4510de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4510ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %30 = fadd float %29, %28
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

define %struct.Memory* @routine_jmpq_.L_4510d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x91ed2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x91ed2__rip__type* @G_0x91ed2__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_jmpq_.L_4511ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rdi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
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

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdi_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
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

define %struct.Memory* @routine_je_.L_451168(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_jle_.L_451168(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_451193(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x91e18__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x91e18__rip__type* @G_0x91e18__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_45119d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_450fc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4511f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x91db6__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x91db6__rip__type* @G_0x91db6__rip_ to i64)
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_450f97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
