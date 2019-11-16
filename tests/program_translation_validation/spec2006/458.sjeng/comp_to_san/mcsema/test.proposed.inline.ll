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
%G_0x85f150_type = type <{ [4 x i8] }>
%G__0x428998_type = type <{ [8 x i8] }>
%G__0x4294e6_type = type <{ [8 x i8] }>
%G__0x429ae5_type = type <{ [8 x i8] }>
%G__0x429ae8_type = type <{ [8 x i8] }>
%G__0x429aed_type = type <{ [8 x i8] }>
%G__0x429af0_type = type <{ [8 x i8] }>
%G__0x429af8_type = type <{ [8 x i8] }>
%G__0x429afa_type = type <{ [8 x i8] }>
%G__0x429afe_type = type <{ [8 x i8] }>
%G__0x429b00_type = type <{ [8 x i8] }>
%G__0x429b07_type = type <{ [8 x i8] }>
%G__0x429b10_type = type <{ [8 x i8] }>
%G__0x429b12_type = type <{ [8 x i8] }>
%G__0x429b1a_type = type <{ [8 x i8] }>
%G__0x429b24_type = type <{ [4 x i8] }>
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
@G_0x85f150 = global %G_0x85f150_type zeroinitializer
@G__0x428998 = global %G__0x428998_type zeroinitializer
@G__0x4294e6 = global %G__0x4294e6_type zeroinitializer
@G__0x429ae5 = global %G__0x429ae5_type zeroinitializer
@G__0x429ae8 = global %G__0x429ae8_type zeroinitializer
@G__0x429aed = global %G__0x429aed_type zeroinitializer
@G__0x429af0 = global %G__0x429af0_type zeroinitializer
@G__0x429af8 = global %G__0x429af8_type zeroinitializer
@G__0x429afa = global %G__0x429afa_type zeroinitializer
@G__0x429afe = global %G__0x429afe_type zeroinitializer
@G__0x429b00 = global %G__0x429b00_type zeroinitializer
@G__0x429b07 = global %G__0x429b07_type zeroinitializer
@G__0x429b10 = global %G__0x429b10_type zeroinitializer
@G__0x429b12 = global %G__0x429b12_type zeroinitializer
@G__0x429b1a = global %G__0x429b1a_type zeroinitializer
@G__0x429b24 = global %G__0x429b24_type zeroinitializer

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

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @comp_to_san(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_421970 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_421970, %struct.Memory** %MEMORY
  %loadMem_421971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i13 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i13
  %27 = load i64, i64* %PC.i12
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i12
  store i64 %26, i64* %RBP.i14, align 8
  store %struct.Memory* %loadMem_421971, %struct.Memory** %MEMORY
  %loadMem_421974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i26 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i26
  %36 = load i64, i64* %PC.i25
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i25
  %38 = sub i64 %35, 24720
  store i64 %38, i64* %RSP.i26, align 8
  %39 = icmp ult i64 %35, 24720
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
  %49 = xor i64 24720, %35
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
  store %struct.Memory* %loadMem_421974, %struct.Memory** %MEMORY
  %loadMem_42197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i118
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i116
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i116
  store i64 %77, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_42197b, %struct.Memory** %MEMORY
  %loadMem_42197f = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RDI.i163 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i164
  %90 = sub i64 %89, 8
  %91 = load i64, i64* %RDI.i163
  %92 = load i64, i64* %PC.i162
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC.i162
  %94 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %94
  store %struct.Memory* %loadMem_42197f, %struct.Memory** %MEMORY
  %loadMem_421983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %RAX.i193
  %105 = load i64, i64* %PC.i192
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC.i192
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_421983, %struct.Memory** %MEMORY
  %loadMem_421986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 11
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RDI.i236 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RDI.i236
  %120 = mul i64 %119, 4
  %121 = add i64 %120, 4348048
  %122 = load i64, i64* %PC.i234
  %123 = add i64 %122, 7
  store i64 %123, i64* %PC.i234
  %124 = inttoptr i64 %121 to i32*
  %125 = load i32, i32* %124
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_421986, %struct.Memory** %MEMORY
  %loadMem_42198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %132 to i32*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RBP.i269
  %137 = sub i64 %136, 24616
  %138 = load i32, i32* %ECX.i
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* %PC.i268
  %141 = add i64 %140, 6
  store i64 %141, i64* %PC.i268
  %142 = inttoptr i64 %137 to i32*
  store i32 %138, i32* %142
  store %struct.Memory* %loadMem_42198d, %struct.Memory** %MEMORY
  %loadMem_421993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 11
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RDI.i329 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RAX.i328
  %153 = add i64 %152, 4
  %154 = load i64, i64* %PC.i327
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC.i327
  %156 = inttoptr i64 %153 to i32*
  %157 = load i32, i32* %156
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %RDI.i329, align 8
  store %struct.Memory* %loadMem_421993, %struct.Memory** %MEMORY
  %loadMem_421997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 11
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RDI.i364 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RDI.i364
  %169 = mul i64 %168, 4
  %170 = add i64 %169, 4348048
  %171 = load i64, i64* %PC.i362
  %172 = add i64 %171, 7
  store i64 %172, i64* %PC.i362
  %173 = inttoptr i64 %170 to i32*
  %174 = load i32, i32* %173
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RCX.i363, align 8
  store %struct.Memory* %loadMem_421997, %struct.Memory** %MEMORY
  %loadMem_42199e = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %ECX.i581 = bitcast %union.anon* %181 to i32*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 15
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %184 to i64*
  %185 = load i64, i64* %RBP.i582
  %186 = sub i64 %185, 24620
  %187 = load i32, i32* %ECX.i581
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %PC.i580
  %190 = add i64 %189, 6
  store i64 %190, i64* %PC.i580
  %191 = inttoptr i64 %186 to i32*
  store i32 %187, i32* %191
  store %struct.Memory* %loadMem_42199e, %struct.Memory** %MEMORY
  %loadMem_4219a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %RBP.i596
  %199 = sub i64 %198, 24624
  %200 = load i64, i64* %PC.i595
  %201 = add i64 %200, 10
  store i64 %201, i64* %PC.i595
  %202 = inttoptr i64 %199 to i32*
  store i32 97, i32* %202
  store %struct.Memory* %loadMem_4219a4, %struct.Memory** %MEMORY
  %loadMem_4219ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 11
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RDI.i630 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RAX.i629
  %213 = load i64, i64* %PC.i628
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i628
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RDI.i630, align 8
  store %struct.Memory* %loadMem_4219ae, %struct.Memory** %MEMORY
  %loadMem_4219b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RDI.i662 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RDI.i662
  %228 = mul i64 %227, 4
  %229 = add i64 %228, 4347472
  %230 = load i64, i64* %PC.i660
  %231 = add i64 %230, 7
  store i64 %231, i64* %PC.i660
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RCX.i661, align 8
  store %struct.Memory* %loadMem_4219b1, %struct.Memory** %MEMORY
  %loadMem_4219b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RCX.i691
  %245 = load i64, i64* %RBP.i692
  %246 = sub i64 %245, 24624
  %247 = load i64, i64* %PC.i690
  %248 = add i64 %247, 6
  store i64 %248, i64* %PC.i690
  %249 = trunc i64 %244 to i32
  %250 = inttoptr i64 %246 to i32*
  %251 = load i32, i32* %250
  %252 = add i32 %251, %249
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RCX.i691, align 8
  %254 = icmp ult i32 %252, %249
  %255 = icmp ult i32 %252, %251
  %256 = or i1 %254, %255
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %257, i8* %258, align 1
  %259 = and i32 %252, 255
  %260 = call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %263, i8* %264, align 1
  %265 = xor i32 %251, %249
  %266 = xor i32 %265, %252
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %269, i8* %270, align 1
  %271 = icmp eq i32 %252, 0
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %272, i8* %273, align 1
  %274 = lshr i32 %252, 31
  %275 = trunc i32 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %275, i8* %276, align 1
  %277 = lshr i32 %249, 31
  %278 = lshr i32 %251, 31
  %279 = xor i32 %274, %277
  %280 = xor i32 %274, %278
  %281 = add i32 %279, %280
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %283, i8* %284, align 1
  store %struct.Memory* %loadMem_4219b8, %struct.Memory** %MEMORY
  %loadMem_4219be = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RCX.i720
  %292 = load i64, i64* %PC.i719
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC.i719
  %294 = trunc i64 %291 to i32
  %295 = sub i32 %294, 1
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RCX.i720, align 8
  %297 = icmp ult i32 %294, 1
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %298, i8* %299, align 1
  %300 = and i32 %295, 255
  %301 = call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %304, i8* %305, align 1
  %306 = xor i64 1, %291
  %307 = trunc i64 %306 to i32
  %308 = xor i32 %307, %295
  %309 = lshr i32 %308, 4
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %311, i8* %312, align 1
  %313 = icmp eq i32 %295, 0
  %314 = zext i1 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %314, i8* %315, align 1
  %316 = lshr i32 %295, 31
  %317 = trunc i32 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %317, i8* %318, align 1
  %319 = lshr i32 %294, 31
  %320 = xor i32 %316, %319
  %321 = add i32 %320, %319
  %322 = icmp eq i32 %321, 2
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %323, i8* %324, align 1
  store %struct.Memory* %loadMem_4219be, %struct.Memory** %MEMORY
  %loadMem_4219c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %331 = bitcast %union.anon* %330 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %331, i32 0, i32 0
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %335 = bitcast %union.anon* %334 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %335, i32 0, i32 0
  %336 = load i8, i8* %CL.i
  %337 = zext i8 %336 to i64
  %338 = load i64, i64* %PC.i778
  %339 = add i64 %338, 2
  store i64 %339, i64* %PC.i778
  store i8 %336, i8* %DL.i, align 1
  store %struct.Memory* %loadMem_4219c1, %struct.Memory** %MEMORY
  %loadMem_4219c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %346 = bitcast %union.anon* %345 to %struct.anon.2*
  %DL.i826 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %346, i32 0, i32 0
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RBP.i827
  %351 = sub i64 %350, 24625
  %352 = load i8, i8* %DL.i826
  %353 = zext i8 %352 to i64
  %354 = load i64, i64* %PC.i825
  %355 = add i64 %354, 6
  store i64 %355, i64* %PC.i825
  %356 = inttoptr i64 %351 to i8*
  store i8 %352, i8* %356
  store %struct.Memory* %loadMem_4219c3, %struct.Memory** %MEMORY
  %loadMem_4219c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RAX.i823 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 11
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RDI.i824 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RAX.i823
  %367 = add i64 %366, 4
  %368 = load i64, i64* %PC.i822
  %369 = add i64 %368, 4
  store i64 %369, i64* %PC.i822
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %RDI.i824, align 8
  store %struct.Memory* %loadMem_4219c9, %struct.Memory** %MEMORY
  %loadMem_4219cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 11
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RDI.i821 = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %RDI.i821
  %383 = mul i64 %382, 4
  %384 = add i64 %383, 4347472
  %385 = load i64, i64* %PC.i819
  %386 = add i64 %385, 7
  store i64 %386, i64* %PC.i819
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_4219cd, %struct.Memory** %MEMORY
  %loadMem_4219d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 15
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RCX.i817
  %400 = load i64, i64* %RBP.i818
  %401 = sub i64 %400, 24624
  %402 = load i64, i64* %PC.i816
  %403 = add i64 %402, 6
  store i64 %403, i64* %PC.i816
  %404 = trunc i64 %399 to i32
  %405 = inttoptr i64 %401 to i32*
  %406 = load i32, i32* %405
  %407 = add i32 %406, %404
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i817, align 8
  %409 = icmp ult i32 %407, %404
  %410 = icmp ult i32 %407, %406
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %412, i8* %413, align 1
  %414 = and i32 %407, 255
  %415 = call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %418, i8* %419, align 1
  %420 = xor i32 %406, %404
  %421 = xor i32 %420, %407
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %424, i8* %425, align 1
  %426 = icmp eq i32 %407, 0
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %427, i8* %428, align 1
  %429 = lshr i32 %407, 31
  %430 = trunc i32 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %430, i8* %431, align 1
  %432 = lshr i32 %404, 31
  %433 = lshr i32 %406, 31
  %434 = xor i32 %429, %432
  %435 = xor i32 %429, %433
  %436 = add i32 %434, %435
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %438, i8* %439, align 1
  store %struct.Memory* %loadMem_4219d4, %struct.Memory** %MEMORY
  %loadMem_4219da = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RCX.i815
  %447 = load i64, i64* %PC.i814
  %448 = add i64 %447, 3
  store i64 %448, i64* %PC.i814
  %449 = trunc i64 %446 to i32
  %450 = sub i32 %449, 1
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RCX.i815, align 8
  %452 = icmp ult i32 %449, 1
  %453 = zext i1 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %453, i8* %454, align 1
  %455 = and i32 %450, 255
  %456 = call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %459, i8* %460, align 1
  %461 = xor i64 1, %446
  %462 = trunc i64 %461 to i32
  %463 = xor i32 %462, %450
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %466, i8* %467, align 1
  %468 = icmp eq i32 %450, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1
  %471 = lshr i32 %450, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1
  %474 = lshr i32 %449, 31
  %475 = xor i32 %471, %474
  %476 = add i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %478, i8* %479, align 1
  store %struct.Memory* %loadMem_4219da, %struct.Memory** %MEMORY
  %loadMem_4219dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %486 = bitcast %union.anon* %485 to %struct.anon.2*
  %CL.i812 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %486, i32 0, i32 0
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 7
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %490 = bitcast %union.anon* %489 to %struct.anon.2*
  %DL.i813 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %490, i32 0, i32 0
  %491 = load i8, i8* %CL.i812
  %492 = zext i8 %491 to i64
  %493 = load i64, i64* %PC.i811
  %494 = add i64 %493, 2
  store i64 %494, i64* %PC.i811
  store i8 %491, i8* %DL.i813, align 1
  store %struct.Memory* %loadMem_4219dd, %struct.Memory** %MEMORY
  %loadMem_4219df = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 7
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %501 = bitcast %union.anon* %500 to %struct.anon.2*
  %DL.i809 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %501, i32 0, i32 0
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 15
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %RBP.i810
  %506 = sub i64 %505, 24626
  %507 = load i8, i8* %DL.i809
  %508 = zext i8 %507 to i64
  %509 = load i64, i64* %PC.i808
  %510 = add i64 %509, 6
  store i64 %510, i64* %PC.i808
  %511 = inttoptr i64 %506 to i8*
  store i8 %507, i8* %511
  store %struct.Memory* %loadMem_4219df, %struct.Memory** %MEMORY
  %loadMem_4219e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 1
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RAX.i807
  %519 = load i64, i64* %PC.i806
  %520 = add i64 %519, 3
  store i64 %520, i64* %PC.i806
  %521 = inttoptr i64 %518 to i32*
  %522 = load i32, i32* %521
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %523, align 1
  %524 = and i32 %522, 255
  %525 = call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %528, i8* %529, align 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %530, align 1
  %531 = icmp eq i32 %522, 0
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %532, i8* %533, align 1
  %534 = lshr i32 %522, 31
  %535 = trunc i32 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %535, i8* %536, align 1
  %537 = lshr i32 %522, 31
  %538 = xor i32 %534, %537
  %539 = add i32 %538, %537
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %541, i8* %542, align 1
  store %struct.Memory* %loadMem_4219e5, %struct.Memory** %MEMORY
  %loadMem_4219e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RAX.i804 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 15
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %RBP.i805
  %553 = sub i64 %552, 24640
  %554 = load i64, i64* %RAX.i804
  %555 = load i64, i64* %PC.i803
  %556 = add i64 %555, 7
  store i64 %556, i64* %PC.i803
  %557 = inttoptr i64 %553 to i64*
  store i64 %554, i64* %557
  store %struct.Memory* %loadMem_4219e8, %struct.Memory** %MEMORY
  %loadMem_4219ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %PC.i802
  %562 = add i64 %561, 70
  %563 = load i64, i64* %PC.i802
  %564 = add i64 %563, 6
  %565 = load i64, i64* %PC.i802
  %566 = add i64 %565, 6
  store i64 %566, i64* %PC.i802
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %568 = load i8, i8* %567, align 1
  %569 = icmp eq i8 %568, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %BRANCH_TAKEN, align 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %572 = select i1 %569, i64 %562, i64 %564
  store i64 %572, i64* %571, align 8
  store %struct.Memory* %loadMem_4219ef, %struct.Memory** %MEMORY
  %loadBr_4219ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219ef = icmp eq i8 %loadBr_4219ef, 1
  br i1 %cmpBr_4219ef, label %block_.L_421a35, label %block_4219f5

block_4219f5:                                     ; preds = %entry
  %loadMem_4219f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 9
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RSI.i801 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %PC.i800
  %580 = add i64 %579, 10
  store i64 %580, i64* %PC.i800
  store i64 ptrtoint (%G__0x429ae5_type* @G__0x429ae5 to i64), i64* %RSI.i801, align 8
  store %struct.Memory* %loadMem_4219f5, %struct.Memory** %MEMORY
  %loadMem_4219ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 11
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RDI.i798 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i799
  %591 = sub i64 %590, 8
  %592 = load i64, i64* %PC.i797
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC.i797
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594
  store i64 %595, i64* %RDI.i798, align 8
  store %struct.Memory* %loadMem_4219ff, %struct.Memory** %MEMORY
  %loadMem_421a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 15
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RBP.i796
  %606 = sub i64 %605, 24640
  %607 = load i64, i64* %PC.i794
  %608 = add i64 %607, 7
  store i64 %608, i64* %PC.i794
  %609 = inttoptr i64 %606 to i64*
  %610 = load i64, i64* %609
  store i64 %610, i64* %RAX.i795, align 8
  store %struct.Memory* %loadMem_421a03, %struct.Memory** %MEMORY
  %loadMem_421a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 5
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RAX.i792
  %621 = add i64 %620, 12
  %622 = load i64, i64* %PC.i791
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i791
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %RCX.i793, align 8
  store %struct.Memory* %loadMem_421a0a, %struct.Memory** %MEMORY
  %loadMem_421a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 5
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 7
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RDX.i790 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RCX.i789
  %637 = mul i64 %636, 4
  %638 = add i64 %637, 4357664
  %639 = load i64, i64* %PC.i788
  %640 = add i64 %639, 7
  store i64 %640, i64* %PC.i788
  %641 = inttoptr i64 %638 to i32*
  %642 = load i32, i32* %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i790, align 8
  store %struct.Memory* %loadMem_421a0e, %struct.Memory** %MEMORY
  %loadMem_421a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RCX.i786 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RBP.i787
  %654 = sub i64 %653, 24626
  %655 = load i64, i64* %PC.i785
  %656 = add i64 %655, 7
  store i64 %656, i64* %PC.i785
  %657 = inttoptr i64 %654 to i8*
  %658 = load i8, i8* %657
  %659 = sext i8 %658 to i64
  %660 = and i64 %659, 4294967295
  store i64 %660, i64* %RCX.i786, align 8
  store %struct.Memory* %loadMem_421a15, %struct.Memory** %MEMORY
  %loadMem_421a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 17
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %R8D.i783 = bitcast %union.anon* %666 to i32*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %669 to i64*
  %670 = bitcast i32* %R8D.i783 to i64*
  %671 = load i64, i64* %RBP.i784
  %672 = sub i64 %671, 24620
  %673 = load i64, i64* %PC.i782
  %674 = add i64 %673, 7
  store i64 %674, i64* %PC.i782
  %675 = inttoptr i64 %672 to i32*
  %676 = load i32, i32* %675
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %670, align 8
  store %struct.Memory* %loadMem_421a1c, %struct.Memory** %MEMORY
  %loadMem_421a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 33
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %684 = bitcast %union.anon* %683 to %struct.anon.2*
  %AL.i781 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %684, i32 0, i32 0
  %685 = load i64, i64* %PC.i780
  %686 = add i64 %685, 2
  store i64 %686, i64* %PC.i780
  store i8 0, i8* %AL.i781, align 1
  store %struct.Memory* %loadMem_421a23, %struct.Memory** %MEMORY
  %loadMem1_421a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %PC.i779
  %691 = add i64 %690, -134229
  %692 = load i64, i64* %PC.i779
  %693 = add i64 %692, 5
  %694 = load i64, i64* %PC.i779
  %695 = add i64 %694, 5
  store i64 %695, i64* %PC.i779
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %697 = load i64, i64* %696, align 8
  %698 = add i64 %697, -8
  %699 = inttoptr i64 %698 to i64*
  store i64 %693, i64* %699
  store i64 %698, i64* %696, align 8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %691, i64* %700, align 8
  store %struct.Memory* %loadMem1_421a25, %struct.Memory** %MEMORY
  %loadMem2_421a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421a25 = load i64, i64* %3
  %701 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421a25)
  store %struct.Memory* %701, %struct.Memory** %MEMORY
  %loadMem_421a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 1
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %EAX.i776 = bitcast %union.anon* %707 to i32*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 15
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %RBP.i777
  %712 = sub i64 %711, 24644
  %713 = load i32, i32* %EAX.i776
  %714 = zext i32 %713 to i64
  %715 = load i64, i64* %PC.i775
  %716 = add i64 %715, 6
  store i64 %716, i64* %PC.i775
  %717 = inttoptr i64 %712 to i32*
  store i32 %713, i32* %717
  store %struct.Memory* %loadMem_421a2a, %struct.Memory** %MEMORY
  %loadMem_421a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %PC.i774
  %722 = add i64 %721, 1475
  %723 = load i64, i64* %PC.i774
  %724 = add i64 %723, 5
  store i64 %724, i64* %PC.i774
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %722, i64* %725, align 8
  store %struct.Memory* %loadMem_421a30, %struct.Memory** %MEMORY
  br label %block_.L_421ff3

block_.L_421a35:                                  ; preds = %entry
  %loadMem_421a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 15
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RBP.i773
  %736 = sub i64 %735, 24640
  %737 = load i64, i64* %PC.i771
  %738 = add i64 %737, 7
  store i64 %738, i64* %PC.i771
  %739 = inttoptr i64 %736 to i64*
  %740 = load i64, i64* %739
  store i64 %740, i64* %RAX.i772, align 8
  store %struct.Memory* %loadMem_421a35, %struct.Memory** %MEMORY
  %loadMem_421a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 5
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %749 to i64*
  %750 = load i64, i64* %RAX.i769
  %751 = load i64, i64* %PC.i768
  %752 = add i64 %751, 3
  store i64 %752, i64* %PC.i768
  %753 = inttoptr i64 %750 to i32*
  %754 = load i32, i32* %753
  %755 = sext i32 %754 to i64
  store i64 %755, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_421a3c, %struct.Memory** %MEMORY
  %loadMem_421a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 33
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 5
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %RCX.i767
  %763 = mul i64 %762, 4
  %764 = add i64 %763, 8807744
  %765 = load i64, i64* %PC.i766
  %766 = add i64 %765, 8
  store i64 %766, i64* %PC.i766
  %767 = inttoptr i64 %764 to i32*
  %768 = load i32, i32* %767
  %769 = sub i32 %768, 1
  %770 = icmp ult i32 %768, 1
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %771, i8* %772, align 1
  %773 = and i32 %769, 255
  %774 = call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %777, i8* %778, align 1
  %779 = xor i32 %768, 1
  %780 = xor i32 %779, %769
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %783, i8* %784, align 1
  %785 = icmp eq i32 %769, 0
  %786 = zext i1 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %786, i8* %787, align 1
  %788 = lshr i32 %769, 31
  %789 = trunc i32 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %789, i8* %790, align 1
  %791 = lshr i32 %768, 31
  %792 = xor i32 %788, %791
  %793 = add i32 %792, %791
  %794 = icmp eq i32 %793, 2
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %795, i8* %796, align 1
  store %struct.Memory* %loadMem_421a3f, %struct.Memory** %MEMORY
  %loadMem_421a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %PC.i765
  %801 = add i64 %800, 30
  %802 = load i64, i64* %PC.i765
  %803 = add i64 %802, 6
  %804 = load i64, i64* %PC.i765
  %805 = add i64 %804, 6
  store i64 %805, i64* %PC.i765
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %807 = load i8, i8* %806, align 1
  store i8 %807, i8* %BRANCH_TAKEN, align 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %809 = icmp ne i8 %807, 0
  %810 = select i1 %809, i64 %801, i64 %803
  store i64 %810, i64* %808, align 8
  store %struct.Memory* %loadMem_421a47, %struct.Memory** %MEMORY
  %loadBr_421a47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a47 = icmp eq i8 %loadBr_421a47, 1
  br i1 %cmpBr_421a47, label %block_.L_421a65, label %block_421a4d

block_421a4d:                                     ; preds = %block_.L_421a35
  %loadMem_421a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 1
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 15
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RBP.i764
  %821 = sub i64 %820, 24640
  %822 = load i64, i64* %PC.i762
  %823 = add i64 %822, 7
  store i64 %823, i64* %PC.i762
  %824 = inttoptr i64 %821 to i64*
  %825 = load i64, i64* %824
  store i64 %825, i64* %RAX.i763, align 8
  store %struct.Memory* %loadMem_421a4d, %struct.Memory** %MEMORY
  %loadMem_421a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 5
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RCX.i761 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RAX.i760
  %836 = load i64, i64* %PC.i759
  %837 = add i64 %836, 3
  store i64 %837, i64* %PC.i759
  %838 = inttoptr i64 %835 to i32*
  %839 = load i32, i32* %838
  %840 = sext i32 %839 to i64
  store i64 %840, i64* %RCX.i761, align 8
  store %struct.Memory* %loadMem_421a54, %struct.Memory** %MEMORY
  %loadMem_421a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 5
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %RCX.i758
  %848 = mul i64 %847, 4
  %849 = add i64 %848, 8807744
  %850 = load i64, i64* %PC.i757
  %851 = add i64 %850, 8
  store i64 %851, i64* %PC.i757
  %852 = inttoptr i64 %849 to i32*
  %853 = load i32, i32* %852
  %854 = sub i32 %853, 2
  %855 = icmp ult i32 %853, 2
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %856, i8* %857, align 1
  %858 = and i32 %854, 255
  %859 = call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %862, i8* %863, align 1
  %864 = xor i32 %853, 2
  %865 = xor i32 %864, %854
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %868, i8* %869, align 1
  %870 = icmp eq i32 %854, 0
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %871, i8* %872, align 1
  %873 = lshr i32 %854, 31
  %874 = trunc i32 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %874, i8* %875, align 1
  %876 = lshr i32 %853, 31
  %877 = xor i32 %873, %876
  %878 = add i32 %877, %876
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %880, i8* %881, align 1
  store %struct.Memory* %loadMem_421a57, %struct.Memory** %MEMORY
  %loadMem_421a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %PC.i756
  %886 = add i64 %885, 321
  %887 = load i64, i64* %PC.i756
  %888 = add i64 %887, 6
  %889 = load i64, i64* %PC.i756
  %890 = add i64 %889, 6
  store i64 %890, i64* %PC.i756
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %892 = load i8, i8* %891, align 1
  %893 = icmp eq i8 %892, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %BRANCH_TAKEN, align 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %896 = select i1 %893, i64 %886, i64 %888
  store i64 %896, i64* %895, align 8
  store %struct.Memory* %loadMem_421a5f, %struct.Memory** %MEMORY
  %loadBr_421a5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a5f = icmp eq i8 %loadBr_421a5f, 1
  br i1 %cmpBr_421a5f, label %block_.L_421ba0, label %block_.L_421a65

block_.L_421a65:                                  ; preds = %block_421a4d, %block_.L_421a35
  %loadMem_421a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 1
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %RBP.i755
  %907 = sub i64 %906, 24640
  %908 = load i64, i64* %PC.i753
  %909 = add i64 %908, 7
  store i64 %909, i64* %PC.i753
  %910 = inttoptr i64 %907 to i64*
  %911 = load i64, i64* %910
  store i64 %911, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_421a65, %struct.Memory** %MEMORY
  %loadMem_421a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 1
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 5
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RAX.i751
  %922 = add i64 %921, 4
  %923 = load i64, i64* %PC.i750
  %924 = add i64 %923, 4
  store i64 %924, i64* %PC.i750
  %925 = inttoptr i64 %922 to i32*
  %926 = load i32, i32* %925
  %927 = sext i32 %926 to i64
  store i64 %927, i64* %RCX.i752, align 8
  store %struct.Memory* %loadMem_421a6c, %struct.Memory** %MEMORY
  %loadMem_421a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 5
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RCX.i749 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RCX.i749
  %935 = mul i64 %934, 4
  %936 = add i64 %935, 8807744
  %937 = load i64, i64* %PC.i748
  %938 = add i64 %937, 8
  store i64 %938, i64* %PC.i748
  %939 = inttoptr i64 %936 to i32*
  %940 = load i32, i32* %939
  %941 = sub i32 %940, 13
  %942 = icmp ult i32 %940, 13
  %943 = zext i1 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %943, i8* %944, align 1
  %945 = and i32 %941, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1
  %951 = xor i32 %940, 13
  %952 = xor i32 %951, %941
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i32 %941, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %941, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %940, 31
  %964 = xor i32 %960, %963
  %965 = add i32 %964, %963
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %967, i8* %968, align 1
  store %struct.Memory* %loadMem_421a70, %struct.Memory** %MEMORY
  %loadMem_421a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %PC.i747
  %973 = add i64 %972, 149
  %974 = load i64, i64* %PC.i747
  %975 = add i64 %974, 6
  %976 = load i64, i64* %PC.i747
  %977 = add i64 %976, 6
  store i64 %977, i64* %PC.i747
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %979 = load i8, i8* %978, align 1
  %980 = icmp eq i8 %979, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %BRANCH_TAKEN, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %983 = select i1 %980, i64 %973, i64 %975
  store i64 %983, i64* %982, align 8
  store %struct.Memory* %loadMem_421a78, %struct.Memory** %MEMORY
  %loadBr_421a78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a78 = icmp eq i8 %loadBr_421a78, 1
  br i1 %cmpBr_421a78, label %block_.L_421b0d, label %block_421a7e

block_421a7e:                                     ; preds = %block_.L_421a65
  %loadMem_421a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 1
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RAX.i745 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 15
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RBP.i746
  %994 = sub i64 %993, 24640
  %995 = load i64, i64* %PC.i744
  %996 = add i64 %995, 7
  store i64 %996, i64* %PC.i744
  %997 = inttoptr i64 %994 to i64*
  %998 = load i64, i64* %997
  store i64 %998, i64* %RAX.i745, align 8
  store %struct.Memory* %loadMem_421a7e, %struct.Memory** %MEMORY
  %loadMem_421a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %RAX.i743
  %1006 = add i64 %1005, 20
  %1007 = load i64, i64* %PC.i742
  %1008 = add i64 %1007, 4
  store i64 %1008, i64* %PC.i742
  %1009 = inttoptr i64 %1006 to i32*
  %1010 = load i32, i32* %1009
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1011, align 1
  %1012 = and i32 %1010, 255
  %1013 = call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1016, i8* %1017, align 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1018, align 1
  %1019 = icmp eq i32 %1010, 0
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1020, i8* %1021, align 1
  %1022 = lshr i32 %1010, 31
  %1023 = trunc i32 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1023, i8* %1024, align 1
  %1025 = lshr i32 %1010, 31
  %1026 = xor i32 %1022, %1025
  %1027 = add i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1029, i8* %1030, align 1
  store %struct.Memory* %loadMem_421a85, %struct.Memory** %MEMORY
  %loadMem_421a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %PC.i741
  %1035 = add i64 %1034, 132
  %1036 = load i64, i64* %PC.i741
  %1037 = add i64 %1036, 6
  %1038 = load i64, i64* %PC.i741
  %1039 = add i64 %1038, 6
  store i64 %1039, i64* %PC.i741
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1041 = load i8, i8* %1040, align 1
  %1042 = icmp eq i8 %1041, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %BRANCH_TAKEN, align 1
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1045 = select i1 %1042, i64 %1035, i64 %1037
  store i64 %1045, i64* %1044, align 8
  store %struct.Memory* %loadMem_421a89, %struct.Memory** %MEMORY
  %loadBr_421a89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a89 = icmp eq i8 %loadBr_421a89, 1
  br i1 %cmpBr_421a89, label %block_.L_421b0d, label %block_421a8f

block_421a8f:                                     ; preds = %block_421a7e
  %loadMem_421a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RBP.i740
  %1056 = sub i64 %1055, 24640
  %1057 = load i64, i64* %PC.i738
  %1058 = add i64 %1057, 7
  store i64 %1058, i64* %PC.i738
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059
  store i64 %1060, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_421a8f, %struct.Memory** %MEMORY
  %loadMem_421a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RAX.i737
  %1068 = add i64 %1067, 12
  %1069 = load i64, i64* %PC.i736
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC.i736
  %1071 = inttoptr i64 %1068 to i32*
  %1072 = load i32, i32* %1071
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1073, align 1
  %1074 = and i32 %1072, 255
  %1075 = call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1078, i8* %1079, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1080, align 1
  %1081 = icmp eq i32 %1072, 0
  %1082 = zext i1 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1082, i8* %1083, align 1
  %1084 = lshr i32 %1072, 31
  %1085 = trunc i32 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1085, i8* %1086, align 1
  %1087 = lshr i32 %1072, 31
  %1088 = xor i32 %1084, %1087
  %1089 = add i32 %1088, %1087
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1091, i8* %1092, align 1
  store %struct.Memory* %loadMem_421a96, %struct.Memory** %MEMORY
  %loadMem_421a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %PC.i735
  %1097 = add i64 %1096, 51
  %1098 = load i64, i64* %PC.i735
  %1099 = add i64 %1098, 6
  %1100 = load i64, i64* %PC.i735
  %1101 = add i64 %1100, 6
  store i64 %1101, i64* %PC.i735
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1103 = load i8, i8* %1102, align 1
  %1104 = icmp eq i8 %1103, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %BRANCH_TAKEN, align 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1107 = select i1 %1104, i64 %1097, i64 %1099
  store i64 %1107, i64* %1106, align 8
  store %struct.Memory* %loadMem_421a9a, %struct.Memory** %MEMORY
  %loadBr_421a9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a9a = icmp eq i8 %loadBr_421a9a, 1
  br i1 %cmpBr_421a9a, label %block_.L_421acd, label %block_421aa0

block_421aa0:                                     ; preds = %block_421a8f
  %loadMem_421aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 9
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RSI.i734 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %PC.i733
  %1115 = add i64 %1114, 10
  store i64 %1115, i64* %PC.i733
  store i64 ptrtoint (%G__0x429ae8_type* @G__0x429ae8 to i64), i64* %RSI.i734, align 8
  store %struct.Memory* %loadMem_421aa0, %struct.Memory** %MEMORY
  %loadMem_421aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 11
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RDI.i731 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 15
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RBP.i732
  %1126 = sub i64 %1125, 8
  %1127 = load i64, i64* %PC.i730
  %1128 = add i64 %1127, 4
  store i64 %1128, i64* %PC.i730
  %1129 = inttoptr i64 %1126 to i64*
  %1130 = load i64, i64* %1129
  store i64 %1130, i64* %RDI.i731, align 8
  store %struct.Memory* %loadMem_421aaa, %struct.Memory** %MEMORY
  %loadMem_421aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 7
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RDX.i728 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 15
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RBP.i729
  %1141 = sub i64 %1140, 24626
  %1142 = load i64, i64* %PC.i727
  %1143 = add i64 %1142, 7
  store i64 %1143, i64* %PC.i727
  %1144 = inttoptr i64 %1141 to i8*
  %1145 = load i8, i8* %1144
  %1146 = sext i8 %1145 to i64
  %1147 = and i64 %1146, 4294967295
  store i64 %1147, i64* %RDX.i728, align 8
  store %struct.Memory* %loadMem_421aae, %struct.Memory** %MEMORY
  %loadMem_421ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 5
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 15
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %RBP.i726
  %1158 = sub i64 %1157, 24620
  %1159 = load i64, i64* %PC.i724
  %1160 = add i64 %1159, 6
  store i64 %1160, i64* %PC.i724
  %1161 = inttoptr i64 %1158 to i32*
  %1162 = load i32, i32* %1161
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RCX.i725, align 8
  store %struct.Memory* %loadMem_421ab5, %struct.Memory** %MEMORY
  %loadMem_421abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 1
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %1170 = bitcast %union.anon* %1169 to %struct.anon.2*
  %AL.i723 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1170, i32 0, i32 0
  %1171 = load i64, i64* %PC.i722
  %1172 = add i64 %1171, 2
  store i64 %1172, i64* %PC.i722
  store i8 0, i8* %AL.i723, align 1
  store %struct.Memory* %loadMem_421abb, %struct.Memory** %MEMORY
  %loadMem1_421abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %PC.i721
  %1177 = add i64 %1176, -134381
  %1178 = load i64, i64* %PC.i721
  %1179 = add i64 %1178, 5
  %1180 = load i64, i64* %PC.i721
  %1181 = add i64 %1180, 5
  store i64 %1181, i64* %PC.i721
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1183 = load i64, i64* %1182, align 8
  %1184 = add i64 %1183, -8
  %1185 = inttoptr i64 %1184 to i64*
  store i64 %1179, i64* %1185
  store i64 %1184, i64* %1182, align 8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1177, i64* %1186, align 8
  store %struct.Memory* %loadMem1_421abd, %struct.Memory** %MEMORY
  %loadMem2_421abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421abd = load i64, i64* %3
  %1187 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421abd)
  store %struct.Memory* %1187, %struct.Memory** %MEMORY
  %loadMem_421ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %EAX.i717 = bitcast %union.anon* %1193 to i32*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 15
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %RBP.i718
  %1198 = sub i64 %1197, 24648
  %1199 = load i32, i32* %EAX.i717
  %1200 = zext i32 %1199 to i64
  %1201 = load i64, i64* %PC.i716
  %1202 = add i64 %1201, 6
  store i64 %1202, i64* %PC.i716
  %1203 = inttoptr i64 %1198 to i32*
  store i32 %1199, i32* %1203
  store %struct.Memory* %loadMem_421ac2, %struct.Memory** %MEMORY
  %loadMem_421ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %PC.i715
  %1208 = add i64 %1207, 64
  %1209 = load i64, i64* %PC.i715
  %1210 = add i64 %1209, 5
  store i64 %1210, i64* %PC.i715
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1208, i64* %1211, align 8
  store %struct.Memory* %loadMem_421ac8, %struct.Memory** %MEMORY
  br label %block_.L_421b08

block_.L_421acd:                                  ; preds = %block_421a8f
  %loadMem_421acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 9
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RSI.i714 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %PC.i713
  %1219 = add i64 %1218, 10
  store i64 %1219, i64* %PC.i713
  store i64 ptrtoint (%G__0x429af0_type* @G__0x429af0 to i64), i64* %RSI.i714, align 8
  store %struct.Memory* %loadMem_421acd, %struct.Memory** %MEMORY
  %loadMem_421ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 11
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RDI.i711 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 15
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %1228 to i64*
  %1229 = load i64, i64* %RBP.i712
  %1230 = sub i64 %1229, 8
  %1231 = load i64, i64* %PC.i710
  %1232 = add i64 %1231, 4
  store i64 %1232, i64* %PC.i710
  %1233 = inttoptr i64 %1230 to i64*
  %1234 = load i64, i64* %1233
  store i64 %1234, i64* %RDI.i711, align 8
  store %struct.Memory* %loadMem_421ad7, %struct.Memory** %MEMORY
  %loadMem_421adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 7
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RDX.i708 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 15
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %RBP.i709
  %1245 = sub i64 %1244, 24626
  %1246 = load i64, i64* %PC.i707
  %1247 = add i64 %1246, 7
  store i64 %1247, i64* %PC.i707
  %1248 = inttoptr i64 %1245 to i8*
  %1249 = load i8, i8* %1248
  %1250 = sext i8 %1249 to i64
  %1251 = and i64 %1250, 4294967295
  store i64 %1251, i64* %RDX.i708, align 8
  store %struct.Memory* %loadMem_421adb, %struct.Memory** %MEMORY
  %loadMem_421ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 33
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 5
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RCX.i705 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 15
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %1260 to i64*
  %1261 = load i64, i64* %RBP.i706
  %1262 = sub i64 %1261, 24620
  %1263 = load i64, i64* %PC.i704
  %1264 = add i64 %1263, 6
  store i64 %1264, i64* %PC.i704
  %1265 = inttoptr i64 %1262 to i32*
  %1266 = load i32, i32* %1265
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RCX.i705, align 8
  store %struct.Memory* %loadMem_421ae2, %struct.Memory** %MEMORY
  %loadMem_421ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 15
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RBP.i703
  %1278 = sub i64 %1277, 24640
  %1279 = load i64, i64* %PC.i701
  %1280 = add i64 %1279, 7
  store i64 %1280, i64* %PC.i701
  %1281 = inttoptr i64 %1278 to i64*
  %1282 = load i64, i64* %1281
  store i64 %1282, i64* %RAX.i702, align 8
  store %struct.Memory* %loadMem_421ae8, %struct.Memory** %MEMORY
  %loadMem_421aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 1
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 17
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %R8.i700 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RAX.i699
  %1293 = add i64 %1292, 12
  %1294 = load i64, i64* %PC.i698
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %PC.i698
  %1296 = inttoptr i64 %1293 to i32*
  %1297 = load i32, i32* %1296
  %1298 = sext i32 %1297 to i64
  store i64 %1298, i64* %R8.i700, align 8
  store %struct.Memory* %loadMem_421aef, %struct.Memory** %MEMORY
  %loadMem_421af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 17
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %R8D.i697 = bitcast %union.anon* %1304 to i32*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 17
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1307 to i64*
  %1308 = bitcast i32* %R8D.i697 to i64*
  %1309 = load i64, i64* %R8.i
  %1310 = mul i64 %1309, 4
  %1311 = add i64 %1310, 4357664
  %1312 = load i64, i64* %PC.i696
  %1313 = add i64 %1312, 8
  store i64 %1313, i64* %PC.i696
  %1314 = inttoptr i64 %1311 to i32*
  %1315 = load i32, i32* %1314
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %1308, align 8
  store %struct.Memory* %loadMem_421af3, %struct.Memory** %MEMORY
  %loadMem_421afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 1
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %1323 = bitcast %union.anon* %1322 to %struct.anon.2*
  %AL.i695 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1323, i32 0, i32 0
  %1324 = load i64, i64* %PC.i694
  %1325 = add i64 %1324, 2
  store i64 %1325, i64* %PC.i694
  store i8 0, i8* %AL.i695, align 1
  store %struct.Memory* %loadMem_421afb, %struct.Memory** %MEMORY
  %loadMem1_421afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %PC.i693
  %1330 = add i64 %1329, -134445
  %1331 = load i64, i64* %PC.i693
  %1332 = add i64 %1331, 5
  %1333 = load i64, i64* %PC.i693
  %1334 = add i64 %1333, 5
  store i64 %1334, i64* %PC.i693
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1336 = load i64, i64* %1335, align 8
  %1337 = add i64 %1336, -8
  %1338 = inttoptr i64 %1337 to i64*
  store i64 %1332, i64* %1338
  store i64 %1337, i64* %1335, align 8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1330, i64* %1339, align 8
  store %struct.Memory* %loadMem1_421afd, %struct.Memory** %MEMORY
  %loadMem2_421afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421afd = load i64, i64* %3
  %1340 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421afd)
  store %struct.Memory* %1340, %struct.Memory** %MEMORY
  %loadMem_421b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 1
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %EAX.i688 = bitcast %union.anon* %1346 to i32*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %RBP.i689
  %1351 = sub i64 %1350, 24652
  %1352 = load i32, i32* %EAX.i688
  %1353 = zext i32 %1352 to i64
  %1354 = load i64, i64* %PC.i687
  %1355 = add i64 %1354, 6
  store i64 %1355, i64* %PC.i687
  %1356 = inttoptr i64 %1351 to i32*
  store i32 %1352, i32* %1356
  store %struct.Memory* %loadMem_421b02, %struct.Memory** %MEMORY
  br label %block_.L_421b08

block_.L_421b08:                                  ; preds = %block_.L_421acd, %block_421aa0
  %loadMem_421b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %PC.i686
  %1361 = add i64 %1360, 147
  %1362 = load i64, i64* %PC.i686
  %1363 = add i64 %1362, 5
  store i64 %1363, i64* %PC.i686
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1361, i64* %1364, align 8
  store %struct.Memory* %loadMem_421b08, %struct.Memory** %MEMORY
  br label %block_.L_421b9b

block_.L_421b0d:                                  ; preds = %block_421a7e, %block_.L_421a65
  %loadMem_421b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 1
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i685
  %1375 = sub i64 %1374, 24640
  %1376 = load i64, i64* %PC.i683
  %1377 = add i64 %1376, 7
  store i64 %1377, i64* %PC.i683
  %1378 = inttoptr i64 %1375 to i64*
  %1379 = load i64, i64* %1378
  store i64 %1379, i64* %RAX.i684, align 8
  store %struct.Memory* %loadMem_421b0d, %struct.Memory** %MEMORY
  %loadMem_421b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %RAX.i682
  %1387 = add i64 %1386, 12
  %1388 = load i64, i64* %PC.i681
  %1389 = add i64 %1388, 4
  store i64 %1389, i64* %PC.i681
  %1390 = inttoptr i64 %1387 to i32*
  %1391 = load i32, i32* %1390
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1392, align 1
  %1393 = and i32 %1391, 255
  %1394 = call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1397, i8* %1398, align 1
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1399, align 1
  %1400 = icmp eq i32 %1391, 0
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1401, i8* %1402, align 1
  %1403 = lshr i32 %1391, 31
  %1404 = trunc i32 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1404, i8* %1405, align 1
  %1406 = lshr i32 %1391, 31
  %1407 = xor i32 %1403, %1406
  %1408 = add i32 %1407, %1406
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1410, i8* %1411, align 1
  store %struct.Memory* %loadMem_421b14, %struct.Memory** %MEMORY
  %loadMem_421b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %PC.i680
  %1416 = add i64 %1415, 59
  %1417 = load i64, i64* %PC.i680
  %1418 = add i64 %1417, 6
  %1419 = load i64, i64* %PC.i680
  %1420 = add i64 %1419, 6
  store i64 %1420, i64* %PC.i680
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1422 = load i8, i8* %1421, align 1
  %1423 = icmp eq i8 %1422, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %BRANCH_TAKEN, align 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1426 = select i1 %1423, i64 %1416, i64 %1418
  store i64 %1426, i64* %1425, align 8
  store %struct.Memory* %loadMem_421b18, %struct.Memory** %MEMORY
  %loadBr_421b18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b18 = icmp eq i8 %loadBr_421b18, 1
  br i1 %cmpBr_421b18, label %block_.L_421b53, label %block_421b1e

block_421b1e:                                     ; preds = %block_.L_421b0d
  %loadMem_421b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 9
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RSI.i679 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %PC.i678
  %1434 = add i64 %1433, 10
  store i64 %1434, i64* %PC.i678
  store i64 ptrtoint (%G__0x429b12_type* @G__0x429b12 to i64), i64* %RSI.i679, align 8
  store %struct.Memory* %loadMem_421b1e, %struct.Memory** %MEMORY
  %loadMem_421b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 11
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RDI.i676 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 15
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RBP.i677
  %1445 = sub i64 %1444, 8
  %1446 = load i64, i64* %PC.i675
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %PC.i675
  %1448 = inttoptr i64 %1445 to i64*
  %1449 = load i64, i64* %1448
  store i64 %1449, i64* %RDI.i676, align 8
  store %struct.Memory* %loadMem_421b28, %struct.Memory** %MEMORY
  %loadMem_421b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 7
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RDX.i673 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i674
  %1460 = sub i64 %1459, 24625
  %1461 = load i64, i64* %PC.i672
  %1462 = add i64 %1461, 7
  store i64 %1462, i64* %PC.i672
  %1463 = inttoptr i64 %1460 to i8*
  %1464 = load i8, i8* %1463
  %1465 = sext i8 %1464 to i64
  %1466 = and i64 %1465, 4294967295
  store i64 %1466, i64* %RDX.i673, align 8
  store %struct.Memory* %loadMem_421b2c, %struct.Memory** %MEMORY
  %loadMem_421b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 5
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 15
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %RBP.i671
  %1477 = sub i64 %1476, 24626
  %1478 = load i64, i64* %PC.i669
  %1479 = add i64 %1478, 7
  store i64 %1479, i64* %PC.i669
  %1480 = inttoptr i64 %1477 to i8*
  %1481 = load i8, i8* %1480
  %1482 = sext i8 %1481 to i64
  %1483 = and i64 %1482, 4294967295
  store i64 %1483, i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_421b33, %struct.Memory** %MEMORY
  %loadMem_421b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 17
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %R8D.i667 = bitcast %union.anon* %1489 to i32*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 15
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1492 to i64*
  %1493 = bitcast i32* %R8D.i667 to i64*
  %1494 = load i64, i64* %RBP.i668
  %1495 = sub i64 %1494, 24620
  %1496 = load i64, i64* %PC.i666
  %1497 = add i64 %1496, 7
  store i64 %1497, i64* %PC.i666
  %1498 = inttoptr i64 %1495 to i32*
  %1499 = load i32, i32* %1498
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %1493, align 8
  store %struct.Memory* %loadMem_421b3a, %struct.Memory** %MEMORY
  %loadMem_421b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 1
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %1507 = bitcast %union.anon* %1506 to %struct.anon.2*
  %AL.i665 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1507, i32 0, i32 0
  %1508 = load i64, i64* %PC.i664
  %1509 = add i64 %1508, 2
  store i64 %1509, i64* %PC.i664
  store i8 0, i8* %AL.i665, align 1
  store %struct.Memory* %loadMem_421b41, %struct.Memory** %MEMORY
  %loadMem1_421b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %PC.i663
  %1514 = add i64 %1513, -134515
  %1515 = load i64, i64* %PC.i663
  %1516 = add i64 %1515, 5
  %1517 = load i64, i64* %PC.i663
  %1518 = add i64 %1517, 5
  store i64 %1518, i64* %PC.i663
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1520 = load i64, i64* %1519, align 8
  %1521 = add i64 %1520, -8
  %1522 = inttoptr i64 %1521 to i64*
  store i64 %1516, i64* %1522
  store i64 %1521, i64* %1519, align 8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1514, i64* %1523, align 8
  store %struct.Memory* %loadMem1_421b43, %struct.Memory** %MEMORY
  %loadMem2_421b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b43 = load i64, i64* %3
  %1524 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421b43)
  store %struct.Memory* %1524, %struct.Memory** %MEMORY
  %loadMem_421b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 1
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %EAX.i658 = bitcast %union.anon* %1530 to i32*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 15
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %RBP.i659
  %1535 = sub i64 %1534, 24656
  %1536 = load i32, i32* %EAX.i658
  %1537 = zext i32 %1536 to i64
  %1538 = load i64, i64* %PC.i657
  %1539 = add i64 %1538, 6
  store i64 %1539, i64* %PC.i657
  %1540 = inttoptr i64 %1535 to i32*
  store i32 %1536, i32* %1540
  store %struct.Memory* %loadMem_421b48, %struct.Memory** %MEMORY
  %loadMem_421b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %PC.i656
  %1545 = add i64 %1544, 72
  %1546 = load i64, i64* %PC.i656
  %1547 = add i64 %1546, 5
  store i64 %1547, i64* %PC.i656
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1545, i64* %1548, align 8
  store %struct.Memory* %loadMem_421b4e, %struct.Memory** %MEMORY
  br label %block_.L_421b96

block_.L_421b53:                                  ; preds = %block_.L_421b0d
  %loadMem_421b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 9
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RSI.i655 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %PC.i654
  %1556 = add i64 %1555, 10
  store i64 %1556, i64* %PC.i654
  store i64 ptrtoint (%G__0x429aed_type* @G__0x429aed to i64), i64* %RSI.i655, align 8
  store %struct.Memory* %loadMem_421b53, %struct.Memory** %MEMORY
  %loadMem_421b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 11
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RDI.i652 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 15
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %RBP.i653
  %1567 = sub i64 %1566, 8
  %1568 = load i64, i64* %PC.i651
  %1569 = add i64 %1568, 4
  store i64 %1569, i64* %PC.i651
  %1570 = inttoptr i64 %1567 to i64*
  %1571 = load i64, i64* %1570
  store i64 %1571, i64* %RDI.i652, align 8
  store %struct.Memory* %loadMem_421b5d, %struct.Memory** %MEMORY
  %loadMem_421b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 7
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %RBP.i650
  %1582 = sub i64 %1581, 24625
  %1583 = load i64, i64* %PC.i648
  %1584 = add i64 %1583, 7
  store i64 %1584, i64* %PC.i648
  %1585 = inttoptr i64 %1582 to i8*
  %1586 = load i8, i8* %1585
  %1587 = sext i8 %1586 to i64
  %1588 = and i64 %1587, 4294967295
  store i64 %1588, i64* %RDX.i649, align 8
  store %struct.Memory* %loadMem_421b61, %struct.Memory** %MEMORY
  %loadMem_421b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 5
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 15
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %RBP.i647
  %1599 = sub i64 %1598, 24626
  %1600 = load i64, i64* %PC.i645
  %1601 = add i64 %1600, 7
  store i64 %1601, i64* %PC.i645
  %1602 = inttoptr i64 %1599 to i8*
  %1603 = load i8, i8* %1602
  %1604 = sext i8 %1603 to i64
  %1605 = and i64 %1604, 4294967295
  store i64 %1605, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_421b68, %struct.Memory** %MEMORY
  %loadMem_421b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 17
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %R8D.i643 = bitcast %union.anon* %1611 to i32*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 15
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %1614 to i64*
  %1615 = bitcast i32* %R8D.i643 to i64*
  %1616 = load i64, i64* %RBP.i644
  %1617 = sub i64 %1616, 24620
  %1618 = load i64, i64* %PC.i642
  %1619 = add i64 %1618, 7
  store i64 %1619, i64* %PC.i642
  %1620 = inttoptr i64 %1617 to i32*
  %1621 = load i32, i32* %1620
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %1615, align 8
  store %struct.Memory* %loadMem_421b6f, %struct.Memory** %MEMORY
  %loadMem_421b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 1
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 15
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %RBP.i641
  %1633 = sub i64 %1632, 24640
  %1634 = load i64, i64* %PC.i639
  %1635 = add i64 %1634, 7
  store i64 %1635, i64* %PC.i639
  %1636 = inttoptr i64 %1633 to i64*
  %1637 = load i64, i64* %1636
  store i64 %1637, i64* %RAX.i640, align 8
  store %struct.Memory* %loadMem_421b76, %struct.Memory** %MEMORY
  %loadMem_421b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 19
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %R9.i638 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RAX.i637
  %1648 = add i64 %1647, 12
  %1649 = load i64, i64* %PC.i636
  %1650 = add i64 %1649, 4
  store i64 %1650, i64* %PC.i636
  %1651 = inttoptr i64 %1648 to i32*
  %1652 = load i32, i32* %1651
  %1653 = sext i32 %1652 to i64
  store i64 %1653, i64* %R9.i638, align 8
  store %struct.Memory* %loadMem_421b7d, %struct.Memory** %MEMORY
  %loadMem_421b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 19
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %R9D.i635 = bitcast %union.anon* %1659 to i32*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 19
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1662 to i64*
  %1663 = bitcast i32* %R9D.i635 to i64*
  %1664 = load i64, i64* %R9.i
  %1665 = mul i64 %1664, 4
  %1666 = add i64 %1665, 4357664
  %1667 = load i64, i64* %PC.i634
  %1668 = add i64 %1667, 8
  store i64 %1668, i64* %PC.i634
  %1669 = inttoptr i64 %1666 to i32*
  %1670 = load i32, i32* %1669
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %1663, align 8
  store %struct.Memory* %loadMem_421b81, %struct.Memory** %MEMORY
  %loadMem_421b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 1
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %1678 = bitcast %union.anon* %1677 to %struct.anon.2*
  %AL.i633 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1678, i32 0, i32 0
  %1679 = load i64, i64* %PC.i632
  %1680 = add i64 %1679, 2
  store i64 %1680, i64* %PC.i632
  store i8 0, i8* %AL.i633, align 1
  store %struct.Memory* %loadMem_421b89, %struct.Memory** %MEMORY
  %loadMem1_421b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %PC.i631
  %1685 = add i64 %1684, -134587
  %1686 = load i64, i64* %PC.i631
  %1687 = add i64 %1686, 5
  %1688 = load i64, i64* %PC.i631
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %PC.i631
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1691 = load i64, i64* %1690, align 8
  %1692 = add i64 %1691, -8
  %1693 = inttoptr i64 %1692 to i64*
  store i64 %1687, i64* %1693
  store i64 %1692, i64* %1690, align 8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1685, i64* %1694, align 8
  store %struct.Memory* %loadMem1_421b8b, %struct.Memory** %MEMORY
  %loadMem2_421b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b8b = load i64, i64* %3
  %1695 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421b8b)
  store %struct.Memory* %1695, %struct.Memory** %MEMORY
  %loadMem_421b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 1
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %EAX.i626 = bitcast %union.anon* %1701 to i32*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RBP.i627
  %1706 = sub i64 %1705, 24660
  %1707 = load i32, i32* %EAX.i626
  %1708 = zext i32 %1707 to i64
  %1709 = load i64, i64* %PC.i625
  %1710 = add i64 %1709, 6
  store i64 %1710, i64* %PC.i625
  %1711 = inttoptr i64 %1706 to i32*
  store i32 %1707, i32* %1711
  store %struct.Memory* %loadMem_421b90, %struct.Memory** %MEMORY
  br label %block_.L_421b96

block_.L_421b96:                                  ; preds = %block_.L_421b53, %block_421b1e
  %loadMem_421b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %PC.i624
  %1716 = add i64 %1715, 5
  %1717 = load i64, i64* %PC.i624
  %1718 = add i64 %1717, 5
  store i64 %1718, i64* %PC.i624
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1716, i64* %1719, align 8
  store %struct.Memory* %loadMem_421b96, %struct.Memory** %MEMORY
  br label %block_.L_421b9b

block_.L_421b9b:                                  ; preds = %block_.L_421b96, %block_.L_421b08
  %loadMem_421b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %PC.i623
  %1724 = add i64 %1723, 1107
  %1725 = load i64, i64* %PC.i623
  %1726 = add i64 %1725, 5
  store i64 %1726, i64* %PC.i623
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1724, i64* %1727, align 8
  store %struct.Memory* %loadMem_421b9b, %struct.Memory** %MEMORY
  br label %block_.L_421fee

block_.L_421ba0:                                  ; preds = %block_421a4d
  %loadMem_421ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 1
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 15
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1736 to i64*
  %1737 = load i64, i64* %RBP.i622
  %1738 = sub i64 %1737, 24640
  %1739 = load i64, i64* %PC.i620
  %1740 = add i64 %1739, 7
  store i64 %1740, i64* %PC.i620
  %1741 = inttoptr i64 %1738 to i64*
  %1742 = load i64, i64* %1741
  store i64 %1742, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_421ba0, %struct.Memory** %MEMORY
  %loadMem_421ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 1
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RAX.i619
  %1750 = add i64 %1749, 16
  %1751 = load i64, i64* %PC.i618
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC.i618
  %1753 = inttoptr i64 %1750 to i32*
  %1754 = load i32, i32* %1753
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1755, align 1
  %1756 = and i32 %1754, 255
  %1757 = call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1760, i8* %1761, align 1
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1762, align 1
  %1763 = icmp eq i32 %1754, 0
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1764, i8* %1765, align 1
  %1766 = lshr i32 %1754, 31
  %1767 = trunc i32 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1767, i8* %1768, align 1
  %1769 = lshr i32 %1754, 31
  %1770 = xor i32 %1766, %1769
  %1771 = add i32 %1770, %1769
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1773, i8* %1774, align 1
  store %struct.Memory* %loadMem_421ba7, %struct.Memory** %MEMORY
  %loadMem_421bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %PC.i617
  %1779 = add i64 %1778, 104
  %1780 = load i64, i64* %PC.i617
  %1781 = add i64 %1780, 6
  %1782 = load i64, i64* %PC.i617
  %1783 = add i64 %1782, 6
  store i64 %1783, i64* %PC.i617
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1785 = load i8, i8* %1784, align 1
  store i8 %1785, i8* %BRANCH_TAKEN, align 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1787 = icmp ne i8 %1785, 0
  %1788 = select i1 %1787, i64 %1779, i64 %1781
  store i64 %1788, i64* %1786, align 8
  store %struct.Memory* %loadMem_421bab, %struct.Memory** %MEMORY
  %loadBr_421bab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bab = icmp eq i8 %loadBr_421bab, 1
  br i1 %cmpBr_421bab, label %block_.L_421c13, label %block_421bb1

block_421bb1:                                     ; preds = %block_.L_421ba0
  %loadMem_421bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 1
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 15
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RBP.i616
  %1799 = sub i64 %1798, 24640
  %1800 = load i64, i64* %PC.i614
  %1801 = add i64 %1800, 7
  store i64 %1801, i64* %PC.i614
  %1802 = inttoptr i64 %1799 to i64*
  %1803 = load i64, i64* %1802
  store i64 %1803, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_421bb1, %struct.Memory** %MEMORY
  %loadMem_421bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 1
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %1809 to i64*
  %1810 = load i64, i64* %RAX.i613
  %1811 = add i64 %1810, 16
  %1812 = load i64, i64* %PC.i612
  %1813 = add i64 %1812, 4
  store i64 %1813, i64* %PC.i612
  %1814 = inttoptr i64 %1811 to i32*
  %1815 = load i32, i32* %1814
  %1816 = sub i32 %1815, 1
  %1817 = icmp ult i32 %1815, 1
  %1818 = zext i1 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1818, i8* %1819, align 1
  %1820 = and i32 %1816, 255
  %1821 = call i32 @llvm.ctpop.i32(i32 %1820)
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1824, i8* %1825, align 1
  %1826 = xor i32 %1815, 1
  %1827 = xor i32 %1826, %1816
  %1828 = lshr i32 %1827, 4
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1830, i8* %1831, align 1
  %1832 = icmp eq i32 %1816, 0
  %1833 = zext i1 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1833, i8* %1834, align 1
  %1835 = lshr i32 %1816, 31
  %1836 = trunc i32 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1836, i8* %1837, align 1
  %1838 = lshr i32 %1815, 31
  %1839 = xor i32 %1835, %1838
  %1840 = add i32 %1839, %1838
  %1841 = icmp eq i32 %1840, 2
  %1842 = zext i1 %1841 to i8
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1842, i8* %1843, align 1
  store %struct.Memory* %loadMem_421bb8, %struct.Memory** %MEMORY
  %loadMem_421bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1846 to i64*
  %1847 = load i64, i64* %PC.i611
  %1848 = add i64 %1847, 23
  %1849 = load i64, i64* %PC.i611
  %1850 = add i64 %1849, 6
  %1851 = load i64, i64* %PC.i611
  %1852 = add i64 %1851, 6
  store i64 %1852, i64* %PC.i611
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1854 = load i8, i8* %1853, align 1
  store i8 %1854, i8* %BRANCH_TAKEN, align 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1856 = icmp ne i8 %1854, 0
  %1857 = select i1 %1856, i64 %1848, i64 %1850
  store i64 %1857, i64* %1855, align 8
  store %struct.Memory* %loadMem_421bbc, %struct.Memory** %MEMORY
  %loadBr_421bbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bbc = icmp eq i8 %loadBr_421bbc, 1
  br i1 %cmpBr_421bbc, label %block_.L_421bd3, label %block_421bc2

block_421bc2:                                     ; preds = %block_421bb1
  %loadMem_421bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 1
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 15
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %1866 to i64*
  %1867 = load i64, i64* %RBP.i610
  %1868 = sub i64 %1867, 24640
  %1869 = load i64, i64* %PC.i608
  %1870 = add i64 %1869, 7
  store i64 %1870, i64* %PC.i608
  %1871 = inttoptr i64 %1868 to i64*
  %1872 = load i64, i64* %1871
  store i64 %1872, i64* %RAX.i609, align 8
  store %struct.Memory* %loadMem_421bc2, %struct.Memory** %MEMORY
  %loadMem_421bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 33
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 1
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %RAX.i607
  %1880 = add i64 %1879, 16
  %1881 = load i64, i64* %PC.i606
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i606
  %1883 = inttoptr i64 %1880 to i32*
  %1884 = load i32, i32* %1883
  %1885 = sub i32 %1884, 3
  %1886 = icmp ult i32 %1884, 3
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1887, i8* %1888, align 1
  %1889 = and i32 %1885, 255
  %1890 = call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1893, i8* %1894, align 1
  %1895 = xor i32 %1884, 3
  %1896 = xor i32 %1895, %1885
  %1897 = lshr i32 %1896, 4
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1899, i8* %1900, align 1
  %1901 = icmp eq i32 %1885, 0
  %1902 = zext i1 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1902, i8* %1903, align 1
  %1904 = lshr i32 %1885, 31
  %1905 = trunc i32 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1905, i8* %1906, align 1
  %1907 = lshr i32 %1884, 31
  %1908 = xor i32 %1904, %1907
  %1909 = add i32 %1908, %1907
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1911, i8* %1912, align 1
  store %struct.Memory* %loadMem_421bc9, %struct.Memory** %MEMORY
  %loadMem_421bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %PC.i605
  %1917 = add i64 %1916, 38
  %1918 = load i64, i64* %PC.i605
  %1919 = add i64 %1918, 6
  %1920 = load i64, i64* %PC.i605
  %1921 = add i64 %1920, 6
  store i64 %1921, i64* %PC.i605
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1923 = load i8, i8* %1922, align 1
  %1924 = icmp eq i8 %1923, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %BRANCH_TAKEN, align 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1927 = select i1 %1924, i64 %1917, i64 %1919
  store i64 %1927, i64* %1926, align 8
  store %struct.Memory* %loadMem_421bcd, %struct.Memory** %MEMORY
  %loadBr_421bcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bcd = icmp eq i8 %loadBr_421bcd, 1
  br i1 %cmpBr_421bcd, label %block_.L_421bf3, label %block_.L_421bd3

block_.L_421bd3:                                  ; preds = %block_421bc2, %block_421bb1
  %loadMem_421bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 9
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RSI.i604 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %PC.i603
  %1935 = add i64 %1934, 10
  store i64 %1935, i64* %PC.i603
  store i64 ptrtoint (%G__0x429afa_type* @G__0x429afa to i64), i64* %RSI.i604, align 8
  store %struct.Memory* %loadMem_421bd3, %struct.Memory** %MEMORY
  %loadMem_421bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 33
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 11
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RDI.i601 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 15
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %1944 to i64*
  %1945 = load i64, i64* %RBP.i602
  %1946 = sub i64 %1945, 8
  %1947 = load i64, i64* %PC.i600
  %1948 = add i64 %1947, 4
  store i64 %1948, i64* %PC.i600
  %1949 = inttoptr i64 %1946 to i64*
  %1950 = load i64, i64* %1949
  store i64 %1950, i64* %RDI.i601, align 8
  store %struct.Memory* %loadMem_421bdd, %struct.Memory** %MEMORY
  %loadMem_421be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 1
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %1957 = bitcast %union.anon* %1956 to %struct.anon.2*
  %AL.i599 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1957, i32 0, i32 0
  %1958 = load i64, i64* %PC.i598
  %1959 = add i64 %1958, 2
  store i64 %1959, i64* %PC.i598
  store i8 0, i8* %AL.i599, align 1
  store %struct.Memory* %loadMem_421be1, %struct.Memory** %MEMORY
  %loadMem1_421be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %PC.i597
  %1964 = add i64 %1963, -134675
  %1965 = load i64, i64* %PC.i597
  %1966 = add i64 %1965, 5
  %1967 = load i64, i64* %PC.i597
  %1968 = add i64 %1967, 5
  store i64 %1968, i64* %PC.i597
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1970 = load i64, i64* %1969, align 8
  %1971 = add i64 %1970, -8
  %1972 = inttoptr i64 %1971 to i64*
  store i64 %1966, i64* %1972
  store i64 %1971, i64* %1969, align 8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1964, i64* %1973, align 8
  store %struct.Memory* %loadMem1_421be3, %struct.Memory** %MEMORY
  %loadMem2_421be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421be3 = load i64, i64* %3
  %1974 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421be3)
  store %struct.Memory* %1974, %struct.Memory** %MEMORY
  %loadMem_421be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 1
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %EAX.i593 = bitcast %union.anon* %1980 to i32*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 15
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RBP.i594
  %1985 = sub i64 %1984, 24664
  %1986 = load i32, i32* %EAX.i593
  %1987 = zext i32 %1986 to i64
  %1988 = load i64, i64* %PC.i592
  %1989 = add i64 %1988, 6
  store i64 %1989, i64* %PC.i592
  %1990 = inttoptr i64 %1985 to i32*
  store i32 %1986, i32* %1990
  store %struct.Memory* %loadMem_421be8, %struct.Memory** %MEMORY
  %loadMem_421bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %PC.i591
  %1995 = add i64 %1994, 32
  %1996 = load i64, i64* %PC.i591
  %1997 = add i64 %1996, 5
  store i64 %1997, i64* %PC.i591
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1995, i64* %1998, align 8
  store %struct.Memory* %loadMem_421bee, %struct.Memory** %MEMORY
  br label %block_.L_421c0e

block_.L_421bf3:                                  ; preds = %block_421bc2
  %loadMem_421bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 9
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RSI.i590 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %PC.i589
  %2006 = add i64 %2005, 10
  store i64 %2006, i64* %PC.i589
  store i64 ptrtoint (%G__0x429af8_type* @G__0x429af8 to i64), i64* %RSI.i590, align 8
  store %struct.Memory* %loadMem_421bf3, %struct.Memory** %MEMORY
  %loadMem_421bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 11
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RDI.i587 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i588
  %2017 = sub i64 %2016, 8
  %2018 = load i64, i64* %PC.i586
  %2019 = add i64 %2018, 4
  store i64 %2019, i64* %PC.i586
  %2020 = inttoptr i64 %2017 to i64*
  %2021 = load i64, i64* %2020
  store i64 %2021, i64* %RDI.i587, align 8
  store %struct.Memory* %loadMem_421bfd, %struct.Memory** %MEMORY
  %loadMem_421c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %2028 = bitcast %union.anon* %2027 to %struct.anon.2*
  %AL.i585 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2028, i32 0, i32 0
  %2029 = load i64, i64* %PC.i584
  %2030 = add i64 %2029, 2
  store i64 %2030, i64* %PC.i584
  store i8 0, i8* %AL.i585, align 1
  store %struct.Memory* %loadMem_421c01, %struct.Memory** %MEMORY
  %loadMem1_421c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %PC.i583
  %2035 = add i64 %2034, -134707
  %2036 = load i64, i64* %PC.i583
  %2037 = add i64 %2036, 5
  %2038 = load i64, i64* %PC.i583
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i583
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2041 = load i64, i64* %2040, align 8
  %2042 = add i64 %2041, -8
  %2043 = inttoptr i64 %2042 to i64*
  store i64 %2037, i64* %2043
  store i64 %2042, i64* %2040, align 8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2035, i64* %2044, align 8
  store %struct.Memory* %loadMem1_421c03, %struct.Memory** %MEMORY
  %loadMem2_421c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c03 = load i64, i64* %3
  %2045 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421c03)
  store %struct.Memory* %2045, %struct.Memory** %MEMORY
  %loadMem_421c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 1
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %2051 to i32*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 15
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RBP.i579
  %2056 = sub i64 %2055, 24668
  %2057 = load i32, i32* %EAX.i578
  %2058 = zext i32 %2057 to i64
  %2059 = load i64, i64* %PC.i577
  %2060 = add i64 %2059, 6
  store i64 %2060, i64* %PC.i577
  %2061 = inttoptr i64 %2056 to i32*
  store i32 %2057, i32* %2061
  store %struct.Memory* %loadMem_421c08, %struct.Memory** %MEMORY
  br label %block_.L_421c0e

block_.L_421c0e:                                  ; preds = %block_.L_421bf3, %block_.L_421bd3
  %loadMem_421c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %PC.i576
  %2066 = add i64 %2065, 987
  %2067 = load i64, i64* %PC.i576
  %2068 = add i64 %2067, 5
  store i64 %2068, i64* %PC.i576
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2066, i64* %2069, align 8
  store %struct.Memory* %loadMem_421c0e, %struct.Memory** %MEMORY
  br label %block_.L_421fe9

block_.L_421c13:                                  ; preds = %block_.L_421ba0
  %loadMem_421c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 11
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RDI.i574 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 15
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2078 to i64*
  %2079 = load i64, i64* %RBP.i575
  %2080 = sub i64 %2079, 12304
  %2081 = load i64, i64* %PC.i573
  %2082 = add i64 %2081, 7
  store i64 %2082, i64* %PC.i573
  store i64 %2080, i64* %RDI.i574, align 8
  store %struct.Memory* %loadMem_421c13, %struct.Memory** %MEMORY
  %loadMem_421c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 15
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %RBP.i572
  %2090 = sub i64 %2089, 24608
  %2091 = load i64, i64* %PC.i571
  %2092 = add i64 %2091, 10
  store i64 %2092, i64* %PC.i571
  %2093 = inttoptr i64 %2090 to i32*
  store i32 -1, i32* %2093
  store %struct.Memory* %loadMem_421c1a, %struct.Memory** %MEMORY
  %loadMem_421c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 15
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RBP.i570
  %2101 = sub i64 %2100, 24600
  %2102 = load i64, i64* %PC.i569
  %2103 = add i64 %2102, 10
  store i64 %2103, i64* %PC.i569
  %2104 = inttoptr i64 %2101 to i32*
  store i32 0, i32* %2104
  store %struct.Memory* %loadMem_421c24, %struct.Memory** %MEMORY
  %loadMem1_421c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2107 to i64*
  %2108 = load i64, i64* %PC.i568
  %2109 = add i64 %2108, -105982
  %2110 = load i64, i64* %PC.i568
  %2111 = add i64 %2110, 5
  %2112 = load i64, i64* %PC.i568
  %2113 = add i64 %2112, 5
  store i64 %2113, i64* %PC.i568
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2115 = load i64, i64* %2114, align 8
  %2116 = add i64 %2115, -8
  %2117 = inttoptr i64 %2116 to i64*
  store i64 %2111, i64* %2117
  store i64 %2116, i64* %2114, align 8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2109, i64* %2118, align 8
  store %struct.Memory* %loadMem1_421c2e, %struct.Memory** %MEMORY
  %loadMem2_421c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c2e = load i64, i64* %3
  %call2_421c2e = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64 %loadPC_421c2e, %struct.Memory* %loadMem2_421c2e)
  store %struct.Memory* %call2_421c2e, %struct.Memory** %MEMORY
  %loadMem_421c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 1
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %PC.i566
  %2126 = add i64 %2125, 7
  store i64 %2126, i64* %PC.i566
  %2127 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*)
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_421c33, %struct.Memory** %MEMORY
  %loadMem_421c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 1
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %EAX.i564 = bitcast %union.anon* %2134 to i32*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i565
  %2139 = sub i64 %2138, 24600
  %2140 = load i32, i32* %EAX.i564
  %2141 = zext i32 %2140 to i64
  %2142 = load i64, i64* %PC.i563
  %2143 = add i64 %2142, 6
  store i64 %2143, i64* %PC.i563
  %2144 = inttoptr i64 %2139 to i32*
  store i32 %2140, i32* %2144
  store %struct.Memory* %loadMem_421c3a, %struct.Memory** %MEMORY
  %loadMem1_421c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %PC.i562
  %2149 = add i64 %2148, -99168
  %2150 = load i64, i64* %PC.i562
  %2151 = add i64 %2150, 5
  %2152 = load i64, i64* %PC.i562
  %2153 = add i64 %2152, 5
  store i64 %2153, i64* %PC.i562
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2155 = load i64, i64* %2154, align 8
  %2156 = add i64 %2155, -8
  %2157 = inttoptr i64 %2156 to i64*
  store i64 %2151, i64* %2157
  store i64 %2156, i64* %2154, align 8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2149, i64* %2158, align 8
  store %struct.Memory* %loadMem1_421c40, %struct.Memory** %MEMORY
  %loadMem2_421c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c40 = load i64, i64* %3
  %call2_421c40 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64 %loadPC_421c40, %struct.Memory* %loadMem2_421c40)
  store %struct.Memory* %call2_421c40, %struct.Memory** %MEMORY
  %loadMem_421c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 1
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %2164 to i32*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 15
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RBP.i561
  %2169 = sub i64 %2168, 24632
  %2170 = load i32, i32* %EAX.i560
  %2171 = zext i32 %2170 to i64
  %2172 = load i64, i64* %PC.i559
  %2173 = add i64 %2172, 6
  store i64 %2173, i64* %PC.i559
  %2174 = inttoptr i64 %2169 to i32*
  store i32 %2170, i32* %2174
  store %struct.Memory* %loadMem_421c45, %struct.Memory** %MEMORY
  %loadMem_421c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 15
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RBP.i558
  %2182 = sub i64 %2181, 24596
  %2183 = load i64, i64* %PC.i557
  %2184 = add i64 %2183, 10
  store i64 %2184, i64* %PC.i557
  %2185 = inttoptr i64 %2182 to i32*
  store i32 0, i32* %2185
  store %struct.Memory* %loadMem_421c4b, %struct.Memory** %MEMORY
  br label %block_.L_421c55

block_.L_421c55:                                  ; preds = %block_.L_421d58, %block_.L_421c13
  %loadMem_421c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 1
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 15
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %RBP.i556
  %2196 = sub i64 %2195, 24596
  %2197 = load i64, i64* %PC.i554
  %2198 = add i64 %2197, 6
  store i64 %2198, i64* %PC.i554
  %2199 = inttoptr i64 %2196 to i32*
  %2200 = load i32, i32* %2199
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_421c55, %struct.Memory** %MEMORY
  %loadMem_421c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 1
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %EAX.i552 = bitcast %union.anon* %2207 to i32*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 15
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2210 to i64*
  %2211 = load i32, i32* %EAX.i552
  %2212 = zext i32 %2211 to i64
  %2213 = load i64, i64* %RBP.i553
  %2214 = sub i64 %2213, 24600
  %2215 = load i64, i64* %PC.i551
  %2216 = add i64 %2215, 6
  store i64 %2216, i64* %PC.i551
  %2217 = inttoptr i64 %2214 to i32*
  %2218 = load i32, i32* %2217
  %2219 = sub i32 %2211, %2218
  %2220 = icmp ult i32 %2211, %2218
  %2221 = zext i1 %2220 to i8
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2221, i8* %2222, align 1
  %2223 = and i32 %2219, 255
  %2224 = call i32 @llvm.ctpop.i32(i32 %2223)
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  %2227 = xor i8 %2226, 1
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2227, i8* %2228, align 1
  %2229 = xor i32 %2218, %2211
  %2230 = xor i32 %2229, %2219
  %2231 = lshr i32 %2230, 4
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2233, i8* %2234, align 1
  %2235 = icmp eq i32 %2219, 0
  %2236 = zext i1 %2235 to i8
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2236, i8* %2237, align 1
  %2238 = lshr i32 %2219, 31
  %2239 = trunc i32 %2238 to i8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2239, i8* %2240, align 1
  %2241 = lshr i32 %2211, 31
  %2242 = lshr i32 %2218, 31
  %2243 = xor i32 %2242, %2241
  %2244 = xor i32 %2238, %2241
  %2245 = add i32 %2244, %2243
  %2246 = icmp eq i32 %2245, 2
  %2247 = zext i1 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2247, i8* %2248, align 1
  store %struct.Memory* %loadMem_421c5b, %struct.Memory** %MEMORY
  %loadMem_421c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %PC.i550
  %2253 = add i64 %2252, 267
  %2254 = load i64, i64* %PC.i550
  %2255 = add i64 %2254, 6
  %2256 = load i64, i64* %PC.i550
  %2257 = add i64 %2256, 6
  store i64 %2257, i64* %PC.i550
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2259 = load i8, i8* %2258, align 1
  %2260 = icmp ne i8 %2259, 0
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2262 = load i8, i8* %2261, align 1
  %2263 = icmp ne i8 %2262, 0
  %2264 = xor i1 %2260, %2263
  %2265 = xor i1 %2264, true
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %BRANCH_TAKEN, align 1
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2268 = select i1 %2264, i64 %2255, i64 %2253
  store i64 %2268, i64* %2267, align 8
  store %struct.Memory* %loadMem_421c61, %struct.Memory** %MEMORY
  %loadBr_421c61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c61 = icmp eq i8 %loadBr_421c61, 1
  br i1 %cmpBr_421c61, label %block_.L_421d6c, label %block_421c67

block_421c67:                                     ; preds = %block_.L_421c55
  %loadMem_421c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 1
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 15
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %RBP.i549
  %2279 = sub i64 %2278, 12304
  %2280 = load i64, i64* %PC.i547
  %2281 = add i64 %2280, 7
  store i64 %2281, i64* %PC.i547
  store i64 %2279, i64* %RAX.i548, align 8
  store %struct.Memory* %loadMem_421c67, %struct.Memory** %MEMORY
  %loadMem_421c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 5
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 15
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %RBP.i546
  %2292 = sub i64 %2291, 24596
  %2293 = load i64, i64* %PC.i544
  %2294 = add i64 %2293, 7
  store i64 %2294, i64* %PC.i544
  %2295 = inttoptr i64 %2292 to i32*
  %2296 = load i32, i32* %2295
  %2297 = sext i32 %2296 to i64
  store i64 %2297, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_421c6e, %struct.Memory** %MEMORY
  %loadMem_421c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 5
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %RCX.i543
  %2305 = load i64, i64* %PC.i542
  %2306 = add i64 %2305, 4
  store i64 %2306, i64* %PC.i542
  %2307 = sext i64 %2304 to i128
  %2308 = and i128 %2307, -18446744073709551616
  %2309 = zext i64 %2304 to i128
  %2310 = or i128 %2308, %2309
  %2311 = mul i128 24, %2310
  %2312 = trunc i128 %2311 to i64
  store i64 %2312, i64* %RCX.i543, align 8
  %2313 = sext i64 %2312 to i128
  %2314 = icmp ne i128 %2313, %2311
  %2315 = zext i1 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2315, i8* %2316, align 1
  %2317 = trunc i128 %2311 to i32
  %2318 = and i32 %2317, 255
  %2319 = call i32 @llvm.ctpop.i32(i32 %2318)
  %2320 = trunc i32 %2319 to i8
  %2321 = and i8 %2320, 1
  %2322 = xor i8 %2321, 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2322, i8* %2323, align 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2324, align 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2325, align 1
  %2326 = lshr i64 %2312, 63
  %2327 = trunc i64 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2327, i8* %2328, align 1
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2315, i8* %2329, align 1
  store %struct.Memory* %loadMem_421c75, %struct.Memory** %MEMORY
  %loadMem_421c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 1
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 5
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RAX.i540
  %2340 = load i64, i64* %RCX.i541
  %2341 = load i64, i64* %PC.i539
  %2342 = add i64 %2341, 3
  store i64 %2342, i64* %PC.i539
  %2343 = add i64 %2340, %2339
  store i64 %2343, i64* %RAX.i540, align 8
  %2344 = icmp ult i64 %2343, %2339
  %2345 = icmp ult i64 %2343, %2340
  %2346 = or i1 %2344, %2345
  %2347 = zext i1 %2346 to i8
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2347, i8* %2348, align 1
  %2349 = trunc i64 %2343 to i32
  %2350 = and i32 %2349, 255
  %2351 = call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2354, i8* %2355, align 1
  %2356 = xor i64 %2340, %2339
  %2357 = xor i64 %2356, %2343
  %2358 = lshr i64 %2357, 4
  %2359 = trunc i64 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2360, i8* %2361, align 1
  %2362 = icmp eq i64 %2343, 0
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2363, i8* %2364, align 1
  %2365 = lshr i64 %2343, 63
  %2366 = trunc i64 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2366, i8* %2367, align 1
  %2368 = lshr i64 %2339, 63
  %2369 = lshr i64 %2340, 63
  %2370 = xor i64 %2365, %2368
  %2371 = xor i64 %2365, %2369
  %2372 = add i64 %2370, %2371
  %2373 = icmp eq i64 %2372, 2
  %2374 = zext i1 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2374, i8* %2375, align 1
  store %struct.Memory* %loadMem_421c79, %struct.Memory** %MEMORY
  %loadMem_421c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 1
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 7
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RDX.i538 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %RAX.i537
  %2386 = add i64 %2385, 4
  %2387 = load i64, i64* %PC.i536
  %2388 = add i64 %2387, 3
  store i64 %2388, i64* %PC.i536
  %2389 = inttoptr i64 %2386 to i32*
  %2390 = load i32, i32* %2389
  %2391 = zext i32 %2390 to i64
  store i64 %2391, i64* %RDX.i538, align 8
  store %struct.Memory* %loadMem_421c7c, %struct.Memory** %MEMORY
  %loadMem_421c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 1
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 15
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %RBP.i535
  %2402 = sub i64 %2401, 24640
  %2403 = load i64, i64* %PC.i533
  %2404 = add i64 %2403, 7
  store i64 %2404, i64* %PC.i533
  %2405 = inttoptr i64 %2402 to i64*
  %2406 = load i64, i64* %2405
  store i64 %2406, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_421c7f, %struct.Memory** %MEMORY
  %loadMem_421c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 7
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %EDX.i531 = bitcast %union.anon* %2412 to i32*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 1
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %2415 to i64*
  %2416 = load i32, i32* %EDX.i531
  %2417 = zext i32 %2416 to i64
  %2418 = load i64, i64* %RAX.i532
  %2419 = add i64 %2418, 4
  %2420 = load i64, i64* %PC.i530
  %2421 = add i64 %2420, 3
  store i64 %2421, i64* %PC.i530
  %2422 = inttoptr i64 %2419 to i32*
  %2423 = load i32, i32* %2422
  %2424 = sub i32 %2416, %2423
  %2425 = icmp ult i32 %2416, %2423
  %2426 = zext i1 %2425 to i8
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2426, i8* %2427, align 1
  %2428 = and i32 %2424, 255
  %2429 = call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2432, i8* %2433, align 1
  %2434 = xor i32 %2423, %2416
  %2435 = xor i32 %2434, %2424
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2438, i8* %2439, align 1
  %2440 = icmp eq i32 %2424, 0
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2441, i8* %2442, align 1
  %2443 = lshr i32 %2424, 31
  %2444 = trunc i32 %2443 to i8
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2444, i8* %2445, align 1
  %2446 = lshr i32 %2416, 31
  %2447 = lshr i32 %2423, 31
  %2448 = xor i32 %2447, %2446
  %2449 = xor i32 %2443, %2446
  %2450 = add i32 %2449, %2448
  %2451 = icmp eq i32 %2450, 2
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2452, i8* %2453, align 1
  store %struct.Memory* %loadMem_421c86, %struct.Memory** %MEMORY
  %loadMem_421c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %PC.i529
  %2458 = add i64 %2457, 202
  %2459 = load i64, i64* %PC.i529
  %2460 = add i64 %2459, 6
  %2461 = load i64, i64* %PC.i529
  %2462 = add i64 %2461, 6
  store i64 %2462, i64* %PC.i529
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2464 = load i8, i8* %2463, align 1
  %2465 = icmp eq i8 %2464, 0
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %BRANCH_TAKEN, align 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2468 = select i1 %2465, i64 %2458, i64 %2460
  store i64 %2468, i64* %2467, align 8
  store %struct.Memory* %loadMem_421c89, %struct.Memory** %MEMORY
  %loadBr_421c89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c89 = icmp eq i8 %loadBr_421c89, 1
  br i1 %cmpBr_421c89, label %block_.L_421d53, label %block_421c8f

block_421c8f:                                     ; preds = %block_421c67
  %loadMem_421c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 1
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RBP.i528
  %2479 = sub i64 %2478, 12304
  %2480 = load i64, i64* %PC.i526
  %2481 = add i64 %2480, 7
  store i64 %2481, i64* %PC.i526
  store i64 %2479, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_421c8f, %struct.Memory** %MEMORY
  %loadMem_421c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 5
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i525
  %2492 = sub i64 %2491, 24596
  %2493 = load i64, i64* %PC.i523
  %2494 = add i64 %2493, 7
  store i64 %2494, i64* %PC.i523
  %2495 = inttoptr i64 %2492 to i32*
  %2496 = load i32, i32* %2495
  %2497 = sext i32 %2496 to i64
  store i64 %2497, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_421c96, %struct.Memory** %MEMORY
  %loadMem_421c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 5
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RCX.i522
  %2505 = load i64, i64* %PC.i521
  %2506 = add i64 %2505, 4
  store i64 %2506, i64* %PC.i521
  %2507 = sext i64 %2504 to i128
  %2508 = and i128 %2507, -18446744073709551616
  %2509 = zext i64 %2504 to i128
  %2510 = or i128 %2508, %2509
  %2511 = mul i128 24, %2510
  %2512 = trunc i128 %2511 to i64
  store i64 %2512, i64* %RCX.i522, align 8
  %2513 = sext i64 %2512 to i128
  %2514 = icmp ne i128 %2513, %2511
  %2515 = zext i1 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2515, i8* %2516, align 1
  %2517 = trunc i128 %2511 to i32
  %2518 = and i32 %2517, 255
  %2519 = call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2522, i8* %2523, align 1
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2524, align 1
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2525, align 1
  %2526 = lshr i64 %2512, 63
  %2527 = trunc i64 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2527, i8* %2528, align 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2515, i8* %2529, align 1
  store %struct.Memory* %loadMem_421c9d, %struct.Memory** %MEMORY
  %loadMem_421ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 1
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 5
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %RAX.i519
  %2540 = load i64, i64* %RCX.i520
  %2541 = load i64, i64* %PC.i518
  %2542 = add i64 %2541, 3
  store i64 %2542, i64* %PC.i518
  %2543 = add i64 %2540, %2539
  store i64 %2543, i64* %RAX.i519, align 8
  %2544 = icmp ult i64 %2543, %2539
  %2545 = icmp ult i64 %2543, %2540
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2547, i8* %2548, align 1
  %2549 = trunc i64 %2543 to i32
  %2550 = and i32 %2549, 255
  %2551 = call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2554, i8* %2555, align 1
  %2556 = xor i64 %2540, %2539
  %2557 = xor i64 %2556, %2543
  %2558 = lshr i64 %2557, 4
  %2559 = trunc i64 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2560, i8* %2561, align 1
  %2562 = icmp eq i64 %2543, 0
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i64 %2543, 63
  %2566 = trunc i64 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2566, i8* %2567, align 1
  %2568 = lshr i64 %2539, 63
  %2569 = lshr i64 %2540, 63
  %2570 = xor i64 %2565, %2568
  %2571 = xor i64 %2565, %2569
  %2572 = add i64 %2570, %2571
  %2573 = icmp eq i64 %2572, 2
  %2574 = zext i1 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2574, i8* %2575, align 1
  store %struct.Memory* %loadMem_421ca1, %struct.Memory** %MEMORY
  %loadMem_421ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 1
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %2581 to i64*
  %2582 = load i64, i64* %RAX.i517
  %2583 = load i64, i64* %PC.i516
  %2584 = add i64 %2583, 3
  store i64 %2584, i64* %PC.i516
  %2585 = inttoptr i64 %2582 to i32*
  %2586 = load i32, i32* %2585
  %2587 = sext i32 %2586 to i64
  store i64 %2587, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_421ca4, %struct.Memory** %MEMORY
  %loadMem_421ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 1
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 7
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RAX.i514
  %2598 = mul i64 %2597, 4
  %2599 = add i64 %2598, 8807744
  %2600 = load i64, i64* %PC.i513
  %2601 = add i64 %2600, 7
  store i64 %2601, i64* %PC.i513
  %2602 = inttoptr i64 %2599 to i32*
  %2603 = load i32, i32* %2602
  %2604 = zext i32 %2603 to i64
  store i64 %2604, i64* %RDX.i515, align 8
  store %struct.Memory* %loadMem_421ca7, %struct.Memory** %MEMORY
  %loadMem_421cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i512
  %2615 = sub i64 %2614, 24640
  %2616 = load i64, i64* %PC.i510
  %2617 = add i64 %2616, 7
  store i64 %2617, i64* %PC.i510
  %2618 = inttoptr i64 %2615 to i64*
  %2619 = load i64, i64* %2618
  store i64 %2619, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_421cae, %struct.Memory** %MEMORY
  %loadMem_421cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 1
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 5
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RAX.i508
  %2630 = load i64, i64* %PC.i507
  %2631 = add i64 %2630, 3
  store i64 %2631, i64* %PC.i507
  %2632 = inttoptr i64 %2629 to i32*
  %2633 = load i32, i32* %2632
  %2634 = sext i32 %2633 to i64
  store i64 %2634, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_421cb5, %struct.Memory** %MEMORY
  %loadMem_421cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 7
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %EDX.i505 = bitcast %union.anon* %2640 to i32*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 5
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %2643 to i64*
  %2644 = load i32, i32* %EDX.i505
  %2645 = zext i32 %2644 to i64
  %2646 = load i64, i64* %RCX.i506
  %2647 = mul i64 %2646, 4
  %2648 = add i64 %2647, 8807744
  %2649 = load i64, i64* %PC.i504
  %2650 = add i64 %2649, 7
  store i64 %2650, i64* %PC.i504
  %2651 = inttoptr i64 %2648 to i32*
  %2652 = load i32, i32* %2651
  %2653 = sub i32 %2644, %2652
  %2654 = icmp ult i32 %2644, %2652
  %2655 = zext i1 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2655, i8* %2656, align 1
  %2657 = and i32 %2653, 255
  %2658 = call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2661, i8* %2662, align 1
  %2663 = xor i32 %2652, %2644
  %2664 = xor i32 %2663, %2653
  %2665 = lshr i32 %2664, 4
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2667, i8* %2668, align 1
  %2669 = icmp eq i32 %2653, 0
  %2670 = zext i1 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2670, i8* %2671, align 1
  %2672 = lshr i32 %2653, 31
  %2673 = trunc i32 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2673, i8* %2674, align 1
  %2675 = lshr i32 %2644, 31
  %2676 = lshr i32 %2652, 31
  %2677 = xor i32 %2676, %2675
  %2678 = xor i32 %2672, %2675
  %2679 = add i32 %2678, %2677
  %2680 = icmp eq i32 %2679, 2
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2681, i8* %2682, align 1
  store %struct.Memory* %loadMem_421cb8, %struct.Memory** %MEMORY
  %loadMem_421cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %PC.i503
  %2687 = add i64 %2686, 148
  %2688 = load i64, i64* %PC.i503
  %2689 = add i64 %2688, 6
  %2690 = load i64, i64* %PC.i503
  %2691 = add i64 %2690, 6
  store i64 %2691, i64* %PC.i503
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2693 = load i8, i8* %2692, align 1
  %2694 = icmp eq i8 %2693, 0
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %BRANCH_TAKEN, align 1
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2697 = select i1 %2694, i64 %2687, i64 %2689
  store i64 %2697, i64* %2696, align 8
  store %struct.Memory* %loadMem_421cbf, %struct.Memory** %MEMORY
  %loadBr_421cbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421cbf = icmp eq i8 %loadBr_421cbf, 1
  br i1 %cmpBr_421cbf, label %block_.L_421d53, label %block_421cc5

block_421cc5:                                     ; preds = %block_421c8f
  %loadMem_421cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 1
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i502
  %2708 = sub i64 %2707, 12304
  %2709 = load i64, i64* %PC.i500
  %2710 = add i64 %2709, 7
  store i64 %2710, i64* %PC.i500
  store i64 %2708, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_421cc5, %struct.Memory** %MEMORY
  %loadMem_421ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 5
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 15
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %RBP.i499
  %2721 = sub i64 %2720, 24596
  %2722 = load i64, i64* %PC.i497
  %2723 = add i64 %2722, 7
  store i64 %2723, i64* %PC.i497
  %2724 = inttoptr i64 %2721 to i32*
  %2725 = load i32, i32* %2724
  %2726 = sext i32 %2725 to i64
  store i64 %2726, i64* %RCX.i498, align 8
  store %struct.Memory* %loadMem_421ccc, %struct.Memory** %MEMORY
  %loadMem_421cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 5
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RCX.i496
  %2734 = load i64, i64* %PC.i495
  %2735 = add i64 %2734, 4
  store i64 %2735, i64* %PC.i495
  %2736 = sext i64 %2733 to i128
  %2737 = and i128 %2736, -18446744073709551616
  %2738 = zext i64 %2733 to i128
  %2739 = or i128 %2737, %2738
  %2740 = mul i128 24, %2739
  %2741 = trunc i128 %2740 to i64
  store i64 %2741, i64* %RCX.i496, align 8
  %2742 = sext i64 %2741 to i128
  %2743 = icmp ne i128 %2742, %2740
  %2744 = zext i1 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2744, i8* %2745, align 1
  %2746 = trunc i128 %2740 to i32
  %2747 = and i32 %2746, 255
  %2748 = call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2751, i8* %2752, align 1
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2753, align 1
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2754, align 1
  %2755 = lshr i64 %2741, 63
  %2756 = trunc i64 %2755 to i8
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2756, i8* %2757, align 1
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2744, i8* %2758, align 1
  store %struct.Memory* %loadMem_421cd3, %struct.Memory** %MEMORY
  %loadMem_421cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 1
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 5
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %RAX.i493
  %2769 = load i64, i64* %RCX.i494
  %2770 = load i64, i64* %PC.i492
  %2771 = add i64 %2770, 3
  store i64 %2771, i64* %PC.i492
  %2772 = add i64 %2769, %2768
  store i64 %2772, i64* %RAX.i493, align 8
  %2773 = icmp ult i64 %2772, %2768
  %2774 = icmp ult i64 %2772, %2769
  %2775 = or i1 %2773, %2774
  %2776 = zext i1 %2775 to i8
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2776, i8* %2777, align 1
  %2778 = trunc i64 %2772 to i32
  %2779 = and i32 %2778, 255
  %2780 = call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2783, i8* %2784, align 1
  %2785 = xor i64 %2769, %2768
  %2786 = xor i64 %2785, %2772
  %2787 = lshr i64 %2786, 4
  %2788 = trunc i64 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2789, i8* %2790, align 1
  %2791 = icmp eq i64 %2772, 0
  %2792 = zext i1 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2792, i8* %2793, align 1
  %2794 = lshr i64 %2772, 63
  %2795 = trunc i64 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2795, i8* %2796, align 1
  %2797 = lshr i64 %2768, 63
  %2798 = lshr i64 %2769, 63
  %2799 = xor i64 %2794, %2797
  %2800 = xor i64 %2794, %2798
  %2801 = add i64 %2799, %2800
  %2802 = icmp eq i64 %2801, 2
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2803, i8* %2804, align 1
  store %struct.Memory* %loadMem_421cd7, %struct.Memory** %MEMORY
  %loadMem_421cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 1
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 7
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RAX.i490
  %2815 = load i64, i64* %PC.i489
  %2816 = add i64 %2815, 2
  store i64 %2816, i64* %PC.i489
  %2817 = inttoptr i64 %2814 to i32*
  %2818 = load i32, i32* %2817
  %2819 = zext i32 %2818 to i64
  store i64 %2819, i64* %RDX.i491, align 8
  store %struct.Memory* %loadMem_421cda, %struct.Memory** %MEMORY
  %loadMem_421cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RBP.i488
  %2830 = sub i64 %2829, 24640
  %2831 = load i64, i64* %PC.i486
  %2832 = add i64 %2831, 7
  store i64 %2832, i64* %PC.i486
  %2833 = inttoptr i64 %2830 to i64*
  %2834 = load i64, i64* %2833
  store i64 %2834, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_421cdc, %struct.Memory** %MEMORY
  %loadMem_421ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 7
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %EDX.i484 = bitcast %union.anon* %2840 to i32*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 1
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %2843 to i64*
  %2844 = load i32, i32* %EDX.i484
  %2845 = zext i32 %2844 to i64
  %2846 = load i64, i64* %RAX.i485
  %2847 = load i64, i64* %PC.i483
  %2848 = add i64 %2847, 2
  store i64 %2848, i64* %PC.i483
  %2849 = inttoptr i64 %2846 to i32*
  %2850 = load i32, i32* %2849
  %2851 = sub i32 %2844, %2850
  %2852 = icmp ult i32 %2844, %2850
  %2853 = zext i1 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2853, i8* %2854, align 1
  %2855 = and i32 %2851, 255
  %2856 = call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2859, i8* %2860, align 1
  %2861 = xor i32 %2850, %2844
  %2862 = xor i32 %2861, %2851
  %2863 = lshr i32 %2862, 4
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2865, i8* %2866, align 1
  %2867 = icmp eq i32 %2851, 0
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2868, i8* %2869, align 1
  %2870 = lshr i32 %2851, 31
  %2871 = trunc i32 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2871, i8* %2872, align 1
  %2873 = lshr i32 %2844, 31
  %2874 = lshr i32 %2850, 31
  %2875 = xor i32 %2874, %2873
  %2876 = xor i32 %2870, %2873
  %2877 = add i32 %2876, %2875
  %2878 = icmp eq i32 %2877, 2
  %2879 = zext i1 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2879, i8* %2880, align 1
  store %struct.Memory* %loadMem_421ce3, %struct.Memory** %MEMORY
  %loadMem_421ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %PC.i482
  %2885 = add i64 %2884, 110
  %2886 = load i64, i64* %PC.i482
  %2887 = add i64 %2886, 6
  %2888 = load i64, i64* %PC.i482
  %2889 = add i64 %2888, 6
  store i64 %2889, i64* %PC.i482
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2891 = load i8, i8* %2890, align 1
  store i8 %2891, i8* %BRANCH_TAKEN, align 1
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2893 = icmp ne i8 %2891, 0
  %2894 = select i1 %2893, i64 %2885, i64 %2887
  store i64 %2894, i64* %2892, align 8
  store %struct.Memory* %loadMem_421ce5, %struct.Memory** %MEMORY
  %loadBr_421ce5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421ce5 = icmp eq i8 %loadBr_421ce5, 1
  br i1 %cmpBr_421ce5, label %block_.L_421d53, label %block_421ceb

block_421ceb:                                     ; preds = %block_421cc5
  %loadMem_421ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 11
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RDI.i480 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 15
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %2903 to i64*
  %2904 = load i64, i64* %RBP.i481
  %2905 = sub i64 %2904, 12304
  %2906 = load i64, i64* %PC.i479
  %2907 = add i64 %2906, 7
  store i64 %2907, i64* %PC.i479
  store i64 %2905, i64* %RDI.i480, align 8
  store %struct.Memory* %loadMem_421ceb, %struct.Memory** %MEMORY
  %loadMem_421cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 9
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RSI.i477 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RBP.i478
  %2918 = sub i64 %2917, 24596
  %2919 = load i64, i64* %PC.i476
  %2920 = add i64 %2919, 6
  store i64 %2920, i64* %PC.i476
  %2921 = inttoptr i64 %2918 to i32*
  %2922 = load i32, i32* %2921
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RSI.i477, align 8
  store %struct.Memory* %loadMem_421cf2, %struct.Memory** %MEMORY
  %loadMem1_421cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %PC.i475
  %2928 = add i64 %2927, -91592
  %2929 = load i64, i64* %PC.i475
  %2930 = add i64 %2929, 5
  %2931 = load i64, i64* %PC.i475
  %2932 = add i64 %2931, 5
  store i64 %2932, i64* %PC.i475
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2934 = load i64, i64* %2933, align 8
  %2935 = add i64 %2934, -8
  %2936 = inttoptr i64 %2935 to i64*
  store i64 %2930, i64* %2936
  store i64 %2935, i64* %2933, align 8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2928, i64* %2937, align 8
  store %struct.Memory* %loadMem1_421cf8, %struct.Memory** %MEMORY
  %loadMem2_421cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421cf8 = load i64, i64* %3
  %call2_421cf8 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64 %loadPC_421cf8, %struct.Memory* %loadMem2_421cf8)
  store %struct.Memory* %call2_421cf8, %struct.Memory** %MEMORY
  %loadMem_421cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 11
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RDI.i473 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 15
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RBP.i474
  %2948 = sub i64 %2947, 12304
  %2949 = load i64, i64* %PC.i472
  %2950 = add i64 %2949, 7
  store i64 %2950, i64* %PC.i472
  store i64 %2948, i64* %RDI.i473, align 8
  store %struct.Memory* %loadMem_421cfd, %struct.Memory** %MEMORY
  %loadMem_421d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 9
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 15
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %RBP.i471
  %2961 = sub i64 %2960, 24596
  %2962 = load i64, i64* %PC.i469
  %2963 = add i64 %2962, 6
  store i64 %2963, i64* %PC.i469
  %2964 = inttoptr i64 %2961 to i32*
  %2965 = load i32, i32* %2964
  %2966 = zext i32 %2965 to i64
  store i64 %2966, i64* %RSI.i470, align 8
  store %struct.Memory* %loadMem_421d04, %struct.Memory** %MEMORY
  %loadMem_421d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 7
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 15
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %RBP.i468
  %2977 = sub i64 %2976, 24632
  %2978 = load i64, i64* %PC.i466
  %2979 = add i64 %2978, 6
  store i64 %2979, i64* %PC.i466
  %2980 = inttoptr i64 %2977 to i32*
  %2981 = load i32, i32* %2980
  %2982 = zext i32 %2981 to i64
  store i64 %2982, i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_421d0a, %struct.Memory** %MEMORY
  %loadMem1_421d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %PC.i465
  %2987 = add i64 %2986, -112272
  %2988 = load i64, i64* %PC.i465
  %2989 = add i64 %2988, 5
  %2990 = load i64, i64* %PC.i465
  %2991 = add i64 %2990, 5
  store i64 %2991, i64* %PC.i465
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2993 = load i64, i64* %2992, align 8
  %2994 = add i64 %2993, -8
  %2995 = inttoptr i64 %2994 to i64*
  store i64 %2989, i64* %2995
  store i64 %2994, i64* %2992, align 8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2987, i64* %2996, align 8
  store %struct.Memory* %loadMem1_421d10, %struct.Memory** %MEMORY
  %loadMem2_421d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d10 = load i64, i64* %3
  %call2_421d10 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64 %loadPC_421d10, %struct.Memory* %loadMem2_421d10)
  store %struct.Memory* %call2_421d10, %struct.Memory** %MEMORY
  %loadMem_421d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %EAX.i464 = bitcast %union.anon* %3002 to i32*
  %3003 = load i32, i32* %EAX.i464
  %3004 = zext i32 %3003 to i64
  %3005 = load i64, i64* %PC.i463
  %3006 = add i64 %3005, 3
  store i64 %3006, i64* %PC.i463
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3007, align 1
  %3008 = and i32 %3003, 255
  %3009 = call i32 @llvm.ctpop.i32(i32 %3008)
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  %3012 = xor i8 %3011, 1
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3012, i8* %3013, align 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3014, align 1
  %3015 = icmp eq i32 %3003, 0
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3016, i8* %3017, align 1
  %3018 = lshr i32 %3003, 31
  %3019 = trunc i32 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3019, i8* %3020, align 1
  %3021 = lshr i32 %3003, 31
  %3022 = xor i32 %3018, %3021
  %3023 = add i32 %3022, %3021
  %3024 = icmp eq i32 %3023, 2
  %3025 = zext i1 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3025, i8* %3026, align 1
  store %struct.Memory* %loadMem_421d15, %struct.Memory** %MEMORY
  %loadMem_421d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %PC.i462
  %3031 = add i64 %3030, 41
  %3032 = load i64, i64* %PC.i462
  %3033 = add i64 %3032, 6
  %3034 = load i64, i64* %PC.i462
  %3035 = add i64 %3034, 6
  store i64 %3035, i64* %PC.i462
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3037 = load i8, i8* %3036, align 1
  store i8 %3037, i8* %BRANCH_TAKEN, align 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3039 = icmp ne i8 %3037, 0
  %3040 = select i1 %3039, i64 %3031, i64 %3033
  store i64 %3040, i64* %3038, align 8
  store %struct.Memory* %loadMem_421d18, %struct.Memory** %MEMORY
  %loadBr_421d18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d18 = icmp eq i8 %loadBr_421d18, 1
  br i1 %cmpBr_421d18, label %block_.L_421d41, label %block_421d1e

block_421d1e:                                     ; preds = %block_421ceb
  %loadMem_421d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 11
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RDI.i460 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 15
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RBP.i461
  %3051 = sub i64 %3050, 12304
  %3052 = load i64, i64* %PC.i459
  %3053 = add i64 %3052, 7
  store i64 %3053, i64* %PC.i459
  store i64 %3051, i64* %RDI.i460, align 8
  store %struct.Memory* %loadMem_421d1e, %struct.Memory** %MEMORY
  %loadMem_421d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 9
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RSI.i457 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 15
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RBP.i458
  %3064 = sub i64 %3063, 24596
  %3065 = load i64, i64* %PC.i456
  %3066 = add i64 %3065, 6
  store i64 %3066, i64* %PC.i456
  %3067 = inttoptr i64 %3064 to i32*
  %3068 = load i32, i32* %3067
  %3069 = zext i32 %3068 to i64
  store i64 %3069, i64* %RSI.i457, align 8
  store %struct.Memory* %loadMem_421d25, %struct.Memory** %MEMORY
  %loadMem1_421d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3072 to i64*
  %3073 = load i64, i64* %PC.i455
  %3074 = add i64 %3073, -87435
  %3075 = load i64, i64* %PC.i455
  %3076 = add i64 %3075, 5
  %3077 = load i64, i64* %PC.i455
  %3078 = add i64 %3077, 5
  store i64 %3078, i64* %PC.i455
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3080 = load i64, i64* %3079, align 8
  %3081 = add i64 %3080, -8
  %3082 = inttoptr i64 %3081 to i64*
  store i64 %3076, i64* %3082
  store i64 %3081, i64* %3079, align 8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3074, i64* %3083, align 8
  store %struct.Memory* %loadMem1_421d2b, %struct.Memory** %MEMORY
  %loadMem2_421d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d2b = load i64, i64* %3
  %call2_421d2b = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64 %loadPC_421d2b, %struct.Memory* %loadMem2_421d2b)
  store %struct.Memory* %call2_421d2b, %struct.Memory** %MEMORY
  %loadMem_421d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 9
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 15
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %RBP.i454
  %3094 = sub i64 %3093, 24596
  %3095 = load i64, i64* %PC.i452
  %3096 = add i64 %3095, 6
  store i64 %3096, i64* %PC.i452
  %3097 = inttoptr i64 %3094 to i32*
  %3098 = load i32, i32* %3097
  %3099 = zext i32 %3098 to i64
  store i64 %3099, i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_421d30, %struct.Memory** %MEMORY
  %loadMem_421d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 9
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %ESI.i450 = bitcast %union.anon* %3105 to i32*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RBP.i451
  %3110 = sub i64 %3109, 24608
  %3111 = load i32, i32* %ESI.i450
  %3112 = zext i32 %3111 to i64
  %3113 = load i64, i64* %PC.i449
  %3114 = add i64 %3113, 6
  store i64 %3114, i64* %PC.i449
  %3115 = inttoptr i64 %3110 to i32*
  store i32 %3111, i32* %3115
  store %struct.Memory* %loadMem_421d36, %struct.Memory** %MEMORY
  %loadMem_421d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %PC.i448
  %3120 = add i64 %3119, 48
  %3121 = load i64, i64* %PC.i448
  %3122 = add i64 %3121, 5
  store i64 %3122, i64* %PC.i448
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3120, i64* %3123, align 8
  store %struct.Memory* %loadMem_421d3c, %struct.Memory** %MEMORY
  br label %block_.L_421d6c

block_.L_421d41:                                  ; preds = %block_421ceb
  %loadMem_421d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 33
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 11
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RDI.i446 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 15
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %RBP.i447
  %3134 = sub i64 %3133, 12304
  %3135 = load i64, i64* %PC.i445
  %3136 = add i64 %3135, 7
  store i64 %3136, i64* %PC.i445
  store i64 %3134, i64* %RDI.i446, align 8
  store %struct.Memory* %loadMem_421d41, %struct.Memory** %MEMORY
  %loadMem_421d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 9
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RSI.i443 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RBP.i444
  %3147 = sub i64 %3146, 24596
  %3148 = load i64, i64* %PC.i442
  %3149 = add i64 %3148, 6
  store i64 %3149, i64* %PC.i442
  %3150 = inttoptr i64 %3147 to i32*
  %3151 = load i32, i32* %3150
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RSI.i443, align 8
  store %struct.Memory* %loadMem_421d48, %struct.Memory** %MEMORY
  %loadMem1_421d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %PC.i441
  %3157 = add i64 %3156, -87470
  %3158 = load i64, i64* %PC.i441
  %3159 = add i64 %3158, 5
  %3160 = load i64, i64* %PC.i441
  %3161 = add i64 %3160, 5
  store i64 %3161, i64* %PC.i441
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3163 = load i64, i64* %3162, align 8
  %3164 = add i64 %3163, -8
  %3165 = inttoptr i64 %3164 to i64*
  store i64 %3159, i64* %3165
  store i64 %3164, i64* %3162, align 8
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3157, i64* %3166, align 8
  store %struct.Memory* %loadMem1_421d4e, %struct.Memory** %MEMORY
  %loadMem2_421d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d4e = load i64, i64* %3
  %call2_421d4e = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64 %loadPC_421d4e, %struct.Memory* %loadMem2_421d4e)
  store %struct.Memory* %call2_421d4e, %struct.Memory** %MEMORY
  br label %block_.L_421d53

block_.L_421d53:                                  ; preds = %block_.L_421d41, %block_421cc5, %block_421c8f, %block_421c67
  %loadMem_421d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %PC.i440
  %3171 = add i64 %3170, 5
  %3172 = load i64, i64* %PC.i440
  %3173 = add i64 %3172, 5
  store i64 %3173, i64* %PC.i440
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3171, i64* %3174, align 8
  store %struct.Memory* %loadMem_421d53, %struct.Memory** %MEMORY
  br label %block_.L_421d58

block_.L_421d58:                                  ; preds = %block_.L_421d53
  %loadMem_421d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 1
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RBP.i439
  %3185 = sub i64 %3184, 24596
  %3186 = load i64, i64* %PC.i437
  %3187 = add i64 %3186, 6
  store i64 %3187, i64* %PC.i437
  %3188 = inttoptr i64 %3185 to i32*
  %3189 = load i32, i32* %3188
  %3190 = zext i32 %3189 to i64
  store i64 %3190, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_421d58, %struct.Memory** %MEMORY
  %loadMem_421d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 1
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RAX.i436
  %3198 = load i64, i64* %PC.i435
  %3199 = add i64 %3198, 3
  store i64 %3199, i64* %PC.i435
  %3200 = trunc i64 %3197 to i32
  %3201 = add i32 1, %3200
  %3202 = zext i32 %3201 to i64
  store i64 %3202, i64* %RAX.i436, align 8
  %3203 = icmp ult i32 %3201, %3200
  %3204 = icmp ult i32 %3201, 1
  %3205 = or i1 %3203, %3204
  %3206 = zext i1 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3206, i8* %3207, align 1
  %3208 = and i32 %3201, 255
  %3209 = call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3212, i8* %3213, align 1
  %3214 = xor i64 1, %3197
  %3215 = trunc i64 %3214 to i32
  %3216 = xor i32 %3215, %3201
  %3217 = lshr i32 %3216, 4
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3219, i8* %3220, align 1
  %3221 = icmp eq i32 %3201, 0
  %3222 = zext i1 %3221 to i8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3222, i8* %3223, align 1
  %3224 = lshr i32 %3201, 31
  %3225 = trunc i32 %3224 to i8
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3225, i8* %3226, align 1
  %3227 = lshr i32 %3200, 31
  %3228 = xor i32 %3224, %3227
  %3229 = add i32 %3228, %3224
  %3230 = icmp eq i32 %3229, 2
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3231, i8* %3232, align 1
  store %struct.Memory* %loadMem_421d5e, %struct.Memory** %MEMORY
  %loadMem_421d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 1
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %EAX.i433 = bitcast %union.anon* %3238 to i32*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 15
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %3241 to i64*
  %3242 = load i64, i64* %RBP.i434
  %3243 = sub i64 %3242, 24596
  %3244 = load i32, i32* %EAX.i433
  %3245 = zext i32 %3244 to i64
  %3246 = load i64, i64* %PC.i432
  %3247 = add i64 %3246, 6
  store i64 %3247, i64* %PC.i432
  %3248 = inttoptr i64 %3243 to i32*
  store i32 %3244, i32* %3248
  store %struct.Memory* %loadMem_421d61, %struct.Memory** %MEMORY
  %loadMem_421d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %PC.i431
  %3253 = add i64 %3252, -274
  %3254 = load i64, i64* %PC.i431
  %3255 = add i64 %3254, 5
  store i64 %3255, i64* %PC.i431
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3253, i64* %3256, align 8
  store %struct.Memory* %loadMem_421d67, %struct.Memory** %MEMORY
  br label %block_.L_421c55

block_.L_421d6c:                                  ; preds = %block_421d1e, %block_.L_421c55
  %loadMem_421d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 15
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %3262 to i64*
  %3263 = load i64, i64* %RBP.i430
  %3264 = sub i64 %3263, 24608
  %3265 = load i64, i64* %PC.i429
  %3266 = add i64 %3265, 7
  store i64 %3266, i64* %PC.i429
  %3267 = inttoptr i64 %3264 to i32*
  %3268 = load i32, i32* %3267
  %3269 = sub i32 %3268, -1
  %3270 = icmp ult i32 %3268, -1
  %3271 = zext i1 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3271, i8* %3272, align 1
  %3273 = and i32 %3269, 255
  %3274 = call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3277, i8* %3278, align 1
  %3279 = xor i32 %3268, -1
  %3280 = xor i32 %3279, %3269
  %3281 = lshr i32 %3280, 4
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3283, i8* %3284, align 1
  %3285 = icmp eq i32 %3269, 0
  %3286 = zext i1 %3285 to i8
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3286, i8* %3287, align 1
  %3288 = lshr i32 %3269, 31
  %3289 = trunc i32 %3288 to i8
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3289, i8* %3290, align 1
  %3291 = lshr i32 %3268, 31
  %3292 = xor i32 %3291, 1
  %3293 = xor i32 %3288, %3291
  %3294 = add i32 %3293, %3292
  %3295 = icmp eq i32 %3294, 2
  %3296 = zext i1 %3295 to i8
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3296, i8* %3297, align 1
  store %struct.Memory* %loadMem_421d6c, %struct.Memory** %MEMORY
  %loadMem_421d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %PC.i428
  %3302 = add i64 %3301, 458
  %3303 = load i64, i64* %PC.i428
  %3304 = add i64 %3303, 6
  %3305 = load i64, i64* %PC.i428
  %3306 = add i64 %3305, 6
  store i64 %3306, i64* %PC.i428
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3308 = load i8, i8* %3307, align 1
  store i8 %3308, i8* %BRANCH_TAKEN, align 1
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3310 = icmp ne i8 %3308, 0
  %3311 = select i1 %3310, i64 %3302, i64 %3304
  store i64 %3311, i64* %3309, align 8
  store %struct.Memory* %loadMem_421d73, %struct.Memory** %MEMORY
  %loadBr_421d73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d73 = icmp eq i8 %loadBr_421d73, 1
  br i1 %cmpBr_421d73, label %block_.L_421f3d, label %block_421d79

block_421d79:                                     ; preds = %block_.L_421d6c
  %loadMem_421d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 15
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %RBP.i427
  %3322 = sub i64 %3321, 24640
  %3323 = load i64, i64* %PC.i425
  %3324 = add i64 %3323, 7
  store i64 %3324, i64* %PC.i425
  %3325 = inttoptr i64 %3322 to i64*
  %3326 = load i64, i64* %3325
  store i64 %3326, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_421d79, %struct.Memory** %MEMORY
  %loadMem_421d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 1
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 5
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %3335 to i64*
  %3336 = load i64, i64* %RAX.i423
  %3337 = add i64 %3336, 4
  %3338 = load i64, i64* %PC.i422
  %3339 = add i64 %3338, 4
  store i64 %3339, i64* %PC.i422
  %3340 = inttoptr i64 %3337 to i32*
  %3341 = load i32, i32* %3340
  %3342 = sext i32 %3341 to i64
  store i64 %3342, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_421d80, %struct.Memory** %MEMORY
  %loadMem_421d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 33
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 5
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RCX.i421
  %3350 = mul i64 %3349, 4
  %3351 = add i64 %3350, 8807744
  %3352 = load i64, i64* %PC.i420
  %3353 = add i64 %3352, 8
  store i64 %3353, i64* %PC.i420
  %3354 = inttoptr i64 %3351 to i32*
  %3355 = load i32, i32* %3354
  %3356 = sub i32 %3355, 13
  %3357 = icmp ult i32 %3355, 13
  %3358 = zext i1 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3358, i8* %3359, align 1
  %3360 = and i32 %3356, 255
  %3361 = call i32 @llvm.ctpop.i32(i32 %3360)
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3364, i8* %3365, align 1
  %3366 = xor i32 %3355, 13
  %3367 = xor i32 %3366, %3356
  %3368 = lshr i32 %3367, 4
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3370, i8* %3371, align 1
  %3372 = icmp eq i32 %3356, 0
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3373, i8* %3374, align 1
  %3375 = lshr i32 %3356, 31
  %3376 = trunc i32 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3355, 31
  %3379 = xor i32 %3375, %3378
  %3380 = add i32 %3379, %3378
  %3381 = icmp eq i32 %3380, 2
  %3382 = zext i1 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3382, i8* %3383, align 1
  store %struct.Memory* %loadMem_421d84, %struct.Memory** %MEMORY
  %loadMem_421d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3386 to i64*
  %3387 = load i64, i64* %PC.i419
  %3388 = add i64 %3387, 217
  %3389 = load i64, i64* %PC.i419
  %3390 = add i64 %3389, 6
  %3391 = load i64, i64* %PC.i419
  %3392 = add i64 %3391, 6
  store i64 %3392, i64* %PC.i419
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3394 = load i8, i8* %3393, align 1
  %3395 = icmp eq i8 %3394, 0
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %BRANCH_TAKEN, align 1
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3398 = select i1 %3395, i64 %3388, i64 %3390
  store i64 %3398, i64* %3397, align 8
  store %struct.Memory* %loadMem_421d8c, %struct.Memory** %MEMORY
  %loadBr_421d8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d8c = icmp eq i8 %loadBr_421d8c, 1
  br i1 %cmpBr_421d8c, label %block_.L_421e65, label %block_421d92

block_421d92:                                     ; preds = %block_421d79
  %loadMem_421d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 1
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 15
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %RBP.i418
  %3409 = sub i64 %3408, 12304
  %3410 = load i64, i64* %PC.i416
  %3411 = add i64 %3410, 7
  store i64 %3411, i64* %PC.i416
  store i64 %3409, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_421d92, %struct.Memory** %MEMORY
  %loadMem_421d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 33
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 5
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 15
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %RBP.i415
  %3422 = sub i64 %3421, 24608
  %3423 = load i64, i64* %PC.i413
  %3424 = add i64 %3423, 7
  store i64 %3424, i64* %PC.i413
  %3425 = inttoptr i64 %3422 to i32*
  %3426 = load i32, i32* %3425
  %3427 = sext i32 %3426 to i64
  store i64 %3427, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_421d99, %struct.Memory** %MEMORY
  %loadMem_421da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 5
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %RCX.i412
  %3435 = load i64, i64* %PC.i411
  %3436 = add i64 %3435, 4
  store i64 %3436, i64* %PC.i411
  %3437 = sext i64 %3434 to i128
  %3438 = and i128 %3437, -18446744073709551616
  %3439 = zext i64 %3434 to i128
  %3440 = or i128 %3438, %3439
  %3441 = mul i128 24, %3440
  %3442 = trunc i128 %3441 to i64
  store i64 %3442, i64* %RCX.i412, align 8
  %3443 = sext i64 %3442 to i128
  %3444 = icmp ne i128 %3443, %3441
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3445, i8* %3446, align 1
  %3447 = trunc i128 %3441 to i32
  %3448 = and i32 %3447, 255
  %3449 = call i32 @llvm.ctpop.i32(i32 %3448)
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  %3452 = xor i8 %3451, 1
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3452, i8* %3453, align 1
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3454, align 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3455, align 1
  %3456 = lshr i64 %3442, 63
  %3457 = trunc i64 %3456 to i8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3457, i8* %3458, align 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3445, i8* %3459, align 1
  store %struct.Memory* %loadMem_421da0, %struct.Memory** %MEMORY
  %loadMem_421da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 1
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 5
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %3468 to i64*
  %3469 = load i64, i64* %RAX.i409
  %3470 = load i64, i64* %RCX.i410
  %3471 = load i64, i64* %PC.i408
  %3472 = add i64 %3471, 3
  store i64 %3472, i64* %PC.i408
  %3473 = add i64 %3470, %3469
  store i64 %3473, i64* %RAX.i409, align 8
  %3474 = icmp ult i64 %3473, %3469
  %3475 = icmp ult i64 %3473, %3470
  %3476 = or i1 %3474, %3475
  %3477 = zext i1 %3476 to i8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3477, i8* %3478, align 1
  %3479 = trunc i64 %3473 to i32
  %3480 = and i32 %3479, 255
  %3481 = call i32 @llvm.ctpop.i32(i32 %3480)
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  %3484 = xor i8 %3483, 1
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3484, i8* %3485, align 1
  %3486 = xor i64 %3470, %3469
  %3487 = xor i64 %3486, %3473
  %3488 = lshr i64 %3487, 4
  %3489 = trunc i64 %3488 to i8
  %3490 = and i8 %3489, 1
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3490, i8* %3491, align 1
  %3492 = icmp eq i64 %3473, 0
  %3493 = zext i1 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3493, i8* %3494, align 1
  %3495 = lshr i64 %3473, 63
  %3496 = trunc i64 %3495 to i8
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3496, i8* %3497, align 1
  %3498 = lshr i64 %3469, 63
  %3499 = lshr i64 %3470, 63
  %3500 = xor i64 %3495, %3498
  %3501 = xor i64 %3495, %3499
  %3502 = add i64 %3500, %3501
  %3503 = icmp eq i64 %3502, 2
  %3504 = zext i1 %3503 to i8
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3504, i8* %3505, align 1
  store %struct.Memory* %loadMem_421da4, %struct.Memory** %MEMORY
  %loadMem_421da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %3511 to i64*
  %3512 = load i64, i64* %RAX.i407
  %3513 = load i64, i64* %PC.i406
  %3514 = add i64 %3513, 3
  store i64 %3514, i64* %PC.i406
  %3515 = inttoptr i64 %3512 to i32*
  %3516 = load i32, i32* %3515
  %3517 = sext i32 %3516 to i64
  store i64 %3517, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_421da7, %struct.Memory** %MEMORY
  %loadMem_421daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 33
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 1
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %3523 to i64*
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 7
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %3526 to i64*
  %3527 = load i64, i64* %RAX.i404
  %3528 = mul i64 %3527, 4
  %3529 = add i64 %3528, 4347472
  %3530 = load i64, i64* %PC.i403
  %3531 = add i64 %3530, 7
  store i64 %3531, i64* %PC.i403
  %3532 = inttoptr i64 %3529 to i32*
  %3533 = load i32, i32* %3532
  %3534 = zext i32 %3533 to i64
  store i64 %3534, i64* %RDX.i405, align 8
  store %struct.Memory* %loadMem_421daa, %struct.Memory** %MEMORY
  %loadMem_421db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 1
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 15
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RBP.i402
  %3545 = sub i64 %3544, 24640
  %3546 = load i64, i64* %PC.i400
  %3547 = add i64 %3546, 7
  store i64 %3547, i64* %PC.i400
  %3548 = inttoptr i64 %3545 to i64*
  %3549 = load i64, i64* %3548
  store i64 %3549, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_421db1, %struct.Memory** %MEMORY
  %loadMem_421db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 33
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 1
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 5
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %3558 to i64*
  %3559 = load i64, i64* %RAX.i398
  %3560 = load i64, i64* %PC.i397
  %3561 = add i64 %3560, 3
  store i64 %3561, i64* %PC.i397
  %3562 = inttoptr i64 %3559 to i32*
  %3563 = load i32, i32* %3562
  %3564 = sext i32 %3563 to i64
  store i64 %3564, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_421db8, %struct.Memory** %MEMORY
  %loadMem_421dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 7
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %EDX.i395 = bitcast %union.anon* %3570 to i32*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 5
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %3573 to i64*
  %3574 = load i32, i32* %EDX.i395
  %3575 = zext i32 %3574 to i64
  %3576 = load i64, i64* %RCX.i396
  %3577 = mul i64 %3576, 4
  %3578 = add i64 %3577, 4347472
  %3579 = load i64, i64* %PC.i394
  %3580 = add i64 %3579, 7
  store i64 %3580, i64* %PC.i394
  %3581 = inttoptr i64 %3578 to i32*
  %3582 = load i32, i32* %3581
  %3583 = sub i32 %3574, %3582
  %3584 = icmp ult i32 %3574, %3582
  %3585 = zext i1 %3584 to i8
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3585, i8* %3586, align 1
  %3587 = and i32 %3583, 255
  %3588 = call i32 @llvm.ctpop.i32(i32 %3587)
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3591, i8* %3592, align 1
  %3593 = xor i32 %3582, %3574
  %3594 = xor i32 %3593, %3583
  %3595 = lshr i32 %3594, 4
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3597, i8* %3598, align 1
  %3599 = icmp eq i32 %3583, 0
  %3600 = zext i1 %3599 to i8
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3600, i8* %3601, align 1
  %3602 = lshr i32 %3583, 31
  %3603 = trunc i32 %3602 to i8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3603, i8* %3604, align 1
  %3605 = lshr i32 %3574, 31
  %3606 = lshr i32 %3582, 31
  %3607 = xor i32 %3606, %3605
  %3608 = xor i32 %3602, %3605
  %3609 = add i32 %3608, %3607
  %3610 = icmp eq i32 %3609, 2
  %3611 = zext i1 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3611, i8* %3612, align 1
  store %struct.Memory* %loadMem_421dbb, %struct.Memory** %MEMORY
  %loadMem_421dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %PC.i393
  %3617 = add i64 %3616, 85
  %3618 = load i64, i64* %PC.i393
  %3619 = add i64 %3618, 6
  %3620 = load i64, i64* %PC.i393
  %3621 = add i64 %3620, 6
  store i64 %3621, i64* %PC.i393
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3623 = load i8, i8* %3622, align 1
  store i8 %3623, i8* %BRANCH_TAKEN, align 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3625 = icmp ne i8 %3623, 0
  %3626 = select i1 %3625, i64 %3617, i64 %3619
  store i64 %3626, i64* %3624, align 8
  store %struct.Memory* %loadMem_421dc2, %struct.Memory** %MEMORY
  %loadBr_421dc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421dc2 = icmp eq i8 %loadBr_421dc2, 1
  br i1 %cmpBr_421dc2, label %block_.L_421e17, label %block_421dc8

block_421dc8:                                     ; preds = %block_421d92
  %loadMem_421dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 9
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %PC.i391
  %3634 = add i64 %3633, 10
  store i64 %3634, i64* %PC.i391
  store i64 ptrtoint (%G__0x429afe_type* @G__0x429afe to i64), i64* %RSI.i392, align 8
  store %struct.Memory* %loadMem_421dc8, %struct.Memory** %MEMORY
  %loadMem_421dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 11
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RDI.i389 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 15
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RBP.i390
  %3645 = sub i64 %3644, 8
  %3646 = load i64, i64* %PC.i388
  %3647 = add i64 %3646, 4
  store i64 %3647, i64* %PC.i388
  %3648 = inttoptr i64 %3645 to i64*
  %3649 = load i64, i64* %3648
  store i64 %3649, i64* %RDI.i389, align 8
  store %struct.Memory* %loadMem_421dd2, %struct.Memory** %MEMORY
  %loadMem_421dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 1
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 15
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RBP.i387
  %3660 = sub i64 %3659, 24640
  %3661 = load i64, i64* %PC.i385
  %3662 = add i64 %3661, 7
  store i64 %3662, i64* %PC.i385
  %3663 = inttoptr i64 %3660 to i64*
  %3664 = load i64, i64* %3663
  store i64 %3664, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_421dd6, %struct.Memory** %MEMORY
  %loadMem_421ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 33
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3667 to i64*
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 1
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 5
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %3673 to i64*
  %3674 = load i64, i64* %RAX.i383
  %3675 = load i64, i64* %PC.i382
  %3676 = add i64 %3675, 3
  store i64 %3676, i64* %PC.i382
  %3677 = inttoptr i64 %3674 to i32*
  %3678 = load i32, i32* %3677
  %3679 = sext i32 %3678 to i64
  store i64 %3679, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_421ddd, %struct.Memory** %MEMORY
  %loadMem_421de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 5
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %RCX.i381
  %3687 = mul i64 %3686, 4
  %3688 = add i64 %3687, 8807744
  %3689 = load i64, i64* %PC.i380
  %3690 = add i64 %3689, 8
  store i64 %3690, i64* %PC.i380
  %3691 = inttoptr i64 %3688 to i32*
  %3692 = load i32, i32* %3691
  %3693 = sext i32 %3692 to i64
  store i64 %3693, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_421de0, %struct.Memory** %MEMORY
  %loadMem_421de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 5
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 7
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %RCX.i378
  %3704 = mul i64 %3703, 4
  %3705 = add i64 %3704, 4357664
  %3706 = load i64, i64* %PC.i377
  %3707 = add i64 %3706, 7
  store i64 %3707, i64* %PC.i377
  %3708 = inttoptr i64 %3705 to i32*
  %3709 = load i32, i32* %3708
  %3710 = zext i32 %3709 to i64
  store i64 %3710, i64* %RDX.i379, align 8
  store %struct.Memory* %loadMem_421de8, %struct.Memory** %MEMORY
  %loadMem_421def = load %struct.Memory*, %struct.Memory** %MEMORY
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 33
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 5
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 15
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %3719 to i64*
  %3720 = load i64, i64* %RBP.i376
  %3721 = sub i64 %3720, 24625
  %3722 = load i64, i64* %PC.i374
  %3723 = add i64 %3722, 7
  store i64 %3723, i64* %PC.i374
  %3724 = inttoptr i64 %3721 to i8*
  %3725 = load i8, i8* %3724
  %3726 = sext i8 %3725 to i64
  %3727 = and i64 %3726, 4294967295
  store i64 %3727, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_421def, %struct.Memory** %MEMORY
  %loadMem_421df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 17
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %R8D.i372 = bitcast %union.anon* %3733 to i32*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 15
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %3736 to i64*
  %3737 = bitcast i32* %R8D.i372 to i64*
  %3738 = load i64, i64* %RBP.i373
  %3739 = sub i64 %3738, 24626
  %3740 = load i64, i64* %PC.i371
  %3741 = add i64 %3740, 8
  store i64 %3741, i64* %PC.i371
  %3742 = inttoptr i64 %3739 to i8*
  %3743 = load i8, i8* %3742
  %3744 = sext i8 %3743 to i64
  %3745 = and i64 %3744, 4294967295
  store i64 %3745, i64* %3737, align 8
  store %struct.Memory* %loadMem_421df6, %struct.Memory** %MEMORY
  %loadMem_421dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 19
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %R9D.i369 = bitcast %union.anon* %3751 to i32*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %3754 to i64*
  %3755 = bitcast i32* %R9D.i369 to i64*
  %3756 = load i64, i64* %RBP.i370
  %3757 = sub i64 %3756, 24620
  %3758 = load i64, i64* %PC.i368
  %3759 = add i64 %3758, 7
  store i64 %3759, i64* %PC.i368
  %3760 = inttoptr i64 %3757 to i32*
  %3761 = load i32, i32* %3760
  %3762 = zext i32 %3761 to i64
  store i64 %3762, i64* %3755, align 8
  store %struct.Memory* %loadMem_421dfe, %struct.Memory** %MEMORY
  %loadMem_421e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 1
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %3769 = bitcast %union.anon* %3768 to %struct.anon.2*
  %AL.i367 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3769, i32 0, i32 0
  %3770 = load i64, i64* %PC.i366
  %3771 = add i64 %3770, 2
  store i64 %3771, i64* %PC.i366
  store i8 0, i8* %AL.i367, align 1
  store %struct.Memory* %loadMem_421e05, %struct.Memory** %MEMORY
  %loadMem1_421e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 33
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3774 to i64*
  %3775 = load i64, i64* %PC.i365
  %3776 = add i64 %3775, -135223
  %3777 = load i64, i64* %PC.i365
  %3778 = add i64 %3777, 5
  %3779 = load i64, i64* %PC.i365
  %3780 = add i64 %3779, 5
  store i64 %3780, i64* %PC.i365
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3782 = load i64, i64* %3781, align 8
  %3783 = add i64 %3782, -8
  %3784 = inttoptr i64 %3783 to i64*
  store i64 %3778, i64* %3784
  store i64 %3783, i64* %3781, align 8
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3776, i64* %3785, align 8
  store %struct.Memory* %loadMem1_421e07, %struct.Memory** %MEMORY
  %loadMem2_421e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421e07 = load i64, i64* %3
  %3786 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421e07)
  store %struct.Memory* %3786, %struct.Memory** %MEMORY
  %loadMem_421e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 1
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %EAX.i360 = bitcast %union.anon* %3792 to i32*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 15
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %RBP.i361
  %3797 = sub i64 %3796, 24672
  %3798 = load i32, i32* %EAX.i360
  %3799 = zext i32 %3798 to i64
  %3800 = load i64, i64* %PC.i359
  %3801 = add i64 %3800, 6
  store i64 %3801, i64* %PC.i359
  %3802 = inttoptr i64 %3797 to i32*
  store i32 %3798, i32* %3802
  store %struct.Memory* %loadMem_421e0c, %struct.Memory** %MEMORY
  %loadMem_421e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %PC.i358
  %3807 = add i64 %3806, 78
  %3808 = load i64, i64* %PC.i358
  %3809 = add i64 %3808, 5
  store i64 %3809, i64* %PC.i358
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3807, i64* %3810, align 8
  store %struct.Memory* %loadMem_421e12, %struct.Memory** %MEMORY
  br label %block_.L_421e60

block_.L_421e17:                                  ; preds = %block_421d92
  %loadMem_421e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 9
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RSI.i357 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %PC.i356
  %3818 = add i64 %3817, 10
  store i64 %3818, i64* %PC.i356
  store i64 ptrtoint (%G__0x429b07_type* @G__0x429b07 to i64), i64* %RSI.i357, align 8
  store %struct.Memory* %loadMem_421e17, %struct.Memory** %MEMORY
  %loadMem_421e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 11
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RDI.i354 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 15
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %3827 to i64*
  %3828 = load i64, i64* %RBP.i355
  %3829 = sub i64 %3828, 8
  %3830 = load i64, i64* %PC.i353
  %3831 = add i64 %3830, 4
  store i64 %3831, i64* %PC.i353
  %3832 = inttoptr i64 %3829 to i64*
  %3833 = load i64, i64* %3832
  store i64 %3833, i64* %RDI.i354, align 8
  store %struct.Memory* %loadMem_421e21, %struct.Memory** %MEMORY
  %loadMem_421e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 33
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 1
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 15
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3842 to i64*
  %3843 = load i64, i64* %RBP.i352
  %3844 = sub i64 %3843, 24640
  %3845 = load i64, i64* %PC.i350
  %3846 = add i64 %3845, 7
  store i64 %3846, i64* %PC.i350
  %3847 = inttoptr i64 %3844 to i64*
  %3848 = load i64, i64* %3847
  store i64 %3848, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_421e25, %struct.Memory** %MEMORY
  %loadMem_421e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 5
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RAX.i348
  %3859 = load i64, i64* %PC.i347
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i347
  %3861 = inttoptr i64 %3858 to i32*
  %3862 = load i32, i32* %3861
  %3863 = sext i32 %3862 to i64
  store i64 %3863, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_421e2c, %struct.Memory** %MEMORY
  %loadMem_421e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 5
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %3869 to i64*
  %3870 = load i64, i64* %RCX.i346
  %3871 = mul i64 %3870, 4
  %3872 = add i64 %3871, 8807744
  %3873 = load i64, i64* %PC.i345
  %3874 = add i64 %3873, 8
  store i64 %3874, i64* %PC.i345
  %3875 = inttoptr i64 %3872 to i32*
  %3876 = load i32, i32* %3875
  %3877 = sext i32 %3876 to i64
  store i64 %3877, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_421e2f, %struct.Memory** %MEMORY
  %loadMem_421e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 5
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 7
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %3886 to i64*
  %3887 = load i64, i64* %RCX.i343
  %3888 = mul i64 %3887, 4
  %3889 = add i64 %3888, 4357664
  %3890 = load i64, i64* %PC.i342
  %3891 = add i64 %3890, 7
  store i64 %3891, i64* %PC.i342
  %3892 = inttoptr i64 %3889 to i32*
  %3893 = load i32, i32* %3892
  %3894 = zext i32 %3893 to i64
  store i64 %3894, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_421e37, %struct.Memory** %MEMORY
  %loadMem_421e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 5
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 15
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %3903 to i64*
  %3904 = load i64, i64* %RBP.i341
  %3905 = sub i64 %3904, 24616
  %3906 = load i64, i64* %PC.i339
  %3907 = add i64 %3906, 6
  store i64 %3907, i64* %PC.i339
  %3908 = inttoptr i64 %3905 to i32*
  %3909 = load i32, i32* %3908
  %3910 = zext i32 %3909 to i64
  store i64 %3910, i64* %RCX.i340, align 8
  store %struct.Memory* %loadMem_421e3e, %struct.Memory** %MEMORY
  %loadMem_421e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 33
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 17
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %R8D.i337 = bitcast %union.anon* %3916 to i32*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 15
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %3919 to i64*
  %3920 = bitcast i32* %R8D.i337 to i64*
  %3921 = load i64, i64* %RBP.i338
  %3922 = sub i64 %3921, 24626
  %3923 = load i64, i64* %PC.i336
  %3924 = add i64 %3923, 8
  store i64 %3924, i64* %PC.i336
  %3925 = inttoptr i64 %3922 to i8*
  %3926 = load i8, i8* %3925
  %3927 = sext i8 %3926 to i64
  %3928 = and i64 %3927, 4294967295
  store i64 %3928, i64* %3920, align 8
  store %struct.Memory* %loadMem_421e44, %struct.Memory** %MEMORY
  %loadMem_421e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 19
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %R9D.i334 = bitcast %union.anon* %3934 to i32*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 15
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3937 to i64*
  %3938 = bitcast i32* %R9D.i334 to i64*
  %3939 = load i64, i64* %RBP.i335
  %3940 = sub i64 %3939, 24620
  %3941 = load i64, i64* %PC.i333
  %3942 = add i64 %3941, 7
  store i64 %3942, i64* %PC.i333
  %3943 = inttoptr i64 %3940 to i32*
  %3944 = load i32, i32* %3943
  %3945 = zext i32 %3944 to i64
  store i64 %3945, i64* %3938, align 8
  store %struct.Memory* %loadMem_421e4c, %struct.Memory** %MEMORY
  %loadMem_421e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 1
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %3952 = bitcast %union.anon* %3951 to %struct.anon.2*
  %AL.i332 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3952, i32 0, i32 0
  %3953 = load i64, i64* %PC.i331
  %3954 = add i64 %3953, 2
  store i64 %3954, i64* %PC.i331
  store i8 0, i8* %AL.i332, align 1
  store %struct.Memory* %loadMem_421e53, %struct.Memory** %MEMORY
  %loadMem1_421e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3957 to i64*
  %3958 = load i64, i64* %PC.i330
  %3959 = add i64 %3958, -135301
  %3960 = load i64, i64* %PC.i330
  %3961 = add i64 %3960, 5
  %3962 = load i64, i64* %PC.i330
  %3963 = add i64 %3962, 5
  store i64 %3963, i64* %PC.i330
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3965 = load i64, i64* %3964, align 8
  %3966 = add i64 %3965, -8
  %3967 = inttoptr i64 %3966 to i64*
  store i64 %3961, i64* %3967
  store i64 %3966, i64* %3964, align 8
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3959, i64* %3968, align 8
  store %struct.Memory* %loadMem1_421e55, %struct.Memory** %MEMORY
  %loadMem2_421e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421e55 = load i64, i64* %3
  %3969 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421e55)
  store %struct.Memory* %3969, %struct.Memory** %MEMORY
  %loadMem_421e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 1
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %EAX.i325 = bitcast %union.anon* %3975 to i32*
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 15
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %3978 to i64*
  %3979 = load i64, i64* %RBP.i326
  %3980 = sub i64 %3979, 24676
  %3981 = load i32, i32* %EAX.i325
  %3982 = zext i32 %3981 to i64
  %3983 = load i64, i64* %PC.i324
  %3984 = add i64 %3983, 6
  store i64 %3984, i64* %PC.i324
  %3985 = inttoptr i64 %3980 to i32*
  store i32 %3981, i32* %3985
  store %struct.Memory* %loadMem_421e5a, %struct.Memory** %MEMORY
  br label %block_.L_421e60

block_.L_421e60:                                  ; preds = %block_.L_421e17, %block_421dc8
  %loadMem_421e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %PC.i323
  %3990 = add i64 %3989, 216
  %3991 = load i64, i64* %PC.i323
  %3992 = add i64 %3991, 5
  store i64 %3992, i64* %PC.i323
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3990, i64* %3993, align 8
  store %struct.Memory* %loadMem_421e60, %struct.Memory** %MEMORY
  br label %block_.L_421f38

block_.L_421e65:                                  ; preds = %block_421d79
  %loadMem_421e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 33
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 1
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 15
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4002 to i64*
  %4003 = load i64, i64* %RBP.i322
  %4004 = sub i64 %4003, 12304
  %4005 = load i64, i64* %PC.i320
  %4006 = add i64 %4005, 7
  store i64 %4006, i64* %PC.i320
  store i64 %4004, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_421e65, %struct.Memory** %MEMORY
  %loadMem_421e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 5
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 15
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %RBP.i319
  %4017 = sub i64 %4016, 24608
  %4018 = load i64, i64* %PC.i317
  %4019 = add i64 %4018, 7
  store i64 %4019, i64* %PC.i317
  %4020 = inttoptr i64 %4017 to i32*
  %4021 = load i32, i32* %4020
  %4022 = sext i32 %4021 to i64
  store i64 %4022, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_421e6c, %struct.Memory** %MEMORY
  %loadMem_421e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 33
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 5
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %RCX.i316
  %4030 = load i64, i64* %PC.i315
  %4031 = add i64 %4030, 4
  store i64 %4031, i64* %PC.i315
  %4032 = sext i64 %4029 to i128
  %4033 = and i128 %4032, -18446744073709551616
  %4034 = zext i64 %4029 to i128
  %4035 = or i128 %4033, %4034
  %4036 = mul i128 24, %4035
  %4037 = trunc i128 %4036 to i64
  store i64 %4037, i64* %RCX.i316, align 8
  %4038 = sext i64 %4037 to i128
  %4039 = icmp ne i128 %4038, %4036
  %4040 = zext i1 %4039 to i8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4040, i8* %4041, align 1
  %4042 = trunc i128 %4036 to i32
  %4043 = and i32 %4042, 255
  %4044 = call i32 @llvm.ctpop.i32(i32 %4043)
  %4045 = trunc i32 %4044 to i8
  %4046 = and i8 %4045, 1
  %4047 = xor i8 %4046, 1
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4047, i8* %4048, align 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4049, align 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4050, align 1
  %4051 = lshr i64 %4037, 63
  %4052 = trunc i64 %4051 to i8
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4052, i8* %4053, align 1
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4040, i8* %4054, align 1
  store %struct.Memory* %loadMem_421e73, %struct.Memory** %MEMORY
  %loadMem_421e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 1
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 5
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %RAX.i313
  %4065 = load i64, i64* %RCX.i314
  %4066 = load i64, i64* %PC.i312
  %4067 = add i64 %4066, 3
  store i64 %4067, i64* %PC.i312
  %4068 = add i64 %4065, %4064
  store i64 %4068, i64* %RAX.i313, align 8
  %4069 = icmp ult i64 %4068, %4064
  %4070 = icmp ult i64 %4068, %4065
  %4071 = or i1 %4069, %4070
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4072, i8* %4073, align 1
  %4074 = trunc i64 %4068 to i32
  %4075 = and i32 %4074, 255
  %4076 = call i32 @llvm.ctpop.i32(i32 %4075)
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = xor i8 %4078, 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4079, i8* %4080, align 1
  %4081 = xor i64 %4065, %4064
  %4082 = xor i64 %4081, %4068
  %4083 = lshr i64 %4082, 4
  %4084 = trunc i64 %4083 to i8
  %4085 = and i8 %4084, 1
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4085, i8* %4086, align 1
  %4087 = icmp eq i64 %4068, 0
  %4088 = zext i1 %4087 to i8
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4088, i8* %4089, align 1
  %4090 = lshr i64 %4068, 63
  %4091 = trunc i64 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4091, i8* %4092, align 1
  %4093 = lshr i64 %4064, 63
  %4094 = lshr i64 %4065, 63
  %4095 = xor i64 %4090, %4093
  %4096 = xor i64 %4090, %4094
  %4097 = add i64 %4095, %4096
  %4098 = icmp eq i64 %4097, 2
  %4099 = zext i1 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4099, i8* %4100, align 1
  store %struct.Memory* %loadMem_421e77, %struct.Memory** %MEMORY
  %loadMem_421e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 1
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %4106 to i64*
  %4107 = load i64, i64* %RAX.i311
  %4108 = load i64, i64* %PC.i310
  %4109 = add i64 %4108, 3
  store i64 %4109, i64* %PC.i310
  %4110 = inttoptr i64 %4107 to i32*
  %4111 = load i32, i32* %4110
  %4112 = sext i32 %4111 to i64
  store i64 %4112, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_421e7a, %struct.Memory** %MEMORY
  %loadMem_421e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 1
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 7
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RAX.i308
  %4123 = mul i64 %4122, 4
  %4124 = add i64 %4123, 4347472
  %4125 = load i64, i64* %PC.i307
  %4126 = add i64 %4125, 7
  store i64 %4126, i64* %PC.i307
  %4127 = inttoptr i64 %4124 to i32*
  %4128 = load i32, i32* %4127
  %4129 = zext i32 %4128 to i64
  store i64 %4129, i64* %RDX.i309, align 8
  store %struct.Memory* %loadMem_421e7d, %struct.Memory** %MEMORY
  %loadMem_421e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 1
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 15
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %RBP.i306
  %4140 = sub i64 %4139, 24640
  %4141 = load i64, i64* %PC.i304
  %4142 = add i64 %4141, 7
  store i64 %4142, i64* %PC.i304
  %4143 = inttoptr i64 %4140 to i64*
  %4144 = load i64, i64* %4143
  store i64 %4144, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_421e84, %struct.Memory** %MEMORY
  %loadMem_421e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 33
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 1
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 5
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %4153 to i64*
  %4154 = load i64, i64* %RAX.i302
  %4155 = load i64, i64* %PC.i301
  %4156 = add i64 %4155, 3
  store i64 %4156, i64* %PC.i301
  %4157 = inttoptr i64 %4154 to i32*
  %4158 = load i32, i32* %4157
  %4159 = sext i32 %4158 to i64
  store i64 %4159, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_421e8b, %struct.Memory** %MEMORY
  %loadMem_421e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 7
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4165 to i32*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 5
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %4168 to i64*
  %4169 = load i32, i32* %EDX.i
  %4170 = zext i32 %4169 to i64
  %4171 = load i64, i64* %RCX.i300
  %4172 = mul i64 %4171, 4
  %4173 = add i64 %4172, 4347472
  %4174 = load i64, i64* %PC.i299
  %4175 = add i64 %4174, 7
  store i64 %4175, i64* %PC.i299
  %4176 = inttoptr i64 %4173 to i32*
  %4177 = load i32, i32* %4176
  %4178 = sub i32 %4169, %4177
  %4179 = icmp ult i32 %4169, %4177
  %4180 = zext i1 %4179 to i8
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4180, i8* %4181, align 1
  %4182 = and i32 %4178, 255
  %4183 = call i32 @llvm.ctpop.i32(i32 %4182)
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = xor i8 %4185, 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4186, i8* %4187, align 1
  %4188 = xor i32 %4177, %4169
  %4189 = xor i32 %4188, %4178
  %4190 = lshr i32 %4189, 4
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4192, i8* %4193, align 1
  %4194 = icmp eq i32 %4178, 0
  %4195 = zext i1 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4195, i8* %4196, align 1
  %4197 = lshr i32 %4178, 31
  %4198 = trunc i32 %4197 to i8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4198, i8* %4199, align 1
  %4200 = lshr i32 %4169, 31
  %4201 = lshr i32 %4177, 31
  %4202 = xor i32 %4201, %4200
  %4203 = xor i32 %4197, %4200
  %4204 = add i32 %4203, %4202
  %4205 = icmp eq i32 %4204, 2
  %4206 = zext i1 %4205 to i8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4206, i8* %4207, align 1
  store %struct.Memory* %loadMem_421e8e, %struct.Memory** %MEMORY
  %loadMem_421e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 33
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %PC.i298
  %4212 = add i64 %4211, 85
  %4213 = load i64, i64* %PC.i298
  %4214 = add i64 %4213, 6
  %4215 = load i64, i64* %PC.i298
  %4216 = add i64 %4215, 6
  store i64 %4216, i64* %PC.i298
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4218 = load i8, i8* %4217, align 1
  store i8 %4218, i8* %BRANCH_TAKEN, align 1
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4220 = icmp ne i8 %4218, 0
  %4221 = select i1 %4220, i64 %4212, i64 %4214
  store i64 %4221, i64* %4219, align 8
  store %struct.Memory* %loadMem_421e95, %struct.Memory** %MEMORY
  %loadBr_421e95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421e95 = icmp eq i8 %loadBr_421e95, 1
  br i1 %cmpBr_421e95, label %block_.L_421eea, label %block_421e9b

block_421e9b:                                     ; preds = %block_.L_421e65
  %loadMem_421e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 9
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RSI.i297 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %PC.i296
  %4229 = add i64 %4228, 10
  store i64 %4229, i64* %PC.i296
  store i64 ptrtoint (%G__0x429b10_type* @G__0x429b10 to i64), i64* %RSI.i297, align 8
  store %struct.Memory* %loadMem_421e9b, %struct.Memory** %MEMORY
  %loadMem_421ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 11
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RDI.i294 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 15
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %4238 to i64*
  %4239 = load i64, i64* %RBP.i295
  %4240 = sub i64 %4239, 8
  %4241 = load i64, i64* %PC.i293
  %4242 = add i64 %4241, 4
  store i64 %4242, i64* %PC.i293
  %4243 = inttoptr i64 %4240 to i64*
  %4244 = load i64, i64* %4243
  store i64 %4244, i64* %RDI.i294, align 8
  store %struct.Memory* %loadMem_421ea5, %struct.Memory** %MEMORY
  %loadMem_421ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 1
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 15
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %RBP.i292
  %4255 = sub i64 %4254, 24640
  %4256 = load i64, i64* %PC.i290
  %4257 = add i64 %4256, 7
  store i64 %4257, i64* %PC.i290
  %4258 = inttoptr i64 %4255 to i64*
  %4259 = load i64, i64* %4258
  store i64 %4259, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_421ea9, %struct.Memory** %MEMORY
  %loadMem_421eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 1
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 5
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %RAX.i288
  %4270 = load i64, i64* %PC.i287
  %4271 = add i64 %4270, 3
  store i64 %4271, i64* %PC.i287
  %4272 = inttoptr i64 %4269 to i32*
  %4273 = load i32, i32* %4272
  %4274 = sext i32 %4273 to i64
  store i64 %4274, i64* %RCX.i289, align 8
  store %struct.Memory* %loadMem_421eb0, %struct.Memory** %MEMORY
  %loadMem_421eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 33
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4277 to i64*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 5
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %RCX.i286
  %4282 = mul i64 %4281, 4
  %4283 = add i64 %4282, 8807744
  %4284 = load i64, i64* %PC.i285
  %4285 = add i64 %4284, 8
  store i64 %4285, i64* %PC.i285
  %4286 = inttoptr i64 %4283 to i32*
  %4287 = load i32, i32* %4286
  %4288 = sext i32 %4287 to i64
  store i64 %4288, i64* %RCX.i286, align 8
  store %struct.Memory* %loadMem_421eb3, %struct.Memory** %MEMORY
  %loadMem_421ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 5
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 7
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %4297 to i64*
  %4298 = load i64, i64* %RCX.i283
  %4299 = mul i64 %4298, 4
  %4300 = add i64 %4299, 4357664
  %4301 = load i64, i64* %PC.i282
  %4302 = add i64 %4301, 7
  store i64 %4302, i64* %PC.i282
  %4303 = inttoptr i64 %4300 to i32*
  %4304 = load i32, i32* %4303
  %4305 = zext i32 %4304 to i64
  store i64 %4305, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_421ebb, %struct.Memory** %MEMORY
  %loadMem_421ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4308 to i64*
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 5
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 15
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %4314 to i64*
  %4315 = load i64, i64* %RBP.i281
  %4316 = sub i64 %4315, 24625
  %4317 = load i64, i64* %PC.i279
  %4318 = add i64 %4317, 7
  store i64 %4318, i64* %PC.i279
  %4319 = inttoptr i64 %4316 to i8*
  %4320 = load i8, i8* %4319
  %4321 = sext i8 %4320 to i64
  %4322 = and i64 %4321, 4294967295
  store i64 %4322, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_421ec2, %struct.Memory** %MEMORY
  %loadMem_421ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 17
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %R8D.i277 = bitcast %union.anon* %4328 to i32*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 15
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %4331 to i64*
  %4332 = bitcast i32* %R8D.i277 to i64*
  %4333 = load i64, i64* %RBP.i278
  %4334 = sub i64 %4333, 24626
  %4335 = load i64, i64* %PC.i276
  %4336 = add i64 %4335, 8
  store i64 %4336, i64* %PC.i276
  %4337 = inttoptr i64 %4334 to i8*
  %4338 = load i8, i8* %4337
  %4339 = sext i8 %4338 to i64
  %4340 = and i64 %4339, 4294967295
  store i64 %4340, i64* %4332, align 8
  store %struct.Memory* %loadMem_421ec9, %struct.Memory** %MEMORY
  %loadMem_421ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 19
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %R9D.i274 = bitcast %union.anon* %4346 to i32*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 15
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4349 to i64*
  %4350 = bitcast i32* %R9D.i274 to i64*
  %4351 = load i64, i64* %RBP.i275
  %4352 = sub i64 %4351, 24620
  %4353 = load i64, i64* %PC.i273
  %4354 = add i64 %4353, 7
  store i64 %4354, i64* %PC.i273
  %4355 = inttoptr i64 %4352 to i32*
  %4356 = load i32, i32* %4355
  %4357 = zext i32 %4356 to i64
  store i64 %4357, i64* %4350, align 8
  store %struct.Memory* %loadMem_421ed1, %struct.Memory** %MEMORY
  %loadMem_421ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 1
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %4364 = bitcast %union.anon* %4363 to %struct.anon.2*
  %AL.i272 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4364, i32 0, i32 0
  %4365 = load i64, i64* %PC.i271
  %4366 = add i64 %4365, 2
  store i64 %4366, i64* %PC.i271
  store i8 0, i8* %AL.i272, align 1
  store %struct.Memory* %loadMem_421ed8, %struct.Memory** %MEMORY
  %loadMem1_421eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 33
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %PC.i270
  %4371 = add i64 %4370, -135434
  %4372 = load i64, i64* %PC.i270
  %4373 = add i64 %4372, 5
  %4374 = load i64, i64* %PC.i270
  %4375 = add i64 %4374, 5
  store i64 %4375, i64* %PC.i270
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4377 = load i64, i64* %4376, align 8
  %4378 = add i64 %4377, -8
  %4379 = inttoptr i64 %4378 to i64*
  store i64 %4373, i64* %4379
  store i64 %4378, i64* %4376, align 8
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4371, i64* %4380, align 8
  store %struct.Memory* %loadMem1_421eda, %struct.Memory** %MEMORY
  %loadMem2_421eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421eda = load i64, i64* %3
  %4381 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421eda)
  store %struct.Memory* %4381, %struct.Memory** %MEMORY
  %loadMem_421edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 33
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4384 to i64*
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 1
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %4387 to i32*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 15
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %4390 to i64*
  %4391 = load i64, i64* %RBP.i267
  %4392 = sub i64 %4391, 24680
  %4393 = load i32, i32* %EAX.i266
  %4394 = zext i32 %4393 to i64
  %4395 = load i64, i64* %PC.i265
  %4396 = add i64 %4395, 6
  store i64 %4396, i64* %PC.i265
  %4397 = inttoptr i64 %4392 to i32*
  store i32 %4393, i32* %4397
  store %struct.Memory* %loadMem_421edf, %struct.Memory** %MEMORY
  %loadMem_421ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 33
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %PC.i264
  %4402 = add i64 %4401, 78
  %4403 = load i64, i64* %PC.i264
  %4404 = add i64 %4403, 5
  store i64 %4404, i64* %PC.i264
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4402, i64* %4405, align 8
  store %struct.Memory* %loadMem_421ee5, %struct.Memory** %MEMORY
  br label %block_.L_421f33

block_.L_421eea:                                  ; preds = %block_.L_421e65
  %loadMem_421eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 33
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 9
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RSI.i263 = bitcast %union.anon* %4411 to i64*
  %4412 = load i64, i64* %PC.i262
  %4413 = add i64 %4412, 10
  store i64 %4413, i64* %PC.i262
  store i64 ptrtoint (%G__0x429b1a_type* @G__0x429b1a to i64), i64* %RSI.i263, align 8
  store %struct.Memory* %loadMem_421eea, %struct.Memory** %MEMORY
  %loadMem_421ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 11
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RDI.i260 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 15
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i261
  %4424 = sub i64 %4423, 8
  %4425 = load i64, i64* %PC.i259
  %4426 = add i64 %4425, 4
  store i64 %4426, i64* %PC.i259
  %4427 = inttoptr i64 %4424 to i64*
  %4428 = load i64, i64* %4427
  store i64 %4428, i64* %RDI.i260, align 8
  store %struct.Memory* %loadMem_421ef4, %struct.Memory** %MEMORY
  %loadMem_421ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 1
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 15
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %4437 to i64*
  %4438 = load i64, i64* %RBP.i258
  %4439 = sub i64 %4438, 24640
  %4440 = load i64, i64* %PC.i256
  %4441 = add i64 %4440, 7
  store i64 %4441, i64* %PC.i256
  %4442 = inttoptr i64 %4439 to i64*
  %4443 = load i64, i64* %4442
  store i64 %4443, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_421ef8, %struct.Memory** %MEMORY
  %loadMem_421eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 1
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 5
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %4452 to i64*
  %4453 = load i64, i64* %RAX.i254
  %4454 = load i64, i64* %PC.i253
  %4455 = add i64 %4454, 3
  store i64 %4455, i64* %PC.i253
  %4456 = inttoptr i64 %4453 to i32*
  %4457 = load i32, i32* %4456
  %4458 = sext i32 %4457 to i64
  store i64 %4458, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_421eff, %struct.Memory** %MEMORY
  %loadMem_421f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 33
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 5
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %4464 to i64*
  %4465 = load i64, i64* %RCX.i252
  %4466 = mul i64 %4465, 4
  %4467 = add i64 %4466, 8807744
  %4468 = load i64, i64* %PC.i251
  %4469 = add i64 %4468, 8
  store i64 %4469, i64* %PC.i251
  %4470 = inttoptr i64 %4467 to i32*
  %4471 = load i32, i32* %4470
  %4472 = sext i32 %4471 to i64
  store i64 %4472, i64* %RCX.i252, align 8
  store %struct.Memory* %loadMem_421f02, %struct.Memory** %MEMORY
  %loadMem_421f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 5
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 7
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %RCX.i249
  %4483 = mul i64 %4482, 4
  %4484 = add i64 %4483, 4357664
  %4485 = load i64, i64* %PC.i248
  %4486 = add i64 %4485, 7
  store i64 %4486, i64* %PC.i248
  %4487 = inttoptr i64 %4484 to i32*
  %4488 = load i32, i32* %4487
  %4489 = zext i32 %4488 to i64
  store i64 %4489, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_421f0a, %struct.Memory** %MEMORY
  %loadMem_421f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 5
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 15
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RBP.i247
  %4500 = sub i64 %4499, 24616
  %4501 = load i64, i64* %PC.i245
  %4502 = add i64 %4501, 6
  store i64 %4502, i64* %PC.i245
  %4503 = inttoptr i64 %4500 to i32*
  %4504 = load i32, i32* %4503
  %4505 = zext i32 %4504 to i64
  store i64 %4505, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_421f11, %struct.Memory** %MEMORY
  %loadMem_421f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 17
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %R8D.i243 = bitcast %union.anon* %4511 to i32*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 15
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %4514 to i64*
  %4515 = bitcast i32* %R8D.i243 to i64*
  %4516 = load i64, i64* %RBP.i244
  %4517 = sub i64 %4516, 24626
  %4518 = load i64, i64* %PC.i242
  %4519 = add i64 %4518, 8
  store i64 %4519, i64* %PC.i242
  %4520 = inttoptr i64 %4517 to i8*
  %4521 = load i8, i8* %4520
  %4522 = sext i8 %4521 to i64
  %4523 = and i64 %4522, 4294967295
  store i64 %4523, i64* %4515, align 8
  store %struct.Memory* %loadMem_421f17, %struct.Memory** %MEMORY
  %loadMem_421f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 19
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %4529 to i32*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 15
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4532 to i64*
  %4533 = bitcast i32* %R9D.i to i64*
  %4534 = load i64, i64* %RBP.i241
  %4535 = sub i64 %4534, 24620
  %4536 = load i64, i64* %PC.i240
  %4537 = add i64 %4536, 7
  store i64 %4537, i64* %PC.i240
  %4538 = inttoptr i64 %4535 to i32*
  %4539 = load i32, i32* %4538
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %4533, align 8
  store %struct.Memory* %loadMem_421f1f, %struct.Memory** %MEMORY
  %loadMem_421f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 1
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %4547 = bitcast %union.anon* %4546 to %struct.anon.2*
  %AL.i239 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4547, i32 0, i32 0
  %4548 = load i64, i64* %PC.i238
  %4549 = add i64 %4548, 2
  store i64 %4549, i64* %PC.i238
  store i8 0, i8* %AL.i239, align 1
  store %struct.Memory* %loadMem_421f26, %struct.Memory** %MEMORY
  %loadMem1_421f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 33
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4552 to i64*
  %4553 = load i64, i64* %PC.i237
  %4554 = add i64 %4553, -135512
  %4555 = load i64, i64* %PC.i237
  %4556 = add i64 %4555, 5
  %4557 = load i64, i64* %PC.i237
  %4558 = add i64 %4557, 5
  store i64 %4558, i64* %PC.i237
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4560 = load i64, i64* %4559, align 8
  %4561 = add i64 %4560, -8
  %4562 = inttoptr i64 %4561 to i64*
  store i64 %4556, i64* %4562
  store i64 %4561, i64* %4559, align 8
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4554, i64* %4563, align 8
  store %struct.Memory* %loadMem1_421f28, %struct.Memory** %MEMORY
  %loadMem2_421f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f28 = load i64, i64* %3
  %4564 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421f28)
  store %struct.Memory* %4564, %struct.Memory** %MEMORY
  %loadMem_421f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 1
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %4570 to i32*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 15
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RBP.i233
  %4575 = sub i64 %4574, 24684
  %4576 = load i32, i32* %EAX.i232
  %4577 = zext i32 %4576 to i64
  %4578 = load i64, i64* %PC.i231
  %4579 = add i64 %4578, 6
  store i64 %4579, i64* %PC.i231
  %4580 = inttoptr i64 %4575 to i32*
  store i32 %4576, i32* %4580
  store %struct.Memory* %loadMem_421f2d, %struct.Memory** %MEMORY
  br label %block_.L_421f33

block_.L_421f33:                                  ; preds = %block_.L_421eea, %block_421e9b
  %loadMem_421f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %PC.i230
  %4585 = add i64 %4584, 5
  %4586 = load i64, i64* %PC.i230
  %4587 = add i64 %4586, 5
  store i64 %4587, i64* %PC.i230
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4585, i64* %4588, align 8
  store %struct.Memory* %loadMem_421f33, %struct.Memory** %MEMORY
  br label %block_.L_421f38

block_.L_421f38:                                  ; preds = %block_.L_421f33, %block_.L_421e60
  %loadMem_421f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %PC.i229
  %4593 = add i64 %4592, 172
  %4594 = load i64, i64* %PC.i229
  %4595 = add i64 %4594, 5
  store i64 %4595, i64* %PC.i229
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4593, i64* %4596, align 8
  store %struct.Memory* %loadMem_421f38, %struct.Memory** %MEMORY
  br label %block_.L_421fe4

block_.L_421f3d:                                  ; preds = %block_.L_421d6c
  %loadMem_421f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 33
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4599 to i64*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 1
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 15
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RBP.i228
  %4607 = sub i64 %4606, 24640
  %4608 = load i64, i64* %PC.i226
  %4609 = add i64 %4608, 7
  store i64 %4609, i64* %PC.i226
  %4610 = inttoptr i64 %4607 to i64*
  %4611 = load i64, i64* %4610
  store i64 %4611, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_421f3d, %struct.Memory** %MEMORY
  %loadMem_421f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 33
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4614 to i64*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 1
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 5
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %4620 to i64*
  %4621 = load i64, i64* %RAX.i224
  %4622 = add i64 %4621, 4
  %4623 = load i64, i64* %PC.i223
  %4624 = add i64 %4623, 4
  store i64 %4624, i64* %PC.i223
  %4625 = inttoptr i64 %4622 to i32*
  %4626 = load i32, i32* %4625
  %4627 = sext i32 %4626 to i64
  store i64 %4627, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_421f44, %struct.Memory** %MEMORY
  %loadMem_421f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 5
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %4633 to i64*
  %4634 = load i64, i64* %RCX.i222
  %4635 = mul i64 %4634, 4
  %4636 = add i64 %4635, 8807744
  %4637 = load i64, i64* %PC.i221
  %4638 = add i64 %4637, 8
  store i64 %4638, i64* %PC.i221
  %4639 = inttoptr i64 %4636 to i32*
  %4640 = load i32, i32* %4639
  %4641 = sub i32 %4640, 13
  %4642 = icmp ult i32 %4640, 13
  %4643 = zext i1 %4642 to i8
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4643, i8* %4644, align 1
  %4645 = and i32 %4641, 255
  %4646 = call i32 @llvm.ctpop.i32(i32 %4645)
  %4647 = trunc i32 %4646 to i8
  %4648 = and i8 %4647, 1
  %4649 = xor i8 %4648, 1
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4649, i8* %4650, align 1
  %4651 = xor i32 %4640, 13
  %4652 = xor i32 %4651, %4641
  %4653 = lshr i32 %4652, 4
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4655, i8* %4656, align 1
  %4657 = icmp eq i32 %4641, 0
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4658, i8* %4659, align 1
  %4660 = lshr i32 %4641, 31
  %4661 = trunc i32 %4660 to i8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4661, i8* %4662, align 1
  %4663 = lshr i32 %4640, 31
  %4664 = xor i32 %4660, %4663
  %4665 = add i32 %4664, %4663
  %4666 = icmp eq i32 %4665, 2
  %4667 = zext i1 %4666 to i8
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4667, i8* %4668, align 1
  store %struct.Memory* %loadMem_421f48, %struct.Memory** %MEMORY
  %loadMem_421f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 33
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %PC.i220
  %4673 = add i64 %4672, 77
  %4674 = load i64, i64* %PC.i220
  %4675 = add i64 %4674, 6
  %4676 = load i64, i64* %PC.i220
  %4677 = add i64 %4676, 6
  store i64 %4677, i64* %PC.i220
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4679 = load i8, i8* %4678, align 1
  %4680 = icmp eq i8 %4679, 0
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %BRANCH_TAKEN, align 1
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4683 = select i1 %4680, i64 %4673, i64 %4675
  store i64 %4683, i64* %4682, align 8
  store %struct.Memory* %loadMem_421f50, %struct.Memory** %MEMORY
  %loadBr_421f50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421f50 = icmp eq i8 %loadBr_421f50, 1
  br i1 %cmpBr_421f50, label %block_.L_421f9d, label %block_421f56

block_421f56:                                     ; preds = %block_.L_421f3d
  %loadMem_421f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 9
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RSI.i219 = bitcast %union.anon* %4689 to i64*
  %4690 = load i64, i64* %PC.i218
  %4691 = add i64 %4690, 10
  store i64 %4691, i64* %PC.i218
  store i64 ptrtoint (%G__0x429b00_type* @G__0x429b00 to i64), i64* %RSI.i219, align 8
  store %struct.Memory* %loadMem_421f56, %struct.Memory** %MEMORY
  %loadMem_421f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 11
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %4697 to i64*
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 15
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4700 to i64*
  %4701 = load i64, i64* %RBP.i217
  %4702 = sub i64 %4701, 8
  %4703 = load i64, i64* %PC.i215
  %4704 = add i64 %4703, 4
  store i64 %4704, i64* %PC.i215
  %4705 = inttoptr i64 %4702 to i64*
  %4706 = load i64, i64* %4705
  store i64 %4706, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_421f60, %struct.Memory** %MEMORY
  %loadMem_421f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4709 to i64*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 1
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %4712 to i64*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 15
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4715 to i64*
  %4716 = load i64, i64* %RBP.i214
  %4717 = sub i64 %4716, 24640
  %4718 = load i64, i64* %PC.i212
  %4719 = add i64 %4718, 7
  store i64 %4719, i64* %PC.i212
  %4720 = inttoptr i64 %4717 to i64*
  %4721 = load i64, i64* %4720
  store i64 %4721, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_421f64, %struct.Memory** %MEMORY
  %loadMem_421f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 1
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 5
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RAX.i210
  %4732 = load i64, i64* %PC.i209
  %4733 = add i64 %4732, 3
  store i64 %4733, i64* %PC.i209
  %4734 = inttoptr i64 %4731 to i32*
  %4735 = load i32, i32* %4734
  %4736 = sext i32 %4735 to i64
  store i64 %4736, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_421f6b, %struct.Memory** %MEMORY
  %loadMem_421f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 5
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %4742 to i64*
  %4743 = load i64, i64* %RCX.i208
  %4744 = mul i64 %4743, 4
  %4745 = add i64 %4744, 8807744
  %4746 = load i64, i64* %PC.i207
  %4747 = add i64 %4746, 8
  store i64 %4747, i64* %PC.i207
  %4748 = inttoptr i64 %4745 to i32*
  %4749 = load i32, i32* %4748
  %4750 = sext i32 %4749 to i64
  store i64 %4750, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_421f6e, %struct.Memory** %MEMORY
  %loadMem_421f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 5
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 7
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RCX.i205
  %4761 = mul i64 %4760, 4
  %4762 = add i64 %4761, 4357664
  %4763 = load i64, i64* %PC.i204
  %4764 = add i64 %4763, 7
  store i64 %4764, i64* %PC.i204
  %4765 = inttoptr i64 %4762 to i32*
  %4766 = load i32, i32* %4765
  %4767 = zext i32 %4766 to i64
  store i64 %4767, i64* %RDX.i206, align 8
  store %struct.Memory* %loadMem_421f76, %struct.Memory** %MEMORY
  %loadMem_421f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 33
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 5
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 15
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %4776 to i64*
  %4777 = load i64, i64* %RBP.i203
  %4778 = sub i64 %4777, 24626
  %4779 = load i64, i64* %PC.i201
  %4780 = add i64 %4779, 7
  store i64 %4780, i64* %PC.i201
  %4781 = inttoptr i64 %4778 to i8*
  %4782 = load i8, i8* %4781
  %4783 = sext i8 %4782 to i64
  %4784 = and i64 %4783, 4294967295
  store i64 %4784, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_421f7d, %struct.Memory** %MEMORY
  %loadMem_421f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 33
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 17
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %R8D.i199 = bitcast %union.anon* %4790 to i32*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 15
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %4793 to i64*
  %4794 = bitcast i32* %R8D.i199 to i64*
  %4795 = load i64, i64* %RBP.i200
  %4796 = sub i64 %4795, 24620
  %4797 = load i64, i64* %PC.i198
  %4798 = add i64 %4797, 7
  store i64 %4798, i64* %PC.i198
  %4799 = inttoptr i64 %4796 to i32*
  %4800 = load i32, i32* %4799
  %4801 = zext i32 %4800 to i64
  store i64 %4801, i64* %4794, align 8
  store %struct.Memory* %loadMem_421f84, %struct.Memory** %MEMORY
  %loadMem_421f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 1
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %4808 = bitcast %union.anon* %4807 to %struct.anon.2*
  %AL.i197 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4808, i32 0, i32 0
  %4809 = load i64, i64* %PC.i196
  %4810 = add i64 %4809, 2
  store i64 %4810, i64* %PC.i196
  store i8 0, i8* %AL.i197, align 1
  store %struct.Memory* %loadMem_421f8b, %struct.Memory** %MEMORY
  %loadMem1_421f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4813 to i64*
  %4814 = load i64, i64* %PC.i195
  %4815 = add i64 %4814, -135613
  %4816 = load i64, i64* %PC.i195
  %4817 = add i64 %4816, 5
  %4818 = load i64, i64* %PC.i195
  %4819 = add i64 %4818, 5
  store i64 %4819, i64* %PC.i195
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4821 = load i64, i64* %4820, align 8
  %4822 = add i64 %4821, -8
  %4823 = inttoptr i64 %4822 to i64*
  store i64 %4817, i64* %4823
  store i64 %4822, i64* %4820, align 8
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4815, i64* %4824, align 8
  store %struct.Memory* %loadMem1_421f8d, %struct.Memory** %MEMORY
  %loadMem2_421f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f8d = load i64, i64* %3
  %4825 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421f8d)
  store %struct.Memory* %4825, %struct.Memory** %MEMORY
  %loadMem_421f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 1
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %EAX.i190 = bitcast %union.anon* %4831 to i32*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i191
  %4836 = sub i64 %4835, 24688
  %4837 = load i32, i32* %EAX.i190
  %4838 = zext i32 %4837 to i64
  %4839 = load i64, i64* %PC.i189
  %4840 = add i64 %4839, 6
  store i64 %4840, i64* %PC.i189
  %4841 = inttoptr i64 %4836 to i32*
  store i32 %4837, i32* %4841
  store %struct.Memory* %loadMem_421f92, %struct.Memory** %MEMORY
  %loadMem_421f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4844 to i64*
  %4845 = load i64, i64* %PC.i188
  %4846 = add i64 %4845, 71
  %4847 = load i64, i64* %PC.i188
  %4848 = add i64 %4847, 5
  store i64 %4848, i64* %PC.i188
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4846, i64* %4849, align 8
  store %struct.Memory* %loadMem_421f98, %struct.Memory** %MEMORY
  br label %block_.L_421fdf

block_.L_421f9d:                                  ; preds = %block_.L_421f3d
  %loadMem_421f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 9
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %4855 to i64*
  %4856 = load i64, i64* %PC.i186
  %4857 = add i64 %4856, 10
  store i64 %4857, i64* %PC.i186
  store i64 ptrtoint (%G__0x429b12_type* @G__0x429b12 to i64), i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_421f9d, %struct.Memory** %MEMORY
  %loadMem_421fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 11
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RDI.i184 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RBP.i185
  %4868 = sub i64 %4867, 8
  %4869 = load i64, i64* %PC.i183
  %4870 = add i64 %4869, 4
  store i64 %4870, i64* %PC.i183
  %4871 = inttoptr i64 %4868 to i64*
  %4872 = load i64, i64* %4871
  store i64 %4872, i64* %RDI.i184, align 8
  store %struct.Memory* %loadMem_421fa7, %struct.Memory** %MEMORY
  %loadMem_421fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 1
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 15
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %4881 to i64*
  %4882 = load i64, i64* %RBP.i182
  %4883 = sub i64 %4882, 24640
  %4884 = load i64, i64* %PC.i180
  %4885 = add i64 %4884, 7
  store i64 %4885, i64* %PC.i180
  %4886 = inttoptr i64 %4883 to i64*
  %4887 = load i64, i64* %4886
  store i64 %4887, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_421fab, %struct.Memory** %MEMORY
  %loadMem_421fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 1
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 5
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %4896 to i64*
  %4897 = load i64, i64* %RAX.i178
  %4898 = load i64, i64* %PC.i177
  %4899 = add i64 %4898, 3
  store i64 %4899, i64* %PC.i177
  %4900 = inttoptr i64 %4897 to i32*
  %4901 = load i32, i32* %4900
  %4902 = sext i32 %4901 to i64
  store i64 %4902, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_421fb2, %struct.Memory** %MEMORY
  %loadMem_421fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 33
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 5
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %4908 to i64*
  %4909 = load i64, i64* %RCX.i176
  %4910 = mul i64 %4909, 4
  %4911 = add i64 %4910, 8807744
  %4912 = load i64, i64* %PC.i175
  %4913 = add i64 %4912, 8
  store i64 %4913, i64* %PC.i175
  %4914 = inttoptr i64 %4911 to i32*
  %4915 = load i32, i32* %4914
  %4916 = sext i32 %4915 to i64
  store i64 %4916, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_421fb5, %struct.Memory** %MEMORY
  %loadMem_421fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 33
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 5
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 7
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %RCX.i173
  %4927 = mul i64 %4926, 4
  %4928 = add i64 %4927, 4357664
  %4929 = load i64, i64* %PC.i172
  %4930 = add i64 %4929, 7
  store i64 %4930, i64* %PC.i172
  %4931 = inttoptr i64 %4928 to i32*
  %4932 = load i32, i32* %4931
  %4933 = zext i32 %4932 to i64
  store i64 %4933, i64* %RDX.i174, align 8
  store %struct.Memory* %loadMem_421fbd, %struct.Memory** %MEMORY
  %loadMem_421fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 5
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 15
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %RBP.i171
  %4944 = sub i64 %4943, 24626
  %4945 = load i64, i64* %PC.i169
  %4946 = add i64 %4945, 7
  store i64 %4946, i64* %PC.i169
  %4947 = inttoptr i64 %4944 to i8*
  %4948 = load i8, i8* %4947
  %4949 = sext i8 %4948 to i64
  %4950 = and i64 %4949, 4294967295
  store i64 %4950, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_421fc4, %struct.Memory** %MEMORY
  %loadMem_421fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 17
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4956 to i32*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 15
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %4959 to i64*
  %4960 = bitcast i32* %R8D.i to i64*
  %4961 = load i64, i64* %RBP.i168
  %4962 = sub i64 %4961, 24620
  %4963 = load i64, i64* %PC.i167
  %4964 = add i64 %4963, 7
  store i64 %4964, i64* %PC.i167
  %4965 = inttoptr i64 %4962 to i32*
  %4966 = load i32, i32* %4965
  %4967 = zext i32 %4966 to i64
  store i64 %4967, i64* %4960, align 8
  store %struct.Memory* %loadMem_421fcb, %struct.Memory** %MEMORY
  %loadMem_421fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 33
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4970 to i64*
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 1
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %4974 = bitcast %union.anon* %4973 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4974, i32 0, i32 0
  %4975 = load i64, i64* %PC.i166
  %4976 = add i64 %4975, 2
  store i64 %4976, i64* %PC.i166
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_421fd2, %struct.Memory** %MEMORY
  %loadMem1_421fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %PC.i165
  %4981 = add i64 %4980, -135684
  %4982 = load i64, i64* %PC.i165
  %4983 = add i64 %4982, 5
  %4984 = load i64, i64* %PC.i165
  %4985 = add i64 %4984, 5
  store i64 %4985, i64* %PC.i165
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4987 = load i64, i64* %4986, align 8
  %4988 = add i64 %4987, -8
  %4989 = inttoptr i64 %4988 to i64*
  store i64 %4983, i64* %4989
  store i64 %4988, i64* %4986, align 8
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4981, i64* %4990, align 8
  store %struct.Memory* %loadMem1_421fd4, %struct.Memory** %MEMORY
  %loadMem2_421fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421fd4 = load i64, i64* %3
  %4991 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_421fd4)
  store %struct.Memory* %4991, %struct.Memory** %MEMORY
  %loadMem_421fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 1
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %4997 to i32*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 15
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %RBP.i161
  %5002 = sub i64 %5001, 24692
  %5003 = load i32, i32* %EAX.i160
  %5004 = zext i32 %5003 to i64
  %5005 = load i64, i64* %PC.i159
  %5006 = add i64 %5005, 6
  store i64 %5006, i64* %PC.i159
  %5007 = inttoptr i64 %5002 to i32*
  store i32 %5003, i32* %5007
  store %struct.Memory* %loadMem_421fd9, %struct.Memory** %MEMORY
  br label %block_.L_421fdf

block_.L_421fdf:                                  ; preds = %block_.L_421f9d, %block_421f56
  %loadMem_421fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5010 to i64*
  %5011 = load i64, i64* %PC.i158
  %5012 = add i64 %5011, 5
  %5013 = load i64, i64* %PC.i158
  %5014 = add i64 %5013, 5
  store i64 %5014, i64* %PC.i158
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5012, i64* %5015, align 8
  store %struct.Memory* %loadMem_421fdf, %struct.Memory** %MEMORY
  br label %block_.L_421fe4

block_.L_421fe4:                                  ; preds = %block_.L_421fdf, %block_.L_421f38
  %loadMem_421fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 33
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5018 to i64*
  %5019 = load i64, i64* %PC.i157
  %5020 = add i64 %5019, 5
  %5021 = load i64, i64* %PC.i157
  %5022 = add i64 %5021, 5
  store i64 %5022, i64* %PC.i157
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5020, i64* %5023, align 8
  store %struct.Memory* %loadMem_421fe4, %struct.Memory** %MEMORY
  br label %block_.L_421fe9

block_.L_421fe9:                                  ; preds = %block_.L_421fe4, %block_.L_421c0e
  %loadMem_421fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5026 to i64*
  %5027 = load i64, i64* %PC.i156
  %5028 = add i64 %5027, 5
  %5029 = load i64, i64* %PC.i156
  %5030 = add i64 %5029, 5
  store i64 %5030, i64* %PC.i156
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5028, i64* %5031, align 8
  store %struct.Memory* %loadMem_421fe9, %struct.Memory** %MEMORY
  br label %block_.L_421fee

block_.L_421fee:                                  ; preds = %block_.L_421fe9, %block_.L_421b9b
  %loadMem_421fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 33
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %5034 to i64*
  %5035 = load i64, i64* %PC.i155
  %5036 = add i64 %5035, 5
  %5037 = load i64, i64* %PC.i155
  %5038 = add i64 %5037, 5
  store i64 %5038, i64* %PC.i155
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5036, i64* %5039, align 8
  store %struct.Memory* %loadMem_421fee, %struct.Memory** %MEMORY
  br label %block_.L_421ff3

block_.L_421ff3:                                  ; preds = %block_.L_421fee, %block_4219f5
  %loadMem_421ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 9
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %ESI.i153 = bitcast %union.anon* %5045 to i32*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 9
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RSI.i154 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %RSI.i154
  %5050 = load i32, i32* %ESI.i153
  %5051 = zext i32 %5050 to i64
  %5052 = load i64, i64* %PC.i152
  %5053 = add i64 %5052, 2
  store i64 %5053, i64* %PC.i152
  %5054 = xor i64 %5051, %5049
  %5055 = trunc i64 %5054 to i32
  %5056 = and i64 %5054, 4294967295
  store i64 %5056, i64* %RSI.i154, align 8
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5057, align 1
  %5058 = and i32 %5055, 255
  %5059 = call i32 @llvm.ctpop.i32(i32 %5058)
  %5060 = trunc i32 %5059 to i8
  %5061 = and i8 %5060, 1
  %5062 = xor i8 %5061, 1
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5062, i8* %5063, align 1
  %5064 = icmp eq i32 %5055, 0
  %5065 = zext i1 %5064 to i8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5065, i8* %5066, align 1
  %5067 = lshr i32 %5055, 31
  %5068 = trunc i32 %5067 to i8
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5068, i8* %5069, align 1
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5070, align 1
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5071, align 1
  store %struct.Memory* %loadMem_421ff3, %struct.Memory** %MEMORY
  %loadMem_421ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 33
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 11
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RDI.i150 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 15
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %5080 to i64*
  %5081 = load i64, i64* %RBP.i151
  %5082 = sub i64 %5081, 24640
  %5083 = load i64, i64* %PC.i149
  %5084 = add i64 %5083, 7
  store i64 %5084, i64* %PC.i149
  %5085 = inttoptr i64 %5082 to i64*
  %5086 = load i64, i64* %5085
  store i64 %5086, i64* %RDI.i150, align 8
  store %struct.Memory* %loadMem_421ff5, %struct.Memory** %MEMORY
  %loadMem1_421ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5089 to i64*
  %5090 = load i64, i64* %PC.i148
  %5091 = add i64 %5090, -92364
  %5092 = load i64, i64* %PC.i148
  %5093 = add i64 %5092, 5
  %5094 = load i64, i64* %PC.i148
  %5095 = add i64 %5094, 5
  store i64 %5095, i64* %PC.i148
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5097 = load i64, i64* %5096, align 8
  %5098 = add i64 %5097, -8
  %5099 = inttoptr i64 %5098 to i64*
  store i64 %5093, i64* %5099
  store i64 %5098, i64* %5096, align 8
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5091, i64* %5100, align 8
  store %struct.Memory* %loadMem1_421ffc, %struct.Memory** %MEMORY
  %loadMem2_421ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421ffc = load i64, i64* %3
  %call2_421ffc = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64 %loadPC_421ffc, %struct.Memory* %loadMem2_421ffc)
  store %struct.Memory* %call2_421ffc, %struct.Memory** %MEMORY
  %loadMem_422001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 33
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 9
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %ESI.i146 = bitcast %union.anon* %5106 to i32*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 9
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RSI.i147 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RSI.i147
  %5111 = load i32, i32* %ESI.i146
  %5112 = zext i32 %5111 to i64
  %5113 = load i64, i64* %PC.i145
  %5114 = add i64 %5113, 2
  store i64 %5114, i64* %PC.i145
  %5115 = xor i64 %5112, %5110
  %5116 = trunc i64 %5115 to i32
  %5117 = and i64 %5115, 4294967295
  store i64 %5117, i64* %RSI.i147, align 8
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5118, align 1
  %5119 = and i32 %5116, 255
  %5120 = call i32 @llvm.ctpop.i32(i32 %5119)
  %5121 = trunc i32 %5120 to i8
  %5122 = and i8 %5121, 1
  %5123 = xor i8 %5122, 1
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5123, i8* %5124, align 1
  %5125 = icmp eq i32 %5116, 0
  %5126 = zext i1 %5125 to i8
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5126, i8* %5127, align 1
  %5128 = lshr i32 %5116, 31
  %5129 = trunc i32 %5128 to i8
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5129, i8* %5130, align 1
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5131, align 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5132, align 1
  store %struct.Memory* %loadMem_422001, %struct.Memory** %MEMORY
  %loadMem_422003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 33
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 7
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %5138 to i64*
  %5139 = load i64, i64* %PC.i143
  %5140 = add i64 %5139, 5
  store i64 %5140, i64* %PC.i143
  store i64 1, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_422003, %struct.Memory** %MEMORY
  %loadMem_422008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 11
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %RDI.i141 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 15
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %5149 to i64*
  %5150 = load i64, i64* %RBP.i142
  %5151 = sub i64 %5150, 24640
  %5152 = load i64, i64* %PC.i140
  %5153 = add i64 %5152, 7
  store i64 %5153, i64* %PC.i140
  %5154 = inttoptr i64 %5151 to i64*
  %5155 = load i64, i64* %5154
  store i64 %5155, i64* %RDI.i141, align 8
  store %struct.Memory* %loadMem_422008, %struct.Memory** %MEMORY
  %loadMem1_42200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 33
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5158 to i64*
  %5159 = load i64, i64* %PC.i139
  %5160 = add i64 %5159, -113039
  %5161 = load i64, i64* %PC.i139
  %5162 = add i64 %5161, 5
  %5163 = load i64, i64* %PC.i139
  %5164 = add i64 %5163, 5
  store i64 %5164, i64* %PC.i139
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5166 = load i64, i64* %5165, align 8
  %5167 = add i64 %5166, -8
  %5168 = inttoptr i64 %5167 to i64*
  store i64 %5162, i64* %5168
  store i64 %5167, i64* %5165, align 8
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5160, i64* %5169, align 8
  store %struct.Memory* %loadMem1_42200f, %struct.Memory** %MEMORY
  %loadMem2_42200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42200f = load i64, i64* %3
  %call2_42200f = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64 %loadPC_42200f, %struct.Memory* %loadMem2_42200f)
  store %struct.Memory* %call2_42200f, %struct.Memory** %MEMORY
  %loadMem_422014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 1
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %5175 to i32*
  %5176 = load i32, i32* %EAX.i138
  %5177 = zext i32 %5176 to i64
  %5178 = load i64, i64* %PC.i137
  %5179 = add i64 %5178, 3
  store i64 %5179, i64* %PC.i137
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5180, align 1
  %5181 = and i32 %5176, 255
  %5182 = call i32 @llvm.ctpop.i32(i32 %5181)
  %5183 = trunc i32 %5182 to i8
  %5184 = and i8 %5183, 1
  %5185 = xor i8 %5184, 1
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5185, i8* %5186, align 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5187, align 1
  %5188 = icmp eq i32 %5176, 0
  %5189 = zext i1 %5188 to i8
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5189, i8* %5190, align 1
  %5191 = lshr i32 %5176, 31
  %5192 = trunc i32 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5192, i8* %5193, align 1
  %5194 = lshr i32 %5176, 31
  %5195 = xor i32 %5191, %5194
  %5196 = add i32 %5195, %5194
  %5197 = icmp eq i32 %5196, 2
  %5198 = zext i1 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5198, i8* %5199, align 1
  store %struct.Memory* %loadMem_422014, %struct.Memory** %MEMORY
  %loadMem_422017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 33
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5202 to i64*
  %5203 = load i64, i64* %PC.i136
  %5204 = add i64 %5203, 63
  %5205 = load i64, i64* %PC.i136
  %5206 = add i64 %5205, 6
  %5207 = load i64, i64* %PC.i136
  %5208 = add i64 %5207, 6
  store i64 %5208, i64* %PC.i136
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5210 = load i8, i8* %5209, align 1
  %5211 = icmp eq i8 %5210, 0
  %5212 = zext i1 %5211 to i8
  store i8 %5212, i8* %BRANCH_TAKEN, align 1
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5214 = select i1 %5211, i64 %5204, i64 %5206
  store i64 %5214, i64* %5213, align 8
  store %struct.Memory* %loadMem_422017, %struct.Memory** %MEMORY
  %loadBr_422017 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422017 = icmp eq i8 %loadBr_422017, 1
  br i1 %cmpBr_422017, label %block_.L_422056, label %block_42201d

block_42201d:                                     ; preds = %block_.L_421ff3
  %loadMem_42201d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 33
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 9
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %ESI.i134 = bitcast %union.anon* %5220 to i32*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 9
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %5223 to i64*
  %5224 = load i64, i64* %RSI.i135
  %5225 = load i32, i32* %ESI.i134
  %5226 = zext i32 %5225 to i64
  %5227 = load i64, i64* %PC.i133
  %5228 = add i64 %5227, 2
  store i64 %5228, i64* %PC.i133
  %5229 = xor i64 %5226, %5224
  %5230 = trunc i64 %5229 to i32
  %5231 = and i64 %5229, 4294967295
  store i64 %5231, i64* %RSI.i135, align 8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5232, align 1
  %5233 = and i32 %5230, 255
  %5234 = call i32 @llvm.ctpop.i32(i32 %5233)
  %5235 = trunc i32 %5234 to i8
  %5236 = and i8 %5235, 1
  %5237 = xor i8 %5236, 1
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5237, i8* %5238, align 1
  %5239 = icmp eq i32 %5230, 0
  %5240 = zext i1 %5239 to i8
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5240, i8* %5241, align 1
  %5242 = lshr i32 %5230, 31
  %5243 = trunc i32 %5242 to i8
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5243, i8* %5244, align 1
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5245, align 1
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5246, align 1
  store %struct.Memory* %loadMem_42201d, %struct.Memory** %MEMORY
  %loadMem_42201f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 11
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RDI.i131 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 15
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %RBP.i132
  %5257 = sub i64 %5256, 8
  %5258 = load i64, i64* %PC.i130
  %5259 = add i64 %5258, 4
  store i64 %5259, i64* %PC.i130
  %5260 = inttoptr i64 %5257 to i64*
  %5261 = load i64, i64* %5260
  store i64 %5261, i64* %RDI.i131, align 8
  store %struct.Memory* %loadMem_42201f, %struct.Memory** %MEMORY
  %loadMem_422023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %5264 to i64*
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5266 = getelementptr inbounds %struct.GPR, %struct.GPR* %5265, i32 0, i32 1
  %5267 = getelementptr inbounds %struct.Reg, %struct.Reg* %5266, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %5267 to i64*
  %5268 = load i64, i64* %PC.i128
  %5269 = add i64 %5268, 5
  store i64 %5269, i64* %PC.i128
  store i64 and (i64 ptrtoint (%G__0x429b24_type* @G__0x429b24 to i64), i64 4294967295), i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_422023, %struct.Memory** %MEMORY
  %loadMem_422028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 1
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %5275 to i32*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 5
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %5278 to i64*
  %5279 = load i32, i32* %EAX.i126
  %5280 = zext i32 %5279 to i64
  %5281 = load i64, i64* %PC.i125
  %5282 = add i64 %5281, 2
  store i64 %5282, i64* %PC.i125
  %5283 = and i64 %5280, 4294967295
  store i64 %5283, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_422028, %struct.Memory** %MEMORY
  %loadMem_42202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 9
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %ESI.i123 = bitcast %union.anon* %5289 to i32*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 15
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %5292 to i64*
  %5293 = load i64, i64* %RBP.i124
  %5294 = sub i64 %5293, 24696
  %5295 = load i32, i32* %ESI.i123
  %5296 = zext i32 %5295 to i64
  %5297 = load i64, i64* %PC.i122
  %5298 = add i64 %5297, 6
  store i64 %5298, i64* %PC.i122
  %5299 = inttoptr i64 %5294 to i32*
  store i32 %5295, i32* %5299
  store %struct.Memory* %loadMem_42202a, %struct.Memory** %MEMORY
  %loadMem_422030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 33
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 5
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 9
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %5308 to i64*
  %5309 = load i64, i64* %RCX.i
  %5310 = load i64, i64* %PC.i120
  %5311 = add i64 %5310, 3
  store i64 %5311, i64* %PC.i120
  store i64 %5309, i64* %RSI.i121, align 8
  store %struct.Memory* %loadMem_422030, %struct.Memory** %MEMORY
  %loadMem1_422033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %PC.i119
  %5316 = add i64 %5315, -136131
  %5317 = load i64, i64* %PC.i119
  %5318 = add i64 %5317, 5
  %5319 = load i64, i64* %PC.i119
  %5320 = add i64 %5319, 5
  store i64 %5320, i64* %PC.i119
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5322 = load i64, i64* %5321, align 8
  %5323 = add i64 %5322, -8
  %5324 = inttoptr i64 %5323 to i64*
  store i64 %5318, i64* %5324
  store i64 %5323, i64* %5321, align 8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5316, i64* %5325, align 8
  store %struct.Memory* %loadMem1_422033, %struct.Memory** %MEMORY
  %loadMem2_422033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422033 = load i64, i64* %3
  %5326 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %loadMem2_422033)
  store %struct.Memory* %5326, %struct.Memory** %MEMORY
  %loadMem_422038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 33
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 11
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %5332 to i64*
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 15
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %5335 to i64*
  %5336 = load i64, i64* %RBP.i115
  %5337 = sub i64 %5336, 24640
  %5338 = load i64, i64* %PC.i113
  %5339 = add i64 %5338, 7
  store i64 %5339, i64* %PC.i113
  %5340 = inttoptr i64 %5337 to i64*
  %5341 = load i64, i64* %5340
  store i64 %5341, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_422038, %struct.Memory** %MEMORY
  %loadMem_42203f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 33
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5344 to i64*
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 9
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 15
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %5350 to i64*
  %5351 = load i64, i64* %RBP.i112
  %5352 = sub i64 %5351, 24696
  %5353 = load i64, i64* %PC.i110
  %5354 = add i64 %5353, 6
  store i64 %5354, i64* %PC.i110
  %5355 = inttoptr i64 %5352 to i32*
  %5356 = load i32, i32* %5355
  %5357 = zext i32 %5356 to i64
  store i64 %5357, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_42203f, %struct.Memory** %MEMORY
  %loadMem_422045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 33
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5360 to i64*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 1
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %5363 to i64*
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 15
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %5366 to i64*
  %5367 = load i64, i64* %RBP.i109
  %5368 = sub i64 %5367, 24704
  %5369 = load i64, i64* %RAX.i108
  %5370 = load i64, i64* %PC.i107
  %5371 = add i64 %5370, 7
  store i64 %5371, i64* %PC.i107
  %5372 = inttoptr i64 %5368 to i64*
  store i64 %5369, i64* %5372
  store %struct.Memory* %loadMem_422045, %struct.Memory** %MEMORY
  %loadMem1_42204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 33
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5375 to i64*
  %5376 = load i64, i64* %PC.i106
  %5377 = add i64 %5376, -88236
  %5378 = load i64, i64* %PC.i106
  %5379 = add i64 %5378, 5
  %5380 = load i64, i64* %PC.i106
  %5381 = add i64 %5380, 5
  store i64 %5381, i64* %PC.i106
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5383 = load i64, i64* %5382, align 8
  %5384 = add i64 %5383, -8
  %5385 = inttoptr i64 %5384 to i64*
  store i64 %5379, i64* %5385
  store i64 %5384, i64* %5382, align 8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5377, i64* %5386, align 8
  store %struct.Memory* %loadMem1_42204c, %struct.Memory** %MEMORY
  %loadMem2_42204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42204c = load i64, i64* %3
  %call2_42204c = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64 %loadPC_42204c, %struct.Memory* %loadMem2_42204c)
  store %struct.Memory* %call2_42204c, %struct.Memory** %MEMORY
  %loadMem_422051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %PC.i105
  %5391 = add i64 %5390, 302
  %5392 = load i64, i64* %PC.i105
  %5393 = add i64 %5392, 5
  store i64 %5393, i64* %PC.i105
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5391, i64* %5394, align 8
  store %struct.Memory* %loadMem_422051, %struct.Memory** %MEMORY
  br label %block_.L_42217f

block_.L_422056:                                  ; preds = %block_.L_421ff3
  %loadMem1_422056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %PC.i104
  %5399 = add i64 %5398, -100214
  %5400 = load i64, i64* %PC.i104
  %5401 = add i64 %5400, 5
  %5402 = load i64, i64* %PC.i104
  %5403 = add i64 %5402, 5
  store i64 %5403, i64* %PC.i104
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5405 = load i64, i64* %5404, align 8
  %5406 = add i64 %5405, -8
  %5407 = inttoptr i64 %5406 to i64*
  store i64 %5401, i64* %5407
  store i64 %5406, i64* %5404, align 8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5399, i64* %5408, align 8
  store %struct.Memory* %loadMem1_422056, %struct.Memory** %MEMORY
  %loadMem2_422056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422056 = load i64, i64* %3
  %call2_422056 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64 %loadPC_422056, %struct.Memory* %loadMem2_422056)
  store %struct.Memory* %call2_422056, %struct.Memory** %MEMORY
  %loadMem_42205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 33
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5411 to i64*
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 1
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %5414 to i32*
  %5415 = load i32, i32* %EAX.i103
  %5416 = zext i32 %5415 to i64
  %5417 = load i64, i64* %PC.i102
  %5418 = add i64 %5417, 3
  store i64 %5418, i64* %PC.i102
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5419, align 1
  %5420 = and i32 %5415, 255
  %5421 = call i32 @llvm.ctpop.i32(i32 %5420)
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5424, i8* %5425, align 1
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5426, align 1
  %5427 = icmp eq i32 %5415, 0
  %5428 = zext i1 %5427 to i8
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5428, i8* %5429, align 1
  %5430 = lshr i32 %5415, 31
  %5431 = trunc i32 %5430 to i8
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5431, i8* %5432, align 1
  %5433 = lshr i32 %5415, 31
  %5434 = xor i32 %5430, %5433
  %5435 = add i32 %5434, %5433
  %5436 = icmp eq i32 %5435, 2
  %5437 = zext i1 %5436 to i8
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5437, i8* %5438, align 1
  store %struct.Memory* %loadMem_42205b, %struct.Memory** %MEMORY
  %loadMem_42205e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %5441 to i64*
  %5442 = load i64, i64* %PC.i101
  %5443 = add i64 %5442, 275
  %5444 = load i64, i64* %PC.i101
  %5445 = add i64 %5444, 6
  %5446 = load i64, i64* %PC.i101
  %5447 = add i64 %5446, 6
  store i64 %5447, i64* %PC.i101
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5449 = load i8, i8* %5448, align 1
  store i8 %5449, i8* %BRANCH_TAKEN, align 1
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5451 = icmp ne i8 %5449, 0
  %5452 = select i1 %5451, i64 %5443, i64 %5445
  store i64 %5452, i64* %5450, align 8
  store %struct.Memory* %loadMem_42205e, %struct.Memory** %MEMORY
  %loadBr_42205e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42205e = icmp eq i8 %loadBr_42205e, 1
  br i1 %cmpBr_42205e, label %block_.L_422171, label %block_422064

block_422064:                                     ; preds = %block_.L_422056
  %loadMem_422064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 11
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %RDI.i99 = bitcast %union.anon* %5458 to i64*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 15
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %5461 to i64*
  %5462 = load i64, i64* %RBP.i100
  %5463 = sub i64 %5462, 24592
  %5464 = load i64, i64* %PC.i98
  %5465 = add i64 %5464, 7
  store i64 %5465, i64* %PC.i98
  store i64 %5463, i64* %RDI.i99, align 8
  store %struct.Memory* %loadMem_422064, %struct.Memory** %MEMORY
  %loadMem_42206b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 15
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %5471 to i64*
  %5472 = load i64, i64* %RBP.i97
  %5473 = sub i64 %5472, 24612
  %5474 = load i64, i64* %PC.i96
  %5475 = add i64 %5474, 10
  store i64 %5475, i64* %PC.i96
  %5476 = inttoptr i64 %5473 to i32*
  store i32 1, i32* %5476
  store %struct.Memory* %loadMem_42206b, %struct.Memory** %MEMORY
  %loadMem_422075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 15
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %RBP.i95
  %5484 = sub i64 %5483, 24604
  %5485 = load i64, i64* %PC.i94
  %5486 = add i64 %5485, 10
  store i64 %5486, i64* %PC.i94
  %5487 = inttoptr i64 %5484 to i32*
  store i32 0, i32* %5487
  store %struct.Memory* %loadMem_422075, %struct.Memory** %MEMORY
  %loadMem1_42207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5490 to i64*
  %5491 = load i64, i64* %PC.i93
  %5492 = add i64 %5491, -107087
  %5493 = load i64, i64* %PC.i93
  %5494 = add i64 %5493, 5
  %5495 = load i64, i64* %PC.i93
  %5496 = add i64 %5495, 5
  store i64 %5496, i64* %PC.i93
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5498 = load i64, i64* %5497, align 8
  %5499 = add i64 %5498, -8
  %5500 = inttoptr i64 %5499 to i64*
  store i64 %5494, i64* %5500
  store i64 %5499, i64* %5497, align 8
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5492, i64* %5501, align 8
  store %struct.Memory* %loadMem1_42207f, %struct.Memory** %MEMORY
  %loadMem2_42207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42207f = load i64, i64* %3
  %call2_42207f = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64 %loadPC_42207f, %struct.Memory* %loadMem2_42207f)
  store %struct.Memory* %call2_42207f, %struct.Memory** %MEMORY
  %loadMem_422084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 33
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 1
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %PC.i91
  %5509 = add i64 %5508, 7
  store i64 %5509, i64* %PC.i91
  %5510 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*)
  %5511 = zext i32 %5510 to i64
  store i64 %5511, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_422084, %struct.Memory** %MEMORY
  %loadMem_42208b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 33
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 1
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %EAX.i89 = bitcast %union.anon* %5517 to i32*
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 15
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %5520 to i64*
  %5521 = load i64, i64* %RBP.i90
  %5522 = sub i64 %5521, 24604
  %5523 = load i32, i32* %EAX.i89
  %5524 = zext i32 %5523 to i64
  %5525 = load i64, i64* %PC.i88
  %5526 = add i64 %5525, 6
  store i64 %5526, i64* %PC.i88
  %5527 = inttoptr i64 %5522 to i32*
  store i32 %5523, i32* %5527
  store %struct.Memory* %loadMem_42208b, %struct.Memory** %MEMORY
  %loadMem_422091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 33
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 15
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RBP.i87
  %5535 = sub i64 %5534, 24596
  %5536 = load i64, i64* %PC.i86
  %5537 = add i64 %5536, 10
  store i64 %5537, i64* %PC.i86
  %5538 = inttoptr i64 %5535 to i32*
  store i32 0, i32* %5538
  store %struct.Memory* %loadMem_422091, %struct.Memory** %MEMORY
  br label %block_.L_42209b

block_.L_42209b:                                  ; preds = %block_.L_422100, %block_422064
  %loadMem_42209b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 1
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 15
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %RBP.i85
  %5549 = sub i64 %5548, 24596
  %5550 = load i64, i64* %PC.i83
  %5551 = add i64 %5550, 6
  store i64 %5551, i64* %PC.i83
  %5552 = inttoptr i64 %5549 to i32*
  %5553 = load i32, i32* %5552
  %5554 = zext i32 %5553 to i64
  store i64 %5554, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_42209b, %struct.Memory** %MEMORY
  %loadMem_4220a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 1
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %5560 to i32*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 15
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %5563 to i64*
  %5564 = load i32, i32* %EAX.i81
  %5565 = zext i32 %5564 to i64
  %5566 = load i64, i64* %RBP.i82
  %5567 = sub i64 %5566, 24604
  %5568 = load i64, i64* %PC.i80
  %5569 = add i64 %5568, 6
  store i64 %5569, i64* %PC.i80
  %5570 = inttoptr i64 %5567 to i32*
  %5571 = load i32, i32* %5570
  %5572 = sub i32 %5564, %5571
  %5573 = icmp ult i32 %5564, %5571
  %5574 = zext i1 %5573 to i8
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5574, i8* %5575, align 1
  %5576 = and i32 %5572, 255
  %5577 = call i32 @llvm.ctpop.i32(i32 %5576)
  %5578 = trunc i32 %5577 to i8
  %5579 = and i8 %5578, 1
  %5580 = xor i8 %5579, 1
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5580, i8* %5581, align 1
  %5582 = xor i32 %5571, %5564
  %5583 = xor i32 %5582, %5572
  %5584 = lshr i32 %5583, 4
  %5585 = trunc i32 %5584 to i8
  %5586 = and i8 %5585, 1
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5586, i8* %5587, align 1
  %5588 = icmp eq i32 %5572, 0
  %5589 = zext i1 %5588 to i8
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5589, i8* %5590, align 1
  %5591 = lshr i32 %5572, 31
  %5592 = trunc i32 %5591 to i8
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5592, i8* %5593, align 1
  %5594 = lshr i32 %5564, 31
  %5595 = lshr i32 %5571, 31
  %5596 = xor i32 %5595, %5594
  %5597 = xor i32 %5591, %5594
  %5598 = add i32 %5597, %5596
  %5599 = icmp eq i32 %5598, 2
  %5600 = zext i1 %5599 to i8
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5600, i8* %5601, align 1
  store %struct.Memory* %loadMem_4220a1, %struct.Memory** %MEMORY
  %loadMem_4220a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 33
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5604 to i64*
  %5605 = load i64, i64* %PC.i79
  %5606 = add i64 %5605, 127
  %5607 = load i64, i64* %PC.i79
  %5608 = add i64 %5607, 6
  %5609 = load i64, i64* %PC.i79
  %5610 = add i64 %5609, 6
  store i64 %5610, i64* %PC.i79
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5612 = load i8, i8* %5611, align 1
  %5613 = icmp ne i8 %5612, 0
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5615 = load i8, i8* %5614, align 1
  %5616 = icmp ne i8 %5615, 0
  %5617 = xor i1 %5613, %5616
  %5618 = xor i1 %5617, true
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %BRANCH_TAKEN, align 1
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5621 = select i1 %5617, i64 %5608, i64 %5606
  store i64 %5621, i64* %5620, align 8
  store %struct.Memory* %loadMem_4220a7, %struct.Memory** %MEMORY
  %loadBr_4220a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4220a7 = icmp eq i8 %loadBr_4220a7, 1
  br i1 %cmpBr_4220a7, label %block_.L_422126, label %block_4220ad

block_4220ad:                                     ; preds = %block_.L_42209b
  %loadMem_4220ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 33
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5624 to i64*
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 11
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %RDI.i77 = bitcast %union.anon* %5627 to i64*
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5629 = getelementptr inbounds %struct.GPR, %struct.GPR* %5628, i32 0, i32 15
  %5630 = getelementptr inbounds %struct.Reg, %struct.Reg* %5629, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %5630 to i64*
  %5631 = load i64, i64* %RBP.i78
  %5632 = sub i64 %5631, 24592
  %5633 = load i64, i64* %PC.i76
  %5634 = add i64 %5633, 7
  store i64 %5634, i64* %PC.i76
  store i64 %5632, i64* %RDI.i77, align 8
  store %struct.Memory* %loadMem_4220ad, %struct.Memory** %MEMORY
  %loadMem_4220b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5637 to i64*
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 9
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %RSI.i74 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 15
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %5643 to i64*
  %5644 = load i64, i64* %RBP.i75
  %5645 = sub i64 %5644, 24596
  %5646 = load i64, i64* %PC.i73
  %5647 = add i64 %5646, 6
  store i64 %5647, i64* %PC.i73
  %5648 = inttoptr i64 %5645 to i32*
  %5649 = load i32, i32* %5648
  %5650 = zext i32 %5649 to i64
  store i64 %5650, i64* %RSI.i74, align 8
  store %struct.Memory* %loadMem_4220b4, %struct.Memory** %MEMORY
  %loadMem1_4220ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5653 to i64*
  %5654 = load i64, i64* %PC.i72
  %5655 = add i64 %5654, -92554
  %5656 = load i64, i64* %PC.i72
  %5657 = add i64 %5656, 5
  %5658 = load i64, i64* %PC.i72
  %5659 = add i64 %5658, 5
  store i64 %5659, i64* %PC.i72
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5661 = load i64, i64* %5660, align 8
  %5662 = add i64 %5661, -8
  %5663 = inttoptr i64 %5662 to i64*
  store i64 %5657, i64* %5663
  store i64 %5662, i64* %5660, align 8
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5655, i64* %5664, align 8
  store %struct.Memory* %loadMem1_4220ba, %struct.Memory** %MEMORY
  %loadMem2_4220ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220ba = load i64, i64* %3
  %call2_4220ba = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64 %loadPC_4220ba, %struct.Memory* %loadMem2_4220ba)
  store %struct.Memory* %call2_4220ba, %struct.Memory** %MEMORY
  %loadMem_4220bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 33
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5667 to i64*
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 7
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5670 to i64*
  %5671 = load i64, i64* %PC.i71
  %5672 = add i64 %5671, 5
  store i64 %5672, i64* %PC.i71
  store i64 1, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4220bf, %struct.Memory** %MEMORY
  %loadMem_4220c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 33
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5675 to i64*
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 11
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %RDI.i69 = bitcast %union.anon* %5678 to i64*
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 15
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5681 to i64*
  %5682 = load i64, i64* %RBP.i70
  %5683 = sub i64 %5682, 24592
  %5684 = load i64, i64* %PC.i68
  %5685 = add i64 %5684, 7
  store i64 %5685, i64* %PC.i68
  store i64 %5683, i64* %RDI.i69, align 8
  store %struct.Memory* %loadMem_4220c4, %struct.Memory** %MEMORY
  %loadMem_4220cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 33
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 9
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %5691 to i64*
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 15
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %5694 to i64*
  %5695 = load i64, i64* %RBP.i67
  %5696 = sub i64 %5695, 24596
  %5697 = load i64, i64* %PC.i65
  %5698 = add i64 %5697, 6
  store i64 %5698, i64* %PC.i65
  %5699 = inttoptr i64 %5696 to i32*
  %5700 = load i32, i32* %5699
  %5701 = zext i32 %5700 to i64
  store i64 %5701, i64* %RSI.i66, align 8
  store %struct.Memory* %loadMem_4220cb, %struct.Memory** %MEMORY
  %loadMem1_4220d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5704 to i64*
  %5705 = load i64, i64* %PC.i64
  %5706 = add i64 %5705, -113233
  %5707 = load i64, i64* %PC.i64
  %5708 = add i64 %5707, 5
  %5709 = load i64, i64* %PC.i64
  %5710 = add i64 %5709, 5
  store i64 %5710, i64* %PC.i64
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5712 = load i64, i64* %5711, align 8
  %5713 = add i64 %5712, -8
  %5714 = inttoptr i64 %5713 to i64*
  store i64 %5708, i64* %5714
  store i64 %5713, i64* %5711, align 8
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5706, i64* %5715, align 8
  store %struct.Memory* %loadMem1_4220d1, %struct.Memory** %MEMORY
  %loadMem2_4220d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220d1 = load i64, i64* %3
  %call2_4220d1 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64 %loadPC_4220d1, %struct.Memory* %loadMem2_4220d1)
  store %struct.Memory* %call2_4220d1, %struct.Memory** %MEMORY
  %loadMem_4220d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 33
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 1
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %5721 to i32*
  %5722 = load i32, i32* %EAX.i63
  %5723 = zext i32 %5722 to i64
  %5724 = load i64, i64* %PC.i62
  %5725 = add i64 %5724, 3
  store i64 %5725, i64* %PC.i62
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5726, align 1
  %5727 = and i32 %5722, 255
  %5728 = call i32 @llvm.ctpop.i32(i32 %5727)
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  %5731 = xor i8 %5730, 1
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5731, i8* %5732, align 1
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5733, align 1
  %5734 = icmp eq i32 %5722, 0
  %5735 = zext i1 %5734 to i8
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5735, i8* %5736, align 1
  %5737 = lshr i32 %5722, 31
  %5738 = trunc i32 %5737 to i8
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5738, i8* %5739, align 1
  %5740 = lshr i32 %5722, 31
  %5741 = xor i32 %5737, %5740
  %5742 = add i32 %5741, %5740
  %5743 = icmp eq i32 %5742, 2
  %5744 = zext i1 %5743 to i8
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5744, i8* %5745, align 1
  store %struct.Memory* %loadMem_4220d6, %struct.Memory** %MEMORY
  %loadMem_4220d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5748 to i64*
  %5749 = load i64, i64* %PC.i61
  %5750 = add i64 %5749, 39
  %5751 = load i64, i64* %PC.i61
  %5752 = add i64 %5751, 6
  %5753 = load i64, i64* %PC.i61
  %5754 = add i64 %5753, 6
  store i64 %5754, i64* %PC.i61
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5756 = load i8, i8* %5755, align 1
  store i8 %5756, i8* %BRANCH_TAKEN, align 1
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5758 = icmp ne i8 %5756, 0
  %5759 = select i1 %5758, i64 %5750, i64 %5752
  store i64 %5759, i64* %5757, align 8
  store %struct.Memory* %loadMem_4220d9, %struct.Memory** %MEMORY
  %loadBr_4220d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4220d9 = icmp eq i8 %loadBr_4220d9, 1
  br i1 %cmpBr_4220d9, label %block_.L_422100, label %block_4220df

block_4220df:                                     ; preds = %block_4220ad
  %loadMem_4220df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 33
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5762 to i64*
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 11
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %RDI.i59 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 15
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5768 to i64*
  %5769 = load i64, i64* %RBP.i60
  %5770 = sub i64 %5769, 24592
  %5771 = load i64, i64* %PC.i58
  %5772 = add i64 %5771, 7
  store i64 %5772, i64* %PC.i58
  store i64 %5770, i64* %RDI.i59, align 8
  store %struct.Memory* %loadMem_4220df, %struct.Memory** %MEMORY
  %loadMem_4220e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 15
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %5778 to i64*
  %5779 = load i64, i64* %RBP.i57
  %5780 = sub i64 %5779, 24612
  %5781 = load i64, i64* %PC.i56
  %5782 = add i64 %5781, 10
  store i64 %5782, i64* %PC.i56
  %5783 = inttoptr i64 %5780 to i32*
  store i32 0, i32* %5783
  store %struct.Memory* %loadMem_4220e6, %struct.Memory** %MEMORY
  %loadMem_4220f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 33
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 9
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %RSI.i54 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 15
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %RBP.i55
  %5794 = sub i64 %5793, 24596
  %5795 = load i64, i64* %PC.i53
  %5796 = add i64 %5795, 6
  store i64 %5796, i64* %PC.i53
  %5797 = inttoptr i64 %5794 to i32*
  %5798 = load i32, i32* %5797
  %5799 = zext i32 %5798 to i64
  store i64 %5799, i64* %RSI.i54, align 8
  store %struct.Memory* %loadMem_4220f0, %struct.Memory** %MEMORY
  %loadMem1_4220f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 33
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5802 to i64*
  %5803 = load i64, i64* %PC.i52
  %5804 = add i64 %5803, -88406
  %5805 = load i64, i64* %PC.i52
  %5806 = add i64 %5805, 5
  %5807 = load i64, i64* %PC.i52
  %5808 = add i64 %5807, 5
  store i64 %5808, i64* %PC.i52
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5810 = load i64, i64* %5809, align 8
  %5811 = add i64 %5810, -8
  %5812 = inttoptr i64 %5811 to i64*
  store i64 %5806, i64* %5812
  store i64 %5811, i64* %5809, align 8
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5804, i64* %5813, align 8
  store %struct.Memory* %loadMem1_4220f6, %struct.Memory** %MEMORY
  %loadMem2_4220f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220f6 = load i64, i64* %3
  %call2_4220f6 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64 %loadPC_4220f6, %struct.Memory* %loadMem2_4220f6)
  store %struct.Memory* %call2_4220f6, %struct.Memory** %MEMORY
  %loadMem_4220fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 33
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5816 to i64*
  %5817 = load i64, i64* %PC.i51
  %5818 = add i64 %5817, 43
  %5819 = load i64, i64* %PC.i51
  %5820 = add i64 %5819, 5
  store i64 %5820, i64* %PC.i51
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5818, i64* %5821, align 8
  store %struct.Memory* %loadMem_4220fb, %struct.Memory** %MEMORY
  br label %block_.L_422126

block_.L_422100:                                  ; preds = %block_4220ad
  %loadMem_422100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 11
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RDI.i49 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 15
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %5830 to i64*
  %5831 = load i64, i64* %RBP.i50
  %5832 = sub i64 %5831, 24592
  %5833 = load i64, i64* %PC.i48
  %5834 = add i64 %5833, 7
  store i64 %5834, i64* %PC.i48
  store i64 %5832, i64* %RDI.i49, align 8
  store %struct.Memory* %loadMem_422100, %struct.Memory** %MEMORY
  %loadMem_422107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 33
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5837 to i64*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 9
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RSI.i46 = bitcast %union.anon* %5840 to i64*
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 15
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5843 to i64*
  %5844 = load i64, i64* %RBP.i47
  %5845 = sub i64 %5844, 24596
  %5846 = load i64, i64* %PC.i45
  %5847 = add i64 %5846, 6
  store i64 %5847, i64* %PC.i45
  %5848 = inttoptr i64 %5845 to i32*
  %5849 = load i32, i32* %5848
  %5850 = zext i32 %5849 to i64
  store i64 %5850, i64* %RSI.i46, align 8
  store %struct.Memory* %loadMem_422107, %struct.Memory** %MEMORY
  %loadMem1_42210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5852 = getelementptr inbounds %struct.GPR, %struct.GPR* %5851, i32 0, i32 33
  %5853 = getelementptr inbounds %struct.Reg, %struct.Reg* %5852, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5853 to i64*
  %5854 = load i64, i64* %PC.i44
  %5855 = add i64 %5854, -88429
  %5856 = load i64, i64* %PC.i44
  %5857 = add i64 %5856, 5
  %5858 = load i64, i64* %PC.i44
  %5859 = add i64 %5858, 5
  store i64 %5859, i64* %PC.i44
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5861 = load i64, i64* %5860, align 8
  %5862 = add i64 %5861, -8
  %5863 = inttoptr i64 %5862 to i64*
  store i64 %5857, i64* %5863
  store i64 %5862, i64* %5860, align 8
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5855, i64* %5864, align 8
  store %struct.Memory* %loadMem1_42210d, %struct.Memory** %MEMORY
  %loadMem2_42210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42210d = load i64, i64* %3
  %call2_42210d = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64 %loadPC_42210d, %struct.Memory* %loadMem2_42210d)
  store %struct.Memory* %call2_42210d, %struct.Memory** %MEMORY
  %loadMem_422112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 33
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5867 to i64*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 1
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 15
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %RBP.i43
  %5875 = sub i64 %5874, 24596
  %5876 = load i64, i64* %PC.i41
  %5877 = add i64 %5876, 6
  store i64 %5877, i64* %PC.i41
  %5878 = inttoptr i64 %5875 to i32*
  %5879 = load i32, i32* %5878
  %5880 = zext i32 %5879 to i64
  store i64 %5880, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_422112, %struct.Memory** %MEMORY
  %loadMem_422118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5883 to i64*
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 1
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %RAX.i40
  %5888 = load i64, i64* %PC.i39
  %5889 = add i64 %5888, 3
  store i64 %5889, i64* %PC.i39
  %5890 = trunc i64 %5887 to i32
  %5891 = add i32 1, %5890
  %5892 = zext i32 %5891 to i64
  store i64 %5892, i64* %RAX.i40, align 8
  %5893 = icmp ult i32 %5891, %5890
  %5894 = icmp ult i32 %5891, 1
  %5895 = or i1 %5893, %5894
  %5896 = zext i1 %5895 to i8
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5896, i8* %5897, align 1
  %5898 = and i32 %5891, 255
  %5899 = call i32 @llvm.ctpop.i32(i32 %5898)
  %5900 = trunc i32 %5899 to i8
  %5901 = and i8 %5900, 1
  %5902 = xor i8 %5901, 1
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5902, i8* %5903, align 1
  %5904 = xor i64 1, %5887
  %5905 = trunc i64 %5904 to i32
  %5906 = xor i32 %5905, %5891
  %5907 = lshr i32 %5906, 4
  %5908 = trunc i32 %5907 to i8
  %5909 = and i8 %5908, 1
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5909, i8* %5910, align 1
  %5911 = icmp eq i32 %5891, 0
  %5912 = zext i1 %5911 to i8
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5912, i8* %5913, align 1
  %5914 = lshr i32 %5891, 31
  %5915 = trunc i32 %5914 to i8
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5915, i8* %5916, align 1
  %5917 = lshr i32 %5890, 31
  %5918 = xor i32 %5914, %5917
  %5919 = add i32 %5918, %5914
  %5920 = icmp eq i32 %5919, 2
  %5921 = zext i1 %5920 to i8
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5921, i8* %5922, align 1
  store %struct.Memory* %loadMem_422118, %struct.Memory** %MEMORY
  %loadMem_42211b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 33
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5925 to i64*
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 1
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5928 to i32*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 15
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5931 to i64*
  %5932 = load i64, i64* %RBP.i38
  %5933 = sub i64 %5932, 24596
  %5934 = load i32, i32* %EAX.i
  %5935 = zext i32 %5934 to i64
  %5936 = load i64, i64* %PC.i37
  %5937 = add i64 %5936, 6
  store i64 %5937, i64* %PC.i37
  %5938 = inttoptr i64 %5933 to i32*
  store i32 %5934, i32* %5938
  store %struct.Memory* %loadMem_42211b, %struct.Memory** %MEMORY
  %loadMem_422121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 33
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5941 to i64*
  %5942 = load i64, i64* %PC.i36
  %5943 = add i64 %5942, -134
  %5944 = load i64, i64* %PC.i36
  %5945 = add i64 %5944, 5
  store i64 %5945, i64* %PC.i36
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5943, i64* %5946, align 8
  store %struct.Memory* %loadMem_422121, %struct.Memory** %MEMORY
  br label %block_.L_42209b

block_.L_422126:                                  ; preds = %block_4220df, %block_.L_42209b
  %loadMem_422126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 15
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5952 to i64*
  %5953 = load i64, i64* %RBP.i35
  %5954 = sub i64 %5953, 24612
  %5955 = load i64, i64* %PC.i34
  %5956 = add i64 %5955, 7
  store i64 %5956, i64* %PC.i34
  %5957 = inttoptr i64 %5954 to i32*
  %5958 = load i32, i32* %5957
  %5959 = sub i32 %5958, 1
  %5960 = icmp ult i32 %5958, 1
  %5961 = zext i1 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5961, i8* %5962, align 1
  %5963 = and i32 %5959, 255
  %5964 = call i32 @llvm.ctpop.i32(i32 %5963)
  %5965 = trunc i32 %5964 to i8
  %5966 = and i8 %5965, 1
  %5967 = xor i8 %5966, 1
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5967, i8* %5968, align 1
  %5969 = xor i32 %5958, 1
  %5970 = xor i32 %5969, %5959
  %5971 = lshr i32 %5970, 4
  %5972 = trunc i32 %5971 to i8
  %5973 = and i8 %5972, 1
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5973, i8* %5974, align 1
  %5975 = icmp eq i32 %5959, 0
  %5976 = zext i1 %5975 to i8
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5976, i8* %5977, align 1
  %5978 = lshr i32 %5959, 31
  %5979 = trunc i32 %5978 to i8
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5979, i8* %5980, align 1
  %5981 = lshr i32 %5958, 31
  %5982 = xor i32 %5978, %5981
  %5983 = add i32 %5982, %5981
  %5984 = icmp eq i32 %5983, 2
  %5985 = zext i1 %5984 to i8
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5985, i8* %5986, align 1
  store %struct.Memory* %loadMem_422126, %struct.Memory** %MEMORY
  %loadMem_42212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %PC.i33
  %5991 = add i64 %5990, 37
  %5992 = load i64, i64* %PC.i33
  %5993 = add i64 %5992, 6
  %5994 = load i64, i64* %PC.i33
  %5995 = add i64 %5994, 6
  store i64 %5995, i64* %PC.i33
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5997 = load i8, i8* %5996, align 1
  %5998 = icmp eq i8 %5997, 0
  %5999 = zext i1 %5998 to i8
  store i8 %5999, i8* %BRANCH_TAKEN, align 1
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6001 = select i1 %5998, i64 %5991, i64 %5993
  store i64 %6001, i64* %6000, align 8
  store %struct.Memory* %loadMem_42212d, %struct.Memory** %MEMORY
  %loadBr_42212d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42212d = icmp eq i8 %loadBr_42212d, 1
  br i1 %cmpBr_42212d, label %block_.L_422152, label %block_422133

block_422133:                                     ; preds = %block_.L_422126
  %loadMem_422133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6004 to i64*
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 9
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %RSI.i32 = bitcast %union.anon* %6007 to i64*
  %6008 = load i64, i64* %PC.i31
  %6009 = add i64 %6008, 10
  store i64 %6009, i64* %PC.i31
  store i64 ptrtoint (%G__0x4294e6_type* @G__0x4294e6 to i64), i64* %RSI.i32, align 8
  store %struct.Memory* %loadMem_422133, %struct.Memory** %MEMORY
  %loadMem_42213d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 33
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6012 to i64*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 11
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %6015 to i64*
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6017 = getelementptr inbounds %struct.GPR, %struct.GPR* %6016, i32 0, i32 15
  %6018 = getelementptr inbounds %struct.Reg, %struct.Reg* %6017, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %6018 to i64*
  %6019 = load i64, i64* %RBP.i30
  %6020 = sub i64 %6019, 8
  %6021 = load i64, i64* %PC.i28
  %6022 = add i64 %6021, 4
  store i64 %6022, i64* %PC.i28
  %6023 = inttoptr i64 %6020 to i64*
  %6024 = load i64, i64* %6023
  store i64 %6024, i64* %RDI.i29, align 8
  store %struct.Memory* %loadMem_42213d, %struct.Memory** %MEMORY
  %loadMem1_422141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6026 = getelementptr inbounds %struct.GPR, %struct.GPR* %6025, i32 0, i32 33
  %6027 = getelementptr inbounds %struct.Reg, %struct.Reg* %6026, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6027 to i64*
  %6028 = load i64, i64* %PC.i27
  %6029 = add i64 %6028, -136065
  %6030 = load i64, i64* %PC.i27
  %6031 = add i64 %6030, 5
  %6032 = load i64, i64* %PC.i27
  %6033 = add i64 %6032, 5
  store i64 %6033, i64* %PC.i27
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6035 = load i64, i64* %6034, align 8
  %6036 = add i64 %6035, -8
  %6037 = inttoptr i64 %6036 to i64*
  store i64 %6031, i64* %6037
  store i64 %6036, i64* %6034, align 8
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6029, i64* %6038, align 8
  store %struct.Memory* %loadMem1_422141, %struct.Memory** %MEMORY
  %loadMem2_422141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422141 = load i64, i64* %3
  %6039 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %loadMem2_422141)
  store %struct.Memory* %6039, %struct.Memory** %MEMORY
  %loadMem_422146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 33
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6042 to i64*
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6044 = getelementptr inbounds %struct.GPR, %struct.GPR* %6043, i32 0, i32 1
  %6045 = getelementptr inbounds %struct.Reg, %struct.Reg* %6044, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6045 to i64*
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 15
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6048 to i64*
  %6049 = load i64, i64* %RBP.i24
  %6050 = sub i64 %6049, 24712
  %6051 = load i64, i64* %RAX.i23
  %6052 = load i64, i64* %PC.i22
  %6053 = add i64 %6052, 7
  store i64 %6053, i64* %PC.i22
  %6054 = inttoptr i64 %6050 to i64*
  store i64 %6051, i64* %6054
  store %struct.Memory* %loadMem_422146, %struct.Memory** %MEMORY
  %loadMem_42214d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 33
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6057 to i64*
  %6058 = load i64, i64* %PC.i21
  %6059 = add i64 %6058, 31
  %6060 = load i64, i64* %PC.i21
  %6061 = add i64 %6060, 5
  store i64 %6061, i64* %PC.i21
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6059, i64* %6062, align 8
  store %struct.Memory* %loadMem_42214d, %struct.Memory** %MEMORY
  br label %block_.L_42216c

block_.L_422152:                                  ; preds = %block_.L_422126
  %loadMem_422152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 33
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6065 to i64*
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 9
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %RSI.i20 = bitcast %union.anon* %6068 to i64*
  %6069 = load i64, i64* %PC.i19
  %6070 = add i64 %6069, 10
  store i64 %6070, i64* %PC.i19
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI.i20, align 8
  store %struct.Memory* %loadMem_422152, %struct.Memory** %MEMORY
  %loadMem_42215c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 33
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6073 to i64*
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 11
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %RDI.i17 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 15
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %6079 to i64*
  %6080 = load i64, i64* %RBP.i18
  %6081 = sub i64 %6080, 8
  %6082 = load i64, i64* %PC.i16
  %6083 = add i64 %6082, 4
  store i64 %6083, i64* %PC.i16
  %6084 = inttoptr i64 %6081 to i64*
  %6085 = load i64, i64* %6084
  store i64 %6085, i64* %RDI.i17, align 8
  store %struct.Memory* %loadMem_42215c, %struct.Memory** %MEMORY
  %loadMem1_422160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 33
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6088 to i64*
  %6089 = load i64, i64* %PC.i15
  %6090 = add i64 %6089, -136096
  %6091 = load i64, i64* %PC.i15
  %6092 = add i64 %6091, 5
  %6093 = load i64, i64* %PC.i15
  %6094 = add i64 %6093, 5
  store i64 %6094, i64* %PC.i15
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6096 = load i64, i64* %6095, align 8
  %6097 = add i64 %6096, -8
  %6098 = inttoptr i64 %6097 to i64*
  store i64 %6092, i64* %6098
  store i64 %6097, i64* %6095, align 8
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6090, i64* %6099, align 8
  store %struct.Memory* %loadMem1_422160, %struct.Memory** %MEMORY
  %loadMem2_422160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422160 = load i64, i64* %3
  %6100 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %loadMem2_422160)
  store %struct.Memory* %6100, %struct.Memory** %MEMORY
  %loadMem_422165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 33
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6103 to i64*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 1
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6106 to i64*
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 15
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6109 to i64*
  %6110 = load i64, i64* %RBP.i11
  %6111 = sub i64 %6110, 24720
  %6112 = load i64, i64* %RAX.i
  %6113 = load i64, i64* %PC.i10
  %6114 = add i64 %6113, 7
  store i64 %6114, i64* %PC.i10
  %6115 = inttoptr i64 %6111 to i64*
  store i64 %6112, i64* %6115
  store %struct.Memory* %loadMem_422165, %struct.Memory** %MEMORY
  br label %block_.L_42216c

block_.L_42216c:                                  ; preds = %block_.L_422152, %block_422133
  %loadMem_42216c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 33
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6118 to i64*
  %6119 = load i64, i64* %PC.i9
  %6120 = add i64 %6119, 5
  %6121 = load i64, i64* %PC.i9
  %6122 = add i64 %6121, 5
  store i64 %6122, i64* %PC.i9
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6120, i64* %6123, align 8
  store %struct.Memory* %loadMem_42216c, %struct.Memory** %MEMORY
  br label %block_.L_422171

block_.L_422171:                                  ; preds = %block_.L_42216c, %block_.L_422056
  %loadMem_422171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 9
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6129 to i32*
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 9
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6132 to i64*
  %6133 = load i64, i64* %RSI.i
  %6134 = load i32, i32* %ESI.i
  %6135 = zext i32 %6134 to i64
  %6136 = load i64, i64* %PC.i8
  %6137 = add i64 %6136, 2
  store i64 %6137, i64* %PC.i8
  %6138 = xor i64 %6135, %6133
  %6139 = trunc i64 %6138 to i32
  %6140 = and i64 %6138, 4294967295
  store i64 %6140, i64* %RSI.i, align 8
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6141, align 1
  %6142 = and i32 %6139, 255
  %6143 = call i32 @llvm.ctpop.i32(i32 %6142)
  %6144 = trunc i32 %6143 to i8
  %6145 = and i8 %6144, 1
  %6146 = xor i8 %6145, 1
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6146, i8* %6147, align 1
  %6148 = icmp eq i32 %6139, 0
  %6149 = zext i1 %6148 to i8
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6149, i8* %6150, align 1
  %6151 = lshr i32 %6139, 31
  %6152 = trunc i32 %6151 to i8
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6152, i8* %6153, align 1
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6154, align 1
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6155, align 1
  store %struct.Memory* %loadMem_422171, %struct.Memory** %MEMORY
  %loadMem_422173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 33
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6158 to i64*
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6160 = getelementptr inbounds %struct.GPR, %struct.GPR* %6159, i32 0, i32 11
  %6161 = getelementptr inbounds %struct.Reg, %struct.Reg* %6160, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6161 to i64*
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 15
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6164 to i64*
  %6165 = load i64, i64* %RBP.i7
  %6166 = sub i64 %6165, 24640
  %6167 = load i64, i64* %PC.i6
  %6168 = add i64 %6167, 7
  store i64 %6168, i64* %PC.i6
  %6169 = inttoptr i64 %6166 to i64*
  %6170 = load i64, i64* %6169
  store i64 %6170, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_422173, %struct.Memory** %MEMORY
  %loadMem1_42217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 33
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6173 to i64*
  %6174 = load i64, i64* %PC.i5
  %6175 = add i64 %6174, -88538
  %6176 = load i64, i64* %PC.i5
  %6177 = add i64 %6176, 5
  %6178 = load i64, i64* %PC.i5
  %6179 = add i64 %6178, 5
  store i64 %6179, i64* %PC.i5
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6181 = load i64, i64* %6180, align 8
  %6182 = add i64 %6181, -8
  %6183 = inttoptr i64 %6182 to i64*
  store i64 %6177, i64* %6183
  store i64 %6182, i64* %6180, align 8
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6175, i64* %6184, align 8
  store %struct.Memory* %loadMem1_42217a, %struct.Memory** %MEMORY
  %loadMem2_42217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42217a = load i64, i64* %3
  %call2_42217a = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64 %loadPC_42217a, %struct.Memory* %loadMem2_42217a)
  store %struct.Memory* %call2_42217a, %struct.Memory** %MEMORY
  br label %block_.L_42217f

block_.L_42217f:                                  ; preds = %block_.L_422171, %block_42201d
  %loadMem_42217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 33
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 13
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6190 to i64*
  %6191 = load i64, i64* %RSP.i
  %6192 = load i64, i64* %PC.i4
  %6193 = add i64 %6192, 7
  store i64 %6193, i64* %PC.i4
  %6194 = add i64 24720, %6191
  store i64 %6194, i64* %RSP.i, align 8
  %6195 = icmp ult i64 %6194, %6191
  %6196 = icmp ult i64 %6194, 24720
  %6197 = or i1 %6195, %6196
  %6198 = zext i1 %6197 to i8
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6198, i8* %6199, align 1
  %6200 = trunc i64 %6194 to i32
  %6201 = and i32 %6200, 255
  %6202 = call i32 @llvm.ctpop.i32(i32 %6201)
  %6203 = trunc i32 %6202 to i8
  %6204 = and i8 %6203, 1
  %6205 = xor i8 %6204, 1
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6205, i8* %6206, align 1
  %6207 = xor i64 24720, %6191
  %6208 = xor i64 %6207, %6194
  %6209 = lshr i64 %6208, 4
  %6210 = trunc i64 %6209 to i8
  %6211 = and i8 %6210, 1
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6211, i8* %6212, align 1
  %6213 = icmp eq i64 %6194, 0
  %6214 = zext i1 %6213 to i8
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6214, i8* %6215, align 1
  %6216 = lshr i64 %6194, 63
  %6217 = trunc i64 %6216 to i8
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6217, i8* %6218, align 1
  %6219 = lshr i64 %6191, 63
  %6220 = xor i64 %6216, %6219
  %6221 = add i64 %6220, %6216
  %6222 = icmp eq i64 %6221, 2
  %6223 = zext i1 %6222 to i8
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6223, i8* %6224, align 1
  store %struct.Memory* %loadMem_42217f, %struct.Memory** %MEMORY
  %loadMem_422186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 33
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6227 to i64*
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 15
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6230 to i64*
  %6231 = load i64, i64* %PC.i2
  %6232 = add i64 %6231, 1
  store i64 %6232, i64* %PC.i2
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6234 = load i64, i64* %6233, align 8
  %6235 = add i64 %6234, 8
  %6236 = inttoptr i64 %6234 to i64*
  %6237 = load i64, i64* %6236
  store i64 %6237, i64* %RBP.i3, align 8
  store i64 %6235, i64* %6233, align 8
  store %struct.Memory* %loadMem_422186, %struct.Memory** %MEMORY
  %loadMem_422187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 33
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %PC.i1
  %6242 = add i64 %6241, 1
  store i64 %6242, i64* %PC.i1
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6245 = load i64, i64* %6244, align 8
  %6246 = inttoptr i64 %6245 to i64*
  %6247 = load i64, i64* %6246
  store i64 %6247, i64* %6243, align 8
  %6248 = add i64 %6245, 8
  store i64 %6248, i64* %6244, align 8
  store %struct.Memory* %loadMem_422187, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_422187
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

define %struct.Memory* @routine_subq__0x6090___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 24720
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 24720
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
  %23 = xor i64 24720, %9
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

define %struct.Memory* @routine_leaq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425890___rdi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4348048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x6028__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24616
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x4__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x602c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24620
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x61__MINUS0x6030__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 97, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425650___rdi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x6030__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movb__dl__MINUS0x6031__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24625
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x6032__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24626
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = xor i32 %25, %28
  %30 = add i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x6040__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24640
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_421a35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429ae5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429ae5_type* @G__0x429ae5 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xc__rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4357664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24626
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6044__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24644
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421ff3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq___rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 1
  %17 = icmp ult i32 %15, 1
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 1
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_421a65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 2
  %17 = icmp ult i32 %15, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 2
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_421ba0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x4__rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xd__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 13
  %17 = icmp ult i32 %15, 13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 13
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_421b0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
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

define %struct.Memory* @routine_jne_.L_421acd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429ae8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429ae8_type* @G__0x429ae8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24626
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x602c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6048__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24648
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421b08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x429af0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429af0_type* @G__0x429af0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xc__rax____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x427e20___r8_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357664
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x604c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24652
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421b9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_421b53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429b12___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429b12_type* @G__0x429b12 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24625
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6050__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24656
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421b96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x429aed___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429aed_type* @G__0x429aed to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xc__rax____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x427e20___r9_4____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357664
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6054__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24660
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421fee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
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

define %struct.Memory* @routine_je_.L_421c13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
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

define %struct.Memory* @routine_je_.L_421bd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
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

define %struct.Memory* @routine_jne_.L_421bf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429afa___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429afa_type* @G__0x429afa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6058__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24664
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421c0e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x429af8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429af8_type* @G__0x429af8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x605c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24668
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421fe9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x6020__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x6018__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gen(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24600
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.in_check(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6038__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24632
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x6014__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24600
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

define %struct.Memory* @routine_jge_.L_421d6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x6014__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jne_.L_421d53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x866540___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x866540___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RCX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 8807744
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %12, %20
  %22 = icmp ult i32 %12, %20
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, %12
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %12, 31
  %44 = lshr i32 %20, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %12, %18
  %20 = icmp ult i32 %12, %18
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %19, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %18, %12
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %18, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_421d53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.make(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x6038__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.check_legal(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_421d41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.unmake(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x6020__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24608
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421d6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_421d58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421c55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x6020__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_421f3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_421e65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x6020__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425650___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x425650___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RCX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 4347472
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %12, %20
  %22 = icmp ult i32 %12, %20
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, %12
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %12, 31
  %44 = lshr i32 %20, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_421e17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429afe___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429afe_type* @G__0x429afe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24625
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24626
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = sext i8 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6060__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24672
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421e60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x429b07___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429b07_type* @G__0x429b07 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6028__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6064__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24676
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421f38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_421eea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429b10___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429b10_type* @G__0x429b10 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6068__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24680
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421f33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x429b1a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429b1a_type* @G__0x429b1a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x606c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421fe4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_421f9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x429b00___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x429b00_type* @G__0x429b00 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6070__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421fdf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6074__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24692
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_422056(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x429b24___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 and (i64 ptrtoint (%G__0x429b24_type* @G__0x429b24 to i64), i64 4294967295), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x6078__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24696
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x6078__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x6080__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24704
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42217f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_422171(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x6024__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24604
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24604
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x601c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24604
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

define %struct.Memory* @routine_jge_.L_422126(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_422100(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x6024__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_422126(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42209b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x6024__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_422152(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4294e6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4294e6_type* @G__0x4294e6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strcat_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x6088__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24712
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42216c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x428998___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x6090__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24720
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_422171(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x6090___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 24720, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 24720
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
  %25 = xor i64 24720, %9
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
