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
%G_0xab0ed4_type = type <{ [1 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x587a92_type = type <{ [8 x i8] }>
%G__0x587aa1_type = type <{ [8 x i8] }>
%G__0x587ab2_type = type <{ [8 x i8] }>
%G__0x587aba_type = type <{ [8 x i8] }>
%G__0x587aca_type = type <{ [8 x i8] }>
%G__0x587af7_type = type <{ [8 x i8] }>
%G__0xb6e920_type = type <{ [8 x i8] }>
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
@G_0xab0ed4 = global %G_0xab0ed4_type zeroinitializer
@G_0xafdfb0 = global %G_0xafdfb0_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x587a92 = global %G__0x587a92_type zeroinitializer
@G__0x587aa1 = global %G__0x587aa1_type zeroinitializer
@G__0x587ab2 = global %G__0x587ab2_type zeroinitializer
@G__0x587aba = global %G__0x587aba_type zeroinitializer
@G__0x587aca = global %G__0x587aca_type zeroinitializer
@G__0x587af7 = global %G__0x587af7_type zeroinitializer
@G__0xb6e920 = global %G__0xb6e920_type zeroinitializer

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

declare %struct.Memory* @sub_42ecd0.gnugo_get_boardsize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401300.get_moveX(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401370.get_moveY(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42ea60.gnugo_genmove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451f20.mprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e520.gnugo_is_pass(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4521d0.location_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4e2500.gg_snprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_402940.sgfCircle(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_402620.sgfAddComment(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4727a0.sgffile_add_debuginfo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @replay_node(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_49a080 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_49a080, %struct.Memory** %MEMORY
  %loadMem_49a081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i173 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i173
  %27 = load i64, i64* %PC.i172
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i172
  store i64 %26, i64* %RBP.i174, align 8
  store %struct.Memory* %loadMem_49a081, %struct.Memory** %MEMORY
  %loadMem_49a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i305 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i305
  %36 = load i64, i64* %PC.i304
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i304
  %38 = sub i64 %35, 336
  store i64 %38, i64* %RSP.i305, align 8
  %39 = icmp ult i64 %35, 336
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
  %49 = xor i64 336, %35
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
  store %struct.Memory* %loadMem_49a084, %struct.Memory** %MEMORY
  %loadMem_49a08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i315 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i316
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i315
  %79 = load i64, i64* %PC.i314
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i314
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_49a08b, %struct.Memory** %MEMORY
  %loadMem_49a08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i344 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i345
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i344
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i343
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i343
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_49a08f, %struct.Memory** %MEMORY
  %loadMem_49a092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %RBP.i391
  %105 = sub i64 %104, 32
  %106 = load i64, i64* %PC.i390
  %107 = add i64 %106, 8
  store i64 %107, i64* %PC.i390
  %108 = inttoptr i64 %105 to i64*
  store i64 0, i64* %108
  store %struct.Memory* %loadMem_49a092, %struct.Memory** %MEMORY
  %loadMem1_49a09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %PC.i662
  %113 = add i64 %112, -439242
  %114 = load i64, i64* %PC.i662
  %115 = add i64 %114, 5
  %116 = load i64, i64* %PC.i662
  %117 = add i64 %116, 5
  store i64 %117, i64* %PC.i662
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %115, i64* %121
  store i64 %120, i64* %118, align 8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %113, i64* %122, align 8
  store %struct.Memory* %loadMem1_49a09a, %struct.Memory** %MEMORY
  %loadMem2_49a09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a09a = load i64, i64* %3
  %call2_49a09a = call %struct.Memory* @sub_42ecd0.gnugo_get_boardsize(%struct.State* %0, i64 %loadPC_49a09a, %struct.Memory* %loadMem2_49a09a)
  store %struct.Memory* %call2_49a09a, %struct.Memory** %MEMORY
  %loadMem_49a09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %EAX.i660 = bitcast %union.anon* %128 to i32*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i661
  %133 = sub i64 %132, 40
  %134 = load i32, i32* %EAX.i660
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC.i659
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i659
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  store %struct.Memory* %loadMem_49a09f, %struct.Memory** %MEMORY
  %loadMem_49a0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 11
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RDI.i657 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i658
  %149 = sub i64 %148, 8
  %150 = load i64, i64* %PC.i656
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i656
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152
  store i64 %153, i64* %RDI.i657, align 8
  store %struct.Memory* %loadMem_49a0a2, %struct.Memory** %MEMORY
  %loadMem_49a0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 11
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RDI.i655 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RDI.i655
  %161 = load i64, i64* %PC.i654
  %162 = add i64 %161, 3
  store i64 %162, i64* %PC.i654
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163
  store i64 %164, i64* %RDI.i655, align 8
  store %struct.Memory* %loadMem_49a0a6, %struct.Memory** %MEMORY
  %loadMem_49a0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 11
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RDI.i652 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i653
  %175 = sub i64 %174, 24
  %176 = load i64, i64* %RDI.i652
  %177 = load i64, i64* %PC.i651
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i651
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_49a0a9, %struct.Memory** %MEMORY
  br label %block_.L_49a0ad

block_.L_49a0ad:                                  ; preds = %block_.L_49a1aa, %entry
  %loadMem_49a0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RBP.i650
  %187 = sub i64 %186, 24
  %188 = load i64, i64* %PC.i649
  %189 = add i64 %188, 5
  store i64 %189, i64* %PC.i649
  %190 = inttoptr i64 %187 to i64*
  %191 = load i64, i64* %190
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %192, align 1
  %193 = trunc i64 %191 to i32
  %194 = and i32 %193, 255
  %195 = call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %198, i8* %199, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %200, align 1
  %201 = icmp eq i64 %191, 0
  %202 = zext i1 %201 to i8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %202, i8* %203, align 1
  %204 = lshr i64 %191, 63
  %205 = trunc i64 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %205, i8* %206, align 1
  %207 = lshr i64 %191, 63
  %208 = xor i64 %204, %207
  %209 = add i64 %208, %207
  %210 = icmp eq i64 %209, 2
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %211, i8* %212, align 1
  store %struct.Memory* %loadMem_49a0ad, %struct.Memory** %MEMORY
  %loadMem_49a0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %PC.i648
  %217 = add i64 %216, 264
  %218 = load i64, i64* %PC.i648
  %219 = add i64 %218, 6
  %220 = load i64, i64* %PC.i648
  %221 = add i64 %220, 6
  store i64 %221, i64* %PC.i648
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %223 = load i8, i8* %222, align 1
  store i8 %223, i8* %BRANCH_TAKEN, align 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %225 = icmp ne i8 %223, 0
  %226 = select i1 %225, i64 %217, i64 %219
  store i64 %226, i64* %224, align 8
  store %struct.Memory* %loadMem_49a0b2, %struct.Memory** %MEMORY
  %loadBr_49a0b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a0b2 = icmp eq i8 %loadBr_49a0b2, 1
  br i1 %cmpBr_49a0b2, label %block_.L_49a1ba, label %block_49a0b8

block_49a0b8:                                     ; preds = %block_.L_49a0ad
  %loadMem_49a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RBP.i647
  %237 = sub i64 %236, 24
  %238 = load i64, i64* %PC.i645
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC.i645
  %240 = inttoptr i64 %237 to i64*
  %241 = load i64, i64* %240
  store i64 %241, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_49a0b8, %struct.Memory** %MEMORY
  %loadMem_49a0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %RAX.i643
  %252 = add i64 %251, 8
  %253 = load i64, i64* %PC.i642
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC.i642
  %255 = inttoptr i64 %252 to i16*
  %256 = load i16, i16* %255
  %257 = sext i16 %256 to i64
  %258 = and i64 %257, 4294967295
  store i64 %258, i64* %RCX.i644, align 8
  store %struct.Memory* %loadMem_49a0bc, %struct.Memory** %MEMORY
  %loadMem_49a0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %ECX.i640 = bitcast %union.anon* %264 to i32*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %267 to i64*
  %268 = load i32, i32* %ECX.i640
  %269 = zext i32 %268 to i64
  %270 = load i64, i64* %PC.i639
  %271 = add i64 %270, 2
  store i64 %271, i64* %PC.i639
  %272 = and i64 %269, 4294967295
  store i64 %272, i64* %RDX.i641, align 8
  store %struct.Memory* %loadMem_49a0c0, %struct.Memory** %MEMORY
  %loadMem_49a0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 7
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RDX.i638 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RDX.i638
  %280 = load i64, i64* %PC.i637
  %281 = add i64 %280, 6
  store i64 %281, i64* %PC.i637
  %282 = trunc i64 %279 to i32
  %283 = sub i32 %282, 8258
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RDX.i638, align 8
  %285 = icmp ult i32 %282, 8258
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %286, i8* %287, align 1
  %288 = and i32 %283, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288)
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %292, i8* %293, align 1
  %294 = xor i64 8258, %279
  %295 = trunc i64 %294 to i32
  %296 = xor i32 %295, %283
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %299, i8* %300, align 1
  %301 = icmp eq i32 %283, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1
  %304 = lshr i32 %283, 31
  %305 = trunc i32 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1
  %307 = lshr i32 %282, 31
  %308 = xor i32 %304, %307
  %309 = add i32 %308, %307
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %312, align 1
  store %struct.Memory* %loadMem_49a0c2, %struct.Memory** %MEMORY
  %loadMem_49a0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %ECX.i635 = bitcast %union.anon* %318 to i32*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 15
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %RBP.i636
  %323 = sub i64 %322, 196
  %324 = load i32, i32* %ECX.i635
  %325 = zext i32 %324 to i64
  %326 = load i64, i64* %PC.i634
  %327 = add i64 %326, 6
  store i64 %327, i64* %PC.i634
  %328 = inttoptr i64 %323 to i32*
  store i32 %324, i32* %328
  store %struct.Memory* %loadMem_49a0c8, %struct.Memory** %MEMORY
  %loadMem_49a0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %EDX.i632 = bitcast %union.anon* %334 to i32*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i633
  %339 = sub i64 %338, 200
  %340 = load i32, i32* %EDX.i632
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %PC.i631
  %343 = add i64 %342, 6
  store i64 %343, i64* %PC.i631
  %344 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %344
  store %struct.Memory* %loadMem_49a0ce, %struct.Memory** %MEMORY
  %loadMem_49a0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %PC.i630
  %349 = add i64 %348, 201
  %350 = load i64, i64* %PC.i630
  %351 = add i64 %350, 6
  %352 = load i64, i64* %PC.i630
  %353 = add i64 %352, 6
  store i64 %353, i64* %PC.i630
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %355 = load i8, i8* %354, align 1
  store i8 %355, i8* %BRANCH_TAKEN, align 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %357 = icmp ne i8 %355, 0
  %358 = select i1 %357, i64 %349, i64 %351
  store i64 %358, i64* %356, align 8
  store %struct.Memory* %loadMem_49a0d4, %struct.Memory** %MEMORY
  %loadBr_49a0d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a0d4 = icmp eq i8 %loadBr_49a0d4, 1
  br i1 %cmpBr_49a0d4, label %block_.L_49a19d, label %block_49a0da

block_49a0da:                                     ; preds = %block_49a0b8
  %loadMem_49a0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %PC.i629
  %363 = add i64 %362, 5
  %364 = load i64, i64* %PC.i629
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC.i629
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %363, i64* %366, align 8
  store %struct.Memory* %loadMem_49a0da, %struct.Memory** %MEMORY
  br label %block_.L_49a0df

block_.L_49a0df:                                  ; preds = %block_49a0da
  %loadMem_49a0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RBP.i628
  %377 = sub i64 %376, 196
  %378 = load i64, i64* %PC.i626
  %379 = add i64 %378, 6
  store i64 %379, i64* %PC.i626
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_49a0df, %struct.Memory** %MEMORY
  %loadMem_49a0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %RAX.i625
  %390 = load i64, i64* %PC.i624
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC.i624
  %392 = trunc i64 %389 to i32
  %393 = sub i32 %392, 8279
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX.i625, align 8
  %395 = icmp ult i32 %392, 8279
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %396, i8* %397, align 1
  %398 = and i32 %393, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1
  %404 = xor i64 8279, %389
  %405 = trunc i64 %404 to i32
  %406 = xor i32 %405, %393
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %409, i8* %410, align 1
  %411 = icmp eq i32 %393, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1
  %414 = lshr i32 %393, 31
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %415, i8* %416, align 1
  %417 = lshr i32 %392, 31
  %418 = xor i32 %414, %417
  %419 = add i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %421, i8* %422, align 1
  store %struct.Memory* %loadMem_49a0e5, %struct.Memory** %MEMORY
  %loadMem_49a0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %EAX.i622 = bitcast %union.anon* %428 to i32*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 15
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %431 to i64*
  %432 = load i64, i64* %RBP.i623
  %433 = sub i64 %432, 204
  %434 = load i32, i32* %EAX.i622
  %435 = zext i32 %434 to i64
  %436 = load i64, i64* %PC.i621
  %437 = add i64 %436, 6
  store i64 %437, i64* %PC.i621
  %438 = inttoptr i64 %433 to i32*
  store i32 %434, i32* %438
  store %struct.Memory* %loadMem_49a0ea, %struct.Memory** %MEMORY
  %loadMem_49a0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %PC.i620
  %443 = add i64 %442, 173
  %444 = load i64, i64* %PC.i620
  %445 = add i64 %444, 6
  %446 = load i64, i64* %PC.i620
  %447 = add i64 %446, 6
  store i64 %447, i64* %PC.i620
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %449 = load i8, i8* %448, align 1
  store i8 %449, i8* %BRANCH_TAKEN, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %451 = icmp ne i8 %449, 0
  %452 = select i1 %451, i64 %443, i64 %445
  store i64 %452, i64* %450, align 8
  store %struct.Memory* %loadMem_49a0f0, %struct.Memory** %MEMORY
  %loadBr_49a0f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a0f0 = icmp eq i8 %loadBr_49a0f0, 1
  br i1 %cmpBr_49a0f0, label %block_.L_49a19d, label %block_49a0f6

block_49a0f6:                                     ; preds = %block_.L_49a0df
  %loadMem_49a0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %PC.i619
  %457 = add i64 %456, 5
  %458 = load i64, i64* %PC.i619
  %459 = add i64 %458, 5
  store i64 %459, i64* %PC.i619
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %457, i64* %460, align 8
  store %struct.Memory* %loadMem_49a0f6, %struct.Memory** %MEMORY
  br label %block_.L_49a0fb

block_.L_49a0fb:                                  ; preds = %block_49a0f6
  %loadMem_49a0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 15
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RBP.i618
  %471 = sub i64 %470, 196
  %472 = load i64, i64* %PC.i616
  %473 = add i64 %472, 6
  store i64 %473, i64* %PC.i616
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_49a0fb, %struct.Memory** %MEMORY
  %loadMem_49a101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %RAX.i615
  %484 = load i64, i64* %PC.i614
  %485 = add i64 %484, 5
  store i64 %485, i64* %PC.i614
  %486 = trunc i64 %483 to i32
  %487 = sub i32 %486, 16961
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RAX.i615, align 8
  %489 = icmp ult i32 %486, 16961
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %490, i8* %491, align 1
  %492 = and i32 %487, 255
  %493 = call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %496, i8* %497, align 1
  %498 = xor i64 16961, %483
  %499 = trunc i64 %498 to i32
  %500 = xor i32 %499, %487
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %503, i8* %504, align 1
  %505 = icmp eq i32 %487, 0
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %506, i8* %507, align 1
  %508 = lshr i32 %487, 31
  %509 = trunc i32 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %509, i8* %510, align 1
  %511 = lshr i32 %486, 31
  %512 = xor i32 %508, %511
  %513 = add i32 %512, %511
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %515, i8* %516, align 1
  store %struct.Memory* %loadMem_49a101, %struct.Memory** %MEMORY
  %loadMem_49a106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %EAX.i612 = bitcast %union.anon* %522 to i32*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %RBP.i613
  %527 = sub i64 %526, 208
  %528 = load i32, i32* %EAX.i612
  %529 = zext i32 %528 to i64
  %530 = load i64, i64* %PC.i611
  %531 = add i64 %530, 6
  store i64 %531, i64* %PC.i611
  %532 = inttoptr i64 %527 to i32*
  store i32 %528, i32* %532
  store %struct.Memory* %loadMem_49a106, %struct.Memory** %MEMORY
  %loadMem_49a10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %PC.i610
  %537 = add i64 %536, 39
  %538 = load i64, i64* %PC.i610
  %539 = add i64 %538, 6
  %540 = load i64, i64* %PC.i610
  %541 = add i64 %540, 6
  store i64 %541, i64* %PC.i610
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %543 = load i8, i8* %542, align 1
  store i8 %543, i8* %BRANCH_TAKEN, align 1
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %545 = icmp ne i8 %543, 0
  %546 = select i1 %545, i64 %537, i64 %539
  store i64 %546, i64* %544, align 8
  store %struct.Memory* %loadMem_49a10c, %struct.Memory** %MEMORY
  %loadBr_49a10c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a10c = icmp eq i8 %loadBr_49a10c, 1
  br i1 %cmpBr_49a10c, label %block_.L_49a133, label %block_49a112

block_49a112:                                     ; preds = %block_.L_49a0fb
  %loadMem_49a112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %PC.i609
  %551 = add i64 %550, 5
  %552 = load i64, i64* %PC.i609
  %553 = add i64 %552, 5
  store i64 %553, i64* %PC.i609
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %551, i64* %554, align 8
  store %struct.Memory* %loadMem_49a112, %struct.Memory** %MEMORY
  br label %block_.L_49a117

block_.L_49a117:                                  ; preds = %block_49a112
  %loadMem_49a117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RBP.i608
  %565 = sub i64 %564, 196
  %566 = load i64, i64* %PC.i606
  %567 = add i64 %566, 6
  store i64 %567, i64* %PC.i606
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i607, align 8
  store %struct.Memory* %loadMem_49a117, %struct.Memory** %MEMORY
  %loadMem_49a11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RAX.i605
  %578 = load i64, i64* %PC.i604
  %579 = add i64 %578, 5
  store i64 %579, i64* %PC.i604
  %580 = trunc i64 %577 to i32
  %581 = sub i32 %580, 22337
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i605, align 8
  %583 = icmp ult i32 %580, 22337
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %584, i8* %585, align 1
  %586 = and i32 %581, 255
  %587 = call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %591, align 1
  %592 = xor i64 22337, %577
  %593 = trunc i64 %592 to i32
  %594 = xor i32 %593, %581
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %597, i8* %598, align 1
  %599 = icmp eq i32 %581, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i32 %581, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = lshr i32 %580, 31
  %606 = xor i32 %602, %605
  %607 = add i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1
  store %struct.Memory* %loadMem_49a11d, %struct.Memory** %MEMORY
  %loadMem_49a122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %EAX.i602 = bitcast %union.anon* %616 to i32*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 15
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RBP.i603
  %621 = sub i64 %620, 212
  %622 = load i32, i32* %EAX.i602
  %623 = zext i32 %622 to i64
  %624 = load i64, i64* %PC.i601
  %625 = add i64 %624, 6
  store i64 %625, i64* %PC.i601
  %626 = inttoptr i64 %621 to i32*
  store i32 %622, i32* %626
  store %struct.Memory* %loadMem_49a122, %struct.Memory** %MEMORY
  %loadMem_49a128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %629 to i64*
  %630 = load i64, i64* %PC.i600
  %631 = add i64 %630, 64
  %632 = load i64, i64* %PC.i600
  %633 = add i64 %632, 6
  %634 = load i64, i64* %PC.i600
  %635 = add i64 %634, 6
  store i64 %635, i64* %PC.i600
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %637 = load i8, i8* %636, align 1
  store i8 %637, i8* %BRANCH_TAKEN, align 1
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %639 = icmp ne i8 %637, 0
  %640 = select i1 %639, i64 %631, i64 %633
  store i64 %640, i64* %638, align 8
  store %struct.Memory* %loadMem_49a128, %struct.Memory** %MEMORY
  %loadBr_49a128 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a128 = icmp eq i8 %loadBr_49a128, 1
  br i1 %cmpBr_49a128, label %block_.L_49a168, label %block_49a12e

block_49a12e:                                     ; preds = %block_.L_49a117
  %loadMem_49a12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %643 to i64*
  %644 = load i64, i64* %PC.i599
  %645 = add i64 %644, 119
  %646 = load i64, i64* %PC.i599
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i599
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %645, i64* %648, align 8
  store %struct.Memory* %loadMem_49a12e, %struct.Memory** %MEMORY
  br label %block_.L_49a1a5

block_.L_49a133:                                  ; preds = %block_.L_49a0fb
  %loadMem_49a133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 11
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RDI.i597 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %657 to i64*
  %658 = load i64, i64* %RBP.i598
  %659 = sub i64 %658, 24
  %660 = load i64, i64* %PC.i596
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC.i596
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662
  store i64 %663, i64* %RDI.i597, align 8
  store %struct.Memory* %loadMem_49a133, %struct.Memory** %MEMORY
  %loadMem_49a137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 9
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RSI.i594 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 15
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %672 to i64*
  %673 = load i64, i64* %RBP.i595
  %674 = sub i64 %673, 40
  %675 = load i64, i64* %PC.i593
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC.i593
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RSI.i594, align 8
  store %struct.Memory* %loadMem_49a137, %struct.Memory** %MEMORY
  %loadMem1_49a13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %682 to i64*
  %683 = load i64, i64* %PC.i592
  %684 = add i64 %683, -626234
  %685 = load i64, i64* %PC.i592
  %686 = add i64 %685, 5
  %687 = load i64, i64* %PC.i592
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC.i592
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = add i64 %690, -8
  %692 = inttoptr i64 %691 to i64*
  store i64 %686, i64* %692
  store i64 %691, i64* %689, align 8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %684, i64* %693, align 8
  store %struct.Memory* %loadMem1_49a13a, %struct.Memory** %MEMORY
  %loadMem2_49a13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a13a = load i64, i64* %3
  %call2_49a13a = call %struct.Memory* @sub_401300.get_moveX(%struct.State* %0, i64 %loadPC_49a13a, %struct.Memory* %loadMem2_49a13a)
  store %struct.Memory* %call2_49a13a, %struct.Memory** %MEMORY
  %loadMem_49a13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 11
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RDI.i590 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RBP.i591
  %704 = sub i64 %703, 24
  %705 = load i64, i64* %PC.i589
  %706 = add i64 %705, 4
  store i64 %706, i64* %PC.i589
  %707 = inttoptr i64 %704 to i64*
  %708 = load i64, i64* %707
  store i64 %708, i64* %RDI.i590, align 8
  store %struct.Memory* %loadMem_49a13f, %struct.Memory** %MEMORY
  %loadMem_49a143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 9
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RSI.i587 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i588
  %719 = sub i64 %718, 40
  %720 = load i64, i64* %PC.i586
  %721 = add i64 %720, 3
  store i64 %721, i64* %PC.i586
  %722 = inttoptr i64 %719 to i32*
  %723 = load i32, i32* %722
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RSI.i587, align 8
  store %struct.Memory* %loadMem_49a143, %struct.Memory** %MEMORY
  %loadMem_49a146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 1
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %EAX.i584 = bitcast %union.anon* %730 to i32*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %RBP.i585
  %735 = sub i64 %734, 216
  %736 = load i32, i32* %EAX.i584
  %737 = zext i32 %736 to i64
  %738 = load i64, i64* %PC.i583
  %739 = add i64 %738, 6
  store i64 %739, i64* %PC.i583
  %740 = inttoptr i64 %735 to i32*
  store i32 %736, i32* %740
  store %struct.Memory* %loadMem_49a146, %struct.Memory** %MEMORY
  %loadMem1_49a14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %PC.i582
  %745 = add i64 %744, -626140
  %746 = load i64, i64* %PC.i582
  %747 = add i64 %746, 5
  %748 = load i64, i64* %PC.i582
  %749 = add i64 %748, 5
  store i64 %749, i64* %PC.i582
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %751 = load i64, i64* %750, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %747, i64* %753
  store i64 %752, i64* %750, align 8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %745, i64* %754, align 8
  store %struct.Memory* %loadMem1_49a14c, %struct.Memory** %MEMORY
  %loadMem2_49a14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a14c = load i64, i64* %3
  %call2_49a14c = call %struct.Memory* @sub_401370.get_moveY(%struct.State* %0, i64 %loadPC_49a14c, %struct.Memory* %loadMem2_49a14c)
  store %struct.Memory* %call2_49a14c, %struct.Memory** %MEMORY
  %loadMem_49a151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 7
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %PC.i580
  %762 = add i64 %761, 5
  store i64 %762, i64* %PC.i580
  store i64 2, i64* %RDX.i581, align 8
  store %struct.Memory* %loadMem_49a151, %struct.Memory** %MEMORY
  %loadMem_49a156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 11
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RDI.i578 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 15
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %RBP.i579
  %773 = sub i64 %772, 216
  %774 = load i64, i64* %PC.i577
  %775 = add i64 %774, 6
  store i64 %775, i64* %PC.i577
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RDI.i578, align 8
  store %struct.Memory* %loadMem_49a156, %struct.Memory** %MEMORY
  %loadMem_49a15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 1
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %784 to i32*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 9
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RSI.i576 = bitcast %union.anon* %787 to i64*
  %788 = load i32, i32* %EAX.i575
  %789 = zext i32 %788 to i64
  %790 = load i64, i64* %PC.i574
  %791 = add i64 %790, 2
  store i64 %791, i64* %PC.i574
  %792 = and i64 %789, 4294967295
  store i64 %792, i64* %RSI.i576, align 8
  store %struct.Memory* %loadMem_49a15c, %struct.Memory** %MEMORY
  %loadMem1_49a15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %PC.i573
  %797 = add i64 %796, -441502
  %798 = load i64, i64* %PC.i573
  %799 = add i64 %798, 5
  %800 = load i64, i64* %PC.i573
  %801 = add i64 %800, 5
  store i64 %801, i64* %PC.i573
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %803 = load i64, i64* %802, align 8
  %804 = add i64 %803, -8
  %805 = inttoptr i64 %804 to i64*
  store i64 %799, i64* %805
  store i64 %804, i64* %802, align 8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %797, i64* %806, align 8
  store %struct.Memory* %loadMem1_49a15e, %struct.Memory** %MEMORY
  %loadMem2_49a15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a15e = load i64, i64* %3
  %call2_49a15e = call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* %0, i64 %loadPC_49a15e, %struct.Memory* %loadMem2_49a15e)
  store %struct.Memory* %call2_49a15e, %struct.Memory** %MEMORY
  %loadMem_49a163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %809 to i64*
  %810 = load i64, i64* %PC.i572
  %811 = add i64 %810, 66
  %812 = load i64, i64* %PC.i572
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC.i572
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %811, i64* %814, align 8
  store %struct.Memory* %loadMem_49a163, %struct.Memory** %MEMORY
  br label %block_.L_49a1a5

block_.L_49a168:                                  ; preds = %block_.L_49a117
  %loadMem_49a168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 11
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RDI.i570 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 15
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %RBP.i571
  %825 = sub i64 %824, 24
  %826 = load i64, i64* %PC.i569
  %827 = add i64 %826, 4
  store i64 %827, i64* %PC.i569
  %828 = inttoptr i64 %825 to i64*
  %829 = load i64, i64* %828
  store i64 %829, i64* %RDI.i570, align 8
  store %struct.Memory* %loadMem_49a168, %struct.Memory** %MEMORY
  %loadMem_49a16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 9
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RSI.i567 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 15
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RBP.i568
  %840 = sub i64 %839, 40
  %841 = load i64, i64* %PC.i566
  %842 = add i64 %841, 3
  store i64 %842, i64* %PC.i566
  %843 = inttoptr i64 %840 to i32*
  %844 = load i32, i32* %843
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %RSI.i567, align 8
  store %struct.Memory* %loadMem_49a16c, %struct.Memory** %MEMORY
  %loadMem1_49a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %PC.i565
  %850 = add i64 %849, -626287
  %851 = load i64, i64* %PC.i565
  %852 = add i64 %851, 5
  %853 = load i64, i64* %PC.i565
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i565
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %856 = load i64, i64* %855, align 8
  %857 = add i64 %856, -8
  %858 = inttoptr i64 %857 to i64*
  store i64 %852, i64* %858
  store i64 %857, i64* %855, align 8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %850, i64* %859, align 8
  store %struct.Memory* %loadMem1_49a16f, %struct.Memory** %MEMORY
  %loadMem2_49a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a16f = load i64, i64* %3
  %call2_49a16f = call %struct.Memory* @sub_401300.get_moveX(%struct.State* %0, i64 %loadPC_49a16f, %struct.Memory* %loadMem2_49a16f)
  store %struct.Memory* %call2_49a16f, %struct.Memory** %MEMORY
  %loadMem_49a174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 11
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RDI.i563 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RBP.i564
  %870 = sub i64 %869, 24
  %871 = load i64, i64* %PC.i562
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC.i562
  %873 = inttoptr i64 %870 to i64*
  %874 = load i64, i64* %873
  store i64 %874, i64* %RDI.i563, align 8
  store %struct.Memory* %loadMem_49a174, %struct.Memory** %MEMORY
  %loadMem_49a178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 9
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RSI.i560 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 15
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RBP.i561
  %885 = sub i64 %884, 40
  %886 = load i64, i64* %PC.i559
  %887 = add i64 %886, 3
  store i64 %887, i64* %PC.i559
  %888 = inttoptr i64 %885 to i32*
  %889 = load i32, i32* %888
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RSI.i560, align 8
  store %struct.Memory* %loadMem_49a178, %struct.Memory** %MEMORY
  %loadMem_49a17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 1
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %896 to i32*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 15
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %RBP.i558
  %901 = sub i64 %900, 220
  %902 = load i32, i32* %EAX.i557
  %903 = zext i32 %902 to i64
  %904 = load i64, i64* %PC.i556
  %905 = add i64 %904, 6
  store i64 %905, i64* %PC.i556
  %906 = inttoptr i64 %901 to i32*
  store i32 %902, i32* %906
  store %struct.Memory* %loadMem_49a17b, %struct.Memory** %MEMORY
  %loadMem1_49a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %PC.i555
  %911 = add i64 %910, -626193
  %912 = load i64, i64* %PC.i555
  %913 = add i64 %912, 5
  %914 = load i64, i64* %PC.i555
  %915 = add i64 %914, 5
  store i64 %915, i64* %PC.i555
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %917 = load i64, i64* %916, align 8
  %918 = add i64 %917, -8
  %919 = inttoptr i64 %918 to i64*
  store i64 %913, i64* %919
  store i64 %918, i64* %916, align 8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %911, i64* %920, align 8
  store %struct.Memory* %loadMem1_49a181, %struct.Memory** %MEMORY
  %loadMem2_49a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a181 = load i64, i64* %3
  %call2_49a181 = call %struct.Memory* @sub_401370.get_moveY(%struct.State* %0, i64 %loadPC_49a181, %struct.Memory* %loadMem2_49a181)
  store %struct.Memory* %call2_49a181, %struct.Memory** %MEMORY
  %loadMem_49a186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 7
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %PC.i553
  %928 = add i64 %927, 5
  store i64 %928, i64* %PC.i553
  store i64 1, i64* %RDX.i554, align 8
  store %struct.Memory* %loadMem_49a186, %struct.Memory** %MEMORY
  %loadMem_49a18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 11
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RDI.i551 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 15
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RBP.i552
  %939 = sub i64 %938, 220
  %940 = load i64, i64* %PC.i550
  %941 = add i64 %940, 6
  store i64 %941, i64* %PC.i550
  %942 = inttoptr i64 %939 to i32*
  %943 = load i32, i32* %942
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RDI.i551, align 8
  store %struct.Memory* %loadMem_49a18b, %struct.Memory** %MEMORY
  %loadMem_49a191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 1
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %EAX.i548 = bitcast %union.anon* %950 to i32*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 9
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RSI.i549 = bitcast %union.anon* %953 to i64*
  %954 = load i32, i32* %EAX.i548
  %955 = zext i32 %954 to i64
  %956 = load i64, i64* %PC.i547
  %957 = add i64 %956, 2
  store i64 %957, i64* %PC.i547
  %958 = and i64 %955, 4294967295
  store i64 %958, i64* %RSI.i549, align 8
  store %struct.Memory* %loadMem_49a191, %struct.Memory** %MEMORY
  %loadMem1_49a193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %PC.i546
  %963 = add i64 %962, -441555
  %964 = load i64, i64* %PC.i546
  %965 = add i64 %964, 5
  %966 = load i64, i64* %PC.i546
  %967 = add i64 %966, 5
  store i64 %967, i64* %PC.i546
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %969 = load i64, i64* %968, align 8
  %970 = add i64 %969, -8
  %971 = inttoptr i64 %970 to i64*
  store i64 %965, i64* %971
  store i64 %970, i64* %968, align 8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %963, i64* %972, align 8
  store %struct.Memory* %loadMem1_49a193, %struct.Memory** %MEMORY
  %loadMem2_49a193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a193 = load i64, i64* %3
  %call2_49a193 = call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* %0, i64 %loadPC_49a193, %struct.Memory* %loadMem2_49a193)
  store %struct.Memory* %call2_49a193, %struct.Memory** %MEMORY
  %loadMem_49a198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %PC.i545
  %977 = add i64 %976, 13
  %978 = load i64, i64* %PC.i545
  %979 = add i64 %978, 5
  store i64 %979, i64* %PC.i545
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %977, i64* %980, align 8
  store %struct.Memory* %loadMem_49a198, %struct.Memory** %MEMORY
  br label %block_.L_49a1a5

block_.L_49a19d:                                  ; preds = %block_.L_49a0df, %block_49a0b8
  %loadMem_49a19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 15
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RBP.i544
  %991 = sub i64 %990, 24
  %992 = load i64, i64* %PC.i542
  %993 = add i64 %992, 4
  store i64 %993, i64* %PC.i542
  %994 = inttoptr i64 %991 to i64*
  %995 = load i64, i64* %994
  store i64 %995, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_49a19d, %struct.Memory** %MEMORY
  %loadMem_49a1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 33
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 1
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 15
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %RBP.i541
  %1006 = sub i64 %1005, 32
  %1007 = load i64, i64* %RAX.i540
  %1008 = load i64, i64* %PC.i539
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC.i539
  %1010 = inttoptr i64 %1006 to i64*
  store i64 %1007, i64* %1010
  store %struct.Memory* %loadMem_49a1a1, %struct.Memory** %MEMORY
  br label %block_.L_49a1a5

block_.L_49a1a5:                                  ; preds = %block_.L_49a19d, %block_.L_49a168, %block_.L_49a133, %block_49a12e
  %loadMem_49a1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %PC.i538
  %1015 = add i64 %1014, 5
  %1016 = load i64, i64* %PC.i538
  %1017 = add i64 %1016, 5
  store i64 %1017, i64* %PC.i538
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1015, i64* %1018, align 8
  store %struct.Memory* %loadMem_49a1a5, %struct.Memory** %MEMORY
  br label %block_.L_49a1aa

block_.L_49a1aa:                                  ; preds = %block_.L_49a1a5
  %loadMem_49a1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 15
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %RBP.i537
  %1029 = sub i64 %1028, 24
  %1030 = load i64, i64* %PC.i535
  %1031 = add i64 %1030, 4
  store i64 %1031, i64* %PC.i535
  %1032 = inttoptr i64 %1029 to i64*
  %1033 = load i64, i64* %1032
  store i64 %1033, i64* %RAX.i536, align 8
  store %struct.Memory* %loadMem_49a1aa, %struct.Memory** %MEMORY
  %loadMem_49a1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 1
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RAX.i534
  %1041 = load i64, i64* %PC.i533
  %1042 = add i64 %1041, 3
  store i64 %1042, i64* %PC.i533
  %1043 = inttoptr i64 %1040 to i64*
  %1044 = load i64, i64* %1043
  store i64 %1044, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_49a1ae, %struct.Memory** %MEMORY
  %loadMem_49a1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RBP.i532
  %1055 = sub i64 %1054, 24
  %1056 = load i64, i64* %RAX.i531
  %1057 = load i64, i64* %PC.i530
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %PC.i530
  %1059 = inttoptr i64 %1055 to i64*
  store i64 %1056, i64* %1059
  store %struct.Memory* %loadMem_49a1b1, %struct.Memory** %MEMORY
  %loadMem_49a1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %PC.i529
  %1064 = add i64 %1063, -264
  %1065 = load i64, i64* %PC.i529
  %1066 = add i64 %1065, 5
  store i64 %1066, i64* %PC.i529
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1064, i64* %1067, align 8
  store %struct.Memory* %loadMem_49a1b5, %struct.Memory** %MEMORY
  br label %block_.L_49a0ad

block_.L_49a1ba:                                  ; preds = %block_.L_49a0ad
  %loadMem_49a1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %RBP.i528
  %1075 = sub i64 %1074, 32
  %1076 = load i64, i64* %PC.i527
  %1077 = add i64 %1076, 5
  store i64 %1077, i64* %PC.i527
  %1078 = inttoptr i64 %1075 to i64*
  %1079 = load i64, i64* %1078
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1080, align 1
  %1081 = trunc i64 %1079 to i32
  %1082 = and i32 %1081, 255
  %1083 = call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1086, i8* %1087, align 1
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1088, align 1
  %1089 = icmp eq i64 %1079, 0
  %1090 = zext i1 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1090, i8* %1091, align 1
  %1092 = lshr i64 %1079, 63
  %1093 = trunc i64 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1093, i8* %1094, align 1
  %1095 = lshr i64 %1079, 63
  %1096 = xor i64 %1092, %1095
  %1097 = add i64 %1096, %1095
  %1098 = icmp eq i64 %1097, 2
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1099, i8* %1100, align 1
  store %struct.Memory* %loadMem_49a1ba, %struct.Memory** %MEMORY
  %loadMem_49a1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %PC.i526
  %1105 = add i64 %1104, 11
  %1106 = load i64, i64* %PC.i526
  %1107 = add i64 %1106, 6
  %1108 = load i64, i64* %PC.i526
  %1109 = add i64 %1108, 6
  store i64 %1109, i64* %PC.i526
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1111 = load i8, i8* %1110, align 1
  %1112 = icmp eq i8 %1111, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %BRANCH_TAKEN, align 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1115 = select i1 %1112, i64 %1105, i64 %1107
  store i64 %1115, i64* %1114, align 8
  store %struct.Memory* %loadMem_49a1bf, %struct.Memory** %MEMORY
  %loadBr_49a1bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a1bf = icmp eq i8 %loadBr_49a1bf, 1
  br i1 %cmpBr_49a1bf, label %block_.L_49a1ca, label %block_49a1c5

block_49a1c5:                                     ; preds = %block_.L_49a1ba
  %loadMem_49a1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %PC.i525
  %1120 = add i64 %1119, 1035
  %1121 = load i64, i64* %PC.i525
  %1122 = add i64 %1121, 5
  store i64 %1122, i64* %PC.i525
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1120, i64* %1123, align 8
  store %struct.Memory* %loadMem_49a1c5, %struct.Memory** %MEMORY
  br label %block_.L_49a5d0

block_.L_49a1ca:                                  ; preds = %block_.L_49a1ba
  %loadMem_49a1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 11
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RDI.i523 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 15
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RBP.i524
  %1134 = sub i64 %1133, 32
  %1135 = load i64, i64* %PC.i522
  %1136 = add i64 %1135, 4
  store i64 %1136, i64* %PC.i522
  %1137 = inttoptr i64 %1134 to i64*
  %1138 = load i64, i64* %1137
  store i64 %1138, i64* %RDI.i523, align 8
  store %struct.Memory* %loadMem_49a1ca, %struct.Memory** %MEMORY
  %loadMem_49a1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 9
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RSI.i520 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 15
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %RBP.i521
  %1149 = sub i64 %1148, 40
  %1150 = load i64, i64* %PC.i519
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC.i519
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RSI.i520, align 8
  store %struct.Memory* %loadMem_49a1ce, %struct.Memory** %MEMORY
  %loadMem1_49a1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %PC.i518
  %1159 = add i64 %1158, -626385
  %1160 = load i64, i64* %PC.i518
  %1161 = add i64 %1160, 5
  %1162 = load i64, i64* %PC.i518
  %1163 = add i64 %1162, 5
  store i64 %1163, i64* %PC.i518
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1165 = load i64, i64* %1164, align 8
  %1166 = add i64 %1165, -8
  %1167 = inttoptr i64 %1166 to i64*
  store i64 %1161, i64* %1167
  store i64 %1166, i64* %1164, align 8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1159, i64* %1168, align 8
  store %struct.Memory* %loadMem1_49a1d1, %struct.Memory** %MEMORY
  %loadMem2_49a1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a1d1 = load i64, i64* %3
  %call2_49a1d1 = call %struct.Memory* @sub_401300.get_moveX(%struct.State* %0, i64 %loadPC_49a1d1, %struct.Memory* %loadMem2_49a1d1)
  store %struct.Memory* %call2_49a1d1, %struct.Memory** %MEMORY
  %loadMem_49a1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %EAX.i516 = bitcast %union.anon* %1174 to i32*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 15
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RBP.i517
  %1179 = sub i64 %1178, 44
  %1180 = load i32, i32* %EAX.i516
  %1181 = zext i32 %1180 to i64
  %1182 = load i64, i64* %PC.i515
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC.i515
  %1184 = inttoptr i64 %1179 to i32*
  store i32 %1180, i32* %1184
  store %struct.Memory* %loadMem_49a1d6, %struct.Memory** %MEMORY
  %loadMem_49a1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 11
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RDI.i513 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i514
  %1195 = sub i64 %1194, 32
  %1196 = load i64, i64* %PC.i512
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %PC.i512
  %1198 = inttoptr i64 %1195 to i64*
  %1199 = load i64, i64* %1198
  store i64 %1199, i64* %RDI.i513, align 8
  store %struct.Memory* %loadMem_49a1d9, %struct.Memory** %MEMORY
  %loadMem_49a1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 9
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RSI.i510 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 15
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %RBP.i511
  %1210 = sub i64 %1209, 40
  %1211 = load i64, i64* %PC.i509
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC.i509
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RSI.i510, align 8
  store %struct.Memory* %loadMem_49a1dd, %struct.Memory** %MEMORY
  %loadMem1_49a1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1218 to i64*
  %1219 = load i64, i64* %PC.i508
  %1220 = add i64 %1219, -626288
  %1221 = load i64, i64* %PC.i508
  %1222 = add i64 %1221, 5
  %1223 = load i64, i64* %PC.i508
  %1224 = add i64 %1223, 5
  store i64 %1224, i64* %PC.i508
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1226 = load i64, i64* %1225, align 8
  %1227 = add i64 %1226, -8
  %1228 = inttoptr i64 %1227 to i64*
  store i64 %1222, i64* %1228
  store i64 %1227, i64* %1225, align 8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1220, i64* %1229, align 8
  store %struct.Memory* %loadMem1_49a1e0, %struct.Memory** %MEMORY
  %loadMem2_49a1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a1e0 = load i64, i64* %3
  %call2_49a1e0 = call %struct.Memory* @sub_401370.get_moveY(%struct.State* %0, i64 %loadPC_49a1e0, %struct.Memory* %loadMem2_49a1e0)
  store %struct.Memory* %call2_49a1e0, %struct.Memory** %MEMORY
  %loadMem_49a1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 9
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RSI.i507 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %PC.i506
  %1237 = add i64 %1236, 5
  store i64 %1237, i64* %PC.i506
  store i64 2, i64* %RSI.i507, align 8
  store %struct.Memory* %loadMem_49a1e5, %struct.Memory** %MEMORY
  %loadMem_49a1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 5
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %PC.i504
  %1245 = add i64 %1244, 5
  store i64 %1245, i64* %PC.i504
  store i64 1, i64* %RCX.i505, align 8
  store %struct.Memory* %loadMem_49a1ea, %struct.Memory** %MEMORY
  %loadMem_49a1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %1251 to i32*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 15
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RBP.i503
  %1256 = sub i64 %1255, 48
  %1257 = load i32, i32* %EAX.i502
  %1258 = zext i32 %1257 to i64
  %1259 = load i64, i64* %PC.i501
  %1260 = add i64 %1259, 3
  store i64 %1260, i64* %PC.i501
  %1261 = inttoptr i64 %1256 to i32*
  store i32 %1257, i32* %1261
  store %struct.Memory* %loadMem_49a1ef, %struct.Memory** %MEMORY
  %loadMem_49a1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 11
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RDI.i499 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 15
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %1270 to i64*
  %1271 = load i64, i64* %RBP.i500
  %1272 = sub i64 %1271, 32
  %1273 = load i64, i64* %PC.i498
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i498
  %1275 = inttoptr i64 %1272 to i64*
  %1276 = load i64, i64* %1275
  store i64 %1276, i64* %RDI.i499, align 8
  store %struct.Memory* %loadMem_49a1f2, %struct.Memory** %MEMORY
  %loadMem_49a1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 1
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 11
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RDI.i497 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RDI.i497
  %1287 = add i64 %1286, 8
  %1288 = load i64, i64* %PC.i495
  %1289 = add i64 %1288, 4
  store i64 %1289, i64* %PC.i495
  %1290 = inttoptr i64 %1287 to i16*
  %1291 = load i16, i16* %1290
  %1292 = sext i16 %1291 to i64
  %1293 = and i64 %1292, 4294967295
  store i64 %1293, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_49a1f6, %struct.Memory** %MEMORY
  %loadMem_49a1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 1
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %1299 to i32*
  %1300 = load i32, i32* %EAX.i494
  %1301 = zext i32 %1300 to i64
  %1302 = load i64, i64* %PC.i493
  %1303 = add i64 %1302, 5
  store i64 %1303, i64* %PC.i493
  %1304 = sub i32 %1300, 8279
  %1305 = icmp ult i32 %1300, 8279
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1306, i8* %1307, align 1
  %1308 = and i32 %1304, 255
  %1309 = call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1312, i8* %1313, align 1
  %1314 = xor i64 8279, %1301
  %1315 = trunc i64 %1314 to i32
  %1316 = xor i32 %1315, %1304
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1319, i8* %1320, align 1
  %1321 = icmp eq i32 %1304, 0
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1322, i8* %1323, align 1
  %1324 = lshr i32 %1304, 31
  %1325 = trunc i32 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1325, i8* %1326, align 1
  %1327 = lshr i32 %1300, 31
  %1328 = xor i32 %1324, %1327
  %1329 = add i32 %1328, %1327
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1331, i8* %1332, align 1
  store %struct.Memory* %loadMem_49a1fa, %struct.Memory** %MEMORY
  %loadMem_49a1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1338 to i32*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 9
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %1341 to i64*
  %1342 = load i32, i32* %ECX.i
  %1343 = zext i32 %1342 to i64
  %1344 = load i64, i64* %PC.i491
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i491
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1347 = load i8, i8* %1346, align 1
  %1348 = icmp ne i8 %1347, 0
  %1349 = load i64, i64* %RSI.i492, align 8
  %1350 = select i1 %1348, i64 %1343, i64 %1349
  %1351 = and i64 %1350, 4294967295
  store i64 %1351, i64* %RSI.i492, align 8
  store %struct.Memory* %loadMem_49a1ff, %struct.Memory** %MEMORY
  %loadMem_49a202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 9
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %ESI.i489 = bitcast %union.anon* %1357 to i32*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i490
  %1362 = sub i64 %1361, 36
  %1363 = load i32, i32* %ESI.i489
  %1364 = zext i32 %1363 to i64
  %1365 = load i64, i64* %PC.i488
  %1366 = add i64 %1365, 3
  store i64 %1366, i64* %PC.i488
  %1367 = inttoptr i64 %1362 to i32*
  store i32 %1363, i32* %1367
  store %struct.Memory* %loadMem_49a202, %struct.Memory** %MEMORY
  %loadMem_49a205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 1
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %1376 to i64*
  %1377 = load i64, i64* %RBP.i487
  %1378 = sub i64 %1377, 36
  %1379 = load i64, i64* %PC.i485
  %1380 = add i64 %1379, 3
  store i64 %1380, i64* %PC.i485
  %1381 = inttoptr i64 %1378 to i32*
  %1382 = load i32, i32* %1381
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_49a205, %struct.Memory** %MEMORY
  %loadMem_49a208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 1
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %1389 to i32*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 15
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1392 to i64*
  %1393 = load i32, i32* %EAX.i483
  %1394 = zext i32 %1393 to i64
  %1395 = load i64, i64* %RBP.i484
  %1396 = sub i64 %1395, 12
  %1397 = load i64, i64* %PC.i482
  %1398 = add i64 %1397, 3
  store i64 %1398, i64* %PC.i482
  %1399 = inttoptr i64 %1396 to i32*
  %1400 = load i32, i32* %1399
  %1401 = sub i32 %1393, %1400
  %1402 = icmp ult i32 %1393, %1400
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1403, i8* %1404, align 1
  %1405 = and i32 %1401, 255
  %1406 = call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1409, i8* %1410, align 1
  %1411 = xor i32 %1400, %1393
  %1412 = xor i32 %1411, %1401
  %1413 = lshr i32 %1412, 4
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1415, i8* %1416, align 1
  %1417 = icmp eq i32 %1401, 0
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1418, i8* %1419, align 1
  %1420 = lshr i32 %1401, 31
  %1421 = trunc i32 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1421, i8* %1422, align 1
  %1423 = lshr i32 %1393, 31
  %1424 = lshr i32 %1400, 31
  %1425 = xor i32 %1424, %1423
  %1426 = xor i32 %1420, %1423
  %1427 = add i32 %1426, %1425
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1429, i8* %1430, align 1
  store %struct.Memory* %loadMem_49a208, %struct.Memory** %MEMORY
  %loadMem_49a20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %PC.i481
  %1435 = add i64 %1434, 16
  %1436 = load i64, i64* %PC.i481
  %1437 = add i64 %1436, 6
  %1438 = load i64, i64* %PC.i481
  %1439 = add i64 %1438, 6
  store i64 %1439, i64* %PC.i481
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1441 = load i8, i8* %1440, align 1
  store i8 %1441, i8* %BRANCH_TAKEN, align 1
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1443 = icmp ne i8 %1441, 0
  %1444 = select i1 %1443, i64 %1435, i64 %1437
  store i64 %1444, i64* %1442, align 8
  store %struct.Memory* %loadMem_49a20b, %struct.Memory** %MEMORY
  %loadBr_49a20b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a20b = icmp eq i8 %loadBr_49a20b, 1
  br i1 %cmpBr_49a20b, label %block_.L_49a21b, label %block_49a211

block_49a211:                                     ; preds = %block_.L_49a1ca
  %loadMem_49a211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 15
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RBP.i480
  %1452 = sub i64 %1451, 12
  %1453 = load i64, i64* %PC.i479
  %1454 = add i64 %1453, 4
  store i64 %1454, i64* %PC.i479
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455
  %1457 = sub i32 %1456, 3
  %1458 = icmp ult i32 %1456, 3
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1459, i8* %1460, align 1
  %1461 = and i32 %1457, 255
  %1462 = call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1465, i8* %1466, align 1
  %1467 = xor i32 %1456, 3
  %1468 = xor i32 %1467, %1457
  %1469 = lshr i32 %1468, 4
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1471, i8* %1472, align 1
  %1473 = icmp eq i32 %1457, 0
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1474, i8* %1475, align 1
  %1476 = lshr i32 %1457, 31
  %1477 = trunc i32 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1477, i8* %1478, align 1
  %1479 = lshr i32 %1456, 31
  %1480 = xor i32 %1476, %1479
  %1481 = add i32 %1480, %1479
  %1482 = icmp eq i32 %1481, 2
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1483, i8* %1484, align 1
  store %struct.Memory* %loadMem_49a211, %struct.Memory** %MEMORY
  %loadMem_49a215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1487 to i64*
  %1488 = load i64, i64* %PC.i478
  %1489 = add i64 %1488, 941
  %1490 = load i64, i64* %PC.i478
  %1491 = add i64 %1490, 6
  %1492 = load i64, i64* %PC.i478
  %1493 = add i64 %1492, 6
  store i64 %1493, i64* %PC.i478
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1495 = load i8, i8* %1494, align 1
  %1496 = icmp eq i8 %1495, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %BRANCH_TAKEN, align 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1499 = select i1 %1496, i64 %1489, i64 %1491
  store i64 %1499, i64* %1498, align 8
  store %struct.Memory* %loadMem_49a215, %struct.Memory** %MEMORY
  %loadBr_49a215 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a215 = icmp eq i8 %loadBr_49a215, 1
  br i1 %cmpBr_49a215, label %block_.L_49a5c2, label %block_.L_49a21b

block_.L_49a21b:                                  ; preds = %block_49a211, %block_.L_49a1ca
  %loadMem_49a21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 11
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RDI.i476 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 15
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %RBP.i477
  %1510 = sub i64 %1509, 52
  %1511 = load i64, i64* %PC.i475
  %1512 = add i64 %1511, 4
  store i64 %1512, i64* %PC.i475
  store i64 %1510, i64* %RDI.i476, align 8
  store %struct.Memory* %loadMem_49a21b, %struct.Memory** %MEMORY
  %loadMem_49a21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 9
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RSI.i473 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 15
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %RBP.i474
  %1523 = sub i64 %1522, 56
  %1524 = load i64, i64* %PC.i472
  %1525 = add i64 %1524, 4
  store i64 %1525, i64* %PC.i472
  store i64 %1523, i64* %RSI.i473, align 8
  store %struct.Memory* %loadMem_49a21f, %struct.Memory** %MEMORY
  %loadMem_49a223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 7
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i471
  %1536 = sub i64 %1535, 36
  %1537 = load i64, i64* %PC.i469
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC.i469
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RDX.i470, align 8
  store %struct.Memory* %loadMem_49a223, %struct.Memory** %MEMORY
  %loadMem1_49a226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %PC.i468
  %1546 = add i64 %1545, -440262
  %1547 = load i64, i64* %PC.i468
  %1548 = add i64 %1547, 5
  %1549 = load i64, i64* %PC.i468
  %1550 = add i64 %1549, 5
  store i64 %1550, i64* %PC.i468
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1552 = load i64, i64* %1551, align 8
  %1553 = add i64 %1552, -8
  %1554 = inttoptr i64 %1553 to i64*
  store i64 %1548, i64* %1554
  store i64 %1553, i64* %1551, align 8
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1546, i64* %1555, align 8
  store %struct.Memory* %loadMem1_49a226, %struct.Memory** %MEMORY
  %loadMem2_49a226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a226 = load i64, i64* %3
  %call2_49a226 = call %struct.Memory* @sub_42ea60.gnugo_genmove(%struct.State* %0, i64 %loadPC_49a226, %struct.Memory* %loadMem2_49a226)
  store %struct.Memory* %call2_49a226, %struct.Memory** %MEMORY
  %loadMem_49a22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 7
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i467
  %1566 = sub i64 %1565, 52
  %1567 = load i64, i64* %PC.i465
  %1568 = add i64 %1567, 3
  store i64 %1568, i64* %PC.i465
  %1569 = inttoptr i64 %1566 to i32*
  %1570 = load i32, i32* %1569
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RDX.i466, align 8
  store %struct.Memory* %loadMem_49a22b, %struct.Memory** %MEMORY
  %loadMem_49a22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 7
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1577 to i32*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %1580 to i64*
  %1581 = load i32, i32* %EDX.i
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %RBP.i464
  %1584 = sub i64 %1583, 44
  %1585 = load i64, i64* %PC.i463
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %PC.i463
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587
  %1589 = sub i32 %1581, %1588
  %1590 = icmp ult i32 %1581, %1588
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1591, i8* %1592, align 1
  %1593 = and i32 %1589, 255
  %1594 = call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1597, i8* %1598, align 1
  %1599 = xor i32 %1588, %1581
  %1600 = xor i32 %1599, %1589
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1603, i8* %1604, align 1
  %1605 = icmp eq i32 %1589, 0
  %1606 = zext i1 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i32 %1589, 31
  %1609 = trunc i32 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1609, i8* %1610, align 1
  %1611 = lshr i32 %1581, 31
  %1612 = lshr i32 %1588, 31
  %1613 = xor i32 %1612, %1611
  %1614 = xor i32 %1608, %1611
  %1615 = add i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1617, i8* %1618, align 1
  store %struct.Memory* %loadMem_49a22e, %struct.Memory** %MEMORY
  %loadMem_49a231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 1
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %EAX.i461 = bitcast %union.anon* %1624 to i32*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 15
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1627 to i64*
  %1628 = load i64, i64* %RBP.i462
  %1629 = sub i64 %1628, 224
  %1630 = load i32, i32* %EAX.i461
  %1631 = zext i32 %1630 to i64
  %1632 = load i64, i64* %PC.i460
  %1633 = add i64 %1632, 6
  store i64 %1633, i64* %PC.i460
  %1634 = inttoptr i64 %1629 to i32*
  store i32 %1630, i32* %1634
  store %struct.Memory* %loadMem_49a231, %struct.Memory** %MEMORY
  %loadMem_49a237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %PC.i459
  %1639 = add i64 %1638, 32
  %1640 = load i64, i64* %PC.i459
  %1641 = add i64 %1640, 6
  %1642 = load i64, i64* %PC.i459
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %PC.i459
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1645 = load i8, i8* %1644, align 1
  %1646 = icmp eq i8 %1645, 0
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %BRANCH_TAKEN, align 1
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1649 = select i1 %1646, i64 %1639, i64 %1641
  store i64 %1649, i64* %1648, align 8
  store %struct.Memory* %loadMem_49a237, %struct.Memory** %MEMORY
  %loadBr_49a237 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a237 = icmp eq i8 %loadBr_49a237, 1
  br i1 %cmpBr_49a237, label %block_.L_49a257, label %block_49a23d

block_49a23d:                                     ; preds = %block_.L_49a21b
  %loadMem_49a23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 1
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RBP.i458
  %1660 = sub i64 %1659, 56
  %1661 = load i64, i64* %PC.i456
  %1662 = add i64 %1661, 3
  store i64 %1662, i64* %PC.i456
  %1663 = inttoptr i64 %1660 to i32*
  %1664 = load i32, i32* %1663
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_49a23d, %struct.Memory** %MEMORY
  %loadMem_49a240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %EAX.i454 = bitcast %union.anon* %1671 to i32*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 15
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %1674 to i64*
  %1675 = load i32, i32* %EAX.i454
  %1676 = zext i32 %1675 to i64
  %1677 = load i64, i64* %RBP.i455
  %1678 = sub i64 %1677, 48
  %1679 = load i64, i64* %PC.i453
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC.i453
  %1681 = inttoptr i64 %1678 to i32*
  %1682 = load i32, i32* %1681
  %1683 = sub i32 %1675, %1682
  %1684 = icmp ult i32 %1675, %1682
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1685, i8* %1686, align 1
  %1687 = and i32 %1683, 255
  %1688 = call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1691, i8* %1692, align 1
  %1693 = xor i32 %1682, %1675
  %1694 = xor i32 %1693, %1683
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1697, i8* %1698, align 1
  %1699 = icmp eq i32 %1683, 0
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1700, i8* %1701, align 1
  %1702 = lshr i32 %1683, 31
  %1703 = trunc i32 %1702 to i8
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1703, i8* %1704, align 1
  %1705 = lshr i32 %1675, 31
  %1706 = lshr i32 %1682, 31
  %1707 = xor i32 %1706, %1705
  %1708 = xor i32 %1702, %1705
  %1709 = add i32 %1708, %1707
  %1710 = icmp eq i32 %1709, 2
  %1711 = zext i1 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1711, i8* %1712, align 1
  store %struct.Memory* %loadMem_49a240, %struct.Memory** %MEMORY
  %loadMem_49a243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %PC.i452
  %1717 = add i64 %1716, 20
  %1718 = load i64, i64* %PC.i452
  %1719 = add i64 %1718, 6
  %1720 = load i64, i64* %PC.i452
  %1721 = add i64 %1720, 6
  store i64 %1721, i64* %PC.i452
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1723 = load i8, i8* %1722, align 1
  %1724 = icmp eq i8 %1723, 0
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %BRANCH_TAKEN, align 1
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1727 = select i1 %1724, i64 %1717, i64 %1719
  store i64 %1727, i64* %1726, align 8
  store %struct.Memory* %loadMem_49a243, %struct.Memory** %MEMORY
  %loadBr_49a243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a243 = icmp eq i8 %loadBr_49a243, 1
  br i1 %cmpBr_49a243, label %block_.L_49a257, label %block_49a249

block_49a249:                                     ; preds = %block_49a23d
  %loadMem_49a249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %PC.i451
  %1732 = add i64 %1731, 8
  store i64 %1732, i64* %PC.i451
  %1733 = load i32, i32* bitcast (%G_0xab0ed4_type* @G_0xab0ed4 to i32*)
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1734, align 1
  %1735 = and i32 %1733, 255
  %1736 = call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1739, i8* %1740, align 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1741, align 1
  %1742 = icmp eq i32 %1733, 0
  %1743 = zext i1 %1742 to i8
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1743, i8* %1744, align 1
  %1745 = lshr i32 %1733, 31
  %1746 = trunc i32 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1746, i8* %1747, align 1
  %1748 = lshr i32 %1733, 31
  %1749 = xor i32 %1745, %1748
  %1750 = add i32 %1749, %1748
  %1751 = icmp eq i32 %1750, 2
  %1752 = zext i1 %1751 to i8
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1752, i8* %1753, align 1
  store %struct.Memory* %loadMem_49a249, %struct.Memory** %MEMORY
  %loadMem_49a251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1756 to i64*
  %1757 = load i64, i64* %PC.i450
  %1758 = add i64 %1757, 296
  %1759 = load i64, i64* %PC.i450
  %1760 = add i64 %1759, 6
  %1761 = load i64, i64* %PC.i450
  %1762 = add i64 %1761, 6
  store i64 %1762, i64* %PC.i450
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1764 = load i8, i8* %1763, align 1
  %1765 = icmp eq i8 %1764, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %BRANCH_TAKEN, align 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1768 = select i1 %1765, i64 %1758, i64 %1760
  store i64 %1768, i64* %1767, align 8
  store %struct.Memory* %loadMem_49a251, %struct.Memory** %MEMORY
  %loadBr_49a251 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a251 = icmp eq i8 %loadBr_49a251, 1
  br i1 %cmpBr_49a251, label %block_.L_49a379, label %block_.L_49a257

block_.L_49a257:                                  ; preds = %block_49a249, %block_49a23d, %block_.L_49a21b
  %loadMem_49a257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 11
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RDI.i449 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %PC.i448
  %1776 = add i64 %1775, 10
  store i64 %1776, i64* %PC.i448
  store i64 ptrtoint (%G__0x587a92_type* @G__0x587a92 to i64), i64* %RDI.i449, align 8
  store %struct.Memory* %loadMem_49a257, %struct.Memory** %MEMORY
  %loadMem_49a261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 1
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %PC.i446
  %1784 = add i64 %1783, 7
  store i64 %1784, i64* %PC.i446
  %1785 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_49a261, %struct.Memory** %MEMORY
  %loadMem_49a268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 1
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RAX.i445
  %1794 = load i64, i64* %PC.i444
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC.i444
  %1796 = trunc i64 %1793 to i32
  %1797 = add i32 1, %1796
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i445, align 8
  %1799 = icmp ult i32 %1797, %1796
  %1800 = icmp ult i32 %1797, 1
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1802, i8* %1803, align 1
  %1804 = and i32 %1797, 255
  %1805 = call i32 @llvm.ctpop.i32(i32 %1804)
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1808, i8* %1809, align 1
  %1810 = xor i64 1, %1793
  %1811 = trunc i64 %1810 to i32
  %1812 = xor i32 %1811, %1797
  %1813 = lshr i32 %1812, 4
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1815, i8* %1816, align 1
  %1817 = icmp eq i32 %1797, 0
  %1818 = zext i1 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1818, i8* %1819, align 1
  %1820 = lshr i32 %1797, 31
  %1821 = trunc i32 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1821, i8* %1822, align 1
  %1823 = lshr i32 %1796, 31
  %1824 = xor i32 %1820, %1823
  %1825 = add i32 %1824, %1820
  %1826 = icmp eq i32 %1825, 2
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1827, i8* %1828, align 1
  store %struct.Memory* %loadMem_49a268, %struct.Memory** %MEMORY
  %loadMem_49a26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 7
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 15
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %RBP.i443
  %1839 = sub i64 %1838, 36
  %1840 = load i64, i64* %PC.i441
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %PC.i441
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RDX.i442, align 8
  store %struct.Memory* %loadMem_49a26b, %struct.Memory** %MEMORY
  %loadMem_49a26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 1
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %1850 to i32*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 9
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RSI.i440 = bitcast %union.anon* %1853 to i64*
  %1854 = load i32, i32* %EAX.i439
  %1855 = zext i32 %1854 to i64
  %1856 = load i64, i64* %PC.i438
  %1857 = add i64 %1856, 2
  store i64 %1857, i64* %PC.i438
  %1858 = and i64 %1855, 4294967295
  store i64 %1858, i64* %RSI.i440, align 8
  store %struct.Memory* %loadMem_49a26e, %struct.Memory** %MEMORY
  %loadMem_49a270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 1
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %1865 = bitcast %union.anon* %1864 to %struct.anon.2*
  %AL.i437 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1865, i32 0, i32 0
  %1866 = load i64, i64* %PC.i436
  %1867 = add i64 %1866, 2
  store i64 %1867, i64* %PC.i436
  store i8 0, i8* %AL.i437, align 1
  store %struct.Memory* %loadMem_49a270, %struct.Memory** %MEMORY
  %loadMem1_49a272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %PC.i435
  %1872 = add i64 %1871, -295762
  %1873 = load i64, i64* %PC.i435
  %1874 = add i64 %1873, 5
  %1875 = load i64, i64* %PC.i435
  %1876 = add i64 %1875, 5
  store i64 %1876, i64* %PC.i435
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1878 = load i64, i64* %1877, align 8
  %1879 = add i64 %1878, -8
  %1880 = inttoptr i64 %1879 to i64*
  store i64 %1874, i64* %1880
  store i64 %1879, i64* %1877, align 8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1872, i64* %1881, align 8
  store %struct.Memory* %loadMem1_49a272, %struct.Memory** %MEMORY
  %loadMem2_49a272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a272 = load i64, i64* %3
  %call2_49a272 = call %struct.Memory* @sub_451f20.mprintf(%struct.State* %0, i64 %loadPC_49a272, %struct.Memory* %loadMem2_49a272)
  store %struct.Memory* %call2_49a272, %struct.Memory** %MEMORY
  %loadMem_49a277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 11
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RDI.i434 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %PC.i433
  %1889 = add i64 %1888, 10
  store i64 %1889, i64* %PC.i433
  store i64 ptrtoint (%G__0x587aa1_type* @G__0x587aa1 to i64), i64* %RDI.i434, align 8
  store %struct.Memory* %loadMem_49a277, %struct.Memory** %MEMORY
  %loadMem_49a281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 9
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RSI.i431 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 15
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RBP.i432
  %1900 = sub i64 %1899, 52
  %1901 = load i64, i64* %PC.i430
  %1902 = add i64 %1901, 3
  store i64 %1902, i64* %PC.i430
  %1903 = inttoptr i64 %1900 to i32*
  %1904 = load i32, i32* %1903
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RSI.i431, align 8
  store %struct.Memory* %loadMem_49a281, %struct.Memory** %MEMORY
  %loadMem_49a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 7
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 15
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %RBP.i429
  %1916 = sub i64 %1915, 56
  %1917 = load i64, i64* %PC.i427
  %1918 = add i64 %1917, 3
  store i64 %1918, i64* %PC.i427
  %1919 = inttoptr i64 %1916 to i32*
  %1920 = load i32, i32* %1919
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RDX.i428, align 8
  store %struct.Memory* %loadMem_49a284, %struct.Memory** %MEMORY
  %loadMem_49a287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 1
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %1928 = bitcast %union.anon* %1927 to %struct.anon.2*
  %AL.i426 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1928, i32 0, i32 0
  %1929 = load i64, i64* %PC.i425
  %1930 = add i64 %1929, 2
  store i64 %1930, i64* %PC.i425
  store i8 0, i8* %AL.i426, align 1
  store %struct.Memory* %loadMem_49a287, %struct.Memory** %MEMORY
  %loadMem1_49a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %PC.i424
  %1935 = add i64 %1934, -295785
  %1936 = load i64, i64* %PC.i424
  %1937 = add i64 %1936, 5
  %1938 = load i64, i64* %PC.i424
  %1939 = add i64 %1938, 5
  store i64 %1939, i64* %PC.i424
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1941 = load i64, i64* %1940, align 8
  %1942 = add i64 %1941, -8
  %1943 = inttoptr i64 %1942 to i64*
  store i64 %1937, i64* %1943
  store i64 %1942, i64* %1940, align 8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1935, i64* %1944, align 8
  store %struct.Memory* %loadMem1_49a289, %struct.Memory** %MEMORY
  %loadMem2_49a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a289 = load i64, i64* %3
  %call2_49a289 = call %struct.Memory* @sub_451f20.mprintf(%struct.State* %0, i64 %loadPC_49a289, %struct.Memory* %loadMem2_49a289)
  store %struct.Memory* %call2_49a289, %struct.Memory** %MEMORY
  %loadMem_49a28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 11
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RDI.i422 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i423
  %1955 = sub i64 %1954, 52
  %1956 = load i64, i64* %PC.i421
  %1957 = add i64 %1956, 3
  store i64 %1957, i64* %PC.i421
  %1958 = inttoptr i64 %1955 to i32*
  %1959 = load i32, i32* %1958
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RDI.i422, align 8
  store %struct.Memory* %loadMem_49a28e, %struct.Memory** %MEMORY
  %loadMem_49a291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 9
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RSI.i419 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 15
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RBP.i420
  %1971 = sub i64 %1970, 56
  %1972 = load i64, i64* %PC.i418
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC.i418
  %1974 = inttoptr i64 %1971 to i32*
  %1975 = load i32, i32* %1974
  %1976 = zext i32 %1975 to i64
  store i64 %1976, i64* %RSI.i419, align 8
  store %struct.Memory* %loadMem_49a291, %struct.Memory** %MEMORY
  %loadMem1_49a294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i417
  %1981 = add i64 %1980, -441716
  %1982 = load i64, i64* %PC.i417
  %1983 = add i64 %1982, 5
  %1984 = load i64, i64* %PC.i417
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i417
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1987 = load i64, i64* %1986, align 8
  %1988 = add i64 %1987, -8
  %1989 = inttoptr i64 %1988 to i64*
  store i64 %1983, i64* %1989
  store i64 %1988, i64* %1986, align 8
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1981, i64* %1990, align 8
  store %struct.Memory* %loadMem1_49a294, %struct.Memory** %MEMORY
  %loadMem2_49a294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a294 = load i64, i64* %3
  %call2_49a294 = call %struct.Memory* @sub_42e520.gnugo_is_pass(%struct.State* %0, i64 %loadPC_49a294, %struct.Memory* %loadMem2_49a294)
  store %struct.Memory* %call2_49a294, %struct.Memory** %MEMORY
  %loadMem_49a299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %EAX.i416 = bitcast %union.anon* %1996 to i32*
  %1997 = load i32, i32* %EAX.i416
  %1998 = zext i32 %1997 to i64
  %1999 = load i64, i64* %PC.i415
  %2000 = add i64 %1999, 3
  store i64 %2000, i64* %PC.i415
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2001, align 1
  %2002 = and i32 %1997, 255
  %2003 = call i32 @llvm.ctpop.i32(i32 %2002)
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  %2006 = xor i8 %2005, 1
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2006, i8* %2007, align 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2008, align 1
  %2009 = icmp eq i32 %1997, 0
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2010, i8* %2011, align 1
  %2012 = lshr i32 %1997, 31
  %2013 = trunc i32 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2013, i8* %2014, align 1
  %2015 = lshr i32 %1997, 31
  %2016 = xor i32 %2012, %2015
  %2017 = add i32 %2016, %2015
  %2018 = icmp eq i32 %2017, 2
  %2019 = zext i1 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2019, i8* %2020, align 1
  store %struct.Memory* %loadMem_49a299, %struct.Memory** %MEMORY
  %loadMem_49a29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %PC.i414
  %2025 = add i64 %2024, 59
  %2026 = load i64, i64* %PC.i414
  %2027 = add i64 %2026, 6
  %2028 = load i64, i64* %PC.i414
  %2029 = add i64 %2028, 6
  store i64 %2029, i64* %PC.i414
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2031 = load i8, i8* %2030, align 1
  %2032 = icmp eq i8 %2031, 0
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %BRANCH_TAKEN, align 1
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2035 = select i1 %2032, i64 %2025, i64 %2027
  store i64 %2035, i64* %2034, align 8
  store %struct.Memory* %loadMem_49a29c, %struct.Memory** %MEMORY
  %loadBr_49a29c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a29c = icmp eq i8 %loadBr_49a29c, 1
  br i1 %cmpBr_49a29c, label %block_.L_49a2d7, label %block_49a2a2

block_49a2a2:                                     ; preds = %block_.L_49a257
  %loadMem_49a2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 33
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 11
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %RDI.i413 = bitcast %union.anon* %2041 to i64*
  %2042 = load i64, i64* %PC.i412
  %2043 = add i64 %2042, 10
  store i64 %2043, i64* %PC.i412
  store i64 ptrtoint (%G__0x587ab2_type* @G__0x587ab2 to i64), i64* %RDI.i413, align 8
  store %struct.Memory* %loadMem_49a2a2, %struct.Memory** %MEMORY
  %loadMem_49a2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 33
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 1
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %PC.i410
  %2051 = add i64 %2050, 10
  store i64 %2051, i64* %PC.i410
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_49a2ac, %struct.Memory** %MEMORY
  %loadMem_49a2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 33
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 5
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 15
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %RBP.i409
  %2062 = sub i64 %2061, 52
  %2063 = load i64, i64* %PC.i407
  %2064 = add i64 %2063, 4
  store i64 %2064, i64* %PC.i407
  %2065 = inttoptr i64 %2062 to i32*
  %2066 = load i32, i32* %2065
  %2067 = sext i32 %2066 to i64
  store i64 %2067, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_49a2b6, %struct.Memory** %MEMORY
  %loadMem_49a2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 5
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %RCX.i406
  %2075 = load i64, i64* %PC.i405
  %2076 = add i64 %2075, 4
  store i64 %2076, i64* %PC.i405
  %2077 = sext i64 %2074 to i128
  %2078 = and i128 %2077, -18446744073709551616
  %2079 = zext i64 %2074 to i128
  %2080 = or i128 %2078, %2079
  %2081 = mul i128 76, %2080
  %2082 = trunc i128 %2081 to i64
  store i64 %2082, i64* %RCX.i406, align 8
  %2083 = sext i64 %2082 to i128
  %2084 = icmp ne i128 %2083, %2081
  %2085 = zext i1 %2084 to i8
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2085, i8* %2086, align 1
  %2087 = trunc i128 %2081 to i32
  %2088 = and i32 %2087, 255
  %2089 = call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2092, i8* %2093, align 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2094, align 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2095, align 1
  %2096 = lshr i64 %2082, 63
  %2097 = trunc i64 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2097, i8* %2098, align 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2085, i8* %2099, align 1
  store %struct.Memory* %loadMem_49a2ba, %struct.Memory** %MEMORY
  %loadMem_49a2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 1
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 5
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %RAX.i403
  %2110 = load i64, i64* %RCX.i404
  %2111 = load i64, i64* %PC.i402
  %2112 = add i64 %2111, 3
  store i64 %2112, i64* %PC.i402
  %2113 = add i64 %2110, %2109
  store i64 %2113, i64* %RAX.i403, align 8
  %2114 = icmp ult i64 %2113, %2109
  %2115 = icmp ult i64 %2113, %2110
  %2116 = or i1 %2114, %2115
  %2117 = zext i1 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2117, i8* %2118, align 1
  %2119 = trunc i64 %2113 to i32
  %2120 = and i32 %2119, 255
  %2121 = call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2124, i8* %2125, align 1
  %2126 = xor i64 %2110, %2109
  %2127 = xor i64 %2126, %2113
  %2128 = lshr i64 %2127, 4
  %2129 = trunc i64 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2130, i8* %2131, align 1
  %2132 = icmp eq i64 %2113, 0
  %2133 = zext i1 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2133, i8* %2134, align 1
  %2135 = lshr i64 %2113, 63
  %2136 = trunc i64 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2136, i8* %2137, align 1
  %2138 = lshr i64 %2109, 63
  %2139 = lshr i64 %2110, 63
  %2140 = xor i64 %2135, %2138
  %2141 = xor i64 %2135, %2139
  %2142 = add i64 %2140, %2141
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2144, i8* %2145, align 1
  store %struct.Memory* %loadMem_49a2be, %struct.Memory** %MEMORY
  %loadMem_49a2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 5
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 15
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RBP.i401
  %2156 = sub i64 %2155, 56
  %2157 = load i64, i64* %PC.i399
  %2158 = add i64 %2157, 4
  store i64 %2158, i64* %PC.i399
  %2159 = inttoptr i64 %2156 to i32*
  %2160 = load i32, i32* %2159
  %2161 = sext i32 %2160 to i64
  store i64 %2161, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_49a2c1, %struct.Memory** %MEMORY
  %loadMem_49a2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2171, i64 0, i64 0
  %YMM0.i398 = bitcast %union.VectorReg* %2172 to %"class.std::bitset"*
  %2173 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %2174 = load i64, i64* %RAX.i396
  %2175 = load i64, i64* %RCX.i397
  %2176 = mul i64 %2175, 4
  %2177 = add i64 %2176, %2174
  %2178 = load i64, i64* %PC.i395
  %2179 = add i64 %2178, 5
  store i64 %2179, i64* %PC.i395
  %2180 = inttoptr i64 %2177 to float*
  %2181 = load float, float* %2180
  %2182 = fpext float %2181 to double
  %2183 = bitcast i8* %2173 to double*
  store double %2182, double* %2183, align 1
  store %struct.Memory* %loadMem_49a2c5, %struct.Memory** %MEMORY
  %loadMem_49a2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 1
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %2190 = bitcast %union.anon* %2189 to %struct.anon.2*
  %AL.i394 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2190, i32 0, i32 0
  %2191 = load i64, i64* %PC.i393
  %2192 = add i64 %2191, 2
  store i64 %2192, i64* %PC.i393
  store i8 1, i8* %AL.i394, align 1
  store %struct.Memory* %loadMem_49a2ca, %struct.Memory** %MEMORY
  %loadMem1_49a2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2195 to i64*
  %2196 = load i64, i64* %PC.i392
  %2197 = add i64 %2196, -627340
  %2198 = load i64, i64* %PC.i392
  %2199 = add i64 %2198, 5
  %2200 = load i64, i64* %PC.i392
  %2201 = add i64 %2200, 5
  store i64 %2201, i64* %PC.i392
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2203 = load i64, i64* %2202, align 8
  %2204 = add i64 %2203, -8
  %2205 = inttoptr i64 %2204 to i64*
  store i64 %2199, i64* %2205
  store i64 %2204, i64* %2202, align 8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2197, i64* %2206, align 8
  store %struct.Memory* %loadMem1_49a2cc, %struct.Memory** %MEMORY
  %loadMem2_49a2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a2cc = load i64, i64* %3
  %2207 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_49a2cc)
  store %struct.Memory* %2207, %struct.Memory** %MEMORY
  %loadMem_49a2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 33
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 1
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %EAX.i388 = bitcast %union.anon* %2213 to i32*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 15
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %2216 to i64*
  %2217 = load i64, i64* %RBP.i389
  %2218 = sub i64 %2217, 228
  %2219 = load i32, i32* %EAX.i388
  %2220 = zext i32 %2219 to i64
  %2221 = load i64, i64* %PC.i387
  %2222 = add i64 %2221, 6
  store i64 %2222, i64* %PC.i387
  %2223 = inttoptr i64 %2218 to i32*
  store i32 %2219, i32* %2223
  store %struct.Memory* %loadMem_49a2d1, %struct.Memory** %MEMORY
  br label %block_.L_49a2d7

block_.L_49a2d7:                                  ; preds = %block_49a2a2, %block_.L_49a257
  %loadMem_49a2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 33
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2226 to i64*
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 11
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %RDI.i386 = bitcast %union.anon* %2229 to i64*
  %2230 = load i64, i64* %PC.i385
  %2231 = add i64 %2230, 10
  store i64 %2231, i64* %PC.i385
  store i64 ptrtoint (%G__0x587aba_type* @G__0x587aba to i64), i64* %RDI.i386, align 8
  store %struct.Memory* %loadMem_49a2d7, %struct.Memory** %MEMORY
  %loadMem_49a2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 9
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RSI.i383 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 15
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %RBP.i384
  %2242 = sub i64 %2241, 44
  %2243 = load i64, i64* %PC.i382
  %2244 = add i64 %2243, 3
  store i64 %2244, i64* %PC.i382
  %2245 = inttoptr i64 %2242 to i32*
  %2246 = load i32, i32* %2245
  %2247 = zext i32 %2246 to i64
  store i64 %2247, i64* %RSI.i383, align 8
  store %struct.Memory* %loadMem_49a2e1, %struct.Memory** %MEMORY
  %loadMem_49a2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 7
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 15
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %RBP.i381
  %2258 = sub i64 %2257, 48
  %2259 = load i64, i64* %PC.i379
  %2260 = add i64 %2259, 3
  store i64 %2260, i64* %PC.i379
  %2261 = inttoptr i64 %2258 to i32*
  %2262 = load i32, i32* %2261
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %RDX.i380, align 8
  store %struct.Memory* %loadMem_49a2e4, %struct.Memory** %MEMORY
  %loadMem_49a2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %2270 = bitcast %union.anon* %2269 to %struct.anon.2*
  %AL.i378 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2270, i32 0, i32 0
  %2271 = load i64, i64* %PC.i377
  %2272 = add i64 %2271, 2
  store i64 %2272, i64* %PC.i377
  store i8 0, i8* %AL.i378, align 1
  store %struct.Memory* %loadMem_49a2e7, %struct.Memory** %MEMORY
  %loadMem1_49a2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %PC.i376
  %2277 = add i64 %2276, -295881
  %2278 = load i64, i64* %PC.i376
  %2279 = add i64 %2278, 5
  %2280 = load i64, i64* %PC.i376
  %2281 = add i64 %2280, 5
  store i64 %2281, i64* %PC.i376
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2283 = load i64, i64* %2282, align 8
  %2284 = add i64 %2283, -8
  %2285 = inttoptr i64 %2284 to i64*
  store i64 %2279, i64* %2285
  store i64 %2284, i64* %2282, align 8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2277, i64* %2286, align 8
  store %struct.Memory* %loadMem1_49a2e9, %struct.Memory** %MEMORY
  %loadMem2_49a2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a2e9 = load i64, i64* %3
  %call2_49a2e9 = call %struct.Memory* @sub_451f20.mprintf(%struct.State* %0, i64 %loadPC_49a2e9, %struct.Memory* %loadMem2_49a2e9)
  store %struct.Memory* %call2_49a2e9, %struct.Memory** %MEMORY
  %loadMem_49a2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 11
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RDI.i374 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 15
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RBP.i375
  %2297 = sub i64 %2296, 44
  %2298 = load i64, i64* %PC.i373
  %2299 = add i64 %2298, 3
  store i64 %2299, i64* %PC.i373
  %2300 = inttoptr i64 %2297 to i32*
  %2301 = load i32, i32* %2300
  %2302 = zext i32 %2301 to i64
  store i64 %2302, i64* %RDI.i374, align 8
  store %struct.Memory* %loadMem_49a2ee, %struct.Memory** %MEMORY
  %loadMem_49a2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 9
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RSI.i371 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 15
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %2311 to i64*
  %2312 = load i64, i64* %RBP.i372
  %2313 = sub i64 %2312, 48
  %2314 = load i64, i64* %PC.i370
  %2315 = add i64 %2314, 3
  store i64 %2315, i64* %PC.i370
  %2316 = inttoptr i64 %2313 to i32*
  %2317 = load i32, i32* %2316
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RSI.i371, align 8
  store %struct.Memory* %loadMem_49a2f1, %struct.Memory** %MEMORY
  %loadMem1_49a2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2321 to i64*
  %2322 = load i64, i64* %PC.i369
  %2323 = add i64 %2322, -441812
  %2324 = load i64, i64* %PC.i369
  %2325 = add i64 %2324, 5
  %2326 = load i64, i64* %PC.i369
  %2327 = add i64 %2326, 5
  store i64 %2327, i64* %PC.i369
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2329 = load i64, i64* %2328, align 8
  %2330 = add i64 %2329, -8
  %2331 = inttoptr i64 %2330 to i64*
  store i64 %2325, i64* %2331
  store i64 %2330, i64* %2328, align 8
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2323, i64* %2332, align 8
  store %struct.Memory* %loadMem1_49a2f4, %struct.Memory** %MEMORY
  %loadMem2_49a2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a2f4 = load i64, i64* %3
  %call2_49a2f4 = call %struct.Memory* @sub_42e520.gnugo_is_pass(%struct.State* %0, i64 %loadPC_49a2f4, %struct.Memory* %loadMem2_49a2f4)
  store %struct.Memory* %call2_49a2f4, %struct.Memory** %MEMORY
  %loadMem_49a2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %2338 to i32*
  %2339 = load i32, i32* %EAX.i368
  %2340 = zext i32 %2339 to i64
  %2341 = load i64, i64* %PC.i367
  %2342 = add i64 %2341, 3
  store i64 %2342, i64* %PC.i367
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2343, align 1
  %2344 = and i32 %2339, 255
  %2345 = call i32 @llvm.ctpop.i32(i32 %2344)
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2348, i8* %2349, align 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2350, align 1
  %2351 = icmp eq i32 %2339, 0
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2339, 31
  %2355 = trunc i32 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2355, i8* %2356, align 1
  %2357 = lshr i32 %2339, 31
  %2358 = xor i32 %2354, %2357
  %2359 = add i32 %2358, %2357
  %2360 = icmp eq i32 %2359, 2
  %2361 = zext i1 %2360 to i8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2361, i8* %2362, align 1
  store %struct.Memory* %loadMem_49a2f9, %struct.Memory** %MEMORY
  %loadMem_49a2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i366
  %2367 = add i64 %2366, 102
  %2368 = load i64, i64* %PC.i366
  %2369 = add i64 %2368, 6
  %2370 = load i64, i64* %PC.i366
  %2371 = add i64 %2370, 6
  store i64 %2371, i64* %PC.i366
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2373 = load i8, i8* %2372, align 1
  %2374 = icmp eq i8 %2373, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %BRANCH_TAKEN, align 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2377 = select i1 %2374, i64 %2367, i64 %2369
  store i64 %2377, i64* %2376, align 8
  store %struct.Memory* %loadMem_49a2fc, %struct.Memory** %MEMORY
  %loadBr_49a2fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a2fc = icmp eq i8 %loadBr_49a2fc, 1
  br i1 %cmpBr_49a2fc, label %block_.L_49a362, label %block_49a302

block_49a302:                                     ; preds = %block_.L_49a2d7
  %loadMem_49a302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2381, i64 0, i64 0
  %YMM0.i364 = bitcast %union.VectorReg* %2382 to %"class.std::bitset"*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2383, i64 0, i64 0
  %XMM0.i365 = bitcast %union.VectorReg* %2384 to %union.vec128_t*
  %2385 = bitcast %"class.std::bitset"* %YMM0.i364 to i8*
  %2386 = bitcast %"class.std::bitset"* %YMM0.i364 to i8*
  %2387 = bitcast %union.vec128_t* %XMM0.i365 to i8*
  %2388 = load i64, i64* %PC.i363
  %2389 = add i64 %2388, 3
  store i64 %2389, i64* %PC.i363
  %2390 = bitcast i8* %2386 to i64*
  %2391 = load i64, i64* %2390, align 1
  %2392 = getelementptr inbounds i8, i8* %2386, i64 8
  %2393 = bitcast i8* %2392 to i64*
  %2394 = load i64, i64* %2393, align 1
  %2395 = bitcast i8* %2387 to i64*
  %2396 = load i64, i64* %2395, align 1
  %2397 = getelementptr inbounds i8, i8* %2387, i64 8
  %2398 = bitcast i8* %2397 to i64*
  %2399 = load i64, i64* %2398, align 1
  %2400 = xor i64 %2396, %2391
  %2401 = xor i64 %2399, %2394
  %2402 = trunc i64 %2400 to i32
  %2403 = lshr i64 %2400, 32
  %2404 = trunc i64 %2403 to i32
  %2405 = bitcast i8* %2385 to i32*
  store i32 %2402, i32* %2405, align 1
  %2406 = getelementptr inbounds i8, i8* %2385, i64 4
  %2407 = bitcast i8* %2406 to i32*
  store i32 %2404, i32* %2407, align 1
  %2408 = trunc i64 %2401 to i32
  %2409 = getelementptr inbounds i8, i8* %2385, i64 8
  %2410 = bitcast i8* %2409 to i32*
  store i32 %2408, i32* %2410, align 1
  %2411 = lshr i64 %2401, 32
  %2412 = trunc i64 %2411 to i32
  %2413 = getelementptr inbounds i8, i8* %2385, i64 12
  %2414 = bitcast i8* %2413 to i32*
  store i32 %2412, i32* %2414, align 1
  store %struct.Memory* %loadMem_49a302, %struct.Memory** %MEMORY
  %loadMem_49a305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 1
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %PC.i361
  %2422 = add i64 %2421, 10
  store i64 %2422, i64* %PC.i361
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_49a305, %struct.Memory** %MEMORY
  %loadMem_49a30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 5
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 15
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RBP.i360
  %2433 = sub i64 %2432, 44
  %2434 = load i64, i64* %PC.i358
  %2435 = add i64 %2434, 4
  store i64 %2435, i64* %PC.i358
  %2436 = inttoptr i64 %2433 to i32*
  %2437 = load i32, i32* %2436
  %2438 = sext i32 %2437 to i64
  store i64 %2438, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_49a30f, %struct.Memory** %MEMORY
  %loadMem_49a313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 5
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %2444 to i64*
  %2445 = load i64, i64* %RCX.i357
  %2446 = load i64, i64* %PC.i356
  %2447 = add i64 %2446, 4
  store i64 %2447, i64* %PC.i356
  %2448 = sext i64 %2445 to i128
  %2449 = and i128 %2448, -18446744073709551616
  %2450 = zext i64 %2445 to i128
  %2451 = or i128 %2449, %2450
  %2452 = mul i128 76, %2451
  %2453 = trunc i128 %2452 to i64
  store i64 %2453, i64* %RCX.i357, align 8
  %2454 = sext i64 %2453 to i128
  %2455 = icmp ne i128 %2454, %2452
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2456, i8* %2457, align 1
  %2458 = trunc i128 %2452 to i32
  %2459 = and i32 %2458, 255
  %2460 = call i32 @llvm.ctpop.i32(i32 %2459)
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = xor i8 %2462, 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2463, i8* %2464, align 1
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2465, align 1
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2466, align 1
  %2467 = lshr i64 %2453, 63
  %2468 = trunc i64 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2468, i8* %2469, align 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2456, i8* %2470, align 1
  store %struct.Memory* %loadMem_49a313, %struct.Memory** %MEMORY
  %loadMem_49a317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 1
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 5
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %RAX.i354
  %2481 = load i64, i64* %RCX.i355
  %2482 = load i64, i64* %PC.i353
  %2483 = add i64 %2482, 3
  store i64 %2483, i64* %PC.i353
  %2484 = add i64 %2481, %2480
  store i64 %2484, i64* %RAX.i354, align 8
  %2485 = icmp ult i64 %2484, %2480
  %2486 = icmp ult i64 %2484, %2481
  %2487 = or i1 %2485, %2486
  %2488 = zext i1 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2488, i8* %2489, align 1
  %2490 = trunc i64 %2484 to i32
  %2491 = and i32 %2490, 255
  %2492 = call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2495, i8* %2496, align 1
  %2497 = xor i64 %2481, %2480
  %2498 = xor i64 %2497, %2484
  %2499 = lshr i64 %2498, 4
  %2500 = trunc i64 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2501, i8* %2502, align 1
  %2503 = icmp eq i64 %2484, 0
  %2504 = zext i1 %2503 to i8
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2504, i8* %2505, align 1
  %2506 = lshr i64 %2484, 63
  %2507 = trunc i64 %2506 to i8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2507, i8* %2508, align 1
  %2509 = lshr i64 %2480, 63
  %2510 = lshr i64 %2481, 63
  %2511 = xor i64 %2506, %2509
  %2512 = xor i64 %2506, %2510
  %2513 = add i64 %2511, %2512
  %2514 = icmp eq i64 %2513, 2
  %2515 = zext i1 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2515, i8* %2516, align 1
  store %struct.Memory* %loadMem_49a317, %struct.Memory** %MEMORY
  %loadMem_49a31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 5
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 15
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %2525 to i64*
  %2526 = load i64, i64* %RBP.i352
  %2527 = sub i64 %2526, 48
  %2528 = load i64, i64* %PC.i350
  %2529 = add i64 %2528, 4
  store i64 %2529, i64* %PC.i350
  %2530 = inttoptr i64 %2527 to i32*
  %2531 = load i32, i32* %2530
  %2532 = sext i32 %2531 to i64
  store i64 %2532, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_49a31a, %struct.Memory** %MEMORY
  %loadMem_49a31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 1
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 5
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2543 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2542, i64 0, i64 1
  %YMM1.i349 = bitcast %union.VectorReg* %2543 to %"class.std::bitset"*
  %2544 = bitcast %"class.std::bitset"* %YMM1.i349 to i8*
  %2545 = load i64, i64* %RAX.i347
  %2546 = load i64, i64* %RCX.i348
  %2547 = mul i64 %2546, 4
  %2548 = add i64 %2547, %2545
  %2549 = load i64, i64* %PC.i346
  %2550 = add i64 %2549, 5
  store i64 %2550, i64* %PC.i346
  %2551 = inttoptr i64 %2548 to float*
  %2552 = load float, float* %2551
  %2553 = fpext float %2552 to double
  %2554 = bitcast i8* %2544 to double*
  store double %2553, double* %2554, align 1
  store %struct.Memory* %loadMem_49a31e, %struct.Memory** %MEMORY
  %loadMem_49a323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 33
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2557 to i64*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2558, i64 0, i64 0
  %XMM0.i341 = bitcast %union.VectorReg* %2559 to %union.vec128_t*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2560, i64 0, i64 1
  %XMM1.i342 = bitcast %union.VectorReg* %2561 to %union.vec128_t*
  %2562 = bitcast %union.vec128_t* %XMM1.i342 to i8*
  %2563 = bitcast %union.vec128_t* %XMM0.i341 to i8*
  %2564 = load i64, i64* %PC.i340
  %2565 = add i64 %2564, 4
  store i64 %2565, i64* %PC.i340
  %2566 = bitcast i8* %2562 to double*
  %2567 = load double, double* %2566, align 1
  %2568 = bitcast i8* %2563 to double*
  %2569 = load double, double* %2568, align 1
  %2570 = fcmp uno double %2567, %2569
  br i1 %2570, label %2571, label %2583

; <label>:2571:                                   ; preds = %block_49a302
  %2572 = fadd double %2567, %2569
  %2573 = bitcast double %2572 to i64
  %2574 = and i64 %2573, 9221120237041090560
  %2575 = icmp eq i64 %2574, 9218868437227405312
  %2576 = and i64 %2573, 2251799813685247
  %2577 = icmp ne i64 %2576, 0
  %2578 = and i1 %2575, %2577
  br i1 %2578, label %2579, label %2589

; <label>:2579:                                   ; preds = %2571
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2581 = load i64, i64* %2580, align 8
  %2582 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2581, %struct.Memory* %loadMem_49a323)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2583:                                   ; preds = %block_49a302
  %2584 = fcmp ogt double %2567, %2569
  br i1 %2584, label %2589, label %2585

; <label>:2585:                                   ; preds = %2583
  %2586 = fcmp olt double %2567, %2569
  br i1 %2586, label %2589, label %2587

; <label>:2587:                                   ; preds = %2585
  %2588 = fcmp oeq double %2567, %2569
  br i1 %2588, label %2589, label %2596

; <label>:2589:                                   ; preds = %2587, %2585, %2583, %2571
  %2590 = phi i8 [ 0, %2583 ], [ 0, %2585 ], [ 1, %2587 ], [ 1, %2571 ]
  %2591 = phi i8 [ 0, %2583 ], [ 0, %2585 ], [ 0, %2587 ], [ 1, %2571 ]
  %2592 = phi i8 [ 0, %2583 ], [ 1, %2585 ], [ 0, %2587 ], [ 1, %2571 ]
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2590, i8* %2593, align 1
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2591, i8* %2594, align 1
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2592, i8* %2595, align 1
  br label %2596

; <label>:2596:                                   ; preds = %2589, %2587
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2597, align 1
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2598, align 1
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2599, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2579, %2596
  %2600 = phi %struct.Memory* [ %2582, %2579 ], [ %loadMem_49a323, %2596 ]
  store %struct.Memory* %2600, %struct.Memory** %MEMORY
  %loadMem_49a327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %PC.i339
  %2605 = add i64 %2604, 59
  %2606 = load i64, i64* %PC.i339
  %2607 = add i64 %2606, 6
  %2608 = load i64, i64* %PC.i339
  %2609 = add i64 %2608, 6
  store i64 %2609, i64* %PC.i339
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2611 = load i8, i8* %2610, align 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2613 = load i8, i8* %2612, align 1
  %2614 = or i8 %2613, %2611
  %2615 = icmp ne i8 %2614, 0
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %BRANCH_TAKEN, align 1
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2618 = select i1 %2615, i64 %2605, i64 %2607
  store i64 %2618, i64* %2617, align 8
  store %struct.Memory* %loadMem_49a327, %struct.Memory** %MEMORY
  %loadBr_49a327 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a327 = icmp eq i8 %loadBr_49a327, 1
  br i1 %cmpBr_49a327, label %block_.L_49a362, label %block_49a32d

block_49a32d:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_49a32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 11
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %PC.i337
  %2626 = add i64 %2625, 10
  store i64 %2626, i64* %PC.i337
  store i64 ptrtoint (%G__0x587ab2_type* @G__0x587ab2 to i64), i64* %RDI.i338, align 8
  store %struct.Memory* %loadMem_49a32d, %struct.Memory** %MEMORY
  %loadMem_49a337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 1
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2632 to i64*
  %2633 = load i64, i64* %PC.i335
  %2634 = add i64 %2633, 10
  store i64 %2634, i64* %PC.i335
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_49a337, %struct.Memory** %MEMORY
  %loadMem_49a341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 5
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 15
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %RBP.i334
  %2645 = sub i64 %2644, 44
  %2646 = load i64, i64* %PC.i332
  %2647 = add i64 %2646, 4
  store i64 %2647, i64* %PC.i332
  %2648 = inttoptr i64 %2645 to i32*
  %2649 = load i32, i32* %2648
  %2650 = sext i32 %2649 to i64
  store i64 %2650, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_49a341, %struct.Memory** %MEMORY
  %loadMem_49a345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 5
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RCX.i331
  %2658 = load i64, i64* %PC.i330
  %2659 = add i64 %2658, 4
  store i64 %2659, i64* %PC.i330
  %2660 = sext i64 %2657 to i128
  %2661 = and i128 %2660, -18446744073709551616
  %2662 = zext i64 %2657 to i128
  %2663 = or i128 %2661, %2662
  %2664 = mul i128 76, %2663
  %2665 = trunc i128 %2664 to i64
  store i64 %2665, i64* %RCX.i331, align 8
  %2666 = sext i64 %2665 to i128
  %2667 = icmp ne i128 %2666, %2664
  %2668 = zext i1 %2667 to i8
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2668, i8* %2669, align 1
  %2670 = trunc i128 %2664 to i32
  %2671 = and i32 %2670, 255
  %2672 = call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2675, i8* %2676, align 1
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2677, align 1
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2678, align 1
  %2679 = lshr i64 %2665, 63
  %2680 = trunc i64 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2680, i8* %2681, align 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2668, i8* %2682, align 1
  store %struct.Memory* %loadMem_49a345, %struct.Memory** %MEMORY
  %loadMem_49a349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 1
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 5
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %RAX.i328
  %2693 = load i64, i64* %RCX.i329
  %2694 = load i64, i64* %PC.i327
  %2695 = add i64 %2694, 3
  store i64 %2695, i64* %PC.i327
  %2696 = add i64 %2693, %2692
  store i64 %2696, i64* %RAX.i328, align 8
  %2697 = icmp ult i64 %2696, %2692
  %2698 = icmp ult i64 %2696, %2693
  %2699 = or i1 %2697, %2698
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2700, i8* %2701, align 1
  %2702 = trunc i64 %2696 to i32
  %2703 = and i32 %2702, 255
  %2704 = call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2707, i8* %2708, align 1
  %2709 = xor i64 %2693, %2692
  %2710 = xor i64 %2709, %2696
  %2711 = lshr i64 %2710, 4
  %2712 = trunc i64 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2713, i8* %2714, align 1
  %2715 = icmp eq i64 %2696, 0
  %2716 = zext i1 %2715 to i8
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2716, i8* %2717, align 1
  %2718 = lshr i64 %2696, 63
  %2719 = trunc i64 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2719, i8* %2720, align 1
  %2721 = lshr i64 %2692, 63
  %2722 = lshr i64 %2693, 63
  %2723 = xor i64 %2718, %2721
  %2724 = xor i64 %2718, %2722
  %2725 = add i64 %2723, %2724
  %2726 = icmp eq i64 %2725, 2
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2727, i8* %2728, align 1
  store %struct.Memory* %loadMem_49a349, %struct.Memory** %MEMORY
  %loadMem_49a34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 5
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 15
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %RBP.i326
  %2739 = sub i64 %2738, 48
  %2740 = load i64, i64* %PC.i324
  %2741 = add i64 %2740, 4
  store i64 %2741, i64* %PC.i324
  %2742 = inttoptr i64 %2739 to i32*
  %2743 = load i32, i32* %2742
  %2744 = sext i32 %2743 to i64
  store i64 %2744, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_49a34c, %struct.Memory** %MEMORY
  %loadMem_49a350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 1
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 5
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2754, i64 0, i64 0
  %YMM0.i323 = bitcast %union.VectorReg* %2755 to %"class.std::bitset"*
  %2756 = bitcast %"class.std::bitset"* %YMM0.i323 to i8*
  %2757 = load i64, i64* %RAX.i321
  %2758 = load i64, i64* %RCX.i322
  %2759 = mul i64 %2758, 4
  %2760 = add i64 %2759, %2757
  %2761 = load i64, i64* %PC.i320
  %2762 = add i64 %2761, 5
  store i64 %2762, i64* %PC.i320
  %2763 = inttoptr i64 %2760 to float*
  %2764 = load float, float* %2763
  %2765 = fpext float %2764 to double
  %2766 = bitcast i8* %2756 to double*
  store double %2765, double* %2766, align 1
  store %struct.Memory* %loadMem_49a350, %struct.Memory** %MEMORY
  %loadMem_49a355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 1
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %2773 = bitcast %union.anon* %2772 to %struct.anon.2*
  %AL.i319 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2773, i32 0, i32 0
  %2774 = load i64, i64* %PC.i318
  %2775 = add i64 %2774, 2
  store i64 %2775, i64* %PC.i318
  store i8 1, i8* %AL.i319, align 1
  store %struct.Memory* %loadMem_49a355, %struct.Memory** %MEMORY
  %loadMem1_49a357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i317
  %2780 = add i64 %2779, -627479
  %2781 = load i64, i64* %PC.i317
  %2782 = add i64 %2781, 5
  %2783 = load i64, i64* %PC.i317
  %2784 = add i64 %2783, 5
  store i64 %2784, i64* %PC.i317
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2786 = load i64, i64* %2785, align 8
  %2787 = add i64 %2786, -8
  %2788 = inttoptr i64 %2787 to i64*
  store i64 %2782, i64* %2788
  store i64 %2787, i64* %2785, align 8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2780, i64* %2789, align 8
  store %struct.Memory* %loadMem1_49a357, %struct.Memory** %MEMORY
  %loadMem2_49a357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a357 = load i64, i64* %3
  %2790 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_49a357)
  store %struct.Memory* %2790, %struct.Memory** %MEMORY
  %loadMem_49a35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 33
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 1
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %EAX.i312 = bitcast %union.anon* %2796 to i32*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RBP.i313
  %2801 = sub i64 %2800, 232
  %2802 = load i32, i32* %EAX.i312
  %2803 = zext i32 %2802 to i64
  %2804 = load i64, i64* %PC.i311
  %2805 = add i64 %2804, 6
  store i64 %2805, i64* %PC.i311
  %2806 = inttoptr i64 %2801 to i32*
  store i32 %2802, i32* %2806
  store %struct.Memory* %loadMem_49a35c, %struct.Memory** %MEMORY
  br label %block_.L_49a362

block_.L_49a362:                                  ; preds = %block_49a32d, %routine_ucomisd__xmm0___xmm1.exit, %block_.L_49a2d7
  %loadMem_49a362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 11
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RDI.i310 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %PC.i309
  %2814 = add i64 %2813, 10
  store i64 %2814, i64* %PC.i309
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i310, align 8
  store %struct.Memory* %loadMem_49a362, %struct.Memory** %MEMORY
  %loadMem_49a36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 1
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %2821 = bitcast %union.anon* %2820 to %struct.anon.2*
  %AL.i308 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2821, i32 0, i32 0
  %2822 = load i64, i64* %PC.i307
  %2823 = add i64 %2822, 2
  store i64 %2823, i64* %PC.i307
  store i8 0, i8* %AL.i308, align 1
  store %struct.Memory* %loadMem_49a36c, %struct.Memory** %MEMORY
  %loadMem1_49a36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %PC.i306
  %2828 = add i64 %2827, -627502
  %2829 = load i64, i64* %PC.i306
  %2830 = add i64 %2829, 5
  %2831 = load i64, i64* %PC.i306
  %2832 = add i64 %2831, 5
  store i64 %2832, i64* %PC.i306
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2834 = load i64, i64* %2833, align 8
  %2835 = add i64 %2834, -8
  %2836 = inttoptr i64 %2835 to i64*
  store i64 %2830, i64* %2836
  store i64 %2835, i64* %2833, align 8
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2828, i64* %2837, align 8
  store %struct.Memory* %loadMem1_49a36e, %struct.Memory** %MEMORY
  %loadMem2_49a36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a36e = load i64, i64* %3
  %2838 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_49a36e)
  store %struct.Memory* %2838, %struct.Memory** %MEMORY
  %loadMem_49a373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 1
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %2844 to i32*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 15
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RBP.i303
  %2849 = sub i64 %2848, 236
  %2850 = load i32, i32* %EAX.i302
  %2851 = zext i32 %2850 to i64
  %2852 = load i64, i64* %PC.i301
  %2853 = add i64 %2852, 6
  store i64 %2853, i64* %PC.i301
  %2854 = inttoptr i64 %2849 to i32*
  store i32 %2850, i32* %2854
  store %struct.Memory* %loadMem_49a373, %struct.Memory** %MEMORY
  br label %block_.L_49a379

block_.L_49a379:                                  ; preds = %block_.L_49a362, %block_49a249
  %loadMem_49a379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 1
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 15
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RBP.i300
  %2865 = sub i64 %2864, 52
  %2866 = load i64, i64* %PC.i298
  %2867 = add i64 %2866, 3
  store i64 %2867, i64* %PC.i298
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_49a379, %struct.Memory** %MEMORY
  %loadMem_49a37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %2876 to i32*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 15
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2879 to i64*
  %2880 = load i32, i32* %EAX.i296
  %2881 = zext i32 %2880 to i64
  %2882 = load i64, i64* %RBP.i297
  %2883 = sub i64 %2882, 44
  %2884 = load i64, i64* %PC.i295
  %2885 = add i64 %2884, 3
  store i64 %2885, i64* %PC.i295
  %2886 = inttoptr i64 %2883 to i32*
  %2887 = load i32, i32* %2886
  %2888 = sub i32 %2880, %2887
  %2889 = icmp ult i32 %2880, %2887
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2890, i8* %2891, align 1
  %2892 = and i32 %2888, 255
  %2893 = call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2896, i8* %2897, align 1
  %2898 = xor i32 %2887, %2880
  %2899 = xor i32 %2898, %2888
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2902, i8* %2903, align 1
  %2904 = icmp eq i32 %2888, 0
  %2905 = zext i1 %2904 to i8
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2905, i8* %2906, align 1
  %2907 = lshr i32 %2888, 31
  %2908 = trunc i32 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2908, i8* %2909, align 1
  %2910 = lshr i32 %2880, 31
  %2911 = lshr i32 %2887, 31
  %2912 = xor i32 %2911, %2910
  %2913 = xor i32 %2907, %2910
  %2914 = add i32 %2913, %2912
  %2915 = icmp eq i32 %2914, 2
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2916, i8* %2917, align 1
  store %struct.Memory* %loadMem_49a37c, %struct.Memory** %MEMORY
  %loadMem_49a37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %PC.i294
  %2922 = add i64 %2921, 18
  %2923 = load i64, i64* %PC.i294
  %2924 = add i64 %2923, 6
  %2925 = load i64, i64* %PC.i294
  %2926 = add i64 %2925, 6
  store i64 %2926, i64* %PC.i294
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2928 = load i8, i8* %2927, align 1
  %2929 = icmp eq i8 %2928, 0
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %BRANCH_TAKEN, align 1
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2932 = select i1 %2929, i64 %2922, i64 %2924
  store i64 %2932, i64* %2931, align 8
  store %struct.Memory* %loadMem_49a37f, %struct.Memory** %MEMORY
  %loadBr_49a37f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a37f = icmp eq i8 %loadBr_49a37f, 1
  br i1 %cmpBr_49a37f, label %block_.L_49a391, label %block_49a385

block_49a385:                                     ; preds = %block_.L_49a379
  %loadMem_49a385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 1
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 15
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2941 to i64*
  %2942 = load i64, i64* %RBP.i293
  %2943 = sub i64 %2942, 56
  %2944 = load i64, i64* %PC.i291
  %2945 = add i64 %2944, 3
  store i64 %2945, i64* %PC.i291
  %2946 = inttoptr i64 %2943 to i32*
  %2947 = load i32, i32* %2946
  %2948 = zext i32 %2947 to i64
  store i64 %2948, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_49a385, %struct.Memory** %MEMORY
  %loadMem_49a388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 33
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 1
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %2954 to i32*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 15
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %2957 to i64*
  %2958 = load i32, i32* %EAX.i289
  %2959 = zext i32 %2958 to i64
  %2960 = load i64, i64* %RBP.i290
  %2961 = sub i64 %2960, 48
  %2962 = load i64, i64* %PC.i288
  %2963 = add i64 %2962, 3
  store i64 %2963, i64* %PC.i288
  %2964 = inttoptr i64 %2961 to i32*
  %2965 = load i32, i32* %2964
  %2966 = sub i32 %2958, %2965
  %2967 = icmp ult i32 %2958, %2965
  %2968 = zext i1 %2967 to i8
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2968, i8* %2969, align 1
  %2970 = and i32 %2966, 255
  %2971 = call i32 @llvm.ctpop.i32(i32 %2970)
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2974, i8* %2975, align 1
  %2976 = xor i32 %2965, %2958
  %2977 = xor i32 %2976, %2966
  %2978 = lshr i32 %2977, 4
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2980, i8* %2981, align 1
  %2982 = icmp eq i32 %2966, 0
  %2983 = zext i1 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2983, i8* %2984, align 1
  %2985 = lshr i32 %2966, 31
  %2986 = trunc i32 %2985 to i8
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2986, i8* %2987, align 1
  %2988 = lshr i32 %2958, 31
  %2989 = lshr i32 %2965, 31
  %2990 = xor i32 %2989, %2988
  %2991 = xor i32 %2985, %2988
  %2992 = add i32 %2991, %2990
  %2993 = icmp eq i32 %2992, 2
  %2994 = zext i1 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2994, i8* %2995, align 1
  store %struct.Memory* %loadMem_49a388, %struct.Memory** %MEMORY
  %loadMem_49a38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %PC.i287
  %3000 = add i64 %2999, 371
  %3001 = load i64, i64* %PC.i287
  %3002 = add i64 %3001, 6
  %3003 = load i64, i64* %PC.i287
  %3004 = add i64 %3003, 6
  store i64 %3004, i64* %PC.i287
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3006 = load i8, i8* %3005, align 1
  store i8 %3006, i8* %BRANCH_TAKEN, align 1
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3008 = icmp ne i8 %3006, 0
  %3009 = select i1 %3008, i64 %3000, i64 %3002
  store i64 %3009, i64* %3007, align 8
  store %struct.Memory* %loadMem_49a38b, %struct.Memory** %MEMORY
  %loadBr_49a38b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a38b = icmp eq i8 %loadBr_49a38b, 1
  br i1 %cmpBr_49a38b, label %block_.L_49a4fe, label %block_.L_49a391

block_.L_49a391:                                  ; preds = %block_49a385, %block_.L_49a379
  %loadMem_49a391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 11
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 15
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %RBP.i286
  %3020 = sub i64 %3019, 192
  %3021 = load i64, i64* %PC.i284
  %3022 = add i64 %3021, 7
  store i64 %3022, i64* %PC.i284
  store i64 %3020, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_49a391, %struct.Memory** %MEMORY
  %loadMem_49a398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 1
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 15
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3031 to i64*
  %3032 = load i64, i64* %RBP.i283
  %3033 = sub i64 %3032, 52
  %3034 = load i64, i64* %PC.i281
  %3035 = add i64 %3034, 4
  store i64 %3035, i64* %PC.i281
  %3036 = inttoptr i64 %3033 to i32*
  %3037 = load i32, i32* %3036
  %3038 = sext i32 %3037 to i64
  %3039 = mul i64 %3038, 20
  %3040 = trunc i64 %3039 to i32
  %3041 = and i64 %3039, 4294967295
  store i64 %3041, i64* %RAX.i282, align 8
  %3042 = shl i64 %3039, 32
  %3043 = ashr exact i64 %3042, 32
  %3044 = icmp ne i64 %3043, %3039
  %3045 = zext i1 %3044 to i8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3045, i8* %3046, align 1
  %3047 = and i32 %3040, 255
  %3048 = call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3051, i8* %3052, align 1
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3053, align 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3054, align 1
  %3055 = lshr i32 %3040, 31
  %3056 = trunc i32 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3056, i8* %3057, align 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3045, i8* %3058, align 1
  store %struct.Memory* %loadMem_49a398, %struct.Memory** %MEMORY
  %loadMem_49a39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 33
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 1
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %3064 to i64*
  %3065 = load i64, i64* %RAX.i280
  %3066 = load i64, i64* %PC.i279
  %3067 = add i64 %3066, 3
  store i64 %3067, i64* %PC.i279
  %3068 = trunc i64 %3065 to i32
  %3069 = add i32 21, %3068
  %3070 = zext i32 %3069 to i64
  store i64 %3070, i64* %RAX.i280, align 8
  %3071 = icmp ult i32 %3069, %3068
  %3072 = icmp ult i32 %3069, 21
  %3073 = or i1 %3071, %3072
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3074, i8* %3075, align 1
  %3076 = and i32 %3069, 255
  %3077 = call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3080, i8* %3081, align 1
  %3082 = xor i64 21, %3065
  %3083 = trunc i64 %3082 to i32
  %3084 = xor i32 %3083, %3069
  %3085 = lshr i32 %3084, 4
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3087, i8* %3088, align 1
  %3089 = icmp eq i32 %3069, 0
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3090, i8* %3091, align 1
  %3092 = lshr i32 %3069, 31
  %3093 = trunc i32 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3093, i8* %3094, align 1
  %3095 = lshr i32 %3068, 31
  %3096 = xor i32 %3092, %3095
  %3097 = add i32 %3096, %3092
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3099, i8* %3100, align 1
  store %struct.Memory* %loadMem_49a39c, %struct.Memory** %MEMORY
  %loadMem_49a39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 1
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 15
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RAX.i277
  %3111 = load i64, i64* %RBP.i278
  %3112 = sub i64 %3111, 56
  %3113 = load i64, i64* %PC.i276
  %3114 = add i64 %3113, 3
  store i64 %3114, i64* %PC.i276
  %3115 = trunc i64 %3110 to i32
  %3116 = inttoptr i64 %3112 to i32*
  %3117 = load i32, i32* %3116
  %3118 = add i32 %3117, %3115
  %3119 = zext i32 %3118 to i64
  store i64 %3119, i64* %RAX.i277, align 8
  %3120 = icmp ult i32 %3118, %3115
  %3121 = icmp ult i32 %3118, %3117
  %3122 = or i1 %3120, %3121
  %3123 = zext i1 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3123, i8* %3124, align 1
  %3125 = and i32 %3118, 255
  %3126 = call i32 @llvm.ctpop.i32(i32 %3125)
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = xor i8 %3128, 1
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3129, i8* %3130, align 1
  %3131 = xor i32 %3117, %3115
  %3132 = xor i32 %3131, %3118
  %3133 = lshr i32 %3132, 4
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3135, i8* %3136, align 1
  %3137 = icmp eq i32 %3118, 0
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3138, i8* %3139, align 1
  %3140 = lshr i32 %3118, 31
  %3141 = trunc i32 %3140 to i8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3141, i8* %3142, align 1
  %3143 = lshr i32 %3115, 31
  %3144 = lshr i32 %3117, 31
  %3145 = xor i32 %3140, %3143
  %3146 = xor i32 %3140, %3144
  %3147 = add i32 %3145, %3146
  %3148 = icmp eq i32 %3147, 2
  %3149 = zext i1 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3149, i8* %3150, align 1
  store %struct.Memory* %loadMem_49a39f, %struct.Memory** %MEMORY
  %loadMem_49a3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 11
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RDI.i274 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 15
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %RBP.i275
  %3161 = sub i64 %3160, 248
  %3162 = load i64, i64* %RDI.i274
  %3163 = load i64, i64* %PC.i273
  %3164 = add i64 %3163, 7
  store i64 %3164, i64* %PC.i273
  %3165 = inttoptr i64 %3161 to i64*
  store i64 %3162, i64* %3165
  store %struct.Memory* %loadMem_49a3a2, %struct.Memory** %MEMORY
  %loadMem_49a3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 1
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %3171 to i32*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 11
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RDI.i272 = bitcast %union.anon* %3174 to i64*
  %3175 = load i32, i32* %EAX.i271
  %3176 = zext i32 %3175 to i64
  %3177 = load i64, i64* %PC.i270
  %3178 = add i64 %3177, 2
  store i64 %3178, i64* %PC.i270
  %3179 = and i64 %3176, 4294967295
  store i64 %3179, i64* %RDI.i272, align 8
  store %struct.Memory* %loadMem_49a3a9, %struct.Memory** %MEMORY
  %loadMem1_49a3ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %PC.i269
  %3184 = add i64 %3183, -295387
  %3185 = load i64, i64* %PC.i269
  %3186 = add i64 %3185, 5
  %3187 = load i64, i64* %PC.i269
  %3188 = add i64 %3187, 5
  store i64 %3188, i64* %PC.i269
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3190 = load i64, i64* %3189, align 8
  %3191 = add i64 %3190, -8
  %3192 = inttoptr i64 %3191 to i64*
  store i64 %3186, i64* %3192
  store i64 %3191, i64* %3189, align 8
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3184, i64* %3193, align 8
  store %struct.Memory* %loadMem1_49a3ab, %struct.Memory** %MEMORY
  %loadMem2_49a3ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a3ab = load i64, i64* %3
  %call2_49a3ab = call %struct.Memory* @sub_4521d0.location_to_string(%struct.State* %0, i64 %loadPC_49a3ab, %struct.Memory* %loadMem2_49a3ab)
  store %struct.Memory* %call2_49a3ab, %struct.Memory** %MEMORY
  %loadMem_49a3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 11
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RDI.i267 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 15
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RBP.i268
  %3204 = sub i64 %3203, 52
  %3205 = load i64, i64* %PC.i266
  %3206 = add i64 %3205, 3
  store i64 %3206, i64* %PC.i266
  %3207 = inttoptr i64 %3204 to i32*
  %3208 = load i32, i32* %3207
  %3209 = zext i32 %3208 to i64
  store i64 %3209, i64* %RDI.i267, align 8
  store %struct.Memory* %loadMem_49a3b0, %struct.Memory** %MEMORY
  %loadMem_49a3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 9
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 15
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %RBP.i265
  %3220 = sub i64 %3219, 56
  %3221 = load i64, i64* %PC.i263
  %3222 = add i64 %3221, 3
  store i64 %3222, i64* %PC.i263
  %3223 = inttoptr i64 %3220 to i32*
  %3224 = load i32, i32* %3223
  %3225 = zext i32 %3224 to i64
  store i64 %3225, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_49a3b3, %struct.Memory** %MEMORY
  %loadMem_49a3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 1
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RBP.i262
  %3236 = sub i64 %3235, 256
  %3237 = load i64, i64* %RAX.i261
  %3238 = load i64, i64* %PC.i260
  %3239 = add i64 %3238, 7
  store i64 %3239, i64* %PC.i260
  %3240 = inttoptr i64 %3236 to i64*
  store i64 %3237, i64* %3240
  store %struct.Memory* %loadMem_49a3b6, %struct.Memory** %MEMORY
  %loadMem1_49a3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3243 to i64*
  %3244 = load i64, i64* %PC.i259
  %3245 = add i64 %3244, -442013
  %3246 = load i64, i64* %PC.i259
  %3247 = add i64 %3246, 5
  %3248 = load i64, i64* %PC.i259
  %3249 = add i64 %3248, 5
  store i64 %3249, i64* %PC.i259
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3251 = load i64, i64* %3250, align 8
  %3252 = add i64 %3251, -8
  %3253 = inttoptr i64 %3252 to i64*
  store i64 %3247, i64* %3253
  store i64 %3252, i64* %3250, align 8
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3245, i64* %3254, align 8
  store %struct.Memory* %loadMem1_49a3bd, %struct.Memory** %MEMORY
  %loadMem2_49a3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a3bd = load i64, i64* %3
  %call2_49a3bd = call %struct.Memory* @sub_42e520.gnugo_is_pass(%struct.State* %0, i64 %loadPC_49a3bd, %struct.Memory* %loadMem2_49a3bd)
  store %struct.Memory* %call2_49a3bd, %struct.Memory** %MEMORY
  %loadMem_49a3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 1
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %3260 to i32*
  %3261 = load i32, i32* %EAX.i258
  %3262 = zext i32 %3261 to i64
  %3263 = load i64, i64* %PC.i257
  %3264 = add i64 %3263, 3
  store i64 %3264, i64* %PC.i257
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3265, align 1
  %3266 = and i32 %3261, 255
  %3267 = call i32 @llvm.ctpop.i32(i32 %3266)
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  %3270 = xor i8 %3269, 1
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3270, i8* %3271, align 1
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3272, align 1
  %3273 = icmp eq i32 %3261, 0
  %3274 = zext i1 %3273 to i8
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3274, i8* %3275, align 1
  %3276 = lshr i32 %3261, 31
  %3277 = trunc i32 %3276 to i8
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3277, i8* %3278, align 1
  %3279 = lshr i32 %3261, 31
  %3280 = xor i32 %3276, %3279
  %3281 = add i32 %3280, %3279
  %3282 = icmp eq i32 %3281, 2
  %3283 = zext i1 %3282 to i8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3283, i8* %3284, align 1
  store %struct.Memory* %loadMem_49a3c2, %struct.Memory** %MEMORY
  %loadMem_49a3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %PC.i256
  %3289 = add i64 %3288, 22
  %3290 = load i64, i64* %PC.i256
  %3291 = add i64 %3290, 6
  %3292 = load i64, i64* %PC.i256
  %3293 = add i64 %3292, 6
  store i64 %3293, i64* %PC.i256
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3295 = load i8, i8* %3294, align 1
  store i8 %3295, i8* %BRANCH_TAKEN, align 1
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3297 = icmp ne i8 %3295, 0
  %3298 = select i1 %3297, i64 %3289, i64 %3291
  store i64 %3298, i64* %3296, align 8
  store %struct.Memory* %loadMem_49a3c5, %struct.Memory** %MEMORY
  %loadBr_49a3c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a3c5 = icmp eq i8 %loadBr_49a3c5, 1
  br i1 %cmpBr_49a3c5, label %block_.L_49a3db, label %block_49a3cb

block_49a3cb:                                     ; preds = %block_.L_49a391
  %loadMem_49a3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3302, i64 0, i64 0
  %YMM0.i254 = bitcast %union.VectorReg* %3303 to %"class.std::bitset"*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3304, i64 0, i64 0
  %XMM0.i255 = bitcast %union.VectorReg* %3305 to %union.vec128_t*
  %3306 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %3307 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %3308 = bitcast %union.vec128_t* %XMM0.i255 to i8*
  %3309 = load i64, i64* %PC.i253
  %3310 = add i64 %3309, 3
  store i64 %3310, i64* %PC.i253
  %3311 = bitcast i8* %3307 to i64*
  %3312 = load i64, i64* %3311, align 1
  %3313 = getelementptr inbounds i8, i8* %3307, i64 8
  %3314 = bitcast i8* %3313 to i64*
  %3315 = load i64, i64* %3314, align 1
  %3316 = bitcast i8* %3308 to i64*
  %3317 = load i64, i64* %3316, align 1
  %3318 = getelementptr inbounds i8, i8* %3308, i64 8
  %3319 = bitcast i8* %3318 to i64*
  %3320 = load i64, i64* %3319, align 1
  %3321 = xor i64 %3317, %3312
  %3322 = xor i64 %3320, %3315
  %3323 = trunc i64 %3321 to i32
  %3324 = lshr i64 %3321, 32
  %3325 = trunc i64 %3324 to i32
  %3326 = bitcast i8* %3306 to i32*
  store i32 %3323, i32* %3326, align 1
  %3327 = getelementptr inbounds i8, i8* %3306, i64 4
  %3328 = bitcast i8* %3327 to i32*
  store i32 %3325, i32* %3328, align 1
  %3329 = trunc i64 %3322 to i32
  %3330 = getelementptr inbounds i8, i8* %3306, i64 8
  %3331 = bitcast i8* %3330 to i32*
  store i32 %3329, i32* %3331, align 1
  %3332 = lshr i64 %3322, 32
  %3333 = trunc i64 %3332 to i32
  %3334 = getelementptr inbounds i8, i8* %3306, i64 12
  %3335 = bitcast i8* %3334 to i32*
  store i32 %3333, i32* %3335, align 1
  store %struct.Memory* %loadMem_49a3cb, %struct.Memory** %MEMORY
  %loadMem_49a3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 15
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3342, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %3343 to %union.vec128_t*
  %3344 = load i64, i64* %RBP.i251
  %3345 = sub i64 %3344, 260
  %3346 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %3347 = load i64, i64* %PC.i250
  %3348 = add i64 %3347, 8
  store i64 %3348, i64* %PC.i250
  %3349 = bitcast i8* %3346 to <2 x float>*
  %3350 = load <2 x float>, <2 x float>* %3349, align 1
  %3351 = extractelement <2 x float> %3350, i32 0
  %3352 = inttoptr i64 %3345 to float*
  store float %3351, float* %3352
  store %struct.Memory* %loadMem_49a3ce, %struct.Memory** %MEMORY
  %loadMem_49a3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %PC.i249
  %3357 = add i64 %3356, 43
  %3358 = load i64, i64* %PC.i249
  %3359 = add i64 %3358, 5
  store i64 %3359, i64* %PC.i249
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3357, i64* %3360, align 8
  store %struct.Memory* %loadMem_49a3d6, %struct.Memory** %MEMORY
  br label %block_.L_49a401

block_.L_49a3db:                                  ; preds = %block_.L_49a391
  %loadMem_49a3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 1
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %3366 to i64*
  %3367 = load i64, i64* %PC.i247
  %3368 = add i64 %3367, 10
  store i64 %3368, i64* %PC.i247
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_49a3db, %struct.Memory** %MEMORY
  %loadMem_49a3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 5
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 15
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %RBP.i246
  %3379 = sub i64 %3378, 52
  %3380 = load i64, i64* %PC.i244
  %3381 = add i64 %3380, 4
  store i64 %3381, i64* %PC.i244
  %3382 = inttoptr i64 %3379 to i32*
  %3383 = load i32, i32* %3382
  %3384 = sext i32 %3383 to i64
  store i64 %3384, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_49a3e5, %struct.Memory** %MEMORY
  %loadMem_49a3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 5
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RCX.i243
  %3392 = load i64, i64* %PC.i242
  %3393 = add i64 %3392, 4
  store i64 %3393, i64* %PC.i242
  %3394 = sext i64 %3391 to i128
  %3395 = and i128 %3394, -18446744073709551616
  %3396 = zext i64 %3391 to i128
  %3397 = or i128 %3395, %3396
  %3398 = mul i128 76, %3397
  %3399 = trunc i128 %3398 to i64
  store i64 %3399, i64* %RCX.i243, align 8
  %3400 = sext i64 %3399 to i128
  %3401 = icmp ne i128 %3400, %3398
  %3402 = zext i1 %3401 to i8
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3402, i8* %3403, align 1
  %3404 = trunc i128 %3398 to i32
  %3405 = and i32 %3404, 255
  %3406 = call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3409, i8* %3410, align 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3411, align 1
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3412, align 1
  %3413 = lshr i64 %3399, 63
  %3414 = trunc i64 %3413 to i8
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3414, i8* %3415, align 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3402, i8* %3416, align 1
  store %struct.Memory* %loadMem_49a3e9, %struct.Memory** %MEMORY
  %loadMem_49a3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 5
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RAX.i240
  %3427 = load i64, i64* %RCX.i241
  %3428 = load i64, i64* %PC.i239
  %3429 = add i64 %3428, 3
  store i64 %3429, i64* %PC.i239
  %3430 = add i64 %3427, %3426
  store i64 %3430, i64* %RAX.i240, align 8
  %3431 = icmp ult i64 %3430, %3426
  %3432 = icmp ult i64 %3430, %3427
  %3433 = or i1 %3431, %3432
  %3434 = zext i1 %3433 to i8
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3434, i8* %3435, align 1
  %3436 = trunc i64 %3430 to i32
  %3437 = and i32 %3436, 255
  %3438 = call i32 @llvm.ctpop.i32(i32 %3437)
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  %3441 = xor i8 %3440, 1
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3441, i8* %3442, align 1
  %3443 = xor i64 %3427, %3426
  %3444 = xor i64 %3443, %3430
  %3445 = lshr i64 %3444, 4
  %3446 = trunc i64 %3445 to i8
  %3447 = and i8 %3446, 1
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3447, i8* %3448, align 1
  %3449 = icmp eq i64 %3430, 0
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i64 %3430, 63
  %3453 = trunc i64 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3453, i8* %3454, align 1
  %3455 = lshr i64 %3426, 63
  %3456 = lshr i64 %3427, 63
  %3457 = xor i64 %3452, %3455
  %3458 = xor i64 %3452, %3456
  %3459 = add i64 %3457, %3458
  %3460 = icmp eq i64 %3459, 2
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3461, i8* %3462, align 1
  store %struct.Memory* %loadMem_49a3ed, %struct.Memory** %MEMORY
  %loadMem_49a3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 5
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 15
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RBP.i238
  %3473 = sub i64 %3472, 56
  %3474 = load i64, i64* %PC.i236
  %3475 = add i64 %3474, 4
  store i64 %3475, i64* %PC.i236
  %3476 = inttoptr i64 %3473 to i32*
  %3477 = load i32, i32* %3476
  %3478 = sext i32 %3477 to i64
  store i64 %3478, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_49a3f0, %struct.Memory** %MEMORY
  %loadMem_49a3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 1
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3488, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %3489 to %"class.std::bitset"*
  %3490 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %3491 = load i64, i64* %RAX.i233
  %3492 = load i64, i64* %RCX.i234
  %3493 = mul i64 %3492, 4
  %3494 = add i64 %3493, %3491
  %3495 = load i64, i64* %PC.i232
  %3496 = add i64 %3495, 5
  store i64 %3496, i64* %PC.i232
  %3497 = inttoptr i64 %3494 to float*
  %3498 = load float, float* %3497
  %3499 = bitcast i8* %3490 to float*
  store float %3498, float* %3499, align 1
  %3500 = getelementptr inbounds i8, i8* %3490, i64 4
  %3501 = bitcast i8* %3500 to float*
  store float 0.000000e+00, float* %3501, align 1
  %3502 = getelementptr inbounds i8, i8* %3490, i64 8
  %3503 = bitcast i8* %3502 to float*
  store float 0.000000e+00, float* %3503, align 1
  %3504 = getelementptr inbounds i8, i8* %3490, i64 12
  %3505 = bitcast i8* %3504 to float*
  store float 0.000000e+00, float* %3505, align 1
  store %struct.Memory* %loadMem_49a3f4, %struct.Memory** %MEMORY
  %loadMem_49a3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 15
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3512, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %3513 to %union.vec128_t*
  %3514 = load i64, i64* %RBP.i230
  %3515 = sub i64 %3514, 260
  %3516 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %3517 = load i64, i64* %PC.i229
  %3518 = add i64 %3517, 8
  store i64 %3518, i64* %PC.i229
  %3519 = bitcast i8* %3516 to <2 x float>*
  %3520 = load <2 x float>, <2 x float>* %3519, align 1
  %3521 = extractelement <2 x float> %3520, i32 0
  %3522 = inttoptr i64 %3515 to float*
  store float %3521, float* %3522
  store %struct.Memory* %loadMem_49a3f9, %struct.Memory** %MEMORY
  br label %block_.L_49a401

block_.L_49a401:                                  ; preds = %block_.L_49a3db, %block_49a3cb
  %loadMem_49a401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 15
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3529, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %3530 to %"class.std::bitset"*
  %3531 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %3532 = load i64, i64* %RBP.i227
  %3533 = sub i64 %3532, 260
  %3534 = load i64, i64* %PC.i226
  %3535 = add i64 %3534, 8
  store i64 %3535, i64* %PC.i226
  %3536 = inttoptr i64 %3533 to float*
  %3537 = load float, float* %3536
  %3538 = bitcast i8* %3531 to float*
  store float %3537, float* %3538, align 1
  %3539 = getelementptr inbounds i8, i8* %3531, i64 4
  %3540 = bitcast i8* %3539 to float*
  store float 0.000000e+00, float* %3540, align 1
  %3541 = getelementptr inbounds i8, i8* %3531, i64 8
  %3542 = bitcast i8* %3541 to float*
  store float 0.000000e+00, float* %3542, align 1
  %3543 = getelementptr inbounds i8, i8* %3531, i64 12
  %3544 = bitcast i8* %3543 to float*
  store float 0.000000e+00, float* %3544, align 1
  store %struct.Memory* %loadMem_49a401, %struct.Memory** %MEMORY
  %loadMem_49a409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 33
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3547 to i64*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3549 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3548, i64 0, i64 0
  %YMM0.i224 = bitcast %union.VectorReg* %3549 to %"class.std::bitset"*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3550, i64 0, i64 0
  %XMM0.i225 = bitcast %union.VectorReg* %3551 to %union.vec128_t*
  %3552 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %3553 = bitcast %union.vec128_t* %XMM0.i225 to i8*
  %3554 = load i64, i64* %PC.i223
  %3555 = add i64 %3554, 4
  store i64 %3555, i64* %PC.i223
  %3556 = bitcast i8* %3553 to <2 x float>*
  %3557 = load <2 x float>, <2 x float>* %3556, align 1
  %3558 = extractelement <2 x float> %3557, i32 0
  %3559 = fpext float %3558 to double
  %3560 = bitcast i8* %3552 to double*
  store double %3559, double* %3560, align 1
  store %struct.Memory* %loadMem_49a409, %struct.Memory** %MEMORY
  %loadMem_49a40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 33
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 1
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 15
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %RBP.i222
  %3571 = sub i64 %3570, 44
  %3572 = load i64, i64* %PC.i220
  %3573 = add i64 %3572, 4
  store i64 %3573, i64* %PC.i220
  %3574 = inttoptr i64 %3571 to i32*
  %3575 = load i32, i32* %3574
  %3576 = sext i32 %3575 to i64
  %3577 = mul i64 %3576, 20
  %3578 = trunc i64 %3577 to i32
  %3579 = and i64 %3577, 4294967295
  store i64 %3579, i64* %RAX.i221, align 8
  %3580 = shl i64 %3577, 32
  %3581 = ashr exact i64 %3580, 32
  %3582 = icmp ne i64 %3581, %3577
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3583, i8* %3584, align 1
  %3585 = and i32 %3578, 255
  %3586 = call i32 @llvm.ctpop.i32(i32 %3585)
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3589, i8* %3590, align 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3591, align 1
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3592, align 1
  %3593 = lshr i32 %3578, 31
  %3594 = trunc i32 %3593 to i8
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3594, i8* %3595, align 1
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3583, i8* %3596, align 1
  store %struct.Memory* %loadMem_49a40d, %struct.Memory** %MEMORY
  %loadMem_49a411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 1
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RAX.i219
  %3604 = load i64, i64* %PC.i218
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC.i218
  %3606 = trunc i64 %3603 to i32
  %3607 = add i32 21, %3606
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RAX.i219, align 8
  %3609 = icmp ult i32 %3607, %3606
  %3610 = icmp ult i32 %3607, 21
  %3611 = or i1 %3609, %3610
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3612, i8* %3613, align 1
  %3614 = and i32 %3607, 255
  %3615 = call i32 @llvm.ctpop.i32(i32 %3614)
  %3616 = trunc i32 %3615 to i8
  %3617 = and i8 %3616, 1
  %3618 = xor i8 %3617, 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3618, i8* %3619, align 1
  %3620 = xor i64 21, %3603
  %3621 = trunc i64 %3620 to i32
  %3622 = xor i32 %3621, %3607
  %3623 = lshr i32 %3622, 4
  %3624 = trunc i32 %3623 to i8
  %3625 = and i8 %3624, 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3625, i8* %3626, align 1
  %3627 = icmp eq i32 %3607, 0
  %3628 = zext i1 %3627 to i8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3628, i8* %3629, align 1
  %3630 = lshr i32 %3607, 31
  %3631 = trunc i32 %3630 to i8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3631, i8* %3632, align 1
  %3633 = lshr i32 %3606, 31
  %3634 = xor i32 %3630, %3633
  %3635 = add i32 %3634, %3630
  %3636 = icmp eq i32 %3635, 2
  %3637 = zext i1 %3636 to i8
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3637, i8* %3638, align 1
  store %struct.Memory* %loadMem_49a411, %struct.Memory** %MEMORY
  %loadMem_49a414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 33
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3641 to i64*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 1
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 15
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %3647 to i64*
  %3648 = load i64, i64* %RAX.i216
  %3649 = load i64, i64* %RBP.i217
  %3650 = sub i64 %3649, 48
  %3651 = load i64, i64* %PC.i215
  %3652 = add i64 %3651, 3
  store i64 %3652, i64* %PC.i215
  %3653 = trunc i64 %3648 to i32
  %3654 = inttoptr i64 %3650 to i32*
  %3655 = load i32, i32* %3654
  %3656 = add i32 %3655, %3653
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RAX.i216, align 8
  %3658 = icmp ult i32 %3656, %3653
  %3659 = icmp ult i32 %3656, %3655
  %3660 = or i1 %3658, %3659
  %3661 = zext i1 %3660 to i8
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3661, i8* %3662, align 1
  %3663 = and i32 %3656, 255
  %3664 = call i32 @llvm.ctpop.i32(i32 %3663)
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3667, i8* %3668, align 1
  %3669 = xor i32 %3655, %3653
  %3670 = xor i32 %3669, %3656
  %3671 = lshr i32 %3670, 4
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3673, i8* %3674, align 1
  %3675 = icmp eq i32 %3656, 0
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3676, i8* %3677, align 1
  %3678 = lshr i32 %3656, 31
  %3679 = trunc i32 %3678 to i8
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3679, i8* %3680, align 1
  %3681 = lshr i32 %3653, 31
  %3682 = lshr i32 %3655, 31
  %3683 = xor i32 %3678, %3681
  %3684 = xor i32 %3678, %3682
  %3685 = add i32 %3683, %3684
  %3686 = icmp eq i32 %3685, 2
  %3687 = zext i1 %3686 to i8
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3687, i8* %3688, align 1
  store %struct.Memory* %loadMem_49a414, %struct.Memory** %MEMORY
  %loadMem_49a417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 1
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %3694 to i32*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 11
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %RDI.i214 = bitcast %union.anon* %3697 to i64*
  %3698 = load i32, i32* %EAX.i213
  %3699 = zext i32 %3698 to i64
  %3700 = load i64, i64* %PC.i212
  %3701 = add i64 %3700, 2
  store i64 %3701, i64* %PC.i212
  %3702 = and i64 %3699, 4294967295
  store i64 %3702, i64* %RDI.i214, align 8
  store %struct.Memory* %loadMem_49a417, %struct.Memory** %MEMORY
  %loadMem_49a419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3709, i64 0, i64 0
  %XMM0.i211 = bitcast %union.VectorReg* %3710 to %union.vec128_t*
  %3711 = load i64, i64* %RBP.i210
  %3712 = sub i64 %3711, 272
  %3713 = bitcast %union.vec128_t* %XMM0.i211 to i8*
  %3714 = load i64, i64* %PC.i209
  %3715 = add i64 %3714, 8
  store i64 %3715, i64* %PC.i209
  %3716 = bitcast i8* %3713 to double*
  %3717 = load double, double* %3716, align 1
  %3718 = inttoptr i64 %3712 to double*
  store double %3717, double* %3718
  store %struct.Memory* %loadMem_49a419, %struct.Memory** %MEMORY
  %loadMem1_49a421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 33
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %PC.i208
  %3723 = add i64 %3722, -295505
  %3724 = load i64, i64* %PC.i208
  %3725 = add i64 %3724, 5
  %3726 = load i64, i64* %PC.i208
  %3727 = add i64 %3726, 5
  store i64 %3727, i64* %PC.i208
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3729 = load i64, i64* %3728, align 8
  %3730 = add i64 %3729, -8
  %3731 = inttoptr i64 %3730 to i64*
  store i64 %3725, i64* %3731
  store i64 %3730, i64* %3728, align 8
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3723, i64* %3732, align 8
  store %struct.Memory* %loadMem1_49a421, %struct.Memory** %MEMORY
  %loadMem2_49a421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a421 = load i64, i64* %3
  %call2_49a421 = call %struct.Memory* @sub_4521d0.location_to_string(%struct.State* %0, i64 %loadPC_49a421, %struct.Memory* %loadMem2_49a421)
  store %struct.Memory* %call2_49a421, %struct.Memory** %MEMORY
  %loadMem_49a426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 33
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 11
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RDI.i206 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 15
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %3741 to i64*
  %3742 = load i64, i64* %RBP.i207
  %3743 = sub i64 %3742, 44
  %3744 = load i64, i64* %PC.i205
  %3745 = add i64 %3744, 3
  store i64 %3745, i64* %PC.i205
  %3746 = inttoptr i64 %3743 to i32*
  %3747 = load i32, i32* %3746
  %3748 = zext i32 %3747 to i64
  store i64 %3748, i64* %RDI.i206, align 8
  store %struct.Memory* %loadMem_49a426, %struct.Memory** %MEMORY
  %loadMem_49a429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 9
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RSI.i203 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i204
  %3759 = sub i64 %3758, 48
  %3760 = load i64, i64* %PC.i202
  %3761 = add i64 %3760, 3
  store i64 %3761, i64* %PC.i202
  %3762 = inttoptr i64 %3759 to i32*
  %3763 = load i32, i32* %3762
  %3764 = zext i32 %3763 to i64
  store i64 %3764, i64* %RSI.i203, align 8
  store %struct.Memory* %loadMem_49a429, %struct.Memory** %MEMORY
  %loadMem_49a42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 1
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 15
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RBP.i201
  %3775 = sub i64 %3774, 280
  %3776 = load i64, i64* %RAX.i200
  %3777 = load i64, i64* %PC.i199
  %3778 = add i64 %3777, 7
  store i64 %3778, i64* %PC.i199
  %3779 = inttoptr i64 %3775 to i64*
  store i64 %3776, i64* %3779
  store %struct.Memory* %loadMem_49a42c, %struct.Memory** %MEMORY
  %loadMem1_49a433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3782 to i64*
  %3783 = load i64, i64* %PC.i198
  %3784 = add i64 %3783, -442131
  %3785 = load i64, i64* %PC.i198
  %3786 = add i64 %3785, 5
  %3787 = load i64, i64* %PC.i198
  %3788 = add i64 %3787, 5
  store i64 %3788, i64* %PC.i198
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3790 = load i64, i64* %3789, align 8
  %3791 = add i64 %3790, -8
  %3792 = inttoptr i64 %3791 to i64*
  store i64 %3786, i64* %3792
  store i64 %3791, i64* %3789, align 8
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3784, i64* %3793, align 8
  store %struct.Memory* %loadMem1_49a433, %struct.Memory** %MEMORY
  %loadMem2_49a433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a433 = load i64, i64* %3
  %call2_49a433 = call %struct.Memory* @sub_42e520.gnugo_is_pass(%struct.State* %0, i64 %loadPC_49a433, %struct.Memory* %loadMem2_49a433)
  store %struct.Memory* %call2_49a433, %struct.Memory** %MEMORY
  %loadMem_49a438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 33
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3796 to i64*
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 1
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %EAX.i197 = bitcast %union.anon* %3799 to i32*
  %3800 = load i32, i32* %EAX.i197
  %3801 = zext i32 %3800 to i64
  %3802 = load i64, i64* %PC.i196
  %3803 = add i64 %3802, 3
  store i64 %3803, i64* %PC.i196
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3804, align 1
  %3805 = and i32 %3800, 255
  %3806 = call i32 @llvm.ctpop.i32(i32 %3805)
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  %3809 = xor i8 %3808, 1
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3809, i8* %3810, align 1
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3811, align 1
  %3812 = icmp eq i32 %3800, 0
  %3813 = zext i1 %3812 to i8
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3813, i8* %3814, align 1
  %3815 = lshr i32 %3800, 31
  %3816 = trunc i32 %3815 to i8
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3816, i8* %3817, align 1
  %3818 = lshr i32 %3800, 31
  %3819 = xor i32 %3815, %3818
  %3820 = add i32 %3819, %3818
  %3821 = icmp eq i32 %3820, 2
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3822, i8* %3823, align 1
  store %struct.Memory* %loadMem_49a438, %struct.Memory** %MEMORY
  %loadMem_49a43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3826 to i64*
  %3827 = load i64, i64* %PC.i195
  %3828 = add i64 %3827, 65
  %3829 = load i64, i64* %PC.i195
  %3830 = add i64 %3829, 6
  %3831 = load i64, i64* %PC.i195
  %3832 = add i64 %3831, 6
  store i64 %3832, i64* %PC.i195
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3834 = load i8, i8* %3833, align 1
  store i8 %3834, i8* %BRANCH_TAKEN, align 1
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3836 = icmp ne i8 %3834, 0
  %3837 = select i1 %3836, i64 %3828, i64 %3830
  store i64 %3837, i64* %3835, align 8
  store %struct.Memory* %loadMem_49a43b, %struct.Memory** %MEMORY
  %loadBr_49a43b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a43b = icmp eq i8 %loadBr_49a43b, 1
  br i1 %cmpBr_49a43b, label %block_.L_49a47c, label %block_49a441

block_49a441:                                     ; preds = %block_.L_49a401
  %loadMem_49a441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3841, i64 0, i64 0
  %YMM0.i193 = bitcast %union.VectorReg* %3842 to %"class.std::bitset"*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3843, i64 0, i64 0
  %XMM0.i194 = bitcast %union.VectorReg* %3844 to %union.vec128_t*
  %3845 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %3846 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %3847 = bitcast %union.vec128_t* %XMM0.i194 to i8*
  %3848 = load i64, i64* %PC.i192
  %3849 = add i64 %3848, 3
  store i64 %3849, i64* %PC.i192
  %3850 = bitcast i8* %3846 to i64*
  %3851 = load i64, i64* %3850, align 1
  %3852 = getelementptr inbounds i8, i8* %3846, i64 8
  %3853 = bitcast i8* %3852 to i64*
  %3854 = load i64, i64* %3853, align 1
  %3855 = bitcast i8* %3847 to i64*
  %3856 = load i64, i64* %3855, align 1
  %3857 = getelementptr inbounds i8, i8* %3847, i64 8
  %3858 = bitcast i8* %3857 to i64*
  %3859 = load i64, i64* %3858, align 1
  %3860 = xor i64 %3856, %3851
  %3861 = xor i64 %3859, %3854
  %3862 = trunc i64 %3860 to i32
  %3863 = lshr i64 %3860, 32
  %3864 = trunc i64 %3863 to i32
  %3865 = bitcast i8* %3845 to i32*
  store i32 %3862, i32* %3865, align 1
  %3866 = getelementptr inbounds i8, i8* %3845, i64 4
  %3867 = bitcast i8* %3866 to i32*
  store i32 %3864, i32* %3867, align 1
  %3868 = trunc i64 %3861 to i32
  %3869 = getelementptr inbounds i8, i8* %3845, i64 8
  %3870 = bitcast i8* %3869 to i32*
  store i32 %3868, i32* %3870, align 1
  %3871 = lshr i64 %3861, 32
  %3872 = trunc i64 %3871 to i32
  %3873 = getelementptr inbounds i8, i8* %3845, i64 12
  %3874 = bitcast i8* %3873 to i32*
  store i32 %3872, i32* %3874, align 1
  store %struct.Memory* %loadMem_49a441, %struct.Memory** %MEMORY
  %loadMem_49a444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 1
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %PC.i190
  %3882 = add i64 %3881, 10
  store i64 %3882, i64* %PC.i190
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_49a444, %struct.Memory** %MEMORY
  %loadMem_49a44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 5
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 15
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RBP.i189
  %3893 = sub i64 %3892, 44
  %3894 = load i64, i64* %PC.i187
  %3895 = add i64 %3894, 4
  store i64 %3895, i64* %PC.i187
  %3896 = inttoptr i64 %3893 to i32*
  %3897 = load i32, i32* %3896
  %3898 = sext i32 %3897 to i64
  store i64 %3898, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_49a44e, %struct.Memory** %MEMORY
  %loadMem_49a452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 5
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %3904 to i64*
  %3905 = load i64, i64* %RCX.i186
  %3906 = load i64, i64* %PC.i185
  %3907 = add i64 %3906, 4
  store i64 %3907, i64* %PC.i185
  %3908 = sext i64 %3905 to i128
  %3909 = and i128 %3908, -18446744073709551616
  %3910 = zext i64 %3905 to i128
  %3911 = or i128 %3909, %3910
  %3912 = mul i128 76, %3911
  %3913 = trunc i128 %3912 to i64
  store i64 %3913, i64* %RCX.i186, align 8
  %3914 = sext i64 %3913 to i128
  %3915 = icmp ne i128 %3914, %3912
  %3916 = zext i1 %3915 to i8
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3916, i8* %3917, align 1
  %3918 = trunc i128 %3912 to i32
  %3919 = and i32 %3918, 255
  %3920 = call i32 @llvm.ctpop.i32(i32 %3919)
  %3921 = trunc i32 %3920 to i8
  %3922 = and i8 %3921, 1
  %3923 = xor i8 %3922, 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3923, i8* %3924, align 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3925, align 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3926, align 1
  %3927 = lshr i64 %3913, 63
  %3928 = trunc i64 %3927 to i8
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3928, i8* %3929, align 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3916, i8* %3930, align 1
  store %struct.Memory* %loadMem_49a452, %struct.Memory** %MEMORY
  %loadMem_49a456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 1
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 5
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %RAX.i183
  %3941 = load i64, i64* %RCX.i184
  %3942 = load i64, i64* %PC.i182
  %3943 = add i64 %3942, 3
  store i64 %3943, i64* %PC.i182
  %3944 = add i64 %3941, %3940
  store i64 %3944, i64* %RAX.i183, align 8
  %3945 = icmp ult i64 %3944, %3940
  %3946 = icmp ult i64 %3944, %3941
  %3947 = or i1 %3945, %3946
  %3948 = zext i1 %3947 to i8
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3948, i8* %3949, align 1
  %3950 = trunc i64 %3944 to i32
  %3951 = and i32 %3950, 255
  %3952 = call i32 @llvm.ctpop.i32(i32 %3951)
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = xor i8 %3954, 1
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3955, i8* %3956, align 1
  %3957 = xor i64 %3941, %3940
  %3958 = xor i64 %3957, %3944
  %3959 = lshr i64 %3958, 4
  %3960 = trunc i64 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3961, i8* %3962, align 1
  %3963 = icmp eq i64 %3944, 0
  %3964 = zext i1 %3963 to i8
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3964, i8* %3965, align 1
  %3966 = lshr i64 %3944, 63
  %3967 = trunc i64 %3966 to i8
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3967, i8* %3968, align 1
  %3969 = lshr i64 %3940, 63
  %3970 = lshr i64 %3941, 63
  %3971 = xor i64 %3966, %3969
  %3972 = xor i64 %3966, %3970
  %3973 = add i64 %3971, %3972
  %3974 = icmp eq i64 %3973, 2
  %3975 = zext i1 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3975, i8* %3976, align 1
  store %struct.Memory* %loadMem_49a456, %struct.Memory** %MEMORY
  %loadMem_49a459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 5
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 15
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %RBP.i181
  %3987 = sub i64 %3986, 48
  %3988 = load i64, i64* %PC.i179
  %3989 = add i64 %3988, 4
  store i64 %3989, i64* %PC.i179
  %3990 = inttoptr i64 %3987 to i32*
  %3991 = load i32, i32* %3990
  %3992 = sext i32 %3991 to i64
  store i64 %3992, i64* %RCX.i180, align 8
  store %struct.Memory* %loadMem_49a459, %struct.Memory** %MEMORY
  %loadMem_49a45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 1
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 5
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4002, i64 0, i64 1
  %YMM1.i178 = bitcast %union.VectorReg* %4003 to %"class.std::bitset"*
  %4004 = bitcast %"class.std::bitset"* %YMM1.i178 to i8*
  %4005 = load i64, i64* %RAX.i176
  %4006 = load i64, i64* %RCX.i177
  %4007 = mul i64 %4006, 4
  %4008 = add i64 %4007, %4005
  %4009 = load i64, i64* %PC.i175
  %4010 = add i64 %4009, 5
  store i64 %4010, i64* %PC.i175
  %4011 = inttoptr i64 %4008 to float*
  %4012 = load float, float* %4011
  %4013 = fpext float %4012 to double
  %4014 = bitcast i8* %4004 to double*
  store double %4013, double* %4014, align 1
  store %struct.Memory* %loadMem_49a45d, %struct.Memory** %MEMORY
  %loadMem_49a462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4018, i64 0, i64 0
  %XMM0.i171 = bitcast %union.VectorReg* %4019 to %union.vec128_t*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4020, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4021 to %union.vec128_t*
  %4022 = bitcast %union.vec128_t* %XMM0.i171 to i8*
  %4023 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4024 = load i64, i64* %PC.i170
  %4025 = add i64 %4024, 4
  store i64 %4025, i64* %PC.i170
  %4026 = bitcast i8* %4022 to double*
  %4027 = load double, double* %4026, align 1
  %4028 = bitcast i8* %4023 to double*
  %4029 = load double, double* %4028, align 1
  %4030 = fcmp uno double %4027, %4029
  br i1 %4030, label %4031, label %4043

; <label>:4031:                                   ; preds = %block_49a441
  %4032 = fadd double %4027, %4029
  %4033 = bitcast double %4032 to i64
  %4034 = and i64 %4033, 9221120237041090560
  %4035 = icmp eq i64 %4034, 9218868437227405312
  %4036 = and i64 %4033, 2251799813685247
  %4037 = icmp ne i64 %4036, 0
  %4038 = and i1 %4035, %4037
  br i1 %4038, label %4039, label %4049

; <label>:4039:                                   ; preds = %4031
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4041 = load i64, i64* %4040, align 8
  %4042 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4041, %struct.Memory* %loadMem_49a462)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:4043:                                   ; preds = %block_49a441
  %4044 = fcmp ogt double %4027, %4029
  br i1 %4044, label %4049, label %4045

; <label>:4045:                                   ; preds = %4043
  %4046 = fcmp olt double %4027, %4029
  br i1 %4046, label %4049, label %4047

; <label>:4047:                                   ; preds = %4045
  %4048 = fcmp oeq double %4027, %4029
  br i1 %4048, label %4049, label %4056

; <label>:4049:                                   ; preds = %4047, %4045, %4043, %4031
  %4050 = phi i8 [ 0, %4043 ], [ 0, %4045 ], [ 1, %4047 ], [ 1, %4031 ]
  %4051 = phi i8 [ 0, %4043 ], [ 0, %4045 ], [ 0, %4047 ], [ 1, %4031 ]
  %4052 = phi i8 [ 0, %4043 ], [ 1, %4045 ], [ 0, %4047 ], [ 1, %4031 ]
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4050, i8* %4053, align 1
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4051, i8* %4054, align 1
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4052, i8* %4055, align 1
  br label %4056

; <label>:4056:                                   ; preds = %4049, %4047
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4057, align 1
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4058, align 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4059, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %4039, %4056
  %4060 = phi %struct.Memory* [ %4042, %4039 ], [ %loadMem_49a462, %4056 ]
  store %struct.Memory* %4060, %struct.Memory** %MEMORY
  %loadMem_49a466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %PC.i169
  %4065 = add i64 %4064, 22
  %4066 = load i64, i64* %PC.i169
  %4067 = add i64 %4066, 6
  %4068 = load i64, i64* %PC.i169
  %4069 = add i64 %4068, 6
  store i64 %4069, i64* %PC.i169
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4071 = load i8, i8* %4070, align 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4073 = load i8, i8* %4072, align 1
  %4074 = or i8 %4073, %4071
  %4075 = icmp ne i8 %4074, 0
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %BRANCH_TAKEN, align 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4078 = select i1 %4075, i64 %4065, i64 %4067
  store i64 %4078, i64* %4077, align 8
  store %struct.Memory* %loadMem_49a466, %struct.Memory** %MEMORY
  %loadBr_49a466 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a466 = icmp eq i8 %loadBr_49a466, 1
  br i1 %cmpBr_49a466, label %block_.L_49a47c, label %block_49a46c

block_49a46c:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_49a46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4082, i64 0, i64 0
  %YMM0.i167 = bitcast %union.VectorReg* %4083 to %"class.std::bitset"*
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4084, i64 0, i64 0
  %XMM0.i168 = bitcast %union.VectorReg* %4085 to %union.vec128_t*
  %4086 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %4087 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %4088 = bitcast %union.vec128_t* %XMM0.i168 to i8*
  %4089 = load i64, i64* %PC.i166
  %4090 = add i64 %4089, 3
  store i64 %4090, i64* %PC.i166
  %4091 = bitcast i8* %4087 to i64*
  %4092 = load i64, i64* %4091, align 1
  %4093 = getelementptr inbounds i8, i8* %4087, i64 8
  %4094 = bitcast i8* %4093 to i64*
  %4095 = load i64, i64* %4094, align 1
  %4096 = bitcast i8* %4088 to i64*
  %4097 = load i64, i64* %4096, align 1
  %4098 = getelementptr inbounds i8, i8* %4088, i64 8
  %4099 = bitcast i8* %4098 to i64*
  %4100 = load i64, i64* %4099, align 1
  %4101 = xor i64 %4097, %4092
  %4102 = xor i64 %4100, %4095
  %4103 = trunc i64 %4101 to i32
  %4104 = lshr i64 %4101, 32
  %4105 = trunc i64 %4104 to i32
  %4106 = bitcast i8* %4086 to i32*
  store i32 %4103, i32* %4106, align 1
  %4107 = getelementptr inbounds i8, i8* %4086, i64 4
  %4108 = bitcast i8* %4107 to i32*
  store i32 %4105, i32* %4108, align 1
  %4109 = trunc i64 %4102 to i32
  %4110 = getelementptr inbounds i8, i8* %4086, i64 8
  %4111 = bitcast i8* %4110 to i32*
  store i32 %4109, i32* %4111, align 1
  %4112 = lshr i64 %4102, 32
  %4113 = trunc i64 %4112 to i32
  %4114 = getelementptr inbounds i8, i8* %4086, i64 12
  %4115 = bitcast i8* %4114 to i32*
  store i32 %4113, i32* %4115, align 1
  store %struct.Memory* %loadMem_49a46c, %struct.Memory** %MEMORY
  %loadMem_49a46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 15
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4122, i64 0, i64 0
  %XMM0.i165 = bitcast %union.VectorReg* %4123 to %union.vec128_t*
  %4124 = load i64, i64* %RBP.i164
  %4125 = sub i64 %4124, 284
  %4126 = bitcast %union.vec128_t* %XMM0.i165 to i8*
  %4127 = load i64, i64* %PC.i163
  %4128 = add i64 %4127, 8
  store i64 %4128, i64* %PC.i163
  %4129 = bitcast i8* %4126 to <2 x float>*
  %4130 = load <2 x float>, <2 x float>* %4129, align 1
  %4131 = extractelement <2 x float> %4130, i32 0
  %4132 = inttoptr i64 %4125 to float*
  store float %4131, float* %4132
  store %struct.Memory* %loadMem_49a46f, %struct.Memory** %MEMORY
  %loadMem_49a477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4135 to i64*
  %4136 = load i64, i64* %PC.i162
  %4137 = add i64 %4136, 43
  %4138 = load i64, i64* %PC.i162
  %4139 = add i64 %4138, 5
  store i64 %4139, i64* %PC.i162
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4137, i64* %4140, align 8
  store %struct.Memory* %loadMem_49a477, %struct.Memory** %MEMORY
  br label %block_.L_49a4a2

block_.L_49a47c:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit, %block_.L_49a401
  %loadMem_49a47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 1
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %4146 to i64*
  %4147 = load i64, i64* %PC.i160
  %4148 = add i64 %4147, 10
  store i64 %4148, i64* %PC.i160
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_49a47c, %struct.Memory** %MEMORY
  %loadMem_49a486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 5
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 15
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %RBP.i159
  %4159 = sub i64 %4158, 44
  %4160 = load i64, i64* %PC.i157
  %4161 = add i64 %4160, 4
  store i64 %4161, i64* %PC.i157
  %4162 = inttoptr i64 %4159 to i32*
  %4163 = load i32, i32* %4162
  %4164 = sext i32 %4163 to i64
  store i64 %4164, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_49a486, %struct.Memory** %MEMORY
  %loadMem_49a48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 5
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %4170 to i64*
  %4171 = load i64, i64* %RCX.i156
  %4172 = load i64, i64* %PC.i155
  %4173 = add i64 %4172, 4
  store i64 %4173, i64* %PC.i155
  %4174 = sext i64 %4171 to i128
  %4175 = and i128 %4174, -18446744073709551616
  %4176 = zext i64 %4171 to i128
  %4177 = or i128 %4175, %4176
  %4178 = mul i128 76, %4177
  %4179 = trunc i128 %4178 to i64
  store i64 %4179, i64* %RCX.i156, align 8
  %4180 = sext i64 %4179 to i128
  %4181 = icmp ne i128 %4180, %4178
  %4182 = zext i1 %4181 to i8
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4182, i8* %4183, align 1
  %4184 = trunc i128 %4178 to i32
  %4185 = and i32 %4184, 255
  %4186 = call i32 @llvm.ctpop.i32(i32 %4185)
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = xor i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4189, i8* %4190, align 1
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4191, align 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4192, align 1
  %4193 = lshr i64 %4179, 63
  %4194 = trunc i64 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4194, i8* %4195, align 1
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4182, i8* %4196, align 1
  store %struct.Memory* %loadMem_49a48a, %struct.Memory** %MEMORY
  %loadMem_49a48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 33
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 1
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 5
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %4205 to i64*
  %4206 = load i64, i64* %RAX.i153
  %4207 = load i64, i64* %RCX.i154
  %4208 = load i64, i64* %PC.i152
  %4209 = add i64 %4208, 3
  store i64 %4209, i64* %PC.i152
  %4210 = add i64 %4207, %4206
  store i64 %4210, i64* %RAX.i153, align 8
  %4211 = icmp ult i64 %4210, %4206
  %4212 = icmp ult i64 %4210, %4207
  %4213 = or i1 %4211, %4212
  %4214 = zext i1 %4213 to i8
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4214, i8* %4215, align 1
  %4216 = trunc i64 %4210 to i32
  %4217 = and i32 %4216, 255
  %4218 = call i32 @llvm.ctpop.i32(i32 %4217)
  %4219 = trunc i32 %4218 to i8
  %4220 = and i8 %4219, 1
  %4221 = xor i8 %4220, 1
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4221, i8* %4222, align 1
  %4223 = xor i64 %4207, %4206
  %4224 = xor i64 %4223, %4210
  %4225 = lshr i64 %4224, 4
  %4226 = trunc i64 %4225 to i8
  %4227 = and i8 %4226, 1
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4227, i8* %4228, align 1
  %4229 = icmp eq i64 %4210, 0
  %4230 = zext i1 %4229 to i8
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4230, i8* %4231, align 1
  %4232 = lshr i64 %4210, 63
  %4233 = trunc i64 %4232 to i8
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4233, i8* %4234, align 1
  %4235 = lshr i64 %4206, 63
  %4236 = lshr i64 %4207, 63
  %4237 = xor i64 %4232, %4235
  %4238 = xor i64 %4232, %4236
  %4239 = add i64 %4237, %4238
  %4240 = icmp eq i64 %4239, 2
  %4241 = zext i1 %4240 to i8
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4241, i8* %4242, align 1
  store %struct.Memory* %loadMem_49a48e, %struct.Memory** %MEMORY
  %loadMem_49a491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 5
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 15
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %RBP.i151
  %4253 = sub i64 %4252, 48
  %4254 = load i64, i64* %PC.i149
  %4255 = add i64 %4254, 4
  store i64 %4255, i64* %PC.i149
  %4256 = inttoptr i64 %4253 to i32*
  %4257 = load i32, i32* %4256
  %4258 = sext i32 %4257 to i64
  store i64 %4258, i64* %RCX.i150, align 8
  store %struct.Memory* %loadMem_49a491, %struct.Memory** %MEMORY
  %loadMem_49a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 1
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %4264 to i64*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 5
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %4267 to i64*
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4268, i64 0, i64 0
  %YMM0.i148 = bitcast %union.VectorReg* %4269 to %"class.std::bitset"*
  %4270 = bitcast %"class.std::bitset"* %YMM0.i148 to i8*
  %4271 = load i64, i64* %RAX.i146
  %4272 = load i64, i64* %RCX.i147
  %4273 = mul i64 %4272, 4
  %4274 = add i64 %4273, %4271
  %4275 = load i64, i64* %PC.i145
  %4276 = add i64 %4275, 5
  store i64 %4276, i64* %PC.i145
  %4277 = inttoptr i64 %4274 to float*
  %4278 = load float, float* %4277
  %4279 = bitcast i8* %4270 to float*
  store float %4278, float* %4279, align 1
  %4280 = getelementptr inbounds i8, i8* %4270, i64 4
  %4281 = bitcast i8* %4280 to float*
  store float 0.000000e+00, float* %4281, align 1
  %4282 = getelementptr inbounds i8, i8* %4270, i64 8
  %4283 = bitcast i8* %4282 to float*
  store float 0.000000e+00, float* %4283, align 1
  %4284 = getelementptr inbounds i8, i8* %4270, i64 12
  %4285 = bitcast i8* %4284 to float*
  store float 0.000000e+00, float* %4285, align 1
  store %struct.Memory* %loadMem_49a495, %struct.Memory** %MEMORY
  %loadMem_49a49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 15
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4292, i64 0, i64 0
  %XMM0.i144 = bitcast %union.VectorReg* %4293 to %union.vec128_t*
  %4294 = load i64, i64* %RBP.i143
  %4295 = sub i64 %4294, 284
  %4296 = bitcast %union.vec128_t* %XMM0.i144 to i8*
  %4297 = load i64, i64* %PC.i142
  %4298 = add i64 %4297, 8
  store i64 %4298, i64* %PC.i142
  %4299 = bitcast i8* %4296 to <2 x float>*
  %4300 = load <2 x float>, <2 x float>* %4299, align 1
  %4301 = extractelement <2 x float> %4300, i32 0
  %4302 = inttoptr i64 %4295 to float*
  store float %4301, float* %4302
  store %struct.Memory* %loadMem_49a49a, %struct.Memory** %MEMORY
  br label %block_.L_49a4a2

block_.L_49a4a2:                                  ; preds = %block_.L_49a47c, %block_49a46c
  %loadMem_49a4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 33
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 15
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %4308 to i64*
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4309, i64 0, i64 0
  %YMM0.i141 = bitcast %union.VectorReg* %4310 to %"class.std::bitset"*
  %4311 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %4312 = load i64, i64* %RBP.i140
  %4313 = sub i64 %4312, 284
  %4314 = load i64, i64* %PC.i139
  %4315 = add i64 %4314, 8
  store i64 %4315, i64* %PC.i139
  %4316 = inttoptr i64 %4313 to float*
  %4317 = load float, float* %4316
  %4318 = bitcast i8* %4311 to float*
  store float %4317, float* %4318, align 1
  %4319 = getelementptr inbounds i8, i8* %4311, i64 4
  %4320 = bitcast i8* %4319 to float*
  store float 0.000000e+00, float* %4320, align 1
  %4321 = getelementptr inbounds i8, i8* %4311, i64 8
  %4322 = bitcast i8* %4321 to float*
  store float 0.000000e+00, float* %4322, align 1
  %4323 = getelementptr inbounds i8, i8* %4311, i64 12
  %4324 = bitcast i8* %4323 to float*
  store float 0.000000e+00, float* %4324, align 1
  store %struct.Memory* %loadMem_49a4a2, %struct.Memory** %MEMORY
  %loadMem_49a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 1
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %PC.i137
  %4332 = add i64 %4331, 5
  store i64 %4332, i64* %PC.i137
  store i64 127, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_49a4aa, %struct.Memory** %MEMORY
  %loadMem_49a4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 1
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %EAX.i135 = bitcast %union.anon* %4338 to i32*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 9
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %4341 to i64*
  %4342 = load i32, i32* %EAX.i135
  %4343 = zext i32 %4342 to i64
  %4344 = load i64, i64* %PC.i134
  %4345 = add i64 %4344, 2
  store i64 %4345, i64* %PC.i134
  %4346 = and i64 %4343, 4294967295
  store i64 %4346, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_49a4af, %struct.Memory** %MEMORY
  %loadMem_49a4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 33
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 7
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %4352 to i64*
  %4353 = load i64, i64* %PC.i132
  %4354 = add i64 %4353, 10
  store i64 %4354, i64* %PC.i132
  store i64 ptrtoint (%G__0x587aca_type* @G__0x587aca to i64), i64* %RDX.i133, align 8
  store %struct.Memory* %loadMem_49a4b1, %struct.Memory** %MEMORY
  %loadMem_49a4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4358, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4359 to %"class.std::bitset"*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4360, i64 0, i64 0
  %XMM0.i131 = bitcast %union.VectorReg* %4361 to %union.vec128_t*
  %4362 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4363 = bitcast %union.vec128_t* %XMM0.i131 to i8*
  %4364 = load i64, i64* %PC.i130
  %4365 = add i64 %4364, 4
  store i64 %4365, i64* %PC.i130
  %4366 = bitcast i8* %4363 to <2 x float>*
  %4367 = load <2 x float>, <2 x float>* %4366, align 1
  %4368 = extractelement <2 x float> %4367, i32 0
  %4369 = fpext float %4368 to double
  %4370 = bitcast i8* %4362 to double*
  store double %4369, double* %4370, align 1
  store %struct.Memory* %loadMem_49a4bb, %struct.Memory** %MEMORY
  %loadMem_49a4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 11
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RDI.i128 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 15
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4379 to i64*
  %4380 = load i64, i64* %RBP.i129
  %4381 = sub i64 %4380, 248
  %4382 = load i64, i64* %PC.i127
  %4383 = add i64 %4382, 7
  store i64 %4383, i64* %PC.i127
  %4384 = inttoptr i64 %4381 to i64*
  %4385 = load i64, i64* %4384
  store i64 %4385, i64* %RDI.i128, align 8
  store %struct.Memory* %loadMem_49a4bf, %struct.Memory** %MEMORY
  %loadMem_49a4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 33
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 5
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 15
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %4394 to i64*
  %4395 = load i64, i64* %RBP.i126
  %4396 = sub i64 %4395, 256
  %4397 = load i64, i64* %PC.i124
  %4398 = add i64 %4397, 7
  store i64 %4398, i64* %PC.i124
  %4399 = inttoptr i64 %4396 to i64*
  %4400 = load i64, i64* %4399
  store i64 %4400, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_49a4c6, %struct.Memory** %MEMORY
  %loadMem_49a4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 15
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4407, i64 0, i64 0
  %YMM0.i123 = bitcast %union.VectorReg* %4408 to %"class.std::bitset"*
  %4409 = bitcast %"class.std::bitset"* %YMM0.i123 to i8*
  %4410 = load i64, i64* %RBP.i122
  %4411 = sub i64 %4410, 272
  %4412 = load i64, i64* %PC.i121
  %4413 = add i64 %4412, 8
  store i64 %4413, i64* %PC.i121
  %4414 = inttoptr i64 %4411 to double*
  %4415 = load double, double* %4414
  %4416 = bitcast i8* %4409 to double*
  store double %4415, double* %4416, align 1
  %4417 = getelementptr inbounds i8, i8* %4409, i64 8
  %4418 = bitcast i8* %4417 to double*
  store double 0.000000e+00, double* %4418, align 1
  store %struct.Memory* %loadMem_49a4cd, %struct.Memory** %MEMORY
  %loadMem_49a4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 15
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4424 to i64*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 17
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4427 to i64*
  %4428 = load i64, i64* %RBP.i120
  %4429 = sub i64 %4428, 280
  %4430 = load i64, i64* %PC.i119
  %4431 = add i64 %4430, 7
  store i64 %4431, i64* %PC.i119
  %4432 = inttoptr i64 %4429 to i64*
  %4433 = load i64, i64* %4432
  store i64 %4433, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_49a4d5, %struct.Memory** %MEMORY
  %loadMem_49a4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4436 to i64*
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 1
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %4440 = bitcast %union.anon* %4439 to %struct.anon.2*
  %AL.i118 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4440, i32 0, i32 0
  %4441 = load i64, i64* %PC.i117
  %4442 = add i64 %4441, 2
  store i64 %4442, i64* %PC.i117
  store i8 2, i8* %AL.i118, align 1
  store %struct.Memory* %loadMem_49a4dc, %struct.Memory** %MEMORY
  %loadMem1_49a4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 33
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4445 to i64*
  %4446 = load i64, i64* %PC.i116
  %4447 = add i64 %4446, 294946
  %4448 = load i64, i64* %PC.i116
  %4449 = add i64 %4448, 5
  %4450 = load i64, i64* %PC.i116
  %4451 = add i64 %4450, 5
  store i64 %4451, i64* %PC.i116
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4453 = load i64, i64* %4452, align 8
  %4454 = add i64 %4453, -8
  %4455 = inttoptr i64 %4454 to i64*
  store i64 %4449, i64* %4455
  store i64 %4454, i64* %4452, align 8
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4447, i64* %4456, align 8
  store %struct.Memory* %loadMem1_49a4de, %struct.Memory** %MEMORY
  %loadMem2_49a4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a4de = load i64, i64* %3
  %call2_49a4de = call %struct.Memory* @sub_4e2500.gg_snprintf(%struct.State* %0, i64 %loadPC_49a4de, %struct.Memory* %loadMem2_49a4de)
  store %struct.Memory* %call2_49a4de, %struct.Memory** %MEMORY
  %loadMem_49a4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 11
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 15
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RBP.i115
  %4467 = sub i64 %4466, 8
  %4468 = load i64, i64* %PC.i113
  %4469 = add i64 %4468, 4
  store i64 %4469, i64* %PC.i113
  %4470 = inttoptr i64 %4467 to i64*
  %4471 = load i64, i64* %4470
  store i64 %4471, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_49a4e3, %struct.Memory** %MEMORY
  %loadMem_49a4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 9
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 15
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %RBP.i112
  %4482 = sub i64 %4481, 52
  %4483 = load i64, i64* %PC.i110
  %4484 = add i64 %4483, 3
  store i64 %4484, i64* %PC.i110
  %4485 = inttoptr i64 %4482 to i32*
  %4486 = load i32, i32* %4485
  %4487 = zext i32 %4486 to i64
  store i64 %4487, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_49a4e7, %struct.Memory** %MEMORY
  %loadMem_49a4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 33
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 7
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 15
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %4496 to i64*
  %4497 = load i64, i64* %RBP.i109
  %4498 = sub i64 %4497, 56
  %4499 = load i64, i64* %PC.i107
  %4500 = add i64 %4499, 3
  store i64 %4500, i64* %PC.i107
  %4501 = inttoptr i64 %4498 to i32*
  %4502 = load i32, i32* %4501
  %4503 = zext i32 %4502 to i64
  store i64 %4503, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_49a4ea, %struct.Memory** %MEMORY
  %loadMem1_49a4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 33
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4506 to i64*
  %4507 = load i64, i64* %PC.i106
  %4508 = add i64 %4507, -621485
  %4509 = load i64, i64* %PC.i106
  %4510 = add i64 %4509, 5
  %4511 = load i64, i64* %PC.i106
  %4512 = add i64 %4511, 5
  store i64 %4512, i64* %PC.i106
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4514 = load i64, i64* %4513, align 8
  %4515 = add i64 %4514, -8
  %4516 = inttoptr i64 %4515 to i64*
  store i64 %4510, i64* %4516
  store i64 %4515, i64* %4513, align 8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4508, i64* %4517, align 8
  store %struct.Memory* %loadMem1_49a4ed, %struct.Memory** %MEMORY
  %loadMem2_49a4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a4ed = load i64, i64* %3
  %call2_49a4ed = call %struct.Memory* @sub_402940.sgfCircle(%struct.State* %0, i64 %loadPC_49a4ed, %struct.Memory* %loadMem2_49a4ed)
  store %struct.Memory* %call2_49a4ed, %struct.Memory** %MEMORY
  %loadMem_49a4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 1
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 15
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4526 to i64*
  %4527 = load i64, i64* %RBP.i105
  %4528 = sub i64 %4527, 296
  %4529 = load i64, i64* %RAX.i104
  %4530 = load i64, i64* %PC.i103
  %4531 = add i64 %4530, 7
  store i64 %4531, i64* %PC.i103
  %4532 = inttoptr i64 %4528 to i64*
  store i64 %4529, i64* %4532
  store %struct.Memory* %loadMem_49a4f2, %struct.Memory** %MEMORY
  %loadMem_49a4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %PC.i102
  %4537 = add i64 %4536, 167
  %4538 = load i64, i64* %PC.i102
  %4539 = add i64 %4538, 5
  store i64 %4539, i64* %PC.i102
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4537, i64* %4540, align 8
  store %struct.Memory* %loadMem_49a4f9, %struct.Memory** %MEMORY
  br label %block_.L_49a5a0

block_.L_49a4fe:                                  ; preds = %block_49a385
  %loadMem_49a4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 11
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RDI.i100 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 15
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %RBP.i101
  %4551 = sub i64 %4550, 192
  %4552 = load i64, i64* %PC.i99
  %4553 = add i64 %4552, 7
  store i64 %4553, i64* %PC.i99
  store i64 %4551, i64* %RDI.i100, align 8
  store %struct.Memory* %loadMem_49a4fe, %struct.Memory** %MEMORY
  %loadMem_49a505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 1
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 15
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RBP.i98
  %4564 = sub i64 %4563, 52
  %4565 = load i64, i64* %PC.i96
  %4566 = add i64 %4565, 4
  store i64 %4566, i64* %PC.i96
  %4567 = inttoptr i64 %4564 to i32*
  %4568 = load i32, i32* %4567
  %4569 = sext i32 %4568 to i64
  %4570 = mul i64 %4569, 20
  %4571 = trunc i64 %4570 to i32
  %4572 = and i64 %4570, 4294967295
  store i64 %4572, i64* %RAX.i97, align 8
  %4573 = shl i64 %4570, 32
  %4574 = ashr exact i64 %4573, 32
  %4575 = icmp ne i64 %4574, %4570
  %4576 = zext i1 %4575 to i8
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4576, i8* %4577, align 1
  %4578 = and i32 %4571, 255
  %4579 = call i32 @llvm.ctpop.i32(i32 %4578)
  %4580 = trunc i32 %4579 to i8
  %4581 = and i8 %4580, 1
  %4582 = xor i8 %4581, 1
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4582, i8* %4583, align 1
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4584, align 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4585, align 1
  %4586 = lshr i32 %4571, 31
  %4587 = trunc i32 %4586 to i8
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4587, i8* %4588, align 1
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4576, i8* %4589, align 1
  store %struct.Memory* %loadMem_49a505, %struct.Memory** %MEMORY
  %loadMem_49a509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 1
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %RAX.i95
  %4597 = load i64, i64* %PC.i94
  %4598 = add i64 %4597, 3
  store i64 %4598, i64* %PC.i94
  %4599 = trunc i64 %4596 to i32
  %4600 = add i32 21, %4599
  %4601 = zext i32 %4600 to i64
  store i64 %4601, i64* %RAX.i95, align 8
  %4602 = icmp ult i32 %4600, %4599
  %4603 = icmp ult i32 %4600, 21
  %4604 = or i1 %4602, %4603
  %4605 = zext i1 %4604 to i8
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4605, i8* %4606, align 1
  %4607 = and i32 %4600, 255
  %4608 = call i32 @llvm.ctpop.i32(i32 %4607)
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  %4611 = xor i8 %4610, 1
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4611, i8* %4612, align 1
  %4613 = xor i64 21, %4596
  %4614 = trunc i64 %4613 to i32
  %4615 = xor i32 %4614, %4600
  %4616 = lshr i32 %4615, 4
  %4617 = trunc i32 %4616 to i8
  %4618 = and i8 %4617, 1
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4618, i8* %4619, align 1
  %4620 = icmp eq i32 %4600, 0
  %4621 = zext i1 %4620 to i8
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4621, i8* %4622, align 1
  %4623 = lshr i32 %4600, 31
  %4624 = trunc i32 %4623 to i8
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4624, i8* %4625, align 1
  %4626 = lshr i32 %4599, 31
  %4627 = xor i32 %4623, %4626
  %4628 = add i32 %4627, %4623
  %4629 = icmp eq i32 %4628, 2
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4630, i8* %4631, align 1
  store %struct.Memory* %loadMem_49a509, %struct.Memory** %MEMORY
  %loadMem_49a50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 1
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 15
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RAX.i92
  %4642 = load i64, i64* %RBP.i93
  %4643 = sub i64 %4642, 56
  %4644 = load i64, i64* %PC.i91
  %4645 = add i64 %4644, 3
  store i64 %4645, i64* %PC.i91
  %4646 = trunc i64 %4641 to i32
  %4647 = inttoptr i64 %4643 to i32*
  %4648 = load i32, i32* %4647
  %4649 = add i32 %4648, %4646
  %4650 = zext i32 %4649 to i64
  store i64 %4650, i64* %RAX.i92, align 8
  %4651 = icmp ult i32 %4649, %4646
  %4652 = icmp ult i32 %4649, %4648
  %4653 = or i1 %4651, %4652
  %4654 = zext i1 %4653 to i8
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4654, i8* %4655, align 1
  %4656 = and i32 %4649, 255
  %4657 = call i32 @llvm.ctpop.i32(i32 %4656)
  %4658 = trunc i32 %4657 to i8
  %4659 = and i8 %4658, 1
  %4660 = xor i8 %4659, 1
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4660, i8* %4661, align 1
  %4662 = xor i32 %4648, %4646
  %4663 = xor i32 %4662, %4649
  %4664 = lshr i32 %4663, 4
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4666, i8* %4667, align 1
  %4668 = icmp eq i32 %4649, 0
  %4669 = zext i1 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4669, i8* %4670, align 1
  %4671 = lshr i32 %4649, 31
  %4672 = trunc i32 %4671 to i8
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4672, i8* %4673, align 1
  %4674 = lshr i32 %4646, 31
  %4675 = lshr i32 %4648, 31
  %4676 = xor i32 %4671, %4674
  %4677 = xor i32 %4671, %4675
  %4678 = add i32 %4676, %4677
  %4679 = icmp eq i32 %4678, 2
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4680, i8* %4681, align 1
  store %struct.Memory* %loadMem_49a50c, %struct.Memory** %MEMORY
  %loadMem_49a50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 33
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 11
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %RDI.i89 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 15
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RBP.i90
  %4692 = sub i64 %4691, 304
  %4693 = load i64, i64* %RDI.i89
  %4694 = load i64, i64* %PC.i88
  %4695 = add i64 %4694, 7
  store i64 %4695, i64* %PC.i88
  %4696 = inttoptr i64 %4692 to i64*
  store i64 %4693, i64* %4696
  store %struct.Memory* %loadMem_49a50f, %struct.Memory** %MEMORY
  %loadMem_49a516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 33
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4699 to i64*
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 1
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %4702 to i32*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 11
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %4705 to i64*
  %4706 = load i32, i32* %EAX.i86
  %4707 = zext i32 %4706 to i64
  %4708 = load i64, i64* %PC.i85
  %4709 = add i64 %4708, 2
  store i64 %4709, i64* %PC.i85
  %4710 = and i64 %4707, 4294967295
  store i64 %4710, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_49a516, %struct.Memory** %MEMORY
  %loadMem1_49a518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 33
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4713 to i64*
  %4714 = load i64, i64* %PC.i84
  %4715 = add i64 %4714, -295752
  %4716 = load i64, i64* %PC.i84
  %4717 = add i64 %4716, 5
  %4718 = load i64, i64* %PC.i84
  %4719 = add i64 %4718, 5
  store i64 %4719, i64* %PC.i84
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4721 = load i64, i64* %4720, align 8
  %4722 = add i64 %4721, -8
  %4723 = inttoptr i64 %4722 to i64*
  store i64 %4717, i64* %4723
  store i64 %4722, i64* %4720, align 8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4715, i64* %4724, align 8
  store %struct.Memory* %loadMem1_49a518, %struct.Memory** %MEMORY
  %loadMem2_49a518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a518 = load i64, i64* %3
  %call2_49a518 = call %struct.Memory* @sub_4521d0.location_to_string(%struct.State* %0, i64 %loadPC_49a518, %struct.Memory* %loadMem2_49a518)
  store %struct.Memory* %call2_49a518, %struct.Memory** %MEMORY
  %loadMem_49a51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 11
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RDI.i82 = bitcast %union.anon* %4730 to i64*
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 15
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %RBP.i83
  %4735 = sub i64 %4734, 52
  %4736 = load i64, i64* %PC.i81
  %4737 = add i64 %4736, 3
  store i64 %4737, i64* %PC.i81
  %4738 = inttoptr i64 %4735 to i32*
  %4739 = load i32, i32* %4738
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RDI.i82, align 8
  store %struct.Memory* %loadMem_49a51d, %struct.Memory** %MEMORY
  %loadMem_49a520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 9
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 15
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4749 to i64*
  %4750 = load i64, i64* %RBP.i80
  %4751 = sub i64 %4750, 56
  %4752 = load i64, i64* %PC.i78
  %4753 = add i64 %4752, 3
  store i64 %4753, i64* %PC.i78
  %4754 = inttoptr i64 %4751 to i32*
  %4755 = load i32, i32* %4754
  %4756 = zext i32 %4755 to i64
  store i64 %4756, i64* %RSI.i79, align 8
  store %struct.Memory* %loadMem_49a520, %struct.Memory** %MEMORY
  %loadMem_49a523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 15
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RBP.i77
  %4767 = sub i64 %4766, 312
  %4768 = load i64, i64* %RAX.i76
  %4769 = load i64, i64* %PC.i75
  %4770 = add i64 %4769, 7
  store i64 %4770, i64* %PC.i75
  %4771 = inttoptr i64 %4767 to i64*
  store i64 %4768, i64* %4771
  store %struct.Memory* %loadMem_49a523, %struct.Memory** %MEMORY
  %loadMem1_49a52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4774 to i64*
  %4775 = load i64, i64* %PC.i74
  %4776 = add i64 %4775, -442378
  %4777 = load i64, i64* %PC.i74
  %4778 = add i64 %4777, 5
  %4779 = load i64, i64* %PC.i74
  %4780 = add i64 %4779, 5
  store i64 %4780, i64* %PC.i74
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4782 = load i64, i64* %4781, align 8
  %4783 = add i64 %4782, -8
  %4784 = inttoptr i64 %4783 to i64*
  store i64 %4778, i64* %4784
  store i64 %4783, i64* %4781, align 8
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4776, i64* %4785, align 8
  store %struct.Memory* %loadMem1_49a52a, %struct.Memory** %MEMORY
  %loadMem2_49a52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a52a = load i64, i64* %3
  %call2_49a52a = call %struct.Memory* @sub_42e520.gnugo_is_pass(%struct.State* %0, i64 %loadPC_49a52a, %struct.Memory* %loadMem2_49a52a)
  store %struct.Memory* %call2_49a52a, %struct.Memory** %MEMORY
  %loadMem_49a52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 1
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %EAX.i73 = bitcast %union.anon* %4791 to i32*
  %4792 = load i32, i32* %EAX.i73
  %4793 = zext i32 %4792 to i64
  %4794 = load i64, i64* %PC.i72
  %4795 = add i64 %4794, 3
  store i64 %4795, i64* %PC.i72
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4796, align 1
  %4797 = and i32 %4792, 255
  %4798 = call i32 @llvm.ctpop.i32(i32 %4797)
  %4799 = trunc i32 %4798 to i8
  %4800 = and i8 %4799, 1
  %4801 = xor i8 %4800, 1
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4801, i8* %4802, align 1
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4803, align 1
  %4804 = icmp eq i32 %4792, 0
  %4805 = zext i1 %4804 to i8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4805, i8* %4806, align 1
  %4807 = lshr i32 %4792, 31
  %4808 = trunc i32 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4808, i8* %4809, align 1
  %4810 = lshr i32 %4792, 31
  %4811 = xor i32 %4807, %4810
  %4812 = add i32 %4811, %4810
  %4813 = icmp eq i32 %4812, 2
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4814, i8* %4815, align 1
  store %struct.Memory* %loadMem_49a52f, %struct.Memory** %MEMORY
  %loadMem_49a532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 33
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4818 to i64*
  %4819 = load i64, i64* %PC.i71
  %4820 = add i64 %4819, 22
  %4821 = load i64, i64* %PC.i71
  %4822 = add i64 %4821, 6
  %4823 = load i64, i64* %PC.i71
  %4824 = add i64 %4823, 6
  store i64 %4824, i64* %PC.i71
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4826 = load i8, i8* %4825, align 1
  store i8 %4826, i8* %BRANCH_TAKEN, align 1
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4828 = icmp ne i8 %4826, 0
  %4829 = select i1 %4828, i64 %4820, i64 %4822
  store i64 %4829, i64* %4827, align 8
  store %struct.Memory* %loadMem_49a532, %struct.Memory** %MEMORY
  %loadBr_49a532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49a532 = icmp eq i8 %loadBr_49a532, 1
  br i1 %cmpBr_49a532, label %block_.L_49a548, label %block_49a538

block_49a538:                                     ; preds = %block_.L_49a4fe
  %loadMem_49a538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4833, i64 0, i64 0
  %YMM0.i69 = bitcast %union.VectorReg* %4834 to %"class.std::bitset"*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4835, i64 0, i64 0
  %XMM0.i70 = bitcast %union.VectorReg* %4836 to %union.vec128_t*
  %4837 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %4838 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %4839 = bitcast %union.vec128_t* %XMM0.i70 to i8*
  %4840 = load i64, i64* %PC.i68
  %4841 = add i64 %4840, 3
  store i64 %4841, i64* %PC.i68
  %4842 = bitcast i8* %4838 to i64*
  %4843 = load i64, i64* %4842, align 1
  %4844 = getelementptr inbounds i8, i8* %4838, i64 8
  %4845 = bitcast i8* %4844 to i64*
  %4846 = load i64, i64* %4845, align 1
  %4847 = bitcast i8* %4839 to i64*
  %4848 = load i64, i64* %4847, align 1
  %4849 = getelementptr inbounds i8, i8* %4839, i64 8
  %4850 = bitcast i8* %4849 to i64*
  %4851 = load i64, i64* %4850, align 1
  %4852 = xor i64 %4848, %4843
  %4853 = xor i64 %4851, %4846
  %4854 = trunc i64 %4852 to i32
  %4855 = lshr i64 %4852, 32
  %4856 = trunc i64 %4855 to i32
  %4857 = bitcast i8* %4837 to i32*
  store i32 %4854, i32* %4857, align 1
  %4858 = getelementptr inbounds i8, i8* %4837, i64 4
  %4859 = bitcast i8* %4858 to i32*
  store i32 %4856, i32* %4859, align 1
  %4860 = trunc i64 %4853 to i32
  %4861 = getelementptr inbounds i8, i8* %4837, i64 8
  %4862 = bitcast i8* %4861 to i32*
  store i32 %4860, i32* %4862, align 1
  %4863 = lshr i64 %4853, 32
  %4864 = trunc i64 %4863 to i32
  %4865 = getelementptr inbounds i8, i8* %4837, i64 12
  %4866 = bitcast i8* %4865 to i32*
  store i32 %4864, i32* %4866, align 1
  store %struct.Memory* %loadMem_49a538, %struct.Memory** %MEMORY
  %loadMem_49a53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 33
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 15
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4872 to i64*
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4873, i64 0, i64 0
  %XMM0.i67 = bitcast %union.VectorReg* %4874 to %union.vec128_t*
  %4875 = load i64, i64* %RBP.i66
  %4876 = sub i64 %4875, 316
  %4877 = bitcast %union.vec128_t* %XMM0.i67 to i8*
  %4878 = load i64, i64* %PC.i65
  %4879 = add i64 %4878, 8
  store i64 %4879, i64* %PC.i65
  %4880 = bitcast i8* %4877 to <2 x float>*
  %4881 = load <2 x float>, <2 x float>* %4880, align 1
  %4882 = extractelement <2 x float> %4881, i32 0
  %4883 = inttoptr i64 %4876 to float*
  store float %4882, float* %4883
  store %struct.Memory* %loadMem_49a53b, %struct.Memory** %MEMORY
  %loadMem_49a543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %PC.i64
  %4888 = add i64 %4887, 43
  %4889 = load i64, i64* %PC.i64
  %4890 = add i64 %4889, 5
  store i64 %4890, i64* %PC.i64
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4888, i64* %4891, align 8
  store %struct.Memory* %loadMem_49a543, %struct.Memory** %MEMORY
  br label %block_.L_49a56e

block_.L_49a548:                                  ; preds = %block_.L_49a4fe
  %loadMem_49a548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 33
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4894 to i64*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 1
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4897 to i64*
  %4898 = load i64, i64* %PC.i62
  %4899 = add i64 %4898, 10
  store i64 %4899, i64* %PC.i62
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_49a548, %struct.Memory** %MEMORY
  %loadMem_49a552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 5
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 15
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4908 to i64*
  %4909 = load i64, i64* %RBP.i61
  %4910 = sub i64 %4909, 52
  %4911 = load i64, i64* %PC.i59
  %4912 = add i64 %4911, 4
  store i64 %4912, i64* %PC.i59
  %4913 = inttoptr i64 %4910 to i32*
  %4914 = load i32, i32* %4913
  %4915 = sext i32 %4914 to i64
  store i64 %4915, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_49a552, %struct.Memory** %MEMORY
  %loadMem_49a556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 5
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %RCX.i58
  %4923 = load i64, i64* %PC.i57
  %4924 = add i64 %4923, 4
  store i64 %4924, i64* %PC.i57
  %4925 = sext i64 %4922 to i128
  %4926 = and i128 %4925, -18446744073709551616
  %4927 = zext i64 %4922 to i128
  %4928 = or i128 %4926, %4927
  %4929 = mul i128 76, %4928
  %4930 = trunc i128 %4929 to i64
  store i64 %4930, i64* %RCX.i58, align 8
  %4931 = sext i64 %4930 to i128
  %4932 = icmp ne i128 %4931, %4929
  %4933 = zext i1 %4932 to i8
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4933, i8* %4934, align 1
  %4935 = trunc i128 %4929 to i32
  %4936 = and i32 %4935, 255
  %4937 = call i32 @llvm.ctpop.i32(i32 %4936)
  %4938 = trunc i32 %4937 to i8
  %4939 = and i8 %4938, 1
  %4940 = xor i8 %4939, 1
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4940, i8* %4941, align 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4942, align 1
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4943, align 1
  %4944 = lshr i64 %4930, 63
  %4945 = trunc i64 %4944 to i8
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4945, i8* %4946, align 1
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4933, i8* %4947, align 1
  store %struct.Memory* %loadMem_49a556, %struct.Memory** %MEMORY
  %loadMem_49a55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 1
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 5
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RAX.i55
  %4958 = load i64, i64* %RCX.i56
  %4959 = load i64, i64* %PC.i54
  %4960 = add i64 %4959, 3
  store i64 %4960, i64* %PC.i54
  %4961 = add i64 %4958, %4957
  store i64 %4961, i64* %RAX.i55, align 8
  %4962 = icmp ult i64 %4961, %4957
  %4963 = icmp ult i64 %4961, %4958
  %4964 = or i1 %4962, %4963
  %4965 = zext i1 %4964 to i8
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4965, i8* %4966, align 1
  %4967 = trunc i64 %4961 to i32
  %4968 = and i32 %4967, 255
  %4969 = call i32 @llvm.ctpop.i32(i32 %4968)
  %4970 = trunc i32 %4969 to i8
  %4971 = and i8 %4970, 1
  %4972 = xor i8 %4971, 1
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4972, i8* %4973, align 1
  %4974 = xor i64 %4958, %4957
  %4975 = xor i64 %4974, %4961
  %4976 = lshr i64 %4975, 4
  %4977 = trunc i64 %4976 to i8
  %4978 = and i8 %4977, 1
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4978, i8* %4979, align 1
  %4980 = icmp eq i64 %4961, 0
  %4981 = zext i1 %4980 to i8
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4981, i8* %4982, align 1
  %4983 = lshr i64 %4961, 63
  %4984 = trunc i64 %4983 to i8
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4984, i8* %4985, align 1
  %4986 = lshr i64 %4957, 63
  %4987 = lshr i64 %4958, 63
  %4988 = xor i64 %4983, %4986
  %4989 = xor i64 %4983, %4987
  %4990 = add i64 %4988, %4989
  %4991 = icmp eq i64 %4990, 2
  %4992 = zext i1 %4991 to i8
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4992, i8* %4993, align 1
  store %struct.Memory* %loadMem_49a55a, %struct.Memory** %MEMORY
  %loadMem_49a55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 5
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i53
  %5004 = sub i64 %5003, 56
  %5005 = load i64, i64* %PC.i51
  %5006 = add i64 %5005, 4
  store i64 %5006, i64* %PC.i51
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007
  %5009 = sext i32 %5008 to i64
  store i64 %5009, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_49a55d, %struct.Memory** %MEMORY
  %loadMem_49a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 1
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %5015 to i64*
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 5
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5019, i64 0, i64 0
  %YMM0.i50 = bitcast %union.VectorReg* %5020 to %"class.std::bitset"*
  %5021 = bitcast %"class.std::bitset"* %YMM0.i50 to i8*
  %5022 = load i64, i64* %RAX.i48
  %5023 = load i64, i64* %RCX.i49
  %5024 = mul i64 %5023, 4
  %5025 = add i64 %5024, %5022
  %5026 = load i64, i64* %PC.i47
  %5027 = add i64 %5026, 5
  store i64 %5027, i64* %PC.i47
  %5028 = inttoptr i64 %5025 to float*
  %5029 = load float, float* %5028
  %5030 = bitcast i8* %5021 to float*
  store float %5029, float* %5030, align 1
  %5031 = getelementptr inbounds i8, i8* %5021, i64 4
  %5032 = bitcast i8* %5031 to float*
  store float 0.000000e+00, float* %5032, align 1
  %5033 = getelementptr inbounds i8, i8* %5021, i64 8
  %5034 = bitcast i8* %5033 to float*
  store float 0.000000e+00, float* %5034, align 1
  %5035 = getelementptr inbounds i8, i8* %5021, i64 12
  %5036 = bitcast i8* %5035 to float*
  store float 0.000000e+00, float* %5036, align 1
  store %struct.Memory* %loadMem_49a561, %struct.Memory** %MEMORY
  %loadMem_49a566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 15
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5043, i64 0, i64 0
  %XMM0.i46 = bitcast %union.VectorReg* %5044 to %union.vec128_t*
  %5045 = load i64, i64* %RBP.i45
  %5046 = sub i64 %5045, 316
  %5047 = bitcast %union.vec128_t* %XMM0.i46 to i8*
  %5048 = load i64, i64* %PC.i44
  %5049 = add i64 %5048, 8
  store i64 %5049, i64* %PC.i44
  %5050 = bitcast i8* %5047 to <2 x float>*
  %5051 = load <2 x float>, <2 x float>* %5050, align 1
  %5052 = extractelement <2 x float> %5051, i32 0
  %5053 = inttoptr i64 %5046 to float*
  store float %5052, float* %5053
  store %struct.Memory* %loadMem_49a566, %struct.Memory** %MEMORY
  br label %block_.L_49a56e

block_.L_49a56e:                                  ; preds = %block_.L_49a548, %block_49a538
  %loadMem_49a56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 15
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5060, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %5061 to %"class.std::bitset"*
  %5062 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %5063 = load i64, i64* %RBP.i42
  %5064 = sub i64 %5063, 316
  %5065 = load i64, i64* %PC.i41
  %5066 = add i64 %5065, 8
  store i64 %5066, i64* %PC.i41
  %5067 = inttoptr i64 %5064 to float*
  %5068 = load float, float* %5067
  %5069 = bitcast i8* %5062 to float*
  store float %5068, float* %5069, align 1
  %5070 = getelementptr inbounds i8, i8* %5062, i64 4
  %5071 = bitcast i8* %5070 to float*
  store float 0.000000e+00, float* %5071, align 1
  %5072 = getelementptr inbounds i8, i8* %5062, i64 8
  %5073 = bitcast i8* %5072 to float*
  store float 0.000000e+00, float* %5073, align 1
  %5074 = getelementptr inbounds i8, i8* %5062, i64 12
  %5075 = bitcast i8* %5074 to float*
  store float 0.000000e+00, float* %5075, align 1
  store %struct.Memory* %loadMem_49a56e, %struct.Memory** %MEMORY
  %loadMem_49a576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 1
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %PC.i39
  %5083 = add i64 %5082, 5
  store i64 %5083, i64* %PC.i39
  store i64 127, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_49a576, %struct.Memory** %MEMORY
  %loadMem_49a57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5089 to i32*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 9
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RSI.i38 = bitcast %union.anon* %5092 to i64*
  %5093 = load i32, i32* %EAX.i
  %5094 = zext i32 %5093 to i64
  %5095 = load i64, i64* %PC.i37
  %5096 = add i64 %5095, 2
  store i64 %5096, i64* %PC.i37
  %5097 = and i64 %5094, 4294967295
  store i64 %5097, i64* %RSI.i38, align 8
  store %struct.Memory* %loadMem_49a57b, %struct.Memory** %MEMORY
  %loadMem_49a57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 7
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RDX.i36 = bitcast %union.anon* %5103 to i64*
  %5104 = load i64, i64* %PC.i35
  %5105 = add i64 %5104, 10
  store i64 %5105, i64* %PC.i35
  store i64 ptrtoint (%G__0x587af7_type* @G__0x587af7 to i64), i64* %RDX.i36, align 8
  store %struct.Memory* %loadMem_49a57d, %struct.Memory** %MEMORY
  %loadMem_49a587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 33
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5108 to i64*
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5109, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5110 to %"class.std::bitset"*
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5111, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5112 to %union.vec128_t*
  %5113 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5114 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5115 = load i64, i64* %PC.i34
  %5116 = add i64 %5115, 4
  store i64 %5116, i64* %PC.i34
  %5117 = bitcast i8* %5114 to <2 x float>*
  %5118 = load <2 x float>, <2 x float>* %5117, align 1
  %5119 = extractelement <2 x float> %5118, i32 0
  %5120 = fpext float %5119 to double
  %5121 = bitcast i8* %5113 to double*
  store double %5120, double* %5121, align 1
  store %struct.Memory* %loadMem_49a587, %struct.Memory** %MEMORY
  %loadMem_49a58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 33
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5124 to i64*
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 11
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 15
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %5130 to i64*
  %5131 = load i64, i64* %RBP.i33
  %5132 = sub i64 %5131, 304
  %5133 = load i64, i64* %PC.i31
  %5134 = add i64 %5133, 7
  store i64 %5134, i64* %PC.i31
  %5135 = inttoptr i64 %5132 to i64*
  %5136 = load i64, i64* %5135
  store i64 %5136, i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_49a58b, %struct.Memory** %MEMORY
  %loadMem_49a592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 33
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 5
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 15
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %5145 to i64*
  %5146 = load i64, i64* %RBP.i30
  %5147 = sub i64 %5146, 312
  %5148 = load i64, i64* %PC.i29
  %5149 = add i64 %5148, 7
  store i64 %5149, i64* %PC.i29
  %5150 = inttoptr i64 %5147 to i64*
  %5151 = load i64, i64* %5150
  store i64 %5151, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_49a592, %struct.Memory** %MEMORY
  %loadMem_49a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 33
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5154 to i64*
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 1
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %5158 = bitcast %union.anon* %5157 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5158, i32 0, i32 0
  %5159 = load i64, i64* %PC.i28
  %5160 = add i64 %5159, 2
  store i64 %5160, i64* %PC.i28
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_49a599, %struct.Memory** %MEMORY
  %loadMem1_49a59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 33
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5163 to i64*
  %5164 = load i64, i64* %PC.i27
  %5165 = add i64 %5164, 294757
  %5166 = load i64, i64* %PC.i27
  %5167 = add i64 %5166, 5
  %5168 = load i64, i64* %PC.i27
  %5169 = add i64 %5168, 5
  store i64 %5169, i64* %PC.i27
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5171 = load i64, i64* %5170, align 8
  %5172 = add i64 %5171, -8
  %5173 = inttoptr i64 %5172 to i64*
  store i64 %5167, i64* %5173
  store i64 %5172, i64* %5170, align 8
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5165, i64* %5174, align 8
  store %struct.Memory* %loadMem1_49a59b, %struct.Memory** %MEMORY
  %loadMem2_49a59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a59b = load i64, i64* %3
  %call2_49a59b = call %struct.Memory* @sub_4e2500.gg_snprintf(%struct.State* %0, i64 %loadPC_49a59b, %struct.Memory* %loadMem2_49a59b)
  store %struct.Memory* %call2_49a59b, %struct.Memory** %MEMORY
  br label %block_.L_49a5a0

block_.L_49a5a0:                                  ; preds = %block_.L_49a56e, %block_.L_49a4a2
  %loadMem_49a5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 33
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5177 to i64*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 9
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RSI.i25 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 15
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %RBP.i26
  %5185 = sub i64 %5184, 192
  %5186 = load i64, i64* %PC.i24
  %5187 = add i64 %5186, 7
  store i64 %5187, i64* %PC.i24
  store i64 %5185, i64* %RSI.i25, align 8
  store %struct.Memory* %loadMem_49a5a0, %struct.Memory** %MEMORY
  %loadMem_49a5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 11
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RDI.i22 = bitcast %union.anon* %5193 to i64*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 15
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %5196 to i64*
  %5197 = load i64, i64* %RBP.i23
  %5198 = sub i64 %5197, 8
  %5199 = load i64, i64* %PC.i21
  %5200 = add i64 %5199, 4
  store i64 %5200, i64* %PC.i21
  %5201 = inttoptr i64 %5198 to i64*
  %5202 = load i64, i64* %5201
  store i64 %5202, i64* %RDI.i22, align 8
  store %struct.Memory* %loadMem_49a5a7, %struct.Memory** %MEMORY
  %loadMem1_49a5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 33
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5205 to i64*
  %5206 = load i64, i64* %PC.i20
  %5207 = add i64 %5206, -622475
  %5208 = load i64, i64* %PC.i20
  %5209 = add i64 %5208, 5
  %5210 = load i64, i64* %PC.i20
  %5211 = add i64 %5210, 5
  store i64 %5211, i64* %PC.i20
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5213 = load i64, i64* %5212, align 8
  %5214 = add i64 %5213, -8
  %5215 = inttoptr i64 %5214 to i64*
  store i64 %5209, i64* %5215
  store i64 %5214, i64* %5212, align 8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5207, i64* %5216, align 8
  store %struct.Memory* %loadMem1_49a5ab, %struct.Memory** %MEMORY
  %loadMem2_49a5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a5ab = load i64, i64* %3
  %call2_49a5ab = call %struct.Memory* @sub_402620.sgfAddComment(%struct.State* %0, i64 %loadPC_49a5ab, %struct.Memory* %loadMem2_49a5ab)
  store %struct.Memory* %call2_49a5ab, %struct.Memory** %MEMORY
  %loadMem_49a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 9
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5222 to i32*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 9
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RSI.i19 = bitcast %union.anon* %5225 to i64*
  %5226 = load i64, i64* %RSI.i19
  %5227 = load i32, i32* %ESI.i
  %5228 = zext i32 %5227 to i64
  %5229 = load i64, i64* %PC.i18
  %5230 = add i64 %5229, 2
  store i64 %5230, i64* %PC.i18
  %5231 = xor i64 %5228, %5226
  %5232 = trunc i64 %5231 to i32
  %5233 = and i64 %5231, 4294967295
  store i64 %5233, i64* %RSI.i19, align 8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5234, align 1
  %5235 = and i32 %5232, 255
  %5236 = call i32 @llvm.ctpop.i32(i32 %5235)
  %5237 = trunc i32 %5236 to i8
  %5238 = and i8 %5237, 1
  %5239 = xor i8 %5238, 1
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5239, i8* %5240, align 1
  %5241 = icmp eq i32 %5232, 0
  %5242 = zext i1 %5241 to i8
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5242, i8* %5243, align 1
  %5244 = lshr i32 %5232, 31
  %5245 = trunc i32 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5245, i8* %5246, align 1
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5247, align 1
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5248, align 1
  store %struct.Memory* %loadMem_49a5b0, %struct.Memory** %MEMORY
  %loadMem_49a5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 33
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5251 to i64*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 11
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %RDI.i16 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 15
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %5257 to i64*
  %5258 = load i64, i64* %RBP.i17
  %5259 = sub i64 %5258, 8
  %5260 = load i64, i64* %PC.i15
  %5261 = add i64 %5260, 4
  store i64 %5261, i64* %PC.i15
  %5262 = inttoptr i64 %5259 to i64*
  %5263 = load i64, i64* %5262
  store i64 %5263, i64* %RDI.i16, align 8
  store %struct.Memory* %loadMem_49a5b2, %struct.Memory** %MEMORY
  %loadMem_49a5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 33
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 1
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 15
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %RBP.i14
  %5274 = sub i64 %5273, 328
  %5275 = load i64, i64* %RAX.i
  %5276 = load i64, i64* %PC.i13
  %5277 = add i64 %5276, 7
  store i64 %5277, i64* %PC.i13
  %5278 = inttoptr i64 %5274 to i64*
  store i64 %5275, i64* %5278
  store %struct.Memory* %loadMem_49a5b6, %struct.Memory** %MEMORY
  %loadMem1_49a5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5280 = getelementptr inbounds %struct.GPR, %struct.GPR* %5279, i32 0, i32 33
  %5281 = getelementptr inbounds %struct.Reg, %struct.Reg* %5280, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5281 to i64*
  %5282 = load i64, i64* %PC.i12
  %5283 = add i64 %5282, -163357
  %5284 = load i64, i64* %PC.i12
  %5285 = add i64 %5284, 5
  %5286 = load i64, i64* %PC.i12
  %5287 = add i64 %5286, 5
  store i64 %5287, i64* %PC.i12
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5289 = load i64, i64* %5288, align 8
  %5290 = add i64 %5289, -8
  %5291 = inttoptr i64 %5290 to i64*
  store i64 %5285, i64* %5291
  store i64 %5290, i64* %5288, align 8
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5283, i64* %5292, align 8
  store %struct.Memory* %loadMem1_49a5bd, %struct.Memory** %MEMORY
  %loadMem2_49a5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a5bd = load i64, i64* %3
  %call2_49a5bd = call %struct.Memory* @sub_4727a0.sgffile_add_debuginfo(%struct.State* %0, i64 %loadPC_49a5bd, %struct.Memory* %loadMem2_49a5bd)
  store %struct.Memory* %call2_49a5bd, %struct.Memory** %MEMORY
  br label %block_.L_49a5c2

block_.L_49a5c2:                                  ; preds = %block_.L_49a5a0, %block_49a211
  %loadMem_49a5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 33
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 11
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 15
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5301 to i64*
  %5302 = load i64, i64* %RBP.i11
  %5303 = sub i64 %5302, 44
  %5304 = load i64, i64* %PC.i10
  %5305 = add i64 %5304, 3
  store i64 %5305, i64* %PC.i10
  %5306 = inttoptr i64 %5303 to i32*
  %5307 = load i32, i32* %5306
  %5308 = zext i32 %5307 to i64
  store i64 %5308, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_49a5c2, %struct.Memory** %MEMORY
  %loadMem_49a5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 33
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5311 to i64*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 9
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 15
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %RBP.i9
  %5319 = sub i64 %5318, 48
  %5320 = load i64, i64* %PC.i8
  %5321 = add i64 %5320, 3
  store i64 %5321, i64* %PC.i8
  %5322 = inttoptr i64 %5319 to i32*
  %5323 = load i32, i32* %5322
  %5324 = zext i32 %5323 to i64
  store i64 %5324, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_49a5c5, %struct.Memory** %MEMORY
  %loadMem_49a5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 33
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5327 to i64*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 7
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 15
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %5333 to i64*
  %5334 = load i64, i64* %RBP.i7
  %5335 = sub i64 %5334, 36
  %5336 = load i64, i64* %PC.i6
  %5337 = add i64 %5336, 3
  store i64 %5337, i64* %PC.i6
  %5338 = inttoptr i64 %5335 to i32*
  %5339 = load i32, i32* %5338
  %5340 = zext i32 %5339 to i64
  store i64 %5340, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_49a5c8, %struct.Memory** %MEMORY
  %loadMem1_49a5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 33
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5343 to i64*
  %5344 = load i64, i64* %PC.i5
  %5345 = add i64 %5344, -442491
  %5346 = load i64, i64* %PC.i5
  %5347 = add i64 %5346, 5
  %5348 = load i64, i64* %PC.i5
  %5349 = add i64 %5348, 5
  store i64 %5349, i64* %PC.i5
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5351 = load i64, i64* %5350, align 8
  %5352 = add i64 %5351, -8
  %5353 = inttoptr i64 %5352 to i64*
  store i64 %5347, i64* %5353
  store i64 %5352, i64* %5350, align 8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5345, i64* %5354, align 8
  store %struct.Memory* %loadMem1_49a5cb, %struct.Memory** %MEMORY
  %loadMem2_49a5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49a5cb = load i64, i64* %3
  %call2_49a5cb = call %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* %0, i64 %loadPC_49a5cb, %struct.Memory* %loadMem2_49a5cb)
  store %struct.Memory* %call2_49a5cb, %struct.Memory** %MEMORY
  br label %block_.L_49a5d0

block_.L_49a5d0:                                  ; preds = %block_.L_49a5c2, %block_49a1c5
  %loadMem_49a5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 13
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5360 to i64*
  %5361 = load i64, i64* %RSP.i
  %5362 = load i64, i64* %PC.i4
  %5363 = add i64 %5362, 7
  store i64 %5363, i64* %PC.i4
  %5364 = add i64 336, %5361
  store i64 %5364, i64* %RSP.i, align 8
  %5365 = icmp ult i64 %5364, %5361
  %5366 = icmp ult i64 %5364, 336
  %5367 = or i1 %5365, %5366
  %5368 = zext i1 %5367 to i8
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5368, i8* %5369, align 1
  %5370 = trunc i64 %5364 to i32
  %5371 = and i32 %5370, 255
  %5372 = call i32 @llvm.ctpop.i32(i32 %5371)
  %5373 = trunc i32 %5372 to i8
  %5374 = and i8 %5373, 1
  %5375 = xor i8 %5374, 1
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5375, i8* %5376, align 1
  %5377 = xor i64 336, %5361
  %5378 = xor i64 %5377, %5364
  %5379 = lshr i64 %5378, 4
  %5380 = trunc i64 %5379 to i8
  %5381 = and i8 %5380, 1
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5381, i8* %5382, align 1
  %5383 = icmp eq i64 %5364, 0
  %5384 = zext i1 %5383 to i8
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5384, i8* %5385, align 1
  %5386 = lshr i64 %5364, 63
  %5387 = trunc i64 %5386 to i8
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5387, i8* %5388, align 1
  %5389 = lshr i64 %5361, 63
  %5390 = xor i64 %5386, %5389
  %5391 = add i64 %5390, %5386
  %5392 = icmp eq i64 %5391, 2
  %5393 = zext i1 %5392 to i8
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5393, i8* %5394, align 1
  store %struct.Memory* %loadMem_49a5d0, %struct.Memory** %MEMORY
  %loadMem_49a5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 15
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5400 to i64*
  %5401 = load i64, i64* %PC.i2
  %5402 = add i64 %5401, 1
  store i64 %5402, i64* %PC.i2
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5404 = load i64, i64* %5403, align 8
  %5405 = add i64 %5404, 8
  %5406 = inttoptr i64 %5404 to i64*
  %5407 = load i64, i64* %5406
  store i64 %5407, i64* %RBP.i3, align 8
  store i64 %5405, i64* %5403, align 8
  store %struct.Memory* %loadMem_49a5d7, %struct.Memory** %MEMORY
  %loadMem_49a5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 33
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5410 to i64*
  %5411 = load i64, i64* %PC.i1
  %5412 = add i64 %5411, 1
  store i64 %5412, i64* %PC.i1
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5415 = load i64, i64* %5414, align 8
  %5416 = inttoptr i64 %5415 to i64*
  %5417 = load i64, i64* %5416
  store i64 %5417, i64* %5413, align 8
  %5418 = add i64 %5415, 8
  store i64 %5418, i64* %5414, align 8
  store %struct.Memory* %loadMem_49a5d8, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_49a5d8
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 336
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 336
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
  %23 = xor i64 336, %9
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

define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gnugo_get_boardsize(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_49a1ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movswl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = sext i16 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl__0x2042___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 8258
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 8258
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
  %24 = xor i64 8258, %9
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

define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_49a19d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49a0df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2057___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 8279
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 8279
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
  %24 = xor i64 8279, %9
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

define %struct.Memory* @routine_jmpq_.L_49a0fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x4241___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 16961
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 16961
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
  %24 = xor i64 16961, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_49a133(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49a117(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x5741___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 22337
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 22337
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
  %24 = xor i64 22337, %9
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

define %struct.Memory* @routine_je_.L_49a168(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49a1a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.get_moveX(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_moveY(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xd8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gnugo_add_stone(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0xdc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49a1aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49a0ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_49a1ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49a5d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RCX, align 8
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

define %struct.Memory* @routine_movswl_0x8__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = sext i16 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2057___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 8279
  %14 = icmp ult i32 %9, 8279
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
  %23 = xor i64 8279, %10
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

define %struct.Memory* @routine_cmovel__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RSI, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_49a21b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_49a5c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.gnugo_genmove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jne_.L_49a257(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0ed4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0ed4_type* @G_0xab0ed4 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_49a379(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x587a92___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587a92_type* @G__0x587a92 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.mprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x587aa1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587aa1_type* @G__0x587aa1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.gnugo_is_pass(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_49a2d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x587ab2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587ab2_type* @G__0x587ab2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xb6e920___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %23 = fpext float %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 1, i8* %AL, align 1
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

define %struct.Memory* @routine_movq__0x587aba___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587aba_type* @G__0x587aba to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_49a362(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_49a362(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_49a391(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_49a4fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0xc0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_callq_.location_to_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_49a3db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x104__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 260
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

define %struct.Memory* @routine_jmpq_.L_49a401(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x104__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 260
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

define %struct.Memory* @routine_imull__0x14__MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 272
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_49a47c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_49a47c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x11c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 284
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

define %struct.Memory* @routine_jmpq_.L_49a4a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x11c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 284
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

define %struct.Memory* @routine_movl__0x7f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 127, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x587aca___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587aca_type* @G__0x587aca to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x100__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x118__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gg_snprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.sgfCircle(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49a5a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rdi__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_49a548(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 316
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

define %struct.Memory* @routine_jmpq_.L_49a56e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x13c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 316
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

define %struct.Memory* @routine_movq__0x587af7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x587af7_type* @G__0x587af7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x138__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xc0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgfAddComment(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgffile_add_debuginfo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.gnugo_play_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 336, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 336
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
  %25 = xor i64 336, %9
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
