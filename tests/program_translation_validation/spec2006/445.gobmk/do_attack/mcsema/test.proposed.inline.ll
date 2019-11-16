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
%G_0x7ae43c_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xb54ce0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57cd72_type = type <{ [8 x i8] }>
%G__0x57dee3_type = type <{ [8 x i8] }>
%G__0x57e4fc_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fbc3_type = type <{ [8 x i8] }>
%G__0x57fbe2_type = type <{ [8 x i8] }>
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
@G_0x7ae43c = global %G_0x7ae43c_type zeroinitializer
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xb54ce0 = global %G_0xb54ce0_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xb8b854 = global %G_0xb8b854_type zeroinitializer
@G__0x57cd72 = global %G__0x57cd72_type zeroinitializer
@G__0x57dee3 = global %G__0x57dee3_type zeroinitializer
@G__0x57e4fc = global %G__0x57e4fc_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fbc3 = global %G__0x57fbc3_type zeroinitializer
@G__0x57fbe2 = global %G__0x57fbe2_type zeroinitializer

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

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417230.get_read_result(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45e170.attack1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45e4f0.simple_ladder_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45eaa0.attack2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45ff40.attack3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_461390.attack4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @do_attack(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_45dce0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_45dce0, %struct.Memory** %MEMORY
  %loadMem_45dce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i108 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i108
  %27 = load i64, i64* %PC.i107
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i107
  store i64 %26, i64* %RBP.i109, align 8
  store %struct.Memory* %loadMem_45dce1, %struct.Memory** %MEMORY
  %loadMem_45dce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i126 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i126
  %36 = load i64, i64* %PC.i125
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i125
  %38 = sub i64 %35, 240
  store i64 %38, i64* %RSP.i126, align 8
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
  store %struct.Memory* %loadMem_45dce4, %struct.Memory** %MEMORY
  %loadMem_45dceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i413
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i413
  store i64 ptrtoint (%G__0x57e4fc_type* @G__0x57e4fc to i64), i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_45dceb, %struct.Memory** %MEMORY
  %loadMem_45dcf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i474
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i473
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i473
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_45dcf5, %struct.Memory** %MEMORY
  %loadMem_45dcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i491 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i492
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i491
  %103 = load i64, i64* %PC.i490
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i490
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_45dcf8, %struct.Memory** %MEMORY
  %loadMem_45dcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %EDX.i547 = bitcast %union.anon* %111 to i32*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i548
  %116 = sub i64 %115, 20
  %117 = load i32, i32* %EDX.i547
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC.i546
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i546
  %121 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %121
  store %struct.Memory* %loadMem_45dcfc, %struct.Memory** %MEMORY
  %loadMem_45dcff = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %ECX.i544 = bitcast %union.anon* %127 to i32*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i545
  %132 = sub i64 %131, 24
  %133 = load i32, i32* %ECX.i544
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %PC.i543
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC.i543
  %137 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %137
  store %struct.Memory* %loadMem_45dcff, %struct.Memory** %MEMORY
  %loadMem_45dd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 9
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RSI.i541 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i542
  %148 = sub i64 %147, 8
  %149 = load i64, i64* %PC.i540
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC.i540
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RSI.i541, align 8
  store %struct.Memory* %loadMem_45dd02, %struct.Memory** %MEMORY
  %loadMem_45dd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RSI.i539 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RSI.i539
  %164 = add i64 %163, 12099168
  %165 = load i64, i64* %PC.i537
  %166 = add i64 %165, 8
  store i64 %166, i64* %PC.i537
  %167 = inttoptr i64 %164 to i8*
  %168 = load i8, i8* %167
  %169 = zext i8 %168 to i64
  store i64 %169, i64* %RCX.i538, align 8
  store %struct.Memory* %loadMem_45dd06, %struct.Memory** %MEMORY
  %loadMem_45dd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %ECX.i535 = bitcast %union.anon* %175 to i32*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RBP.i536
  %180 = sub i64 %179, 28
  %181 = load i32, i32* %ECX.i535
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %PC.i534
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC.i534
  %185 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %185
  store %struct.Memory* %loadMem_45dd0e, %struct.Memory** %MEMORY
  %loadMem_45dd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %RBP.i533
  %193 = sub i64 %192, 40
  %194 = load i64, i64* %PC.i532
  %195 = add i64 %194, 7
  store i64 %195, i64* %PC.i532
  %196 = inttoptr i64 %193 to i32*
  store i32 0, i32* %196
  store %struct.Memory* %loadMem_45dd11, %struct.Memory** %MEMORY
  %loadMem_45dd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RBP.i531
  %204 = sub i64 %203, 56
  %205 = load i64, i64* %PC.i530
  %206 = add i64 %205, 8
  store i64 %206, i64* %PC.i530
  %207 = inttoptr i64 %204 to i64*
  store i64 0, i64* %207
  store %struct.Memory* %loadMem_45dd18, %struct.Memory** %MEMORY
  %loadMem_45dd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 15
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %RBP.i529
  %218 = sub i64 %217, 64
  %219 = load i64, i64* %RAX.i528
  %220 = load i64, i64* %PC.i527
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC.i527
  %222 = inttoptr i64 %218 to i64*
  store i64 %219, i64* %222
  store %struct.Memory* %loadMem_45dd20, %struct.Memory** %MEMORY
  %loadMem_45dd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RBP.i526
  %233 = sub i64 %232, 8
  %234 = load i64, i64* %PC.i524
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC.i524
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_45dd24, %struct.Memory** %MEMORY
  %loadMem_45dd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %ECX.i522 = bitcast %union.anon* %244 to i32*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 15
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RBP.i523
  %249 = sub i64 %248, 68
  %250 = load i32, i32* %ECX.i522
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %PC.i521
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC.i521
  %254 = inttoptr i64 %249 to i32*
  store i32 %250, i32* %254
  store %struct.Memory* %loadMem_45dd27, %struct.Memory** %MEMORY
  %loadMem_45dd2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i520
  %262 = sub i64 %261, 28
  %263 = load i64, i64* %PC.i519
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC.i519
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %267, align 1
  %268 = and i32 %266, 255
  %269 = call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %272, i8* %273, align 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %274, align 1
  %275 = icmp eq i32 %266, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1
  %278 = lshr i32 %266, 31
  %279 = trunc i32 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %279, i8* %280, align 1
  %281 = lshr i32 %266, 31
  %282 = xor i32 %278, %281
  %283 = add i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %285, i8* %286, align 1
  store %struct.Memory* %loadMem_45dd2a, %struct.Memory** %MEMORY
  %loadMem_45dd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %PC.i518
  %291 = add i64 %290, 11
  %292 = load i64, i64* %PC.i518
  %293 = add i64 %292, 6
  %294 = load i64, i64* %PC.i518
  %295 = add i64 %294, 6
  store i64 %295, i64* %PC.i518
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %297 = load i8, i8* %296, align 1
  store i8 %297, i8* %BRANCH_TAKEN, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %299 = icmp ne i8 %297, 0
  %300 = select i1 %299, i64 %291, i64 %293
  store i64 %300, i64* %298, align 8
  store %struct.Memory* %loadMem_45dd2e, %struct.Memory** %MEMORY
  %loadBr_45dd2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dd2e = icmp eq i8 %loadBr_45dd2e, 1
  br i1 %cmpBr_45dd2e, label %block_.L_45dd39, label %block_45dd34

block_45dd34:                                     ; preds = %entry
  %loadMem_45dd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %PC.i517
  %305 = add i64 %304, 118
  %306 = load i64, i64* %PC.i517
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC.i517
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %305, i64* %308, align 8
  store %struct.Memory* %loadMem_45dd34, %struct.Memory** %MEMORY
  br label %block_.L_45ddaa

block_.L_45dd39:                                  ; preds = %entry
  %loadMem_45dd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 11
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RDI.i516 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %PC.i515
  %316 = add i64 %315, 10
  store i64 %316, i64* %PC.i515
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i516, align 8
  store %struct.Memory* %loadMem_45dd39, %struct.Memory** %MEMORY
  %loadMem_45dd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 9
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RSI.i514 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i513
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC.i513
  store i64 2298, i64* %RSI.i514, align 8
  store %struct.Memory* %loadMem_45dd43, %struct.Memory** %MEMORY
  %loadMem_45dd48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %PC.i511
  %332 = add i64 %331, 10
  store i64 %332, i64* %PC.i511
  store i64 ptrtoint (%G__0x57cd72_type* @G__0x57cd72 to i64), i64* %RDX.i512, align 8
  store %struct.Memory* %loadMem_45dd48, %struct.Memory** %MEMORY
  %loadMem_45dd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %PC.i509
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC.i509
  store i64 20, i64* %RAX.i510, align 8
  store %struct.Memory* %loadMem_45dd52, %struct.Memory** %MEMORY
  %loadMem_45dd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RBP.i508
  %351 = sub i64 %350, 8
  %352 = load i64, i64* %PC.i506
  %353 = add i64 %352, 3
  store i64 %353, i64* %PC.i506
  %354 = inttoptr i64 %351 to i32*
  %355 = load i32, i32* %354
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_45dd57, %struct.Memory** %MEMORY
  %loadMem_45dd5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %EAX.i504 = bitcast %union.anon* %362 to i32*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 15
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RBP.i505
  %367 = sub i64 %366, 180
  %368 = load i32, i32* %EAX.i504
  %369 = zext i32 %368 to i64
  %370 = load i64, i64* %PC.i503
  %371 = add i64 %370, 6
  store i64 %371, i64* %PC.i503
  %372 = inttoptr i64 %367 to i32*
  store i32 %368, i32* %372
  store %struct.Memory* %loadMem_45dd5a, %struct.Memory** %MEMORY
  %loadMem_45dd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %ECX.i501 = bitcast %union.anon* %378 to i32*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %381 to i64*
  %382 = load i32, i32* %ECX.i501
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %PC.i500
  %385 = add i64 %384, 2
  store i64 %385, i64* %PC.i500
  %386 = and i64 %383, 4294967295
  store i64 %386, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_45dd60, %struct.Memory** %MEMORY
  %loadMem_45dd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RBP.i499
  %397 = sub i64 %396, 192
  %398 = load i64, i64* %RDX.i498
  %399 = load i64, i64* %PC.i497
  %400 = add i64 %399, 7
  store i64 %400, i64* %PC.i497
  %401 = inttoptr i64 %397 to i64*
  store i64 %398, i64* %401
  store %struct.Memory* %loadMem_45dd62, %struct.Memory** %MEMORY
  %loadMem_45dd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i496
  %406 = add i64 %405, 1
  store i64 %406, i64* %PC.i496
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %409 = bitcast %union.anon* %408 to i32*
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = lshr i64 %411, 32
  store i64 %412, i64* %407, align 8
  store %struct.Memory* %loadMem_45dd69, %struct.Memory** %MEMORY
  %loadMem_45dd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 15
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %RBP.i495
  %423 = sub i64 %422, 180
  %424 = load i64, i64* %PC.i493
  %425 = add i64 %424, 6
  store i64 %425, i64* %PC.i493
  %426 = inttoptr i64 %423 to i32*
  %427 = load i32, i32* %426
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_45dd6a, %struct.Memory** %MEMORY
  %loadMem_45dd70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 5
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %ECX.i488 = bitcast %union.anon* %434 to i32*
  %435 = load i32, i32* %ECX.i488
  %436 = zext i32 %435 to i64
  %437 = load i64, i64* %PC.i487
  %438 = add i64 %437, 2
  store i64 %438, i64* %PC.i487
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

; <label>:455:                                    ; preds = %block_.L_45dd39
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %457, %struct.Memory* %loadMem_45dd70)
  br label %routine_idivl__ecx.exit489

; <label>:459:                                    ; preds = %block_.L_45dd39
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
  br label %routine_idivl__ecx.exit489

routine_idivl__ecx.exit489:                       ; preds = %455, %459
  %471 = phi %struct.Memory* [ %458, %455 ], [ %loadMem_45dd70, %459 ]
  store %struct.Memory* %471, %struct.Memory** %MEMORY
  %loadMem_45dd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RAX.i486
  %479 = load i64, i64* %PC.i485
  %480 = add i64 %479, 3
  store i64 %480, i64* %PC.i485
  %481 = trunc i64 %478 to i32
  %482 = sub i32 %481, 1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX.i486, align 8
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
  store %struct.Memory* %loadMem_45dd72, %struct.Memory** %MEMORY
  %loadMem_45dd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 17
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %R8D.i483 = bitcast %union.anon* %517 to i32*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 15
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %520 to i64*
  %521 = bitcast i32* %R8D.i483 to i64*
  %522 = load i64, i64* %RBP.i484
  %523 = sub i64 %522, 8
  %524 = load i64, i64* %PC.i482
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC.i482
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %521, align 8
  store %struct.Memory* %loadMem_45dd75, %struct.Memory** %MEMORY
  %loadMem_45dd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %EAX.i480 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i481
  %539 = sub i64 %538, 196
  %540 = load i32, i32* %EAX.i480
  %541 = zext i32 %540 to i64
  %542 = load i64, i64* %PC.i479
  %543 = add i64 %542, 6
  store i64 %543, i64* %PC.i479
  %544 = inttoptr i64 %539 to i32*
  store i32 %540, i32* %544
  store %struct.Memory* %loadMem_45dd79, %struct.Memory** %MEMORY
  %loadMem_45dd7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 17
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %R8D.i477 = bitcast %union.anon* %550 to i32*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %553 to i64*
  %554 = load i32, i32* %R8D.i477
  %555 = zext i32 %554 to i64
  %556 = load i64, i64* %PC.i476
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i476
  %558 = and i64 %555, 4294967295
  store i64 %558, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_45dd7f, %struct.Memory** %MEMORY
  %loadMem_45dd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %PC.i475
  %563 = add i64 %562, 1
  store i64 %563, i64* %PC.i475
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %566 = bitcast %union.anon* %565 to i32*
  %567 = load i32, i32* %566, align 8
  %568 = sext i32 %567 to i64
  %569 = lshr i64 %568, 32
  store i64 %569, i64* %564, align 8
  store %struct.Memory* %loadMem_45dd82, %struct.Memory** %MEMORY
  %loadMem_45dd83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 33
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 5
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %ECX.i471 = bitcast %union.anon* %575 to i32*
  %576 = load i32, i32* %ECX.i471
  %577 = zext i32 %576 to i64
  %578 = load i64, i64* %PC.i470
  %579 = add i64 %578, 2
  store i64 %579, i64* %PC.i470
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

; <label>:596:                                    ; preds = %routine_idivl__ecx.exit489
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %598, %struct.Memory* %loadMem_45dd83)
  br label %routine_idivl__ecx.exit472

; <label>:600:                                    ; preds = %routine_idivl__ecx.exit489
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
  br label %routine_idivl__ecx.exit472

routine_idivl__ecx.exit472:                       ; preds = %596, %600
  %612 = phi %struct.Memory* [ %599, %596 ], [ %loadMem_45dd83, %600 ]
  store %struct.Memory* %612, %struct.Memory** %MEMORY
  %loadMem_45dd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 7
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %RDX.i469
  %620 = load i64, i64* %PC.i468
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i468
  %622 = trunc i64 %619 to i32
  %623 = sub i32 %622, 1
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i469, align 8
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
  store %struct.Memory* %loadMem_45dd85, %struct.Memory** %MEMORY
  %loadMem_45dd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 15
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 19
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %R9.i467 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RBP.i466
  %663 = sub i64 %662, 192
  %664 = load i64, i64* %PC.i465
  %665 = add i64 %664, 7
  store i64 %665, i64* %PC.i465
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666
  store i64 %667, i64* %R9.i467, align 8
  store %struct.Memory* %loadMem_45dd88, %struct.Memory** %MEMORY
  %loadMem_45dd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %EDX.i463 = bitcast %union.anon* %673 to i32*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i464
  %678 = sub i64 %677, 200
  %679 = load i32, i32* %EDX.i463
  %680 = zext i32 %679 to i64
  %681 = load i64, i64* %PC.i462
  %682 = add i64 %681, 6
  store i64 %682, i64* %PC.i462
  %683 = inttoptr i64 %678 to i32*
  store i32 %679, i32* %683
  store %struct.Memory* %loadMem_45dd8f, %struct.Memory** %MEMORY
  %loadMem_45dd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 7
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RDX.i460 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 19
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %R9.i461 = bitcast %union.anon* %692 to i64*
  %693 = load i64, i64* %R9.i461
  %694 = load i64, i64* %PC.i459
  %695 = add i64 %694, 3
  store i64 %695, i64* %PC.i459
  store i64 %693, i64* %RDX.i460, align 8
  store %struct.Memory* %loadMem_45dd95, %struct.Memory** %MEMORY
  %loadMem_45dd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 5
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 15
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RBP.i458
  %706 = sub i64 %705, 196
  %707 = load i64, i64* %PC.i456
  %708 = add i64 %707, 6
  store i64 %708, i64* %PC.i456
  %709 = inttoptr i64 %706 to i32*
  %710 = load i32, i32* %709
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_45dd98, %struct.Memory** %MEMORY
  %loadMem_45dd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 17
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %R8D.i454 = bitcast %union.anon* %717 to i32*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %720 to i64*
  %721 = bitcast i32* %R8D.i454 to i64*
  %722 = load i64, i64* %RBP.i455
  %723 = sub i64 %722, 200
  %724 = load i64, i64* %PC.i453
  %725 = add i64 %724, 7
  store i64 %725, i64* %PC.i453
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %721, align 8
  store %struct.Memory* %loadMem_45dd9e, %struct.Memory** %MEMORY
  %loadMem1_45dda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i452
  %733 = add i64 %732, -48405
  %734 = load i64, i64* %PC.i452
  %735 = add i64 %734, 5
  %736 = load i64, i64* %PC.i452
  %737 = add i64 %736, 5
  store i64 %737, i64* %PC.i452
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = add i64 %739, -8
  %741 = inttoptr i64 %740 to i64*
  store i64 %735, i64* %741
  store i64 %740, i64* %738, align 8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %733, i64* %742, align 8
  store %struct.Memory* %loadMem1_45dda5, %struct.Memory** %MEMORY
  %loadMem2_45dda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45dda5 = load i64, i64* %3
  %call2_45dda5 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_45dda5, %struct.Memory* %loadMem2_45dda5)
  store %struct.Memory* %call2_45dda5, %struct.Memory** %MEMORY
  br label %block_.L_45ddaa

block_.L_45ddaa:                                  ; preds = %routine_idivl__ecx.exit472, %block_45dd34
  %loadMem_45ddaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 15
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i451
  %750 = sub i64 %749, 28
  %751 = load i64, i64* %PC.i450
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC.i450
  %753 = inttoptr i64 %750 to i32*
  %754 = load i32, i32* %753
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %755, align 1
  %756 = and i32 %754, 255
  %757 = call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %760, i8* %761, align 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %762, align 1
  %763 = icmp eq i32 %754, 0
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %764, i8* %765, align 1
  %766 = lshr i32 %754, 31
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1
  %769 = lshr i32 %754, 31
  %770 = xor i32 %766, %769
  %771 = add i32 %770, %769
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %773, i8* %774, align 1
  store %struct.Memory* %loadMem_45ddaa, %struct.Memory** %MEMORY
  %loadMem_45ddae = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %PC.i449
  %779 = add i64 %778, 18
  %780 = load i64, i64* %PC.i449
  %781 = add i64 %780, 6
  %782 = load i64, i64* %PC.i449
  %783 = add i64 %782, 6
  store i64 %783, i64* %PC.i449
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %785 = load i8, i8* %784, align 1
  %786 = icmp eq i8 %785, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %BRANCH_TAKEN, align 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %789 = select i1 %786, i64 %779, i64 %781
  store i64 %789, i64* %788, align 8
  store %struct.Memory* %loadMem_45ddae, %struct.Memory** %MEMORY
  %loadBr_45ddae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ddae = icmp eq i8 %loadBr_45ddae, 1
  br i1 %cmpBr_45ddae, label %block_.L_45ddc0, label %block_45ddb4

block_45ddb4:                                     ; preds = %block_.L_45ddaa
  %loadMem_45ddb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 15
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RBP.i448
  %797 = sub i64 %796, 4
  %798 = load i64, i64* %PC.i447
  %799 = add i64 %798, 7
  store i64 %799, i64* %PC.i447
  %800 = inttoptr i64 %797 to i32*
  store i32 0, i32* %800
  store %struct.Memory* %loadMem_45ddb4, %struct.Memory** %MEMORY
  %loadMem_45ddbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %PC.i446
  %805 = add i64 %804, 924
  %806 = load i64, i64* %PC.i446
  %807 = add i64 %806, 5
  store i64 %807, i64* %PC.i446
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %805, i64* %808, align 8
  store %struct.Memory* %loadMem_45ddbb, %struct.Memory** %MEMORY
  br label %block_.L_45e157

block_.L_45ddc0:                                  ; preds = %block_.L_45ddaa
  %loadMem_45ddc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 11
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RDI.i444 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 15
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %RBP.i445
  %819 = sub i64 %818, 8
  %820 = load i64, i64* %PC.i443
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC.i443
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RDI.i444, align 8
  store %struct.Memory* %loadMem_45ddc0, %struct.Memory** %MEMORY
  %loadMem1_45ddc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %PC.i442
  %829 = add i64 %828, -321091
  %830 = load i64, i64* %PC.i442
  %831 = add i64 %830, 5
  %832 = load i64, i64* %PC.i442
  %833 = add i64 %832, 5
  store i64 %833, i64* %PC.i442
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %835 = load i64, i64* %834, align 8
  %836 = add i64 %835, -8
  %837 = inttoptr i64 %836 to i64*
  store i64 %831, i64* %837
  store i64 %836, i64* %834, align 8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %829, i64* %838, align 8
  store %struct.Memory* %loadMem1_45ddc3, %struct.Memory** %MEMORY
  %loadMem2_45ddc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ddc3 = load i64, i64* %3
  %call2_45ddc3 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_45ddc3, %struct.Memory* %loadMem2_45ddc3)
  store %struct.Memory* %call2_45ddc3, %struct.Memory** %MEMORY
  %loadMem_45ddc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 1
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %844 to i32*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 15
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %847 to i64*
  %848 = load i64, i64* %RBP.i441
  %849 = sub i64 %848, 36
  %850 = load i32, i32* %EAX.i440
  %851 = zext i32 %850 to i64
  %852 = load i64, i64* %PC.i439
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i439
  %854 = inttoptr i64 %849 to i32*
  store i32 %850, i32* %854
  store %struct.Memory* %loadMem_45ddc8, %struct.Memory** %MEMORY
  %loadMem_45ddcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 15
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %RBP.i438
  %862 = sub i64 %861, 36
  %863 = load i64, i64* %PC.i437
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC.i437
  %865 = inttoptr i64 %862 to i32*
  %866 = load i32, i32* %865
  %867 = sub i32 %866, 4
  %868 = icmp ult i32 %866, 4
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %869, i8* %870, align 1
  %871 = and i32 %867, 255
  %872 = call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %875, i8* %876, align 1
  %877 = xor i32 %866, 4
  %878 = xor i32 %877, %867
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %881, i8* %882, align 1
  %883 = icmp eq i32 %867, 0
  %884 = zext i1 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %884, i8* %885, align 1
  %886 = lshr i32 %867, 31
  %887 = trunc i32 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %887, i8* %888, align 1
  %889 = lshr i32 %866, 31
  %890 = xor i32 %886, %889
  %891 = add i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %893, i8* %894, align 1
  store %struct.Memory* %loadMem_45ddcb, %struct.Memory** %MEMORY
  %loadMem_45ddcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %PC.i436
  %899 = add i64 %898, 36
  %900 = load i64, i64* %PC.i436
  %901 = add i64 %900, 6
  %902 = load i64, i64* %PC.i436
  %903 = add i64 %902, 6
  store i64 %903, i64* %PC.i436
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %905 = load i8, i8* %904, align 1
  %906 = icmp eq i8 %905, 0
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %908 = load i8, i8* %907, align 1
  %909 = icmp ne i8 %908, 0
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %911 = load i8, i8* %910, align 1
  %912 = icmp ne i8 %911, 0
  %913 = xor i1 %909, %912
  %914 = xor i1 %913, true
  %915 = and i1 %906, %914
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %BRANCH_TAKEN, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %918 = select i1 %915, i64 %899, i64 %901
  store i64 %918, i64* %917, align 8
  store %struct.Memory* %loadMem_45ddcf, %struct.Memory** %MEMORY
  %loadBr_45ddcf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ddcf = icmp eq i8 %loadBr_45ddcf, 1
  br i1 %cmpBr_45ddcf, label %block_.L_45ddf3, label %block_45ddd5

block_45ddd5:                                     ; preds = %block_.L_45ddc0
  %loadMem_45ddd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i435
  %926 = sub i64 %925, 36
  %927 = load i64, i64* %PC.i434
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC.i434
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929
  %931 = sub i32 %930, 4
  %932 = icmp ult i32 %930, 4
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %933, i8* %934, align 1
  %935 = and i32 %931, 255
  %936 = call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %939, i8* %940, align 1
  %941 = xor i32 %930, 4
  %942 = xor i32 %941, %931
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %945, i8* %946, align 1
  %947 = icmp eq i32 %931, 0
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %948, i8* %949, align 1
  %950 = lshr i32 %931, 31
  %951 = trunc i32 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %951, i8* %952, align 1
  %953 = lshr i32 %930, 31
  %954 = xor i32 %950, %953
  %955 = add i32 %954, %953
  %956 = icmp eq i32 %955, 2
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %957, i8* %958, align 1
  store %struct.Memory* %loadMem_45ddd5, %struct.Memory** %MEMORY
  %loadMem_45ddd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %PC.i433
  %963 = add i64 %962, 142
  %964 = load i64, i64* %PC.i433
  %965 = add i64 %964, 6
  %966 = load i64, i64* %PC.i433
  %967 = add i64 %966, 6
  store i64 %967, i64* %PC.i433
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %969 = load i8, i8* %968, align 1
  %970 = icmp eq i8 %969, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %BRANCH_TAKEN, align 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %973 = select i1 %970, i64 %963, i64 %965
  store i64 %973, i64* %972, align 8
  store %struct.Memory* %loadMem_45ddd9, %struct.Memory** %MEMORY
  %loadBr_45ddd9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ddd9 = icmp eq i8 %loadBr_45ddd9, 1
  br i1 %cmpBr_45ddd9, label %block_.L_45de67, label %block_45dddf

block_45dddf:                                     ; preds = %block_45ddd5
  %loadMem_45dddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %PC.i431
  %981 = add i64 %980, 7
  store i64 %981, i64* %PC.i431
  %982 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_45dddf, %struct.Memory** %MEMORY
  %loadMem_45dde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 1
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %989 to i32*
  %990 = load i32, i32* %EAX.i430
  %991 = zext i32 %990 to i64
  %992 = load i64, i64* %PC.i429
  %993 = add i64 %992, 7
  store i64 %993, i64* %PC.i429
  %994 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  %995 = sub i32 %990, %994
  %996 = icmp ult i32 %990, %994
  %997 = zext i1 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %997, i8* %998, align 1
  %999 = and i32 %995, 255
  %1000 = call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1003, i8* %1004, align 1
  %1005 = xor i32 %994, %990
  %1006 = xor i32 %1005, %995
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1009, i8* %1010, align 1
  %1011 = icmp eq i32 %995, 0
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1012, i8* %1013, align 1
  %1014 = lshr i32 %995, 31
  %1015 = trunc i32 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1015, i8* %1016, align 1
  %1017 = lshr i32 %990, 31
  %1018 = lshr i32 %994, 31
  %1019 = xor i32 %1018, %1017
  %1020 = xor i32 %1014, %1017
  %1021 = add i32 %1020, %1019
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1023, i8* %1024, align 1
  store %struct.Memory* %loadMem_45dde6, %struct.Memory** %MEMORY
  %loadMem_45dded = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %PC.i428
  %1029 = add i64 %1028, 122
  %1030 = load i64, i64* %PC.i428
  %1031 = add i64 %1030, 6
  %1032 = load i64, i64* %PC.i428
  %1033 = add i64 %1032, 6
  store i64 %1033, i64* %PC.i428
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1035 = load i8, i8* %1034, align 1
  %1036 = icmp ne i8 %1035, 0
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1038 = load i8, i8* %1037, align 1
  %1039 = icmp ne i8 %1038, 0
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1041 = load i8, i8* %1040, align 1
  %1042 = icmp ne i8 %1041, 0
  %1043 = xor i1 %1039, %1042
  %1044 = or i1 %1036, %1043
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %BRANCH_TAKEN, align 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1047 = select i1 %1044, i64 %1029, i64 %1031
  store i64 %1047, i64* %1046, align 8
  store %struct.Memory* %loadMem_45dded, %struct.Memory** %MEMORY
  %loadBr_45dded = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dded = icmp eq i8 %loadBr_45dded, 1
  br i1 %cmpBr_45dded, label %block_.L_45de67, label %block_.L_45ddf3

block_.L_45ddf3:                                  ; preds = %block_45dddf, %block_.L_45ddc0
  %loadMem_45ddf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %PC.i427
  %1052 = add i64 %1051, 9
  store i64 %1052, i64* %PC.i427
  %1053 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1054, align 1
  %1055 = trunc i64 %1053 to i32
  %1056 = and i32 %1055, 255
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1060, i8* %1061, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1062, align 1
  %1063 = icmp eq i64 %1053, 0
  %1064 = zext i1 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1064, i8* %1065, align 1
  %1066 = lshr i64 %1053, 63
  %1067 = trunc i64 %1066 to i8
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1067, i8* %1068, align 1
  %1069 = lshr i64 %1053, 63
  %1070 = xor i64 %1066, %1069
  %1071 = add i64 %1070, %1069
  %1072 = icmp eq i64 %1071, 2
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1073, i8* %1074, align 1
  store %struct.Memory* %loadMem_45ddf3, %struct.Memory** %MEMORY
  %loadMem_45ddfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1077 to i64*
  %1078 = load i64, i64* %PC.i426
  %1079 = add i64 %1078, 95
  %1080 = load i64, i64* %PC.i426
  %1081 = add i64 %1080, 6
  %1082 = load i64, i64* %PC.i426
  %1083 = add i64 %1082, 6
  store i64 %1083, i64* %PC.i426
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1085 = load i8, i8* %1084, align 1
  store i8 %1085, i8* %BRANCH_TAKEN, align 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1087 = icmp ne i8 %1085, 0
  %1088 = select i1 %1087, i64 %1079, i64 %1081
  store i64 %1088, i64* %1086, align 8
  store %struct.Memory* %loadMem_45ddfc, %struct.Memory** %MEMORY
  %loadBr_45ddfc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ddfc = icmp eq i8 %loadBr_45ddfc, 1
  br i1 %cmpBr_45ddfc, label %block_.L_45de5b, label %block_45de02

block_45de02:                                     ; preds = %block_.L_45ddf3
  %loadMem_45de02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 9
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RSI.i425 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %PC.i424
  %1096 = add i64 %1095, 10
  store i64 %1096, i64* %PC.i424
  store i64 ptrtoint (%G__0x57fbc3_type* @G__0x57fbc3 to i64), i64* %RSI.i425, align 8
  store %struct.Memory* %loadMem_45de02, %struct.Memory** %MEMORY
  %loadMem_45de0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 11
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RDI.i422 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 15
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RBP.i423
  %1107 = sub i64 %1106, 176
  %1108 = load i64, i64* %PC.i421
  %1109 = add i64 %1108, 7
  store i64 %1109, i64* %PC.i421
  store i64 %1107, i64* %RDI.i422, align 8
  store %struct.Memory* %loadMem_45de0c, %struct.Memory** %MEMORY
  %loadMem_45de13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 7
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %PC.i419
  %1117 = add i64 %1116, 7
  store i64 %1117, i64* %PC.i419
  %1118 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RDX.i420, align 8
  store %struct.Memory* %loadMem_45de13, %struct.Memory** %MEMORY
  %loadMem_45de1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 5
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %PC.i417
  %1127 = add i64 %1126, 7
  store i64 %1127, i64* %PC.i417
  %1128 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_45de1a, %struct.Memory** %MEMORY
  %loadMem_45de21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 1
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %1136 = bitcast %union.anon* %1135 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1136, i32 0, i32 0
  %1137 = load i64, i64* %PC.i416
  %1138 = add i64 %1137, 2
  store i64 %1138, i64* %PC.i416
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_45de21, %struct.Memory** %MEMORY
  %loadMem1_45de23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %PC.i415
  %1143 = add i64 %1142, -379987
  %1144 = load i64, i64* %PC.i415
  %1145 = add i64 %1144, 5
  %1146 = load i64, i64* %PC.i415
  %1147 = add i64 %1146, 5
  store i64 %1147, i64* %PC.i415
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1149 = load i64, i64* %1148, align 8
  %1150 = add i64 %1149, -8
  %1151 = inttoptr i64 %1150 to i64*
  store i64 %1145, i64* %1151
  store i64 %1150, i64* %1148, align 8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1143, i64* %1152, align 8
  store %struct.Memory* %loadMem1_45de23, %struct.Memory** %MEMORY
  %loadMem2_45de23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45de23 = load i64, i64* %3
  %1153 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %loadMem2_45de23)
  store %struct.Memory* %1153, %struct.Memory** %MEMORY
  %loadMem_45de28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %PC.i412
  %1158 = add i64 %1157, 9
  store i64 %1158, i64* %PC.i412
  %1159 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1160, align 1
  %1161 = trunc i64 %1159 to i32
  %1162 = and i32 %1161, 255
  %1163 = call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1166, i8* %1167, align 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1168, align 1
  %1169 = icmp eq i64 %1159, 0
  %1170 = zext i1 %1169 to i8
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1170, i8* %1171, align 1
  %1172 = lshr i64 %1159, 63
  %1173 = trunc i64 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1173, i8* %1174, align 1
  %1175 = lshr i64 %1159, 63
  %1176 = xor i64 %1172, %1175
  %1177 = add i64 %1176, %1175
  %1178 = icmp eq i64 %1177, 2
  %1179 = zext i1 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1179, i8* %1180, align 1
  store %struct.Memory* %loadMem_45de28, %struct.Memory** %MEMORY
  %loadMem_45de31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 1
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %EAX.i410 = bitcast %union.anon* %1186 to i32*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 15
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RBP.i411
  %1191 = sub i64 %1190, 204
  %1192 = load i32, i32* %EAX.i410
  %1193 = zext i32 %1192 to i64
  %1194 = load i64, i64* %PC.i409
  %1195 = add i64 %1194, 6
  store i64 %1195, i64* %PC.i409
  %1196 = inttoptr i64 %1191 to i32*
  store i32 %1192, i32* %1196
  store %struct.Memory* %loadMem_45de31, %struct.Memory** %MEMORY
  %loadMem_45de37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %PC.i408
  %1201 = add i64 %1200, 31
  %1202 = load i64, i64* %PC.i408
  %1203 = add i64 %1202, 6
  %1204 = load i64, i64* %PC.i408
  %1205 = add i64 %1204, 6
  store i64 %1205, i64* %PC.i408
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1207 = load i8, i8* %1206, align 1
  store i8 %1207, i8* %BRANCH_TAKEN, align 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1209 = icmp ne i8 %1207, 0
  %1210 = select i1 %1209, i64 %1201, i64 %1203
  store i64 %1210, i64* %1208, align 8
  store %struct.Memory* %loadMem_45de37, %struct.Memory** %MEMORY
  %loadBr_45de37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45de37 = icmp eq i8 %loadBr_45de37, 1
  br i1 %cmpBr_45de37, label %block_.L_45de56, label %block_45de3d

block_45de3d:                                     ; preds = %block_45de02
  %loadMem_45de3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %EAX.i406 = bitcast %union.anon* %1216 to i32*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 1
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %RAX.i407
  %1221 = load i32, i32* %EAX.i406
  %1222 = zext i32 %1221 to i64
  %1223 = load i64, i64* %PC.i405
  %1224 = add i64 %1223, 2
  store i64 %1224, i64* %PC.i405
  %1225 = xor i64 %1222, %1220
  %1226 = trunc i64 %1225 to i32
  %1227 = and i64 %1225, 4294967295
  store i64 %1227, i64* %RAX.i407, align 8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1228, align 1
  %1229 = and i32 %1226, 255
  %1230 = call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1233, i8* %1234, align 1
  %1235 = icmp eq i32 %1226, 0
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1226, 31
  %1239 = trunc i32 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1239, i8* %1240, align 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1241, align 1
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1242, align 1
  store %struct.Memory* %loadMem_45de3d, %struct.Memory** %MEMORY
  %loadMem_45de3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 15
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 17
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %R8.i404 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RBP.i403
  %1253 = sub i64 %1252, 176
  %1254 = load i64, i64* %PC.i402
  %1255 = add i64 %1254, 7
  store i64 %1255, i64* %PC.i402
  store i64 %1253, i64* %R8.i404, align 8
  store %struct.Memory* %loadMem_45de3f, %struct.Memory** %MEMORY
  %loadMem_45de46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 11
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RDI.i400 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 15
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RBP.i401
  %1266 = sub i64 %1265, 64
  %1267 = load i64, i64* %PC.i399
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %PC.i399
  %1269 = inttoptr i64 %1266 to i64*
  %1270 = load i64, i64* %1269
  store i64 %1270, i64* %RDI.i400, align 8
  store %struct.Memory* %loadMem_45de46, %struct.Memory** %MEMORY
  %loadMem_45de4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 9
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RSI.i397 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 15
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RBP.i398
  %1281 = sub i64 %1280, 68
  %1282 = load i64, i64* %PC.i396
  %1283 = add i64 %1282, 3
  store i64 %1283, i64* %PC.i396
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RSI.i397, align 8
  store %struct.Memory* %loadMem_45de4a, %struct.Memory** %MEMORY
  %loadMem_45de4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %1292 to i32*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 7
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %1295 to i64*
  %1296 = load i32, i32* %EAX.i394
  %1297 = zext i32 %1296 to i64
  %1298 = load i64, i64* %PC.i393
  %1299 = add i64 %1298, 2
  store i64 %1299, i64* %PC.i393
  %1300 = and i64 %1297, 4294967295
  store i64 %1300, i64* %RDX.i395, align 8
  store %struct.Memory* %loadMem_45de4d, %struct.Memory** %MEMORY
  %loadMem_45de4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 1
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %1306 to i32*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 5
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %1309 to i64*
  %1310 = load i32, i32* %EAX.i391
  %1311 = zext i32 %1310 to i64
  %1312 = load i64, i64* %PC.i390
  %1313 = add i64 %1312, 2
  store i64 %1313, i64* %PC.i390
  %1314 = and i64 %1311, 4294967295
  store i64 %1314, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_45de4f, %struct.Memory** %MEMORY
  %loadMem1_45de51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %PC.i389
  %1319 = add i64 %1318, -286353
  %1320 = load i64, i64* %PC.i389
  %1321 = add i64 %1320, 5
  %1322 = load i64, i64* %PC.i389
  %1323 = add i64 %1322, 5
  store i64 %1323, i64* %PC.i389
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1325 = load i64, i64* %1324, align 8
  %1326 = add i64 %1325, -8
  %1327 = inttoptr i64 %1326 to i64*
  store i64 %1321, i64* %1327
  store i64 %1326, i64* %1324, align 8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1319, i64* %1328, align 8
  store %struct.Memory* %loadMem1_45de51, %struct.Memory** %MEMORY
  %loadMem2_45de51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45de51 = load i64, i64* %3
  %call2_45de51 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_45de51, %struct.Memory* %loadMem2_45de51)
  store %struct.Memory* %call2_45de51, %struct.Memory** %MEMORY
  br label %block_.L_45de56

block_.L_45de56:                                  ; preds = %block_45de3d, %block_45de02
  %loadMem_45de56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %PC.i388
  %1333 = add i64 %1332, 5
  %1334 = load i64, i64* %PC.i388
  %1335 = add i64 %1334, 5
  store i64 %1335, i64* %PC.i388
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1333, i64* %1336, align 8
  store %struct.Memory* %loadMem_45de56, %struct.Memory** %MEMORY
  br label %block_.L_45de5b

block_.L_45de5b:                                  ; preds = %block_.L_45de56, %block_.L_45ddf3
  %loadMem_45de5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 15
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %RBP.i387
  %1344 = sub i64 %1343, 4
  %1345 = load i64, i64* %PC.i386
  %1346 = add i64 %1345, 7
  store i64 %1346, i64* %PC.i386
  %1347 = inttoptr i64 %1344 to i32*
  store i32 0, i32* %1347
  store %struct.Memory* %loadMem_45de5b, %struct.Memory** %MEMORY
  %loadMem_45de62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %PC.i385
  %1352 = add i64 %1351, 757
  %1353 = load i64, i64* %PC.i385
  %1354 = add i64 %1353, 5
  store i64 %1354, i64* %PC.i385
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1352, i64* %1355, align 8
  store %struct.Memory* %loadMem_45de62, %struct.Memory** %MEMORY
  br label %block_.L_45e157

block_.L_45de67:                                  ; preds = %block_45dddf, %block_45ddd5
  %loadMem_45de67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 33
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 1
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %1361 to i64*
  %1362 = load i64, i64* %PC.i383
  %1363 = add i64 %1362, 7
  store i64 %1363, i64* %PC.i383
  %1364 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_45de67, %struct.Memory** %MEMORY
  %loadMem_45de6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 1
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %1371 to i32*
  %1372 = load i32, i32* %EAX.i382
  %1373 = zext i32 %1372 to i64
  %1374 = load i64, i64* %PC.i381
  %1375 = add i64 %1374, 7
  store i64 %1375, i64* %PC.i381
  %1376 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  %1377 = sub i32 %1372, %1376
  %1378 = icmp ult i32 %1372, %1376
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1379, i8* %1380, align 1
  %1381 = and i32 %1377, 255
  %1382 = call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1385, i8* %1386, align 1
  %1387 = xor i32 %1376, %1372
  %1388 = xor i32 %1387, %1377
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1391, i8* %1392, align 1
  %1393 = icmp eq i32 %1377, 0
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1394, i8* %1395, align 1
  %1396 = lshr i32 %1377, 31
  %1397 = trunc i32 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1397, i8* %1398, align 1
  %1399 = lshr i32 %1372, 31
  %1400 = lshr i32 %1376, 31
  %1401 = xor i32 %1400, %1399
  %1402 = xor i32 %1396, %1399
  %1403 = add i32 %1402, %1401
  %1404 = icmp eq i32 %1403, 2
  %1405 = zext i1 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1405, i8* %1406, align 1
  store %struct.Memory* %loadMem_45de6e, %struct.Memory** %MEMORY
  %loadMem_45de75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %PC.i380
  %1411 = add i64 %1410, 228
  %1412 = load i64, i64* %PC.i380
  %1413 = add i64 %1412, 6
  %1414 = load i64, i64* %PC.i380
  %1415 = add i64 %1414, 6
  store i64 %1415, i64* %PC.i380
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1417 = load i8, i8* %1416, align 1
  %1418 = icmp eq i8 %1417, 0
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1420 = load i8, i8* %1419, align 1
  %1421 = icmp ne i8 %1420, 0
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1423 = load i8, i8* %1422, align 1
  %1424 = icmp ne i8 %1423, 0
  %1425 = xor i1 %1421, %1424
  %1426 = xor i1 %1425, true
  %1427 = and i1 %1418, %1426
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %BRANCH_TAKEN, align 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1430 = select i1 %1427, i64 %1411, i64 %1413
  store i64 %1430, i64* %1429, align 8
  store %struct.Memory* %loadMem_45de75, %struct.Memory** %MEMORY
  %loadBr_45de75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45de75 = icmp eq i8 %loadBr_45de75, 1
  br i1 %cmpBr_45de75, label %block_.L_45df59, label %block_45de7b

block_45de7b:                                     ; preds = %block_.L_45de67
  %loadMem_45de7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 1
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1436 to i64*
  %1437 = load i64, i64* %PC.i378
  %1438 = add i64 %1437, 7
  store i64 %1438, i64* %PC.i378
  %1439 = load i32, i32* bitcast (%G_0x7ae43c_type* @G_0x7ae43c to i32*)
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_45de7b, %struct.Memory** %MEMORY
  %loadMem_45de82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 1
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %1446 to i64*
  %1447 = load i64, i64* %RAX.i377
  %1448 = load i64, i64* %PC.i376
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %PC.i376
  %1450 = and i64 32, %1447
  %1451 = trunc i64 %1450 to i32
  store i64 %1450, i64* %RAX.i377, align 8
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1452, align 1
  %1453 = and i32 %1451, 255
  %1454 = call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1457, i8* %1458, align 1
  %1459 = icmp eq i32 %1451, 0
  %1460 = zext i1 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1460, i8* %1461, align 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1462, align 1
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1463, align 1
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1464, align 1
  store %struct.Memory* %loadMem_45de82, %struct.Memory** %MEMORY
  %loadMem_45de85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 1
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %EAX.i375 = bitcast %union.anon* %1470 to i32*
  %1471 = load i32, i32* %EAX.i375
  %1472 = zext i32 %1471 to i64
  %1473 = load i64, i64* %PC.i374
  %1474 = add i64 %1473, 3
  store i64 %1474, i64* %PC.i374
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1475, align 1
  %1476 = and i32 %1471, 255
  %1477 = call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1480, i8* %1481, align 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1482, align 1
  %1483 = icmp eq i32 %1471, 0
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1484, i8* %1485, align 1
  %1486 = lshr i32 %1471, 31
  %1487 = trunc i32 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1487, i8* %1488, align 1
  %1489 = lshr i32 %1471, 31
  %1490 = xor i32 %1486, %1489
  %1491 = add i32 %1490, %1489
  %1492 = icmp eq i32 %1491, 2
  %1493 = zext i1 %1492 to i8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1493, i8* %1494, align 1
  store %struct.Memory* %loadMem_45de85, %struct.Memory** %MEMORY
  %loadMem_45de88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %PC.i373
  %1499 = add i64 %1498, 209
  %1500 = load i64, i64* %PC.i373
  %1501 = add i64 %1500, 6
  %1502 = load i64, i64* %PC.i373
  %1503 = add i64 %1502, 6
  store i64 %1503, i64* %PC.i373
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1505 = load i8, i8* %1504, align 1
  store i8 %1505, i8* %BRANCH_TAKEN, align 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1507 = icmp ne i8 %1505, 0
  %1508 = select i1 %1507, i64 %1499, i64 %1501
  store i64 %1508, i64* %1506, align 8
  store %struct.Memory* %loadMem_45de88, %struct.Memory** %MEMORY
  %loadBr_45de88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45de88 = icmp eq i8 %loadBr_45de88, 1
  br i1 %cmpBr_45de88, label %block_.L_45df59, label %block_45de8e

block_45de8e:                                     ; preds = %block_45de7b
  %loadMem_45de8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 11
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RDI.i372 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %PC.i371
  %1516 = add i64 %1515, 5
  store i64 %1516, i64* %PC.i371
  store i64 4, i64* %RDI.i372, align 8
  store %struct.Memory* %loadMem_45de8e, %struct.Memory** %MEMORY
  %loadMem_45de93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 5
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 15
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RBP.i370
  %1527 = sub i64 %1526, 8
  %1528 = load i64, i64* %PC.i368
  %1529 = add i64 %1528, 4
  store i64 %1529, i64* %PC.i368
  store i64 %1527, i64* %RCX.i369, align 8
  store %struct.Memory* %loadMem_45de93, %struct.Memory** %MEMORY
  %loadMem_45de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 17
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %R8.i367 = bitcast %union.anon* %1538 to i64*
  %1539 = load i64, i64* %RBP.i366
  %1540 = sub i64 %1539, 56
  %1541 = load i64, i64* %PC.i365
  %1542 = add i64 %1541, 4
  store i64 %1542, i64* %PC.i365
  store i64 %1540, i64* %R8.i367, align 8
  store %struct.Memory* %loadMem_45de97, %struct.Memory** %MEMORY
  %loadMem_45de9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 9
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RSI.i363 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 15
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %RBP.i364
  %1553 = sub i64 %1552, 20
  %1554 = load i64, i64* %PC.i362
  %1555 = add i64 %1554, 3
  store i64 %1555, i64* %PC.i362
  %1556 = inttoptr i64 %1553 to i32*
  %1557 = load i32, i32* %1556
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RSI.i363, align 8
  store %struct.Memory* %loadMem_45de9b, %struct.Memory** %MEMORY
  %loadMem_45de9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 7
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 15
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %RBP.i361
  %1569 = sub i64 %1568, 24
  %1570 = load i64, i64* %PC.i359
  %1571 = add i64 %1570, 3
  store i64 %1571, i64* %PC.i359
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_45de9e, %struct.Memory** %MEMORY
  %loadMem1_45dea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %PC.i358
  %1579 = add i64 %1578, -289905
  %1580 = load i64, i64* %PC.i358
  %1581 = add i64 %1580, 5
  %1582 = load i64, i64* %PC.i358
  %1583 = add i64 %1582, 5
  store i64 %1583, i64* %PC.i358
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1585 = load i64, i64* %1584, align 8
  %1586 = add i64 %1585, -8
  %1587 = inttoptr i64 %1586 to i64*
  store i64 %1581, i64* %1587
  store i64 %1586, i64* %1584, align 8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1579, i64* %1588, align 8
  store %struct.Memory* %loadMem1_45dea1, %struct.Memory** %MEMORY
  %loadMem2_45dea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45dea1 = load i64, i64* %3
  %call2_45dea1 = call %struct.Memory* @sub_417230.get_read_result(%struct.State* %0, i64 %loadPC_45dea1, %struct.Memory* %loadMem2_45dea1)
  store %struct.Memory* %call2_45dea1, %struct.Memory** %MEMORY
  %loadMem_45dea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 1
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %1594 to i32*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 15
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %RBP.i357
  %1599 = sub i64 %1598, 44
  %1600 = load i32, i32* %EAX.i356
  %1601 = zext i32 %1600 to i64
  %1602 = load i64, i64* %PC.i355
  %1603 = add i64 %1602, 3
  store i64 %1603, i64* %PC.i355
  %1604 = inttoptr i64 %1599 to i32*
  store i32 %1600, i32* %1604
  store %struct.Memory* %loadMem_45dea6, %struct.Memory** %MEMORY
  %loadMem_45dea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %RBP.i354
  %1612 = sub i64 %1611, 44
  %1613 = load i64, i64* %PC.i353
  %1614 = add i64 %1613, 4
  store i64 %1614, i64* %PC.i353
  %1615 = inttoptr i64 %1612 to i32*
  %1616 = load i32, i32* %1615
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1617, align 1
  %1618 = and i32 %1616, 255
  %1619 = call i32 @llvm.ctpop.i32(i32 %1618)
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1622, i8* %1623, align 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1624, align 1
  %1625 = icmp eq i32 %1616, 0
  %1626 = zext i1 %1625 to i8
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1626, i8* %1627, align 1
  %1628 = lshr i32 %1616, 31
  %1629 = trunc i32 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1629, i8* %1630, align 1
  %1631 = lshr i32 %1616, 31
  %1632 = xor i32 %1628, %1631
  %1633 = add i32 %1632, %1631
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1635, i8* %1636, align 1
  store %struct.Memory* %loadMem_45dea9, %struct.Memory** %MEMORY
  %loadMem_45dead = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %PC.i352
  %1641 = add i64 %1640, 167
  %1642 = load i64, i64* %PC.i352
  %1643 = add i64 %1642, 6
  %1644 = load i64, i64* %PC.i352
  %1645 = add i64 %1644, 6
  store i64 %1645, i64* %PC.i352
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1647 = load i8, i8* %1646, align 1
  store i8 %1647, i8* %BRANCH_TAKEN, align 1
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1649 = icmp ne i8 %1647, 0
  %1650 = select i1 %1649, i64 %1641, i64 %1643
  store i64 %1650, i64* %1648, align 8
  store %struct.Memory* %loadMem_45dead, %struct.Memory** %MEMORY
  %loadBr_45dead = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dead = icmp eq i8 %loadBr_45dead, 1
  br i1 %cmpBr_45dead, label %block_.L_45df54, label %block_45deb3

block_45deb3:                                     ; preds = %block_45de8e
  %loadMem_45deb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 1
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 15
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %RBP.i351
  %1661 = sub i64 %1660, 56
  %1662 = load i64, i64* %PC.i349
  %1663 = add i64 %1662, 4
  store i64 %1663, i64* %PC.i349
  %1664 = inttoptr i64 %1661 to i64*
  %1665 = load i64, i64* %1664
  store i64 %1665, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_45deb3, %struct.Memory** %MEMORY
  %loadMem_45deb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 5
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RAX.i347
  %1676 = add i64 %1675, 4
  %1677 = load i64, i64* %PC.i346
  %1678 = add i64 %1677, 3
  store i64 %1678, i64* %PC.i346
  %1679 = inttoptr i64 %1676 to i32*
  %1680 = load i32, i32* %1679
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_45deb7, %struct.Memory** %MEMORY
  %loadMem_45deba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 5
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RCX.i345
  %1689 = load i64, i64* %PC.i344
  %1690 = add i64 %1689, 3
  store i64 %1690, i64* %PC.i344
  %1691 = and i64 %1688, 4294967295
  %1692 = lshr i64 %1691, 23
  %1693 = trunc i64 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = lshr i64 %1692, 1
  %1696 = trunc i64 %1695 to i32
  %1697 = and i32 %1696, 2147483647
  %1698 = zext i32 %1697 to i64
  store i64 %1698, i64* %RCX.i345, align 8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1694, i8* %1699, align 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1701 = and i32 %1696, 255
  %1702 = call i32 @llvm.ctpop.i32(i32 %1701)
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %1700, align 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1706, align 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1708 = icmp eq i32 %1697, 0
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %1707, align 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1710, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1711, align 1
  store %struct.Memory* %loadMem_45deba, %struct.Memory** %MEMORY
  %loadMem_45debd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 5
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RCX.i343
  %1719 = load i64, i64* %PC.i342
  %1720 = add i64 %1719, 3
  store i64 %1720, i64* %PC.i342
  %1721 = and i64 15, %1718
  %1722 = trunc i64 %1721 to i32
  store i64 %1721, i64* %RCX.i343, align 8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1723, align 1
  %1724 = and i32 %1722, 255
  %1725 = call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1728, i8* %1729, align 1
  %1730 = icmp eq i32 %1722, 0
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1731, i8* %1732, align 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1733, align 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1734, align 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1735, align 1
  store %struct.Memory* %loadMem_45debd, %struct.Memory** %MEMORY
  %loadMem_45dec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 5
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %ECX.i341 = bitcast %union.anon* %1741 to i32*
  %1742 = load i32, i32* %ECX.i341
  %1743 = zext i32 %1742 to i64
  %1744 = load i64, i64* %PC.i340
  %1745 = add i64 %1744, 3
  store i64 %1745, i64* %PC.i340
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1746, align 1
  %1747 = and i32 %1742, 255
  %1748 = call i32 @llvm.ctpop.i32(i32 %1747)
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = xor i8 %1750, 1
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1751, i8* %1752, align 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1753, align 1
  %1754 = icmp eq i32 %1742, 0
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1755, i8* %1756, align 1
  %1757 = lshr i32 %1742, 31
  %1758 = trunc i32 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i32 %1742, 31
  %1761 = xor i32 %1757, %1760
  %1762 = add i32 %1761, %1760
  %1763 = icmp eq i32 %1762, 2
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1764, i8* %1765, align 1
  store %struct.Memory* %loadMem_45dec0, %struct.Memory** %MEMORY
  %loadMem_45dec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %PC.i339
  %1770 = add i64 %1769, 44
  %1771 = load i64, i64* %PC.i339
  %1772 = add i64 %1771, 6
  %1773 = load i64, i64* %PC.i339
  %1774 = add i64 %1773, 6
  store i64 %1774, i64* %PC.i339
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1776 = load i8, i8* %1775, align 1
  store i8 %1776, i8* %BRANCH_TAKEN, align 1
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1778 = icmp ne i8 %1776, 0
  %1779 = select i1 %1778, i64 %1770, i64 %1772
  store i64 %1779, i64* %1777, align 8
  store %struct.Memory* %loadMem_45dec3, %struct.Memory** %MEMORY
  %loadBr_45dec3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dec3 = icmp eq i8 %loadBr_45dec3, 1
  br i1 %cmpBr_45dec3, label %block_.L_45deef, label %block_45dec9

block_45dec9:                                     ; preds = %block_45deb3
  %loadMem_45dec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 33
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 15
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %RBP.i338
  %1787 = sub i64 %1786, 16
  %1788 = load i64, i64* %PC.i337
  %1789 = add i64 %1788, 5
  store i64 %1789, i64* %PC.i337
  %1790 = inttoptr i64 %1787 to i64*
  %1791 = load i64, i64* %1790
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1792, align 1
  %1793 = trunc i64 %1791 to i32
  %1794 = and i32 %1793, 255
  %1795 = call i32 @llvm.ctpop.i32(i32 %1794)
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1798, i8* %1799, align 1
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1800, align 1
  %1801 = icmp eq i64 %1791, 0
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i64 %1791, 63
  %1805 = trunc i64 %1804 to i8
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1805, i8* %1806, align 1
  %1807 = lshr i64 %1791, 63
  %1808 = xor i64 %1804, %1807
  %1809 = add i64 %1808, %1807
  %1810 = icmp eq i64 %1809, 2
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1811, i8* %1812, align 1
  store %struct.Memory* %loadMem_45dec9, %struct.Memory** %MEMORY
  %loadMem_45dece = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %PC.i336
  %1817 = add i64 %1816, 28
  %1818 = load i64, i64* %PC.i336
  %1819 = add i64 %1818, 6
  %1820 = load i64, i64* %PC.i336
  %1821 = add i64 %1820, 6
  store i64 %1821, i64* %PC.i336
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1823 = load i8, i8* %1822, align 1
  store i8 %1823, i8* %BRANCH_TAKEN, align 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1825 = icmp ne i8 %1823, 0
  %1826 = select i1 %1825, i64 %1817, i64 %1819
  store i64 %1826, i64* %1824, align 8
  store %struct.Memory* %loadMem_45dece, %struct.Memory** %MEMORY
  %loadBr_45dece = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dece = icmp eq i8 %loadBr_45dece, 1
  br i1 %cmpBr_45dece, label %block_.L_45deea, label %block_45ded4

block_45ded4:                                     ; preds = %block_45dec9
  %loadMem_45ded4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 15
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1835 to i64*
  %1836 = load i64, i64* %RBP.i335
  %1837 = sub i64 %1836, 56
  %1838 = load i64, i64* %PC.i333
  %1839 = add i64 %1838, 4
  store i64 %1839, i64* %PC.i333
  %1840 = inttoptr i64 %1837 to i64*
  %1841 = load i64, i64* %1840
  store i64 %1841, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_45ded4, %struct.Memory** %MEMORY
  %loadMem_45ded8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 1
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 5
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %1850 to i64*
  %1851 = load i64, i64* %RAX.i331
  %1852 = add i64 %1851, 4
  %1853 = load i64, i64* %PC.i330
  %1854 = add i64 %1853, 3
  store i64 %1854, i64* %PC.i330
  %1855 = inttoptr i64 %1852 to i32*
  %1856 = load i32, i32* %1855
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_45ded8, %struct.Memory** %MEMORY
  %loadMem_45dedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 5
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %1863 to i64*
  %1864 = load i64, i64* %RCX.i329
  %1865 = load i64, i64* %PC.i328
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %PC.i328
  %1867 = and i64 %1864, 4294967295
  %1868 = lshr i64 %1867, 9
  %1869 = trunc i64 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = lshr i64 %1868, 1
  %1872 = trunc i64 %1871 to i32
  %1873 = and i32 %1872, 2147483647
  %1874 = zext i32 %1873 to i64
  store i64 %1874, i64* %RCX.i329, align 8
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1870, i8* %1875, align 1
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1877 = and i32 %1872, 255
  %1878 = call i32 @llvm.ctpop.i32(i32 %1877)
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = xor i8 %1880, 1
  store i8 %1881, i8* %1876, align 1
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1882, align 1
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1884 = icmp eq i32 %1873, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %1883, align 1
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1886, align 1
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1887, align 1
  store %struct.Memory* %loadMem_45dedb, %struct.Memory** %MEMORY
  %loadMem_45dede = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 5
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RCX.i327
  %1895 = load i64, i64* %PC.i326
  %1896 = add i64 %1895, 6
  store i64 %1896, i64* %PC.i326
  %1897 = and i64 1023, %1894
  %1898 = trunc i64 %1897 to i32
  store i64 %1897, i64* %RCX.i327, align 8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1899, align 1
  %1900 = and i32 %1898, 255
  %1901 = call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1904, i8* %1905, align 1
  %1906 = icmp eq i32 %1898, 0
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1907, i8* %1908, align 1
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1909, align 1
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1910, align 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1911, align 1
  store %struct.Memory* %loadMem_45dede, %struct.Memory** %MEMORY
  %loadMem_45dee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i325
  %1922 = sub i64 %1921, 16
  %1923 = load i64, i64* %PC.i323
  %1924 = add i64 %1923, 4
  store i64 %1924, i64* %PC.i323
  %1925 = inttoptr i64 %1922 to i64*
  %1926 = load i64, i64* %1925
  store i64 %1926, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_45dee4, %struct.Memory** %MEMORY
  %loadMem_45dee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 33
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 5
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %ECX.i321 = bitcast %union.anon* %1932 to i32*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 1
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %1935 to i64*
  %1936 = load i64, i64* %RAX.i322
  %1937 = load i32, i32* %ECX.i321
  %1938 = zext i32 %1937 to i64
  %1939 = load i64, i64* %PC.i320
  %1940 = add i64 %1939, 2
  store i64 %1940, i64* %PC.i320
  %1941 = inttoptr i64 %1936 to i32*
  store i32 %1937, i32* %1941
  store %struct.Memory* %loadMem_45dee8, %struct.Memory** %MEMORY
  br label %block_.L_45deea

block_.L_45deea:                                  ; preds = %block_45ded4, %block_45dec9
  %loadMem_45deea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 33
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1944 to i64*
  %1945 = load i64, i64* %PC.i319
  %1946 = add i64 %1945, 5
  %1947 = load i64, i64* %PC.i319
  %1948 = add i64 %1947, 5
  store i64 %1948, i64* %PC.i319
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1946, i64* %1949, align 8
  store %struct.Memory* %loadMem_45deea, %struct.Memory** %MEMORY
  br label %block_.L_45deef

block_.L_45deef:                                  ; preds = %block_.L_45deea, %block_45deb3
  %loadMem_45deef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %PC.i318
  %1954 = add i64 %1953, 9
  store i64 %1954, i64* %PC.i318
  %1955 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1956, align 1
  %1957 = trunc i64 %1955 to i32
  %1958 = and i32 %1957, 255
  %1959 = call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1962, i8* %1963, align 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1964, align 1
  %1965 = icmp eq i64 %1955, 0
  %1966 = zext i1 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1966, i8* %1967, align 1
  %1968 = lshr i64 %1955, 63
  %1969 = trunc i64 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1969, i8* %1970, align 1
  %1971 = lshr i64 %1955, 63
  %1972 = xor i64 %1968, %1971
  %1973 = add i64 %1972, %1971
  %1974 = icmp eq i64 %1973, 2
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1975, i8* %1976, align 1
  store %struct.Memory* %loadMem_45deef, %struct.Memory** %MEMORY
  %loadMem_45def8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i317
  %1981 = add i64 %1980, 71
  %1982 = load i64, i64* %PC.i317
  %1983 = add i64 %1982, 6
  %1984 = load i64, i64* %PC.i317
  %1985 = add i64 %1984, 6
  store i64 %1985, i64* %PC.i317
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1987 = load i8, i8* %1986, align 1
  store i8 %1987, i8* %BRANCH_TAKEN, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1989 = icmp ne i8 %1987, 0
  %1990 = select i1 %1989, i64 %1981, i64 %1983
  store i64 %1990, i64* %1988, align 8
  store %struct.Memory* %loadMem_45def8, %struct.Memory** %MEMORY
  %loadBr_45def8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45def8 = icmp eq i8 %loadBr_45def8, 1
  br i1 %cmpBr_45def8, label %block_.L_45df3f, label %block_45defe

block_45defe:                                     ; preds = %block_.L_45deef
  %loadMem_45defe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 17
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1996 to i64*
  %1997 = load i64, i64* %PC.i316
  %1998 = add i64 %1997, 10
  store i64 %1998, i64* %PC.i316
  store i64 ptrtoint (%G__0x57dee3_type* @G__0x57dee3 to i64), i64* %R8.i, align 8
  store %struct.Memory* %loadMem_45defe, %struct.Memory** %MEMORY
  %loadMem_45df08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 11
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RDI.i314 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 15
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %RBP.i315
  %2009 = sub i64 %2008, 64
  %2010 = load i64, i64* %PC.i313
  %2011 = add i64 %2010, 4
  store i64 %2011, i64* %PC.i313
  %2012 = inttoptr i64 %2009 to i64*
  %2013 = load i64, i64* %2012
  store i64 %2013, i64* %RDI.i314, align 8
  store %struct.Memory* %loadMem_45df08, %struct.Memory** %MEMORY
  %loadMem_45df0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 9
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RSI.i311 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 15
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2022 to i64*
  %2023 = load i64, i64* %RBP.i312
  %2024 = sub i64 %2023, 68
  %2025 = load i64, i64* %PC.i310
  %2026 = add i64 %2025, 3
  store i64 %2026, i64* %PC.i310
  %2027 = inttoptr i64 %2024 to i32*
  %2028 = load i32, i32* %2027
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RSI.i311, align 8
  store %struct.Memory* %loadMem_45df0c, %struct.Memory** %MEMORY
  %loadMem_45df0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 1
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 15
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2038 to i64*
  %2039 = load i64, i64* %RBP.i309
  %2040 = sub i64 %2039, 56
  %2041 = load i64, i64* %PC.i307
  %2042 = add i64 %2041, 4
  store i64 %2042, i64* %PC.i307
  %2043 = inttoptr i64 %2040 to i64*
  %2044 = load i64, i64* %2043
  store i64 %2044, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_45df0f, %struct.Memory** %MEMORY
  %loadMem_45df13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 5
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RAX.i305
  %2055 = add i64 %2054, 4
  %2056 = load i64, i64* %PC.i304
  %2057 = add i64 %2056, 3
  store i64 %2057, i64* %PC.i304
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058
  %2060 = zext i32 %2059 to i64
  store i64 %2060, i64* %RCX.i306, align 8
  store %struct.Memory* %loadMem_45df13, %struct.Memory** %MEMORY
  %loadMem_45df16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 5
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %2066 to i64*
  %2067 = load i64, i64* %RCX.i303
  %2068 = load i64, i64* %PC.i302
  %2069 = add i64 %2068, 3
  store i64 %2069, i64* %PC.i302
  %2070 = and i64 %2067, 4294967295
  %2071 = lshr i64 %2070, 9
  %2072 = trunc i64 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = lshr i64 %2071, 1
  %2075 = trunc i64 %2074 to i32
  %2076 = and i32 %2075, 2147483647
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RCX.i303, align 8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2073, i8* %2078, align 1
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2080 = and i32 %2075, 255
  %2081 = call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %2079, align 1
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2085, align 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2087 = icmp eq i32 %2076, 0
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %2086, align 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2089, align 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2090, align 1
  store %struct.Memory* %loadMem_45df16, %struct.Memory** %MEMORY
  %loadMem_45df19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 5
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %RCX.i301
  %2098 = load i64, i64* %PC.i300
  %2099 = add i64 %2098, 6
  store i64 %2099, i64* %PC.i300
  %2100 = and i64 1023, %2097
  %2101 = trunc i64 %2100 to i32
  store i64 %2100, i64* %RCX.i301, align 8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2102, align 1
  %2103 = and i32 %2101, 255
  %2104 = call i32 @llvm.ctpop.i32(i32 %2103)
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = xor i8 %2106, 1
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2107, i8* %2108, align 1
  %2109 = icmp eq i32 %2101, 0
  %2110 = zext i1 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2110, i8* %2111, align 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2112, align 1
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2113, align 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2114, align 1
  store %struct.Memory* %loadMem_45df19, %struct.Memory** %MEMORY
  %loadMem_45df1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 1
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 15
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2123 to i64*
  %2124 = load i64, i64* %RBP.i299
  %2125 = sub i64 %2124, 56
  %2126 = load i64, i64* %PC.i297
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i297
  %2128 = inttoptr i64 %2125 to i64*
  %2129 = load i64, i64* %2128
  store i64 %2129, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_45df1f, %struct.Memory** %MEMORY
  %loadMem_45df23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 1
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 7
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %RAX.i295
  %2140 = add i64 %2139, 4
  %2141 = load i64, i64* %PC.i294
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %PC.i294
  %2143 = inttoptr i64 %2140 to i32*
  %2144 = load i32, i32* %2143
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RDX.i296, align 8
  store %struct.Memory* %loadMem_45df23, %struct.Memory** %MEMORY
  %loadMem_45df26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 7
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %RDX.i293
  %2153 = load i64, i64* %PC.i292
  %2154 = add i64 %2153, 3
  store i64 %2154, i64* %PC.i292
  %2155 = and i64 %2152, 4294967295
  %2156 = lshr i64 %2155, 23
  %2157 = trunc i64 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = lshr i64 %2156, 1
  %2160 = trunc i64 %2159 to i32
  %2161 = and i32 %2160, 2147483647
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RDX.i293, align 8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2158, i8* %2163, align 1
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2165 = and i32 %2160, 255
  %2166 = call i32 @llvm.ctpop.i32(i32 %2165)
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %2164, align 1
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2170, align 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2172 = icmp eq i32 %2161, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %2171, align 1
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2174, align 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2175, align 1
  store %struct.Memory* %loadMem_45df26, %struct.Memory** %MEMORY
  %loadMem_45df29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 33
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 7
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RDX.i291
  %2183 = load i64, i64* %PC.i290
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC.i290
  %2185 = and i64 15, %2182
  %2186 = trunc i64 %2185 to i32
  store i64 %2185, i64* %RDX.i291, align 8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2187, align 1
  %2188 = and i32 %2186, 255
  %2189 = call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2192, i8* %2193, align 1
  %2194 = icmp eq i32 %2186, 0
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2195, i8* %2196, align 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2197, align 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2198, align 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2199, align 1
  store %struct.Memory* %loadMem_45df29, %struct.Memory** %MEMORY
  %loadMem_45df2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 7
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %EDX.i288 = bitcast %union.anon* %2205 to i32*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 15
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %RBP.i289
  %2210 = sub i64 %2209, 208
  %2211 = load i32, i32* %EDX.i288
  %2212 = zext i32 %2211 to i64
  %2213 = load i64, i64* %PC.i287
  %2214 = add i64 %2213, 6
  store i64 %2214, i64* %PC.i287
  %2215 = inttoptr i64 %2210 to i32*
  store i32 %2211, i32* %2215
  store %struct.Memory* %loadMem_45df2c, %struct.Memory** %MEMORY
  %loadMem_45df32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 5
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %ECX.i285 = bitcast %union.anon* %2221 to i32*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 7
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %2224 to i64*
  %2225 = load i32, i32* %ECX.i285
  %2226 = zext i32 %2225 to i64
  %2227 = load i64, i64* %PC.i284
  %2228 = add i64 %2227, 2
  store i64 %2228, i64* %PC.i284
  %2229 = and i64 %2226, 4294967295
  store i64 %2229, i64* %RDX.i286, align 8
  store %struct.Memory* %loadMem_45df32, %struct.Memory** %MEMORY
  %loadMem_45df34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 5
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 15
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RBP.i283
  %2240 = sub i64 %2239, 208
  %2241 = load i64, i64* %PC.i281
  %2242 = add i64 %2241, 6
  store i64 %2242, i64* %PC.i281
  %2243 = inttoptr i64 %2240 to i32*
  %2244 = load i32, i32* %2243
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_45df34, %struct.Memory** %MEMORY
  %loadMem1_45df3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2248 to i64*
  %2249 = load i64, i64* %PC.i280
  %2250 = add i64 %2249, -286586
  %2251 = load i64, i64* %PC.i280
  %2252 = add i64 %2251, 5
  %2253 = load i64, i64* %PC.i280
  %2254 = add i64 %2253, 5
  store i64 %2254, i64* %PC.i280
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2256 = load i64, i64* %2255, align 8
  %2257 = add i64 %2256, -8
  %2258 = inttoptr i64 %2257 to i64*
  store i64 %2252, i64* %2258
  store i64 %2257, i64* %2255, align 8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2250, i64* %2259, align 8
  store %struct.Memory* %loadMem1_45df3a, %struct.Memory** %MEMORY
  %loadMem2_45df3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45df3a = load i64, i64* %3
  %call2_45df3a = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_45df3a, %struct.Memory* %loadMem2_45df3a)
  store %struct.Memory* %call2_45df3a, %struct.Memory** %MEMORY
  br label %block_.L_45df3f

block_.L_45df3f:                                  ; preds = %block_45defe, %block_.L_45deef
  %loadMem_45df3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 1
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 15
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RBP.i279
  %2270 = sub i64 %2269, 56
  %2271 = load i64, i64* %PC.i277
  %2272 = add i64 %2271, 4
  store i64 %2272, i64* %PC.i277
  %2273 = inttoptr i64 %2270 to i64*
  %2274 = load i64, i64* %2273
  store i64 %2274, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_45df3f, %struct.Memory** %MEMORY
  %loadMem_45df43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 1
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 5
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RAX.i275
  %2285 = add i64 %2284, 4
  %2286 = load i64, i64* %PC.i274
  %2287 = add i64 %2286, 3
  store i64 %2287, i64* %PC.i274
  %2288 = inttoptr i64 %2285 to i32*
  %2289 = load i32, i32* %2288
  %2290 = zext i32 %2289 to i64
  store i64 %2290, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_45df43, %struct.Memory** %MEMORY
  %loadMem_45df46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 5
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %RCX.i273
  %2298 = load i64, i64* %PC.i272
  %2299 = add i64 %2298, 3
  store i64 %2299, i64* %PC.i272
  %2300 = and i64 %2297, 4294967295
  %2301 = lshr i64 %2300, 23
  %2302 = trunc i64 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = lshr i64 %2301, 1
  %2305 = trunc i64 %2304 to i32
  %2306 = and i32 %2305, 2147483647
  %2307 = zext i32 %2306 to i64
  store i64 %2307, i64* %RCX.i273, align 8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2303, i8* %2308, align 1
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2310 = and i32 %2305, 255
  %2311 = call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  store i8 %2314, i8* %2309, align 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2315, align 1
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2317 = icmp eq i32 %2306, 0
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %2316, align 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2319, align 1
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2320, align 1
  store %struct.Memory* %loadMem_45df46, %struct.Memory** %MEMORY
  %loadMem_45df49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 5
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RCX.i271
  %2328 = load i64, i64* %PC.i270
  %2329 = add i64 %2328, 3
  store i64 %2329, i64* %PC.i270
  %2330 = and i64 15, %2327
  %2331 = trunc i64 %2330 to i32
  store i64 %2330, i64* %RCX.i271, align 8
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2332, align 1
  %2333 = and i32 %2331, 255
  %2334 = call i32 @llvm.ctpop.i32(i32 %2333)
  %2335 = trunc i32 %2334 to i8
  %2336 = and i8 %2335, 1
  %2337 = xor i8 %2336, 1
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2337, i8* %2338, align 1
  %2339 = icmp eq i32 %2331, 0
  %2340 = zext i1 %2339 to i8
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2340, i8* %2341, align 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2342, align 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2343, align 1
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2344, align 1
  store %struct.Memory* %loadMem_45df49, %struct.Memory** %MEMORY
  %loadMem_45df4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 5
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %ECX.i268 = bitcast %union.anon* %2350 to i32*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 15
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RBP.i269
  %2355 = sub i64 %2354, 4
  %2356 = load i32, i32* %ECX.i268
  %2357 = zext i32 %2356 to i64
  %2358 = load i64, i64* %PC.i267
  %2359 = add i64 %2358, 3
  store i64 %2359, i64* %PC.i267
  %2360 = inttoptr i64 %2355 to i32*
  store i32 %2356, i32* %2360
  store %struct.Memory* %loadMem_45df4c, %struct.Memory** %MEMORY
  %loadMem_45df4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %PC.i266
  %2365 = add i64 %2364, 520
  %2366 = load i64, i64* %PC.i266
  %2367 = add i64 %2366, 5
  store i64 %2367, i64* %PC.i266
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2365, i64* %2368, align 8
  store %struct.Memory* %loadMem_45df4f, %struct.Memory** %MEMORY
  br label %block_.L_45e157

block_.L_45df54:                                  ; preds = %block_45de8e
  %loadMem_45df54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %PC.i265
  %2373 = add i64 %2372, 5
  %2374 = load i64, i64* %PC.i265
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %PC.i265
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2373, i64* %2376, align 8
  store %struct.Memory* %loadMem_45df54, %struct.Memory** %MEMORY
  br label %block_.L_45df59

block_.L_45df59:                                  ; preds = %block_.L_45df54, %block_45de7b, %block_.L_45de67
  %loadMem_45df59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i264
  %2384 = sub i64 %2383, 36
  %2385 = load i64, i64* %PC.i263
  %2386 = add i64 %2385, 4
  store i64 %2386, i64* %PC.i263
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = sub i32 %2388, 1
  %2390 = icmp ult i32 %2388, 1
  %2391 = zext i1 %2390 to i8
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2391, i8* %2392, align 1
  %2393 = and i32 %2389, 255
  %2394 = call i32 @llvm.ctpop.i32(i32 %2393)
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = xor i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2397, i8* %2398, align 1
  %2399 = xor i32 %2388, 1
  %2400 = xor i32 %2399, %2389
  %2401 = lshr i32 %2400, 4
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2403, i8* %2404, align 1
  %2405 = icmp eq i32 %2389, 0
  %2406 = zext i1 %2405 to i8
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2406, i8* %2407, align 1
  %2408 = lshr i32 %2389, 31
  %2409 = trunc i32 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2409, i8* %2410, align 1
  %2411 = lshr i32 %2388, 31
  %2412 = xor i32 %2408, %2411
  %2413 = add i32 %2412, %2411
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2415, i8* %2416, align 1
  store %struct.Memory* %loadMem_45df59, %struct.Memory** %MEMORY
  %loadMem_45df5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2419 to i64*
  %2420 = load i64, i64* %PC.i262
  %2421 = add i64 %2420, 32
  %2422 = load i64, i64* %PC.i262
  %2423 = add i64 %2422, 6
  %2424 = load i64, i64* %PC.i262
  %2425 = add i64 %2424, 6
  store i64 %2425, i64* %PC.i262
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2427 = load i8, i8* %2426, align 1
  %2428 = icmp eq i8 %2427, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %BRANCH_TAKEN, align 1
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2431 = select i1 %2428, i64 %2421, i64 %2423
  store i64 %2431, i64* %2430, align 8
  store %struct.Memory* %loadMem_45df5d, %struct.Memory** %MEMORY
  %loadBr_45df5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45df5d = icmp eq i8 %loadBr_45df5d, 1
  br i1 %cmpBr_45df5d, label %block_.L_45df7d, label %block_45df63

block_45df63:                                     ; preds = %block_.L_45df59
  %loadMem_45df63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 9
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RSI.i260 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 15
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %RBP.i261
  %2442 = sub i64 %2441, 32
  %2443 = load i64, i64* %PC.i259
  %2444 = add i64 %2443, 4
  store i64 %2444, i64* %PC.i259
  store i64 %2442, i64* %RSI.i260, align 8
  store %struct.Memory* %loadMem_45df63, %struct.Memory** %MEMORY
  %loadMem_45df67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 11
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RDI.i257 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 15
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %RBP.i258
  %2455 = sub i64 %2454, 8
  %2456 = load i64, i64* %PC.i256
  %2457 = add i64 %2456, 3
  store i64 %2457, i64* %PC.i256
  %2458 = inttoptr i64 %2455 to i32*
  %2459 = load i32, i32* %2458
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RDI.i257, align 8
  store %struct.Memory* %loadMem_45df67, %struct.Memory** %MEMORY
  %loadMem_45df6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 7
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i255
  %2471 = sub i64 %2470, 20
  %2472 = load i64, i64* %PC.i253
  %2473 = add i64 %2472, 3
  store i64 %2473, i64* %PC.i253
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_45df6a, %struct.Memory** %MEMORY
  %loadMem_45df6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 5
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 15
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %RBP.i252
  %2487 = sub i64 %2486, 24
  %2488 = load i64, i64* %PC.i250
  %2489 = add i64 %2488, 3
  store i64 %2489, i64* %PC.i250
  %2490 = inttoptr i64 %2487 to i32*
  %2491 = load i32, i32* %2490
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RCX.i251, align 8
  store %struct.Memory* %loadMem_45df6d, %struct.Memory** %MEMORY
  %loadMem1_45df70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %PC.i249
  %2497 = add i64 %2496, 512
  %2498 = load i64, i64* %PC.i249
  %2499 = add i64 %2498, 5
  %2500 = load i64, i64* %PC.i249
  %2501 = add i64 %2500, 5
  store i64 %2501, i64* %PC.i249
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2503 = load i64, i64* %2502, align 8
  %2504 = add i64 %2503, -8
  %2505 = inttoptr i64 %2504 to i64*
  store i64 %2499, i64* %2505
  store i64 %2504, i64* %2502, align 8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2497, i64* %2506, align 8
  store %struct.Memory* %loadMem1_45df70, %struct.Memory** %MEMORY
  %loadMem2_45df70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45df70 = load i64, i64* %3
  %call2_45df70 = call %struct.Memory* @sub_45e170.attack1(%struct.State* %0, i64 %loadPC_45df70, %struct.Memory* %loadMem2_45df70)
  store %struct.Memory* %call2_45df70, %struct.Memory** %MEMORY
  %loadMem_45df75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 1
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %2512 to i32*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 15
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %RBP.i248
  %2517 = sub i64 %2516, 40
  %2518 = load i32, i32* %EAX.i247
  %2519 = zext i32 %2518 to i64
  %2520 = load i64, i64* %PC.i246
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i246
  %2522 = inttoptr i64 %2517 to i32*
  store i32 %2518, i32* %2522
  store %struct.Memory* %loadMem_45df75, %struct.Memory** %MEMORY
  %loadMem_45df78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2525 to i64*
  %2526 = load i64, i64* %PC.i245
  %2527 = add i64 %2526, 174
  %2528 = load i64, i64* %PC.i245
  %2529 = add i64 %2528, 5
  store i64 %2529, i64* %PC.i245
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2527, i64* %2530, align 8
  store %struct.Memory* %loadMem_45df78, %struct.Memory** %MEMORY
  br label %block_.L_45e026

block_.L_45df7d:                                  ; preds = %block_.L_45df59
  %loadMem_45df7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 15
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RBP.i244
  %2538 = sub i64 %2537, 36
  %2539 = load i64, i64* %PC.i243
  %2540 = add i64 %2539, 4
  store i64 %2540, i64* %PC.i243
  %2541 = inttoptr i64 %2538 to i32*
  %2542 = load i32, i32* %2541
  %2543 = sub i32 %2542, 2
  %2544 = icmp ult i32 %2542, 2
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2545, i8* %2546, align 1
  %2547 = and i32 %2543, 255
  %2548 = call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2551, i8* %2552, align 1
  %2553 = xor i32 %2542, 2
  %2554 = xor i32 %2553, %2543
  %2555 = lshr i32 %2554, 4
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2557, i8* %2558, align 1
  %2559 = icmp eq i32 %2543, 0
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2560, i8* %2561, align 1
  %2562 = lshr i32 %2543, 31
  %2563 = trunc i32 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2542, 31
  %2566 = xor i32 %2562, %2565
  %2567 = add i32 %2566, %2565
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2569, i8* %2570, align 1
  store %struct.Memory* %loadMem_45df7d, %struct.Memory** %MEMORY
  %loadMem_45df81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %PC.i242
  %2575 = add i64 %2574, 83
  %2576 = load i64, i64* %PC.i242
  %2577 = add i64 %2576, 6
  %2578 = load i64, i64* %PC.i242
  %2579 = add i64 %2578, 6
  store i64 %2579, i64* %PC.i242
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2581 = load i8, i8* %2580, align 1
  %2582 = icmp eq i8 %2581, 0
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %BRANCH_TAKEN, align 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2585 = select i1 %2582, i64 %2575, i64 %2577
  store i64 %2585, i64* %2584, align 8
  store %struct.Memory* %loadMem_45df81, %struct.Memory** %MEMORY
  %loadBr_45df81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45df81 = icmp eq i8 %loadBr_45df81, 1
  br i1 %cmpBr_45df81, label %block_.L_45dfd4, label %block_45df87

block_45df87:                                     ; preds = %block_.L_45df7d
  %loadMem_45df87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 1
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %PC.i240
  %2593 = add i64 %2592, 7
  store i64 %2593, i64* %PC.i240
  %2594 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_45df87, %struct.Memory** %MEMORY
  %loadMem_45df8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 33
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 5
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %PC.i238
  %2603 = add i64 %2602, 7
  store i64 %2603, i64* %PC.i238
  %2604 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  %2605 = zext i32 %2604 to i64
  store i64 %2605, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_45df8e, %struct.Memory** %MEMORY
  %loadMem_45df95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 5
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %2611 to i64*
  %2612 = load i64, i64* %RCX.i237
  %2613 = load i64, i64* %PC.i236
  %2614 = add i64 %2613, 3
  store i64 %2614, i64* %PC.i236
  %2615 = trunc i64 %2612 to i32
  %2616 = add i32 10, %2615
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RCX.i237, align 8
  %2618 = icmp ult i32 %2616, %2615
  %2619 = icmp ult i32 %2616, 10
  %2620 = or i1 %2618, %2619
  %2621 = zext i1 %2620 to i8
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2621, i8* %2622, align 1
  %2623 = and i32 %2616, 255
  %2624 = call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2627, i8* %2628, align 1
  %2629 = xor i64 10, %2612
  %2630 = trunc i64 %2629 to i32
  %2631 = xor i32 %2630, %2616
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2634, i8* %2635, align 1
  %2636 = icmp eq i32 %2616, 0
  %2637 = zext i1 %2636 to i8
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2637, i8* %2638, align 1
  %2639 = lshr i32 %2616, 31
  %2640 = trunc i32 %2639 to i8
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2640, i8* %2641, align 1
  %2642 = lshr i32 %2615, 31
  %2643 = xor i32 %2639, %2642
  %2644 = add i32 %2643, %2639
  %2645 = icmp eq i32 %2644, 2
  %2646 = zext i1 %2645 to i8
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2646, i8* %2647, align 1
  store %struct.Memory* %loadMem_45df95, %struct.Memory** %MEMORY
  %loadMem_45df98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 1
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %2653 to i32*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 5
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %ECX.i235 = bitcast %union.anon* %2656 to i32*
  %2657 = load i32, i32* %EAX.i234
  %2658 = zext i32 %2657 to i64
  %2659 = load i32, i32* %ECX.i235
  %2660 = zext i32 %2659 to i64
  %2661 = load i64, i64* %PC.i233
  %2662 = add i64 %2661, 2
  store i64 %2662, i64* %PC.i233
  %2663 = sub i32 %2657, %2659
  %2664 = icmp ult i32 %2657, %2659
  %2665 = zext i1 %2664 to i8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2665, i8* %2666, align 1
  %2667 = and i32 %2663, 255
  %2668 = call i32 @llvm.ctpop.i32(i32 %2667)
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = xor i8 %2670, 1
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2671, i8* %2672, align 1
  %2673 = xor i64 %2660, %2658
  %2674 = trunc i64 %2673 to i32
  %2675 = xor i32 %2674, %2663
  %2676 = lshr i32 %2675, 4
  %2677 = trunc i32 %2676 to i8
  %2678 = and i8 %2677, 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2678, i8* %2679, align 1
  %2680 = icmp eq i32 %2663, 0
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2681, i8* %2682, align 1
  %2683 = lshr i32 %2663, 31
  %2684 = trunc i32 %2683 to i8
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2684, i8* %2685, align 1
  %2686 = lshr i32 %2657, 31
  %2687 = lshr i32 %2659, 31
  %2688 = xor i32 %2687, %2686
  %2689 = xor i32 %2683, %2686
  %2690 = add i32 %2689, %2688
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2692, i8* %2693, align 1
  store %struct.Memory* %loadMem_45df98, %struct.Memory** %MEMORY
  %loadMem_45df9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %PC.i232
  %2698 = add i64 %2697, 32
  %2699 = load i64, i64* %PC.i232
  %2700 = add i64 %2699, 6
  %2701 = load i64, i64* %PC.i232
  %2702 = add i64 %2701, 6
  store i64 %2702, i64* %PC.i232
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2704 = load i8, i8* %2703, align 1
  %2705 = icmp ne i8 %2704, 0
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2707 = load i8, i8* %2706, align 1
  %2708 = icmp ne i8 %2707, 0
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2710 = load i8, i8* %2709, align 1
  %2711 = icmp ne i8 %2710, 0
  %2712 = xor i1 %2708, %2711
  %2713 = or i1 %2705, %2712
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %BRANCH_TAKEN, align 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2716 = select i1 %2713, i64 %2698, i64 %2700
  store i64 %2716, i64* %2715, align 8
  store %struct.Memory* %loadMem_45df9a, %struct.Memory** %MEMORY
  %loadBr_45df9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45df9a = icmp eq i8 %loadBr_45df9a, 1
  br i1 %cmpBr_45df9a, label %block_.L_45dfba, label %block_45dfa0

block_45dfa0:                                     ; preds = %block_45df87
  %loadMem_45dfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 9
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RSI.i230 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 15
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RBP.i231
  %2727 = sub i64 %2726, 32
  %2728 = load i64, i64* %PC.i229
  %2729 = add i64 %2728, 4
  store i64 %2729, i64* %PC.i229
  store i64 %2727, i64* %RSI.i230, align 8
  store %struct.Memory* %loadMem_45dfa0, %struct.Memory** %MEMORY
  %loadMem_45dfa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 11
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RDI.i227 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 15
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %RBP.i228
  %2740 = sub i64 %2739, 8
  %2741 = load i64, i64* %PC.i226
  %2742 = add i64 %2741, 3
  store i64 %2742, i64* %PC.i226
  %2743 = inttoptr i64 %2740 to i32*
  %2744 = load i32, i32* %2743
  %2745 = zext i32 %2744 to i64
  store i64 %2745, i64* %RDI.i227, align 8
  store %struct.Memory* %loadMem_45dfa4, %struct.Memory** %MEMORY
  %loadMem_45dfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 7
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 15
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RBP.i225
  %2756 = sub i64 %2755, 20
  %2757 = load i64, i64* %PC.i223
  %2758 = add i64 %2757, 3
  store i64 %2758, i64* %PC.i223
  %2759 = inttoptr i64 %2756 to i32*
  %2760 = load i32, i32* %2759
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RDX.i224, align 8
  store %struct.Memory* %loadMem_45dfa7, %struct.Memory** %MEMORY
  %loadMem_45dfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 5
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 15
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %2770 to i64*
  %2771 = load i64, i64* %RBP.i222
  %2772 = sub i64 %2771, 24
  %2773 = load i64, i64* %PC.i220
  %2774 = add i64 %2773, 3
  store i64 %2774, i64* %PC.i220
  %2775 = inttoptr i64 %2772 to i32*
  %2776 = load i32, i32* %2775
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_45dfaa, %struct.Memory** %MEMORY
  %loadMem1_45dfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %PC.i219
  %2782 = add i64 %2781, 1347
  %2783 = load i64, i64* %PC.i219
  %2784 = add i64 %2783, 5
  %2785 = load i64, i64* %PC.i219
  %2786 = add i64 %2785, 5
  store i64 %2786, i64* %PC.i219
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2788 = load i64, i64* %2787, align 8
  %2789 = add i64 %2788, -8
  %2790 = inttoptr i64 %2789 to i64*
  store i64 %2784, i64* %2790
  store i64 %2789, i64* %2787, align 8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2782, i64* %2791, align 8
  store %struct.Memory* %loadMem1_45dfad, %struct.Memory** %MEMORY
  %loadMem2_45dfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45dfad = load i64, i64* %3
  %call2_45dfad = call %struct.Memory* @sub_45e4f0.simple_ladder_attack(%struct.State* %0, i64 %loadPC_45dfad, %struct.Memory* %loadMem2_45dfad)
  store %struct.Memory* %call2_45dfad, %struct.Memory** %MEMORY
  %loadMem_45dfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 33
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 1
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %EAX.i217 = bitcast %union.anon* %2797 to i32*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 15
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %RBP.i218
  %2802 = sub i64 %2801, 40
  %2803 = load i32, i32* %EAX.i217
  %2804 = zext i32 %2803 to i64
  %2805 = load i64, i64* %PC.i216
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %PC.i216
  %2807 = inttoptr i64 %2802 to i32*
  store i32 %2803, i32* %2807
  store %struct.Memory* %loadMem_45dfb2, %struct.Memory** %MEMORY
  %loadMem_45dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %PC.i215
  %2812 = add i64 %2811, 26
  %2813 = load i64, i64* %PC.i215
  %2814 = add i64 %2813, 5
  store i64 %2814, i64* %PC.i215
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2812, i64* %2815, align 8
  store %struct.Memory* %loadMem_45dfb5, %struct.Memory** %MEMORY
  br label %block_.L_45dfcf

block_.L_45dfba:                                  ; preds = %block_45df87
  %loadMem_45dfba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 9
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RSI.i213 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 15
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RBP.i214
  %2826 = sub i64 %2825, 32
  %2827 = load i64, i64* %PC.i212
  %2828 = add i64 %2827, 4
  store i64 %2828, i64* %PC.i212
  store i64 %2826, i64* %RSI.i213, align 8
  store %struct.Memory* %loadMem_45dfba, %struct.Memory** %MEMORY
  %loadMem_45dfbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 11
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RDI.i210 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 15
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RBP.i211
  %2839 = sub i64 %2838, 8
  %2840 = load i64, i64* %PC.i209
  %2841 = add i64 %2840, 3
  store i64 %2841, i64* %PC.i209
  %2842 = inttoptr i64 %2839 to i32*
  %2843 = load i32, i32* %2842
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RDI.i210, align 8
  store %struct.Memory* %loadMem_45dfbe, %struct.Memory** %MEMORY
  %loadMem_45dfc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 7
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 15
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %RBP.i208
  %2855 = sub i64 %2854, 20
  %2856 = load i64, i64* %PC.i206
  %2857 = add i64 %2856, 3
  store i64 %2857, i64* %PC.i206
  %2858 = inttoptr i64 %2855 to i32*
  %2859 = load i32, i32* %2858
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RDX.i207, align 8
  store %struct.Memory* %loadMem_45dfc1, %struct.Memory** %MEMORY
  %loadMem_45dfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 5
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i205
  %2871 = sub i64 %2870, 24
  %2872 = load i64, i64* %PC.i203
  %2873 = add i64 %2872, 3
  store i64 %2873, i64* %PC.i203
  %2874 = inttoptr i64 %2871 to i32*
  %2875 = load i32, i32* %2874
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_45dfc4, %struct.Memory** %MEMORY
  %loadMem1_45dfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %PC.i202
  %2881 = add i64 %2880, 2777
  %2882 = load i64, i64* %PC.i202
  %2883 = add i64 %2882, 5
  %2884 = load i64, i64* %PC.i202
  %2885 = add i64 %2884, 5
  store i64 %2885, i64* %PC.i202
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2887 = load i64, i64* %2886, align 8
  %2888 = add i64 %2887, -8
  %2889 = inttoptr i64 %2888 to i64*
  store i64 %2883, i64* %2889
  store i64 %2888, i64* %2886, align 8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2881, i64* %2890, align 8
  store %struct.Memory* %loadMem1_45dfc7, %struct.Memory** %MEMORY
  %loadMem2_45dfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45dfc7 = load i64, i64* %3
  %call2_45dfc7 = call %struct.Memory* @sub_45eaa0.attack2(%struct.State* %0, i64 %loadPC_45dfc7, %struct.Memory* %loadMem2_45dfc7)
  store %struct.Memory* %call2_45dfc7, %struct.Memory** %MEMORY
  %loadMem_45dfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 1
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %2896 to i32*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 15
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %RBP.i201
  %2901 = sub i64 %2900, 40
  %2902 = load i32, i32* %EAX.i200
  %2903 = zext i32 %2902 to i64
  %2904 = load i64, i64* %PC.i199
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC.i199
  %2906 = inttoptr i64 %2901 to i32*
  store i32 %2902, i32* %2906
  store %struct.Memory* %loadMem_45dfcc, %struct.Memory** %MEMORY
  br label %block_.L_45dfcf

block_.L_45dfcf:                                  ; preds = %block_.L_45dfba, %block_45dfa0
  %loadMem_45dfcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %PC.i198
  %2911 = add i64 %2910, 82
  %2912 = load i64, i64* %PC.i198
  %2913 = add i64 %2912, 5
  store i64 %2913, i64* %PC.i198
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2911, i64* %2914, align 8
  store %struct.Memory* %loadMem_45dfcf, %struct.Memory** %MEMORY
  br label %block_.L_45e021

block_.L_45dfd4:                                  ; preds = %block_.L_45df7d
  %loadMem_45dfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RBP.i197
  %2922 = sub i64 %2921, 36
  %2923 = load i64, i64* %PC.i196
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %PC.i196
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = sub i32 %2926, 3
  %2928 = icmp ult i32 %2926, 3
  %2929 = zext i1 %2928 to i8
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2929, i8* %2930, align 1
  %2931 = and i32 %2927, 255
  %2932 = call i32 @llvm.ctpop.i32(i32 %2931)
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  %2935 = xor i8 %2934, 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2935, i8* %2936, align 1
  %2937 = xor i32 %2926, 3
  %2938 = xor i32 %2937, %2927
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2941, i8* %2942, align 1
  %2943 = icmp eq i32 %2927, 0
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2927, 31
  %2947 = trunc i32 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2926, 31
  %2950 = xor i32 %2946, %2949
  %2951 = add i32 %2950, %2949
  %2952 = icmp eq i32 %2951, 2
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2953, i8* %2954, align 1
  store %struct.Memory* %loadMem_45dfd4, %struct.Memory** %MEMORY
  %loadMem_45dfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i195
  %2959 = add i64 %2958, 32
  %2960 = load i64, i64* %PC.i195
  %2961 = add i64 %2960, 6
  %2962 = load i64, i64* %PC.i195
  %2963 = add i64 %2962, 6
  store i64 %2963, i64* %PC.i195
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2965 = load i8, i8* %2964, align 1
  %2966 = icmp eq i8 %2965, 0
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %BRANCH_TAKEN, align 1
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2969 = select i1 %2966, i64 %2959, i64 %2961
  store i64 %2969, i64* %2968, align 8
  store %struct.Memory* %loadMem_45dfd8, %struct.Memory** %MEMORY
  %loadBr_45dfd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dfd8 = icmp eq i8 %loadBr_45dfd8, 1
  br i1 %cmpBr_45dfd8, label %block_.L_45dff8, label %block_45dfde

block_45dfde:                                     ; preds = %block_.L_45dfd4
  %loadMem_45dfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 9
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RBP.i194
  %2980 = sub i64 %2979, 32
  %2981 = load i64, i64* %PC.i192
  %2982 = add i64 %2981, 4
  store i64 %2982, i64* %PC.i192
  store i64 %2980, i64* %RSI.i193, align 8
  store %struct.Memory* %loadMem_45dfde, %struct.Memory** %MEMORY
  %loadMem_45dfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 11
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RDI.i190 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 15
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RBP.i191
  %2993 = sub i64 %2992, 8
  %2994 = load i64, i64* %PC.i189
  %2995 = add i64 %2994, 3
  store i64 %2995, i64* %PC.i189
  %2996 = inttoptr i64 %2993 to i32*
  %2997 = load i32, i32* %2996
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RDI.i190, align 8
  store %struct.Memory* %loadMem_45dfe2, %struct.Memory** %MEMORY
  %loadMem_45dfe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 7
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RDX.i187 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 15
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RBP.i188
  %3009 = sub i64 %3008, 20
  %3010 = load i64, i64* %PC.i186
  %3011 = add i64 %3010, 3
  store i64 %3011, i64* %PC.i186
  %3012 = inttoptr i64 %3009 to i32*
  %3013 = load i32, i32* %3012
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RDX.i187, align 8
  store %struct.Memory* %loadMem_45dfe5, %struct.Memory** %MEMORY
  %loadMem_45dfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 33
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 5
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 15
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RBP.i185
  %3025 = sub i64 %3024, 24
  %3026 = load i64, i64* %PC.i183
  %3027 = add i64 %3026, 3
  store i64 %3027, i64* %PC.i183
  %3028 = inttoptr i64 %3025 to i32*
  %3029 = load i32, i32* %3028
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RCX.i184, align 8
  store %struct.Memory* %loadMem_45dfe8, %struct.Memory** %MEMORY
  %loadMem1_45dfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %PC.i182
  %3035 = add i64 %3034, 8021
  %3036 = load i64, i64* %PC.i182
  %3037 = add i64 %3036, 5
  %3038 = load i64, i64* %PC.i182
  %3039 = add i64 %3038, 5
  store i64 %3039, i64* %PC.i182
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3041 = load i64, i64* %3040, align 8
  %3042 = add i64 %3041, -8
  %3043 = inttoptr i64 %3042 to i64*
  store i64 %3037, i64* %3043
  store i64 %3042, i64* %3040, align 8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3035, i64* %3044, align 8
  store %struct.Memory* %loadMem1_45dfeb, %struct.Memory** %MEMORY
  %loadMem2_45dfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45dfeb = load i64, i64* %3
  %call2_45dfeb = call %struct.Memory* @sub_45ff40.attack3(%struct.State* %0, i64 %loadPC_45dfeb, %struct.Memory* %loadMem2_45dfeb)
  store %struct.Memory* %call2_45dfeb, %struct.Memory** %MEMORY
  %loadMem_45dff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 1
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %3050 to i32*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 15
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i181
  %3055 = sub i64 %3054, 40
  %3056 = load i32, i32* %EAX.i180
  %3057 = zext i32 %3056 to i64
  %3058 = load i64, i64* %PC.i179
  %3059 = add i64 %3058, 3
  store i64 %3059, i64* %PC.i179
  %3060 = inttoptr i64 %3055 to i32*
  store i32 %3056, i32* %3060
  store %struct.Memory* %loadMem_45dff0, %struct.Memory** %MEMORY
  %loadMem_45dff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3063 to i64*
  %3064 = load i64, i64* %PC.i178
  %3065 = add i64 %3064, 41
  %3066 = load i64, i64* %PC.i178
  %3067 = add i64 %3066, 5
  store i64 %3067, i64* %PC.i178
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3065, i64* %3068, align 8
  store %struct.Memory* %loadMem_45dff3, %struct.Memory** %MEMORY
  br label %block_.L_45e01c

block_.L_45dff8:                                  ; preds = %block_.L_45dfd4
  %loadMem_45dff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 33
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RBP.i177
  %3076 = sub i64 %3075, 36
  %3077 = load i64, i64* %PC.i176
  %3078 = add i64 %3077, 4
  store i64 %3078, i64* %PC.i176
  %3079 = inttoptr i64 %3076 to i32*
  %3080 = load i32, i32* %3079
  %3081 = sub i32 %3080, 4
  %3082 = icmp ult i32 %3080, 4
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3083, i8* %3084, align 1
  %3085 = and i32 %3081, 255
  %3086 = call i32 @llvm.ctpop.i32(i32 %3085)
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3089, i8* %3090, align 1
  %3091 = xor i32 %3080, 4
  %3092 = xor i32 %3091, %3081
  %3093 = lshr i32 %3092, 4
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3095, i8* %3096, align 1
  %3097 = icmp eq i32 %3081, 0
  %3098 = zext i1 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3098, i8* %3099, align 1
  %3100 = lshr i32 %3081, 31
  %3101 = trunc i32 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3101, i8* %3102, align 1
  %3103 = lshr i32 %3080, 31
  %3104 = xor i32 %3100, %3103
  %3105 = add i32 %3104, %3103
  %3106 = icmp eq i32 %3105, 2
  %3107 = zext i1 %3106 to i8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3107, i8* %3108, align 1
  store %struct.Memory* %loadMem_45dff8, %struct.Memory** %MEMORY
  %loadMem_45dffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %PC.i175
  %3113 = add i64 %3112, 27
  %3114 = load i64, i64* %PC.i175
  %3115 = add i64 %3114, 6
  %3116 = load i64, i64* %PC.i175
  %3117 = add i64 %3116, 6
  store i64 %3117, i64* %PC.i175
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3119 = load i8, i8* %3118, align 1
  %3120 = icmp eq i8 %3119, 0
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %BRANCH_TAKEN, align 1
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3123 = select i1 %3120, i64 %3113, i64 %3115
  store i64 %3123, i64* %3122, align 8
  store %struct.Memory* %loadMem_45dffc, %struct.Memory** %MEMORY
  %loadBr_45dffc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dffc = icmp eq i8 %loadBr_45dffc, 1
  br i1 %cmpBr_45dffc, label %block_.L_45e017, label %block_45e002

block_45e002:                                     ; preds = %block_.L_45dff8
  %loadMem_45e002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 33
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 9
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RSI.i173 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 15
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %RBP.i174
  %3134 = sub i64 %3133, 32
  %3135 = load i64, i64* %PC.i172
  %3136 = add i64 %3135, 4
  store i64 %3136, i64* %PC.i172
  store i64 %3134, i64* %RSI.i173, align 8
  store %struct.Memory* %loadMem_45e002, %struct.Memory** %MEMORY
  %loadMem_45e006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 11
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RDI.i170 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RBP.i171
  %3147 = sub i64 %3146, 8
  %3148 = load i64, i64* %PC.i169
  %3149 = add i64 %3148, 3
  store i64 %3149, i64* %PC.i169
  %3150 = inttoptr i64 %3147 to i32*
  %3151 = load i32, i32* %3150
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RDI.i170, align 8
  store %struct.Memory* %loadMem_45e006, %struct.Memory** %MEMORY
  %loadMem_45e009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 7
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 15
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %3161 to i64*
  %3162 = load i64, i64* %RBP.i168
  %3163 = sub i64 %3162, 20
  %3164 = load i64, i64* %PC.i166
  %3165 = add i64 %3164, 3
  store i64 %3165, i64* %PC.i166
  %3166 = inttoptr i64 %3163 to i32*
  %3167 = load i32, i32* %3166
  %3168 = zext i32 %3167 to i64
  store i64 %3168, i64* %RDX.i167, align 8
  store %struct.Memory* %loadMem_45e009, %struct.Memory** %MEMORY
  %loadMem_45e00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 5
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 15
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3177 to i64*
  %3178 = load i64, i64* %RBP.i165
  %3179 = sub i64 %3178, 24
  %3180 = load i64, i64* %PC.i163
  %3181 = add i64 %3180, 3
  store i64 %3181, i64* %PC.i163
  %3182 = inttoptr i64 %3179 to i32*
  %3183 = load i32, i32* %3182
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_45e00c, %struct.Memory** %MEMORY
  %loadMem1_45e00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %PC.i162
  %3189 = add i64 %3188, 13185
  %3190 = load i64, i64* %PC.i162
  %3191 = add i64 %3190, 5
  %3192 = load i64, i64* %PC.i162
  %3193 = add i64 %3192, 5
  store i64 %3193, i64* %PC.i162
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3195 = load i64, i64* %3194, align 8
  %3196 = add i64 %3195, -8
  %3197 = inttoptr i64 %3196 to i64*
  store i64 %3191, i64* %3197
  store i64 %3196, i64* %3194, align 8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3189, i64* %3198, align 8
  store %struct.Memory* %loadMem1_45e00f, %struct.Memory** %MEMORY
  %loadMem2_45e00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e00f = load i64, i64* %3
  %call2_45e00f = call %struct.Memory* @sub_461390.attack4(%struct.State* %0, i64 %loadPC_45e00f, %struct.Memory* %loadMem2_45e00f)
  store %struct.Memory* %call2_45e00f, %struct.Memory** %MEMORY
  %loadMem_45e014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 1
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %3204 to i32*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 15
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RBP.i161
  %3209 = sub i64 %3208, 40
  %3210 = load i32, i32* %EAX.i160
  %3211 = zext i32 %3210 to i64
  %3212 = load i64, i64* %PC.i159
  %3213 = add i64 %3212, 3
  store i64 %3213, i64* %PC.i159
  %3214 = inttoptr i64 %3209 to i32*
  store i32 %3210, i32* %3214
  store %struct.Memory* %loadMem_45e014, %struct.Memory** %MEMORY
  br label %block_.L_45e017

block_.L_45e017:                                  ; preds = %block_45e002, %block_.L_45dff8
  %loadMem_45e017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %PC.i158
  %3219 = add i64 %3218, 5
  %3220 = load i64, i64* %PC.i158
  %3221 = add i64 %3220, 5
  store i64 %3221, i64* %PC.i158
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3219, i64* %3222, align 8
  store %struct.Memory* %loadMem_45e017, %struct.Memory** %MEMORY
  br label %block_.L_45e01c

block_.L_45e01c:                                  ; preds = %block_.L_45e017, %block_45dfde
  %loadMem_45e01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %PC.i157
  %3227 = add i64 %3226, 5
  %3228 = load i64, i64* %PC.i157
  %3229 = add i64 %3228, 5
  store i64 %3229, i64* %PC.i157
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3227, i64* %3230, align 8
  store %struct.Memory* %loadMem_45e01c, %struct.Memory** %MEMORY
  br label %block_.L_45e021

block_.L_45e021:                                  ; preds = %block_.L_45e01c, %block_.L_45dfcf
  %loadMem_45e021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %PC.i156
  %3235 = add i64 %3234, 5
  %3236 = load i64, i64* %PC.i156
  %3237 = add i64 %3236, 5
  store i64 %3237, i64* %PC.i156
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3235, i64* %3238, align 8
  store %struct.Memory* %loadMem_45e021, %struct.Memory** %MEMORY
  br label %block_.L_45e026

block_.L_45e026:                                  ; preds = %block_.L_45e021, %block_45df63
  %loadMem_45e026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 15
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RBP.i155
  %3246 = sub i64 %3245, 40
  %3247 = load i64, i64* %PC.i154
  %3248 = add i64 %3247, 4
  store i64 %3248, i64* %PC.i154
  %3249 = inttoptr i64 %3246 to i32*
  %3250 = load i32, i32* %3249
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3251, align 1
  %3252 = and i32 %3250, 255
  %3253 = call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3256, i8* %3257, align 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3258, align 1
  %3259 = icmp eq i32 %3250, 0
  %3260 = zext i1 %3259 to i8
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3260, i8* %3261, align 1
  %3262 = lshr i32 %3250, 31
  %3263 = trunc i32 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3263, i8* %3264, align 1
  %3265 = lshr i32 %3250, 31
  %3266 = xor i32 %3262, %3265
  %3267 = add i32 %3266, %3265
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3269, i8* %3270, align 1
  store %struct.Memory* %loadMem_45e026, %struct.Memory** %MEMORY
  %loadMem_45e02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %PC.i153
  %3275 = add i64 %3274, 21
  %3276 = load i64, i64* %PC.i153
  %3277 = add i64 %3276, 6
  %3278 = load i64, i64* %PC.i153
  %3279 = add i64 %3278, 6
  store i64 %3279, i64* %PC.i153
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3281 = load i8, i8* %3280, align 1
  %3282 = icmp ne i8 %3281, 0
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3284 = load i8, i8* %3283, align 1
  %3285 = icmp ne i8 %3284, 0
  %3286 = xor i1 %3282, %3285
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %BRANCH_TAKEN, align 1
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3289 = select i1 %3286, i64 %3275, i64 %3277
  store i64 %3289, i64* %3288, align 8
  store %struct.Memory* %loadMem_45e02a, %struct.Memory** %MEMORY
  %loadBr_45e02a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e02a = icmp eq i8 %loadBr_45e02a, 1
  br i1 %cmpBr_45e02a, label %block_.L_45e03f, label %block_45e030

block_45e030:                                     ; preds = %block_.L_45e026
  %loadMem_45e030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 15
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3295 to i64*
  %3296 = load i64, i64* %RBP.i152
  %3297 = sub i64 %3296, 40
  %3298 = load i64, i64* %PC.i151
  %3299 = add i64 %3298, 4
  store i64 %3299, i64* %PC.i151
  %3300 = inttoptr i64 %3297 to i32*
  %3301 = load i32, i32* %3300
  %3302 = sub i32 %3301, 5
  %3303 = icmp ult i32 %3301, 5
  %3304 = zext i1 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3304, i8* %3305, align 1
  %3306 = and i32 %3302, 255
  %3307 = call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3310, i8* %3311, align 1
  %3312 = xor i32 %3301, 5
  %3313 = xor i32 %3312, %3302
  %3314 = lshr i32 %3313, 4
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3316, i8* %3317, align 1
  %3318 = icmp eq i32 %3302, 0
  %3319 = zext i1 %3318 to i8
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3319, i8* %3320, align 1
  %3321 = lshr i32 %3302, 31
  %3322 = trunc i32 %3321 to i8
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3322, i8* %3323, align 1
  %3324 = lshr i32 %3301, 31
  %3325 = xor i32 %3321, %3324
  %3326 = add i32 %3325, %3324
  %3327 = icmp eq i32 %3326, 2
  %3328 = zext i1 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3328, i8* %3329, align 1
  store %struct.Memory* %loadMem_45e030, %struct.Memory** %MEMORY
  %loadMem_45e034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %PC.i150
  %3334 = add i64 %3333, 11
  %3335 = load i64, i64* %PC.i150
  %3336 = add i64 %3335, 6
  %3337 = load i64, i64* %PC.i150
  %3338 = add i64 %3337, 6
  store i64 %3338, i64* %PC.i150
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3340 = load i8, i8* %3339, align 1
  %3341 = icmp eq i8 %3340, 0
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3343 = load i8, i8* %3342, align 1
  %3344 = icmp ne i8 %3343, 0
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3346 = load i8, i8* %3345, align 1
  %3347 = icmp ne i8 %3346, 0
  %3348 = xor i1 %3344, %3347
  %3349 = xor i1 %3348, true
  %3350 = and i1 %3341, %3349
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %BRANCH_TAKEN, align 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3353 = select i1 %3350, i64 %3334, i64 %3336
  store i64 %3353, i64* %3352, align 8
  store %struct.Memory* %loadMem_45e034, %struct.Memory** %MEMORY
  %loadBr_45e034 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e034 = icmp eq i8 %loadBr_45e034, 1
  br i1 %cmpBr_45e034, label %block_.L_45e03f, label %block_45e03a

block_45e03a:                                     ; preds = %block_45e030
  %loadMem_45e03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %PC.i149
  %3358 = add i64 %3357, 118
  %3359 = load i64, i64* %PC.i149
  %3360 = add i64 %3359, 5
  store i64 %3360, i64* %PC.i149
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3358, i64* %3361, align 8
  store %struct.Memory* %loadMem_45e03a, %struct.Memory** %MEMORY
  br label %block_.L_45e0b0

block_.L_45e03f:                                  ; preds = %block_45e030, %block_.L_45e026
  %loadMem_45e03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 11
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %PC.i148
  %3369 = add i64 %3368, 10
  store i64 %3369, i64* %PC.i148
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_45e03f, %struct.Memory** %MEMORY
  %loadMem_45e049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 9
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %PC.i147
  %3377 = add i64 %3376, 5
  store i64 %3377, i64* %PC.i147
  store i64 2348, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_45e049, %struct.Memory** %MEMORY
  %loadMem_45e04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 7
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %PC.i145
  %3385 = add i64 %3384, 10
  store i64 %3385, i64* %PC.i145
  store i64 ptrtoint (%G__0x57fbe2_type* @G__0x57fbe2 to i64), i64* %RDX.i146, align 8
  store %struct.Memory* %loadMem_45e04e, %struct.Memory** %MEMORY
  %loadMem_45e058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %PC.i143
  %3393 = add i64 %3392, 5
  store i64 %3393, i64* %PC.i143
  store i64 20, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_45e058, %struct.Memory** %MEMORY
  %loadMem_45e05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 5
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RBP.i142
  %3404 = sub i64 %3403, 8
  %3405 = load i64, i64* %PC.i140
  %3406 = add i64 %3405, 3
  store i64 %3406, i64* %PC.i140
  %3407 = inttoptr i64 %3404 to i32*
  %3408 = load i32, i32* %3407
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_45e05d, %struct.Memory** %MEMORY
  %loadMem_45e060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 1
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %3415 to i32*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 15
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3418 to i64*
  %3419 = load i64, i64* %RBP.i139
  %3420 = sub i64 %3419, 212
  %3421 = load i32, i32* %EAX.i138
  %3422 = zext i32 %3421 to i64
  %3423 = load i64, i64* %PC.i137
  %3424 = add i64 %3423, 6
  store i64 %3424, i64* %PC.i137
  %3425 = inttoptr i64 %3420 to i32*
  store i32 %3421, i32* %3425
  store %struct.Memory* %loadMem_45e060, %struct.Memory** %MEMORY
  %loadMem_45e066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 5
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %ECX.i135 = bitcast %union.anon* %3431 to i32*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 1
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3434 to i64*
  %3435 = load i32, i32* %ECX.i135
  %3436 = zext i32 %3435 to i64
  %3437 = load i64, i64* %PC.i134
  %3438 = add i64 %3437, 2
  store i64 %3438, i64* %PC.i134
  %3439 = and i64 %3436, 4294967295
  store i64 %3439, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_45e066, %struct.Memory** %MEMORY
  %loadMem_45e068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 7
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 15
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3448 to i64*
  %3449 = load i64, i64* %RBP.i133
  %3450 = sub i64 %3449, 224
  %3451 = load i64, i64* %RDX.i132
  %3452 = load i64, i64* %PC.i131
  %3453 = add i64 %3452, 7
  store i64 %3453, i64* %PC.i131
  %3454 = inttoptr i64 %3450 to i64*
  store i64 %3451, i64* %3454
  store %struct.Memory* %loadMem_45e068, %struct.Memory** %MEMORY
  %loadMem_45e06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 33
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3457 to i64*
  %3458 = load i64, i64* %PC.i130
  %3459 = add i64 %3458, 1
  store i64 %3459, i64* %PC.i130
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3462 = bitcast %union.anon* %3461 to i32*
  %3463 = load i32, i32* %3462, align 8
  %3464 = sext i32 %3463 to i64
  %3465 = lshr i64 %3464, 32
  store i64 %3465, i64* %3460, align 8
  store %struct.Memory* %loadMem_45e06f, %struct.Memory** %MEMORY
  %loadMem_45e070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 5
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 15
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %RBP.i129
  %3476 = sub i64 %3475, 212
  %3477 = load i64, i64* %PC.i127
  %3478 = add i64 %3477, 6
  store i64 %3478, i64* %PC.i127
  %3479 = inttoptr i64 %3476 to i32*
  %3480 = load i32, i32* %3479
  %3481 = zext i32 %3480 to i64
  store i64 %3481, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_45e070, %struct.Memory** %MEMORY
  %loadMem_45e076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %ECX.i123 = bitcast %union.anon* %3487 to i32*
  %3488 = load i32, i32* %ECX.i123
  %3489 = zext i32 %3488 to i64
  %3490 = load i64, i64* %PC.i122
  %3491 = add i64 %3490, 2
  store i64 %3491, i64* %PC.i122
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3493 = bitcast %union.anon* %3492 to i32*
  %3494 = load i32, i32* %3493, align 8
  %3495 = zext i32 %3494 to i64
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3497 = bitcast %union.anon* %3496 to i32*
  %3498 = load i32, i32* %3497, align 8
  %3499 = zext i32 %3498 to i64
  %3500 = shl i64 %3489, 32
  %3501 = ashr exact i64 %3500, 32
  %3502 = shl i64 %3499, 32
  %3503 = or i64 %3502, %3495
  %3504 = sdiv i64 %3503, %3501
  %3505 = shl i64 %3504, 32
  %3506 = ashr exact i64 %3505, 32
  %3507 = icmp eq i64 %3504, %3506
  br i1 %3507, label %3512, label %3508

; <label>:3508:                                   ; preds = %block_.L_45e03f
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3510 = load i64, i64* %3509, align 8
  %3511 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3510, %struct.Memory* %loadMem_45e076)
  br label %routine_idivl__ecx.exit124

; <label>:3512:                                   ; preds = %block_.L_45e03f
  %3513 = srem i64 %3503, %3501
  %3514 = getelementptr inbounds %union.anon, %union.anon* %3492, i64 0, i32 0
  %3515 = and i64 %3504, 4294967295
  store i64 %3515, i64* %3514, align 8
  %3516 = getelementptr inbounds %union.anon, %union.anon* %3496, i64 0, i32 0
  %3517 = and i64 %3513, 4294967295
  store i64 %3517, i64* %3516, align 8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3518, align 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3519, align 1
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3520, align 1
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3521, align 1
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3522, align 1
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3523, align 1
  br label %routine_idivl__ecx.exit124

routine_idivl__ecx.exit124:                       ; preds = %3508, %3512
  %3524 = phi %struct.Memory* [ %3511, %3508 ], [ %loadMem_45e076, %3512 ]
  store %struct.Memory* %3524, %struct.Memory** %MEMORY
  %loadMem_45e078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 33
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 1
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %RAX.i121
  %3532 = load i64, i64* %PC.i120
  %3533 = add i64 %3532, 3
  store i64 %3533, i64* %PC.i120
  %3534 = trunc i64 %3531 to i32
  %3535 = sub i32 %3534, 1
  %3536 = zext i32 %3535 to i64
  store i64 %3536, i64* %RAX.i121, align 8
  %3537 = icmp ult i32 %3534, 1
  %3538 = zext i1 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3538, i8* %3539, align 1
  %3540 = and i32 %3535, 255
  %3541 = call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3544, i8* %3545, align 1
  %3546 = xor i64 1, %3531
  %3547 = trunc i64 %3546 to i32
  %3548 = xor i32 %3547, %3535
  %3549 = lshr i32 %3548, 4
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3551, i8* %3552, align 1
  %3553 = icmp eq i32 %3535, 0
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3554, i8* %3555, align 1
  %3556 = lshr i32 %3535, 31
  %3557 = trunc i32 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3557, i8* %3558, align 1
  %3559 = lshr i32 %3534, 31
  %3560 = xor i32 %3556, %3559
  %3561 = add i32 %3560, %3559
  %3562 = icmp eq i32 %3561, 2
  %3563 = zext i1 %3562 to i8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3563, i8* %3564, align 1
  store %struct.Memory* %loadMem_45e078, %struct.Memory** %MEMORY
  %loadMem_45e07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 17
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %R8D.i118 = bitcast %union.anon* %3570 to i32*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %3573 to i64*
  %3574 = bitcast i32* %R8D.i118 to i64*
  %3575 = load i64, i64* %RBP.i119
  %3576 = sub i64 %3575, 8
  %3577 = load i64, i64* %PC.i117
  %3578 = add i64 %3577, 4
  store i64 %3578, i64* %PC.i117
  %3579 = inttoptr i64 %3576 to i32*
  %3580 = load i32, i32* %3579
  %3581 = zext i32 %3580 to i64
  store i64 %3581, i64* %3574, align 8
  store %struct.Memory* %loadMem_45e07b, %struct.Memory** %MEMORY
  %loadMem_45e07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 1
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %3587 to i32*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 15
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3590 to i64*
  %3591 = load i64, i64* %RBP.i116
  %3592 = sub i64 %3591, 228
  %3593 = load i32, i32* %EAX.i115
  %3594 = zext i32 %3593 to i64
  %3595 = load i64, i64* %PC.i114
  %3596 = add i64 %3595, 6
  store i64 %3596, i64* %PC.i114
  %3597 = inttoptr i64 %3592 to i32*
  store i32 %3593, i32* %3597
  store %struct.Memory* %loadMem_45e07f, %struct.Memory** %MEMORY
  %loadMem_45e085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 17
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %R8D.i112 = bitcast %union.anon* %3603 to i32*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 1
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %3606 to i64*
  %3607 = load i32, i32* %R8D.i112
  %3608 = zext i32 %3607 to i64
  %3609 = load i64, i64* %PC.i111
  %3610 = add i64 %3609, 3
  store i64 %3610, i64* %PC.i111
  %3611 = and i64 %3608, 4294967295
  store i64 %3611, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_45e085, %struct.Memory** %MEMORY
  %loadMem_45e088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %PC.i110
  %3616 = add i64 %3615, 1
  store i64 %3616, i64* %PC.i110
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3619 = bitcast %union.anon* %3618 to i32*
  %3620 = load i32, i32* %3619, align 8
  %3621 = sext i32 %3620 to i64
  %3622 = lshr i64 %3621, 32
  store i64 %3622, i64* %3617, align 8
  store %struct.Memory* %loadMem_45e088, %struct.Memory** %MEMORY
  %loadMem_45e089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 5
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %ECX.i106 = bitcast %union.anon* %3628 to i32*
  %3629 = load i32, i32* %ECX.i106
  %3630 = zext i32 %3629 to i64
  %3631 = load i64, i64* %PC.i105
  %3632 = add i64 %3631, 2
  store i64 %3632, i64* %PC.i105
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3634 = bitcast %union.anon* %3633 to i32*
  %3635 = load i32, i32* %3634, align 8
  %3636 = zext i32 %3635 to i64
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3638 = bitcast %union.anon* %3637 to i32*
  %3639 = load i32, i32* %3638, align 8
  %3640 = zext i32 %3639 to i64
  %3641 = shl i64 %3630, 32
  %3642 = ashr exact i64 %3641, 32
  %3643 = shl i64 %3640, 32
  %3644 = or i64 %3643, %3636
  %3645 = sdiv i64 %3644, %3642
  %3646 = shl i64 %3645, 32
  %3647 = ashr exact i64 %3646, 32
  %3648 = icmp eq i64 %3645, %3647
  br i1 %3648, label %3653, label %3649

; <label>:3649:                                   ; preds = %routine_idivl__ecx.exit124
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3651 = load i64, i64* %3650, align 8
  %3652 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3651, %struct.Memory* %loadMem_45e089)
  br label %routine_idivl__ecx.exit

; <label>:3653:                                   ; preds = %routine_idivl__ecx.exit124
  %3654 = srem i64 %3644, %3642
  %3655 = getelementptr inbounds %union.anon, %union.anon* %3633, i64 0, i32 0
  %3656 = and i64 %3645, 4294967295
  store i64 %3656, i64* %3655, align 8
  %3657 = getelementptr inbounds %union.anon, %union.anon* %3637, i64 0, i32 0
  %3658 = and i64 %3654, 4294967295
  store i64 %3658, i64* %3657, align 8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3659, align 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3660, align 1
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3661, align 1
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3662, align 1
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3663, align 1
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3664, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3649, %3653
  %3665 = phi %struct.Memory* [ %3652, %3649 ], [ %loadMem_45e089, %3653 ]
  store %struct.Memory* %3665, %struct.Memory** %MEMORY
  %loadMem_45e08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 7
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %RDX.i104
  %3673 = load i64, i64* %PC.i103
  %3674 = add i64 %3673, 3
  store i64 %3674, i64* %PC.i103
  %3675 = trunc i64 %3672 to i32
  %3676 = sub i32 %3675, 1
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RDX.i104, align 8
  %3678 = icmp ult i32 %3675, 1
  %3679 = zext i1 %3678 to i8
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3679, i8* %3680, align 1
  %3681 = and i32 %3676, 255
  %3682 = call i32 @llvm.ctpop.i32(i32 %3681)
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  %3685 = xor i8 %3684, 1
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3685, i8* %3686, align 1
  %3687 = xor i64 1, %3672
  %3688 = trunc i64 %3687 to i32
  %3689 = xor i32 %3688, %3676
  %3690 = lshr i32 %3689, 4
  %3691 = trunc i32 %3690 to i8
  %3692 = and i8 %3691, 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3692, i8* %3693, align 1
  %3694 = icmp eq i32 %3676, 0
  %3695 = zext i1 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3695, i8* %3696, align 1
  %3697 = lshr i32 %3676, 31
  %3698 = trunc i32 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3698, i8* %3699, align 1
  %3700 = lshr i32 %3675, 31
  %3701 = xor i32 %3697, %3700
  %3702 = add i32 %3701, %3700
  %3703 = icmp eq i32 %3702, 2
  %3704 = zext i1 %3703 to i8
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3704, i8* %3705, align 1
  store %struct.Memory* %loadMem_45e08b, %struct.Memory** %MEMORY
  %loadMem_45e08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 33
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 15
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 19
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %R9.i102 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RBP.i101
  %3716 = sub i64 %3715, 224
  %3717 = load i64, i64* %PC.i100
  %3718 = add i64 %3717, 7
  store i64 %3718, i64* %PC.i100
  %3719 = inttoptr i64 %3716 to i64*
  %3720 = load i64, i64* %3719
  store i64 %3720, i64* %R9.i102, align 8
  store %struct.Memory* %loadMem_45e08e, %struct.Memory** %MEMORY
  %loadMem_45e095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 33
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 7
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %EDX.i98 = bitcast %union.anon* %3726 to i32*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 15
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %3729 to i64*
  %3730 = load i64, i64* %RBP.i99
  %3731 = sub i64 %3730, 232
  %3732 = load i32, i32* %EDX.i98
  %3733 = zext i32 %3732 to i64
  %3734 = load i64, i64* %PC.i97
  %3735 = add i64 %3734, 6
  store i64 %3735, i64* %PC.i97
  %3736 = inttoptr i64 %3731 to i32*
  store i32 %3732, i32* %3736
  store %struct.Memory* %loadMem_45e095, %struct.Memory** %MEMORY
  %loadMem_45e09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 7
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 19
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3745 to i64*
  %3746 = load i64, i64* %R9.i
  %3747 = load i64, i64* %PC.i95
  %3748 = add i64 %3747, 3
  store i64 %3748, i64* %PC.i95
  store i64 %3746, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_45e09b, %struct.Memory** %MEMORY
  %loadMem_45e09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 5
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i94
  %3759 = sub i64 %3758, 228
  %3760 = load i64, i64* %PC.i92
  %3761 = add i64 %3760, 6
  store i64 %3761, i64* %PC.i92
  %3762 = inttoptr i64 %3759 to i32*
  %3763 = load i32, i32* %3762
  %3764 = zext i32 %3763 to i64
  store i64 %3764, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_45e09e, %struct.Memory** %MEMORY
  %loadMem_45e0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 17
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3770 to i32*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 15
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3773 to i64*
  %3774 = bitcast i32* %R8D.i to i64*
  %3775 = load i64, i64* %RBP.i91
  %3776 = sub i64 %3775, 232
  %3777 = load i64, i64* %PC.i90
  %3778 = add i64 %3777, 7
  store i64 %3778, i64* %PC.i90
  %3779 = inttoptr i64 %3776 to i32*
  %3780 = load i32, i32* %3779
  %3781 = zext i32 %3780 to i64
  store i64 %3781, i64* %3774, align 8
  store %struct.Memory* %loadMem_45e0a4, %struct.Memory** %MEMORY
  %loadMem1_45e0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3784 to i64*
  %3785 = load i64, i64* %PC.i89
  %3786 = add i64 %3785, -49179
  %3787 = load i64, i64* %PC.i89
  %3788 = add i64 %3787, 5
  %3789 = load i64, i64* %PC.i89
  %3790 = add i64 %3789, 5
  store i64 %3790, i64* %PC.i89
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3792 = load i64, i64* %3791, align 8
  %3793 = add i64 %3792, -8
  %3794 = inttoptr i64 %3793 to i64*
  store i64 %3788, i64* %3794
  store i64 %3793, i64* %3791, align 8
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3786, i64* %3795, align 8
  store %struct.Memory* %loadMem1_45e0ab, %struct.Memory** %MEMORY
  %loadMem2_45e0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e0ab = load i64, i64* %3
  %call2_45e0ab = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_45e0ab, %struct.Memory* %loadMem2_45e0ab)
  store %struct.Memory* %call2_45e0ab, %struct.Memory** %MEMORY
  br label %block_.L_45e0b0

block_.L_45e0b0:                                  ; preds = %routine_idivl__ecx.exit, %block_45e03a
  %loadMem_45e0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 33
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 15
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3801 to i64*
  %3802 = load i64, i64* %RBP.i88
  %3803 = sub i64 %3802, 40
  %3804 = load i64, i64* %PC.i87
  %3805 = add i64 %3804, 4
  store i64 %3805, i64* %PC.i87
  %3806 = inttoptr i64 %3803 to i32*
  %3807 = load i32, i32* %3806
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3808, align 1
  %3809 = and i32 %3807, 255
  %3810 = call i32 @llvm.ctpop.i32(i32 %3809)
  %3811 = trunc i32 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = xor i8 %3812, 1
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3813, i8* %3814, align 1
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3815, align 1
  %3816 = icmp eq i32 %3807, 0
  %3817 = zext i1 %3816 to i8
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3817, i8* %3818, align 1
  %3819 = lshr i32 %3807, 31
  %3820 = trunc i32 %3819 to i8
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3820, i8* %3821, align 1
  %3822 = lshr i32 %3807, 31
  %3823 = xor i32 %3819, %3822
  %3824 = add i32 %3823, %3822
  %3825 = icmp eq i32 %3824, 2
  %3826 = zext i1 %3825 to i8
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3826, i8* %3827, align 1
  store %struct.Memory* %loadMem_45e0b0, %struct.Memory** %MEMORY
  %loadMem_45e0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3830 to i64*
  %3831 = load i64, i64* %PC.i86
  %3832 = add i64 %3831, 114
  %3833 = load i64, i64* %PC.i86
  %3834 = add i64 %3833, 6
  %3835 = load i64, i64* %PC.i86
  %3836 = add i64 %3835, 6
  store i64 %3836, i64* %PC.i86
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3838 = load i8, i8* %3837, align 1
  store i8 %3838, i8* %BRANCH_TAKEN, align 1
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3840 = icmp ne i8 %3838, 0
  %3841 = select i1 %3840, i64 %3832, i64 %3834
  store i64 %3841, i64* %3839, align 8
  store %struct.Memory* %loadMem_45e0b4, %struct.Memory** %MEMORY
  %loadBr_45e0b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e0b4 = icmp eq i8 %loadBr_45e0b4, 1
  br i1 %cmpBr_45e0b4, label %block_.L_45e126, label %block_45e0ba

block_45e0ba:                                     ; preds = %block_.L_45e0b0
  %loadMem_45e0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %PC.i85
  %3846 = add i64 %3845, 5
  %3847 = load i64, i64* %PC.i85
  %3848 = add i64 %3847, 5
  store i64 %3848, i64* %PC.i85
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3846, i64* %3849, align 8
  store %struct.Memory* %loadMem_45e0ba, %struct.Memory** %MEMORY
  br label %block_.L_45e0bf

block_.L_45e0bf:                                  ; preds = %block_45e0ba
  %loadMem_45e0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 15
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %3855 to i64*
  %3856 = load i64, i64* %RBP.i84
  %3857 = sub i64 %3856, 40
  %3858 = load i64, i64* %PC.i83
  %3859 = add i64 %3858, 4
  store i64 %3859, i64* %PC.i83
  %3860 = inttoptr i64 %3857 to i32*
  %3861 = load i32, i32* %3860
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3862, align 1
  %3863 = and i32 %3861, 255
  %3864 = call i32 @llvm.ctpop.i32(i32 %3863)
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  %3867 = xor i8 %3866, 1
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3867, i8* %3868, align 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3869, align 1
  %3870 = icmp eq i32 %3861, 0
  %3871 = zext i1 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3871, i8* %3872, align 1
  %3873 = lshr i32 %3861, 31
  %3874 = trunc i32 %3873 to i8
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3874, i8* %3875, align 1
  %3876 = lshr i32 %3861, 31
  %3877 = xor i32 %3873, %3876
  %3878 = add i32 %3877, %3876
  %3879 = icmp eq i32 %3878, 2
  %3880 = zext i1 %3879 to i8
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3880, i8* %3881, align 1
  store %struct.Memory* %loadMem_45e0bf, %struct.Memory** %MEMORY
  %loadMem_45e0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %PC.i82
  %3886 = add i64 %3885, 26
  %3887 = load i64, i64* %PC.i82
  %3888 = add i64 %3887, 6
  %3889 = load i64, i64* %PC.i82
  %3890 = add i64 %3889, 6
  store i64 %3890, i64* %PC.i82
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3892 = load i8, i8* %3891, align 1
  store i8 %3892, i8* %BRANCH_TAKEN, align 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3894 = icmp ne i8 %3892, 0
  %3895 = select i1 %3894, i64 %3886, i64 %3888
  store i64 %3895, i64* %3893, align 8
  store %struct.Memory* %loadMem_45e0c3, %struct.Memory** %MEMORY
  %loadBr_45e0c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e0c3 = icmp eq i8 %loadBr_45e0c3, 1
  br i1 %cmpBr_45e0c3, label %block_.L_45e0dd, label %block_45e0c9

block_45e0c9:                                     ; preds = %block_.L_45e0bf
  %loadMem_45e0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i81
  %3903 = sub i64 %3902, 16
  %3904 = load i64, i64* %PC.i80
  %3905 = add i64 %3904, 5
  store i64 %3905, i64* %PC.i80
  %3906 = inttoptr i64 %3903 to i64*
  %3907 = load i64, i64* %3906
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3908, align 1
  %3909 = trunc i64 %3907 to i32
  %3910 = and i32 %3909, 255
  %3911 = call i32 @llvm.ctpop.i32(i32 %3910)
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  %3914 = xor i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3914, i8* %3915, align 1
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3916, align 1
  %3917 = icmp eq i64 %3907, 0
  %3918 = zext i1 %3917 to i8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3918, i8* %3919, align 1
  %3920 = lshr i64 %3907, 63
  %3921 = trunc i64 %3920 to i8
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3921, i8* %3922, align 1
  %3923 = lshr i64 %3907, 63
  %3924 = xor i64 %3920, %3923
  %3925 = add i64 %3924, %3923
  %3926 = icmp eq i64 %3925, 2
  %3927 = zext i1 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3927, i8* %3928, align 1
  store %struct.Memory* %loadMem_45e0c9, %struct.Memory** %MEMORY
  %loadMem_45e0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %PC.i79
  %3933 = add i64 %3932, 15
  %3934 = load i64, i64* %PC.i79
  %3935 = add i64 %3934, 6
  %3936 = load i64, i64* %PC.i79
  %3937 = add i64 %3936, 6
  store i64 %3937, i64* %PC.i79
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3939 = load i8, i8* %3938, align 1
  store i8 %3939, i8* %BRANCH_TAKEN, align 1
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3941 = icmp ne i8 %3939, 0
  %3942 = select i1 %3941, i64 %3933, i64 %3935
  store i64 %3942, i64* %3940, align 8
  store %struct.Memory* %loadMem_45e0ce, %struct.Memory** %MEMORY
  %loadBr_45e0ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e0ce = icmp eq i8 %loadBr_45e0ce, 1
  br i1 %cmpBr_45e0ce, label %block_.L_45e0dd, label %block_45e0d4

block_45e0d4:                                     ; preds = %block_45e0c9
  %loadMem_45e0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 33
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 1
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 15
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3951 to i64*
  %3952 = load i64, i64* %RBP.i78
  %3953 = sub i64 %3952, 32
  %3954 = load i64, i64* %PC.i76
  %3955 = add i64 %3954, 3
  store i64 %3955, i64* %PC.i76
  %3956 = inttoptr i64 %3953 to i32*
  %3957 = load i32, i32* %3956
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_45e0d4, %struct.Memory** %MEMORY
  %loadMem_45e0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 33
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 5
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 15
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %3967 to i64*
  %3968 = load i64, i64* %RBP.i75
  %3969 = sub i64 %3968, 16
  %3970 = load i64, i64* %PC.i73
  %3971 = add i64 %3970, 4
  store i64 %3971, i64* %PC.i73
  %3972 = inttoptr i64 %3969 to i64*
  %3973 = load i64, i64* %3972
  store i64 %3973, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_45e0d7, %struct.Memory** %MEMORY
  %loadMem_45e0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 1
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %3979 to i32*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 5
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RCX.i72
  %3984 = load i32, i32* %EAX.i71
  %3985 = zext i32 %3984 to i64
  %3986 = load i64, i64* %PC.i70
  %3987 = add i64 %3986, 2
  store i64 %3987, i64* %PC.i70
  %3988 = inttoptr i64 %3983 to i32*
  store i32 %3984, i32* %3988
  store %struct.Memory* %loadMem_45e0db, %struct.Memory** %MEMORY
  br label %block_.L_45e0dd

block_.L_45e0dd:                                  ; preds = %block_45e0d4, %block_45e0c9, %block_.L_45e0bf
  %loadMem_45e0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 15
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %RBP.i69
  %3996 = sub i64 %3995, 56
  %3997 = load i64, i64* %PC.i68
  %3998 = add i64 %3997, 5
  store i64 %3998, i64* %PC.i68
  %3999 = inttoptr i64 %3996 to i64*
  %4000 = load i64, i64* %3999
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4001, align 1
  %4002 = trunc i64 %4000 to i32
  %4003 = and i32 %4002, 255
  %4004 = call i32 @llvm.ctpop.i32(i32 %4003)
  %4005 = trunc i32 %4004 to i8
  %4006 = and i8 %4005, 1
  %4007 = xor i8 %4006, 1
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4007, i8* %4008, align 1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4009, align 1
  %4010 = icmp eq i64 %4000, 0
  %4011 = zext i1 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4011, i8* %4012, align 1
  %4013 = lshr i64 %4000, 63
  %4014 = trunc i64 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4014, i8* %4015, align 1
  %4016 = lshr i64 %4000, 63
  %4017 = xor i64 %4013, %4016
  %4018 = add i64 %4017, %4016
  %4019 = icmp eq i64 %4018, 2
  %4020 = zext i1 %4019 to i8
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4020, i8* %4021, align 1
  store %struct.Memory* %loadMem_45e0dd, %struct.Memory** %MEMORY
  %loadMem_45e0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4024 to i64*
  %4025 = load i64, i64* %PC.i67
  %4026 = add i64 %4025, 57
  %4027 = load i64, i64* %PC.i67
  %4028 = add i64 %4027, 6
  %4029 = load i64, i64* %PC.i67
  %4030 = add i64 %4029, 6
  store i64 %4030, i64* %PC.i67
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4032 = load i8, i8* %4031, align 1
  store i8 %4032, i8* %BRANCH_TAKEN, align 1
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4034 = icmp ne i8 %4032, 0
  %4035 = select i1 %4034, i64 %4026, i64 %4028
  store i64 %4035, i64* %4033, align 8
  store %struct.Memory* %loadMem_45e0e2, %struct.Memory** %MEMORY
  %loadBr_45e0e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e0e2 = icmp eq i8 %loadBr_45e0e2, 1
  br i1 %cmpBr_45e0e2, label %block_.L_45e11b, label %block_45e0e8

block_45e0e8:                                     ; preds = %block_.L_45e0dd
  %loadMem_45e0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 1
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 15
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4044 to i64*
  %4045 = load i64, i64* %RBP.i66
  %4046 = sub i64 %4045, 56
  %4047 = load i64, i64* %PC.i64
  %4048 = add i64 %4047, 4
  store i64 %4048, i64* %PC.i64
  %4049 = inttoptr i64 %4046 to i64*
  %4050 = load i64, i64* %4049
  store i64 %4050, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_45e0e8, %struct.Memory** %MEMORY
  %loadMem_45e0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 1
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 5
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %RAX.i62
  %4061 = add i64 %4060, 4
  %4062 = load i64, i64* %PC.i61
  %4063 = add i64 %4062, 3
  store i64 %4063, i64* %PC.i61
  %4064 = inttoptr i64 %4061 to i32*
  %4065 = load i32, i32* %4064
  %4066 = zext i32 %4065 to i64
  store i64 %4066, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_45e0ec, %struct.Memory** %MEMORY
  %loadMem_45e0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 33
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 5
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RCX.i60
  %4074 = load i64, i64* %PC.i59
  %4075 = add i64 %4074, 6
  store i64 %4075, i64* %PC.i59
  %4076 = and i64 1023, %4073
  %4077 = trunc i64 %4076 to i32
  store i64 %4076, i64* %RCX.i60, align 8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4078, align 1
  %4079 = and i32 %4077, 255
  %4080 = call i32 @llvm.ctpop.i32(i32 %4079)
  %4081 = trunc i32 %4080 to i8
  %4082 = and i8 %4081, 1
  %4083 = xor i8 %4082, 1
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4083, i8* %4084, align 1
  %4085 = icmp eq i32 %4077, 0
  %4086 = zext i1 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4086, i8* %4087, align 1
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4088, align 1
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4089, align 1
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4090, align 1
  store %struct.Memory* %loadMem_45e0ef, %struct.Memory** %MEMORY
  %loadMem_45e0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 5
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4096 to i64*
  %4097 = load i64, i64* %RCX.i58
  %4098 = load i64, i64* %PC.i57
  %4099 = add i64 %4098, 6
  store i64 %4099, i64* %PC.i57
  %4100 = or i64 536870912, %4097
  %4101 = trunc i64 %4100 to i32
  %4102 = and i64 %4100, 4294967295
  store i64 %4102, i64* %RCX.i58, align 8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4103, align 1
  %4104 = and i32 %4101, 255
  %4105 = call i32 @llvm.ctpop.i32(i32 %4104)
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = xor i8 %4107, 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4108, i8* %4109, align 1
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4110, align 1
  %4111 = lshr i32 %4101, 31
  %4112 = trunc i32 %4111 to i8
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4112, i8* %4113, align 1
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4114, align 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4115, align 1
  store %struct.Memory* %loadMem_45e0f5, %struct.Memory** %MEMORY
  %loadMem_45e0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 7
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 15
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %RBP.i56
  %4126 = sub i64 %4125, 40
  %4127 = load i64, i64* %PC.i54
  %4128 = add i64 %4127, 3
  store i64 %4128, i64* %PC.i54
  %4129 = inttoptr i64 %4126 to i32*
  %4130 = load i32, i32* %4129
  %4131 = zext i32 %4130 to i64
  store i64 %4131, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_45e0fb, %struct.Memory** %MEMORY
  %loadMem_45e0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 7
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %RDX.i53
  %4139 = load i64, i64* %PC.i52
  %4140 = add i64 %4139, 3
  store i64 %4140, i64* %PC.i52
  %4141 = and i64 15, %4138
  %4142 = trunc i64 %4141 to i32
  store i64 %4141, i64* %RDX.i53, align 8
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4143, align 1
  %4144 = and i32 %4142, 255
  %4145 = call i32 @llvm.ctpop.i32(i32 %4144)
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  %4148 = xor i8 %4147, 1
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4148, i8* %4149, align 1
  %4150 = icmp eq i32 %4142, 0
  %4151 = zext i1 %4150 to i8
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4151, i8* %4152, align 1
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4153, align 1
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4154, align 1
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4155, align 1
  store %struct.Memory* %loadMem_45e0fe, %struct.Memory** %MEMORY
  %loadMem_45e101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 7
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %RDX.i51
  %4163 = load i64, i64* %PC.i50
  %4164 = add i64 %4163, 3
  store i64 %4164, i64* %PC.i50
  %4165 = and i64 %4162, 4294967295
  %4166 = shl i64 %4165, 23
  %4167 = trunc i64 %4166 to i32
  %4168 = icmp slt i32 %4167, 0
  %4169 = shl i32 %4167, 1
  %4170 = zext i32 %4169 to i64
  store i64 %4170, i64* %RDX.i51, align 8
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4172 = zext i1 %4168 to i8
  store i8 %4172, i8* %4171, align 1
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4173, align 1
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4174, align 1
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4176 = icmp eq i32 %4169, 0
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %4175, align 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4179 = lshr i32 %4169, 31
  %4180 = trunc i32 %4179 to i8
  store i8 %4180, i8* %4178, align 1
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4181, align 1
  store %struct.Memory* %loadMem_45e101, %struct.Memory** %MEMORY
  %loadMem_45e104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 33
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 7
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %EDX.i48 = bitcast %union.anon* %4187 to i32*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 5
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %4190 to i64*
  %4191 = load i64, i64* %RCX.i49
  %4192 = load i32, i32* %EDX.i48
  %4193 = zext i32 %4192 to i64
  %4194 = load i64, i64* %PC.i47
  %4195 = add i64 %4194, 2
  store i64 %4195, i64* %PC.i47
  %4196 = or i64 %4193, %4191
  %4197 = trunc i64 %4196 to i32
  %4198 = and i64 %4196, 4294967295
  store i64 %4198, i64* %RCX.i49, align 8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4199, align 1
  %4200 = and i32 %4197, 255
  %4201 = call i32 @llvm.ctpop.i32(i32 %4200)
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  %4204 = xor i8 %4203, 1
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4204, i8* %4205, align 1
  %4206 = icmp eq i32 %4197, 0
  %4207 = zext i1 %4206 to i8
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4207, i8* %4208, align 1
  %4209 = lshr i32 %4197, 31
  %4210 = trunc i32 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4210, i8* %4211, align 1
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4212, align 1
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4213, align 1
  store %struct.Memory* %loadMem_45e104, %struct.Memory** %MEMORY
  %loadMem_45e106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 7
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 15
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %RBP.i46
  %4224 = sub i64 %4223, 32
  %4225 = load i64, i64* %PC.i44
  %4226 = add i64 %4225, 3
  store i64 %4226, i64* %PC.i44
  %4227 = inttoptr i64 %4224 to i32*
  %4228 = load i32, i32* %4227
  %4229 = zext i32 %4228 to i64
  store i64 %4229, i64* %RDX.i45, align 8
  store %struct.Memory* %loadMem_45e106, %struct.Memory** %MEMORY
  %loadMem_45e109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 7
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RDX.i43
  %4237 = load i64, i64* %PC.i42
  %4238 = add i64 %4237, 6
  store i64 %4238, i64* %PC.i42
  %4239 = and i64 1023, %4236
  %4240 = trunc i64 %4239 to i32
  store i64 %4239, i64* %RDX.i43, align 8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4241, align 1
  %4242 = and i32 %4240, 255
  %4243 = call i32 @llvm.ctpop.i32(i32 %4242)
  %4244 = trunc i32 %4243 to i8
  %4245 = and i8 %4244, 1
  %4246 = xor i8 %4245, 1
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4246, i8* %4247, align 1
  %4248 = icmp eq i32 %4240, 0
  %4249 = zext i1 %4248 to i8
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4249, i8* %4250, align 1
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4251, align 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4252, align 1
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4253, align 1
  store %struct.Memory* %loadMem_45e109, %struct.Memory** %MEMORY
  %loadMem_45e10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 7
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RDX.i
  %4261 = load i64, i64* %PC.i41
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i41
  %4263 = and i64 %4260, 4294967295
  %4264 = shl i64 %4263, 9
  %4265 = trunc i64 %4264 to i32
  %4266 = icmp slt i32 %4265, 0
  %4267 = shl i32 %4265, 1
  %4268 = zext i32 %4267 to i64
  store i64 %4268, i64* %RDX.i, align 8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4270 = zext i1 %4266 to i8
  store i8 %4270, i8* %4269, align 1
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4271, align 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4272, align 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4274 = icmp eq i32 %4267, 0
  %4275 = zext i1 %4274 to i8
  store i8 %4275, i8* %4273, align 1
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4277 = lshr i32 %4267, 31
  %4278 = trunc i32 %4277 to i8
  store i8 %4278, i8* %4276, align 1
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4279, align 1
  store %struct.Memory* %loadMem_45e10f, %struct.Memory** %MEMORY
  %loadMem_45e112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 7
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4285 to i32*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 5
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %RCX.i40
  %4290 = load i32, i32* %EDX.i
  %4291 = zext i32 %4290 to i64
  %4292 = load i64, i64* %PC.i39
  %4293 = add i64 %4292, 2
  store i64 %4293, i64* %PC.i39
  %4294 = or i64 %4291, %4289
  %4295 = trunc i64 %4294 to i32
  %4296 = and i64 %4294, 4294967295
  store i64 %4296, i64* %RCX.i40, align 8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4297, align 1
  %4298 = and i32 %4295, 255
  %4299 = call i32 @llvm.ctpop.i32(i32 %4298)
  %4300 = trunc i32 %4299 to i8
  %4301 = and i8 %4300, 1
  %4302 = xor i8 %4301, 1
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4302, i8* %4303, align 1
  %4304 = icmp eq i32 %4295, 0
  %4305 = zext i1 %4304 to i8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4305, i8* %4306, align 1
  %4307 = lshr i32 %4295, 31
  %4308 = trunc i32 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4308, i8* %4309, align 1
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4310, align 1
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4311, align 1
  store %struct.Memory* %loadMem_45e112, %struct.Memory** %MEMORY
  %loadMem_45e114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 1
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 15
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RBP.i38
  %4322 = sub i64 %4321, 56
  %4323 = load i64, i64* %PC.i36
  %4324 = add i64 %4323, 4
  store i64 %4324, i64* %PC.i36
  %4325 = inttoptr i64 %4322 to i64*
  %4326 = load i64, i64* %4325
  store i64 %4326, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_45e114, %struct.Memory** %MEMORY
  %loadMem_45e118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 5
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %ECX.i34 = bitcast %union.anon* %4332 to i32*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 1
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RAX.i35
  %4337 = add i64 %4336, 4
  %4338 = load i32, i32* %ECX.i34
  %4339 = zext i32 %4338 to i64
  %4340 = load i64, i64* %PC.i33
  %4341 = add i64 %4340, 3
  store i64 %4341, i64* %PC.i33
  %4342 = inttoptr i64 %4337 to i32*
  store i32 %4338, i32* %4342
  store %struct.Memory* %loadMem_45e118, %struct.Memory** %MEMORY
  br label %block_.L_45e11b

block_.L_45e11b:                                  ; preds = %block_45e0e8, %block_.L_45e0dd
  %loadMem_45e11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 1
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 15
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %4351 to i64*
  %4352 = load i64, i64* %RBP.i32
  %4353 = sub i64 %4352, 40
  %4354 = load i64, i64* %PC.i30
  %4355 = add i64 %4354, 3
  store i64 %4355, i64* %PC.i30
  %4356 = inttoptr i64 %4353 to i32*
  %4357 = load i32, i32* %4356
  %4358 = zext i32 %4357 to i64
  store i64 %4358, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_45e11b, %struct.Memory** %MEMORY
  %loadMem_45e11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 1
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4364 to i32*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i29
  %4369 = sub i64 %4368, 4
  %4370 = load i32, i32* %EAX.i
  %4371 = zext i32 %4370 to i64
  %4372 = load i64, i64* %PC.i28
  %4373 = add i64 %4372, 3
  store i64 %4373, i64* %PC.i28
  %4374 = inttoptr i64 %4369 to i32*
  store i32 %4370, i32* %4374
  store %struct.Memory* %loadMem_45e11e, %struct.Memory** %MEMORY
  %loadMem_45e121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %PC.i27
  %4379 = add i64 %4378, 54
  %4380 = load i64, i64* %PC.i27
  %4381 = add i64 %4380, 5
  store i64 %4381, i64* %PC.i27
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4379, i64* %4382, align 8
  store %struct.Memory* %loadMem_45e121, %struct.Memory** %MEMORY
  br label %block_.L_45e157

block_.L_45e126:                                  ; preds = %block_.L_45e0b0
  %loadMem_45e126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 33
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4385 to i64*
  %4386 = load i64, i64* %PC.i26
  %4387 = add i64 %4386, 5
  %4388 = load i64, i64* %PC.i26
  %4389 = add i64 %4388, 5
  store i64 %4389, i64* %PC.i26
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4387, i64* %4390, align 8
  store %struct.Memory* %loadMem_45e126, %struct.Memory** %MEMORY
  br label %block_.L_45e12b

block_.L_45e12b:                                  ; preds = %block_.L_45e126
  %loadMem_45e12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 33
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 15
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4396 to i64*
  %4397 = load i64, i64* %RBP.i25
  %4398 = sub i64 %4397, 56
  %4399 = load i64, i64* %PC.i24
  %4400 = add i64 %4399, 5
  store i64 %4400, i64* %PC.i24
  %4401 = inttoptr i64 %4398 to i64*
  %4402 = load i64, i64* %4401
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4403, align 1
  %4404 = trunc i64 %4402 to i32
  %4405 = and i32 %4404, 255
  %4406 = call i32 @llvm.ctpop.i32(i32 %4405)
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4409, i8* %4410, align 1
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4411, align 1
  %4412 = icmp eq i64 %4402, 0
  %4413 = zext i1 %4412 to i8
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4413, i8* %4414, align 1
  %4415 = lshr i64 %4402, 63
  %4416 = trunc i64 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4416, i8* %4417, align 1
  %4418 = lshr i64 %4402, 63
  %4419 = xor i64 %4415, %4418
  %4420 = add i64 %4419, %4418
  %4421 = icmp eq i64 %4420, 2
  %4422 = zext i1 %4421 to i8
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4422, i8* %4423, align 1
  store %struct.Memory* %loadMem_45e12b, %struct.Memory** %MEMORY
  %loadMem_45e130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4426 to i64*
  %4427 = load i64, i64* %PC.i23
  %4428 = add i64 %4427, 32
  %4429 = load i64, i64* %PC.i23
  %4430 = add i64 %4429, 6
  %4431 = load i64, i64* %PC.i23
  %4432 = add i64 %4431, 6
  store i64 %4432, i64* %PC.i23
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4434 = load i8, i8* %4433, align 1
  store i8 %4434, i8* %BRANCH_TAKEN, align 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4436 = icmp ne i8 %4434, 0
  %4437 = select i1 %4436, i64 %4428, i64 %4430
  store i64 %4437, i64* %4435, align 8
  store %struct.Memory* %loadMem_45e130, %struct.Memory** %MEMORY
  %loadBr_45e130 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e130 = icmp eq i8 %loadBr_45e130, 1
  br i1 %cmpBr_45e130, label %block_.L_45e150, label %block_45e136

block_45e136:                                     ; preds = %block_.L_45e12b
  %loadMem_45e136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 1
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 15
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %RBP.i22
  %4448 = sub i64 %4447, 56
  %4449 = load i64, i64* %PC.i20
  %4450 = add i64 %4449, 4
  store i64 %4450, i64* %PC.i20
  %4451 = inttoptr i64 %4448 to i64*
  %4452 = load i64, i64* %4451
  store i64 %4452, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_45e136, %struct.Memory** %MEMORY
  %loadMem_45e13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 33
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 1
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 5
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %4461 to i64*
  %4462 = load i64, i64* %RAX.i18
  %4463 = add i64 %4462, 4
  %4464 = load i64, i64* %PC.i17
  %4465 = add i64 %4464, 3
  store i64 %4465, i64* %PC.i17
  %4466 = inttoptr i64 %4463 to i32*
  %4467 = load i32, i32* %4466
  %4468 = zext i32 %4467 to i64
  store i64 %4468, i64* %RCX.i19, align 8
  store %struct.Memory* %loadMem_45e13a, %struct.Memory** %MEMORY
  %loadMem_45e13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 5
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %4474 to i64*
  %4475 = load i64, i64* %RCX.i16
  %4476 = load i64, i64* %PC.i15
  %4477 = add i64 %4476, 6
  store i64 %4477, i64* %PC.i15
  %4478 = and i64 1023, %4475
  %4479 = trunc i64 %4478 to i32
  store i64 %4478, i64* %RCX.i16, align 8
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4480, align 1
  %4481 = and i32 %4479, 255
  %4482 = call i32 @llvm.ctpop.i32(i32 %4481)
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  %4485 = xor i8 %4484, 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4485, i8* %4486, align 1
  %4487 = icmp eq i32 %4479, 0
  %4488 = zext i1 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4488, i8* %4489, align 1
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4490, align 1
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4491, align 1
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4492, align 1
  store %struct.Memory* %loadMem_45e13d, %struct.Memory** %MEMORY
  %loadMem_45e143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 5
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RCX.i
  %4500 = load i64, i64* %PC.i14
  %4501 = add i64 %4500, 6
  store i64 %4501, i64* %PC.i14
  %4502 = or i64 536870912, %4499
  %4503 = trunc i64 %4502 to i32
  %4504 = and i64 %4502, 4294967295
  store i64 %4504, i64* %RCX.i, align 8
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4505, align 1
  %4506 = and i32 %4503, 255
  %4507 = call i32 @llvm.ctpop.i32(i32 %4506)
  %4508 = trunc i32 %4507 to i8
  %4509 = and i8 %4508, 1
  %4510 = xor i8 %4509, 1
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4510, i8* %4511, align 1
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4512, align 1
  %4513 = lshr i32 %4503, 31
  %4514 = trunc i32 %4513 to i8
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4514, i8* %4515, align 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4516, align 1
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4517, align 1
  store %struct.Memory* %loadMem_45e143, %struct.Memory** %MEMORY
  %loadMem_45e149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 1
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 15
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %4526 to i64*
  %4527 = load i64, i64* %RBP.i13
  %4528 = sub i64 %4527, 56
  %4529 = load i64, i64* %PC.i11
  %4530 = add i64 %4529, 4
  store i64 %4530, i64* %PC.i11
  %4531 = inttoptr i64 %4528 to i64*
  %4532 = load i64, i64* %4531
  store i64 %4532, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_45e149, %struct.Memory** %MEMORY
  %loadMem_45e14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 5
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4538 to i32*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 1
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4541 to i64*
  %4542 = load i64, i64* %RAX.i10
  %4543 = add i64 %4542, 4
  %4544 = load i32, i32* %ECX.i
  %4545 = zext i32 %4544 to i64
  %4546 = load i64, i64* %PC.i9
  %4547 = add i64 %4546, 3
  store i64 %4547, i64* %PC.i9
  %4548 = inttoptr i64 %4543 to i32*
  store i32 %4544, i32* %4548
  store %struct.Memory* %loadMem_45e14d, %struct.Memory** %MEMORY
  br label %block_.L_45e150

block_.L_45e150:                                  ; preds = %block_45e136, %block_.L_45e12b
  %loadMem_45e150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 15
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RBP.i8
  %4556 = sub i64 %4555, 4
  %4557 = load i64, i64* %PC.i7
  %4558 = add i64 %4557, 7
  store i64 %4558, i64* %PC.i7
  %4559 = inttoptr i64 %4556 to i32*
  store i32 0, i32* %4559
  store %struct.Memory* %loadMem_45e150, %struct.Memory** %MEMORY
  br label %block_.L_45e157

block_.L_45e157:                                  ; preds = %block_.L_45e150, %block_.L_45e11b, %block_.L_45df3f, %block_.L_45de5b, %block_45ddb4
  %loadMem_45e157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 1
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 15
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4568 to i64*
  %4569 = load i64, i64* %RBP.i6
  %4570 = sub i64 %4569, 4
  %4571 = load i64, i64* %PC.i5
  %4572 = add i64 %4571, 3
  store i64 %4572, i64* %PC.i5
  %4573 = inttoptr i64 %4570 to i32*
  %4574 = load i32, i32* %4573
  %4575 = zext i32 %4574 to i64
  store i64 %4575, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_45e157, %struct.Memory** %MEMORY
  %loadMem_45e15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 13
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4581 to i64*
  %4582 = load i64, i64* %RSP.i
  %4583 = load i64, i64* %PC.i4
  %4584 = add i64 %4583, 7
  store i64 %4584, i64* %PC.i4
  %4585 = add i64 240, %4582
  store i64 %4585, i64* %RSP.i, align 8
  %4586 = icmp ult i64 %4585, %4582
  %4587 = icmp ult i64 %4585, 240
  %4588 = or i1 %4586, %4587
  %4589 = zext i1 %4588 to i8
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4589, i8* %4590, align 1
  %4591 = trunc i64 %4585 to i32
  %4592 = and i32 %4591, 255
  %4593 = call i32 @llvm.ctpop.i32(i32 %4592)
  %4594 = trunc i32 %4593 to i8
  %4595 = and i8 %4594, 1
  %4596 = xor i8 %4595, 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4596, i8* %4597, align 1
  %4598 = xor i64 240, %4582
  %4599 = xor i64 %4598, %4585
  %4600 = lshr i64 %4599, 4
  %4601 = trunc i64 %4600 to i8
  %4602 = and i8 %4601, 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4602, i8* %4603, align 1
  %4604 = icmp eq i64 %4585, 0
  %4605 = zext i1 %4604 to i8
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4605, i8* %4606, align 1
  %4607 = lshr i64 %4585, 63
  %4608 = trunc i64 %4607 to i8
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4608, i8* %4609, align 1
  %4610 = lshr i64 %4582, 63
  %4611 = xor i64 %4607, %4610
  %4612 = add i64 %4611, %4607
  %4613 = icmp eq i64 %4612, 2
  %4614 = zext i1 %4613 to i8
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4614, i8* %4615, align 1
  store %struct.Memory* %loadMem_45e15a, %struct.Memory** %MEMORY
  %loadMem_45e161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 15
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4621 to i64*
  %4622 = load i64, i64* %PC.i2
  %4623 = add i64 %4622, 1
  store i64 %4623, i64* %PC.i2
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4625 = load i64, i64* %4624, align 8
  %4626 = add i64 %4625, 8
  %4627 = inttoptr i64 %4625 to i64*
  %4628 = load i64, i64* %4627
  store i64 %4628, i64* %RBP.i3, align 8
  store i64 %4626, i64* %4624, align 8
  store %struct.Memory* %loadMem_45e161, %struct.Memory** %MEMORY
  %loadMem_45e162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %PC.i1
  %4633 = add i64 %4632, 1
  store i64 %4633, i64* %PC.i1
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4636 = load i64, i64* %4635, align 8
  %4637 = inttoptr i64 %4636 to i64*
  %4638 = load i64, i64* %4637
  store i64 %4638, i64* %4634, align 8
  %4639 = add i64 %4636, 8
  store i64 %4639, i64* %4635, align 8
  store %struct.Memory* %loadMem_45e162, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_45e162
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

define %struct.Memory* @routine_movq__0x57e4fc___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57e4fc_type* @G__0x57e4fc to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_45dd39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45ddaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8fa___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2298, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57cd72___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57cd72_type* @G__0x57cd72 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movq__rdx__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl_MINUS0xc4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 200
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_jne_.L_45ddc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e157(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_45ddf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_45de67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb54ce0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
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

define %struct.Memory* @routine_jle_.L_45de67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
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

define %struct.Memory* @routine_je_.L_45de5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57fbc3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fbc3_type* @G__0x57fbc3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb54ce4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb54ce0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45de56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.sgf_trace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45de5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
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

define %struct.Memory* @routine_jg_.L_45df59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae43c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae43c_type* @G_0x7ae43c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x20___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 32, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_je_.L_45df59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_read_result(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_45df54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shrl__0x18___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 23
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 15, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_je_.L_45deef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45deea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shrl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 9
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 1023, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45deef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45df3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57dee3___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57dee3_type* @G__0x57dee3 to i64), i64* %R8, align 8
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

define %struct.Memory* @routine_shrl__0x18___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 23
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 15, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0xd0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45df59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_45df7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e026(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_45dfd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb8b854___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 10
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
  %26 = xor i64 10, %9
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

define %struct.Memory* @routine_jle_.L_45dfba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.simple_ladder_attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45dfcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.attack2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e021(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_45dff8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.attack3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e01c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_45e017(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.attack4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_45e03f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jg_.L_45e03f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e0b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x92c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2348, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fbe2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fbe2_type* @G__0x57fbe2 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xd4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0xe0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
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

define %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xe8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45e126(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45e0bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45e0dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_45e11b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = or i64 536870912, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x18___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 23
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = or i64 %14, %12
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

define %struct.Memory* @routine_andl__0x3ff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 1023, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0xa___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 9
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_45e12b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45e150(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
