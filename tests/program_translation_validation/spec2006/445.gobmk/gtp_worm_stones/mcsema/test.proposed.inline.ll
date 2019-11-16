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
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x58714b_type = type <{ [8 x i8] }>
%G__0x58714f_type = type <{ [8 x i8] }>
%G__0x587162_type = type <{ [8 x i8] }>
%G__0x587ac6_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x58714b = global %G__0x58714b_type zeroinitializer
@G__0x58714f = global %G__0x58714f_type zeroinitializer
@G__0x587162 = global %G__0x587162_type zeroinitializer
@G__0x587ac6 = global %G__0x587ac6_type zeroinitializer

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

declare %struct.Memory* @sub_48c880.gtp_decode_coord(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48c750.gtp_decode_color(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @gtp_worm_stones(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_498700 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_498700, %struct.Memory** %MEMORY
  %loadMem_498701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i316 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i316
  %27 = load i64, i64* %PC.i315
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i315
  store i64 %26, i64* %RBP.i317, align 8
  store %struct.Memory* %loadMem_498701, %struct.Memory** %MEMORY
  %loadMem_498704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i338 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i338
  %36 = load i64, i64* %PC.i337
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i337
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i338, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_498704, %struct.Memory** %MEMORY
  %loadMem_498708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RSI.i336 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i335
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i335
  store i64 ptrtoint (%G__0x58714b_type* @G__0x58714b to i64), i64* %RSI.i336, align 8
  store %struct.Memory* %loadMem_498708, %struct.Memory** %MEMORY
  %loadMem_498712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDI.i333 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i334
  %85 = sub i64 %84, 16
  %86 = load i64, i64* %RDI.i333
  %87 = load i64, i64* %PC.i332
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i332
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_498712, %struct.Memory** %MEMORY
  %loadMem_498716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RBP.i331
  %97 = sub i64 %96, 20
  %98 = load i64, i64* %PC.i330
  %99 = add i64 %98, 7
  store i64 %99, i64* %PC.i330
  %100 = inttoptr i64 %97 to i32*
  store i32 -1, i32* %100
  store %struct.Memory* %loadMem_498716, %struct.Memory** %MEMORY
  %loadMem_49871d = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i329
  %108 = sub i64 %107, 24
  %109 = load i64, i64* %PC.i328
  %110 = add i64 %109, 7
  store i64 %110, i64* %PC.i328
  %111 = inttoptr i64 %108 to i32*
  store i32 -1, i32* %111
  store %struct.Memory* %loadMem_49871d, %struct.Memory** %MEMORY
  %loadMem_498724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RBP.i327
  %119 = sub i64 %118, 28
  %120 = load i64, i64* %PC.i326
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC.i326
  %122 = inttoptr i64 %119 to i32*
  store i32 0, i32* %122
  store %struct.Memory* %loadMem_498724, %struct.Memory** %MEMORY
  %loadMem_49872b = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %RBP.i325
  %130 = sub i64 %129, 48
  %131 = load i64, i64* %PC.i324
  %132 = add i64 %131, 7
  store i64 %132, i64* %PC.i324
  %133 = inttoptr i64 %130 to i32*
  store i32 1, i32* %133
  store %struct.Memory* %loadMem_49872b, %struct.Memory** %MEMORY
  %loadMem_498732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 11
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i323
  %144 = sub i64 %143, 16
  %145 = load i64, i64* %PC.i321
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC.i321
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_498732, %struct.Memory** %MEMORY
  %loadMem_498736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %155 = bitcast %union.anon* %154 to %struct.anon.2*
  %AL.i320 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %155, i32 0, i32 0
  %156 = load i64, i64* %PC.i319
  %157 = add i64 %156, 2
  store i64 %157, i64* %PC.i319
  store i8 0, i8* %AL.i320, align 1
  store %struct.Memory* %loadMem_498736, %struct.Memory** %MEMORY
  %loadMem1_498738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %PC.i318
  %162 = add i64 %161, -620024
  %163 = load i64, i64* %PC.i318
  %164 = add i64 %163, 5
  %165 = load i64, i64* %PC.i318
  %166 = add i64 %165, 5
  store i64 %166, i64* %PC.i318
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %164, i64* %170
  store i64 %169, i64* %167, align 8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %162, i64* %171, align 8
  store %struct.Memory* %loadMem1_498738, %struct.Memory** %MEMORY
  %loadMem2_498738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498738 = load i64, i64* %3
  %172 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %loadMem2_498738)
  store %struct.Memory* %172, %struct.Memory** %MEMORY
  %loadMem_49873d = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %EAX.i314 = bitcast %union.anon* %178 to i32*
  %179 = load i32, i32* %EAX.i314
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC.i313
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC.i313
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %183, align 1
  %184 = and i32 %179, 255
  %185 = call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %188, i8* %189, align 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %190, align 1
  %191 = icmp eq i32 %179, 0
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %192, i8* %193, align 1
  %194 = lshr i32 %179, 31
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %195, i8* %196, align 1
  %197 = lshr i32 %179, 31
  %198 = xor i32 %194, %197
  %199 = add i32 %198, %197
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %201, i8* %202, align 1
  store %struct.Memory* %loadMem_49873d, %struct.Memory** %MEMORY
  %loadMem_498740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %PC.i312
  %207 = add i64 %206, 84
  %208 = load i64, i64* %PC.i312
  %209 = add i64 %208, 6
  %210 = load i64, i64* %PC.i312
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC.i312
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %213 = load i8, i8* %212, align 1
  %214 = icmp ne i8 %213, 0
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %216 = load i8, i8* %215, align 1
  %217 = icmp ne i8 %216, 0
  %218 = xor i1 %214, %217
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %BRANCH_TAKEN, align 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %221 = select i1 %218, i64 %207, i64 %209
  store i64 %221, i64* %220, align 8
  store %struct.Memory* %loadMem_498740, %struct.Memory** %MEMORY
  %loadBr_498740 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498740 = icmp eq i8 %loadBr_498740, 1
  br i1 %cmpBr_498740, label %block_.L_498794, label %block_498746

block_498746:                                     ; preds = %entry
  %loadMem_498746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 9
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RSI.i310 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i311
  %232 = sub i64 %231, 20
  %233 = load i64, i64* %PC.i309
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC.i309
  store i64 %232, i64* %RSI.i310, align 8
  store %struct.Memory* %loadMem_498746, %struct.Memory** %MEMORY
  %loadMem_49874a = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RDX.i307 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i308
  %245 = sub i64 %244, 24
  %246 = load i64, i64* %PC.i306
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC.i306
  store i64 %245, i64* %RDX.i307, align 8
  store %struct.Memory* %loadMem_49874a, %struct.Memory** %MEMORY
  %loadMem_49874e = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 11
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RDI.i304 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 15
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %RBP.i305
  %258 = sub i64 %257, 16
  %259 = load i64, i64* %PC.i303
  %260 = add i64 %259, 4
  store i64 %260, i64* %PC.i303
  %261 = inttoptr i64 %258 to i64*
  %262 = load i64, i64* %261
  store i64 %262, i64* %RDI.i304, align 8
  store %struct.Memory* %loadMem_49874e, %struct.Memory** %MEMORY
  %loadMem1_498752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %PC.i302
  %267 = add i64 %266, -48850
  %268 = load i64, i64* %PC.i302
  %269 = add i64 %268, 5
  %270 = load i64, i64* %PC.i302
  %271 = add i64 %270, 5
  store i64 %271, i64* %PC.i302
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %269, i64* %275
  store i64 %274, i64* %272, align 8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %267, i64* %276, align 8
  store %struct.Memory* %loadMem1_498752, %struct.Memory** %MEMORY
  %loadMem2_498752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498752 = load i64, i64* %3
  %call2_498752 = call %struct.Memory* @sub_48c880.gtp_decode_coord(%struct.State* %0, i64 %loadPC_498752, %struct.Memory* %loadMem2_498752)
  store %struct.Memory* %call2_498752, %struct.Memory** %MEMORY
  %loadMem_498757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %282 to i32*
  %283 = load i32, i32* %EAX.i301
  %284 = zext i32 %283 to i64
  %285 = load i64, i64* %PC.i300
  %286 = add i64 %285, 3
  store i64 %286, i64* %PC.i300
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %287, align 1
  %288 = and i32 %283, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288)
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %292, i8* %293, align 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %294, align 1
  %295 = icmp eq i32 %283, 0
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %296, i8* %297, align 1
  %298 = lshr i32 %283, 31
  %299 = trunc i32 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %299, i8* %300, align 1
  %301 = lshr i32 %283, 31
  %302 = xor i32 %298, %301
  %303 = add i32 %302, %301
  %304 = icmp eq i32 %303, 2
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %305, i8* %306, align 1
  store %struct.Memory* %loadMem_498757, %struct.Memory** %MEMORY
  %loadMem_49875a = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %309 to i64*
  %310 = load i64, i64* %PC.i299
  %311 = add i64 %310, 53
  %312 = load i64, i64* %PC.i299
  %313 = add i64 %312, 6
  %314 = load i64, i64* %PC.i299
  %315 = add i64 %314, 6
  store i64 %315, i64* %PC.i299
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %317 = load i8, i8* %316, align 1
  %318 = icmp eq i8 %317, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %BRANCH_TAKEN, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %321 = select i1 %318, i64 %311, i64 %313
  store i64 %321, i64* %320, align 8
  store %struct.Memory* %loadMem_49875a, %struct.Memory** %MEMORY
  %loadBr_49875a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49875a = icmp eq i8 %loadBr_49875a, 1
  br i1 %cmpBr_49875a, label %block_.L_49878f, label %block_498760

block_498760:                                     ; preds = %block_498746
  %loadMem_498760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 9
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RSI.i297 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 15
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RBP.i298
  %332 = sub i64 %331, 28
  %333 = load i64, i64* %PC.i296
  %334 = add i64 %333, 4
  store i64 %334, i64* %PC.i296
  store i64 %332, i64* %RSI.i297, align 8
  store %struct.Memory* %loadMem_498760, %struct.Memory** %MEMORY
  %loadMem_498764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 11
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RDI.i294 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 15
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RBP.i295
  %345 = sub i64 %344, 16
  %346 = load i64, i64* %PC.i293
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC.i293
  %348 = inttoptr i64 %345 to i64*
  %349 = load i64, i64* %348
  store i64 %349, i64* %RDI.i294, align 8
  store %struct.Memory* %loadMem_498764, %struct.Memory** %MEMORY
  %loadMem1_498768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %PC.i292
  %354 = add i64 %353, -49176
  %355 = load i64, i64* %PC.i292
  %356 = add i64 %355, 5
  %357 = load i64, i64* %PC.i292
  %358 = add i64 %357, 5
  store i64 %358, i64* %PC.i292
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %356, i64* %362
  store i64 %361, i64* %359, align 8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %354, i64* %363, align 8
  store %struct.Memory* %loadMem1_498768, %struct.Memory** %MEMORY
  %loadMem2_498768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498768 = load i64, i64* %3
  %call2_498768 = call %struct.Memory* @sub_48c750.gtp_decode_color(%struct.State* %0, i64 %loadPC_498768, %struct.Memory* %loadMem2_498768)
  store %struct.Memory* %call2_498768, %struct.Memory** %MEMORY
  %loadMem_49876d = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %EAX.i291 = bitcast %union.anon* %369 to i32*
  %370 = load i32, i32* %EAX.i291
  %371 = zext i32 %370 to i64
  %372 = load i64, i64* %PC.i290
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC.i290
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %374, align 1
  %375 = and i32 %370, 255
  %376 = call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %379, i8* %380, align 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %381, align 1
  %382 = icmp eq i32 %370, 0
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %383, i8* %384, align 1
  %385 = lshr i32 %370, 31
  %386 = trunc i32 %385 to i8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %386, i8* %387, align 1
  %388 = lshr i32 %370, 31
  %389 = xor i32 %385, %388
  %390 = add i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %392, i8* %393, align 1
  store %struct.Memory* %loadMem_49876d, %struct.Memory** %MEMORY
  %loadMem_498770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i289
  %398 = add i64 %397, 31
  %399 = load i64, i64* %PC.i289
  %400 = add i64 %399, 6
  %401 = load i64, i64* %PC.i289
  %402 = add i64 %401, 6
  store i64 %402, i64* %PC.i289
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %404 = load i8, i8* %403, align 1
  %405 = icmp eq i8 %404, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %BRANCH_TAKEN, align 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %408 = select i1 %405, i64 %398, i64 %400
  store i64 %408, i64* %407, align 8
  store %struct.Memory* %loadMem_498770, %struct.Memory** %MEMORY
  %loadBr_498770 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498770 = icmp eq i8 %loadBr_498770, 1
  br i1 %cmpBr_498770, label %block_.L_49878f, label %block_498776

block_498776:                                     ; preds = %block_498760
  %loadMem_498776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 11
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RDI.i288 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %PC.i287
  %416 = add i64 %415, 10
  store i64 %416, i64* %PC.i287
  store i64 ptrtoint (%G__0x58714f_type* @G__0x58714f to i64), i64* %RDI.i288, align 8
  store %struct.Memory* %loadMem_498776, %struct.Memory** %MEMORY
  %loadMem_498780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %423 = bitcast %union.anon* %422 to %struct.anon.2*
  %AL.i286 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %423, i32 0, i32 0
  %424 = load i64, i64* %PC.i285
  %425 = add i64 %424, 2
  store i64 %425, i64* %PC.i285
  store i8 0, i8* %AL.i286, align 1
  store %struct.Memory* %loadMem_498780, %struct.Memory** %MEMORY
  %loadMem1_498782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 33
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %PC.i284
  %430 = add i64 %429, -52962
  %431 = load i64, i64* %PC.i284
  %432 = add i64 %431, 5
  %433 = load i64, i64* %PC.i284
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC.i284
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %432, i64* %438
  store i64 %437, i64* %435, align 8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %430, i64* %439, align 8
  store %struct.Memory* %loadMem1_498782, %struct.Memory** %MEMORY
  %loadMem2_498782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498782 = load i64, i64* %3
  %call2_498782 = call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* %0, i64 %loadPC_498782, %struct.Memory* %loadMem2_498782)
  store %struct.Memory* %call2_498782, %struct.Memory** %MEMORY
  %loadMem_498787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %EAX.i282 = bitcast %union.anon* %445 to i32*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i283
  %450 = sub i64 %449, 4
  %451 = load i32, i32* %EAX.i282
  %452 = zext i32 %451 to i64
  %453 = load i64, i64* %PC.i281
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC.i281
  %455 = inttoptr i64 %450 to i32*
  store i32 %451, i32* %455
  store %struct.Memory* %loadMem_498787, %struct.Memory** %MEMORY
  %loadMem_49878a = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %PC.i280
  %460 = add i64 %459, 591
  %461 = load i64, i64* %PC.i280
  %462 = add i64 %461, 5
  store i64 %462, i64* %PC.i280
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %460, i64* %463, align 8
  store %struct.Memory* %loadMem_49878a, %struct.Memory** %MEMORY
  br label %block_.L_4989d9

block_.L_49878f:                                  ; preds = %block_498760, %block_498746
  %loadMem_49878f = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %PC.i279
  %468 = add i64 %467, 5
  %469 = load i64, i64* %PC.i279
  %470 = add i64 %469, 5
  store i64 %470, i64* %PC.i279
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %468, i64* %471, align 8
  store %struct.Memory* %loadMem_49878f, %struct.Memory** %MEMORY
  br label %block_.L_498794

block_.L_498794:                                  ; preds = %block_.L_49878f, %entry
  %loadMem_498794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 15
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %RBP.i278
  %482 = sub i64 %481, 20
  %483 = load i64, i64* %PC.i276
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC.i276
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485
  %487 = sext i32 %486 to i64
  %488 = mul i64 %487, 20
  %489 = trunc i64 %488 to i32
  %490 = and i64 %488, 4294967295
  store i64 %490, i64* %RAX.i277, align 8
  %491 = shl i64 %488, 32
  %492 = ashr exact i64 %491, 32
  %493 = icmp ne i64 %492, %488
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %494, i8* %495, align 1
  %496 = and i32 %489, 255
  %497 = call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %500, i8* %501, align 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %502, align 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %503, align 1
  %504 = lshr i32 %489, 31
  %505 = trunc i32 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %505, i8* %506, align 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %507, align 1
  store %struct.Memory* %loadMem_498794, %struct.Memory** %MEMORY
  %loadMem_498798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %RAX.i275
  %515 = load i64, i64* %PC.i274
  %516 = add i64 %515, 3
  store i64 %516, i64* %PC.i274
  %517 = trunc i64 %514 to i32
  %518 = add i32 21, %517
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i275, align 8
  %520 = icmp ult i32 %518, %517
  %521 = icmp ult i32 %518, 21
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %523, i8* %524, align 1
  %525 = and i32 %518, 255
  %526 = call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %529, i8* %530, align 1
  %531 = xor i64 21, %514
  %532 = trunc i64 %531 to i32
  %533 = xor i32 %532, %518
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %536, i8* %537, align 1
  %538 = icmp eq i32 %518, 0
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %539, i8* %540, align 1
  %541 = lshr i32 %518, 31
  %542 = trunc i32 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %542, i8* %543, align 1
  %544 = lshr i32 %517, 31
  %545 = xor i32 %541, %544
  %546 = add i32 %545, %541
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %548, i8* %549, align 1
  store %struct.Memory* %loadMem_498798, %struct.Memory** %MEMORY
  %loadMem_49879b = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 15
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %RAX.i272
  %560 = load i64, i64* %RBP.i273
  %561 = sub i64 %560, 24
  %562 = load i64, i64* %PC.i271
  %563 = add i64 %562, 3
  store i64 %563, i64* %PC.i271
  %564 = trunc i64 %559 to i32
  %565 = inttoptr i64 %561 to i32*
  %566 = load i32, i32* %565
  %567 = add i32 %566, %564
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i272, align 8
  %569 = icmp ult i32 %567, %564
  %570 = icmp ult i32 %567, %566
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %572, i8* %573, align 1
  %574 = and i32 %567, 255
  %575 = call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %578, i8* %579, align 1
  %580 = xor i32 %566, %564
  %581 = xor i32 %580, %567
  %582 = lshr i32 %581, 4
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %584, i8* %585, align 1
  %586 = icmp eq i32 %567, 0
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %587, i8* %588, align 1
  %589 = lshr i32 %567, 31
  %590 = trunc i32 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %590, i8* %591, align 1
  %592 = lshr i32 %564, 31
  %593 = lshr i32 %566, 31
  %594 = xor i32 %589, %592
  %595 = xor i32 %589, %593
  %596 = add i32 %594, %595
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %598, i8* %599, align 1
  store %struct.Memory* %loadMem_49879b, %struct.Memory** %MEMORY
  %loadMem_49879e = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %605 to i32*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 5
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %608 to i64*
  %609 = load i32, i32* %EAX.i269
  %610 = zext i32 %609 to i64
  %611 = load i64, i64* %PC.i268
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC.i268
  %613 = shl i64 %610, 32
  %614 = ashr exact i64 %613, 32
  store i64 %614, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_49879e, %struct.Memory** %MEMORY
  %loadMem_4987a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 5
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %RCX.i267
  %625 = add i64 %624, 12099168
  %626 = load i64, i64* %PC.i265
  %627 = add i64 %626, 8
  store i64 %627, i64* %PC.i265
  %628 = inttoptr i64 %625 to i8*
  %629 = load i8, i8* %628
  %630 = zext i8 %629 to i64
  store i64 %630, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_4987a1, %struct.Memory** %MEMORY
  %loadMem_4987a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %636 to i32*
  %637 = load i32, i32* %EAX.i264
  %638 = zext i32 %637 to i64
  %639 = load i64, i64* %PC.i263
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC.i263
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %641, align 1
  %642 = and i32 %637, 255
  %643 = call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %646, i8* %647, align 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %648, align 1
  %649 = icmp eq i32 %637, 0
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %650, i8* %651, align 1
  %652 = lshr i32 %637, 31
  %653 = trunc i32 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %653, i8* %654, align 1
  %655 = lshr i32 %637, 31
  %656 = xor i32 %652, %655
  %657 = add i32 %656, %655
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %659, i8* %660, align 1
  store %struct.Memory* %loadMem_4987a9, %struct.Memory** %MEMORY
  %loadMem_4987ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %PC.i262
  %665 = add i64 %664, 31
  %666 = load i64, i64* %PC.i262
  %667 = add i64 %666, 6
  %668 = load i64, i64* %PC.i262
  %669 = add i64 %668, 6
  store i64 %669, i64* %PC.i262
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %671 = load i8, i8* %670, align 1
  %672 = icmp eq i8 %671, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %BRANCH_TAKEN, align 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %675 = select i1 %672, i64 %665, i64 %667
  store i64 %675, i64* %674, align 8
  store %struct.Memory* %loadMem_4987ac, %struct.Memory** %MEMORY
  %loadBr_4987ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4987ac = icmp eq i8 %loadBr_4987ac, 1
  br i1 %cmpBr_4987ac, label %block_.L_4987cb, label %block_4987b2

block_4987b2:                                     ; preds = %block_.L_498794
  %loadMem_4987b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 11
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RDI.i261 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %PC.i260
  %683 = add i64 %682, 10
  store i64 %683, i64* %PC.i260
  store i64 ptrtoint (%G__0x587162_type* @G__0x587162 to i64), i64* %RDI.i261, align 8
  store %struct.Memory* %loadMem_4987b2, %struct.Memory** %MEMORY
  %loadMem_4987bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %690 = bitcast %union.anon* %689 to %struct.anon.2*
  %AL.i259 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %690, i32 0, i32 0
  %691 = load i64, i64* %PC.i258
  %692 = add i64 %691, 2
  store i64 %692, i64* %PC.i258
  store i8 0, i8* %AL.i259, align 1
  store %struct.Memory* %loadMem_4987bc, %struct.Memory** %MEMORY
  %loadMem1_4987be = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %PC.i257
  %697 = add i64 %696, -53022
  %698 = load i64, i64* %PC.i257
  %699 = add i64 %698, 5
  %700 = load i64, i64* %PC.i257
  %701 = add i64 %700, 5
  store i64 %701, i64* %PC.i257
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %703 = load i64, i64* %702, align 8
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %699, i64* %705
  store i64 %704, i64* %702, align 8
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %697, i64* %706, align 8
  store %struct.Memory* %loadMem1_4987be, %struct.Memory** %MEMORY
  %loadMem2_4987be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4987be = load i64, i64* %3
  %call2_4987be = call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* %0, i64 %loadPC_4987be, %struct.Memory* %loadMem2_4987be)
  store %struct.Memory* %call2_4987be, %struct.Memory** %MEMORY
  %loadMem_4987c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %712 to i32*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 15
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RBP.i256
  %717 = sub i64 %716, 4
  %718 = load i32, i32* %EAX.i255
  %719 = zext i32 %718 to i64
  %720 = load i64, i64* %PC.i254
  %721 = add i64 %720, 3
  store i64 %721, i64* %PC.i254
  %722 = inttoptr i64 %717 to i32*
  store i32 %718, i32* %722
  store %struct.Memory* %loadMem_4987c3, %struct.Memory** %MEMORY
  %loadMem_4987c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %PC.i253
  %727 = add i64 %726, 531
  %728 = load i64, i64* %PC.i253
  %729 = add i64 %728, 5
  store i64 %729, i64* %PC.i253
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %727, i64* %730, align 8
  store %struct.Memory* %loadMem_4987c6, %struct.Memory** %MEMORY
  br label %block_.L_4989d9

block_.L_4987cb:                                  ; preds = %block_.L_498794
  %loadMem_4987cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 11
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %EDI.i251 = bitcast %union.anon* %736 to i32*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 11
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RDI.i252 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RDI.i252
  %741 = load i32, i32* %EDI.i251
  %742 = zext i32 %741 to i64
  %743 = load i64, i64* %PC.i250
  %744 = add i64 %743, 2
  store i64 %744, i64* %PC.i250
  %745 = xor i64 %742, %740
  %746 = trunc i64 %745 to i32
  %747 = and i64 %745, 4294967295
  store i64 %747, i64* %RDI.i252, align 8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %748, align 1
  %749 = and i32 %746, 255
  %750 = call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %753, i8* %754, align 1
  %755 = icmp eq i32 %746, 0
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %756, i8* %757, align 1
  %758 = lshr i32 %746, 31
  %759 = trunc i32 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %759, i8* %760, align 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %761, align 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %762, align 1
  store %struct.Memory* %loadMem_4987cb, %struct.Memory** %MEMORY
  %loadMem1_4987cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i249
  %767 = add i64 %766, -52253
  %768 = load i64, i64* %PC.i249
  %769 = add i64 %768, 5
  %770 = load i64, i64* %PC.i249
  %771 = add i64 %770, 5
  store i64 %771, i64* %PC.i249
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = add i64 %773, -8
  %775 = inttoptr i64 %774 to i64*
  store i64 %769, i64* %775
  store i64 %774, i64* %772, align 8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %767, i64* %776, align 8
  store %struct.Memory* %loadMem1_4987cd, %struct.Memory** %MEMORY
  %loadMem2_4987cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4987cd = load i64, i64* %3
  %call2_4987cd = call %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* %0, i64 %loadPC_4987cd, %struct.Memory* %loadMem2_4987cd)
  store %struct.Memory* %call2_4987cd, %struct.Memory** %MEMORY
  %loadMem_4987d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 15
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RBP.i248
  %784 = sub i64 %783, 40
  %785 = load i64, i64* %PC.i247
  %786 = add i64 %785, 7
  store i64 %786, i64* %PC.i247
  %787 = inttoptr i64 %784 to i32*
  store i32 0, i32* %787
  store %struct.Memory* %loadMem_4987d2, %struct.Memory** %MEMORY
  br label %block_.L_4987d9

block_.L_4987d9:                                  ; preds = %block_.L_498998, %block_.L_4987cb
  %loadMem_4987d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i246
  %798 = sub i64 %797, 40
  %799 = load i64, i64* %PC.i244
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i244
  %801 = inttoptr i64 %798 to i32*
  %802 = load i32, i32* %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_4987d9, %struct.Memory** %MEMORY
  %loadMem_4987dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %EAX.i243 = bitcast %union.anon* %809 to i32*
  %810 = load i32, i32* %EAX.i243
  %811 = zext i32 %810 to i64
  %812 = load i64, i64* %PC.i242
  %813 = add i64 %812, 7
  store i64 %813, i64* %PC.i242
  %814 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %815 = sub i32 %810, %814
  %816 = icmp ult i32 %810, %814
  %817 = zext i1 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %817, i8* %818, align 1
  %819 = and i32 %815, 255
  %820 = call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %823, i8* %824, align 1
  %825 = xor i32 %814, %810
  %826 = xor i32 %825, %815
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %829, i8* %830, align 1
  %831 = icmp eq i32 %815, 0
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %832, i8* %833, align 1
  %834 = lshr i32 %815, 31
  %835 = trunc i32 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %835, i8* %836, align 1
  %837 = lshr i32 %810, 31
  %838 = lshr i32 %814, 31
  %839 = xor i32 %838, %837
  %840 = xor i32 %834, %837
  %841 = add i32 %840, %839
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %843, i8* %844, align 1
  store %struct.Memory* %loadMem_4987dc, %struct.Memory** %MEMORY
  %loadMem_4987e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %847 to i64*
  %848 = load i64, i64* %PC.i241
  %849 = add i64 %848, 451
  %850 = load i64, i64* %PC.i241
  %851 = add i64 %850, 6
  %852 = load i64, i64* %PC.i241
  %853 = add i64 %852, 6
  store i64 %853, i64* %PC.i241
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %855 = load i8, i8* %854, align 1
  %856 = icmp ne i8 %855, 0
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %858 = load i8, i8* %857, align 1
  %859 = icmp ne i8 %858, 0
  %860 = xor i1 %856, %859
  %861 = xor i1 %860, true
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %BRANCH_TAKEN, align 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %864 = select i1 %860, i64 %851, i64 %849
  store i64 %864, i64* %863, align 8
  store %struct.Memory* %loadMem_4987e3, %struct.Memory** %MEMORY
  %loadBr_4987e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4987e3 = icmp eq i8 %loadBr_4987e3, 1
  br i1 %cmpBr_4987e3, label %block_.L_4989a6, label %block_4987e9

block_4987e9:                                     ; preds = %block_.L_4987d9
  %loadMem_4987e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 15
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %RBP.i240
  %872 = sub i64 %871, 44
  %873 = load i64, i64* %PC.i239
  %874 = add i64 %873, 7
  store i64 %874, i64* %PC.i239
  %875 = inttoptr i64 %872 to i32*
  store i32 0, i32* %875
  store %struct.Memory* %loadMem_4987e9, %struct.Memory** %MEMORY
  br label %block_.L_4987f0

block_.L_4987f0:                                  ; preds = %block_.L_498985, %block_4987e9
  %loadMem_4987f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %RBP.i238
  %886 = sub i64 %885, 44
  %887 = load i64, i64* %PC.i236
  %888 = add i64 %887, 3
  store i64 %888, i64* %PC.i236
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_4987f0, %struct.Memory** %MEMORY
  %loadMem_4987f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 1
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %EAX.i235 = bitcast %union.anon* %897 to i32*
  %898 = load i32, i32* %EAX.i235
  %899 = zext i32 %898 to i64
  %900 = load i64, i64* %PC.i234
  %901 = add i64 %900, 7
  store i64 %901, i64* %PC.i234
  %902 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %903 = sub i32 %898, %902
  %904 = icmp ult i32 %898, %902
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %905, i8* %906, align 1
  %907 = and i32 %903, 255
  %908 = call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %911, i8* %912, align 1
  %913 = xor i32 %902, %898
  %914 = xor i32 %913, %903
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %917, i8* %918, align 1
  %919 = icmp eq i32 %903, 0
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %920, i8* %921, align 1
  %922 = lshr i32 %903, 31
  %923 = trunc i32 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %923, i8* %924, align 1
  %925 = lshr i32 %898, 31
  %926 = lshr i32 %902, 31
  %927 = xor i32 %926, %925
  %928 = xor i32 %922, %925
  %929 = add i32 %928, %927
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %931, i8* %932, align 1
  store %struct.Memory* %loadMem_4987f3, %struct.Memory** %MEMORY
  %loadMem_4987fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %935 to i64*
  %936 = load i64, i64* %PC.i233
  %937 = add i64 %936, 409
  %938 = load i64, i64* %PC.i233
  %939 = add i64 %938, 6
  %940 = load i64, i64* %PC.i233
  %941 = add i64 %940, 6
  store i64 %941, i64* %PC.i233
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %943 = load i8, i8* %942, align 1
  %944 = icmp ne i8 %943, 0
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %946 = load i8, i8* %945, align 1
  %947 = icmp ne i8 %946, 0
  %948 = xor i1 %944, %947
  %949 = xor i1 %948, true
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %BRANCH_TAKEN, align 1
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %952 = select i1 %948, i64 %939, i64 %937
  store i64 %952, i64* %951, align 8
  store %struct.Memory* %loadMem_4987fa, %struct.Memory** %MEMORY
  %loadBr_4987fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4987fa = icmp eq i8 %loadBr_4987fa, 1
  br i1 %cmpBr_4987fa, label %block_.L_498993, label %block_498800

block_498800:                                     ; preds = %block_.L_4987f0
  %loadMem_498800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 1
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 15
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %RBP.i232
  %963 = sub i64 %962, 40
  %964 = load i64, i64* %PC.i230
  %965 = add i64 %964, 4
  store i64 %965, i64* %PC.i230
  %966 = inttoptr i64 %963 to i32*
  %967 = load i32, i32* %966
  %968 = sext i32 %967 to i64
  %969 = mul i64 %968, 20
  %970 = trunc i64 %969 to i32
  %971 = and i64 %969, 4294967295
  store i64 %971, i64* %RAX.i231, align 8
  %972 = shl i64 %969, 32
  %973 = ashr exact i64 %972, 32
  %974 = icmp ne i64 %973, %969
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %975, i8* %976, align 1
  %977 = and i32 %970, 255
  %978 = call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %981, i8* %982, align 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %983, align 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %984, align 1
  %985 = lshr i32 %970, 31
  %986 = trunc i32 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %986, i8* %987, align 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %975, i8* %988, align 1
  store %struct.Memory* %loadMem_498800, %struct.Memory** %MEMORY
  %loadMem_498804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 1
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RAX.i229
  %996 = load i64, i64* %PC.i228
  %997 = add i64 %996, 3
  store i64 %997, i64* %PC.i228
  %998 = trunc i64 %995 to i32
  %999 = add i32 21, %998
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RAX.i229, align 8
  %1001 = icmp ult i32 %999, %998
  %1002 = icmp ult i32 %999, 21
  %1003 = or i1 %1001, %1002
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1004, i8* %1005, align 1
  %1006 = and i32 %999, 255
  %1007 = call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1010, i8* %1011, align 1
  %1012 = xor i64 21, %995
  %1013 = trunc i64 %1012 to i32
  %1014 = xor i32 %1013, %999
  %1015 = lshr i32 %1014, 4
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1017, i8* %1018, align 1
  %1019 = icmp eq i32 %999, 0
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1020, i8* %1021, align 1
  %1022 = lshr i32 %999, 31
  %1023 = trunc i32 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1023, i8* %1024, align 1
  %1025 = lshr i32 %998, 31
  %1026 = xor i32 %1022, %1025
  %1027 = add i32 %1026, %1022
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1029, i8* %1030, align 1
  store %struct.Memory* %loadMem_498804, %struct.Memory** %MEMORY
  %loadMem_498807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 1
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 15
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RAX.i226
  %1041 = load i64, i64* %RBP.i227
  %1042 = sub i64 %1041, 44
  %1043 = load i64, i64* %PC.i225
  %1044 = add i64 %1043, 3
  store i64 %1044, i64* %PC.i225
  %1045 = trunc i64 %1040 to i32
  %1046 = inttoptr i64 %1042 to i32*
  %1047 = load i32, i32* %1046
  %1048 = add i32 %1047, %1045
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RAX.i226, align 8
  %1050 = icmp ult i32 %1048, %1045
  %1051 = icmp ult i32 %1048, %1047
  %1052 = or i1 %1050, %1051
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1053, i8* %1054, align 1
  %1055 = and i32 %1048, 255
  %1056 = call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1059, i8* %1060, align 1
  %1061 = xor i32 %1047, %1045
  %1062 = xor i32 %1061, %1048
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1065, i8* %1066, align 1
  %1067 = icmp eq i32 %1048, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1
  %1070 = lshr i32 %1048, 31
  %1071 = trunc i32 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1
  %1073 = lshr i32 %1045, 31
  %1074 = lshr i32 %1047, 31
  %1075 = xor i32 %1070, %1073
  %1076 = xor i32 %1070, %1074
  %1077 = add i32 %1075, %1076
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1079, i8* %1080, align 1
  store %struct.Memory* %loadMem_498807, %struct.Memory** %MEMORY
  %loadMem_49880a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %EAX.i223 = bitcast %union.anon* %1086 to i32*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 5
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %1089 to i64*
  %1090 = load i32, i32* %EAX.i223
  %1091 = zext i32 %1090 to i64
  %1092 = load i64, i64* %PC.i222
  %1093 = add i64 %1092, 3
  store i64 %1093, i64* %PC.i222
  %1094 = shl i64 %1091, 32
  %1095 = ashr exact i64 %1094, 32
  store i64 %1095, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_49880a, %struct.Memory** %MEMORY
  %loadMem_49880d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 5
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RCX.i221
  %1106 = add i64 %1105, 12099168
  %1107 = load i64, i64* %PC.i219
  %1108 = add i64 %1107, 8
  store i64 %1108, i64* %PC.i219
  %1109 = inttoptr i64 %1106 to i8*
  %1110 = load i8, i8* %1109
  %1111 = zext i8 %1110 to i64
  store i64 %1111, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_49880d, %struct.Memory** %MEMORY
  %loadMem_498815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 1
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %EAX.i218 = bitcast %union.anon* %1117 to i32*
  %1118 = load i32, i32* %EAX.i218
  %1119 = zext i32 %1118 to i64
  %1120 = load i64, i64* %PC.i217
  %1121 = add i64 %1120, 3
  store i64 %1121, i64* %PC.i217
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1122, align 1
  %1123 = and i32 %1118, 255
  %1124 = call i32 @llvm.ctpop.i32(i32 %1123)
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1127, i8* %1128, align 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1129, align 1
  %1130 = icmp eq i32 %1118, 0
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1131, i8* %1132, align 1
  %1133 = lshr i32 %1118, 31
  %1134 = trunc i32 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1134, i8* %1135, align 1
  %1136 = lshr i32 %1118, 31
  %1137 = xor i32 %1133, %1136
  %1138 = add i32 %1137, %1136
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1140, i8* %1141, align 1
  store %struct.Memory* %loadMem_498815, %struct.Memory** %MEMORY
  %loadMem_498818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %PC.i216
  %1146 = add i64 %1145, 46
  %1147 = load i64, i64* %PC.i216
  %1148 = add i64 %1147, 6
  %1149 = load i64, i64* %PC.i216
  %1150 = add i64 %1149, 6
  store i64 %1150, i64* %PC.i216
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1152 = load i8, i8* %1151, align 1
  store i8 %1152, i8* %BRANCH_TAKEN, align 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1154 = icmp ne i8 %1152, 0
  %1155 = select i1 %1154, i64 %1146, i64 %1148
  store i64 %1155, i64* %1153, align 8
  store %struct.Memory* %loadMem_498818, %struct.Memory** %MEMORY
  %loadBr_498818 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498818 = icmp eq i8 %loadBr_498818, 1
  br i1 %cmpBr_498818, label %block_.L_498846, label %block_49881e

block_49881e:                                     ; preds = %block_498800
  %loadMem_49881e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i215
  %1163 = sub i64 %1162, 28
  %1164 = load i64, i64* %PC.i214
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC.i214
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1168, align 1
  %1169 = and i32 %1167, 255
  %1170 = call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1173, i8* %1174, align 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1175, align 1
  %1176 = icmp eq i32 %1167, 0
  %1177 = zext i1 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1177, i8* %1178, align 1
  %1179 = lshr i32 %1167, 31
  %1180 = trunc i32 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1180, i8* %1181, align 1
  %1182 = lshr i32 %1167, 31
  %1183 = xor i32 %1179, %1182
  %1184 = add i32 %1183, %1182
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1186, i8* %1187, align 1
  store %struct.Memory* %loadMem_49881e, %struct.Memory** %MEMORY
  %loadMem_498822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %PC.i213
  %1192 = add i64 %1191, 41
  %1193 = load i64, i64* %PC.i213
  %1194 = add i64 %1193, 6
  %1195 = load i64, i64* %PC.i213
  %1196 = add i64 %1195, 6
  store i64 %1196, i64* %PC.i213
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1198 = load i8, i8* %1197, align 1
  store i8 %1198, i8* %BRANCH_TAKEN, align 1
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1200 = icmp ne i8 %1198, 0
  %1201 = select i1 %1200, i64 %1192, i64 %1194
  store i64 %1201, i64* %1199, align 8
  store %struct.Memory* %loadMem_498822, %struct.Memory** %MEMORY
  %loadBr_498822 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498822 = icmp eq i8 %loadBr_498822, 1
  br i1 %cmpBr_498822, label %block_.L_49884b, label %block_498828

block_498828:                                     ; preds = %block_49881e
  %loadMem_498828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 33
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 15
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %1210 to i64*
  %1211 = load i64, i64* %RBP.i212
  %1212 = sub i64 %1211, 40
  %1213 = load i64, i64* %PC.i210
  %1214 = add i64 %1213, 4
  store i64 %1214, i64* %PC.i210
  %1215 = inttoptr i64 %1212 to i32*
  %1216 = load i32, i32* %1215
  %1217 = sext i32 %1216 to i64
  %1218 = mul i64 %1217, 20
  %1219 = trunc i64 %1218 to i32
  %1220 = and i64 %1218, 4294967295
  store i64 %1220, i64* %RAX.i211, align 8
  %1221 = shl i64 %1218, 32
  %1222 = ashr exact i64 %1221, 32
  %1223 = icmp ne i64 %1222, %1218
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1224, i8* %1225, align 1
  %1226 = and i32 %1219, 255
  %1227 = call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1230, i8* %1231, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1232, align 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1233, align 1
  %1234 = lshr i32 %1219, 31
  %1235 = trunc i32 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1235, i8* %1236, align 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1224, i8* %1237, align 1
  store %struct.Memory* %loadMem_498828, %struct.Memory** %MEMORY
  %loadMem_49882c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %RAX.i209
  %1245 = load i64, i64* %PC.i208
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %PC.i208
  %1247 = trunc i64 %1244 to i32
  %1248 = add i32 21, %1247
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RAX.i209, align 8
  %1250 = icmp ult i32 %1248, %1247
  %1251 = icmp ult i32 %1248, 21
  %1252 = or i1 %1250, %1251
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1253, i8* %1254, align 1
  %1255 = and i32 %1248, 255
  %1256 = call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1259, i8* %1260, align 1
  %1261 = xor i64 21, %1244
  %1262 = trunc i64 %1261 to i32
  %1263 = xor i32 %1262, %1248
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1266, i8* %1267, align 1
  %1268 = icmp eq i32 %1248, 0
  %1269 = zext i1 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1269, i8* %1270, align 1
  %1271 = lshr i32 %1248, 31
  %1272 = trunc i32 %1271 to i8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1272, i8* %1273, align 1
  %1274 = lshr i32 %1247, 31
  %1275 = xor i32 %1271, %1274
  %1276 = add i32 %1275, %1271
  %1277 = icmp eq i32 %1276, 2
  %1278 = zext i1 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1278, i8* %1279, align 1
  store %struct.Memory* %loadMem_49882c, %struct.Memory** %MEMORY
  %loadMem_49882f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 15
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %RAX.i206
  %1290 = load i64, i64* %RBP.i207
  %1291 = sub i64 %1290, 44
  %1292 = load i64, i64* %PC.i205
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC.i205
  %1294 = trunc i64 %1289 to i32
  %1295 = inttoptr i64 %1291 to i32*
  %1296 = load i32, i32* %1295
  %1297 = add i32 %1296, %1294
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i206, align 8
  %1299 = icmp ult i32 %1297, %1294
  %1300 = icmp ult i32 %1297, %1296
  %1301 = or i1 %1299, %1300
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1302, i8* %1303, align 1
  %1304 = and i32 %1297, 255
  %1305 = call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1308, i8* %1309, align 1
  %1310 = xor i32 %1296, %1294
  %1311 = xor i32 %1310, %1297
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1314, i8* %1315, align 1
  %1316 = icmp eq i32 %1297, 0
  %1317 = zext i1 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1317, i8* %1318, align 1
  %1319 = lshr i32 %1297, 31
  %1320 = trunc i32 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1320, i8* %1321, align 1
  %1322 = lshr i32 %1294, 31
  %1323 = lshr i32 %1296, 31
  %1324 = xor i32 %1319, %1322
  %1325 = xor i32 %1319, %1323
  %1326 = add i32 %1324, %1325
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1328, i8* %1329, align 1
  store %struct.Memory* %loadMem_49882f, %struct.Memory** %MEMORY
  %loadMem_498832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %1335 to i32*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %1338 to i64*
  %1339 = load i32, i32* %EAX.i203
  %1340 = zext i32 %1339 to i64
  %1341 = load i64, i64* %PC.i202
  %1342 = add i64 %1341, 3
  store i64 %1342, i64* %PC.i202
  %1343 = shl i64 %1340, 32
  %1344 = ashr exact i64 %1343, 32
  store i64 %1344, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_498832, %struct.Memory** %MEMORY
  %loadMem_498835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 5
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RCX.i201
  %1355 = add i64 %1354, 12099168
  %1356 = load i64, i64* %PC.i199
  %1357 = add i64 %1356, 8
  store i64 %1357, i64* %PC.i199
  %1358 = inttoptr i64 %1355 to i8*
  %1359 = load i8, i8* %1358
  %1360 = zext i8 %1359 to i64
  store i64 %1360, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_498835, %struct.Memory** %MEMORY
  %loadMem_49883d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 1
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %EAX.i197 = bitcast %union.anon* %1366 to i32*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 15
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1369 to i64*
  %1370 = load i32, i32* %EAX.i197
  %1371 = zext i32 %1370 to i64
  %1372 = load i64, i64* %RBP.i198
  %1373 = sub i64 %1372, 28
  %1374 = load i64, i64* %PC.i196
  %1375 = add i64 %1374, 3
  store i64 %1375, i64* %PC.i196
  %1376 = inttoptr i64 %1373 to i32*
  %1377 = load i32, i32* %1376
  %1378 = sub i32 %1370, %1377
  %1379 = icmp ult i32 %1370, %1377
  %1380 = zext i1 %1379 to i8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1380, i8* %1381, align 1
  %1382 = and i32 %1378, 255
  %1383 = call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1386, i8* %1387, align 1
  %1388 = xor i32 %1377, %1370
  %1389 = xor i32 %1388, %1378
  %1390 = lshr i32 %1389, 4
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1392, i8* %1393, align 1
  %1394 = icmp eq i32 %1378, 0
  %1395 = zext i1 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1395, i8* %1396, align 1
  %1397 = lshr i32 %1378, 31
  %1398 = trunc i32 %1397 to i8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1398, i8* %1399, align 1
  %1400 = lshr i32 %1370, 31
  %1401 = lshr i32 %1377, 31
  %1402 = xor i32 %1401, %1400
  %1403 = xor i32 %1397, %1400
  %1404 = add i32 %1403, %1402
  %1405 = icmp eq i32 %1404, 2
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1406, i8* %1407, align 1
  store %struct.Memory* %loadMem_49883d, %struct.Memory** %MEMORY
  %loadMem_498840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %PC.i195
  %1412 = add i64 %1411, 11
  %1413 = load i64, i64* %PC.i195
  %1414 = add i64 %1413, 6
  %1415 = load i64, i64* %PC.i195
  %1416 = add i64 %1415, 6
  store i64 %1416, i64* %PC.i195
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1418 = load i8, i8* %1417, align 1
  store i8 %1418, i8* %BRANCH_TAKEN, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1420 = icmp ne i8 %1418, 0
  %1421 = select i1 %1420, i64 %1412, i64 %1414
  store i64 %1421, i64* %1419, align 8
  store %struct.Memory* %loadMem_498840, %struct.Memory** %MEMORY
  %loadBr_498840 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498840 = icmp eq i8 %loadBr_498840, 1
  br i1 %cmpBr_498840, label %block_.L_49884b, label %block_.L_498846

block_.L_498846:                                  ; preds = %block_498828, %block_498800
  %loadMem_498846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %PC.i194
  %1426 = add i64 %1425, 319
  %1427 = load i64, i64* %PC.i194
  %1428 = add i64 %1427, 5
  store i64 %1428, i64* %PC.i194
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1426, i64* %1429, align 8
  store %struct.Memory* %loadMem_498846, %struct.Memory** %MEMORY
  br label %block_.L_498985

block_.L_49884b:                                  ; preds = %block_498828, %block_49881e
  %loadMem_49884b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 15
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RBP.i193
  %1437 = sub i64 %1436, 48
  %1438 = load i64, i64* %PC.i192
  %1439 = add i64 %1438, 7
  store i64 %1439, i64* %PC.i192
  %1440 = inttoptr i64 %1437 to i32*
  store i32 0, i32* %1440
  store %struct.Memory* %loadMem_49884b, %struct.Memory** %MEMORY
  %loadMem_498852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 1
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 15
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %RBP.i191
  %1451 = sub i64 %1450, 40
  %1452 = load i64, i64* %PC.i189
  %1453 = add i64 %1452, 4
  store i64 %1453, i64* %PC.i189
  %1454 = inttoptr i64 %1451 to i32*
  %1455 = load i32, i32* %1454
  %1456 = sext i32 %1455 to i64
  %1457 = mul i64 %1456, 20
  %1458 = trunc i64 %1457 to i32
  %1459 = and i64 %1457, 4294967295
  store i64 %1459, i64* %RAX.i190, align 8
  %1460 = shl i64 %1457, 32
  %1461 = ashr exact i64 %1460, 32
  %1462 = icmp ne i64 %1461, %1457
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1463, i8* %1464, align 1
  %1465 = and i32 %1458, 255
  %1466 = call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1469, i8* %1470, align 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1471, align 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1472, align 1
  %1473 = lshr i32 %1458, 31
  %1474 = trunc i32 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1474, i8* %1475, align 1
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1463, i8* %1476, align 1
  store %struct.Memory* %loadMem_498852, %struct.Memory** %MEMORY
  %loadMem_498856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 1
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %RAX.i188
  %1484 = load i64, i64* %PC.i187
  %1485 = add i64 %1484, 3
  store i64 %1485, i64* %PC.i187
  %1486 = trunc i64 %1483 to i32
  %1487 = add i32 21, %1486
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RAX.i188, align 8
  %1489 = icmp ult i32 %1487, %1486
  %1490 = icmp ult i32 %1487, 21
  %1491 = or i1 %1489, %1490
  %1492 = zext i1 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1492, i8* %1493, align 1
  %1494 = and i32 %1487, 255
  %1495 = call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1498, i8* %1499, align 1
  %1500 = xor i64 21, %1483
  %1501 = trunc i64 %1500 to i32
  %1502 = xor i32 %1501, %1487
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1505, i8* %1506, align 1
  %1507 = icmp eq i32 %1487, 0
  %1508 = zext i1 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1508, i8* %1509, align 1
  %1510 = lshr i32 %1487, 31
  %1511 = trunc i32 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1511, i8* %1512, align 1
  %1513 = lshr i32 %1486, 31
  %1514 = xor i32 %1510, %1513
  %1515 = add i32 %1514, %1510
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1517, i8* %1518, align 1
  store %struct.Memory* %loadMem_498856, %struct.Memory** %MEMORY
  %loadMem_498859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RAX.i185
  %1529 = load i64, i64* %RBP.i186
  %1530 = sub i64 %1529, 44
  %1531 = load i64, i64* %PC.i184
  %1532 = add i64 %1531, 3
  store i64 %1532, i64* %PC.i184
  %1533 = trunc i64 %1528 to i32
  %1534 = inttoptr i64 %1530 to i32*
  %1535 = load i32, i32* %1534
  %1536 = add i32 %1535, %1533
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i185, align 8
  %1538 = icmp ult i32 %1536, %1533
  %1539 = icmp ult i32 %1536, %1535
  %1540 = or i1 %1538, %1539
  %1541 = zext i1 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1541, i8* %1542, align 1
  %1543 = and i32 %1536, 255
  %1544 = call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1547, i8* %1548, align 1
  %1549 = xor i32 %1535, %1533
  %1550 = xor i32 %1549, %1536
  %1551 = lshr i32 %1550, 4
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1553, i8* %1554, align 1
  %1555 = icmp eq i32 %1536, 0
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1556, i8* %1557, align 1
  %1558 = lshr i32 %1536, 31
  %1559 = trunc i32 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i32 %1533, 31
  %1562 = lshr i32 %1535, 31
  %1563 = xor i32 %1558, %1561
  %1564 = xor i32 %1558, %1562
  %1565 = add i32 %1563, %1564
  %1566 = icmp eq i32 %1565, 2
  %1567 = zext i1 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1567, i8* %1568, align 1
  store %struct.Memory* %loadMem_498859, %struct.Memory** %MEMORY
  %loadMem_49885c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 1
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %1574 to i32*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 11
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RDI.i183 = bitcast %union.anon* %1577 to i64*
  %1578 = load i32, i32* %EAX.i182
  %1579 = zext i32 %1578 to i64
  %1580 = load i64, i64* %PC.i181
  %1581 = add i64 %1580, 2
  store i64 %1581, i64* %PC.i181
  %1582 = and i64 %1579, 4294967295
  store i64 %1582, i64* %RDI.i183, align 8
  store %struct.Memory* %loadMem_49885c, %struct.Memory** %MEMORY
  %loadMem1_49885e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %PC.i180
  %1587 = add i64 %1586, -542334
  %1588 = load i64, i64* %PC.i180
  %1589 = add i64 %1588, 5
  %1590 = load i64, i64* %PC.i180
  %1591 = add i64 %1590, 5
  store i64 %1591, i64* %PC.i180
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1593 = load i64, i64* %1592, align 8
  %1594 = add i64 %1593, -8
  %1595 = inttoptr i64 %1594 to i64*
  store i64 %1589, i64* %1595
  store i64 %1594, i64* %1592, align 8
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1587, i64* %1596, align 8
  store %struct.Memory* %loadMem1_49885e, %struct.Memory** %MEMORY
  %loadMem2_49885e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49885e = load i64, i64* %3
  %call2_49885e = call %struct.Memory* @sub_4141e0.find_origin(%struct.State* %0, i64 %loadPC_49885e, %struct.Memory* %loadMem2_49885e)
  store %struct.Memory* %call2_49885e, %struct.Memory** %MEMORY
  %loadMem_498863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 11
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RDI.i178 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 15
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RBP.i179
  %1607 = sub i64 %1606, 40
  %1608 = load i64, i64* %PC.i177
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %PC.i177
  %1610 = inttoptr i64 %1607 to i32*
  %1611 = load i32, i32* %1610
  %1612 = sext i32 %1611 to i64
  %1613 = mul i64 %1612, 20
  %1614 = trunc i64 %1613 to i32
  %1615 = and i64 %1613, 4294967295
  store i64 %1615, i64* %RDI.i178, align 8
  %1616 = shl i64 %1613, 32
  %1617 = ashr exact i64 %1616, 32
  %1618 = icmp ne i64 %1617, %1613
  %1619 = zext i1 %1618 to i8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1619, i8* %1620, align 1
  %1621 = and i32 %1614, 255
  %1622 = call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1625, i8* %1626, align 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1627, align 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1628, align 1
  %1629 = lshr i32 %1614, 31
  %1630 = trunc i32 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1630, i8* %1631, align 1
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1619, i8* %1632, align 1
  store %struct.Memory* %loadMem_498863, %struct.Memory** %MEMORY
  %loadMem_498867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 11
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RDI.i176 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RDI.i176
  %1640 = load i64, i64* %PC.i175
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC.i175
  %1642 = trunc i64 %1639 to i32
  %1643 = add i32 21, %1642
  %1644 = zext i32 %1643 to i64
  store i64 %1644, i64* %RDI.i176, align 8
  %1645 = icmp ult i32 %1643, %1642
  %1646 = icmp ult i32 %1643, 21
  %1647 = or i1 %1645, %1646
  %1648 = zext i1 %1647 to i8
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1648, i8* %1649, align 1
  %1650 = and i32 %1643, 255
  %1651 = call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1654, i8* %1655, align 1
  %1656 = xor i64 21, %1639
  %1657 = trunc i64 %1656 to i32
  %1658 = xor i32 %1657, %1643
  %1659 = lshr i32 %1658, 4
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1661, i8* %1662, align 1
  %1663 = icmp eq i32 %1643, 0
  %1664 = zext i1 %1663 to i8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1664, i8* %1665, align 1
  %1666 = lshr i32 %1643, 31
  %1667 = trunc i32 %1666 to i8
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1667, i8* %1668, align 1
  %1669 = lshr i32 %1642, 31
  %1670 = xor i32 %1666, %1669
  %1671 = add i32 %1670, %1666
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1673, i8* %1674, align 1
  store %struct.Memory* %loadMem_498867, %struct.Memory** %MEMORY
  %loadMem_49886a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 11
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RDI.i173 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %RDI.i173
  %1685 = load i64, i64* %RBP.i174
  %1686 = sub i64 %1685, 44
  %1687 = load i64, i64* %PC.i172
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC.i172
  %1689 = trunc i64 %1684 to i32
  %1690 = inttoptr i64 %1686 to i32*
  %1691 = load i32, i32* %1690
  %1692 = add i32 %1691, %1689
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RDI.i173, align 8
  %1694 = icmp ult i32 %1692, %1689
  %1695 = icmp ult i32 %1692, %1691
  %1696 = or i1 %1694, %1695
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1697, i8* %1698, align 1
  %1699 = and i32 %1692, 255
  %1700 = call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1703, i8* %1704, align 1
  %1705 = xor i32 %1691, %1689
  %1706 = xor i32 %1705, %1692
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1709, i8* %1710, align 1
  %1711 = icmp eq i32 %1692, 0
  %1712 = zext i1 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1712, i8* %1713, align 1
  %1714 = lshr i32 %1692, 31
  %1715 = trunc i32 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1715, i8* %1716, align 1
  %1717 = lshr i32 %1689, 31
  %1718 = lshr i32 %1691, 31
  %1719 = xor i32 %1714, %1717
  %1720 = xor i32 %1714, %1718
  %1721 = add i32 %1719, %1720
  %1722 = icmp eq i32 %1721, 2
  %1723 = zext i1 %1722 to i8
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1723, i8* %1724, align 1
  store %struct.Memory* %loadMem_49886a, %struct.Memory** %MEMORY
  %loadMem_49886d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 1
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %EAX.i171 = bitcast %union.anon* %1730 to i32*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 11
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %1733 to i32*
  %1734 = load i32, i32* %EAX.i171
  %1735 = zext i32 %1734 to i64
  %1736 = load i32, i32* %EDI.i
  %1737 = zext i32 %1736 to i64
  %1738 = load i64, i64* %PC.i170
  %1739 = add i64 %1738, 2
  store i64 %1739, i64* %PC.i170
  %1740 = sub i32 %1734, %1736
  %1741 = icmp ult i32 %1734, %1736
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1742, i8* %1743, align 1
  %1744 = and i32 %1740, 255
  %1745 = call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1748, i8* %1749, align 1
  %1750 = xor i64 %1737, %1735
  %1751 = trunc i64 %1750 to i32
  %1752 = xor i32 %1751, %1740
  %1753 = lshr i32 %1752, 4
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1755, i8* %1756, align 1
  %1757 = icmp eq i32 %1740, 0
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i32 %1740, 31
  %1761 = trunc i32 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1761, i8* %1762, align 1
  %1763 = lshr i32 %1734, 31
  %1764 = lshr i32 %1736, 31
  %1765 = xor i32 %1764, %1763
  %1766 = xor i32 %1760, %1763
  %1767 = add i32 %1766, %1765
  %1768 = icmp eq i32 %1767, 2
  %1769 = zext i1 %1768 to i8
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1769, i8* %1770, align 1
  store %struct.Memory* %loadMem_49886d, %struct.Memory** %MEMORY
  %loadMem_49886f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %PC.i169
  %1775 = add i64 %1774, 11
  %1776 = load i64, i64* %PC.i169
  %1777 = add i64 %1776, 6
  %1778 = load i64, i64* %PC.i169
  %1779 = add i64 %1778, 6
  store i64 %1779, i64* %PC.i169
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1781 = load i8, i8* %1780, align 1
  store i8 %1781, i8* %BRANCH_TAKEN, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1783 = icmp ne i8 %1781, 0
  %1784 = select i1 %1783, i64 %1775, i64 %1777
  store i64 %1784, i64* %1782, align 8
  store %struct.Memory* %loadMem_49886f, %struct.Memory** %MEMORY
  %loadBr_49886f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49886f = icmp eq i8 %loadBr_49886f, 1
  br i1 %cmpBr_49886f, label %block_.L_49887a, label %block_498875

block_498875:                                     ; preds = %block_.L_49884b
  %loadMem_498875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 33
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1787 to i64*
  %1788 = load i64, i64* %PC.i168
  %1789 = add i64 %1788, 272
  %1790 = load i64, i64* %PC.i168
  %1791 = add i64 %1790, 5
  store i64 %1791, i64* %PC.i168
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1789, i64* %1792, align 8
  store %struct.Memory* %loadMem_498875, %struct.Memory** %MEMORY
  br label %block_.L_498985

block_.L_49887a:                                  ; preds = %block_.L_49884b
  %loadMem_49887a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RBP.i167
  %1803 = sub i64 %1802, 20
  %1804 = load i64, i64* %PC.i165
  %1805 = add i64 %1804, 3
  store i64 %1805, i64* %PC.i165
  %1806 = inttoptr i64 %1803 to i32*
  %1807 = load i32, i32* %1806
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_49887a, %struct.Memory** %MEMORY
  %loadMem_49887d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %1814 to i32*
  %1815 = load i32, i32* %EAX.i164
  %1816 = zext i32 %1815 to i64
  %1817 = load i64, i64* %PC.i163
  %1818 = add i64 %1817, 7
  store i64 %1818, i64* %PC.i163
  %1819 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1820 = sub i32 %1815, %1819
  %1821 = icmp ult i32 %1815, %1819
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1822, i8* %1823, align 1
  %1824 = and i32 %1820, 255
  %1825 = call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1828, i8* %1829, align 1
  %1830 = xor i32 %1819, %1815
  %1831 = xor i32 %1830, %1820
  %1832 = lshr i32 %1831, 4
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1834, i8* %1835, align 1
  %1836 = icmp eq i32 %1820, 0
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1837, i8* %1838, align 1
  %1839 = lshr i32 %1820, 31
  %1840 = trunc i32 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1840, i8* %1841, align 1
  %1842 = lshr i32 %1815, 31
  %1843 = lshr i32 %1819, 31
  %1844 = xor i32 %1843, %1842
  %1845 = xor i32 %1839, %1842
  %1846 = add i32 %1845, %1844
  %1847 = icmp eq i32 %1846, 2
  %1848 = zext i1 %1847 to i8
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1848, i8* %1849, align 1
  store %struct.Memory* %loadMem_49887d, %struct.Memory** %MEMORY
  %loadMem_498884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %PC.i162
  %1854 = add i64 %1853, 65
  %1855 = load i64, i64* %PC.i162
  %1856 = add i64 %1855, 6
  %1857 = load i64, i64* %PC.i162
  %1858 = add i64 %1857, 6
  store i64 %1858, i64* %PC.i162
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1860 = load i8, i8* %1859, align 1
  %1861 = icmp eq i8 %1860, 0
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %BRANCH_TAKEN, align 1
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1864 = select i1 %1861, i64 %1854, i64 %1856
  store i64 %1864, i64* %1863, align 8
  store %struct.Memory* %loadMem_498884, %struct.Memory** %MEMORY
  %loadBr_498884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498884 = icmp eq i8 %loadBr_498884, 1
  br i1 %cmpBr_498884, label %block_.L_4988c5, label %block_49888a

block_49888a:                                     ; preds = %block_.L_49887a
  %loadMem_49888a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 1
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 15
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RBP.i161
  %1875 = sub i64 %1874, 24
  %1876 = load i64, i64* %PC.i159
  %1877 = add i64 %1876, 3
  store i64 %1877, i64* %PC.i159
  %1878 = inttoptr i64 %1875 to i32*
  %1879 = load i32, i32* %1878
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_49888a, %struct.Memory** %MEMORY
  %loadMem_49888d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 1
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %1886 to i32*
  %1887 = load i32, i32* %EAX.i158
  %1888 = zext i32 %1887 to i64
  %1889 = load i64, i64* %PC.i157
  %1890 = add i64 %1889, 7
  store i64 %1890, i64* %PC.i157
  %1891 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1892 = sub i32 %1887, %1891
  %1893 = icmp ult i32 %1887, %1891
  %1894 = zext i1 %1893 to i8
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1894, i8* %1895, align 1
  %1896 = and i32 %1892, 255
  %1897 = call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1900, i8* %1901, align 1
  %1902 = xor i32 %1891, %1887
  %1903 = xor i32 %1902, %1892
  %1904 = lshr i32 %1903, 4
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1906, i8* %1907, align 1
  %1908 = icmp eq i32 %1892, 0
  %1909 = zext i1 %1908 to i8
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1909, i8* %1910, align 1
  %1911 = lshr i32 %1892, 31
  %1912 = trunc i32 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1912, i8* %1913, align 1
  %1914 = lshr i32 %1887, 31
  %1915 = lshr i32 %1891, 31
  %1916 = xor i32 %1915, %1914
  %1917 = xor i32 %1911, %1914
  %1918 = add i32 %1917, %1916
  %1919 = icmp eq i32 %1918, 2
  %1920 = zext i1 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1920, i8* %1921, align 1
  store %struct.Memory* %loadMem_49888d, %struct.Memory** %MEMORY
  %loadMem_498894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %PC.i156
  %1926 = add i64 %1925, 49
  %1927 = load i64, i64* %PC.i156
  %1928 = add i64 %1927, 6
  %1929 = load i64, i64* %PC.i156
  %1930 = add i64 %1929, 6
  store i64 %1930, i64* %PC.i156
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1932 = load i8, i8* %1931, align 1
  %1933 = icmp eq i8 %1932, 0
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %BRANCH_TAKEN, align 1
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1936 = select i1 %1933, i64 %1926, i64 %1928
  store i64 %1936, i64* %1935, align 8
  store %struct.Memory* %loadMem_498894, %struct.Memory** %MEMORY
  %loadBr_498894 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498894 = icmp eq i8 %loadBr_498894, 1
  br i1 %cmpBr_498894, label %block_.L_4988c5, label %block_49889a

block_49889a:                                     ; preds = %block_49888a
  %loadMem_49889a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 1
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 15
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %1945 to i64*
  %1946 = load i64, i64* %RBP.i155
  %1947 = sub i64 %1946, 40
  %1948 = load i64, i64* %PC.i153
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %PC.i153
  %1950 = inttoptr i64 %1947 to i32*
  %1951 = load i32, i32* %1950
  %1952 = sext i32 %1951 to i64
  %1953 = mul i64 %1952, 20
  %1954 = trunc i64 %1953 to i32
  %1955 = and i64 %1953, 4294967295
  store i64 %1955, i64* %RAX.i154, align 8
  %1956 = shl i64 %1953, 32
  %1957 = ashr exact i64 %1956, 32
  %1958 = icmp ne i64 %1957, %1953
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1959, i8* %1960, align 1
  %1961 = and i32 %1954, 255
  %1962 = call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1965, i8* %1966, align 1
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1967, align 1
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1968, align 1
  %1969 = lshr i32 %1954, 31
  %1970 = trunc i32 %1969 to i8
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1970, i8* %1971, align 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1959, i8* %1972, align 1
  store %struct.Memory* %loadMem_49889a, %struct.Memory** %MEMORY
  %loadMem_49889e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RAX.i152
  %1980 = load i64, i64* %PC.i151
  %1981 = add i64 %1980, 3
  store i64 %1981, i64* %PC.i151
  %1982 = trunc i64 %1979 to i32
  %1983 = add i32 21, %1982
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i152, align 8
  %1985 = icmp ult i32 %1983, %1982
  %1986 = icmp ult i32 %1983, 21
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1988, i8* %1989, align 1
  %1990 = and i32 %1983, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = xor i64 21, %1979
  %1997 = trunc i64 %1996 to i32
  %1998 = xor i32 %1997, %1983
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2001, i8* %2002, align 1
  %2003 = icmp eq i32 %1983, 0
  %2004 = zext i1 %2003 to i8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2004, i8* %2005, align 1
  %2006 = lshr i32 %1983, 31
  %2007 = trunc i32 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2007, i8* %2008, align 1
  %2009 = lshr i32 %1982, 31
  %2010 = xor i32 %2006, %2009
  %2011 = add i32 %2010, %2006
  %2012 = icmp eq i32 %2011, 2
  %2013 = zext i1 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2013, i8* %2014, align 1
  store %struct.Memory* %loadMem_49889e, %struct.Memory** %MEMORY
  %loadMem_4988a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RAX.i149
  %2025 = load i64, i64* %RBP.i150
  %2026 = sub i64 %2025, 44
  %2027 = load i64, i64* %PC.i148
  %2028 = add i64 %2027, 3
  store i64 %2028, i64* %PC.i148
  %2029 = trunc i64 %2024 to i32
  %2030 = inttoptr i64 %2026 to i32*
  %2031 = load i32, i32* %2030
  %2032 = add i32 %2031, %2029
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RAX.i149, align 8
  %2034 = icmp ult i32 %2032, %2029
  %2035 = icmp ult i32 %2032, %2031
  %2036 = or i1 %2034, %2035
  %2037 = zext i1 %2036 to i8
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2037, i8* %2038, align 1
  %2039 = and i32 %2032, 255
  %2040 = call i32 @llvm.ctpop.i32(i32 %2039)
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = xor i8 %2042, 1
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2043, i8* %2044, align 1
  %2045 = xor i32 %2031, %2029
  %2046 = xor i32 %2045, %2032
  %2047 = lshr i32 %2046, 4
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2049, i8* %2050, align 1
  %2051 = icmp eq i32 %2032, 0
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2052, i8* %2053, align 1
  %2054 = lshr i32 %2032, 31
  %2055 = trunc i32 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2055, i8* %2056, align 1
  %2057 = lshr i32 %2029, 31
  %2058 = lshr i32 %2031, 31
  %2059 = xor i32 %2054, %2057
  %2060 = xor i32 %2054, %2058
  %2061 = add i32 %2059, %2060
  %2062 = icmp eq i32 %2061, 2
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2063, i8* %2064, align 1
  store %struct.Memory* %loadMem_4988a1, %struct.Memory** %MEMORY
  %loadMem_4988a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 33
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 5
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 15
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %RBP.i147
  %2075 = sub i64 %2074, 20
  %2076 = load i64, i64* %PC.i145
  %2077 = add i64 %2076, 4
  store i64 %2077, i64* %PC.i145
  %2078 = inttoptr i64 %2075 to i32*
  %2079 = load i32, i32* %2078
  %2080 = sext i32 %2079 to i64
  %2081 = mul i64 %2080, 20
  %2082 = trunc i64 %2081 to i32
  %2083 = and i64 %2081, 4294967295
  store i64 %2083, i64* %RCX.i146, align 8
  %2084 = shl i64 %2081, 32
  %2085 = ashr exact i64 %2084, 32
  %2086 = icmp ne i64 %2085, %2081
  %2087 = zext i1 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2087, i8* %2088, align 1
  %2089 = and i32 %2082, 255
  %2090 = call i32 @llvm.ctpop.i32(i32 %2089)
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = xor i8 %2092, 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2093, i8* %2094, align 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2095, align 1
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2096, align 1
  %2097 = lshr i32 %2082, 31
  %2098 = trunc i32 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2098, i8* %2099, align 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2087, i8* %2100, align 1
  store %struct.Memory* %loadMem_4988a4, %struct.Memory** %MEMORY
  %loadMem_4988a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 5
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %2106 to i64*
  %2107 = load i64, i64* %RCX.i144
  %2108 = load i64, i64* %PC.i143
  %2109 = add i64 %2108, 3
  store i64 %2109, i64* %PC.i143
  %2110 = trunc i64 %2107 to i32
  %2111 = add i32 21, %2110
  %2112 = zext i32 %2111 to i64
  store i64 %2112, i64* %RCX.i144, align 8
  %2113 = icmp ult i32 %2111, %2110
  %2114 = icmp ult i32 %2111, 21
  %2115 = or i1 %2113, %2114
  %2116 = zext i1 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2116, i8* %2117, align 1
  %2118 = and i32 %2111, 255
  %2119 = call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2122, i8* %2123, align 1
  %2124 = xor i64 21, %2107
  %2125 = trunc i64 %2124 to i32
  %2126 = xor i32 %2125, %2111
  %2127 = lshr i32 %2126, 4
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2129, i8* %2130, align 1
  %2131 = icmp eq i32 %2111, 0
  %2132 = zext i1 %2131 to i8
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2132, i8* %2133, align 1
  %2134 = lshr i32 %2111, 31
  %2135 = trunc i32 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2135, i8* %2136, align 1
  %2137 = lshr i32 %2110, 31
  %2138 = xor i32 %2134, %2137
  %2139 = add i32 %2138, %2134
  %2140 = icmp eq i32 %2139, 2
  %2141 = zext i1 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2141, i8* %2142, align 1
  store %struct.Memory* %loadMem_4988a8, %struct.Memory** %MEMORY
  %loadMem_4988ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 15
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %RCX.i141
  %2153 = load i64, i64* %RBP.i142
  %2154 = sub i64 %2153, 24
  %2155 = load i64, i64* %PC.i140
  %2156 = add i64 %2155, 3
  store i64 %2156, i64* %PC.i140
  %2157 = trunc i64 %2152 to i32
  %2158 = inttoptr i64 %2154 to i32*
  %2159 = load i32, i32* %2158
  %2160 = add i32 %2159, %2157
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RCX.i141, align 8
  %2162 = icmp ult i32 %2160, %2157
  %2163 = icmp ult i32 %2160, %2159
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2165, i8* %2166, align 1
  %2167 = and i32 %2160, 255
  %2168 = call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2171, i8* %2172, align 1
  %2173 = xor i32 %2159, %2157
  %2174 = xor i32 %2173, %2160
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2177, i8* %2178, align 1
  %2179 = icmp eq i32 %2160, 0
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2180, i8* %2181, align 1
  %2182 = lshr i32 %2160, 31
  %2183 = trunc i32 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2183, i8* %2184, align 1
  %2185 = lshr i32 %2157, 31
  %2186 = lshr i32 %2159, 31
  %2187 = xor i32 %2182, %2185
  %2188 = xor i32 %2182, %2186
  %2189 = add i32 %2187, %2188
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2191, i8* %2192, align 1
  store %struct.Memory* %loadMem_4988ab, %struct.Memory** %MEMORY
  %loadMem_4988ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 1
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %2198 to i32*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 11
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RDI.i139 = bitcast %union.anon* %2201 to i64*
  %2202 = load i32, i32* %EAX.i138
  %2203 = zext i32 %2202 to i64
  %2204 = load i64, i64* %PC.i137
  %2205 = add i64 %2204, 2
  store i64 %2205, i64* %PC.i137
  %2206 = and i64 %2203, 4294967295
  store i64 %2206, i64* %RDI.i139, align 8
  store %struct.Memory* %loadMem_4988ae, %struct.Memory** %MEMORY
  %loadMem_4988b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 5
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %ECX.i135 = bitcast %union.anon* %2212 to i32*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 9
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %2215 to i64*
  %2216 = load i32, i32* %ECX.i135
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC.i134
  %2219 = add i64 %2218, 2
  store i64 %2219, i64* %PC.i134
  %2220 = and i64 %2217, 4294967295
  store i64 %2220, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_4988b0, %struct.Memory** %MEMORY
  %loadMem1_4988b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %PC.i133
  %2225 = add i64 %2224, -537810
  %2226 = load i64, i64* %PC.i133
  %2227 = add i64 %2226, 5
  %2228 = load i64, i64* %PC.i133
  %2229 = add i64 %2228, 5
  store i64 %2229, i64* %PC.i133
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2231 = load i64, i64* %2230, align 8
  %2232 = add i64 %2231, -8
  %2233 = inttoptr i64 %2232 to i64*
  store i64 %2227, i64* %2233
  store i64 %2232, i64* %2230, align 8
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2225, i64* %2234, align 8
  store %struct.Memory* %loadMem1_4988b2, %struct.Memory** %MEMORY
  %loadMem2_4988b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4988b2 = load i64, i64* %3
  %call2_4988b2 = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_4988b2, %struct.Memory* %loadMem2_4988b2)
  store %struct.Memory* %call2_4988b2, %struct.Memory** %MEMORY
  %loadMem_4988b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %2240 to i32*
  %2241 = load i32, i32* %EAX.i132
  %2242 = zext i32 %2241 to i64
  %2243 = load i64, i64* %PC.i131
  %2244 = add i64 %2243, 3
  store i64 %2244, i64* %PC.i131
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2245, align 1
  %2246 = and i32 %2241, 255
  %2247 = call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2250, i8* %2251, align 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2252, align 1
  %2253 = icmp eq i32 %2241, 0
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2254, i8* %2255, align 1
  %2256 = lshr i32 %2241, 31
  %2257 = trunc i32 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2257, i8* %2258, align 1
  %2259 = lshr i32 %2241, 31
  %2260 = xor i32 %2256, %2259
  %2261 = add i32 %2260, %2259
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2263, i8* %2264, align 1
  store %struct.Memory* %loadMem_4988b7, %struct.Memory** %MEMORY
  %loadMem_4988ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %PC.i130
  %2269 = add i64 %2268, 11
  %2270 = load i64, i64* %PC.i130
  %2271 = add i64 %2270, 6
  %2272 = load i64, i64* %PC.i130
  %2273 = add i64 %2272, 6
  store i64 %2273, i64* %PC.i130
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2275 = load i8, i8* %2274, align 1
  %2276 = icmp eq i8 %2275, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %BRANCH_TAKEN, align 1
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2279 = select i1 %2276, i64 %2269, i64 %2271
  store i64 %2279, i64* %2278, align 8
  store %struct.Memory* %loadMem_4988ba, %struct.Memory** %MEMORY
  %loadBr_4988ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4988ba = icmp eq i8 %loadBr_4988ba, 1
  br i1 %cmpBr_4988ba, label %block_.L_4988c5, label %block_4988c0

block_4988c0:                                     ; preds = %block_49889a
  %loadMem_4988c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %PC.i129
  %2284 = add i64 %2283, 197
  %2285 = load i64, i64* %PC.i129
  %2286 = add i64 %2285, 5
  store i64 %2286, i64* %PC.i129
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2284, i64* %2287, align 8
  store %struct.Memory* %loadMem_4988c0, %struct.Memory** %MEMORY
  br label %block_.L_498985

block_.L_4988c5:                                  ; preds = %block_49889a, %block_49888a, %block_.L_49887a
  %loadMem_4988c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 15
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %RBP.i128
  %2295 = sub i64 %2294, 32
  %2296 = load i64, i64* %PC.i127
  %2297 = add i64 %2296, 7
  store i64 %2297, i64* %PC.i127
  %2298 = inttoptr i64 %2295 to i32*
  store i32 0, i32* %2298
  store %struct.Memory* %loadMem_4988c5, %struct.Memory** %MEMORY
  br label %block_.L_4988cc

block_.L_4988cc:                                  ; preds = %block_.L_498966, %block_.L_4988c5
  %loadMem_4988cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 15
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RBP.i126
  %2309 = sub i64 %2308, 32
  %2310 = load i64, i64* %PC.i124
  %2311 = add i64 %2310, 3
  store i64 %2311, i64* %PC.i124
  %2312 = inttoptr i64 %2309 to i32*
  %2313 = load i32, i32* %2312
  %2314 = zext i32 %2313 to i64
  store i64 %2314, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_4988cc, %struct.Memory** %MEMORY
  %loadMem_4988cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 1
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %2320 to i32*
  %2321 = load i32, i32* %EAX.i123
  %2322 = zext i32 %2321 to i64
  %2323 = load i64, i64* %PC.i122
  %2324 = add i64 %2323, 7
  store i64 %2324, i64* %PC.i122
  %2325 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2326 = sub i32 %2321, %2325
  %2327 = icmp ult i32 %2321, %2325
  %2328 = zext i1 %2327 to i8
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2328, i8* %2329, align 1
  %2330 = and i32 %2326, 255
  %2331 = call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2334, i8* %2335, align 1
  %2336 = xor i32 %2325, %2321
  %2337 = xor i32 %2336, %2326
  %2338 = lshr i32 %2337, 4
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2340, i8* %2341, align 1
  %2342 = icmp eq i32 %2326, 0
  %2343 = zext i1 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2343, i8* %2344, align 1
  %2345 = lshr i32 %2326, 31
  %2346 = trunc i32 %2345 to i8
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2346, i8* %2347, align 1
  %2348 = lshr i32 %2321, 31
  %2349 = lshr i32 %2325, 31
  %2350 = xor i32 %2349, %2348
  %2351 = xor i32 %2345, %2348
  %2352 = add i32 %2351, %2350
  %2353 = icmp eq i32 %2352, 2
  %2354 = zext i1 %2353 to i8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2354, i8* %2355, align 1
  store %struct.Memory* %loadMem_4988cf, %struct.Memory** %MEMORY
  %loadMem_4988d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2358 to i64*
  %2359 = load i64, i64* %PC.i121
  %2360 = add i64 %2359, 158
  %2361 = load i64, i64* %PC.i121
  %2362 = add i64 %2361, 6
  %2363 = load i64, i64* %PC.i121
  %2364 = add i64 %2363, 6
  store i64 %2364, i64* %PC.i121
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2366 = load i8, i8* %2365, align 1
  %2367 = icmp ne i8 %2366, 0
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2369 = load i8, i8* %2368, align 1
  %2370 = icmp ne i8 %2369, 0
  %2371 = xor i1 %2367, %2370
  %2372 = xor i1 %2371, true
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %BRANCH_TAKEN, align 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2375 = select i1 %2371, i64 %2362, i64 %2360
  store i64 %2375, i64* %2374, align 8
  store %struct.Memory* %loadMem_4988d6, %struct.Memory** %MEMORY
  %loadBr_4988d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4988d6 = icmp eq i8 %loadBr_4988d6, 1
  br i1 %cmpBr_4988d6, label %block_.L_498974, label %block_4988dc

block_4988dc:                                     ; preds = %block_.L_4988cc
  %loadMem_4988dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 15
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %RBP.i120
  %2383 = sub i64 %2382, 36
  %2384 = load i64, i64* %PC.i119
  %2385 = add i64 %2384, 7
  store i64 %2385, i64* %PC.i119
  %2386 = inttoptr i64 %2383 to i32*
  store i32 0, i32* %2386
  store %struct.Memory* %loadMem_4988dc, %struct.Memory** %MEMORY
  br label %block_.L_4988e3

block_.L_4988e3:                                  ; preds = %block_.L_498953, %block_4988dc
  %loadMem_4988e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 1
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 15
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RBP.i118
  %2397 = sub i64 %2396, 36
  %2398 = load i64, i64* %PC.i116
  %2399 = add i64 %2398, 3
  store i64 %2399, i64* %PC.i116
  %2400 = inttoptr i64 %2397 to i32*
  %2401 = load i32, i32* %2400
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_4988e3, %struct.Memory** %MEMORY
  %loadMem_4988e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 1
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %2408 to i32*
  %2409 = load i32, i32* %EAX.i115
  %2410 = zext i32 %2409 to i64
  %2411 = load i64, i64* %PC.i114
  %2412 = add i64 %2411, 7
  store i64 %2412, i64* %PC.i114
  %2413 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2414 = sub i32 %2409, %2413
  %2415 = icmp ult i32 %2409, %2413
  %2416 = zext i1 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2416, i8* %2417, align 1
  %2418 = and i32 %2414, 255
  %2419 = call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2422, i8* %2423, align 1
  %2424 = xor i32 %2413, %2409
  %2425 = xor i32 %2424, %2414
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2428, i8* %2429, align 1
  %2430 = icmp eq i32 %2414, 0
  %2431 = zext i1 %2430 to i8
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2431, i8* %2432, align 1
  %2433 = lshr i32 %2414, 31
  %2434 = trunc i32 %2433 to i8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2434, i8* %2435, align 1
  %2436 = lshr i32 %2409, 31
  %2437 = lshr i32 %2413, 31
  %2438 = xor i32 %2437, %2436
  %2439 = xor i32 %2433, %2436
  %2440 = add i32 %2439, %2438
  %2441 = icmp eq i32 %2440, 2
  %2442 = zext i1 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2442, i8* %2443, align 1
  store %struct.Memory* %loadMem_4988e6, %struct.Memory** %MEMORY
  %loadMem_4988ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %PC.i113
  %2448 = add i64 %2447, 116
  %2449 = load i64, i64* %PC.i113
  %2450 = add i64 %2449, 6
  %2451 = load i64, i64* %PC.i113
  %2452 = add i64 %2451, 6
  store i64 %2452, i64* %PC.i113
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2454 = load i8, i8* %2453, align 1
  %2455 = icmp ne i8 %2454, 0
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2457 = load i8, i8* %2456, align 1
  %2458 = icmp ne i8 %2457, 0
  %2459 = xor i1 %2455, %2458
  %2460 = xor i1 %2459, true
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %BRANCH_TAKEN, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2463 = select i1 %2459, i64 %2450, i64 %2448
  store i64 %2463, i64* %2462, align 8
  store %struct.Memory* %loadMem_4988ed, %struct.Memory** %MEMORY
  %loadBr_4988ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4988ed = icmp eq i8 %loadBr_4988ed, 1
  br i1 %cmpBr_4988ed, label %block_.L_498961, label %block_4988f3

block_4988f3:                                     ; preds = %block_.L_4988e3
  %loadMem_4988f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 1
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 15
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %RBP.i112
  %2474 = sub i64 %2473, 32
  %2475 = load i64, i64* %PC.i110
  %2476 = add i64 %2475, 4
  store i64 %2476, i64* %PC.i110
  %2477 = inttoptr i64 %2474 to i32*
  %2478 = load i32, i32* %2477
  %2479 = sext i32 %2478 to i64
  %2480 = mul i64 %2479, 20
  %2481 = trunc i64 %2480 to i32
  %2482 = and i64 %2480, 4294967295
  store i64 %2482, i64* %RAX.i111, align 8
  %2483 = shl i64 %2480, 32
  %2484 = ashr exact i64 %2483, 32
  %2485 = icmp ne i64 %2484, %2480
  %2486 = zext i1 %2485 to i8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2486, i8* %2487, align 1
  %2488 = and i32 %2481, 255
  %2489 = call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2492, i8* %2493, align 1
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2494, align 1
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2495, align 1
  %2496 = lshr i32 %2481, 31
  %2497 = trunc i32 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2497, i8* %2498, align 1
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2486, i8* %2499, align 1
  store %struct.Memory* %loadMem_4988f3, %struct.Memory** %MEMORY
  %loadMem_4988f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 1
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %RAX.i109
  %2507 = load i64, i64* %PC.i108
  %2508 = add i64 %2507, 3
  store i64 %2508, i64* %PC.i108
  %2509 = trunc i64 %2506 to i32
  %2510 = add i32 21, %2509
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RAX.i109, align 8
  %2512 = icmp ult i32 %2510, %2509
  %2513 = icmp ult i32 %2510, 21
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2515, i8* %2516, align 1
  %2517 = and i32 %2510, 255
  %2518 = call i32 @llvm.ctpop.i32(i32 %2517)
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2521, i8* %2522, align 1
  %2523 = xor i64 21, %2506
  %2524 = trunc i64 %2523 to i32
  %2525 = xor i32 %2524, %2510
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2528, i8* %2529, align 1
  %2530 = icmp eq i32 %2510, 0
  %2531 = zext i1 %2530 to i8
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2531, i8* %2532, align 1
  %2533 = lshr i32 %2510, 31
  %2534 = trunc i32 %2533 to i8
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2534, i8* %2535, align 1
  %2536 = lshr i32 %2509, 31
  %2537 = xor i32 %2533, %2536
  %2538 = add i32 %2537, %2533
  %2539 = icmp eq i32 %2538, 2
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2540, i8* %2541, align 1
  store %struct.Memory* %loadMem_4988f7, %struct.Memory** %MEMORY
  %loadMem_4988fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 1
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 15
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RAX.i106
  %2552 = load i64, i64* %RBP.i107
  %2553 = sub i64 %2552, 36
  %2554 = load i64, i64* %PC.i105
  %2555 = add i64 %2554, 3
  store i64 %2555, i64* %PC.i105
  %2556 = trunc i64 %2551 to i32
  %2557 = inttoptr i64 %2553 to i32*
  %2558 = load i32, i32* %2557
  %2559 = add i32 %2558, %2556
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i106, align 8
  %2561 = icmp ult i32 %2559, %2556
  %2562 = icmp ult i32 %2559, %2558
  %2563 = or i1 %2561, %2562
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2564, i8* %2565, align 1
  %2566 = and i32 %2559, 255
  %2567 = call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2570, i8* %2571, align 1
  %2572 = xor i32 %2558, %2556
  %2573 = xor i32 %2572, %2559
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2576, i8* %2577, align 1
  %2578 = icmp eq i32 %2559, 0
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2559, 31
  %2582 = trunc i32 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2582, i8* %2583, align 1
  %2584 = lshr i32 %2556, 31
  %2585 = lshr i32 %2558, 31
  %2586 = xor i32 %2581, %2584
  %2587 = xor i32 %2581, %2585
  %2588 = add i32 %2586, %2587
  %2589 = icmp eq i32 %2588, 2
  %2590 = zext i1 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2590, i8* %2591, align 1
  store %struct.Memory* %loadMem_4988fa, %struct.Memory** %MEMORY
  %loadMem_4988fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 1
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %2597 to i32*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 5
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %2600 to i64*
  %2601 = load i32, i32* %EAX.i103
  %2602 = zext i32 %2601 to i64
  %2603 = load i64, i64* %PC.i102
  %2604 = add i64 %2603, 3
  store i64 %2604, i64* %PC.i102
  %2605 = shl i64 %2602, 32
  %2606 = ashr exact i64 %2605, 32
  store i64 %2606, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_4988fd, %struct.Memory** %MEMORY
  %loadMem_498900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 1
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 5
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %RCX.i101
  %2617 = add i64 %2616, 12099168
  %2618 = load i64, i64* %PC.i99
  %2619 = add i64 %2618, 8
  store i64 %2619, i64* %PC.i99
  %2620 = inttoptr i64 %2617 to i8*
  %2621 = load i8, i8* %2620
  %2622 = zext i8 %2621 to i64
  store i64 %2622, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_498900, %struct.Memory** %MEMORY
  %loadMem_498908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %EAX.i98 = bitcast %union.anon* %2628 to i32*
  %2629 = load i32, i32* %EAX.i98
  %2630 = zext i32 %2629 to i64
  %2631 = load i64, i64* %PC.i97
  %2632 = add i64 %2631, 3
  store i64 %2632, i64* %PC.i97
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2633, align 1
  %2634 = and i32 %2629, 255
  %2635 = call i32 @llvm.ctpop.i32(i32 %2634)
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = xor i8 %2637, 1
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2638, i8* %2639, align 1
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2640, align 1
  %2641 = icmp eq i32 %2629, 0
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2629, 31
  %2645 = trunc i32 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2645, i8* %2646, align 1
  %2647 = lshr i32 %2629, 31
  %2648 = xor i32 %2644, %2647
  %2649 = add i32 %2648, %2647
  %2650 = icmp eq i32 %2649, 2
  %2651 = zext i1 %2650 to i8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2651, i8* %2652, align 1
  store %struct.Memory* %loadMem_498908, %struct.Memory** %MEMORY
  %loadMem_49890b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %PC.i96
  %2657 = add i64 %2656, 67
  %2658 = load i64, i64* %PC.i96
  %2659 = add i64 %2658, 6
  %2660 = load i64, i64* %PC.i96
  %2661 = add i64 %2660, 6
  store i64 %2661, i64* %PC.i96
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2663 = load i8, i8* %2662, align 1
  store i8 %2663, i8* %BRANCH_TAKEN, align 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2665 = icmp ne i8 %2663, 0
  %2666 = select i1 %2665, i64 %2657, i64 %2659
  store i64 %2666, i64* %2664, align 8
  store %struct.Memory* %loadMem_49890b, %struct.Memory** %MEMORY
  %loadBr_49890b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49890b = icmp eq i8 %loadBr_49890b, 1
  br i1 %cmpBr_49890b, label %block_.L_49894e, label %block_498911

block_498911:                                     ; preds = %block_4988f3
  %loadMem_498911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 1
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i95
  %2677 = sub i64 %2676, 32
  %2678 = load i64, i64* %PC.i93
  %2679 = add i64 %2678, 4
  store i64 %2679, i64* %PC.i93
  %2680 = inttoptr i64 %2677 to i32*
  %2681 = load i32, i32* %2680
  %2682 = sext i32 %2681 to i64
  %2683 = mul i64 %2682, 20
  %2684 = trunc i64 %2683 to i32
  %2685 = and i64 %2683, 4294967295
  store i64 %2685, i64* %RAX.i94, align 8
  %2686 = shl i64 %2683, 32
  %2687 = ashr exact i64 %2686, 32
  %2688 = icmp ne i64 %2687, %2683
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2689, i8* %2690, align 1
  %2691 = and i32 %2684, 255
  %2692 = call i32 @llvm.ctpop.i32(i32 %2691)
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  %2695 = xor i8 %2694, 1
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2695, i8* %2696, align 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2697, align 1
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2698, align 1
  %2699 = lshr i32 %2684, 31
  %2700 = trunc i32 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2700, i8* %2701, align 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2689, i8* %2702, align 1
  store %struct.Memory* %loadMem_498911, %struct.Memory** %MEMORY
  %loadMem_498915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 1
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RAX.i92
  %2710 = load i64, i64* %PC.i91
  %2711 = add i64 %2710, 3
  store i64 %2711, i64* %PC.i91
  %2712 = trunc i64 %2709 to i32
  %2713 = add i32 21, %2712
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RAX.i92, align 8
  %2715 = icmp ult i32 %2713, %2712
  %2716 = icmp ult i32 %2713, 21
  %2717 = or i1 %2715, %2716
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2718, i8* %2719, align 1
  %2720 = and i32 %2713, 255
  %2721 = call i32 @llvm.ctpop.i32(i32 %2720)
  %2722 = trunc i32 %2721 to i8
  %2723 = and i8 %2722, 1
  %2724 = xor i8 %2723, 1
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2724, i8* %2725, align 1
  %2726 = xor i64 21, %2709
  %2727 = trunc i64 %2726 to i32
  %2728 = xor i32 %2727, %2713
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2731, i8* %2732, align 1
  %2733 = icmp eq i32 %2713, 0
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2734, i8* %2735, align 1
  %2736 = lshr i32 %2713, 31
  %2737 = trunc i32 %2736 to i8
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2737, i8* %2738, align 1
  %2739 = lshr i32 %2712, 31
  %2740 = xor i32 %2736, %2739
  %2741 = add i32 %2740, %2736
  %2742 = icmp eq i32 %2741, 2
  %2743 = zext i1 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2743, i8* %2744, align 1
  store %struct.Memory* %loadMem_498915, %struct.Memory** %MEMORY
  %loadMem_498918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 1
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 15
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %RAX.i89
  %2755 = load i64, i64* %RBP.i90
  %2756 = sub i64 %2755, 36
  %2757 = load i64, i64* %PC.i88
  %2758 = add i64 %2757, 3
  store i64 %2758, i64* %PC.i88
  %2759 = trunc i64 %2754 to i32
  %2760 = inttoptr i64 %2756 to i32*
  %2761 = load i32, i32* %2760
  %2762 = add i32 %2761, %2759
  %2763 = zext i32 %2762 to i64
  store i64 %2763, i64* %RAX.i89, align 8
  %2764 = icmp ult i32 %2762, %2759
  %2765 = icmp ult i32 %2762, %2761
  %2766 = or i1 %2764, %2765
  %2767 = zext i1 %2766 to i8
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2767, i8* %2768, align 1
  %2769 = and i32 %2762, 255
  %2770 = call i32 @llvm.ctpop.i32(i32 %2769)
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2773, i8* %2774, align 1
  %2775 = xor i32 %2761, %2759
  %2776 = xor i32 %2775, %2762
  %2777 = lshr i32 %2776, 4
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2779, i8* %2780, align 1
  %2781 = icmp eq i32 %2762, 0
  %2782 = zext i1 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2782, i8* %2783, align 1
  %2784 = lshr i32 %2762, 31
  %2785 = trunc i32 %2784 to i8
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2785, i8* %2786, align 1
  %2787 = lshr i32 %2759, 31
  %2788 = lshr i32 %2761, 31
  %2789 = xor i32 %2784, %2787
  %2790 = xor i32 %2784, %2788
  %2791 = add i32 %2789, %2790
  %2792 = icmp eq i32 %2791, 2
  %2793 = zext i1 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2793, i8* %2794, align 1
  store %struct.Memory* %loadMem_498918, %struct.Memory** %MEMORY
  %loadMem_49891b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 5
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 15
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %RBP.i87
  %2805 = sub i64 %2804, 40
  %2806 = load i64, i64* %PC.i85
  %2807 = add i64 %2806, 4
  store i64 %2807, i64* %PC.i85
  %2808 = inttoptr i64 %2805 to i32*
  %2809 = load i32, i32* %2808
  %2810 = sext i32 %2809 to i64
  %2811 = mul i64 %2810, 20
  %2812 = trunc i64 %2811 to i32
  %2813 = and i64 %2811, 4294967295
  store i64 %2813, i64* %RCX.i86, align 8
  %2814 = shl i64 %2811, 32
  %2815 = ashr exact i64 %2814, 32
  %2816 = icmp ne i64 %2815, %2811
  %2817 = zext i1 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2817, i8* %2818, align 1
  %2819 = and i32 %2812, 255
  %2820 = call i32 @llvm.ctpop.i32(i32 %2819)
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  %2823 = xor i8 %2822, 1
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2823, i8* %2824, align 1
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2825, align 1
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2826, align 1
  %2827 = lshr i32 %2812, 31
  %2828 = trunc i32 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2828, i8* %2829, align 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2817, i8* %2830, align 1
  store %struct.Memory* %loadMem_49891b, %struct.Memory** %MEMORY
  %loadMem_49891f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 5
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RCX.i84
  %2838 = load i64, i64* %PC.i83
  %2839 = add i64 %2838, 3
  store i64 %2839, i64* %PC.i83
  %2840 = trunc i64 %2837 to i32
  %2841 = add i32 21, %2840
  %2842 = zext i32 %2841 to i64
  store i64 %2842, i64* %RCX.i84, align 8
  %2843 = icmp ult i32 %2841, %2840
  %2844 = icmp ult i32 %2841, 21
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2846, i8* %2847, align 1
  %2848 = and i32 %2841, 255
  %2849 = call i32 @llvm.ctpop.i32(i32 %2848)
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  %2852 = xor i8 %2851, 1
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2852, i8* %2853, align 1
  %2854 = xor i64 21, %2837
  %2855 = trunc i64 %2854 to i32
  %2856 = xor i32 %2855, %2841
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2859, i8* %2860, align 1
  %2861 = icmp eq i32 %2841, 0
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2862, i8* %2863, align 1
  %2864 = lshr i32 %2841, 31
  %2865 = trunc i32 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2865, i8* %2866, align 1
  %2867 = lshr i32 %2840, 31
  %2868 = xor i32 %2864, %2867
  %2869 = add i32 %2868, %2864
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2871, i8* %2872, align 1
  store %struct.Memory* %loadMem_49891f, %struct.Memory** %MEMORY
  %loadMem_498922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 5
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 15
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2881 to i64*
  %2882 = load i64, i64* %RCX.i
  %2883 = load i64, i64* %RBP.i82
  %2884 = sub i64 %2883, 44
  %2885 = load i64, i64* %PC.i81
  %2886 = add i64 %2885, 3
  store i64 %2886, i64* %PC.i81
  %2887 = trunc i64 %2882 to i32
  %2888 = inttoptr i64 %2884 to i32*
  %2889 = load i32, i32* %2888
  %2890 = add i32 %2889, %2887
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RCX.i, align 8
  %2892 = icmp ult i32 %2890, %2887
  %2893 = icmp ult i32 %2890, %2889
  %2894 = or i1 %2892, %2893
  %2895 = zext i1 %2894 to i8
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2895, i8* %2896, align 1
  %2897 = and i32 %2890, 255
  %2898 = call i32 @llvm.ctpop.i32(i32 %2897)
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  %2901 = xor i8 %2900, 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2901, i8* %2902, align 1
  %2903 = xor i32 %2889, %2887
  %2904 = xor i32 %2903, %2890
  %2905 = lshr i32 %2904, 4
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2907, i8* %2908, align 1
  %2909 = icmp eq i32 %2890, 0
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2910, i8* %2911, align 1
  %2912 = lshr i32 %2890, 31
  %2913 = trunc i32 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2913, i8* %2914, align 1
  %2915 = lshr i32 %2887, 31
  %2916 = lshr i32 %2889, 31
  %2917 = xor i32 %2912, %2915
  %2918 = xor i32 %2912, %2916
  %2919 = add i32 %2917, %2918
  %2920 = icmp eq i32 %2919, 2
  %2921 = zext i1 %2920 to i8
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2921, i8* %2922, align 1
  store %struct.Memory* %loadMem_498922, %struct.Memory** %MEMORY
  %loadMem_498925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %EAX.i79 = bitcast %union.anon* %2928 to i32*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 11
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %2931 to i64*
  %2932 = load i32, i32* %EAX.i79
  %2933 = zext i32 %2932 to i64
  %2934 = load i64, i64* %PC.i78
  %2935 = add i64 %2934, 2
  store i64 %2935, i64* %PC.i78
  %2936 = and i64 %2933, 4294967295
  store i64 %2936, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_498925, %struct.Memory** %MEMORY
  %loadMem_498927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 5
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2942 to i32*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 9
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %2945 to i64*
  %2946 = load i32, i32* %ECX.i
  %2947 = zext i32 %2946 to i64
  %2948 = load i64, i64* %PC.i76
  %2949 = add i64 %2948, 2
  store i64 %2949, i64* %PC.i76
  %2950 = and i64 %2947, 4294967295
  store i64 %2950, i64* %RSI.i77, align 8
  store %struct.Memory* %loadMem_498927, %struct.Memory** %MEMORY
  %loadMem1_498929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %PC.i75
  %2955 = add i64 %2954, -537929
  %2956 = load i64, i64* %PC.i75
  %2957 = add i64 %2956, 5
  %2958 = load i64, i64* %PC.i75
  %2959 = add i64 %2958, 5
  store i64 %2959, i64* %PC.i75
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2961 = load i64, i64* %2960, align 8
  %2962 = add i64 %2961, -8
  %2963 = inttoptr i64 %2962 to i64*
  store i64 %2957, i64* %2963
  store i64 %2962, i64* %2960, align 8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2955, i64* %2964, align 8
  store %struct.Memory* %loadMem1_498929, %struct.Memory** %MEMORY
  %loadMem2_498929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498929 = load i64, i64* %3
  %call2_498929 = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_498929, %struct.Memory* %loadMem2_498929)
  store %struct.Memory* %call2_498929, %struct.Memory** %MEMORY
  %loadMem_49892e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 33
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 1
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %2970 to i32*
  %2971 = load i32, i32* %EAX.i74
  %2972 = zext i32 %2971 to i64
  %2973 = load i64, i64* %PC.i73
  %2974 = add i64 %2973, 3
  store i64 %2974, i64* %PC.i73
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2975, align 1
  %2976 = and i32 %2971, 255
  %2977 = call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2980, i8* %2981, align 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2982, align 1
  %2983 = icmp eq i32 %2971, 0
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2984, i8* %2985, align 1
  %2986 = lshr i32 %2971, 31
  %2987 = trunc i32 %2986 to i8
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2987, i8* %2988, align 1
  %2989 = lshr i32 %2971, 31
  %2990 = xor i32 %2986, %2989
  %2991 = add i32 %2990, %2989
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2993, i8* %2994, align 1
  store %struct.Memory* %loadMem_49892e, %struct.Memory** %MEMORY
  %loadMem_498931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %PC.i72
  %2999 = add i64 %2998, 29
  %3000 = load i64, i64* %PC.i72
  %3001 = add i64 %3000, 6
  %3002 = load i64, i64* %PC.i72
  %3003 = add i64 %3002, 6
  store i64 %3003, i64* %PC.i72
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3005 = load i8, i8* %3004, align 1
  store i8 %3005, i8* %BRANCH_TAKEN, align 1
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3007 = icmp ne i8 %3005, 0
  %3008 = select i1 %3007, i64 %2999, i64 %3001
  store i64 %3008, i64* %3006, align 8
  store %struct.Memory* %loadMem_498931, %struct.Memory** %MEMORY
  %loadBr_498931 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_498931 = icmp eq i8 %loadBr_498931, 1
  br i1 %cmpBr_498931, label %block_.L_49894e, label %block_498937

block_498937:                                     ; preds = %block_498911
  %loadMem_498937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 33
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 11
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %3014 to i64*
  %3015 = load i64, i64* %PC.i70
  %3016 = add i64 %3015, 10
  store i64 %3016, i64* %PC.i70
  store i64 ptrtoint (%G__0x587ac6_type* @G__0x587ac6 to i64), i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_498937, %struct.Memory** %MEMORY
  %loadMem_498941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 9
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %RBP.i69
  %3027 = sub i64 %3026, 32
  %3028 = load i64, i64* %PC.i68
  %3029 = add i64 %3028, 3
  store i64 %3029, i64* %PC.i68
  %3030 = inttoptr i64 %3027 to i32*
  %3031 = load i32, i32* %3030
  %3032 = zext i32 %3031 to i64
  store i64 %3032, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_498941, %struct.Memory** %MEMORY
  %loadMem_498944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 7
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 15
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %RBP.i67
  %3043 = sub i64 %3042, 36
  %3044 = load i64, i64* %PC.i66
  %3045 = add i64 %3044, 3
  store i64 %3045, i64* %PC.i66
  %3046 = inttoptr i64 %3043 to i32*
  %3047 = load i32, i32* %3046
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_498944, %struct.Memory** %MEMORY
  %loadMem_498947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 1
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %3055 = bitcast %union.anon* %3054 to %struct.anon.2*
  %AL.i65 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3055, i32 0, i32 0
  %3056 = load i64, i64* %PC.i64
  %3057 = add i64 %3056, 2
  store i64 %3057, i64* %PC.i64
  store i8 0, i8* %AL.i65, align 1
  store %struct.Memory* %loadMem_498947, %struct.Memory** %MEMORY
  %loadMem1_498949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %PC.i63
  %3062 = add i64 %3061, -52393
  %3063 = load i64, i64* %PC.i63
  %3064 = add i64 %3063, 5
  %3065 = load i64, i64* %PC.i63
  %3066 = add i64 %3065, 5
  store i64 %3066, i64* %PC.i63
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3068 = load i64, i64* %3067, align 8
  %3069 = add i64 %3068, -8
  %3070 = inttoptr i64 %3069 to i64*
  store i64 %3064, i64* %3070
  store i64 %3069, i64* %3067, align 8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3062, i64* %3071, align 8
  store %struct.Memory* %loadMem1_498949, %struct.Memory** %MEMORY
  %loadMem2_498949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498949 = load i64, i64* %3
  %call2_498949 = call %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* %0, i64 %loadPC_498949, %struct.Memory* %loadMem2_498949)
  store %struct.Memory* %call2_498949, %struct.Memory** %MEMORY
  br label %block_.L_49894e

block_.L_49894e:                                  ; preds = %block_498937, %block_498911, %block_4988f3
  %loadMem_49894e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %PC.i62
  %3076 = add i64 %3075, 5
  %3077 = load i64, i64* %PC.i62
  %3078 = add i64 %3077, 5
  store i64 %3078, i64* %PC.i62
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3076, i64* %3079, align 8
  store %struct.Memory* %loadMem_49894e, %struct.Memory** %MEMORY
  br label %block_.L_498953

block_.L_498953:                                  ; preds = %block_.L_49894e
  %loadMem_498953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 1
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 15
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %3088 to i64*
  %3089 = load i64, i64* %RBP.i61
  %3090 = sub i64 %3089, 36
  %3091 = load i64, i64* %PC.i59
  %3092 = add i64 %3091, 3
  store i64 %3092, i64* %PC.i59
  %3093 = inttoptr i64 %3090 to i32*
  %3094 = load i32, i32* %3093
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_498953, %struct.Memory** %MEMORY
  %loadMem_498956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 1
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RAX.i58
  %3103 = load i64, i64* %PC.i57
  %3104 = add i64 %3103, 3
  store i64 %3104, i64* %PC.i57
  %3105 = trunc i64 %3102 to i32
  %3106 = add i32 1, %3105
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RAX.i58, align 8
  %3108 = icmp ult i32 %3106, %3105
  %3109 = icmp ult i32 %3106, 1
  %3110 = or i1 %3108, %3109
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3111, i8* %3112, align 1
  %3113 = and i32 %3106, 255
  %3114 = call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3117, i8* %3118, align 1
  %3119 = xor i64 1, %3102
  %3120 = trunc i64 %3119 to i32
  %3121 = xor i32 %3120, %3106
  %3122 = lshr i32 %3121, 4
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3124, i8* %3125, align 1
  %3126 = icmp eq i32 %3106, 0
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i32 %3106, 31
  %3130 = trunc i32 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i32 %3105, 31
  %3133 = xor i32 %3129, %3132
  %3134 = add i32 %3133, %3129
  %3135 = icmp eq i32 %3134, 2
  %3136 = zext i1 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3136, i8* %3137, align 1
  store %struct.Memory* %loadMem_498956, %struct.Memory** %MEMORY
  %loadMem_498959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 1
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %EAX.i55 = bitcast %union.anon* %3143 to i32*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 15
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %RBP.i56
  %3148 = sub i64 %3147, 36
  %3149 = load i32, i32* %EAX.i55
  %3150 = zext i32 %3149 to i64
  %3151 = load i64, i64* %PC.i54
  %3152 = add i64 %3151, 3
  store i64 %3152, i64* %PC.i54
  %3153 = inttoptr i64 %3148 to i32*
  store i32 %3149, i32* %3153
  store %struct.Memory* %loadMem_498959, %struct.Memory** %MEMORY
  %loadMem_49895c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %PC.i53
  %3158 = add i64 %3157, -121
  %3159 = load i64, i64* %PC.i53
  %3160 = add i64 %3159, 5
  store i64 %3160, i64* %PC.i53
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3158, i64* %3161, align 8
  store %struct.Memory* %loadMem_49895c, %struct.Memory** %MEMORY
  br label %block_.L_4988e3

block_.L_498961:                                  ; preds = %block_.L_4988e3
  %loadMem_498961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %PC.i52
  %3166 = add i64 %3165, 5
  %3167 = load i64, i64* %PC.i52
  %3168 = add i64 %3167, 5
  store i64 %3168, i64* %PC.i52
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3166, i64* %3169, align 8
  store %struct.Memory* %loadMem_498961, %struct.Memory** %MEMORY
  br label %block_.L_498966

block_.L_498966:                                  ; preds = %block_.L_498961
  %loadMem_498966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 1
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 15
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %RBP.i51
  %3180 = sub i64 %3179, 32
  %3181 = load i64, i64* %PC.i49
  %3182 = add i64 %3181, 3
  store i64 %3182, i64* %PC.i49
  %3183 = inttoptr i64 %3180 to i32*
  %3184 = load i32, i32* %3183
  %3185 = zext i32 %3184 to i64
  store i64 %3185, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_498966, %struct.Memory** %MEMORY
  %loadMem_498969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 1
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RAX.i48
  %3193 = load i64, i64* %PC.i47
  %3194 = add i64 %3193, 3
  store i64 %3194, i64* %PC.i47
  %3195 = trunc i64 %3192 to i32
  %3196 = add i32 1, %3195
  %3197 = zext i32 %3196 to i64
  store i64 %3197, i64* %RAX.i48, align 8
  %3198 = icmp ult i32 %3196, %3195
  %3199 = icmp ult i32 %3196, 1
  %3200 = or i1 %3198, %3199
  %3201 = zext i1 %3200 to i8
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3201, i8* %3202, align 1
  %3203 = and i32 %3196, 255
  %3204 = call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3207, i8* %3208, align 1
  %3209 = xor i64 1, %3192
  %3210 = trunc i64 %3209 to i32
  %3211 = xor i32 %3210, %3196
  %3212 = lshr i32 %3211, 4
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3214, i8* %3215, align 1
  %3216 = icmp eq i32 %3196, 0
  %3217 = zext i1 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3196, 31
  %3220 = trunc i32 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3220, i8* %3221, align 1
  %3222 = lshr i32 %3195, 31
  %3223 = xor i32 %3219, %3222
  %3224 = add i32 %3223, %3219
  %3225 = icmp eq i32 %3224, 2
  %3226 = zext i1 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3226, i8* %3227, align 1
  store %struct.Memory* %loadMem_498969, %struct.Memory** %MEMORY
  %loadMem_49896c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 1
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %3233 to i32*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 15
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %RBP.i46
  %3238 = sub i64 %3237, 32
  %3239 = load i32, i32* %EAX.i45
  %3240 = zext i32 %3239 to i64
  %3241 = load i64, i64* %PC.i44
  %3242 = add i64 %3241, 3
  store i64 %3242, i64* %PC.i44
  %3243 = inttoptr i64 %3238 to i32*
  store i32 %3239, i32* %3243
  store %struct.Memory* %loadMem_49896c, %struct.Memory** %MEMORY
  %loadMem_49896f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %PC.i43
  %3248 = add i64 %3247, -163
  %3249 = load i64, i64* %PC.i43
  %3250 = add i64 %3249, 5
  store i64 %3250, i64* %PC.i43
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3248, i64* %3251, align 8
  store %struct.Memory* %loadMem_49896f, %struct.Memory** %MEMORY
  br label %block_.L_4988cc

block_.L_498974:                                  ; preds = %block_.L_4988cc
  %loadMem_498974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 11
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RDI.i42 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %PC.i41
  %3259 = add i64 %3258, 10
  store i64 %3259, i64* %PC.i41
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i42, align 8
  store %struct.Memory* %loadMem_498974, %struct.Memory** %MEMORY
  %loadMem_49897e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 1
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %3266 = bitcast %union.anon* %3265 to %struct.anon.2*
  %AL.i40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3266, i32 0, i32 0
  %3267 = load i64, i64* %PC.i39
  %3268 = add i64 %3267, 2
  store i64 %3268, i64* %PC.i39
  store i8 0, i8* %AL.i40, align 1
  store %struct.Memory* %loadMem_49897e, %struct.Memory** %MEMORY
  %loadMem1_498980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3271 to i64*
  %3272 = load i64, i64* %PC.i38
  %3273 = add i64 %3272, -53056
  %3274 = load i64, i64* %PC.i38
  %3275 = add i64 %3274, 5
  %3276 = load i64, i64* %PC.i38
  %3277 = add i64 %3276, 5
  store i64 %3277, i64* %PC.i38
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3279 = load i64, i64* %3278, align 8
  %3280 = add i64 %3279, -8
  %3281 = inttoptr i64 %3280 to i64*
  store i64 %3275, i64* %3281
  store i64 %3280, i64* %3278, align 8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3273, i64* %3282, align 8
  store %struct.Memory* %loadMem1_498980, %struct.Memory** %MEMORY
  %loadMem2_498980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_498980 = load i64, i64* %3
  %call2_498980 = call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* %0, i64 %loadPC_498980, %struct.Memory* %loadMem2_498980)
  store %struct.Memory* %call2_498980, %struct.Memory** %MEMORY
  br label %block_.L_498985

block_.L_498985:                                  ; preds = %block_.L_498974, %block_4988c0, %block_498875, %block_.L_498846
  %loadMem_498985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 1
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 15
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %RBP.i37
  %3293 = sub i64 %3292, 44
  %3294 = load i64, i64* %PC.i35
  %3295 = add i64 %3294, 3
  store i64 %3295, i64* %PC.i35
  %3296 = inttoptr i64 %3293 to i32*
  %3297 = load i32, i32* %3296
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_498985, %struct.Memory** %MEMORY
  %loadMem_498988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 1
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RAX.i34
  %3306 = load i64, i64* %PC.i33
  %3307 = add i64 %3306, 3
  store i64 %3307, i64* %PC.i33
  %3308 = trunc i64 %3305 to i32
  %3309 = add i32 1, %3308
  %3310 = zext i32 %3309 to i64
  store i64 %3310, i64* %RAX.i34, align 8
  %3311 = icmp ult i32 %3309, %3308
  %3312 = icmp ult i32 %3309, 1
  %3313 = or i1 %3311, %3312
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3314, i8* %3315, align 1
  %3316 = and i32 %3309, 255
  %3317 = call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3320, i8* %3321, align 1
  %3322 = xor i64 1, %3305
  %3323 = trunc i64 %3322 to i32
  %3324 = xor i32 %3323, %3309
  %3325 = lshr i32 %3324, 4
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3327, i8* %3328, align 1
  %3329 = icmp eq i32 %3309, 0
  %3330 = zext i1 %3329 to i8
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3330, i8* %3331, align 1
  %3332 = lshr i32 %3309, 31
  %3333 = trunc i32 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3333, i8* %3334, align 1
  %3335 = lshr i32 %3308, 31
  %3336 = xor i32 %3332, %3335
  %3337 = add i32 %3336, %3332
  %3338 = icmp eq i32 %3337, 2
  %3339 = zext i1 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3339, i8* %3340, align 1
  store %struct.Memory* %loadMem_498988, %struct.Memory** %MEMORY
  %loadMem_49898b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 1
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %EAX.i31 = bitcast %union.anon* %3346 to i32*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 15
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RBP.i32
  %3351 = sub i64 %3350, 44
  %3352 = load i32, i32* %EAX.i31
  %3353 = zext i32 %3352 to i64
  %3354 = load i64, i64* %PC.i30
  %3355 = add i64 %3354, 3
  store i64 %3355, i64* %PC.i30
  %3356 = inttoptr i64 %3351 to i32*
  store i32 %3352, i32* %3356
  store %struct.Memory* %loadMem_49898b, %struct.Memory** %MEMORY
  %loadMem_49898e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %PC.i29
  %3361 = add i64 %3360, -414
  %3362 = load i64, i64* %PC.i29
  %3363 = add i64 %3362, 5
  store i64 %3363, i64* %PC.i29
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3361, i64* %3364, align 8
  store %struct.Memory* %loadMem_49898e, %struct.Memory** %MEMORY
  br label %block_.L_4987f0

block_.L_498993:                                  ; preds = %block_.L_4987f0
  %loadMem_498993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %PC.i28
  %3369 = add i64 %3368, 5
  %3370 = load i64, i64* %PC.i28
  %3371 = add i64 %3370, 5
  store i64 %3371, i64* %PC.i28
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3369, i64* %3372, align 8
  store %struct.Memory* %loadMem_498993, %struct.Memory** %MEMORY
  br label %block_.L_498998

block_.L_498998:                                  ; preds = %block_.L_498993
  %loadMem_498998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 1
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 15
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RBP.i27
  %3383 = sub i64 %3382, 40
  %3384 = load i64, i64* %PC.i25
  %3385 = add i64 %3384, 3
  store i64 %3385, i64* %PC.i25
  %3386 = inttoptr i64 %3383 to i32*
  %3387 = load i32, i32* %3386
  %3388 = zext i32 %3387 to i64
  store i64 %3388, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_498998, %struct.Memory** %MEMORY
  %loadMem_49899b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 1
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RAX.i24
  %3396 = load i64, i64* %PC.i23
  %3397 = add i64 %3396, 3
  store i64 %3397, i64* %PC.i23
  %3398 = trunc i64 %3395 to i32
  %3399 = add i32 1, %3398
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RAX.i24, align 8
  %3401 = icmp ult i32 %3399, %3398
  %3402 = icmp ult i32 %3399, 1
  %3403 = or i1 %3401, %3402
  %3404 = zext i1 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3404, i8* %3405, align 1
  %3406 = and i32 %3399, 255
  %3407 = call i32 @llvm.ctpop.i32(i32 %3406)
  %3408 = trunc i32 %3407 to i8
  %3409 = and i8 %3408, 1
  %3410 = xor i8 %3409, 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3410, i8* %3411, align 1
  %3412 = xor i64 1, %3395
  %3413 = trunc i64 %3412 to i32
  %3414 = xor i32 %3413, %3399
  %3415 = lshr i32 %3414, 4
  %3416 = trunc i32 %3415 to i8
  %3417 = and i8 %3416, 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3417, i8* %3418, align 1
  %3419 = icmp eq i32 %3399, 0
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3420, i8* %3421, align 1
  %3422 = lshr i32 %3399, 31
  %3423 = trunc i32 %3422 to i8
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3423, i8* %3424, align 1
  %3425 = lshr i32 %3398, 31
  %3426 = xor i32 %3422, %3425
  %3427 = add i32 %3426, %3422
  %3428 = icmp eq i32 %3427, 2
  %3429 = zext i1 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3429, i8* %3430, align 1
  store %struct.Memory* %loadMem_49899b, %struct.Memory** %MEMORY
  %loadMem_49899e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 1
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3436 to i32*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 15
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RBP.i22
  %3441 = sub i64 %3440, 40
  %3442 = load i32, i32* %EAX.i
  %3443 = zext i32 %3442 to i64
  %3444 = load i64, i64* %PC.i21
  %3445 = add i64 %3444, 3
  store i64 %3445, i64* %PC.i21
  %3446 = inttoptr i64 %3441 to i32*
  store i32 %3442, i32* %3446
  store %struct.Memory* %loadMem_49899e, %struct.Memory** %MEMORY
  %loadMem_4989a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3449 to i64*
  %3450 = load i64, i64* %PC.i20
  %3451 = add i64 %3450, -456
  %3452 = load i64, i64* %PC.i20
  %3453 = add i64 %3452, 5
  store i64 %3453, i64* %PC.i20
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3451, i64* %3454, align 8
  store %struct.Memory* %loadMem_4989a1, %struct.Memory** %MEMORY
  br label %block_.L_4987d9

block_.L_4989a6:                                  ; preds = %block_.L_4987d9
  %loadMem_4989a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 33
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 15
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RBP.i19
  %3462 = sub i64 %3461, 48
  %3463 = load i64, i64* %PC.i18
  %3464 = add i64 %3463, 4
  store i64 %3464, i64* %PC.i18
  %3465 = inttoptr i64 %3462 to i32*
  %3466 = load i32, i32* %3465
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3467, align 1
  %3468 = and i32 %3466, 255
  %3469 = call i32 @llvm.ctpop.i32(i32 %3468)
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3472, i8* %3473, align 1
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3474, align 1
  %3475 = icmp eq i32 %3466, 0
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3476, i8* %3477, align 1
  %3478 = lshr i32 %3466, 31
  %3479 = trunc i32 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3479, i8* %3480, align 1
  %3481 = lshr i32 %3466, 31
  %3482 = xor i32 %3478, %3481
  %3483 = add i32 %3482, %3481
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3485, i8* %3486, align 1
  store %struct.Memory* %loadMem_4989a6, %struct.Memory** %MEMORY
  %loadMem_4989aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %PC.i17
  %3491 = add i64 %3490, 23
  %3492 = load i64, i64* %PC.i17
  %3493 = add i64 %3492, 6
  %3494 = load i64, i64* %PC.i17
  %3495 = add i64 %3494, 6
  store i64 %3495, i64* %PC.i17
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3497 = load i8, i8* %3496, align 1
  store i8 %3497, i8* %BRANCH_TAKEN, align 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3499 = icmp ne i8 %3497, 0
  %3500 = select i1 %3499, i64 %3491, i64 %3493
  store i64 %3500, i64* %3498, align 8
  store %struct.Memory* %loadMem_4989aa, %struct.Memory** %MEMORY
  %loadBr_4989aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4989aa = icmp eq i8 %loadBr_4989aa, 1
  br i1 %cmpBr_4989aa, label %block_.L_4989c1, label %block_4989b0

block_4989b0:                                     ; preds = %block_.L_4989a6
  %loadMem_4989b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 11
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RDI.i16 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %PC.i15
  %3508 = add i64 %3507, 10
  store i64 %3508, i64* %PC.i15
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i16, align 8
  store %struct.Memory* %loadMem_4989b0, %struct.Memory** %MEMORY
  %loadMem_4989ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 1
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %3515 = bitcast %union.anon* %3514 to %struct.anon.2*
  %AL.i14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3515, i32 0, i32 0
  %3516 = load i64, i64* %PC.i13
  %3517 = add i64 %3516, 2
  store i64 %3517, i64* %PC.i13
  store i8 0, i8* %AL.i14, align 1
  store %struct.Memory* %loadMem_4989ba, %struct.Memory** %MEMORY
  %loadMem1_4989bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 33
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3520 to i64*
  %3521 = load i64, i64* %PC.i12
  %3522 = add i64 %3521, -53116
  %3523 = load i64, i64* %PC.i12
  %3524 = add i64 %3523, 5
  %3525 = load i64, i64* %PC.i12
  %3526 = add i64 %3525, 5
  store i64 %3526, i64* %PC.i12
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3528 = load i64, i64* %3527, align 8
  %3529 = add i64 %3528, -8
  %3530 = inttoptr i64 %3529 to i64*
  store i64 %3524, i64* %3530
  store i64 %3529, i64* %3527, align 8
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3522, i64* %3531, align 8
  store %struct.Memory* %loadMem1_4989bc, %struct.Memory** %MEMORY
  %loadMem2_4989bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4989bc = load i64, i64* %3
  %call2_4989bc = call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* %0, i64 %loadPC_4989bc, %struct.Memory* %loadMem2_4989bc)
  store %struct.Memory* %call2_4989bc, %struct.Memory** %MEMORY
  br label %block_.L_4989c1

block_.L_4989c1:                                  ; preds = %block_4989b0, %block_.L_4989a6
  %loadMem_4989c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 11
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3537 to i64*
  %3538 = load i64, i64* %PC.i11
  %3539 = add i64 %3538, 10
  store i64 %3539, i64* %PC.i11
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4989c1, %struct.Memory** %MEMORY
  %loadMem_4989cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 1
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %3546 = bitcast %union.anon* %3545 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3546, i32 0, i32 0
  %3547 = load i64, i64* %PC.i10
  %3548 = add i64 %3547, 2
  store i64 %3548, i64* %PC.i10
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4989cb, %struct.Memory** %MEMORY
  %loadMem1_4989cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %PC.i9
  %3553 = add i64 %3552, -53133
  %3554 = load i64, i64* %PC.i9
  %3555 = add i64 %3554, 5
  %3556 = load i64, i64* %PC.i9
  %3557 = add i64 %3556, 5
  store i64 %3557, i64* %PC.i9
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3559 = load i64, i64* %3558, align 8
  %3560 = add i64 %3559, -8
  %3561 = inttoptr i64 %3560 to i64*
  store i64 %3555, i64* %3561
  store i64 %3560, i64* %3558, align 8
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3553, i64* %3562, align 8
  store %struct.Memory* %loadMem1_4989cd, %struct.Memory** %MEMORY
  %loadMem2_4989cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4989cd = load i64, i64* %3
  %call2_4989cd = call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* %0, i64 %loadPC_4989cd, %struct.Memory* %loadMem2_4989cd)
  store %struct.Memory* %call2_4989cd, %struct.Memory** %MEMORY
  %loadMem_4989d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 33
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3565 to i64*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 15
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3568 to i64*
  %3569 = load i64, i64* %RBP.i8
  %3570 = sub i64 %3569, 4
  %3571 = load i64, i64* %PC.i7
  %3572 = add i64 %3571, 7
  store i64 %3572, i64* %PC.i7
  %3573 = inttoptr i64 %3570 to i32*
  store i32 0, i32* %3573
  store %struct.Memory* %loadMem_4989d2, %struct.Memory** %MEMORY
  br label %block_.L_4989d9

block_.L_4989d9:                                  ; preds = %block_.L_4989c1, %block_4987b2, %block_498776
  %loadMem_4989d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 1
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RBP.i6
  %3584 = sub i64 %3583, 4
  %3585 = load i64, i64* %PC.i5
  %3586 = add i64 %3585, 3
  store i64 %3586, i64* %PC.i5
  %3587 = inttoptr i64 %3584 to i32*
  %3588 = load i32, i32* %3587
  %3589 = zext i32 %3588 to i64
  store i64 %3589, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4989d9, %struct.Memory** %MEMORY
  %loadMem_4989dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 13
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %RSP.i
  %3597 = load i64, i64* %PC.i4
  %3598 = add i64 %3597, 4
  store i64 %3598, i64* %PC.i4
  %3599 = add i64 48, %3596
  store i64 %3599, i64* %RSP.i, align 8
  %3600 = icmp ult i64 %3599, %3596
  %3601 = icmp ult i64 %3599, 48
  %3602 = or i1 %3600, %3601
  %3603 = zext i1 %3602 to i8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3603, i8* %3604, align 1
  %3605 = trunc i64 %3599 to i32
  %3606 = and i32 %3605, 255
  %3607 = call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3610, i8* %3611, align 1
  %3612 = xor i64 48, %3596
  %3613 = xor i64 %3612, %3599
  %3614 = lshr i64 %3613, 4
  %3615 = trunc i64 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3616, i8* %3617, align 1
  %3618 = icmp eq i64 %3599, 0
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3619, i8* %3620, align 1
  %3621 = lshr i64 %3599, 63
  %3622 = trunc i64 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3622, i8* %3623, align 1
  %3624 = lshr i64 %3596, 63
  %3625 = xor i64 %3621, %3624
  %3626 = add i64 %3625, %3621
  %3627 = icmp eq i64 %3626, 2
  %3628 = zext i1 %3627 to i8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3628, i8* %3629, align 1
  store %struct.Memory* %loadMem_4989dc, %struct.Memory** %MEMORY
  %loadMem_4989e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 15
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %PC.i2
  %3637 = add i64 %3636, 1
  store i64 %3637, i64* %PC.i2
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3639 = load i64, i64* %3638, align 8
  %3640 = add i64 %3639, 8
  %3641 = inttoptr i64 %3639 to i64*
  %3642 = load i64, i64* %3641
  store i64 %3642, i64* %RBP.i3, align 8
  store i64 %3640, i64* %3638, align 8
  store %struct.Memory* %loadMem_4989e0, %struct.Memory** %MEMORY
  %loadMem_4989e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3645 to i64*
  %3646 = load i64, i64* %PC.i1
  %3647 = add i64 %3646, 1
  store i64 %3647, i64* %PC.i1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3650 = load i64, i64* %3649, align 8
  %3651 = inttoptr i64 %3650 to i64*
  %3652 = load i64, i64* %3651
  store i64 %3652, i64* %3648, align 8
  %3653 = add i64 %3650, 8
  store i64 %3653, i64* %3649, align 8
  store %struct.Memory* %loadMem_4989e1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4989e1
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_movq__0x58714b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58714b_type* @G__0x58714b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_498794(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_decode_coord(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_49878f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_decode_color(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x58714f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58714f_type* @G__0x58714f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_failure(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4989d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498794(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_jne_.L_4987cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x587162___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587162_type* @G__0x587162 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gtp_start_response(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4989a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_498993(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_je_.L_498846(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_49884b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_498985(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.find_origin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_cmpl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_je_.L_49887a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4988c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.same_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4988c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_498974(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_498961(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_je_.L_49894e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movq__0x587ac6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587ac6_type* @G__0x587ac6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_mprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_498953(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4988e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498966(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4988cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gtp_printf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4987f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_498998(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4987d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
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

define %struct.Memory* @routine_je_.L_4989c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
