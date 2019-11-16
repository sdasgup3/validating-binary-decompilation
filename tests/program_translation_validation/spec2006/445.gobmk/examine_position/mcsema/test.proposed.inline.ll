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
%G_0x7ae420_type = type <{ [4 x i8] }>
%G_0x7ae424_type = type <{ [4 x i8] }>
%G_0x7ae428_type = type <{ [4 x i8] }>
%G_0x7ae42c_type = type <{ [4 x i8] }>
%G_0x7ae430_type = type <{ [4 x i8] }>
%G_0x7ae434_type = type <{ [4 x i8] }>
%G_0xab0ee0_type = type <{ [1 x i8] }>
%G_0xab0f28_type = type <{ [4 x i8] }>
%G_0xb8af2c_type = type <{ [4 x i8] }>
%G_0xbd253__rip__type = type <{ [8 x i8] }>
%G__0x57bf2c_type = type <{ [8 x i8] }>
%G__0x57bf39_type = type <{ [8 x i8] }>
%G__0x57bfef_type = type <{ [8 x i8] }>
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
@G_0x7ae420 = global %G_0x7ae420_type zeroinitializer
@G_0x7ae424 = global %G_0x7ae424_type zeroinitializer
@G_0x7ae428 = global %G_0x7ae428_type zeroinitializer
@G_0x7ae42c = global %G_0x7ae42c_type zeroinitializer
@G_0x7ae430 = global %G_0x7ae430_type zeroinitializer
@G_0x7ae434 = global %G_0x7ae434_type zeroinitializer
@G_0xab0ee0 = global %G_0xab0ee0_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G_0xb8af2c = global %G_0xb8af2c_type zeroinitializer
@G_0xbd253__rip_ = global %G_0xbd253__rip__type zeroinitializer
@G__0x57bf2c = global %G__0x57bf2c_type zeroinitializer
@G__0x57bf39 = global %G__0x57bf39_type zeroinitializer
@G__0x57bfef = global %G__0x57bfef_type zeroinitializer

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

declare %struct.Memory* @sub_44e220.purge_persistent_reading_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c350.start_timer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_486130.make_worms(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c3d0.time_report(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408d30.test_gray_border(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415e70.stones_on_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48ac00.compute_worm_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41bc00.make_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41e0b0.initialize_dragon_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4228f0.compute_dragon_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41ef50.compute_refined_dragon_weaknesses(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4229a0.show_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @examine_position(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_425c60 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_425c60, %struct.Memory** %MEMORY
  %loadMem_425c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i429 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i429
  %27 = load i64, i64* %PC.i428
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i428
  store i64 %26, i64* %RBP.i430, align 8
  store %struct.Memory* %loadMem_425c61, %struct.Memory** %MEMORY
  %loadMem_425c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i427 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i427
  %36 = load i64, i64* %PC.i426
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i426
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i427, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_425c64, %struct.Memory** %MEMORY
  %loadMem_425c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i424 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i425
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i424
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i423
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i423
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_425c68, %struct.Memory** %MEMORY
  %loadMem_425c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i421 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i422
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i421
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i420
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i420
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_425c6b, %struct.Memory** %MEMORY
  %loadMem_425c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RSI.i419 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %PC.i418
  %106 = add i64 %105, 7
  store i64 %106, i64* %PC.i418
  %107 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RSI.i419, align 8
  store %struct.Memory* %loadMem_425c6e, %struct.Memory** %MEMORY
  %loadMem_425c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %ESI.i416 = bitcast %union.anon* %114 to i32*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RBP.i417
  %119 = sub i64 %118, 12
  %120 = load i32, i32* %ESI.i416
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* %PC.i415
  %123 = add i64 %122, 3
  store i64 %123, i64* %PC.i415
  %124 = inttoptr i64 %119 to i32*
  store i32 %120, i32* %124
  store %struct.Memory* %loadMem_425c75, %struct.Memory** %MEMORY
  %loadMem1_425c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 33
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %PC.i414
  %129 = add i64 %128, 165288
  %130 = load i64, i64* %PC.i414
  %131 = add i64 %130, 5
  %132 = load i64, i64* %PC.i414
  %133 = add i64 %132, 5
  store i64 %133, i64* %PC.i414
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %131, i64* %137
  store i64 %136, i64* %134, align 8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %129, i64* %138, align 8
  store %struct.Memory* %loadMem1_425c78, %struct.Memory** %MEMORY
  %loadMem2_425c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425c78 = load i64, i64* %3
  %call2_425c78 = call %struct.Memory* @sub_44e220.purge_persistent_reading_cache(%struct.State* %0, i64 %loadPC_425c78, %struct.Memory* %loadMem2_425c78)
  store %struct.Memory* %call2_425c78, %struct.Memory** %MEMORY
  %loadMem_425c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %PC.i413
  %143 = add i64 %142, 8
  store i64 %143, i64* %PC.i413
  %144 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %145 = sub i32 %144, 1
  %146 = icmp ult i32 %144, 1
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %147, i8* %148, align 1
  %149 = and i32 %145, 255
  %150 = call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %153, i8* %154, align 1
  %155 = xor i32 %144, 1
  %156 = xor i32 %155, %145
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %159, i8* %160, align 1
  %161 = icmp eq i32 %145, 0
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %162, i8* %163, align 1
  %164 = lshr i32 %145, 31
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %165, i8* %166, align 1
  %167 = lshr i32 %144, 31
  %168 = xor i32 %164, %167
  %169 = add i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %171, i8* %172, align 1
  store %struct.Memory* %loadMem_425c7d, %struct.Memory** %MEMORY
  %loadMem_425c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %PC.i412
  %177 = add i64 %176, 20
  %178 = load i64, i64* %PC.i412
  %179 = add i64 %178, 6
  %180 = load i64, i64* %PC.i412
  %181 = add i64 %180, 6
  store i64 %181, i64* %PC.i412
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %183 = load i8, i8* %182, align 1
  store i8 %183, i8* %BRANCH_TAKEN, align 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %185 = icmp ne i8 %183, 0
  %186 = select i1 %185, i64 %177, i64 %179
  store i64 %186, i64* %184, align 8
  store %struct.Memory* %loadMem_425c85, %struct.Memory** %MEMORY
  %loadBr_425c85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425c85 = icmp eq i8 %loadBr_425c85, 1
  br i1 %cmpBr_425c85, label %block_.L_425c99, label %block_425c8b

block_425c8b:                                     ; preds = %entry
  %loadMem_425c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %189 to i64*
  %190 = load i64, i64* %PC.i411
  %191 = add i64 %190, 8
  store i64 %191, i64* %PC.i411
  %192 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %193 = sub i32 %192, 2
  %194 = icmp ult i32 %192, 2
  %195 = zext i1 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %195, i8* %196, align 1
  %197 = and i32 %193, 255
  %198 = call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %201, i8* %202, align 1
  %203 = xor i32 %192, 2
  %204 = xor i32 %203, %193
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %207, i8* %208, align 1
  %209 = icmp eq i32 %193, 0
  %210 = zext i1 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %210, i8* %211, align 1
  %212 = lshr i32 %193, 31
  %213 = trunc i32 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %213, i8* %214, align 1
  %215 = lshr i32 %192, 31
  %216 = xor i32 %212, %215
  %217 = add i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %219, i8* %220, align 1
  store %struct.Memory* %loadMem_425c8b, %struct.Memory** %MEMORY
  %loadMem_425c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %PC.i410
  %225 = add i64 %224, 23
  %226 = load i64, i64* %PC.i410
  %227 = add i64 %226, 6
  %228 = load i64, i64* %PC.i410
  %229 = add i64 %228, 6
  store i64 %229, i64* %PC.i410
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %231 = load i8, i8* %230, align 1
  %232 = icmp eq i8 %231, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %BRANCH_TAKEN, align 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %235 = select i1 %232, i64 %225, i64 %227
  store i64 %235, i64* %234, align 8
  store %struct.Memory* %loadMem_425c93, %struct.Memory** %MEMORY
  %loadBr_425c93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425c93 = icmp eq i8 %loadBr_425c93, 1
  br i1 %cmpBr_425c93, label %block_.L_425caa, label %block_.L_425c99

block_.L_425c99:                                  ; preds = %block_425c8b, %entry
  %loadMem_425c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %PC.i408
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC.i408
  %244 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_425c99, %struct.Memory** %MEMORY
  %loadMem_425ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RAX.i407
  %253 = load i64, i64* %PC.i406
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC.i406
  %255 = trunc i64 %252 to i32
  %256 = add i32 -1, %255
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX.i407, align 8
  %258 = icmp ult i32 %256, %255
  %259 = icmp ult i32 %256, -1
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %261, i8* %262, align 1
  %263 = and i32 %256, 255
  %264 = call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %267, i8* %268, align 1
  %269 = xor i64 -1, %252
  %270 = trunc i64 %269 to i32
  %271 = xor i32 %270, %256
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %274, i8* %275, align 1
  %276 = icmp eq i32 %256, 0
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %277, i8* %278, align 1
  %279 = lshr i32 %256, 31
  %280 = trunc i32 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %280, i8* %281, align 1
  %282 = lshr i32 %255, 31
  %283 = xor i32 %279, %282
  %284 = xor i32 %279, 1
  %285 = add i32 %283, %284
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %287, i8* %288, align 1
  store %struct.Memory* %loadMem_425ca0, %struct.Memory** %MEMORY
  %loadMem_425ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %294 to i32*
  %295 = load i32, i32* %EAX.i405
  %296 = zext i32 %295 to i64
  %297 = load i64, i64* %PC.i404
  %298 = add i64 %297, 7
  store i64 %298, i64* %PC.i404
  store i32 %295, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425ca3, %struct.Memory** %MEMORY
  br label %block_.L_425caa

block_.L_425caa:                                  ; preds = %block_.L_425c99, %block_425c8b
  %loadMem_425caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %PC.i402
  %306 = add i64 %305, 7
  store i64 %306, i64* %PC.i402
  %307 = load i32, i32* bitcast (%G_0x7ae420_type* @G_0x7ae420 to i32*)
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_425caa, %struct.Memory** %MEMORY
  %loadMem_425cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %314 to i32*
  %315 = load i32, i32* %EAX.i401
  %316 = zext i32 %315 to i64
  %317 = load i64, i64* %PC.i400
  %318 = add i64 %317, 7
  store i64 %318, i64* %PC.i400
  %319 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %320 = sub i32 %315, %319
  %321 = icmp ult i32 %315, %319
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %322, i8* %323, align 1
  %324 = and i32 %320, 255
  %325 = call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %328, i8* %329, align 1
  %330 = xor i32 %319, %315
  %331 = xor i32 %330, %320
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %334, i8* %335, align 1
  %336 = icmp eq i32 %320, 0
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %337, i8* %338, align 1
  %339 = lshr i32 %320, 31
  %340 = trunc i32 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %340, i8* %341, align 1
  %342 = lshr i32 %315, 31
  %343 = lshr i32 %319, 31
  %344 = xor i32 %343, %342
  %345 = xor i32 %339, %342
  %346 = add i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %348, i8* %349, align 1
  store %struct.Memory* %loadMem_425cb1, %struct.Memory** %MEMORY
  %loadMem_425cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %PC.i399
  %354 = add i64 %353, 35
  %355 = load i64, i64* %PC.i399
  %356 = add i64 %355, 6
  %357 = load i64, i64* %PC.i399
  %358 = add i64 %357, 6
  store i64 %358, i64* %PC.i399
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %360 = load i8, i8* %359, align 1
  store i8 %360, i8* %BRANCH_TAKEN, align 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %362 = icmp ne i8 %360, 0
  %363 = select i1 %362, i64 %354, i64 %356
  store i64 %363, i64* %361, align 8
  store %struct.Memory* %loadMem_425cb8, %struct.Memory** %MEMORY
  %loadBr_425cb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425cb8 = icmp eq i8 %loadBr_425cb8, 1
  br i1 %cmpBr_425cb8, label %block_.L_425cdb, label %block_425cbe

block_425cbe:                                     ; preds = %block_.L_425caa
  %loadMem_425cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %370 = bitcast %union.anon* %369 to %struct.anon.2*
  %AL.i398 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %370, i32 0, i32 0
  %371 = load i64, i64* %PC.i397
  %372 = add i64 %371, 2
  store i64 %372, i64* %PC.i397
  store i8 1, i8* %AL.i398, align 1
  store %struct.Memory* %loadMem_425cbe, %struct.Memory** %MEMORY
  %loadMem_425cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %PC.i395
  %380 = add i64 %379, 7
  store i64 %380, i64* %PC.i395
  %381 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RCX.i396, align 8
  store %struct.Memory* %loadMem_425cc0, %struct.Memory** %MEMORY
  %loadMem_425cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %ECX.i394 = bitcast %union.anon* %388 to i32*
  %389 = load i32, i32* %ECX.i394
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC.i393
  %392 = add i64 %391, 7
  store i64 %392, i64* %PC.i393
  store i32 %389, i32* bitcast (%G_0x7ae420_type* @G_0x7ae420 to i32*)
  store %struct.Memory* %loadMem_425cc7, %struct.Memory** %MEMORY
  %loadMem_425cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %399 = bitcast %union.anon* %398 to %struct.anon.2*
  %AL.i392 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %399, i32 0, i32 0
  %400 = load i8, i8* %AL.i392
  %401 = zext i8 %400 to i64
  %402 = load i64, i64* %PC.i391
  %403 = add i64 %402, 2
  store i64 %403, i64* %PC.i391
  %404 = and i64 1, %401
  %405 = trunc i64 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %406, align 1
  %407 = trunc i64 %404 to i32
  %408 = and i32 %407, 255
  %409 = call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %412, i8* %413, align 1
  %414 = icmp eq i8 %405, 0
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %415, i8* %416, align 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %417, align 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %418, align 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %419, align 1
  store %struct.Memory* %loadMem_425cce, %struct.Memory** %MEMORY
  %loadMem_425cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %PC.i390
  %424 = add i64 %423, 29
  %425 = load i64, i64* %PC.i390
  %426 = add i64 %425, 6
  %427 = load i64, i64* %PC.i390
  %428 = add i64 %427, 6
  store i64 %428, i64* %PC.i390
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %430 = load i8, i8* %429, align 1
  %431 = icmp eq i8 %430, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %BRANCH_TAKEN, align 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %434 = select i1 %431, i64 %424, i64 %426
  store i64 %434, i64* %433, align 8
  store %struct.Memory* %loadMem_425cd0, %struct.Memory** %MEMORY
  %loadBr_425cd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425cd0 = icmp eq i8 %loadBr_425cd0, 1
  br i1 %cmpBr_425cd0, label %block_.L_425ced, label %block_425cd6

block_425cd6:                                     ; preds = %block_425cbe
  %loadMem_425cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %PC.i389
  %439 = add i64 %438, 71
  %440 = load i64, i64* %PC.i389
  %441 = add i64 %440, 5
  store i64 %441, i64* %PC.i389
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %439, i64* %442, align 8
  store %struct.Memory* %loadMem_425cd6, %struct.Memory** %MEMORY
  br label %block_.L_425d1d

block_.L_425cdb:                                  ; preds = %block_.L_425caa
  %loadMem_425cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %448 to i32*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %RAX.i388
  %453 = load i32, i32* %EAX.i387
  %454 = zext i32 %453 to i64
  %455 = load i64, i64* %PC.i386
  %456 = add i64 %455, 2
  store i64 %456, i64* %PC.i386
  %457 = xor i64 %454, %452
  %458 = trunc i64 %457 to i32
  %459 = and i64 %457, 4294967295
  store i64 %459, i64* %RAX.i388, align 8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %460, align 1
  %461 = and i32 %458, 255
  %462 = call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %465, i8* %466, align 1
  %467 = icmp eq i32 %458, 0
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %468, i8* %469, align 1
  %470 = lshr i32 %458, 31
  %471 = trunc i32 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %471, i8* %472, align 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %473, align 1
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %474, align 1
  store %struct.Memory* %loadMem_425cdb, %struct.Memory** %MEMORY
  %loadMem_425cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %481 = bitcast %union.anon* %480 to %struct.anon.2*
  %AL.i384 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %481, i32 0, i32 0
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 5
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %485 = bitcast %union.anon* %484 to %struct.anon.2*
  %CL.i385 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %485, i32 0, i32 0
  %486 = load i8, i8* %AL.i384
  %487 = zext i8 %486 to i64
  %488 = load i64, i64* %PC.i383
  %489 = add i64 %488, 2
  store i64 %489, i64* %PC.i383
  store i8 %486, i8* %CL.i385, align 1
  store %struct.Memory* %loadMem_425cdd, %struct.Memory** %MEMORY
  %loadMem_425cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 5
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %496 = bitcast %union.anon* %495 to %struct.anon.2*
  %CL.i382 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %496, i32 0, i32 0
  %497 = load i8, i8* %CL.i382
  %498 = zext i8 %497 to i64
  %499 = load i64, i64* %PC.i381
  %500 = add i64 %499, 3
  store i64 %500, i64* %PC.i381
  %501 = and i64 1, %498
  %502 = trunc i64 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %503, align 1
  %504 = trunc i64 %501 to i32
  %505 = and i32 %504, 255
  %506 = call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %509, i8* %510, align 1
  %511 = icmp eq i8 %502, 0
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %512, i8* %513, align 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %514, align 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %515, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %516, align 1
  store %struct.Memory* %loadMem_425cdf, %struct.Memory** %MEMORY
  %loadMem_425ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %519 to i64*
  %520 = load i64, i64* %PC.i380
  %521 = add i64 %520, 11
  %522 = load i64, i64* %PC.i380
  %523 = add i64 %522, 6
  %524 = load i64, i64* %PC.i380
  %525 = add i64 %524, 6
  store i64 %525, i64* %PC.i380
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %527 = load i8, i8* %526, align 1
  %528 = icmp eq i8 %527, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %BRANCH_TAKEN, align 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %531 = select i1 %528, i64 %521, i64 %523
  store i64 %531, i64* %530, align 8
  store %struct.Memory* %loadMem_425ce2, %struct.Memory** %MEMORY
  %loadBr_425ce2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425ce2 = icmp eq i8 %loadBr_425ce2, 1
  br i1 %cmpBr_425ce2, label %block_.L_425ced, label %block_425ce8

block_425ce8:                                     ; preds = %block_.L_425cdb
  %loadMem_425ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %PC.i379
  %536 = add i64 %535, 53
  %537 = load i64, i64* %PC.i379
  %538 = add i64 %537, 5
  store i64 %538, i64* %PC.i379
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %536, i64* %539, align 8
  store %struct.Memory* %loadMem_425ce8, %struct.Memory** %MEMORY
  br label %block_.L_425d1d

block_.L_425ced:                                  ; preds = %block_.L_425cdb, %block_425cbe
  %loadMem_425ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 11
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %EDI.i377 = bitcast %union.anon* %545 to i32*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 11
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RDI.i378 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RDI.i378
  %550 = load i32, i32* %EDI.i377
  %551 = zext i32 %550 to i64
  %552 = load i64, i64* %PC.i376
  %553 = add i64 %552, 2
  store i64 %553, i64* %PC.i376
  %554 = xor i64 %551, %549
  %555 = trunc i64 %554 to i32
  %556 = and i64 %554, 4294967295
  store i64 %556, i64* %RDI.i378, align 8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %557, align 1
  %558 = and i32 %555, 255
  %559 = call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %562, i8* %563, align 1
  %564 = icmp eq i32 %555, 0
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %565, i8* %566, align 1
  %567 = lshr i32 %555, 31
  %568 = trunc i32 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %568, i8* %569, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %570, align 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %571, align 1
  store %struct.Memory* %loadMem_425ced, %struct.Memory** %MEMORY
  %loadMem1_425cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %574 to i64*
  %575 = load i64, i64* %PC.i375
  %576 = add i64 %575, 353889
  %577 = load i64, i64* %PC.i375
  %578 = add i64 %577, 5
  %579 = load i64, i64* %PC.i375
  %580 = add i64 %579, 5
  store i64 %580, i64* %PC.i375
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = add i64 %582, -8
  %584 = inttoptr i64 %583 to i64*
  store i64 %578, i64* %584
  store i64 %583, i64* %581, align 8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %576, i64* %585, align 8
  store %struct.Memory* %loadMem1_425cef, %struct.Memory** %MEMORY
  %loadMem2_425cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425cef = load i64, i64* %3
  %call2_425cef = call %struct.Memory* @sub_47c350.start_timer(%struct.State* %0, i64 %loadPC_425cef, %struct.Memory* %loadMem2_425cef)
  store %struct.Memory* %call2_425cef, %struct.Memory** %MEMORY
  %loadMem1_425cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %PC.i374
  %590 = add i64 %589, 394300
  %591 = load i64, i64* %PC.i374
  %592 = add i64 %591, 5
  %593 = load i64, i64* %PC.i374
  %594 = add i64 %593, 5
  store i64 %594, i64* %PC.i374
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %596 = load i64, i64* %595, align 8
  %597 = add i64 %596, -8
  %598 = inttoptr i64 %597 to i64*
  store i64 %592, i64* %598
  store i64 %597, i64* %595, align 8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %590, i64* %599, align 8
  store %struct.Memory* %loadMem1_425cf4, %struct.Memory** %MEMORY
  %loadMem2_425cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425cf4 = load i64, i64* %3
  %call2_425cf4 = call %struct.Memory* @sub_486130.make_worms(%struct.State* %0, i64 %loadPC_425cf4, %struct.Memory* %loadMem2_425cf4)
  store %struct.Memory* %call2_425cf4, %struct.Memory** %MEMORY
  %loadMem_425cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 11
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %EDI.i372 = bitcast %union.anon* %605 to i32*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 11
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RDI.i373 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RDI.i373
  %610 = load i32, i32* %EDI.i372
  %611 = zext i32 %610 to i64
  %612 = load i64, i64* %PC.i371
  %613 = add i64 %612, 2
  store i64 %613, i64* %PC.i371
  %614 = xor i64 %611, %609
  %615 = trunc i64 %614 to i32
  %616 = and i64 %614, 4294967295
  store i64 %616, i64* %RDI.i373, align 8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %617, align 1
  %618 = and i32 %615, 255
  %619 = call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %622, i8* %623, align 1
  %624 = icmp eq i32 %615, 0
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %625, i8* %626, align 1
  %627 = lshr i32 %615, 31
  %628 = trunc i32 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %628, i8* %629, align 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %630, align 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %631, align 1
  store %struct.Memory* %loadMem_425cf9, %struct.Memory** %MEMORY
  %loadMem_425cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 9
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RSI.i370 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %PC.i369
  %639 = add i64 %638, 10
  store i64 %639, i64* %PC.i369
  store i64 ptrtoint (%G__0x57bf2c_type* @G__0x57bf2c to i64), i64* %RSI.i370, align 8
  store %struct.Memory* %loadMem_425cfb, %struct.Memory** %MEMORY
  %loadMem_425d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 33
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %643, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %644 to %"class.std::bitset"*
  %645 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %646 = load i64, i64* %PC.i368
  %647 = add i64 %646, ptrtoint (%G_0xbd253__rip__type* @G_0xbd253__rip_ to i64)
  %648 = load i64, i64* %PC.i368
  %649 = add i64 %648, 8
  store i64 %649, i64* %PC.i368
  %650 = inttoptr i64 %647 to double*
  %651 = load double, double* %650
  %652 = bitcast i8* %645 to double*
  store double %651, double* %652, align 1
  %653 = getelementptr inbounds i8, i8* %645, i64 8
  %654 = bitcast i8* %653 to double*
  store double 0.000000e+00, double* %654, align 1
  store %struct.Memory* %loadMem_425d05, %struct.Memory** %MEMORY
  %loadMem_425d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 11
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %660 to i32*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i367
  %665 = sub i64 %664, 16
  %666 = load i32, i32* %EDI.i
  %667 = zext i32 %666 to i64
  %668 = load i64, i64* %PC.i366
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC.i366
  %670 = inttoptr i64 %665 to i32*
  store i32 %666, i32* %670
  store %struct.Memory* %loadMem_425d0d, %struct.Memory** %MEMORY
  %loadMem_425d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 7
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 15
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RBP.i365
  %681 = sub i64 %680, 16
  %682 = load i64, i64* %PC.i363
  %683 = add i64 %682, 3
  store i64 %683, i64* %PC.i363
  %684 = inttoptr i64 %681 to i32*
  %685 = load i32, i32* %684
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_425d10, %struct.Memory** %MEMORY
  %loadMem1_425d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %PC.i362
  %691 = add i64 %690, 353981
  %692 = load i64, i64* %PC.i362
  %693 = add i64 %692, 5
  %694 = load i64, i64* %PC.i362
  %695 = add i64 %694, 5
  store i64 %695, i64* %PC.i362
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %697 = load i64, i64* %696, align 8
  %698 = add i64 %697, -8
  %699 = inttoptr i64 %698 to i64*
  store i64 %693, i64* %699
  store i64 %698, i64* %696, align 8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %691, i64* %700, align 8
  store %struct.Memory* %loadMem1_425d13, %struct.Memory** %MEMORY
  %loadMem2_425d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d13 = load i64, i64* %3
  %call2_425d13 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64 %loadPC_425d13, %struct.Memory* %loadMem2_425d13)
  store %struct.Memory* %call2_425d13, %struct.Memory** %MEMORY
  %loadMem_425d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 15
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %708 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %707, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %708 to %union.vec128_t*
  %709 = load i64, i64* %RBP.i361
  %710 = sub i64 %709, 24
  %711 = bitcast %union.vec128_t* %XMM0.i to i8*
  %712 = load i64, i64* %PC.i360
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC.i360
  %714 = bitcast i8* %711 to double*
  %715 = load double, double* %714, align 1
  %716 = inttoptr i64 %710 to double*
  store double %715, double* %716
  store %struct.Memory* %loadMem_425d18, %struct.Memory** %MEMORY
  br label %block_.L_425d1d

block_.L_425d1d:                                  ; preds = %block_.L_425ced, %block_425ce8, %block_425cd6
  %loadMem_425d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i359
  %724 = sub i64 %723, 8
  %725 = load i64, i64* %PC.i358
  %726 = add i64 %725, 4
  store i64 %726, i64* %PC.i358
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727
  %729 = sub i32 %728, 1
  %730 = icmp ult i32 %728, 1
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %731, i8* %732, align 1
  %733 = and i32 %729, 255
  %734 = call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %737, i8* %738, align 1
  %739 = xor i32 %728, 1
  %740 = xor i32 %739, %729
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %743, i8* %744, align 1
  %745 = icmp eq i32 %729, 0
  %746 = zext i1 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %746, i8* %747, align 1
  %748 = lshr i32 %729, 31
  %749 = trunc i32 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %749, i8* %750, align 1
  %751 = lshr i32 %728, 31
  %752 = xor i32 %748, %751
  %753 = add i32 %752, %751
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %755, i8* %756, align 1
  store %struct.Memory* %loadMem_425d1d, %struct.Memory** %MEMORY
  %loadMem_425d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %PC.i357
  %761 = add i64 %760, 80
  %762 = load i64, i64* %PC.i357
  %763 = add i64 %762, 6
  %764 = load i64, i64* %PC.i357
  %765 = add i64 %764, 6
  store i64 %765, i64* %PC.i357
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %767 = load i8, i8* %766, align 1
  %768 = icmp eq i8 %767, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %BRANCH_TAKEN, align 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %771 = select i1 %768, i64 %761, i64 %763
  store i64 %771, i64* %770, align 8
  store %struct.Memory* %loadMem_425d21, %struct.Memory** %MEMORY
  %loadBr_425d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d21 = icmp eq i8 %loadBr_425d21, 1
  br i1 %cmpBr_425d21, label %block_.L_425d71, label %block_425d27

block_425d27:                                     ; preds = %block_.L_425d1d
  %loadMem_425d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 1
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 15
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %RBP.i356
  %782 = sub i64 %781, 12
  %783 = load i64, i64* %PC.i354
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC.i354
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_425d27, %struct.Memory** %MEMORY
  %loadMem_425d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %793 to i32*
  %794 = load i32, i32* %EAX.i353
  %795 = zext i32 %794 to i64
  %796 = load i64, i64* %PC.i352
  %797 = add i64 %796, 7
  store i64 %797, i64* %PC.i352
  store i32 %794, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425d2a, %struct.Memory** %MEMORY
  %loadMem1_425d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %PC.i351
  %802 = add i64 %801, -118785
  %803 = load i64, i64* %PC.i351
  %804 = add i64 %803, 5
  %805 = load i64, i64* %PC.i351
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC.i351
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %808 = load i64, i64* %807, align 8
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %804, i64* %810
  store i64 %809, i64* %807, align 8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %802, i64* %811, align 8
  store %struct.Memory* %loadMem1_425d31, %struct.Memory** %MEMORY
  %loadMem2_425d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d31 = load i64, i64* %3
  %call2_425d31 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_425d31, %struct.Memory* %loadMem2_425d31)
  store %struct.Memory* %call2_425d31, %struct.Memory** %MEMORY
  %loadMem_425d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %EAX.i350 = bitcast %union.anon* %817 to i32*
  %818 = load i32, i32* %EAX.i350
  %819 = zext i32 %818 to i64
  %820 = load i64, i64* %PC.i349
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC.i349
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %822, align 1
  %823 = and i32 %818, 255
  %824 = call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %827, i8* %828, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %829, align 1
  %830 = icmp eq i32 %818, 0
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %831, i8* %832, align 1
  %833 = lshr i32 %818, 31
  %834 = trunc i32 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %834, i8* %835, align 1
  %836 = lshr i32 %818, 31
  %837 = xor i32 %833, %836
  %838 = add i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %840, i8* %841, align 1
  store %struct.Memory* %loadMem_425d36, %struct.Memory** %MEMORY
  %loadMem_425d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %PC.i348
  %846 = add i64 %845, 11
  %847 = load i64, i64* %PC.i348
  %848 = add i64 %847, 6
  %849 = load i64, i64* %PC.i348
  %850 = add i64 %849, 6
  store i64 %850, i64* %PC.i348
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %852 = load i8, i8* %851, align 1
  %853 = icmp ne i8 %852, 0
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %855 = load i8, i8* %854, align 1
  %856 = icmp ne i8 %855, 0
  %857 = xor i1 %853, %856
  %858 = xor i1 %857, true
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %BRANCH_TAKEN, align 1
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %861 = select i1 %857, i64 %848, i64 %846
  store i64 %861, i64* %860, align 8
  store %struct.Memory* %loadMem_425d39, %struct.Memory** %MEMORY
  %loadBr_425d39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d39 = icmp eq i8 %loadBr_425d39, 1
  br i1 %cmpBr_425d39, label %block_.L_425d44, label %block_425d3f

block_425d3f:                                     ; preds = %block_425d27
  %loadMem_425d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %PC.i347
  %866 = add i64 %865, 45
  %867 = load i64, i64* %PC.i347
  %868 = add i64 %867, 5
  store i64 %868, i64* %PC.i347
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %866, i64* %869, align 8
  store %struct.Memory* %loadMem_425d3f, %struct.Memory** %MEMORY
  br label %block_.L_425d6c

block_.L_425d44:                                  ; preds = %block_425d27
  %loadMem_425d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 11
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RDI.i346 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %PC.i345
  %877 = add i64 %876, 10
  store i64 %877, i64* %PC.i345
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i346, align 8
  store %struct.Memory* %loadMem_425d44, %struct.Memory** %MEMORY
  %loadMem_425d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 9
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RSI.i344 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %PC.i343
  %885 = add i64 %884, 5
  store i64 %885, i64* %PC.i343
  store i64 130, i64* %RSI.i344, align 8
  store %struct.Memory* %loadMem_425d4e, %struct.Memory** %MEMORY
  %loadMem_425d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 7
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %PC.i341
  %893 = add i64 %892, 10
  store i64 %893, i64* %PC.i341
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i342, align 8
  store %struct.Memory* %loadMem_425d53, %struct.Memory** %MEMORY
  %loadMem_425d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %PC.i339
  %901 = add i64 %900, 5
  store i64 %901, i64* %PC.i339
  store i64 4294967295, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_425d5d, %struct.Memory** %MEMORY
  %loadMem_425d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 1
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %907 to i32*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 5
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %910 to i64*
  %911 = load i32, i32* %EAX.i337
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC.i336
  %914 = add i64 %913, 2
  store i64 %914, i64* %PC.i336
  %915 = and i64 %912, 4294967295
  store i64 %915, i64* %RCX.i338, align 8
  store %struct.Memory* %loadMem_425d62, %struct.Memory** %MEMORY
  %loadMem_425d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %921 to i32*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 17
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %R8D.i335 = bitcast %union.anon* %924 to i32*
  %925 = bitcast i32* %R8D.i335 to i64*
  %926 = load i32, i32* %EAX.i334
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i333
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i333
  %930 = and i64 %927, 4294967295
  store i64 %930, i64* %925, align 8
  store %struct.Memory* %loadMem_425d64, %struct.Memory** %MEMORY
  %loadMem1_425d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %PC.i332
  %935 = add i64 %934, 181033
  %936 = load i64, i64* %PC.i332
  %937 = add i64 %936, 5
  %938 = load i64, i64* %PC.i332
  %939 = add i64 %938, 5
  store i64 %939, i64* %PC.i332
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %941 = load i64, i64* %940, align 8
  %942 = add i64 %941, -8
  %943 = inttoptr i64 %942 to i64*
  store i64 %937, i64* %943
  store i64 %942, i64* %940, align 8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %935, i64* %944, align 8
  store %struct.Memory* %loadMem1_425d67, %struct.Memory** %MEMORY
  %loadMem2_425d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d67 = load i64, i64* %3
  %call2_425d67 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_425d67, %struct.Memory* %loadMem2_425d67)
  store %struct.Memory* %call2_425d67, %struct.Memory** %MEMORY
  br label %block_.L_425d6c

block_.L_425d6c:                                  ; preds = %block_.L_425d44, %block_425d3f
  %loadMem_425d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %PC.i331
  %949 = add i64 %948, 965
  %950 = load i64, i64* %PC.i331
  %951 = add i64 %950, 5
  store i64 %951, i64* %PC.i331
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %949, i64* %952, align 8
  store %struct.Memory* %loadMem_425d6c, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_425d71:                                  ; preds = %block_.L_425d1d
  %loadMem_425d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 11
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RDI.i330 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %PC.i329
  %960 = add i64 %959, 5
  store i64 %960, i64* %PC.i329
  store i64 3, i64* %RDI.i330, align 8
  store %struct.Memory* %loadMem_425d71, %struct.Memory** %MEMORY
  %loadMem1_425d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %PC.i328
  %965 = add i64 %964, -65286
  %966 = load i64, i64* %PC.i328
  %967 = add i64 %966, 5
  %968 = load i64, i64* %PC.i328
  %969 = add i64 %968, 5
  store i64 %969, i64* %PC.i328
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %971 = load i64, i64* %970, align 8
  %972 = add i64 %971, -8
  %973 = inttoptr i64 %972 to i64*
  store i64 %967, i64* %973
  store i64 %972, i64* %970, align 8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %965, i64* %974, align 8
  store %struct.Memory* %loadMem1_425d76, %struct.Memory** %MEMORY
  %loadMem2_425d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d76 = load i64, i64* %3
  %call2_425d76 = call %struct.Memory* @sub_415e70.stones_on_board(%struct.State* %0, i64 %loadPC_425d76, %struct.Memory* %loadMem2_425d76)
  store %struct.Memory* %call2_425d76, %struct.Memory** %MEMORY
  %loadMem_425d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %980 to i32*
  %981 = load i32, i32* %EAX.i327
  %982 = zext i32 %981 to i64
  %983 = load i64, i64* %PC.i326
  %984 = add i64 %983, 3
  store i64 %984, i64* %PC.i326
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %985, align 1
  %986 = and i32 %981, 255
  %987 = call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %990, i8* %991, align 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %992, align 1
  %993 = icmp eq i32 %981, 0
  %994 = zext i1 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %994, i8* %995, align 1
  %996 = lshr i32 %981, 31
  %997 = trunc i32 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %997, i8* %998, align 1
  %999 = lshr i32 %981, 31
  %1000 = xor i32 %996, %999
  %1001 = add i32 %1000, %999
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1003, i8* %1004, align 1
  store %struct.Memory* %loadMem_425d7b, %struct.Memory** %MEMORY
  %loadMem_425d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %PC.i325
  %1009 = add i64 %1008, 512
  %1010 = load i64, i64* %PC.i325
  %1011 = add i64 %1010, 6
  %1012 = load i64, i64* %PC.i325
  %1013 = add i64 %1012, 6
  store i64 %1013, i64* %PC.i325
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1015 = load i8, i8* %1014, align 1
  store i8 %1015, i8* %BRANCH_TAKEN, align 1
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1017 = icmp ne i8 %1015, 0
  %1018 = select i1 %1017, i64 %1009, i64 %1011
  store i64 %1018, i64* %1016, align 8
  store %struct.Memory* %loadMem_425d7e, %struct.Memory** %MEMORY
  %loadBr_425d7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d7e = icmp eq i8 %loadBr_425d7e, 1
  br i1 %cmpBr_425d7e, label %block_.L_425f7e, label %block_425d84

block_425d84:                                     ; preds = %block_.L_425d71
  %loadMem_425d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %PC.i323
  %1026 = add i64 %1025, 7
  store i64 %1026, i64* %PC.i323
  %1027 = load i32, i32* bitcast (%G_0x7ae424_type* @G_0x7ae424 to i32*)
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_425d84, %struct.Memory** %MEMORY
  %loadMem_425d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %EAX.i322 = bitcast %union.anon* %1034 to i32*
  %1035 = load i32, i32* %EAX.i322
  %1036 = zext i32 %1035 to i64
  %1037 = load i64, i64* %PC.i321
  %1038 = add i64 %1037, 7
  store i64 %1038, i64* %PC.i321
  %1039 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %1040 = sub i32 %1035, %1039
  %1041 = icmp ult i32 %1035, %1039
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1042, i8* %1043, align 1
  %1044 = and i32 %1040, 255
  %1045 = call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1048, i8* %1049, align 1
  %1050 = xor i32 %1039, %1035
  %1051 = xor i32 %1050, %1040
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1054, i8* %1055, align 1
  %1056 = icmp eq i32 %1040, 0
  %1057 = zext i1 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1057, i8* %1058, align 1
  %1059 = lshr i32 %1040, 31
  %1060 = trunc i32 %1059 to i8
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1060, i8* %1061, align 1
  %1062 = lshr i32 %1035, 31
  %1063 = lshr i32 %1039, 31
  %1064 = xor i32 %1063, %1062
  %1065 = xor i32 %1059, %1062
  %1066 = add i32 %1065, %1064
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1068, i8* %1069, align 1
  store %struct.Memory* %loadMem_425d8b, %struct.Memory** %MEMORY
  %loadMem_425d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %PC.i320
  %1074 = add i64 %1073, 35
  %1075 = load i64, i64* %PC.i320
  %1076 = add i64 %1075, 6
  %1077 = load i64, i64* %PC.i320
  %1078 = add i64 %1077, 6
  store i64 %1078, i64* %PC.i320
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1080 = load i8, i8* %1079, align 1
  store i8 %1080, i8* %BRANCH_TAKEN, align 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1082 = icmp ne i8 %1080, 0
  %1083 = select i1 %1082, i64 %1074, i64 %1076
  store i64 %1083, i64* %1081, align 8
  store %struct.Memory* %loadMem_425d92, %struct.Memory** %MEMORY
  %loadBr_425d92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d92 = icmp eq i8 %loadBr_425d92, 1
  br i1 %cmpBr_425d92, label %block_.L_425db5, label %block_425d98

block_425d98:                                     ; preds = %block_425d84
  %loadMem_425d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %1090 = bitcast %union.anon* %1089 to %struct.anon.2*
  %AL.i319 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1090, i32 0, i32 0
  %1091 = load i64, i64* %PC.i318
  %1092 = add i64 %1091, 2
  store i64 %1092, i64* %PC.i318
  store i8 1, i8* %AL.i319, align 1
  store %struct.Memory* %loadMem_425d98, %struct.Memory** %MEMORY
  %loadMem_425d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 5
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %PC.i316
  %1100 = add i64 %1099, 7
  store i64 %1100, i64* %PC.i316
  %1101 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RCX.i317, align 8
  store %struct.Memory* %loadMem_425d9a, %struct.Memory** %MEMORY
  %loadMem_425da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 5
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %ECX.i315 = bitcast %union.anon* %1108 to i32*
  %1109 = load i32, i32* %ECX.i315
  %1110 = zext i32 %1109 to i64
  %1111 = load i64, i64* %PC.i314
  %1112 = add i64 %1111, 7
  store i64 %1112, i64* %PC.i314
  store i32 %1109, i32* bitcast (%G_0x7ae424_type* @G_0x7ae424 to i32*)
  store %struct.Memory* %loadMem_425da1, %struct.Memory** %MEMORY
  %loadMem_425da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 1
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %1119 = bitcast %union.anon* %1118 to %struct.anon.2*
  %AL.i313 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1119, i32 0, i32 0
  %1120 = load i8, i8* %AL.i313
  %1121 = zext i8 %1120 to i64
  %1122 = load i64, i64* %PC.i312
  %1123 = add i64 %1122, 2
  store i64 %1123, i64* %PC.i312
  %1124 = and i64 1, %1121
  %1125 = trunc i64 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1126, align 1
  %1127 = trunc i64 %1124 to i32
  %1128 = and i32 %1127, 255
  %1129 = call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1132, i8* %1133, align 1
  %1134 = icmp eq i8 %1125, 0
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1135, i8* %1136, align 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1137, align 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1138, align 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1139, align 1
  store %struct.Memory* %loadMem_425da8, %struct.Memory** %MEMORY
  %loadMem_425daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %PC.i311
  %1144 = add i64 %1143, 29
  %1145 = load i64, i64* %PC.i311
  %1146 = add i64 %1145, 6
  %1147 = load i64, i64* %PC.i311
  %1148 = add i64 %1147, 6
  store i64 %1148, i64* %PC.i311
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1150 = load i8, i8* %1149, align 1
  %1151 = icmp eq i8 %1150, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %BRANCH_TAKEN, align 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1154 = select i1 %1151, i64 %1144, i64 %1146
  store i64 %1154, i64* %1153, align 8
  store %struct.Memory* %loadMem_425daa, %struct.Memory** %MEMORY
  %loadBr_425daa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425daa = icmp eq i8 %loadBr_425daa, 1
  br i1 %cmpBr_425daa, label %block_.L_425dc7, label %block_425db0

block_425db0:                                     ; preds = %block_425d98
  %loadMem_425db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %PC.i310
  %1159 = add i64 %1158, 28
  %1160 = load i64, i64* %PC.i310
  %1161 = add i64 %1160, 5
  store i64 %1161, i64* %PC.i310
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1159, i64* %1162, align 8
  store %struct.Memory* %loadMem_425db0, %struct.Memory** %MEMORY
  br label %block_.L_425dcc

block_.L_425db5:                                  ; preds = %block_425d84
  %loadMem_425db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %EAX.i308 = bitcast %union.anon* %1168 to i32*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RAX.i309
  %1173 = load i32, i32* %EAX.i308
  %1174 = zext i32 %1173 to i64
  %1175 = load i64, i64* %PC.i307
  %1176 = add i64 %1175, 2
  store i64 %1176, i64* %PC.i307
  %1177 = xor i64 %1174, %1172
  %1178 = trunc i64 %1177 to i32
  %1179 = and i64 %1177, 4294967295
  store i64 %1179, i64* %RAX.i309, align 8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1180, align 1
  %1181 = and i32 %1178, 255
  %1182 = call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1185, i8* %1186, align 1
  %1187 = icmp eq i32 %1178, 0
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1188, i8* %1189, align 1
  %1190 = lshr i32 %1178, 31
  %1191 = trunc i32 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1191, i8* %1192, align 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1193, align 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1194, align 1
  store %struct.Memory* %loadMem_425db5, %struct.Memory** %MEMORY
  %loadMem_425db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 1
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %1201 = bitcast %union.anon* %1200 to %struct.anon.2*
  %AL.i305 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1201, i32 0, i32 0
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 5
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %1205 = bitcast %union.anon* %1204 to %struct.anon.2*
  %CL.i306 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1205, i32 0, i32 0
  %1206 = load i8, i8* %AL.i305
  %1207 = zext i8 %1206 to i64
  %1208 = load i64, i64* %PC.i304
  %1209 = add i64 %1208, 2
  store i64 %1209, i64* %PC.i304
  store i8 %1206, i8* %CL.i306, align 1
  store %struct.Memory* %loadMem_425db7, %struct.Memory** %MEMORY
  %loadMem_425db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 5
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %1216 = bitcast %union.anon* %1215 to %struct.anon.2*
  %CL.i303 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1216, i32 0, i32 0
  %1217 = load i8, i8* %CL.i303
  %1218 = zext i8 %1217 to i64
  %1219 = load i64, i64* %PC.i302
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %PC.i302
  %1221 = and i64 1, %1218
  %1222 = trunc i64 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1223, align 1
  %1224 = trunc i64 %1221 to i32
  %1225 = and i32 %1224, 255
  %1226 = call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1229, i8* %1230, align 1
  %1231 = icmp eq i8 %1222, 0
  %1232 = zext i1 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1232, i8* %1233, align 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1234, align 1
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1235, align 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1236, align 1
  store %struct.Memory* %loadMem_425db9, %struct.Memory** %MEMORY
  %loadMem_425dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %PC.i301
  %1241 = add i64 %1240, 11
  %1242 = load i64, i64* %PC.i301
  %1243 = add i64 %1242, 6
  %1244 = load i64, i64* %PC.i301
  %1245 = add i64 %1244, 6
  store i64 %1245, i64* %PC.i301
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1247 = load i8, i8* %1246, align 1
  %1248 = icmp eq i8 %1247, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %BRANCH_TAKEN, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1251 = select i1 %1248, i64 %1241, i64 %1243
  store i64 %1251, i64* %1250, align 8
  store %struct.Memory* %loadMem_425dbc, %struct.Memory** %MEMORY
  %loadBr_425dbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425dbc = icmp eq i8 %loadBr_425dbc, 1
  br i1 %cmpBr_425dbc, label %block_.L_425dc7, label %block_425dc2

block_425dc2:                                     ; preds = %block_.L_425db5
  %loadMem_425dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 33
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %PC.i300
  %1256 = add i64 %1255, 10
  %1257 = load i64, i64* %PC.i300
  %1258 = add i64 %1257, 5
  store i64 %1258, i64* %PC.i300
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1256, i64* %1259, align 8
  store %struct.Memory* %loadMem_425dc2, %struct.Memory** %MEMORY
  br label %block_.L_425dcc

block_.L_425dc7:                                  ; preds = %block_.L_425db5, %block_425d98
  %loadMem1_425dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %PC.i299
  %1264 = add i64 %1263, 413241
  %1265 = load i64, i64* %PC.i299
  %1266 = add i64 %1265, 5
  %1267 = load i64, i64* %PC.i299
  %1268 = add i64 %1267, 5
  store i64 %1268, i64* %PC.i299
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1270 = load i64, i64* %1269, align 8
  %1271 = add i64 %1270, -8
  %1272 = inttoptr i64 %1271 to i64*
  store i64 %1266, i64* %1272
  store i64 %1271, i64* %1269, align 8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1264, i64* %1273, align 8
  store %struct.Memory* %loadMem1_425dc7, %struct.Memory** %MEMORY
  %loadMem2_425dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425dc7 = load i64, i64* %3
  %call2_425dc7 = call %struct.Memory* @sub_48ac00.compute_worm_influence(%struct.State* %0, i64 %loadPC_425dc7, %struct.Memory* %loadMem2_425dc7)
  store %struct.Memory* %call2_425dc7, %struct.Memory** %MEMORY
  br label %block_.L_425dcc

block_.L_425dcc:                                  ; preds = %block_.L_425dc7, %block_425dc2, %block_425db0
  %loadMem_425dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 15
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RBP.i298
  %1281 = sub i64 %1280, 8
  %1282 = load i64, i64* %PC.i297
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC.i297
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284
  %1286 = sub i32 %1285, 2
  %1287 = icmp ult i32 %1285, 2
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1288, i8* %1289, align 1
  %1290 = and i32 %1286, 255
  %1291 = call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1294, i8* %1295, align 1
  %1296 = xor i32 %1285, 2
  %1297 = xor i32 %1296, %1286
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1300, i8* %1301, align 1
  %1302 = icmp eq i32 %1286, 0
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1303, i8* %1304, align 1
  %1305 = lshr i32 %1286, 31
  %1306 = trunc i32 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1306, i8* %1307, align 1
  %1308 = lshr i32 %1285, 31
  %1309 = xor i32 %1305, %1308
  %1310 = add i32 %1309, %1308
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1312, i8* %1313, align 1
  store %struct.Memory* %loadMem_425dcc, %struct.Memory** %MEMORY
  %loadMem_425dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %PC.i296
  %1318 = add i64 %1317, 80
  %1319 = load i64, i64* %PC.i296
  %1320 = add i64 %1319, 6
  %1321 = load i64, i64* %PC.i296
  %1322 = add i64 %1321, 6
  store i64 %1322, i64* %PC.i296
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1324 = load i8, i8* %1323, align 1
  %1325 = icmp eq i8 %1324, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %BRANCH_TAKEN, align 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1328 = select i1 %1325, i64 %1318, i64 %1320
  store i64 %1328, i64* %1327, align 8
  store %struct.Memory* %loadMem_425dd0, %struct.Memory** %MEMORY
  %loadBr_425dd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425dd0 = icmp eq i8 %loadBr_425dd0, 1
  br i1 %cmpBr_425dd0, label %block_.L_425e20, label %block_425dd6

block_425dd6:                                     ; preds = %block_.L_425dcc
  %loadMem_425dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 1
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 15
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %RBP.i295
  %1339 = sub i64 %1338, 12
  %1340 = load i64, i64* %PC.i293
  %1341 = add i64 %1340, 3
  store i64 %1341, i64* %PC.i293
  %1342 = inttoptr i64 %1339 to i32*
  %1343 = load i32, i32* %1342
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_425dd6, %struct.Memory** %MEMORY
  %loadMem_425dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %1350 to i32*
  %1351 = load i32, i32* %EAX.i292
  %1352 = zext i32 %1351 to i64
  %1353 = load i64, i64* %PC.i291
  %1354 = add i64 %1353, 7
  store i64 %1354, i64* %PC.i291
  store i32 %1351, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425dd9, %struct.Memory** %MEMORY
  %loadMem1_425de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %PC.i290
  %1359 = add i64 %1358, -118960
  %1360 = load i64, i64* %PC.i290
  %1361 = add i64 %1360, 5
  %1362 = load i64, i64* %PC.i290
  %1363 = add i64 %1362, 5
  store i64 %1363, i64* %PC.i290
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1365 = load i64, i64* %1364, align 8
  %1366 = add i64 %1365, -8
  %1367 = inttoptr i64 %1366 to i64*
  store i64 %1361, i64* %1367
  store i64 %1366, i64* %1364, align 8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1359, i64* %1368, align 8
  store %struct.Memory* %loadMem1_425de0, %struct.Memory** %MEMORY
  %loadMem2_425de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425de0 = load i64, i64* %3
  %call2_425de0 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_425de0, %struct.Memory* %loadMem2_425de0)
  store %struct.Memory* %call2_425de0, %struct.Memory** %MEMORY
  %loadMem_425de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %1374 to i32*
  %1375 = load i32, i32* %EAX.i289
  %1376 = zext i32 %1375 to i64
  %1377 = load i64, i64* %PC.i288
  %1378 = add i64 %1377, 3
  store i64 %1378, i64* %PC.i288
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1379, align 1
  %1380 = and i32 %1375, 255
  %1381 = call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1384, i8* %1385, align 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1386, align 1
  %1387 = icmp eq i32 %1375, 0
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1388, i8* %1389, align 1
  %1390 = lshr i32 %1375, 31
  %1391 = trunc i32 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1391, i8* %1392, align 1
  %1393 = lshr i32 %1375, 31
  %1394 = xor i32 %1390, %1393
  %1395 = add i32 %1394, %1393
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1397, i8* %1398, align 1
  store %struct.Memory* %loadMem_425de5, %struct.Memory** %MEMORY
  %loadMem_425de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %PC.i287
  %1403 = add i64 %1402, 11
  %1404 = load i64, i64* %PC.i287
  %1405 = add i64 %1404, 6
  %1406 = load i64, i64* %PC.i287
  %1407 = add i64 %1406, 6
  store i64 %1407, i64* %PC.i287
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1409 = load i8, i8* %1408, align 1
  %1410 = icmp ne i8 %1409, 0
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1412 = load i8, i8* %1411, align 1
  %1413 = icmp ne i8 %1412, 0
  %1414 = xor i1 %1410, %1413
  %1415 = xor i1 %1414, true
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %BRANCH_TAKEN, align 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1418 = select i1 %1414, i64 %1405, i64 %1403
  store i64 %1418, i64* %1417, align 8
  store %struct.Memory* %loadMem_425de8, %struct.Memory** %MEMORY
  %loadBr_425de8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425de8 = icmp eq i8 %loadBr_425de8, 1
  br i1 %cmpBr_425de8, label %block_.L_425df3, label %block_425dee

block_425dee:                                     ; preds = %block_425dd6
  %loadMem_425dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i286
  %1423 = add i64 %1422, 45
  %1424 = load i64, i64* %PC.i286
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i286
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1426, align 8
  store %struct.Memory* %loadMem_425dee, %struct.Memory** %MEMORY
  br label %block_.L_425e1b

block_.L_425df3:                                  ; preds = %block_425dd6
  %loadMem_425df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 11
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %PC.i284
  %1434 = add i64 %1433, 10
  store i64 %1434, i64* %PC.i284
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_425df3, %struct.Memory** %MEMORY
  %loadMem_425dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 9
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RSI.i283 = bitcast %union.anon* %1440 to i64*
  %1441 = load i64, i64* %PC.i282
  %1442 = add i64 %1441, 5
  store i64 %1442, i64* %PC.i282
  store i64 139, i64* %RSI.i283, align 8
  store %struct.Memory* %loadMem_425dfd, %struct.Memory** %MEMORY
  %loadMem_425e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 7
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %PC.i280
  %1450 = add i64 %1449, 10
  store i64 %1450, i64* %PC.i280
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_425e02, %struct.Memory** %MEMORY
  %loadMem_425e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 1
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %PC.i278
  %1458 = add i64 %1457, 5
  store i64 %1458, i64* %PC.i278
  store i64 4294967295, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_425e0c, %struct.Memory** %MEMORY
  %loadMem_425e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 1
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %1464 to i32*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 5
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %1467 to i64*
  %1468 = load i32, i32* %EAX.i276
  %1469 = zext i32 %1468 to i64
  %1470 = load i64, i64* %PC.i275
  %1471 = add i64 %1470, 2
  store i64 %1471, i64* %PC.i275
  %1472 = and i64 %1469, 4294967295
  store i64 %1472, i64* %RCX.i277, align 8
  store %struct.Memory* %loadMem_425e11, %struct.Memory** %MEMORY
  %loadMem_425e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %EAX.i273 = bitcast %union.anon* %1478 to i32*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 17
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %R8D.i274 = bitcast %union.anon* %1481 to i32*
  %1482 = bitcast i32* %R8D.i274 to i64*
  %1483 = load i32, i32* %EAX.i273
  %1484 = zext i32 %1483 to i64
  %1485 = load i64, i64* %PC.i272
  %1486 = add i64 %1485, 3
  store i64 %1486, i64* %PC.i272
  %1487 = and i64 %1484, 4294967295
  store i64 %1487, i64* %1482, align 8
  store %struct.Memory* %loadMem_425e13, %struct.Memory** %MEMORY
  %loadMem1_425e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 33
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1490 to i64*
  %1491 = load i64, i64* %PC.i271
  %1492 = add i64 %1491, 180858
  %1493 = load i64, i64* %PC.i271
  %1494 = add i64 %1493, 5
  %1495 = load i64, i64* %PC.i271
  %1496 = add i64 %1495, 5
  store i64 %1496, i64* %PC.i271
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1498 = load i64, i64* %1497, align 8
  %1499 = add i64 %1498, -8
  %1500 = inttoptr i64 %1499 to i64*
  store i64 %1494, i64* %1500
  store i64 %1499, i64* %1497, align 8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1492, i64* %1501, align 8
  store %struct.Memory* %loadMem1_425e16, %struct.Memory** %MEMORY
  %loadMem2_425e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425e16 = load i64, i64* %3
  %call2_425e16 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_425e16, %struct.Memory* %loadMem2_425e16)
  store %struct.Memory* %call2_425e16, %struct.Memory** %MEMORY
  br label %block_.L_425e1b

block_.L_425e1b:                                  ; preds = %block_.L_425df3, %block_425dee
  %loadMem_425e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %PC.i270
  %1506 = add i64 %1505, 790
  %1507 = load i64, i64* %PC.i270
  %1508 = add i64 %1507, 5
  store i64 %1508, i64* %PC.i270
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1506, i64* %1509, align 8
  store %struct.Memory* %loadMem_425e1b, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_425e20:                                  ; preds = %block_.L_425dcc
  %loadMem_425e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 15
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RBP.i269
  %1517 = sub i64 %1516, 8
  %1518 = load i64, i64* %PC.i268
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %PC.i268
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520
  %1522 = sub i32 %1521, 3
  %1523 = icmp ult i32 %1521, 3
  %1524 = zext i1 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1524, i8* %1525, align 1
  %1526 = and i32 %1522, 255
  %1527 = call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1530, i8* %1531, align 1
  %1532 = xor i32 %1521, 3
  %1533 = xor i32 %1532, %1522
  %1534 = lshr i32 %1533, 4
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1536, i8* %1537, align 1
  %1538 = icmp eq i32 %1522, 0
  %1539 = zext i1 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1539, i8* %1540, align 1
  %1541 = lshr i32 %1522, 31
  %1542 = trunc i32 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1542, i8* %1543, align 1
  %1544 = lshr i32 %1521, 31
  %1545 = xor i32 %1541, %1544
  %1546 = add i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1548, i8* %1549, align 1
  store %struct.Memory* %loadMem_425e20, %struct.Memory** %MEMORY
  %loadMem_425e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %PC.i267
  %1554 = add i64 %1553, 163
  %1555 = load i64, i64* %PC.i267
  %1556 = add i64 %1555, 6
  %1557 = load i64, i64* %PC.i267
  %1558 = add i64 %1557, 6
  store i64 %1558, i64* %PC.i267
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1560 = load i8, i8* %1559, align 1
  %1561 = icmp eq i8 %1560, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %BRANCH_TAKEN, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1564 = select i1 %1561, i64 %1554, i64 %1556
  store i64 %1564, i64* %1563, align 8
  store %struct.Memory* %loadMem_425e24, %struct.Memory** %MEMORY
  %loadBr_425e24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e24 = icmp eq i8 %loadBr_425e24, 1
  br i1 %cmpBr_425e24, label %block_.L_425ec7, label %block_425e2a

block_425e2a:                                     ; preds = %block_.L_425e20
  %loadMem_425e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 1
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %PC.i265
  %1572 = add i64 %1571, 7
  store i64 %1572, i64* %PC.i265
  %1573 = load i32, i32* bitcast (%G_0x7ae428_type* @G_0x7ae428 to i32*)
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_425e2a, %struct.Memory** %MEMORY
  %loadMem_425e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %1580 to i32*
  %1581 = load i32, i32* %EAX.i264
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %PC.i263
  %1584 = add i64 %1583, 7
  store i64 %1584, i64* %PC.i263
  %1585 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %1586 = sub i32 %1581, %1585
  %1587 = icmp ult i32 %1581, %1585
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1588, i8* %1589, align 1
  %1590 = and i32 %1586, 255
  %1591 = call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1594, i8* %1595, align 1
  %1596 = xor i32 %1585, %1581
  %1597 = xor i32 %1596, %1586
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1600, i8* %1601, align 1
  %1602 = icmp eq i32 %1586, 0
  %1603 = zext i1 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1603, i8* %1604, align 1
  %1605 = lshr i32 %1586, 31
  %1606 = trunc i32 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i32 %1581, 31
  %1609 = lshr i32 %1585, 31
  %1610 = xor i32 %1609, %1608
  %1611 = xor i32 %1605, %1608
  %1612 = add i32 %1611, %1610
  %1613 = icmp eq i32 %1612, 2
  %1614 = zext i1 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1614, i8* %1615, align 1
  store %struct.Memory* %loadMem_425e31, %struct.Memory** %MEMORY
  %loadMem_425e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %PC.i262
  %1620 = add i64 %1619, 35
  %1621 = load i64, i64* %PC.i262
  %1622 = add i64 %1621, 6
  %1623 = load i64, i64* %PC.i262
  %1624 = add i64 %1623, 6
  store i64 %1624, i64* %PC.i262
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1626 = load i8, i8* %1625, align 1
  store i8 %1626, i8* %BRANCH_TAKEN, align 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1628 = icmp ne i8 %1626, 0
  %1629 = select i1 %1628, i64 %1620, i64 %1622
  store i64 %1629, i64* %1627, align 8
  store %struct.Memory* %loadMem_425e38, %struct.Memory** %MEMORY
  %loadBr_425e38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e38 = icmp eq i8 %loadBr_425e38, 1
  br i1 %cmpBr_425e38, label %block_.L_425e5b, label %block_425e3e

block_425e3e:                                     ; preds = %block_425e2a
  %loadMem_425e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 1
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %1636 = bitcast %union.anon* %1635 to %struct.anon.2*
  %AL.i261 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1636, i32 0, i32 0
  %1637 = load i64, i64* %PC.i260
  %1638 = add i64 %1637, 2
  store i64 %1638, i64* %PC.i260
  store i8 1, i8* %AL.i261, align 1
  store %struct.Memory* %loadMem_425e3e, %struct.Memory** %MEMORY
  %loadMem_425e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 5
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %PC.i258
  %1646 = add i64 %1645, 7
  store i64 %1646, i64* %PC.i258
  %1647 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %1648 = zext i32 %1647 to i64
  store i64 %1648, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_425e40, %struct.Memory** %MEMORY
  %loadMem_425e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 5
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %ECX.i257 = bitcast %union.anon* %1654 to i32*
  %1655 = load i32, i32* %ECX.i257
  %1656 = zext i32 %1655 to i64
  %1657 = load i64, i64* %PC.i256
  %1658 = add i64 %1657, 7
  store i64 %1658, i64* %PC.i256
  store i32 %1655, i32* bitcast (%G_0x7ae428_type* @G_0x7ae428 to i32*)
  store %struct.Memory* %loadMem_425e47, %struct.Memory** %MEMORY
  %loadMem_425e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 1
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %1665 = bitcast %union.anon* %1664 to %struct.anon.2*
  %AL.i255 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1665, i32 0, i32 0
  %1666 = load i8, i8* %AL.i255
  %1667 = zext i8 %1666 to i64
  %1668 = load i64, i64* %PC.i254
  %1669 = add i64 %1668, 2
  store i64 %1669, i64* %PC.i254
  %1670 = and i64 1, %1667
  %1671 = trunc i64 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1672, align 1
  %1673 = trunc i64 %1670 to i32
  %1674 = and i32 %1673, 255
  %1675 = call i32 @llvm.ctpop.i32(i32 %1674)
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = xor i8 %1677, 1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1678, i8* %1679, align 1
  %1680 = icmp eq i8 %1671, 0
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1681, i8* %1682, align 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1683, align 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1684, align 1
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1685, align 1
  store %struct.Memory* %loadMem_425e4e, %struct.Memory** %MEMORY
  %loadMem_425e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %PC.i253
  %1690 = add i64 %1689, 29
  %1691 = load i64, i64* %PC.i253
  %1692 = add i64 %1691, 6
  %1693 = load i64, i64* %PC.i253
  %1694 = add i64 %1693, 6
  store i64 %1694, i64* %PC.i253
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1696 = load i8, i8* %1695, align 1
  %1697 = icmp eq i8 %1696, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %BRANCH_TAKEN, align 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1700 = select i1 %1697, i64 %1690, i64 %1692
  store i64 %1700, i64* %1699, align 8
  store %struct.Memory* %loadMem_425e50, %struct.Memory** %MEMORY
  %loadBr_425e50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e50 = icmp eq i8 %loadBr_425e50, 1
  br i1 %cmpBr_425e50, label %block_.L_425e6d, label %block_425e56

block_425e56:                                     ; preds = %block_425e3e
  %loadMem_425e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i252
  %1705 = add i64 %1704, 39
  %1706 = load i64, i64* %PC.i252
  %1707 = add i64 %1706, 5
  store i64 %1707, i64* %PC.i252
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1705, i64* %1708, align 8
  store %struct.Memory* %loadMem_425e56, %struct.Memory** %MEMORY
  br label %block_.L_425e7d

block_.L_425e5b:                                  ; preds = %block_425e2a
  %loadMem_425e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 1
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %1714 to i32*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 1
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RAX.i251
  %1719 = load i32, i32* %EAX.i250
  %1720 = zext i32 %1719 to i64
  %1721 = load i64, i64* %PC.i249
  %1722 = add i64 %1721, 2
  store i64 %1722, i64* %PC.i249
  %1723 = xor i64 %1720, %1718
  %1724 = trunc i64 %1723 to i32
  %1725 = and i64 %1723, 4294967295
  store i64 %1725, i64* %RAX.i251, align 8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1726, align 1
  %1727 = and i32 %1724, 255
  %1728 = call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1731, i8* %1732, align 1
  %1733 = icmp eq i32 %1724, 0
  %1734 = zext i1 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1734, i8* %1735, align 1
  %1736 = lshr i32 %1724, 31
  %1737 = trunc i32 %1736 to i8
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1737, i8* %1738, align 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1739, align 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1740, align 1
  store %struct.Memory* %loadMem_425e5b, %struct.Memory** %MEMORY
  %loadMem_425e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 1
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %1747 = bitcast %union.anon* %1746 to %struct.anon.2*
  %AL.i247 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1747, i32 0, i32 0
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 5
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %1751 = bitcast %union.anon* %1750 to %struct.anon.2*
  %CL.i248 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1751, i32 0, i32 0
  %1752 = load i8, i8* %AL.i247
  %1753 = zext i8 %1752 to i64
  %1754 = load i64, i64* %PC.i246
  %1755 = add i64 %1754, 2
  store i64 %1755, i64* %PC.i246
  store i8 %1752, i8* %CL.i248, align 1
  store %struct.Memory* %loadMem_425e5d, %struct.Memory** %MEMORY
  %loadMem_425e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 5
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %1762 = bitcast %union.anon* %1761 to %struct.anon.2*
  %CL.i245 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1762, i32 0, i32 0
  %1763 = load i8, i8* %CL.i245
  %1764 = zext i8 %1763 to i64
  %1765 = load i64, i64* %PC.i244
  %1766 = add i64 %1765, 3
  store i64 %1766, i64* %PC.i244
  %1767 = and i64 1, %1764
  %1768 = trunc i64 %1767 to i8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1769, align 1
  %1770 = trunc i64 %1767 to i32
  %1771 = and i32 %1770, 255
  %1772 = call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1775, i8* %1776, align 1
  %1777 = icmp eq i8 %1768, 0
  %1778 = zext i1 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1778, i8* %1779, align 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1780, align 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1781, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1782, align 1
  store %struct.Memory* %loadMem_425e5f, %struct.Memory** %MEMORY
  %loadMem_425e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %PC.i243
  %1787 = add i64 %1786, 11
  %1788 = load i64, i64* %PC.i243
  %1789 = add i64 %1788, 6
  %1790 = load i64, i64* %PC.i243
  %1791 = add i64 %1790, 6
  store i64 %1791, i64* %PC.i243
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1793 = load i8, i8* %1792, align 1
  %1794 = icmp eq i8 %1793, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %BRANCH_TAKEN, align 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1797 = select i1 %1794, i64 %1787, i64 %1789
  store i64 %1797, i64* %1796, align 8
  store %struct.Memory* %loadMem_425e62, %struct.Memory** %MEMORY
  %loadBr_425e62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e62 = icmp eq i8 %loadBr_425e62, 1
  br i1 %cmpBr_425e62, label %block_.L_425e6d, label %block_425e68

block_425e68:                                     ; preds = %block_.L_425e5b
  %loadMem_425e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %PC.i242
  %1802 = add i64 %1801, 21
  %1803 = load i64, i64* %PC.i242
  %1804 = add i64 %1803, 5
  store i64 %1804, i64* %PC.i242
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1802, i64* %1805, align 8
  store %struct.Memory* %loadMem_425e68, %struct.Memory** %MEMORY
  br label %block_.L_425e7d

block_.L_425e6d:                                  ; preds = %block_.L_425e5b, %block_425e3e
  %loadMem_425e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 9
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %PC.i240
  %1813 = add i64 %1812, 5
  store i64 %1813, i64* %PC.i240
  store i64 1, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_425e6d, %struct.Memory** %MEMORY
  %loadMem_425e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 11
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RDI.i238 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 15
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %RBP.i239
  %1824 = sub i64 %1823, 4
  %1825 = load i64, i64* %PC.i237
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %PC.i237
  %1827 = inttoptr i64 %1824 to i32*
  %1828 = load i32, i32* %1827
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RDI.i238, align 8
  store %struct.Memory* %loadMem_425e72, %struct.Memory** %MEMORY
  %loadMem_425e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 7
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 15
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %1838 to i64*
  %1839 = load i64, i64* %RBP.i236
  %1840 = sub i64 %1839, 12
  %1841 = load i64, i64* %PC.i234
  %1842 = add i64 %1841, 3
  store i64 %1842, i64* %PC.i234
  %1843 = inttoptr i64 %1840 to i32*
  %1844 = load i32, i32* %1843
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RDX.i235, align 8
  store %struct.Memory* %loadMem_425e75, %struct.Memory** %MEMORY
  %loadMem1_425e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %PC.i233
  %1850 = add i64 %1849, -41592
  %1851 = load i64, i64* %PC.i233
  %1852 = add i64 %1851, 5
  %1853 = load i64, i64* %PC.i233
  %1854 = add i64 %1853, 5
  store i64 %1854, i64* %PC.i233
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1856 = load i64, i64* %1855, align 8
  %1857 = add i64 %1856, -8
  %1858 = inttoptr i64 %1857 to i64*
  store i64 %1852, i64* %1858
  store i64 %1857, i64* %1855, align 8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1850, i64* %1859, align 8
  store %struct.Memory* %loadMem1_425e78, %struct.Memory** %MEMORY
  %loadMem2_425e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425e78 = load i64, i64* %3
  %call2_425e78 = call %struct.Memory* @sub_41bc00.make_dragons(%struct.State* %0, i64 %loadPC_425e78, %struct.Memory* %loadMem2_425e78)
  store %struct.Memory* %call2_425e78, %struct.Memory** %MEMORY
  br label %block_.L_425e7d

block_.L_425e7d:                                  ; preds = %block_.L_425e6d, %block_425e68, %block_425e56
  %loadMem_425e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 1
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 15
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %RBP.i232
  %1870 = sub i64 %1869, 12
  %1871 = load i64, i64* %PC.i230
  %1872 = add i64 %1871, 3
  store i64 %1872, i64* %PC.i230
  %1873 = inttoptr i64 %1870 to i32*
  %1874 = load i32, i32* %1873
  %1875 = zext i32 %1874 to i64
  store i64 %1875, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_425e7d, %struct.Memory** %MEMORY
  %loadMem_425e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 1
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %1881 to i32*
  %1882 = load i32, i32* %EAX.i229
  %1883 = zext i32 %1882 to i64
  %1884 = load i64, i64* %PC.i228
  %1885 = add i64 %1884, 7
  store i64 %1885, i64* %PC.i228
  store i32 %1882, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425e80, %struct.Memory** %MEMORY
  %loadMem1_425e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %PC.i227
  %1890 = add i64 %1889, -119127
  %1891 = load i64, i64* %PC.i227
  %1892 = add i64 %1891, 5
  %1893 = load i64, i64* %PC.i227
  %1894 = add i64 %1893, 5
  store i64 %1894, i64* %PC.i227
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1896 = load i64, i64* %1895, align 8
  %1897 = add i64 %1896, -8
  %1898 = inttoptr i64 %1897 to i64*
  store i64 %1892, i64* %1898
  store i64 %1897, i64* %1895, align 8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1890, i64* %1899, align 8
  store %struct.Memory* %loadMem1_425e87, %struct.Memory** %MEMORY
  %loadMem2_425e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425e87 = load i64, i64* %3
  %call2_425e87 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_425e87, %struct.Memory* %loadMem2_425e87)
  store %struct.Memory* %call2_425e87, %struct.Memory** %MEMORY
  %loadMem_425e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %1905 to i32*
  %1906 = load i32, i32* %EAX.i226
  %1907 = zext i32 %1906 to i64
  %1908 = load i64, i64* %PC.i225
  %1909 = add i64 %1908, 3
  store i64 %1909, i64* %PC.i225
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1910, align 1
  %1911 = and i32 %1906, 255
  %1912 = call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1915, i8* %1916, align 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1917, align 1
  %1918 = icmp eq i32 %1906, 0
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1919, i8* %1920, align 1
  %1921 = lshr i32 %1906, 31
  %1922 = trunc i32 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1922, i8* %1923, align 1
  %1924 = lshr i32 %1906, 31
  %1925 = xor i32 %1921, %1924
  %1926 = add i32 %1925, %1924
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1928, i8* %1929, align 1
  store %struct.Memory* %loadMem_425e8c, %struct.Memory** %MEMORY
  %loadMem_425e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %PC.i224
  %1934 = add i64 %1933, 11
  %1935 = load i64, i64* %PC.i224
  %1936 = add i64 %1935, 6
  %1937 = load i64, i64* %PC.i224
  %1938 = add i64 %1937, 6
  store i64 %1938, i64* %PC.i224
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1940 = load i8, i8* %1939, align 1
  %1941 = icmp ne i8 %1940, 0
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1943 = load i8, i8* %1942, align 1
  %1944 = icmp ne i8 %1943, 0
  %1945 = xor i1 %1941, %1944
  %1946 = xor i1 %1945, true
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %BRANCH_TAKEN, align 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1949 = select i1 %1945, i64 %1936, i64 %1934
  store i64 %1949, i64* %1948, align 8
  store %struct.Memory* %loadMem_425e8f, %struct.Memory** %MEMORY
  %loadBr_425e8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e8f = icmp eq i8 %loadBr_425e8f, 1
  br i1 %cmpBr_425e8f, label %block_.L_425e9a, label %block_425e95

block_425e95:                                     ; preds = %block_.L_425e7d
  %loadMem_425e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %PC.i223
  %1954 = add i64 %1953, 45
  %1955 = load i64, i64* %PC.i223
  %1956 = add i64 %1955, 5
  store i64 %1956, i64* %PC.i223
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1954, i64* %1957, align 8
  store %struct.Memory* %loadMem_425e95, %struct.Memory** %MEMORY
  br label %block_.L_425ec2

block_.L_425e9a:                                  ; preds = %block_.L_425e7d
  %loadMem_425e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 11
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RDI.i222 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %PC.i221
  %1965 = add i64 %1964, 10
  store i64 %1965, i64* %PC.i221
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i222, align 8
  store %struct.Memory* %loadMem_425e9a, %struct.Memory** %MEMORY
  %loadMem_425ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 9
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RSI.i220 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %PC.i219
  %1973 = add i64 %1972, 5
  store i64 %1973, i64* %PC.i219
  store i64 147, i64* %RSI.i220, align 8
  store %struct.Memory* %loadMem_425ea4, %struct.Memory** %MEMORY
  %loadMem_425ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 7
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i217
  %1981 = add i64 %1980, 10
  store i64 %1981, i64* %PC.i217
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i218, align 8
  store %struct.Memory* %loadMem_425ea9, %struct.Memory** %MEMORY
  %loadMem_425eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 1
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i215
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC.i215
  store i64 4294967295, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_425eb3, %struct.Memory** %MEMORY
  %loadMem_425eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 1
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %1995 to i32*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 5
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %1998 to i64*
  %1999 = load i32, i32* %EAX.i213
  %2000 = zext i32 %1999 to i64
  %2001 = load i64, i64* %PC.i212
  %2002 = add i64 %2001, 2
  store i64 %2002, i64* %PC.i212
  %2003 = and i64 %2000, 4294967295
  store i64 %2003, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_425eb8, %struct.Memory** %MEMORY
  %loadMem_425eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 1
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %EAX.i210 = bitcast %union.anon* %2009 to i32*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 17
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %R8D.i211 = bitcast %union.anon* %2012 to i32*
  %2013 = bitcast i32* %R8D.i211 to i64*
  %2014 = load i32, i32* %EAX.i210
  %2015 = zext i32 %2014 to i64
  %2016 = load i64, i64* %PC.i209
  %2017 = add i64 %2016, 3
  store i64 %2017, i64* %PC.i209
  %2018 = and i64 %2015, 4294967295
  store i64 %2018, i64* %2013, align 8
  store %struct.Memory* %loadMem_425eba, %struct.Memory** %MEMORY
  %loadMem1_425ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2021 to i64*
  %2022 = load i64, i64* %PC.i208
  %2023 = add i64 %2022, 180691
  %2024 = load i64, i64* %PC.i208
  %2025 = add i64 %2024, 5
  %2026 = load i64, i64* %PC.i208
  %2027 = add i64 %2026, 5
  store i64 %2027, i64* %PC.i208
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2029 = load i64, i64* %2028, align 8
  %2030 = add i64 %2029, -8
  %2031 = inttoptr i64 %2030 to i64*
  store i64 %2025, i64* %2031
  store i64 %2030, i64* %2028, align 8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2023, i64* %2032, align 8
  store %struct.Memory* %loadMem1_425ebd, %struct.Memory** %MEMORY
  %loadMem2_425ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425ebd = load i64, i64* %3
  %call2_425ebd = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_425ebd, %struct.Memory* %loadMem2_425ebd)
  store %struct.Memory* %call2_425ebd, %struct.Memory** %MEMORY
  br label %block_.L_425ec2

block_.L_425ec2:                                  ; preds = %block_.L_425e9a, %block_425e95
  %loadMem_425ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %PC.i207
  %2037 = add i64 %2036, 623
  %2038 = load i64, i64* %PC.i207
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i207
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2037, i64* %2040, align 8
  store %struct.Memory* %loadMem_425ec2, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_425ec7:                                  ; preds = %block_.L_425e20
  %loadMem_425ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %PC.i205
  %2048 = add i64 %2047, 7
  store i64 %2048, i64* %PC.i205
  %2049 = load i32, i32* bitcast (%G_0x7ae42c_type* @G_0x7ae42c to i32*)
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_425ec7, %struct.Memory** %MEMORY
  %loadMem_425ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 1
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %2056 to i32*
  %2057 = load i32, i32* %EAX.i204
  %2058 = zext i32 %2057 to i64
  %2059 = load i64, i64* %PC.i203
  %2060 = add i64 %2059, 7
  store i64 %2060, i64* %PC.i203
  %2061 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %2062 = sub i32 %2057, %2061
  %2063 = icmp ult i32 %2057, %2061
  %2064 = zext i1 %2063 to i8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2064, i8* %2065, align 1
  %2066 = and i32 %2062, 255
  %2067 = call i32 @llvm.ctpop.i32(i32 %2066)
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  %2070 = xor i8 %2069, 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2070, i8* %2071, align 1
  %2072 = xor i32 %2061, %2057
  %2073 = xor i32 %2072, %2062
  %2074 = lshr i32 %2073, 4
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2076, i8* %2077, align 1
  %2078 = icmp eq i32 %2062, 0
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i32 %2062, 31
  %2082 = trunc i32 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2082, i8* %2083, align 1
  %2084 = lshr i32 %2057, 31
  %2085 = lshr i32 %2061, 31
  %2086 = xor i32 %2085, %2084
  %2087 = xor i32 %2081, %2084
  %2088 = add i32 %2087, %2086
  %2089 = icmp eq i32 %2088, 2
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2090, i8* %2091, align 1
  store %struct.Memory* %loadMem_425ece, %struct.Memory** %MEMORY
  %loadMem_425ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2094 to i64*
  %2095 = load i64, i64* %PC.i202
  %2096 = add i64 %2095, 35
  %2097 = load i64, i64* %PC.i202
  %2098 = add i64 %2097, 6
  %2099 = load i64, i64* %PC.i202
  %2100 = add i64 %2099, 6
  store i64 %2100, i64* %PC.i202
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2102 = load i8, i8* %2101, align 1
  store i8 %2102, i8* %BRANCH_TAKEN, align 1
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2104 = icmp ne i8 %2102, 0
  %2105 = select i1 %2104, i64 %2096, i64 %2098
  store i64 %2105, i64* %2103, align 8
  store %struct.Memory* %loadMem_425ed5, %struct.Memory** %MEMORY
  %loadBr_425ed5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425ed5 = icmp eq i8 %loadBr_425ed5, 1
  br i1 %cmpBr_425ed5, label %block_.L_425ef8, label %block_425edb

block_425edb:                                     ; preds = %block_.L_425ec7
  %loadMem_425edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %2112 = bitcast %union.anon* %2111 to %struct.anon.2*
  %AL.i201 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2112, i32 0, i32 0
  %2113 = load i64, i64* %PC.i200
  %2114 = add i64 %2113, 2
  store i64 %2114, i64* %PC.i200
  store i8 1, i8* %AL.i201, align 1
  store %struct.Memory* %loadMem_425edb, %struct.Memory** %MEMORY
  %loadMem_425edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 5
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %PC.i198
  %2122 = add i64 %2121, 7
  store i64 %2122, i64* %PC.i198
  %2123 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_425edd, %struct.Memory** %MEMORY
  %loadMem_425ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 5
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %ECX.i197 = bitcast %union.anon* %2130 to i32*
  %2131 = load i32, i32* %ECX.i197
  %2132 = zext i32 %2131 to i64
  %2133 = load i64, i64* %PC.i196
  %2134 = add i64 %2133, 7
  store i64 %2134, i64* %PC.i196
  store i32 %2131, i32* bitcast (%G_0x7ae42c_type* @G_0x7ae42c to i32*)
  store %struct.Memory* %loadMem_425ee4, %struct.Memory** %MEMORY
  %loadMem_425eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 1
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %2141 = bitcast %union.anon* %2140 to %struct.anon.2*
  %AL.i195 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2141, i32 0, i32 0
  %2142 = load i8, i8* %AL.i195
  %2143 = zext i8 %2142 to i64
  %2144 = load i64, i64* %PC.i194
  %2145 = add i64 %2144, 2
  store i64 %2145, i64* %PC.i194
  %2146 = and i64 1, %2143
  %2147 = trunc i64 %2146 to i8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2148, align 1
  %2149 = trunc i64 %2146 to i32
  %2150 = and i32 %2149, 255
  %2151 = call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2154, i8* %2155, align 1
  %2156 = icmp eq i8 %2147, 0
  %2157 = zext i1 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2157, i8* %2158, align 1
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2159, align 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2160, align 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2161, align 1
  store %struct.Memory* %loadMem_425eeb, %struct.Memory** %MEMORY
  %loadMem_425eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %PC.i193
  %2166 = add i64 %2165, 29
  %2167 = load i64, i64* %PC.i193
  %2168 = add i64 %2167, 6
  %2169 = load i64, i64* %PC.i193
  %2170 = add i64 %2169, 6
  store i64 %2170, i64* %PC.i193
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2172 = load i8, i8* %2171, align 1
  %2173 = icmp eq i8 %2172, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %BRANCH_TAKEN, align 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2176 = select i1 %2173, i64 %2166, i64 %2168
  store i64 %2176, i64* %2175, align 8
  store %struct.Memory* %loadMem_425eed, %struct.Memory** %MEMORY
  %loadBr_425eed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425eed = icmp eq i8 %loadBr_425eed, 1
  br i1 %cmpBr_425eed, label %block_.L_425f0a, label %block_425ef3

block_425ef3:                                     ; preds = %block_425edb
  %loadMem_425ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %PC.i192
  %2181 = add i64 %2180, 50
  %2182 = load i64, i64* %PC.i192
  %2183 = add i64 %2182, 5
  store i64 %2183, i64* %PC.i192
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2181, i64* %2184, align 8
  store %struct.Memory* %loadMem_425ef3, %struct.Memory** %MEMORY
  br label %block_.L_425f25

block_.L_425ef8:                                  ; preds = %block_.L_425ec7
  %loadMem_425ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 1
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %EAX.i190 = bitcast %union.anon* %2190 to i32*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 1
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %RAX.i191
  %2195 = load i32, i32* %EAX.i190
  %2196 = zext i32 %2195 to i64
  %2197 = load i64, i64* %PC.i189
  %2198 = add i64 %2197, 2
  store i64 %2198, i64* %PC.i189
  %2199 = xor i64 %2196, %2194
  %2200 = trunc i64 %2199 to i32
  %2201 = and i64 %2199, 4294967295
  store i64 %2201, i64* %RAX.i191, align 8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2202, align 1
  %2203 = and i32 %2200, 255
  %2204 = call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2207, i8* %2208, align 1
  %2209 = icmp eq i32 %2200, 0
  %2210 = zext i1 %2209 to i8
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2210, i8* %2211, align 1
  %2212 = lshr i32 %2200, 31
  %2213 = trunc i32 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2213, i8* %2214, align 1
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2215, align 1
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2216, align 1
  store %struct.Memory* %loadMem_425ef8, %struct.Memory** %MEMORY
  %loadMem_425efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %2223 = bitcast %union.anon* %2222 to %struct.anon.2*
  %AL.i187 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2223, i32 0, i32 0
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 5
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %2227 = bitcast %union.anon* %2226 to %struct.anon.2*
  %CL.i188 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2227, i32 0, i32 0
  %2228 = load i8, i8* %AL.i187
  %2229 = zext i8 %2228 to i64
  %2230 = load i64, i64* %PC.i186
  %2231 = add i64 %2230, 2
  store i64 %2231, i64* %PC.i186
  store i8 %2228, i8* %CL.i188, align 1
  store %struct.Memory* %loadMem_425efa, %struct.Memory** %MEMORY
  %loadMem_425efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 5
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %2238 = bitcast %union.anon* %2237 to %struct.anon.2*
  %CL.i185 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2238, i32 0, i32 0
  %2239 = load i8, i8* %CL.i185
  %2240 = zext i8 %2239 to i64
  %2241 = load i64, i64* %PC.i184
  %2242 = add i64 %2241, 3
  store i64 %2242, i64* %PC.i184
  %2243 = and i64 1, %2240
  %2244 = trunc i64 %2243 to i8
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2245, align 1
  %2246 = trunc i64 %2243 to i32
  %2247 = and i32 %2246, 255
  %2248 = call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2251, i8* %2252, align 1
  %2253 = icmp eq i8 %2244, 0
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2254, i8* %2255, align 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2256, align 1
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2257, align 1
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2258, align 1
  store %struct.Memory* %loadMem_425efc, %struct.Memory** %MEMORY
  %loadMem_425eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %PC.i183
  %2263 = add i64 %2262, 11
  %2264 = load i64, i64* %PC.i183
  %2265 = add i64 %2264, 6
  %2266 = load i64, i64* %PC.i183
  %2267 = add i64 %2266, 6
  store i64 %2267, i64* %PC.i183
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2269 = load i8, i8* %2268, align 1
  %2270 = icmp eq i8 %2269, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %BRANCH_TAKEN, align 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2273 = select i1 %2270, i64 %2263, i64 %2265
  store i64 %2273, i64* %2272, align 8
  store %struct.Memory* %loadMem_425eff, %struct.Memory** %MEMORY
  %loadBr_425eff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425eff = icmp eq i8 %loadBr_425eff, 1
  br i1 %cmpBr_425eff, label %block_.L_425f0a, label %block_425f05

block_425f05:                                     ; preds = %block_.L_425ef8
  %loadMem_425f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %PC.i182
  %2278 = add i64 %2277, 32
  %2279 = load i64, i64* %PC.i182
  %2280 = add i64 %2279, 5
  store i64 %2280, i64* %PC.i182
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2278, i64* %2281, align 8
  store %struct.Memory* %loadMem_425f05, %struct.Memory** %MEMORY
  br label %block_.L_425f25

block_.L_425f0a:                                  ; preds = %block_.L_425ef8, %block_425edb
  %loadMem_425f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 9
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2287 to i32*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 9
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RSI.i181 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %RSI.i181
  %2292 = load i32, i32* %ESI.i
  %2293 = zext i32 %2292 to i64
  %2294 = load i64, i64* %PC.i180
  %2295 = add i64 %2294, 2
  store i64 %2295, i64* %PC.i180
  %2296 = xor i64 %2293, %2291
  %2297 = trunc i64 %2296 to i32
  %2298 = and i64 %2296, 4294967295
  store i64 %2298, i64* %RSI.i181, align 8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2299, align 1
  %2300 = and i32 %2297, 255
  %2301 = call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2304, i8* %2305, align 1
  %2306 = icmp eq i32 %2297, 0
  %2307 = zext i1 %2306 to i8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2307, i8* %2308, align 1
  %2309 = lshr i32 %2297, 31
  %2310 = trunc i32 %2309 to i8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2310, i8* %2311, align 1
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2312, align 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2313, align 1
  store %struct.Memory* %loadMem_425f0a, %struct.Memory** %MEMORY
  %loadMem_425f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 11
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RDI.i178 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 15
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2322 to i64*
  %2323 = load i64, i64* %RBP.i179
  %2324 = sub i64 %2323, 4
  %2325 = load i64, i64* %PC.i177
  %2326 = add i64 %2325, 3
  store i64 %2326, i64* %PC.i177
  %2327 = inttoptr i64 %2324 to i32*
  %2328 = load i32, i32* %2327
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RDI.i178, align 8
  store %struct.Memory* %loadMem_425f0c, %struct.Memory** %MEMORY
  %loadMem_425f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 7
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RDX.i175 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 15
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RBP.i176
  %2340 = sub i64 %2339, 12
  %2341 = load i64, i64* %PC.i174
  %2342 = add i64 %2341, 3
  store i64 %2342, i64* %PC.i174
  %2343 = inttoptr i64 %2340 to i32*
  %2344 = load i32, i32* %2343
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RDX.i175, align 8
  store %struct.Memory* %loadMem_425f0f, %struct.Memory** %MEMORY
  %loadMem1_425f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %PC.i173
  %2350 = add i64 %2349, -41746
  %2351 = load i64, i64* %PC.i173
  %2352 = add i64 %2351, 5
  %2353 = load i64, i64* %PC.i173
  %2354 = add i64 %2353, 5
  store i64 %2354, i64* %PC.i173
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2356 = load i64, i64* %2355, align 8
  %2357 = add i64 %2356, -8
  %2358 = inttoptr i64 %2357 to i64*
  store i64 %2352, i64* %2358
  store i64 %2357, i64* %2355, align 8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2350, i64* %2359, align 8
  store %struct.Memory* %loadMem1_425f12, %struct.Memory** %MEMORY
  %loadMem2_425f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f12 = load i64, i64* %3
  %call2_425f12 = call %struct.Memory* @sub_41bc00.make_dragons(%struct.State* %0, i64 %loadPC_425f12, %struct.Memory* %loadMem2_425f12)
  store %struct.Memory* %call2_425f12, %struct.Memory** %MEMORY
  %loadMem_425f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 7
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i171
  %2367 = add i64 %2366, 7
  store i64 %2367, i64* %PC.i171
  %2368 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RDX.i172, align 8
  store %struct.Memory* %loadMem_425f17, %struct.Memory** %MEMORY
  %loadMem_425f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 33
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 7
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2375 to i32*
  %2376 = load i32, i32* %EDX.i
  %2377 = zext i32 %2376 to i64
  %2378 = load i64, i64* %PC.i170
  %2379 = add i64 %2378, 7
  store i64 %2379, i64* %PC.i170
  store i32 %2376, i32* bitcast (%G_0x7ae428_type* @G_0x7ae428 to i32*)
  store %struct.Memory* %loadMem_425f1e, %struct.Memory** %MEMORY
  br label %block_.L_425f25

block_.L_425f25:                                  ; preds = %block_.L_425f0a, %block_425f05, %block_425ef3
  %loadMem_425f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RBP.i169
  %2387 = sub i64 %2386, 8
  %2388 = load i64, i64* %PC.i168
  %2389 = add i64 %2388, 4
  store i64 %2389, i64* %PC.i168
  %2390 = inttoptr i64 %2387 to i32*
  %2391 = load i32, i32* %2390
  %2392 = sub i32 %2391, 4
  %2393 = icmp ult i32 %2391, 4
  %2394 = zext i1 %2393 to i8
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2394, i8* %2395, align 1
  %2396 = and i32 %2392, 255
  %2397 = call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2400, i8* %2401, align 1
  %2402 = xor i32 %2391, 4
  %2403 = xor i32 %2402, %2392
  %2404 = lshr i32 %2403, 4
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2406, i8* %2407, align 1
  %2408 = icmp eq i32 %2392, 0
  %2409 = zext i1 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2409, i8* %2410, align 1
  %2411 = lshr i32 %2392, 31
  %2412 = trunc i32 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2412, i8* %2413, align 1
  %2414 = lshr i32 %2391, 31
  %2415 = xor i32 %2411, %2414
  %2416 = add i32 %2415, %2414
  %2417 = icmp eq i32 %2416, 2
  %2418 = zext i1 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2418, i8* %2419, align 1
  store %struct.Memory* %loadMem_425f25, %struct.Memory** %MEMORY
  %loadMem_425f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %PC.i167
  %2424 = add i64 %2423, 80
  %2425 = load i64, i64* %PC.i167
  %2426 = add i64 %2425, 6
  %2427 = load i64, i64* %PC.i167
  %2428 = add i64 %2427, 6
  store i64 %2428, i64* %PC.i167
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2430 = load i8, i8* %2429, align 1
  %2431 = icmp eq i8 %2430, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %BRANCH_TAKEN, align 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2434 = select i1 %2431, i64 %2424, i64 %2426
  store i64 %2434, i64* %2433, align 8
  store %struct.Memory* %loadMem_425f29, %struct.Memory** %MEMORY
  %loadBr_425f29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f29 = icmp eq i8 %loadBr_425f29, 1
  br i1 %cmpBr_425f29, label %block_.L_425f79, label %block_425f2f

block_425f2f:                                     ; preds = %block_.L_425f25
  %loadMem_425f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 1
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 15
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RBP.i166
  %2445 = sub i64 %2444, 12
  %2446 = load i64, i64* %PC.i164
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %PC.i164
  %2448 = inttoptr i64 %2445 to i32*
  %2449 = load i32, i32* %2448
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_425f2f, %struct.Memory** %MEMORY
  %loadMem_425f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 1
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %2456 to i32*
  %2457 = load i32, i32* %EAX.i163
  %2458 = zext i32 %2457 to i64
  %2459 = load i64, i64* %PC.i162
  %2460 = add i64 %2459, 7
  store i64 %2460, i64* %PC.i162
  store i32 %2457, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425f32, %struct.Memory** %MEMORY
  %loadMem1_425f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %PC.i161
  %2465 = add i64 %2464, -119305
  %2466 = load i64, i64* %PC.i161
  %2467 = add i64 %2466, 5
  %2468 = load i64, i64* %PC.i161
  %2469 = add i64 %2468, 5
  store i64 %2469, i64* %PC.i161
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2471 = load i64, i64* %2470, align 8
  %2472 = add i64 %2471, -8
  %2473 = inttoptr i64 %2472 to i64*
  store i64 %2467, i64* %2473
  store i64 %2472, i64* %2470, align 8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2465, i64* %2474, align 8
  store %struct.Memory* %loadMem1_425f39, %struct.Memory** %MEMORY
  %loadMem2_425f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f39 = load i64, i64* %3
  %call2_425f39 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_425f39, %struct.Memory* %loadMem2_425f39)
  store %struct.Memory* %call2_425f39, %struct.Memory** %MEMORY
  %loadMem_425f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 1
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %2480 to i32*
  %2481 = load i32, i32* %EAX.i160
  %2482 = zext i32 %2481 to i64
  %2483 = load i64, i64* %PC.i159
  %2484 = add i64 %2483, 3
  store i64 %2484, i64* %PC.i159
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2485, align 1
  %2486 = and i32 %2481, 255
  %2487 = call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2490, i8* %2491, align 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2492, align 1
  %2493 = icmp eq i32 %2481, 0
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2494, i8* %2495, align 1
  %2496 = lshr i32 %2481, 31
  %2497 = trunc i32 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2497, i8* %2498, align 1
  %2499 = lshr i32 %2481, 31
  %2500 = xor i32 %2496, %2499
  %2501 = add i32 %2500, %2499
  %2502 = icmp eq i32 %2501, 2
  %2503 = zext i1 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2503, i8* %2504, align 1
  store %struct.Memory* %loadMem_425f3e, %struct.Memory** %MEMORY
  %loadMem_425f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %PC.i158
  %2509 = add i64 %2508, 11
  %2510 = load i64, i64* %PC.i158
  %2511 = add i64 %2510, 6
  %2512 = load i64, i64* %PC.i158
  %2513 = add i64 %2512, 6
  store i64 %2513, i64* %PC.i158
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2515 = load i8, i8* %2514, align 1
  %2516 = icmp ne i8 %2515, 0
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2518 = load i8, i8* %2517, align 1
  %2519 = icmp ne i8 %2518, 0
  %2520 = xor i1 %2516, %2519
  %2521 = xor i1 %2520, true
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %BRANCH_TAKEN, align 1
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2524 = select i1 %2520, i64 %2511, i64 %2509
  store i64 %2524, i64* %2523, align 8
  store %struct.Memory* %loadMem_425f41, %struct.Memory** %MEMORY
  %loadBr_425f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f41 = icmp eq i8 %loadBr_425f41, 1
  br i1 %cmpBr_425f41, label %block_.L_425f4c, label %block_425f47

block_425f47:                                     ; preds = %block_425f2f
  %loadMem_425f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %PC.i157
  %2529 = add i64 %2528, 45
  %2530 = load i64, i64* %PC.i157
  %2531 = add i64 %2530, 5
  store i64 %2531, i64* %PC.i157
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2529, i64* %2532, align 8
  store %struct.Memory* %loadMem_425f47, %struct.Memory** %MEMORY
  br label %block_.L_425f74

block_.L_425f4c:                                  ; preds = %block_425f2f
  %loadMem_425f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 11
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RDI.i156 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %PC.i155
  %2540 = add i64 %2539, 10
  store i64 %2540, i64* %PC.i155
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i156, align 8
  store %struct.Memory* %loadMem_425f4c, %struct.Memory** %MEMORY
  %loadMem_425f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 9
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RSI.i154 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %PC.i153
  %2548 = add i64 %2547, 5
  store i64 %2548, i64* %PC.i153
  store i64 158, i64* %RSI.i154, align 8
  store %struct.Memory* %loadMem_425f56, %struct.Memory** %MEMORY
  %loadMem_425f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 7
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RDX.i152 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %PC.i151
  %2556 = add i64 %2555, 10
  store i64 %2556, i64* %PC.i151
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i152, align 8
  store %struct.Memory* %loadMem_425f5b, %struct.Memory** %MEMORY
  %loadMem_425f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 33
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2559 to i64*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 1
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %PC.i149
  %2564 = add i64 %2563, 5
  store i64 %2564, i64* %PC.i149
  store i64 4294967295, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_425f65, %struct.Memory** %MEMORY
  %loadMem_425f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 1
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %2570 to i32*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 5
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %2573 to i64*
  %2574 = load i32, i32* %EAX.i147
  %2575 = zext i32 %2574 to i64
  %2576 = load i64, i64* %PC.i146
  %2577 = add i64 %2576, 2
  store i64 %2577, i64* %PC.i146
  %2578 = and i64 %2575, 4294967295
  store i64 %2578, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_425f6a, %struct.Memory** %MEMORY
  %loadMem_425f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 1
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %2584 to i32*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 17
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %R8D.i145 = bitcast %union.anon* %2587 to i32*
  %2588 = bitcast i32* %R8D.i145 to i64*
  %2589 = load i32, i32* %EAX.i144
  %2590 = zext i32 %2589 to i64
  %2591 = load i64, i64* %PC.i143
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC.i143
  %2593 = and i64 %2590, 4294967295
  store i64 %2593, i64* %2588, align 8
  store %struct.Memory* %loadMem_425f6c, %struct.Memory** %MEMORY
  %loadMem1_425f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %PC.i142
  %2598 = add i64 %2597, 180513
  %2599 = load i64, i64* %PC.i142
  %2600 = add i64 %2599, 5
  %2601 = load i64, i64* %PC.i142
  %2602 = add i64 %2601, 5
  store i64 %2602, i64* %PC.i142
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2604 = load i64, i64* %2603, align 8
  %2605 = add i64 %2604, -8
  %2606 = inttoptr i64 %2605 to i64*
  store i64 %2600, i64* %2606
  store i64 %2605, i64* %2603, align 8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2598, i64* %2607, align 8
  store %struct.Memory* %loadMem1_425f6f, %struct.Memory** %MEMORY
  %loadMem2_425f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f6f = load i64, i64* %3
  %call2_425f6f = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_425f6f, %struct.Memory* %loadMem2_425f6f)
  store %struct.Memory* %call2_425f6f, %struct.Memory** %MEMORY
  br label %block_.L_425f74

block_.L_425f74:                                  ; preds = %block_.L_425f4c, %block_425f47
  %loadMem_425f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %PC.i141
  %2612 = add i64 %2611, 445
  %2613 = load i64, i64* %PC.i141
  %2614 = add i64 %2613, 5
  store i64 %2614, i64* %PC.i141
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2612, i64* %2615, align 8
  store %struct.Memory* %loadMem_425f74, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_425f79:                                  ; preds = %block_.L_425f25
  %loadMem_425f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %PC.i140
  %2620 = add i64 %2619, 119
  %2621 = load i64, i64* %PC.i140
  %2622 = add i64 %2621, 5
  store i64 %2622, i64* %PC.i140
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2620, i64* %2623, align 8
  store %struct.Memory* %loadMem_425f79, %struct.Memory** %MEMORY
  br label %block_.L_425ff0

block_.L_425f7e:                                  ; preds = %block_.L_425d71
  %loadMem_425f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RBP.i139
  %2631 = sub i64 %2630, 8
  %2632 = load i64, i64* %PC.i138
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %PC.i138
  %2634 = inttoptr i64 %2631 to i32*
  %2635 = load i32, i32* %2634
  %2636 = sub i32 %2635, 2
  %2637 = icmp ult i32 %2635, 2
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2638, i8* %2639, align 1
  %2640 = and i32 %2636, 255
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2644, i8* %2645, align 1
  %2646 = xor i32 %2635, 2
  %2647 = xor i32 %2646, %2636
  %2648 = lshr i32 %2647, 4
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2650, i8* %2651, align 1
  %2652 = icmp eq i32 %2636, 0
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2653, i8* %2654, align 1
  %2655 = lshr i32 %2636, 31
  %2656 = trunc i32 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2656, i8* %2657, align 1
  %2658 = lshr i32 %2635, 31
  %2659 = xor i32 %2655, %2658
  %2660 = add i32 %2659, %2658
  %2661 = icmp eq i32 %2660, 2
  %2662 = zext i1 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2662, i8* %2663, align 1
  store %struct.Memory* %loadMem_425f7e, %struct.Memory** %MEMORY
  %loadMem_425f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %PC.i137
  %2668 = add i64 %2667, 26
  %2669 = load i64, i64* %PC.i137
  %2670 = add i64 %2669, 6
  %2671 = load i64, i64* %PC.i137
  %2672 = add i64 %2671, 6
  store i64 %2672, i64* %PC.i137
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2674 = load i8, i8* %2673, align 1
  store i8 %2674, i8* %BRANCH_TAKEN, align 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2676 = icmp ne i8 %2674, 0
  %2677 = select i1 %2676, i64 %2668, i64 %2670
  store i64 %2677, i64* %2675, align 8
  store %struct.Memory* %loadMem_425f82, %struct.Memory** %MEMORY
  %loadBr_425f82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f82 = icmp eq i8 %loadBr_425f82, 1
  br i1 %cmpBr_425f82, label %block_.L_425f9c, label %block_425f88

block_425f88:                                     ; preds = %block_.L_425f7e
  %loadMem_425f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RBP.i136
  %2685 = sub i64 %2684, 8
  %2686 = load i64, i64* %PC.i135
  %2687 = add i64 %2686, 4
  store i64 %2687, i64* %PC.i135
  %2688 = inttoptr i64 %2685 to i32*
  %2689 = load i32, i32* %2688
  %2690 = sub i32 %2689, 4
  %2691 = icmp ult i32 %2689, 4
  %2692 = zext i1 %2691 to i8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2692, i8* %2693, align 1
  %2694 = and i32 %2690, 255
  %2695 = call i32 @llvm.ctpop.i32(i32 %2694)
  %2696 = trunc i32 %2695 to i8
  %2697 = and i8 %2696, 1
  %2698 = xor i8 %2697, 1
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2698, i8* %2699, align 1
  %2700 = xor i32 %2689, 4
  %2701 = xor i32 %2700, %2690
  %2702 = lshr i32 %2701, 4
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2704, i8* %2705, align 1
  %2706 = icmp eq i32 %2690, 0
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2707, i8* %2708, align 1
  %2709 = lshr i32 %2690, 31
  %2710 = trunc i32 %2709 to i8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2710, i8* %2711, align 1
  %2712 = lshr i32 %2689, 31
  %2713 = xor i32 %2709, %2712
  %2714 = add i32 %2713, %2712
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2716, i8* %2717, align 1
  store %struct.Memory* %loadMem_425f88, %struct.Memory** %MEMORY
  %loadMem_425f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %PC.i134
  %2722 = add i64 %2721, 16
  %2723 = load i64, i64* %PC.i134
  %2724 = add i64 %2723, 6
  %2725 = load i64, i64* %PC.i134
  %2726 = add i64 %2725, 6
  store i64 %2726, i64* %PC.i134
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2728 = load i8, i8* %2727, align 1
  store i8 %2728, i8* %BRANCH_TAKEN, align 1
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2730 = icmp ne i8 %2728, 0
  %2731 = select i1 %2730, i64 %2722, i64 %2724
  store i64 %2731, i64* %2729, align 8
  store %struct.Memory* %loadMem_425f8c, %struct.Memory** %MEMORY
  %loadBr_425f8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f8c = icmp eq i8 %loadBr_425f8c, 1
  br i1 %cmpBr_425f8c, label %block_.L_425f9c, label %block_425f92

block_425f92:                                     ; preds = %block_425f88
  %loadMem_425f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 15
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %RBP.i133
  %2739 = sub i64 %2738, 8
  %2740 = load i64, i64* %PC.i132
  %2741 = add i64 %2740, 4
  store i64 %2741, i64* %PC.i132
  %2742 = inttoptr i64 %2739 to i32*
  %2743 = load i32, i32* %2742
  %2744 = sub i32 %2743, 99
  %2745 = icmp ult i32 %2743, 99
  %2746 = zext i1 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2746, i8* %2747, align 1
  %2748 = and i32 %2744, 255
  %2749 = call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2752, i8* %2753, align 1
  %2754 = xor i32 %2743, 99
  %2755 = xor i32 %2754, %2744
  %2756 = lshr i32 %2755, 4
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2758, i8* %2759, align 1
  %2760 = icmp eq i32 %2744, 0
  %2761 = zext i1 %2760 to i8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2761, i8* %2762, align 1
  %2763 = lshr i32 %2744, 31
  %2764 = trunc i32 %2763 to i8
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2764, i8* %2765, align 1
  %2766 = lshr i32 %2743, 31
  %2767 = xor i32 %2763, %2766
  %2768 = add i32 %2767, %2766
  %2769 = icmp eq i32 %2768, 2
  %2770 = zext i1 %2769 to i8
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2770, i8* %2771, align 1
  store %struct.Memory* %loadMem_425f92, %struct.Memory** %MEMORY
  %loadMem_425f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %PC.i131
  %2776 = add i64 %2775, 85
  %2777 = load i64, i64* %PC.i131
  %2778 = add i64 %2777, 6
  %2779 = load i64, i64* %PC.i131
  %2780 = add i64 %2779, 6
  store i64 %2780, i64* %PC.i131
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2782 = load i8, i8* %2781, align 1
  %2783 = icmp eq i8 %2782, 0
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %BRANCH_TAKEN, align 1
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2786 = select i1 %2783, i64 %2776, i64 %2778
  store i64 %2786, i64* %2785, align 8
  store %struct.Memory* %loadMem_425f96, %struct.Memory** %MEMORY
  %loadBr_425f96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f96 = icmp eq i8 %loadBr_425f96, 1
  br i1 %cmpBr_425f96, label %block_.L_425feb, label %block_.L_425f9c

block_.L_425f9c:                                  ; preds = %block_425f92, %block_425f88, %block_.L_425f7e
  %loadMem1_425f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %PC.i130
  %2791 = add i64 %2790, -32492
  %2792 = load i64, i64* %PC.i130
  %2793 = add i64 %2792, 5
  %2794 = load i64, i64* %PC.i130
  %2795 = add i64 %2794, 5
  store i64 %2795, i64* %PC.i130
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2797 = load i64, i64* %2796, align 8
  %2798 = add i64 %2797, -8
  %2799 = inttoptr i64 %2798 to i64*
  store i64 %2793, i64* %2799
  store i64 %2798, i64* %2796, align 8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2791, i64* %2800, align 8
  store %struct.Memory* %loadMem1_425f9c, %struct.Memory** %MEMORY
  %loadMem2_425f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f9c = load i64, i64* %3
  %call2_425f9c = call %struct.Memory* @sub_41e0b0.initialize_dragon_data(%struct.State* %0, i64 %loadPC_425f9c, %struct.Memory* %loadMem2_425f9c)
  store %struct.Memory* %call2_425f9c, %struct.Memory** %MEMORY
  %loadMem_425fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 1
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RBP.i129
  %2811 = sub i64 %2810, 12
  %2812 = load i64, i64* %PC.i127
  %2813 = add i64 %2812, 3
  store i64 %2813, i64* %PC.i127
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_425fa1, %struct.Memory** %MEMORY
  %loadMem_425fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 1
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %2822 to i32*
  %2823 = load i32, i32* %EAX.i126
  %2824 = zext i32 %2823 to i64
  %2825 = load i64, i64* %PC.i125
  %2826 = add i64 %2825, 7
  store i64 %2826, i64* %PC.i125
  store i32 %2823, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425fa4, %struct.Memory** %MEMORY
  %loadMem1_425fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %PC.i124
  %2831 = add i64 %2830, -119419
  %2832 = load i64, i64* %PC.i124
  %2833 = add i64 %2832, 5
  %2834 = load i64, i64* %PC.i124
  %2835 = add i64 %2834, 5
  store i64 %2835, i64* %PC.i124
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2837 = load i64, i64* %2836, align 8
  %2838 = add i64 %2837, -8
  %2839 = inttoptr i64 %2838 to i64*
  store i64 %2833, i64* %2839
  store i64 %2838, i64* %2836, align 8
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2831, i64* %2840, align 8
  store %struct.Memory* %loadMem1_425fab, %struct.Memory** %MEMORY
  %loadMem2_425fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425fab = load i64, i64* %3
  %call2_425fab = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_425fab, %struct.Memory* %loadMem2_425fab)
  store %struct.Memory* %call2_425fab, %struct.Memory** %MEMORY
  %loadMem_425fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 1
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %2846 to i32*
  %2847 = load i32, i32* %EAX.i123
  %2848 = zext i32 %2847 to i64
  %2849 = load i64, i64* %PC.i122
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i122
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2851, align 1
  %2852 = and i32 %2847, 255
  %2853 = call i32 @llvm.ctpop.i32(i32 %2852)
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  %2856 = xor i8 %2855, 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2856, i8* %2857, align 1
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2858, align 1
  %2859 = icmp eq i32 %2847, 0
  %2860 = zext i1 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2860, i8* %2861, align 1
  %2862 = lshr i32 %2847, 31
  %2863 = trunc i32 %2862 to i8
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2863, i8* %2864, align 1
  %2865 = lshr i32 %2847, 31
  %2866 = xor i32 %2862, %2865
  %2867 = add i32 %2866, %2865
  %2868 = icmp eq i32 %2867, 2
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2869, i8* %2870, align 1
  store %struct.Memory* %loadMem_425fb0, %struct.Memory** %MEMORY
  %loadMem_425fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i121
  %2875 = add i64 %2874, 11
  %2876 = load i64, i64* %PC.i121
  %2877 = add i64 %2876, 6
  %2878 = load i64, i64* %PC.i121
  %2879 = add i64 %2878, 6
  store i64 %2879, i64* %PC.i121
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2881 = load i8, i8* %2880, align 1
  %2882 = icmp ne i8 %2881, 0
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2884 = load i8, i8* %2883, align 1
  %2885 = icmp ne i8 %2884, 0
  %2886 = xor i1 %2882, %2885
  %2887 = xor i1 %2886, true
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %BRANCH_TAKEN, align 1
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2890 = select i1 %2886, i64 %2877, i64 %2875
  store i64 %2890, i64* %2889, align 8
  store %struct.Memory* %loadMem_425fb3, %struct.Memory** %MEMORY
  %loadBr_425fb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425fb3 = icmp eq i8 %loadBr_425fb3, 1
  br i1 %cmpBr_425fb3, label %block_.L_425fbe, label %block_425fb9

block_425fb9:                                     ; preds = %block_.L_425f9c
  %loadMem_425fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %PC.i120
  %2895 = add i64 %2894, 45
  %2896 = load i64, i64* %PC.i120
  %2897 = add i64 %2896, 5
  store i64 %2897, i64* %PC.i120
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2895, i64* %2898, align 8
  store %struct.Memory* %loadMem_425fb9, %struct.Memory** %MEMORY
  br label %block_.L_425fe6

block_.L_425fbe:                                  ; preds = %block_.L_425f9c
  %loadMem_425fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 11
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RDI.i119 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %PC.i118
  %2906 = add i64 %2905, 10
  store i64 %2906, i64* %PC.i118
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i119, align 8
  store %struct.Memory* %loadMem_425fbe, %struct.Memory** %MEMORY
  %loadMem_425fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 9
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RSI.i117 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %PC.i116
  %2914 = add i64 %2913, 5
  store i64 %2914, i64* %PC.i116
  store i64 167, i64* %RSI.i117, align 8
  store %struct.Memory* %loadMem_425fc8, %struct.Memory** %MEMORY
  %loadMem_425fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 7
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %PC.i114
  %2922 = add i64 %2921, 10
  store i64 %2922, i64* %PC.i114
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i115, align 8
  store %struct.Memory* %loadMem_425fcd, %struct.Memory** %MEMORY
  %loadMem_425fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %PC.i112
  %2930 = add i64 %2929, 5
  store i64 %2930, i64* %PC.i112
  store i64 4294967295, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_425fd7, %struct.Memory** %MEMORY
  %loadMem_425fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 1
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %2936 to i32*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 5
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %2939 to i64*
  %2940 = load i32, i32* %EAX.i110
  %2941 = zext i32 %2940 to i64
  %2942 = load i64, i64* %PC.i109
  %2943 = add i64 %2942, 2
  store i64 %2943, i64* %PC.i109
  %2944 = and i64 %2941, 4294967295
  store i64 %2944, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_425fdc, %struct.Memory** %MEMORY
  %loadMem_425fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 1
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %2950 to i32*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 17
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %R8D.i108 = bitcast %union.anon* %2953 to i32*
  %2954 = bitcast i32* %R8D.i108 to i64*
  %2955 = load i32, i32* %EAX.i107
  %2956 = zext i32 %2955 to i64
  %2957 = load i64, i64* %PC.i106
  %2958 = add i64 %2957, 3
  store i64 %2958, i64* %PC.i106
  %2959 = and i64 %2956, 4294967295
  store i64 %2959, i64* %2954, align 8
  store %struct.Memory* %loadMem_425fde, %struct.Memory** %MEMORY
  %loadMem1_425fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %PC.i105
  %2964 = add i64 %2963, 180399
  %2965 = load i64, i64* %PC.i105
  %2966 = add i64 %2965, 5
  %2967 = load i64, i64* %PC.i105
  %2968 = add i64 %2967, 5
  store i64 %2968, i64* %PC.i105
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2970 = load i64, i64* %2969, align 8
  %2971 = add i64 %2970, -8
  %2972 = inttoptr i64 %2971 to i64*
  store i64 %2966, i64* %2972
  store i64 %2971, i64* %2969, align 8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2964, i64* %2973, align 8
  store %struct.Memory* %loadMem1_425fe1, %struct.Memory** %MEMORY
  %loadMem2_425fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425fe1 = load i64, i64* %3
  %call2_425fe1 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_425fe1, %struct.Memory* %loadMem2_425fe1)
  store %struct.Memory* %call2_425fe1, %struct.Memory** %MEMORY
  br label %block_.L_425fe6

block_.L_425fe6:                                  ; preds = %block_.L_425fbe, %block_425fb9
  %loadMem_425fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i104
  %2978 = add i64 %2977, 331
  %2979 = load i64, i64* %PC.i104
  %2980 = add i64 %2979, 5
  store i64 %2980, i64* %PC.i104
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2978, i64* %2981, align 8
  store %struct.Memory* %loadMem_425fe6, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_425feb:                                  ; preds = %block_425f92
  %loadMem_425feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2984 to i64*
  %2985 = load i64, i64* %PC.i103
  %2986 = add i64 %2985, 5
  %2987 = load i64, i64* %PC.i103
  %2988 = add i64 %2987, 5
  store i64 %2988, i64* %PC.i103
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2986, i64* %2989, align 8
  store %struct.Memory* %loadMem_425feb, %struct.Memory** %MEMORY
  br label %block_.L_425ff0

block_.L_425ff0:                                  ; preds = %block_.L_425feb, %block_.L_425f79
  %loadMem_425ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 1
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %RBP.i102
  %3000 = sub i64 %2999, 12
  %3001 = load i64, i64* %PC.i100
  %3002 = add i64 %3001, 3
  store i64 %3002, i64* %PC.i100
  %3003 = inttoptr i64 %3000 to i32*
  %3004 = load i32, i32* %3003
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_425ff0, %struct.Memory** %MEMORY
  %loadMem_425ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 1
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %3011 to i32*
  %3012 = load i32, i32* %EAX.i99
  %3013 = zext i32 %3012 to i64
  %3014 = load i64, i64* %PC.i98
  %3015 = add i64 %3014, 7
  store i64 %3015, i64* %PC.i98
  store i32 %3012, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_425ff3, %struct.Memory** %MEMORY
  %loadMem_425ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 1
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %PC.i96
  %3023 = add i64 %3022, 7
  store i64 %3023, i64* %PC.i96
  %3024 = load i32, i32* bitcast (%G_0x7ae430_type* @G_0x7ae430 to i32*)
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_425ffa, %struct.Memory** %MEMORY
  %loadMem_426001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 1
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %3031 to i32*
  %3032 = load i32, i32* %EAX.i95
  %3033 = zext i32 %3032 to i64
  %3034 = load i64, i64* %PC.i94
  %3035 = add i64 %3034, 7
  store i64 %3035, i64* %PC.i94
  %3036 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %3037 = sub i32 %3032, %3036
  %3038 = icmp ult i32 %3032, %3036
  %3039 = zext i1 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3039, i8* %3040, align 1
  %3041 = and i32 %3037, 255
  %3042 = call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3045, i8* %3046, align 1
  %3047 = xor i32 %3036, %3032
  %3048 = xor i32 %3047, %3037
  %3049 = lshr i32 %3048, 4
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3051, i8* %3052, align 1
  %3053 = icmp eq i32 %3037, 0
  %3054 = zext i1 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3054, i8* %3055, align 1
  %3056 = lshr i32 %3037, 31
  %3057 = trunc i32 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3057, i8* %3058, align 1
  %3059 = lshr i32 %3032, 31
  %3060 = lshr i32 %3036, 31
  %3061 = xor i32 %3060, %3059
  %3062 = xor i32 %3056, %3059
  %3063 = add i32 %3062, %3061
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3065, i8* %3066, align 1
  store %struct.Memory* %loadMem_426001, %struct.Memory** %MEMORY
  %loadMem_426008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %PC.i93
  %3071 = add i64 %3070, 35
  %3072 = load i64, i64* %PC.i93
  %3073 = add i64 %3072, 6
  %3074 = load i64, i64* %PC.i93
  %3075 = add i64 %3074, 6
  store i64 %3075, i64* %PC.i93
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3077 = load i8, i8* %3076, align 1
  store i8 %3077, i8* %BRANCH_TAKEN, align 1
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3079 = icmp ne i8 %3077, 0
  %3080 = select i1 %3079, i64 %3071, i64 %3073
  store i64 %3080, i64* %3078, align 8
  store %struct.Memory* %loadMem_426008, %struct.Memory** %MEMORY
  %loadBr_426008 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426008 = icmp eq i8 %loadBr_426008, 1
  br i1 %cmpBr_426008, label %block_.L_42602b, label %block_42600e

block_42600e:                                     ; preds = %block_.L_425ff0
  %loadMem_42600e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 1
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %3087 = bitcast %union.anon* %3086 to %struct.anon.2*
  %AL.i92 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3087, i32 0, i32 0
  %3088 = load i64, i64* %PC.i91
  %3089 = add i64 %3088, 2
  store i64 %3089, i64* %PC.i91
  store i8 1, i8* %AL.i92, align 1
  store %struct.Memory* %loadMem_42600e, %struct.Memory** %MEMORY
  %loadMem_426010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 5
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %PC.i89
  %3097 = add i64 %3096, 7
  store i64 %3097, i64* %PC.i89
  %3098 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %3099 = zext i32 %3098 to i64
  store i64 %3099, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_426010, %struct.Memory** %MEMORY
  %loadMem_426017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 5
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %ECX.i88 = bitcast %union.anon* %3105 to i32*
  %3106 = load i32, i32* %ECX.i88
  %3107 = zext i32 %3106 to i64
  %3108 = load i64, i64* %PC.i87
  %3109 = add i64 %3108, 7
  store i64 %3109, i64* %PC.i87
  store i32 %3106, i32* bitcast (%G_0x7ae430_type* @G_0x7ae430 to i32*)
  store %struct.Memory* %loadMem_426017, %struct.Memory** %MEMORY
  %loadMem_42601e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 1
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %3116 = bitcast %union.anon* %3115 to %struct.anon.2*
  %AL.i86 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3116, i32 0, i32 0
  %3117 = load i8, i8* %AL.i86
  %3118 = zext i8 %3117 to i64
  %3119 = load i64, i64* %PC.i85
  %3120 = add i64 %3119, 2
  store i64 %3120, i64* %PC.i85
  %3121 = and i64 1, %3118
  %3122 = trunc i64 %3121 to i8
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3123, align 1
  %3124 = trunc i64 %3121 to i32
  %3125 = and i32 %3124, 255
  %3126 = call i32 @llvm.ctpop.i32(i32 %3125)
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = xor i8 %3128, 1
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3129, i8* %3130, align 1
  %3131 = icmp eq i8 %3122, 0
  %3132 = zext i1 %3131 to i8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3132, i8* %3133, align 1
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3134, align 1
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3135, align 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3136, align 1
  store %struct.Memory* %loadMem_42601e, %struct.Memory** %MEMORY
  %loadMem_426020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %PC.i84
  %3141 = add i64 %3140, 29
  %3142 = load i64, i64* %PC.i84
  %3143 = add i64 %3142, 6
  %3144 = load i64, i64* %PC.i84
  %3145 = add i64 %3144, 6
  store i64 %3145, i64* %PC.i84
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3147 = load i8, i8* %3146, align 1
  %3148 = icmp eq i8 %3147, 0
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %BRANCH_TAKEN, align 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3151 = select i1 %3148, i64 %3141, i64 %3143
  store i64 %3151, i64* %3150, align 8
  store %struct.Memory* %loadMem_426020, %struct.Memory** %MEMORY
  %loadBr_426020 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426020 = icmp eq i8 %loadBr_426020, 1
  br i1 %cmpBr_426020, label %block_.L_42603d, label %block_426026

block_426026:                                     ; preds = %block_42600e
  %loadMem_426026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %PC.i83
  %3156 = add i64 %3155, 28
  %3157 = load i64, i64* %PC.i83
  %3158 = add i64 %3157, 5
  store i64 %3158, i64* %PC.i83
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3156, i64* %3159, align 8
  store %struct.Memory* %loadMem_426026, %struct.Memory** %MEMORY
  br label %block_.L_426042

block_.L_42602b:                                  ; preds = %block_.L_425ff0
  %loadMem_42602b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 1
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %3165 to i32*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 1
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %RAX.i82
  %3170 = load i32, i32* %EAX.i81
  %3171 = zext i32 %3170 to i64
  %3172 = load i64, i64* %PC.i80
  %3173 = add i64 %3172, 2
  store i64 %3173, i64* %PC.i80
  %3174 = xor i64 %3171, %3169
  %3175 = trunc i64 %3174 to i32
  %3176 = and i64 %3174, 4294967295
  store i64 %3176, i64* %RAX.i82, align 8
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3177, align 1
  %3178 = and i32 %3175, 255
  %3179 = call i32 @llvm.ctpop.i32(i32 %3178)
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = xor i8 %3181, 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3182, i8* %3183, align 1
  %3184 = icmp eq i32 %3175, 0
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3185, i8* %3186, align 1
  %3187 = lshr i32 %3175, 31
  %3188 = trunc i32 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3188, i8* %3189, align 1
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3190, align 1
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3191, align 1
  store %struct.Memory* %loadMem_42602b, %struct.Memory** %MEMORY
  %loadMem_42602d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 1
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %3198 = bitcast %union.anon* %3197 to %struct.anon.2*
  %AL.i78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3198, i32 0, i32 0
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 5
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %3202 = bitcast %union.anon* %3201 to %struct.anon.2*
  %CL.i79 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3202, i32 0, i32 0
  %3203 = load i8, i8* %AL.i78
  %3204 = zext i8 %3203 to i64
  %3205 = load i64, i64* %PC.i77
  %3206 = add i64 %3205, 2
  store i64 %3206, i64* %PC.i77
  store i8 %3203, i8* %CL.i79, align 1
  store %struct.Memory* %loadMem_42602d, %struct.Memory** %MEMORY
  %loadMem_42602f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 33
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 5
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %3213 = bitcast %union.anon* %3212 to %struct.anon.2*
  %CL.i76 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3213, i32 0, i32 0
  %3214 = load i8, i8* %CL.i76
  %3215 = zext i8 %3214 to i64
  %3216 = load i64, i64* %PC.i75
  %3217 = add i64 %3216, 3
  store i64 %3217, i64* %PC.i75
  %3218 = and i64 1, %3215
  %3219 = trunc i64 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3220, align 1
  %3221 = trunc i64 %3218 to i32
  %3222 = and i32 %3221, 255
  %3223 = call i32 @llvm.ctpop.i32(i32 %3222)
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3226, i8* %3227, align 1
  %3228 = icmp eq i8 %3219, 0
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3229, i8* %3230, align 1
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3231, align 1
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3232, align 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3233, align 1
  store %struct.Memory* %loadMem_42602f, %struct.Memory** %MEMORY
  %loadMem_426032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %PC.i74
  %3238 = add i64 %3237, 11
  %3239 = load i64, i64* %PC.i74
  %3240 = add i64 %3239, 6
  %3241 = load i64, i64* %PC.i74
  %3242 = add i64 %3241, 6
  store i64 %3242, i64* %PC.i74
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3244 = load i8, i8* %3243, align 1
  %3245 = icmp eq i8 %3244, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %BRANCH_TAKEN, align 1
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3248 = select i1 %3245, i64 %3238, i64 %3240
  store i64 %3248, i64* %3247, align 8
  store %struct.Memory* %loadMem_426032, %struct.Memory** %MEMORY
  %loadBr_426032 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426032 = icmp eq i8 %loadBr_426032, 1
  br i1 %cmpBr_426032, label %block_.L_42603d, label %block_426038

block_426038:                                     ; preds = %block_.L_42602b
  %loadMem_426038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %PC.i73
  %3253 = add i64 %3252, 10
  %3254 = load i64, i64* %PC.i73
  %3255 = add i64 %3254, 5
  store i64 %3255, i64* %PC.i73
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3253, i64* %3256, align 8
  store %struct.Memory* %loadMem_426038, %struct.Memory** %MEMORY
  br label %block_.L_426042

block_.L_42603d:                                  ; preds = %block_.L_42602b, %block_42600e
  %loadMem1_42603d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %PC.i72
  %3261 = add i64 %3260, -14157
  %3262 = load i64, i64* %PC.i72
  %3263 = add i64 %3262, 5
  %3264 = load i64, i64* %PC.i72
  %3265 = add i64 %3264, 5
  store i64 %3265, i64* %PC.i72
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3267 = load i64, i64* %3266, align 8
  %3268 = add i64 %3267, -8
  %3269 = inttoptr i64 %3268 to i64*
  store i64 %3263, i64* %3269
  store i64 %3268, i64* %3266, align 8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3261, i64* %3270, align 8
  store %struct.Memory* %loadMem1_42603d, %struct.Memory** %MEMORY
  %loadMem2_42603d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42603d = load i64, i64* %3
  %call2_42603d = call %struct.Memory* @sub_4228f0.compute_dragon_influence(%struct.State* %0, i64 %loadPC_42603d, %struct.Memory* %loadMem2_42603d)
  store %struct.Memory* %call2_42603d, %struct.Memory** %MEMORY
  br label %block_.L_426042

block_.L_426042:                                  ; preds = %block_.L_42603d, %block_426038, %block_426026
  %loadMem_426042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 15
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %RBP.i71
  %3278 = sub i64 %3277, 8
  %3279 = load i64, i64* %PC.i70
  %3280 = add i64 %3279, 4
  store i64 %3280, i64* %PC.i70
  %3281 = inttoptr i64 %3278 to i32*
  %3282 = load i32, i32* %3281
  %3283 = sub i32 %3282, 6
  %3284 = icmp ult i32 %3282, 6
  %3285 = zext i1 %3284 to i8
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3285, i8* %3286, align 1
  %3287 = and i32 %3283, 255
  %3288 = call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3291, i8* %3292, align 1
  %3293 = xor i32 %3282, 6
  %3294 = xor i32 %3293, %3283
  %3295 = lshr i32 %3294, 4
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3297, i8* %3298, align 1
  %3299 = icmp eq i32 %3283, 0
  %3300 = zext i1 %3299 to i8
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3300, i8* %3301, align 1
  %3302 = lshr i32 %3283, 31
  %3303 = trunc i32 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3303, i8* %3304, align 1
  %3305 = lshr i32 %3282, 31
  %3306 = xor i32 %3302, %3305
  %3307 = add i32 %3306, %3305
  %3308 = icmp eq i32 %3307, 2
  %3309 = zext i1 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3309, i8* %3310, align 1
  store %struct.Memory* %loadMem_426042, %struct.Memory** %MEMORY
  %loadMem_426046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %PC.i69
  %3315 = add i64 %3314, 70
  %3316 = load i64, i64* %PC.i69
  %3317 = add i64 %3316, 6
  %3318 = load i64, i64* %PC.i69
  %3319 = add i64 %3318, 6
  store i64 %3319, i64* %PC.i69
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3321 = load i8, i8* %3320, align 1
  %3322 = icmp eq i8 %3321, 0
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %BRANCH_TAKEN, align 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3325 = select i1 %3322, i64 %3315, i64 %3317
  store i64 %3325, i64* %3324, align 8
  store %struct.Memory* %loadMem_426046, %struct.Memory** %MEMORY
  %loadBr_426046 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426046 = icmp eq i8 %loadBr_426046, 1
  br i1 %cmpBr_426046, label %block_.L_42608c, label %block_42604c

block_42604c:                                     ; preds = %block_.L_426042
  %loadMem1_42604c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3328 to i64*
  %3329 = load i64, i64* %PC.i68
  %3330 = add i64 %3329, -119580
  %3331 = load i64, i64* %PC.i68
  %3332 = add i64 %3331, 5
  %3333 = load i64, i64* %PC.i68
  %3334 = add i64 %3333, 5
  store i64 %3334, i64* %PC.i68
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3336 = load i64, i64* %3335, align 8
  %3337 = add i64 %3336, -8
  %3338 = inttoptr i64 %3337 to i64*
  store i64 %3332, i64* %3338
  store i64 %3337, i64* %3335, align 8
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3330, i64* %3339, align 8
  store %struct.Memory* %loadMem1_42604c, %struct.Memory** %MEMORY
  %loadMem2_42604c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42604c = load i64, i64* %3
  %call2_42604c = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_42604c, %struct.Memory* %loadMem2_42604c)
  store %struct.Memory* %call2_42604c, %struct.Memory** %MEMORY
  %loadMem_426051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 1
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %EAX.i67 = bitcast %union.anon* %3345 to i32*
  %3346 = load i32, i32* %EAX.i67
  %3347 = zext i32 %3346 to i64
  %3348 = load i64, i64* %PC.i66
  %3349 = add i64 %3348, 3
  store i64 %3349, i64* %PC.i66
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3350, align 1
  %3351 = and i32 %3346, 255
  %3352 = call i32 @llvm.ctpop.i32(i32 %3351)
  %3353 = trunc i32 %3352 to i8
  %3354 = and i8 %3353, 1
  %3355 = xor i8 %3354, 1
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3355, i8* %3356, align 1
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3357, align 1
  %3358 = icmp eq i32 %3346, 0
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3359, i8* %3360, align 1
  %3361 = lshr i32 %3346, 31
  %3362 = trunc i32 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3362, i8* %3363, align 1
  %3364 = lshr i32 %3346, 31
  %3365 = xor i32 %3361, %3364
  %3366 = add i32 %3365, %3364
  %3367 = icmp eq i32 %3366, 2
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3368, i8* %3369, align 1
  store %struct.Memory* %loadMem_426051, %struct.Memory** %MEMORY
  %loadMem_426054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %PC.i65
  %3374 = add i64 %3373, 11
  %3375 = load i64, i64* %PC.i65
  %3376 = add i64 %3375, 6
  %3377 = load i64, i64* %PC.i65
  %3378 = add i64 %3377, 6
  store i64 %3378, i64* %PC.i65
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3380 = load i8, i8* %3379, align 1
  %3381 = icmp ne i8 %3380, 0
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3383 = load i8, i8* %3382, align 1
  %3384 = icmp ne i8 %3383, 0
  %3385 = xor i1 %3381, %3384
  %3386 = xor i1 %3385, true
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %BRANCH_TAKEN, align 1
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3389 = select i1 %3385, i64 %3376, i64 %3374
  store i64 %3389, i64* %3388, align 8
  store %struct.Memory* %loadMem_426054, %struct.Memory** %MEMORY
  %loadBr_426054 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426054 = icmp eq i8 %loadBr_426054, 1
  br i1 %cmpBr_426054, label %block_.L_42605f, label %block_42605a

block_42605a:                                     ; preds = %block_42604c
  %loadMem_42605a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3392 to i64*
  %3393 = load i64, i64* %PC.i64
  %3394 = add i64 %3393, 45
  %3395 = load i64, i64* %PC.i64
  %3396 = add i64 %3395, 5
  store i64 %3396, i64* %PC.i64
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3394, i64* %3397, align 8
  store %struct.Memory* %loadMem_42605a, %struct.Memory** %MEMORY
  br label %block_.L_426087

block_.L_42605f:                                  ; preds = %block_42604c
  %loadMem_42605f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 11
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RDI.i63 = bitcast %union.anon* %3403 to i64*
  %3404 = load i64, i64* %PC.i62
  %3405 = add i64 %3404, 10
  store i64 %3405, i64* %PC.i62
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i63, align 8
  store %struct.Memory* %loadMem_42605f, %struct.Memory** %MEMORY
  %loadMem_426069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 9
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RSI.i61 = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %PC.i60
  %3413 = add i64 %3412, 5
  store i64 %3413, i64* %PC.i60
  store i64 177, i64* %RSI.i61, align 8
  store %struct.Memory* %loadMem_426069, %struct.Memory** %MEMORY
  %loadMem_42606e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 7
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %PC.i58
  %3421 = add i64 %3420, 10
  store i64 %3421, i64* %PC.i58
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_42606e, %struct.Memory** %MEMORY
  %loadMem_426078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 1
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %PC.i56
  %3429 = add i64 %3428, 5
  store i64 %3429, i64* %PC.i56
  store i64 4294967295, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_426078, %struct.Memory** %MEMORY
  %loadMem_42607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 33
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3432 to i64*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 1
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %3435 to i32*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 5
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %3438 to i64*
  %3439 = load i32, i32* %EAX.i54
  %3440 = zext i32 %3439 to i64
  %3441 = load i64, i64* %PC.i53
  %3442 = add i64 %3441, 2
  store i64 %3442, i64* %PC.i53
  %3443 = and i64 %3440, 4294967295
  store i64 %3443, i64* %RCX.i55, align 8
  store %struct.Memory* %loadMem_42607d, %struct.Memory** %MEMORY
  %loadMem_42607f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 1
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %EAX.i51 = bitcast %union.anon* %3449 to i32*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 17
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %R8D.i52 = bitcast %union.anon* %3452 to i32*
  %3453 = bitcast i32* %R8D.i52 to i64*
  %3454 = load i32, i32* %EAX.i51
  %3455 = zext i32 %3454 to i64
  %3456 = load i64, i64* %PC.i50
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i50
  %3458 = and i64 %3455, 4294967295
  store i64 %3458, i64* %3453, align 8
  store %struct.Memory* %loadMem_42607f, %struct.Memory** %MEMORY
  %loadMem1_426082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %PC.i49
  %3463 = add i64 %3462, 180238
  %3464 = load i64, i64* %PC.i49
  %3465 = add i64 %3464, 5
  %3466 = load i64, i64* %PC.i49
  %3467 = add i64 %3466, 5
  store i64 %3467, i64* %PC.i49
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3469 = load i64, i64* %3468, align 8
  %3470 = add i64 %3469, -8
  %3471 = inttoptr i64 %3470 to i64*
  store i64 %3465, i64* %3471
  store i64 %3470, i64* %3468, align 8
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3463, i64* %3472, align 8
  store %struct.Memory* %loadMem1_426082, %struct.Memory** %MEMORY
  %loadMem2_426082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426082 = load i64, i64* %3
  %call2_426082 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_426082, %struct.Memory* %loadMem2_426082)
  store %struct.Memory* %call2_426082, %struct.Memory** %MEMORY
  br label %block_.L_426087

block_.L_426087:                                  ; preds = %block_.L_42605f, %block_42605a
  %loadMem_426087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3475 to i64*
  %3476 = load i64, i64* %PC.i48
  %3477 = add i64 %3476, 170
  %3478 = load i64, i64* %PC.i48
  %3479 = add i64 %3478, 5
  store i64 %3479, i64* %PC.i48
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3477, i64* %3480, align 8
  store %struct.Memory* %loadMem_426087, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_42608c:                                  ; preds = %block_.L_426042
  %loadMem_42608c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 1
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %3486 to i64*
  %3487 = load i64, i64* %PC.i46
  %3488 = add i64 %3487, 7
  store i64 %3488, i64* %PC.i46
  %3489 = load i32, i32* bitcast (%G_0x7ae434_type* @G_0x7ae434 to i32*)
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_42608c, %struct.Memory** %MEMORY
  %loadMem_426093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 1
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %3496 to i32*
  %3497 = load i32, i32* %EAX.i45
  %3498 = zext i32 %3497 to i64
  %3499 = load i64, i64* %PC.i44
  %3500 = add i64 %3499, 7
  store i64 %3500, i64* %PC.i44
  %3501 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %3502 = sub i32 %3497, %3501
  %3503 = icmp ult i32 %3497, %3501
  %3504 = zext i1 %3503 to i8
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3504, i8* %3505, align 1
  %3506 = and i32 %3502, 255
  %3507 = call i32 @llvm.ctpop.i32(i32 %3506)
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3510, i8* %3511, align 1
  %3512 = xor i32 %3501, %3497
  %3513 = xor i32 %3512, %3502
  %3514 = lshr i32 %3513, 4
  %3515 = trunc i32 %3514 to i8
  %3516 = and i8 %3515, 1
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3516, i8* %3517, align 1
  %3518 = icmp eq i32 %3502, 0
  %3519 = zext i1 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3519, i8* %3520, align 1
  %3521 = lshr i32 %3502, 31
  %3522 = trunc i32 %3521 to i8
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3522, i8* %3523, align 1
  %3524 = lshr i32 %3497, 31
  %3525 = lshr i32 %3501, 31
  %3526 = xor i32 %3525, %3524
  %3527 = xor i32 %3521, %3524
  %3528 = add i32 %3527, %3526
  %3529 = icmp eq i32 %3528, 2
  %3530 = zext i1 %3529 to i8
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3530, i8* %3531, align 1
  store %struct.Memory* %loadMem_426093, %struct.Memory** %MEMORY
  %loadMem_42609a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %PC.i43
  %3536 = add i64 %3535, 35
  %3537 = load i64, i64* %PC.i43
  %3538 = add i64 %3537, 6
  %3539 = load i64, i64* %PC.i43
  %3540 = add i64 %3539, 6
  store i64 %3540, i64* %PC.i43
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3542 = load i8, i8* %3541, align 1
  store i8 %3542, i8* %BRANCH_TAKEN, align 1
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3544 = icmp ne i8 %3542, 0
  %3545 = select i1 %3544, i64 %3536, i64 %3538
  store i64 %3545, i64* %3543, align 8
  store %struct.Memory* %loadMem_42609a, %struct.Memory** %MEMORY
  %loadBr_42609a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42609a = icmp eq i8 %loadBr_42609a, 1
  br i1 %cmpBr_42609a, label %block_.L_4260bd, label %block_4260a0

block_4260a0:                                     ; preds = %block_.L_42608c
  %loadMem_4260a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 1
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %3552 = bitcast %union.anon* %3551 to %struct.anon.2*
  %AL.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3552, i32 0, i32 0
  %3553 = load i64, i64* %PC.i41
  %3554 = add i64 %3553, 2
  store i64 %3554, i64* %PC.i41
  store i8 1, i8* %AL.i42, align 1
  store %struct.Memory* %loadMem_4260a0, %struct.Memory** %MEMORY
  %loadMem_4260a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 5
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %PC.i39
  %3562 = add i64 %3561, 7
  store i64 %3562, i64* %PC.i39
  %3563 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_4260a2, %struct.Memory** %MEMORY
  %loadMem_4260a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 5
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3570 to i32*
  %3571 = load i32, i32* %ECX.i
  %3572 = zext i32 %3571 to i64
  %3573 = load i64, i64* %PC.i38
  %3574 = add i64 %3573, 7
  store i64 %3574, i64* %PC.i38
  store i32 %3571, i32* bitcast (%G_0x7ae434_type* @G_0x7ae434 to i32*)
  store %struct.Memory* %loadMem_4260a9, %struct.Memory** %MEMORY
  %loadMem_4260b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %3581 = bitcast %union.anon* %3580 to %struct.anon.2*
  %AL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3581, i32 0, i32 0
  %3582 = load i8, i8* %AL.i37
  %3583 = zext i8 %3582 to i64
  %3584 = load i64, i64* %PC.i36
  %3585 = add i64 %3584, 2
  store i64 %3585, i64* %PC.i36
  %3586 = and i64 1, %3583
  %3587 = trunc i64 %3586 to i8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3588, align 1
  %3589 = trunc i64 %3586 to i32
  %3590 = and i32 %3589, 255
  %3591 = call i32 @llvm.ctpop.i32(i32 %3590)
  %3592 = trunc i32 %3591 to i8
  %3593 = and i8 %3592, 1
  %3594 = xor i8 %3593, 1
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3594, i8* %3595, align 1
  %3596 = icmp eq i8 %3587, 0
  %3597 = zext i1 %3596 to i8
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3597, i8* %3598, align 1
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3599, align 1
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3600, align 1
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3601, align 1
  store %struct.Memory* %loadMem_4260b0, %struct.Memory** %MEMORY
  %loadMem_4260b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 33
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %PC.i35
  %3606 = add i64 %3605, 29
  %3607 = load i64, i64* %PC.i35
  %3608 = add i64 %3607, 6
  %3609 = load i64, i64* %PC.i35
  %3610 = add i64 %3609, 6
  store i64 %3610, i64* %PC.i35
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3612 = load i8, i8* %3611, align 1
  %3613 = icmp eq i8 %3612, 0
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %BRANCH_TAKEN, align 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3616 = select i1 %3613, i64 %3606, i64 %3608
  store i64 %3616, i64* %3615, align 8
  store %struct.Memory* %loadMem_4260b2, %struct.Memory** %MEMORY
  %loadBr_4260b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260b2 = icmp eq i8 %loadBr_4260b2, 1
  br i1 %cmpBr_4260b2, label %block_.L_4260cf, label %block_4260b8

block_4260b8:                                     ; preds = %block_4260a0
  %loadMem_4260b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 33
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3619 to i64*
  %3620 = load i64, i64* %PC.i34
  %3621 = add i64 %3620, 28
  %3622 = load i64, i64* %PC.i34
  %3623 = add i64 %3622, 5
  store i64 %3623, i64* %PC.i34
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3621, i64* %3624, align 8
  store %struct.Memory* %loadMem_4260b8, %struct.Memory** %MEMORY
  br label %block_.L_4260d4

block_.L_4260bd:                                  ; preds = %block_.L_42608c
  %loadMem_4260bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 1
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %3630 to i32*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 1
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %3633 to i64*
  %3634 = load i64, i64* %RAX.i33
  %3635 = load i32, i32* %EAX.i32
  %3636 = zext i32 %3635 to i64
  %3637 = load i64, i64* %PC.i31
  %3638 = add i64 %3637, 2
  store i64 %3638, i64* %PC.i31
  %3639 = xor i64 %3636, %3634
  %3640 = trunc i64 %3639 to i32
  %3641 = and i64 %3639, 4294967295
  store i64 %3641, i64* %RAX.i33, align 8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3642, align 1
  %3643 = and i32 %3640, 255
  %3644 = call i32 @llvm.ctpop.i32(i32 %3643)
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = xor i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3647, i8* %3648, align 1
  %3649 = icmp eq i32 %3640, 0
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3650, i8* %3651, align 1
  %3652 = lshr i32 %3640, 31
  %3653 = trunc i32 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3653, i8* %3654, align 1
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3655, align 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3656, align 1
  store %struct.Memory* %loadMem_4260bd, %struct.Memory** %MEMORY
  %loadMem_4260bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 33
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 1
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %3663 = bitcast %union.anon* %3662 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3663, i32 0, i32 0
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 5
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %3667 = bitcast %union.anon* %3666 to %struct.anon.2*
  %CL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3667, i32 0, i32 0
  %3668 = load i8, i8* %AL.i
  %3669 = zext i8 %3668 to i64
  %3670 = load i64, i64* %PC.i29
  %3671 = add i64 %3670, 2
  store i64 %3671, i64* %PC.i29
  store i8 %3668, i8* %CL.i30, align 1
  store %struct.Memory* %loadMem_4260bf, %struct.Memory** %MEMORY
  %loadMem_4260c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 5
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %3678 = bitcast %union.anon* %3677 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3678, i32 0, i32 0
  %3679 = load i8, i8* %CL.i
  %3680 = zext i8 %3679 to i64
  %3681 = load i64, i64* %PC.i28
  %3682 = add i64 %3681, 3
  store i64 %3682, i64* %PC.i28
  %3683 = and i64 1, %3680
  %3684 = trunc i64 %3683 to i8
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3685, align 1
  %3686 = trunc i64 %3683 to i32
  %3687 = and i32 %3686, 255
  %3688 = call i32 @llvm.ctpop.i32(i32 %3687)
  %3689 = trunc i32 %3688 to i8
  %3690 = and i8 %3689, 1
  %3691 = xor i8 %3690, 1
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3691, i8* %3692, align 1
  %3693 = icmp eq i8 %3684, 0
  %3694 = zext i1 %3693 to i8
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3694, i8* %3695, align 1
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3696, align 1
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3697, align 1
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3698, align 1
  store %struct.Memory* %loadMem_4260c1, %struct.Memory** %MEMORY
  %loadMem_4260c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 33
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %PC.i27
  %3703 = add i64 %3702, 11
  %3704 = load i64, i64* %PC.i27
  %3705 = add i64 %3704, 6
  %3706 = load i64, i64* %PC.i27
  %3707 = add i64 %3706, 6
  store i64 %3707, i64* %PC.i27
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3709 = load i8, i8* %3708, align 1
  %3710 = icmp eq i8 %3709, 0
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %BRANCH_TAKEN, align 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3713 = select i1 %3710, i64 %3703, i64 %3705
  store i64 %3713, i64* %3712, align 8
  store %struct.Memory* %loadMem_4260c4, %struct.Memory** %MEMORY
  %loadBr_4260c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260c4 = icmp eq i8 %loadBr_4260c4, 1
  br i1 %cmpBr_4260c4, label %block_.L_4260cf, label %block_4260ca

block_4260ca:                                     ; preds = %block_.L_4260bd
  %loadMem_4260ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %PC.i26
  %3718 = add i64 %3717, 10
  %3719 = load i64, i64* %PC.i26
  %3720 = add i64 %3719, 5
  store i64 %3720, i64* %PC.i26
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3718, i64* %3721, align 8
  store %struct.Memory* %loadMem_4260ca, %struct.Memory** %MEMORY
  br label %block_.L_4260d4

block_.L_4260cf:                                  ; preds = %block_.L_4260bd, %block_4260a0
  %loadMem1_4260cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %PC.i25
  %3726 = add i64 %3725, -29055
  %3727 = load i64, i64* %PC.i25
  %3728 = add i64 %3727, 5
  %3729 = load i64, i64* %PC.i25
  %3730 = add i64 %3729, 5
  store i64 %3730, i64* %PC.i25
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3732 = load i64, i64* %3731, align 8
  %3733 = add i64 %3732, -8
  %3734 = inttoptr i64 %3733 to i64*
  store i64 %3728, i64* %3734
  store i64 %3733, i64* %3731, align 8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3726, i64* %3735, align 8
  store %struct.Memory* %loadMem1_4260cf, %struct.Memory** %MEMORY
  %loadMem2_4260cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4260cf = load i64, i64* %3
  %call2_4260cf = call %struct.Memory* @sub_41ef50.compute_refined_dragon_weaknesses(%struct.State* %0, i64 %loadPC_4260cf, %struct.Memory* %loadMem2_4260cf)
  store %struct.Memory* %call2_4260cf, %struct.Memory** %MEMORY
  br label %block_.L_4260d4

block_.L_4260d4:                                  ; preds = %block_.L_4260cf, %block_4260ca, %block_4260b8
  %loadMem_4260d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 15
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %3741 to i64*
  %3742 = load i64, i64* %RBP.i24
  %3743 = sub i64 %3742, 8
  %3744 = load i64, i64* %PC.i23
  %3745 = add i64 %3744, 4
  store i64 %3745, i64* %PC.i23
  %3746 = inttoptr i64 %3743 to i32*
  %3747 = load i32, i32* %3746
  %3748 = sub i32 %3747, 7
  %3749 = icmp ult i32 %3747, 7
  %3750 = zext i1 %3749 to i8
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3750, i8* %3751, align 1
  %3752 = and i32 %3748, 255
  %3753 = call i32 @llvm.ctpop.i32(i32 %3752)
  %3754 = trunc i32 %3753 to i8
  %3755 = and i8 %3754, 1
  %3756 = xor i8 %3755, 1
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3756, i8* %3757, align 1
  %3758 = xor i32 %3747, 7
  %3759 = xor i32 %3758, %3748
  %3760 = lshr i32 %3759, 4
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3762, i8* %3763, align 1
  %3764 = icmp eq i32 %3748, 0
  %3765 = zext i1 %3764 to i8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3765, i8* %3766, align 1
  %3767 = lshr i32 %3748, 31
  %3768 = trunc i32 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3768, i8* %3769, align 1
  %3770 = lshr i32 %3747, 31
  %3771 = xor i32 %3767, %3770
  %3772 = add i32 %3771, %3770
  %3773 = icmp eq i32 %3772, 2
  %3774 = zext i1 %3773 to i8
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3774, i8* %3775, align 1
  store %struct.Memory* %loadMem_4260d4, %struct.Memory** %MEMORY
  %loadMem_4260d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %PC.i22
  %3780 = add i64 %3779, 70
  %3781 = load i64, i64* %PC.i22
  %3782 = add i64 %3781, 6
  %3783 = load i64, i64* %PC.i22
  %3784 = add i64 %3783, 6
  store i64 %3784, i64* %PC.i22
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3786 = load i8, i8* %3785, align 1
  %3787 = icmp eq i8 %3786, 0
  %3788 = zext i1 %3787 to i8
  store i8 %3788, i8* %BRANCH_TAKEN, align 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3790 = select i1 %3787, i64 %3780, i64 %3782
  store i64 %3790, i64* %3789, align 8
  store %struct.Memory* %loadMem_4260d8, %struct.Memory** %MEMORY
  %loadBr_4260d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260d8 = icmp eq i8 %loadBr_4260d8, 1
  br i1 %cmpBr_4260d8, label %block_.L_42611e, label %block_4260de

block_4260de:                                     ; preds = %block_.L_4260d4
  %loadMem1_4260de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 33
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %PC.i21
  %3795 = add i64 %3794, -119726
  %3796 = load i64, i64* %PC.i21
  %3797 = add i64 %3796, 5
  %3798 = load i64, i64* %PC.i21
  %3799 = add i64 %3798, 5
  store i64 %3799, i64* %PC.i21
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3801 = load i64, i64* %3800, align 8
  %3802 = add i64 %3801, -8
  %3803 = inttoptr i64 %3802 to i64*
  store i64 %3797, i64* %3803
  store i64 %3802, i64* %3800, align 8
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3795, i64* %3804, align 8
  store %struct.Memory* %loadMem1_4260de, %struct.Memory** %MEMORY
  %loadMem2_4260de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4260de = load i64, i64* %3
  %call2_4260de = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64 %loadPC_4260de, %struct.Memory* %loadMem2_4260de)
  store %struct.Memory* %call2_4260de, %struct.Memory** %MEMORY
  %loadMem_4260e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 1
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %3810 to i32*
  %3811 = load i32, i32* %EAX.i20
  %3812 = zext i32 %3811 to i64
  %3813 = load i64, i64* %PC.i19
  %3814 = add i64 %3813, 3
  store i64 %3814, i64* %PC.i19
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3815, align 1
  %3816 = and i32 %3811, 255
  %3817 = call i32 @llvm.ctpop.i32(i32 %3816)
  %3818 = trunc i32 %3817 to i8
  %3819 = and i8 %3818, 1
  %3820 = xor i8 %3819, 1
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3820, i8* %3821, align 1
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3822, align 1
  %3823 = icmp eq i32 %3811, 0
  %3824 = zext i1 %3823 to i8
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3824, i8* %3825, align 1
  %3826 = lshr i32 %3811, 31
  %3827 = trunc i32 %3826 to i8
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3827, i8* %3828, align 1
  %3829 = lshr i32 %3811, 31
  %3830 = xor i32 %3826, %3829
  %3831 = add i32 %3830, %3829
  %3832 = icmp eq i32 %3831, 2
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3833, i8* %3834, align 1
  store %struct.Memory* %loadMem_4260e3, %struct.Memory** %MEMORY
  %loadMem_4260e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %PC.i18
  %3839 = add i64 %3838, 11
  %3840 = load i64, i64* %PC.i18
  %3841 = add i64 %3840, 6
  %3842 = load i64, i64* %PC.i18
  %3843 = add i64 %3842, 6
  store i64 %3843, i64* %PC.i18
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3845 = load i8, i8* %3844, align 1
  %3846 = icmp ne i8 %3845, 0
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3848 = load i8, i8* %3847, align 1
  %3849 = icmp ne i8 %3848, 0
  %3850 = xor i1 %3846, %3849
  %3851 = xor i1 %3850, true
  %3852 = zext i1 %3851 to i8
  store i8 %3852, i8* %BRANCH_TAKEN, align 1
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3854 = select i1 %3850, i64 %3841, i64 %3839
  store i64 %3854, i64* %3853, align 8
  store %struct.Memory* %loadMem_4260e6, %struct.Memory** %MEMORY
  %loadBr_4260e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260e6 = icmp eq i8 %loadBr_4260e6, 1
  br i1 %cmpBr_4260e6, label %block_.L_4260f1, label %block_4260ec

block_4260ec:                                     ; preds = %block_4260de
  %loadMem_4260ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %PC.i17
  %3859 = add i64 %3858, 45
  %3860 = load i64, i64* %PC.i17
  %3861 = add i64 %3860, 5
  store i64 %3861, i64* %PC.i17
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3859, i64* %3862, align 8
  store %struct.Memory* %loadMem_4260ec, %struct.Memory** %MEMORY
  br label %block_.L_426119

block_.L_4260f1:                                  ; preds = %block_4260de
  %loadMem_4260f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 11
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3868 to i64*
  %3869 = load i64, i64* %PC.i16
  %3870 = add i64 %3869, 10
  store i64 %3870, i64* %PC.i16
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4260f1, %struct.Memory** %MEMORY
  %loadMem_4260fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 33
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 9
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %PC.i15
  %3878 = add i64 %3877, 5
  store i64 %3878, i64* %PC.i15
  store i64 185, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4260fb, %struct.Memory** %MEMORY
  %loadMem_426100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 7
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %PC.i14
  %3886 = add i64 %3885, 10
  store i64 %3886, i64* %PC.i14
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_426100, %struct.Memory** %MEMORY
  %loadMem_42610a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 33
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 1
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %PC.i13
  %3894 = add i64 %3893, 5
  store i64 %3894, i64* %PC.i13
  store i64 4294967295, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42610a, %struct.Memory** %MEMORY
  %loadMem_42610f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 1
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %EAX.i12 = bitcast %union.anon* %3900 to i32*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 5
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3903 to i64*
  %3904 = load i32, i32* %EAX.i12
  %3905 = zext i32 %3904 to i64
  %3906 = load i64, i64* %PC.i11
  %3907 = add i64 %3906, 2
  store i64 %3907, i64* %PC.i11
  %3908 = and i64 %3905, 4294967295
  store i64 %3908, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_42610f, %struct.Memory** %MEMORY
  %loadMem_426111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 1
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3914 to i32*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 17
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3917 to i32*
  %3918 = bitcast i32* %R8D.i to i64*
  %3919 = load i32, i32* %EAX.i
  %3920 = zext i32 %3919 to i64
  %3921 = load i64, i64* %PC.i10
  %3922 = add i64 %3921, 3
  store i64 %3922, i64* %PC.i10
  %3923 = and i64 %3920, 4294967295
  store i64 %3923, i64* %3918, align 8
  store %struct.Memory* %loadMem_426111, %struct.Memory** %MEMORY
  %loadMem1_426114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3926 to i64*
  %3927 = load i64, i64* %PC.i9
  %3928 = add i64 %3927, 180092
  %3929 = load i64, i64* %PC.i9
  %3930 = add i64 %3929, 5
  %3931 = load i64, i64* %PC.i9
  %3932 = add i64 %3931, 5
  store i64 %3932, i64* %PC.i9
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3934 = load i64, i64* %3933, align 8
  %3935 = add i64 %3934, -8
  %3936 = inttoptr i64 %3935 to i64*
  store i64 %3930, i64* %3936
  store i64 %3935, i64* %3933, align 8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3928, i64* %3937, align 8
  store %struct.Memory* %loadMem1_426114, %struct.Memory** %MEMORY
  %loadMem2_426114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426114 = load i64, i64* %3
  %call2_426114 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_426114, %struct.Memory* %loadMem2_426114)
  store %struct.Memory* %call2_426114, %struct.Memory** %MEMORY
  br label %block_.L_426119

block_.L_426119:                                  ; preds = %block_.L_4260f1, %block_4260ec
  %loadMem_426119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %PC.i8
  %3942 = add i64 %3941, 24
  %3943 = load i64, i64* %PC.i8
  %3944 = add i64 %3943, 5
  store i64 %3944, i64* %PC.i8
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3942, i64* %3945, align 8
  store %struct.Memory* %loadMem_426119, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_42611e:                                  ; preds = %block_.L_4260d4
  %loadMem_42611e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %PC.i7
  %3950 = add i64 %3949, 8
  store i64 %3950, i64* %PC.i7
  %3951 = load i32, i32* bitcast (%G_0xab0ee0_type* @G_0xab0ee0 to i32*)
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3952, align 1
  %3953 = and i32 %3951, 255
  %3954 = call i32 @llvm.ctpop.i32(i32 %3953)
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  %3957 = xor i8 %3956, 1
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3957, i8* %3958, align 1
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3959, align 1
  %3960 = icmp eq i32 %3951, 0
  %3961 = zext i1 %3960 to i8
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3961, i8* %3962, align 1
  %3963 = lshr i32 %3951, 31
  %3964 = trunc i32 %3963 to i8
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3964, i8* %3965, align 1
  %3966 = lshr i32 %3951, 31
  %3967 = xor i32 %3963, %3966
  %3968 = add i32 %3967, %3966
  %3969 = icmp eq i32 %3968, 2
  %3970 = zext i1 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3970, i8* %3971, align 1
  store %struct.Memory* %loadMem_42611e, %struct.Memory** %MEMORY
  %loadMem_426126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %PC.i6
  %3976 = add i64 %3975, 11
  %3977 = load i64, i64* %PC.i6
  %3978 = add i64 %3977, 6
  %3979 = load i64, i64* %PC.i6
  %3980 = add i64 %3979, 6
  store i64 %3980, i64* %PC.i6
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3982 = load i8, i8* %3981, align 1
  store i8 %3982, i8* %BRANCH_TAKEN, align 1
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3984 = icmp ne i8 %3982, 0
  %3985 = select i1 %3984, i64 %3976, i64 %3978
  store i64 %3985, i64* %3983, align 8
  store %struct.Memory* %loadMem_426126, %struct.Memory** %MEMORY
  %loadBr_426126 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426126 = icmp eq i8 %loadBr_426126, 1
  br i1 %cmpBr_426126, label %block_.L_426131, label %block_42612c

block_42612c:                                     ; preds = %block_.L_42611e
  %loadMem1_42612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %PC.i5
  %3990 = add i64 %3989, -14220
  %3991 = load i64, i64* %PC.i5
  %3992 = add i64 %3991, 5
  %3993 = load i64, i64* %PC.i5
  %3994 = add i64 %3993, 5
  store i64 %3994, i64* %PC.i5
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3996 = load i64, i64* %3995, align 8
  %3997 = add i64 %3996, -8
  %3998 = inttoptr i64 %3997 to i64*
  store i64 %3992, i64* %3998
  store i64 %3997, i64* %3995, align 8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3990, i64* %3999, align 8
  store %struct.Memory* %loadMem1_42612c, %struct.Memory** %MEMORY
  %loadMem2_42612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42612c = load i64, i64* %3
  %call2_42612c = call %struct.Memory* @sub_4229a0.show_dragons(%struct.State* %0, i64 %loadPC_42612c, %struct.Memory* %loadMem2_42612c)
  store %struct.Memory* %call2_42612c, %struct.Memory** %MEMORY
  br label %block_.L_426131

block_.L_426131:                                  ; preds = %block_42612c, %block_.L_42611e, %block_.L_426119, %block_.L_426087, %block_.L_425fe6, %block_.L_425f74, %block_.L_425ec2, %block_.L_425e1b, %block_.L_425d6c
  %loadMem_426131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 33
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 13
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4005 to i64*
  %4006 = load i64, i64* %RSP.i
  %4007 = load i64, i64* %PC.i4
  %4008 = add i64 %4007, 4
  store i64 %4008, i64* %PC.i4
  %4009 = add i64 32, %4006
  store i64 %4009, i64* %RSP.i, align 8
  %4010 = icmp ult i64 %4009, %4006
  %4011 = icmp ult i64 %4009, 32
  %4012 = or i1 %4010, %4011
  %4013 = zext i1 %4012 to i8
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4013, i8* %4014, align 1
  %4015 = trunc i64 %4009 to i32
  %4016 = and i32 %4015, 255
  %4017 = call i32 @llvm.ctpop.i32(i32 %4016)
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4020, i8* %4021, align 1
  %4022 = xor i64 32, %4006
  %4023 = xor i64 %4022, %4009
  %4024 = lshr i64 %4023, 4
  %4025 = trunc i64 %4024 to i8
  %4026 = and i8 %4025, 1
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4026, i8* %4027, align 1
  %4028 = icmp eq i64 %4009, 0
  %4029 = zext i1 %4028 to i8
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4029, i8* %4030, align 1
  %4031 = lshr i64 %4009, 63
  %4032 = trunc i64 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4032, i8* %4033, align 1
  %4034 = lshr i64 %4006, 63
  %4035 = xor i64 %4031, %4034
  %4036 = add i64 %4035, %4031
  %4037 = icmp eq i64 %4036, 2
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4038, i8* %4039, align 1
  store %struct.Memory* %loadMem_426131, %struct.Memory** %MEMORY
  %loadMem_426135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 15
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4045 to i64*
  %4046 = load i64, i64* %PC.i2
  %4047 = add i64 %4046, 1
  store i64 %4047, i64* %PC.i2
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4049 = load i64, i64* %4048, align 8
  %4050 = add i64 %4049, 8
  %4051 = inttoptr i64 %4049 to i64*
  %4052 = load i64, i64* %4051
  store i64 %4052, i64* %RBP.i3, align 8
  store i64 %4050, i64* %4048, align 8
  store %struct.Memory* %loadMem_426135, %struct.Memory** %MEMORY
  %loadMem_426136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4055 to i64*
  %4056 = load i64, i64* %PC.i1
  %4057 = add i64 %4056, 1
  store i64 %4057, i64* %PC.i1
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4060 = load i64, i64* %4059, align 8
  %4061 = inttoptr i64 %4060 to i64*
  %4062 = load i64, i64* %4061
  store i64 %4062, i64* %4058, align 8
  %4063 = add i64 %4060, 8
  store i64 %4063, i64* %4059, align 8
  store %struct.Memory* %loadMem_426136, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_426136
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_movl_0xab0f28___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.purge_persistent_reading_cache(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %9 = sub i32 %8, 1
  %10 = icmp ult i32 %8, 1
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 1
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_425c99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %9 = sub i32 %8, 2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 2
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_425caa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae420___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae420_type* @G_0x7ae420 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
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

define %struct.Memory* @routine_je_.L_425cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x7ae420(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae420_type* @G_0x7ae420 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_425ced(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425d1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_testb__0x1___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
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

define %struct.Memory* @routine_callq_.start_timer(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.make_worms(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57bf2c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bf2c_type* @G__0x57bf2c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xbd253__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xbd253__rip__type* @G_0xbd253__rip_ to i64)
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

define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.time_report(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jne_.L_425d71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.test_gray_border(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_425d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425d6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x82___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 130, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
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

define %struct.Memory* @routine_jmpq_.L_426131(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.stones_on_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_425f7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae424___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae424_type* @G_0x7ae424 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_425db5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__0x7ae424(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae424_type* @G_0x7ae424 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_425dc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425dcc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.compute_worm_influence(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jne_.L_425e20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_425df3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425e1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x8b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 139, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jne_.L_425ec7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae428___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae428_type* @G_0x7ae428 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_425e5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__0x7ae428(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae428_type* @G_0x7ae428 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_425e6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425e7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.make_dragons(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_425e9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425ec2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x93___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 147, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae42c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae42c_type* @G_0x7ae42c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_425ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__0x7ae42c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae42c_type* @G_0x7ae42c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_425f0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425f25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0xb8af2c___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8af2c_type* @G_0xb8af2c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x7ae428(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae428_type* @G_0x7ae428 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jne_.L_425f79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_425f4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425f74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x9e___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 158, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_425ff0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_425f9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x63__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 99
  %16 = icmp ult i32 %14, 99
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
  %25 = xor i32 %14, 99
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

define %struct.Memory* @routine_jne_.L_425feb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.initialize_dragon_data(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_425fbe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_425fe6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xa7___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 167, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae430___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae430_type* @G_0x7ae430 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42602b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__0x7ae430(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae430_type* @G_0x7ae430 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42603d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_426042(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.compute_dragon_influence(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jne_.L_42608c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_42605f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_426087(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xb1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 177, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae434___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae434_type* @G_0x7ae434 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4260bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__0x7ae434(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae434_type* @G_0x7ae434 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4260cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4260d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.compute_refined_dragon_weaknesses(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x7__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 7
  %16 = icmp ult i32 %14, 7
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
  %25 = xor i32 %14, 7
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

define %struct.Memory* @routine_jne_.L_42611e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4260f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_426119(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xb9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 185, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xab0ee0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0ee0_type* @G_0xab0ee0 to i32*)
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

define %struct.Memory* @routine_je_.L_426131(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.show_dragons(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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
