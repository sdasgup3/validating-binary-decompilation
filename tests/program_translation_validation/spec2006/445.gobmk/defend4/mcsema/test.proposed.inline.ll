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
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae23a4_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb6308c_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G__0x57a749_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fbff_type = type <{ [8 x i8] }>
%G__0x57fc6a_type = type <{ [8 x i8] }>
%G__0x57fc7d_type = type <{ [8 x i8] }>
%G__0x57fc87_type = type <{ [8 x i8] }>
%G__0x57fce9_type = type <{ [8 x i8] }>
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
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xae23a4 = global %G_0xae23a4_type zeroinitializer
@G_0xb060b8 = global %G_0xb060b8_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xb6308c = global %G_0xb6308c_type zeroinitializer
@G_0xb8b850 = global %G_0xb8b850_type zeroinitializer
@G__0x57a749 = global %G__0x57a749_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fbff = global %G__0x57fbff_type zeroinitializer
@G__0x57fc6a = global %G__0x57fc6a_type zeroinitializer
@G__0x57fc7d = global %G__0x57fc7d_type zeroinitializer
@G__0x57fc87 = global %G__0x57fc87_type zeroinitializer
@G__0x57fce9 = global %G__0x57fce9_type zeroinitializer

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

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @defend4(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4663c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4663c0, %struct.Memory** %MEMORY
  %loadMem_4663c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i482 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i482
  %27 = load i64, i64* %PC.i481
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i481
  store i64 %26, i64* %RBP.i483, align 8
  store %struct.Memory* %loadMem_4663c1, %struct.Memory** %MEMORY
  %loadMem_4663c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i500 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i500
  %36 = load i64, i64* %PC.i499
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i499
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_4663c4, %struct.Memory** %MEMORY
  %loadMem_4663c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i657 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i657
  %49 = load i64, i64* %PC.i656
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i656
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_4663c6, %struct.Memory** %MEMORY
  %loadMem_4663c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 27
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %R13.i655 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %R13.i655
  %62 = load i64, i64* %PC.i654
  %63 = add i64 %62, 2
  store i64 %63, i64* %PC.i654
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_4663c8, %struct.Memory** %MEMORY
  %loadMem_4663ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %R12.i653 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %R12.i653
  %75 = load i64, i64* %PC.i652
  %76 = add i64 %75, 2
  store i64 %76, i64* %PC.i652
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64 %74, i64* %80
  store i64 %79, i64* %77, align 8
  store %struct.Memory* %loadMem_4663ca, %struct.Memory** %MEMORY
  %loadMem_4663cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBX.i651 = bitcast %union.anon* %86 to i64*
  %87 = load i64, i64* %RBX.i651
  %88 = load i64, i64* %PC.i650
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC.i650
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8
  store %struct.Memory* %loadMem_4663cc, %struct.Memory** %MEMORY
  %loadMem_4663cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 13
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RSP.i649 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RSP.i649
  %101 = load i64, i64* %PC.i648
  %102 = add i64 %101, 7
  store i64 %102, i64* %PC.i648
  %103 = sub i64 %100, 616
  store i64 %103, i64* %RSP.i649, align 8
  %104 = icmp ult i64 %100, 616
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %105, i8* %106, align 1
  %107 = trunc i64 %103 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1
  %114 = xor i64 616, %100
  %115 = xor i64 %114, %103
  %116 = lshr i64 %115, 4
  %117 = trunc i64 %116 to i8
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %118, i8* %119, align 1
  %120 = icmp eq i64 %103, 0
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %121, i8* %122, align 1
  %123 = lshr i64 %103, 63
  %124 = trunc i64 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %124, i8* %125, align 1
  %126 = lshr i64 %100, 63
  %127 = xor i64 %123, %126
  %128 = add i64 %127, %126
  %129 = icmp eq i64 %128, 2
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %130, i8* %131, align 1
  store %struct.Memory* %loadMem_4663cd, %struct.Memory** %MEMORY
  %loadMem_4663d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i646
  %139 = add i64 %138, 5
  store i64 %139, i64* %PC.i646
  store i64 3, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_4663d4, %struct.Memory** %MEMORY
  %loadMem_4663d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 17
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %R8.i645 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i644
  %147 = add i64 %146, 10
  store i64 %147, i64* %PC.i644
  store i64 ptrtoint (%G__0x57a749_type* @G__0x57a749 to i64), i64* %R8.i645, align 8
  store %struct.Memory* %loadMem_4663d9, %struct.Memory** %MEMORY
  %loadMem_4663e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %EDI.i642 = bitcast %union.anon* %153 to i32*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %RBP.i643
  %158 = sub i64 %157, 48
  %159 = load i32, i32* %EDI.i642
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC.i641
  %162 = add i64 %161, 3
  store i64 %162, i64* %PC.i641
  %163 = inttoptr i64 %158 to i32*
  store i32 %159, i32* %163
  store %struct.Memory* %loadMem_4663e3, %struct.Memory** %MEMORY
  %loadMem_4663e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RSI.i639 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RBP.i640
  %174 = sub i64 %173, 56
  %175 = load i64, i64* %RSI.i639
  %176 = load i64, i64* %PC.i638
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC.i638
  %178 = inttoptr i64 %174 to i64*
  store i64 %175, i64* %178
  store %struct.Memory* %loadMem_4663e6, %struct.Memory** %MEMORY
  %loadMem_4663ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %EDX.i636 = bitcast %union.anon* %184 to i32*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i637
  %189 = sub i64 %188, 60
  %190 = load i32, i32* %EDX.i636
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %PC.i635
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i635
  %194 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %194
  store %struct.Memory* %loadMem_4663ea, %struct.Memory** %MEMORY
  %loadMem_4663ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %ECX.i633 = bitcast %union.anon* %200 to i32*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 15
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %RBP.i634
  %205 = sub i64 %204, 64
  %206 = load i32, i32* %ECX.i633
  %207 = zext i32 %206 to i64
  %208 = load i64, i64* %PC.i632
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC.i632
  %210 = inttoptr i64 %205 to i32*
  store i32 %206, i32* %210
  store %struct.Memory* %loadMem_4663ed, %struct.Memory** %MEMORY
  %loadMem_4663f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 15
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %RBP.i631
  %218 = sub i64 %217, 508
  %219 = load i64, i64* %PC.i630
  %220 = add i64 %219, 10
  store i64 %220, i64* %PC.i630
  %221 = inttoptr i64 %218 to i32*
  store i32 0, i32* %221
  store %struct.Memory* %loadMem_4663f0, %struct.Memory** %MEMORY
  %loadMem_4663fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i629
  %229 = sub i64 %228, 512
  %230 = load i64, i64* %PC.i628
  %231 = add i64 %230, 10
  store i64 %231, i64* %PC.i628
  %232 = inttoptr i64 %229 to i32*
  store i32 0, i32* %232
  store %struct.Memory* %loadMem_4663fa, %struct.Memory** %MEMORY
  %loadMem_466404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 15
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 17
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %R8.i627 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i626
  %243 = sub i64 %242, 528
  %244 = load i64, i64* %R8.i627
  %245 = load i64, i64* %PC.i625
  %246 = add i64 %245, 7
  store i64 %246, i64* %PC.i625
  %247 = inttoptr i64 %243 to i64*
  store i64 %244, i64* %247
  store %struct.Memory* %loadMem_466404, %struct.Memory** %MEMORY
  %loadMem_46640b = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 15
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %RBP.i624
  %258 = sub i64 %257, 48
  %259 = load i64, i64* %PC.i622
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC.i622
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_46640b, %struct.Memory** %MEMORY
  %loadMem_46640e = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %ECX.i620 = bitcast %union.anon* %269 to i32*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 15
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %RBP.i621
  %274 = sub i64 %273, 532
  %275 = load i32, i32* %ECX.i620
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* %PC.i619
  %278 = add i64 %277, 6
  store i64 %278, i64* %PC.i619
  %279 = inttoptr i64 %274 to i32*
  store i32 %275, i32* %279
  store %struct.Memory* %loadMem_46640e, %struct.Memory** %MEMORY
  %loadMem_466414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %PC.i617
  %287 = add i64 %286, 7
  store i64 %287, i64* %PC.i617
  %288 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_466414, %struct.Memory** %MEMORY
  %loadMem_46641b = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RCX.i616
  %297 = load i64, i64* %PC.i615
  %298 = add i64 %297, 3
  store i64 %298, i64* %PC.i615
  %299 = trunc i64 %296 to i32
  %300 = add i32 1, %299
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RCX.i616, align 8
  %302 = icmp ult i32 %300, %299
  %303 = icmp ult i32 %300, 1
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %305, i8* %306, align 1
  %307 = and i32 %300, 255
  %308 = call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %311, i8* %312, align 1
  %313 = xor i64 1, %296
  %314 = trunc i64 %313 to i32
  %315 = xor i32 %314, %300
  %316 = lshr i32 %315, 4
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %318, i8* %319, align 1
  %320 = icmp eq i32 %300, 0
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %321, i8* %322, align 1
  %323 = lshr i32 %300, 31
  %324 = trunc i32 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %324, i8* %325, align 1
  %326 = lshr i32 %299, 31
  %327 = xor i32 %323, %326
  %328 = add i32 %327, %323
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %330, i8* %331, align 1
  store %struct.Memory* %loadMem_46641b, %struct.Memory** %MEMORY
  %loadMem_46641e = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %ECX.i614 = bitcast %union.anon* %337 to i32*
  %338 = load i32, i32* %ECX.i614
  %339 = zext i32 %338 to i64
  %340 = load i64, i64* %PC.i613
  %341 = add i64 %340, 7
  store i64 %341, i64* %PC.i613
  store i32 %338, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  store %struct.Memory* %loadMem_46641e, %struct.Memory** %MEMORY
  %loadMem_466425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 9
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RSI.i611 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i612
  %352 = sub i64 %351, 48
  %353 = load i64, i64* %PC.i610
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC.i610
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %RSI.i611, align 8
  store %struct.Memory* %loadMem_466425, %struct.Memory** %MEMORY
  %loadMem_466429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 9
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RSI.i609 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RSI.i609
  %368 = add i64 %367, 12099168
  %369 = load i64, i64* %PC.i607
  %370 = add i64 %369, 8
  store i64 %370, i64* %PC.i607
  %371 = inttoptr i64 %368 to i8*
  %372 = load i8, i8* %371
  %373 = zext i8 %372 to i64
  store i64 %373, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_466429, %struct.Memory** %MEMORY
  %loadMem_466431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %ECX.i605 = bitcast %union.anon* %379 to i32*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i606
  %384 = sub i64 %383, 68
  %385 = load i32, i32* %ECX.i605
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC.i604
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC.i604
  %389 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %389
  store %struct.Memory* %loadMem_466431, %struct.Memory** %MEMORY
  %loadMem_466434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 15
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RAX.i602
  %400 = load i64, i64* %RBP.i603
  %401 = sub i64 %400, 68
  %402 = load i64, i64* %PC.i601
  %403 = add i64 %402, 3
  store i64 %403, i64* %PC.i601
  %404 = trunc i64 %399 to i32
  %405 = inttoptr i64 %401 to i32*
  %406 = load i32, i32* %405
  %407 = sub i32 %404, %406
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i602, align 8
  %409 = icmp ult i32 %404, %406
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %410, i8* %411, align 1
  %412 = and i32 %407, 255
  %413 = call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %416, i8* %417, align 1
  %418 = xor i32 %406, %404
  %419 = xor i32 %418, %407
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %422, i8* %423, align 1
  %424 = icmp eq i32 %407, 0
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %425, i8* %426, align 1
  %427 = lshr i32 %407, 31
  %428 = trunc i32 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %428, i8* %429, align 1
  %430 = lshr i32 %404, 31
  %431 = lshr i32 %406, 31
  %432 = xor i32 %431, %430
  %433 = xor i32 %427, %430
  %434 = add i32 %433, %432
  %435 = icmp eq i32 %434, 2
  %436 = zext i1 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %436, i8* %437, align 1
  store %struct.Memory* %loadMem_466434, %struct.Memory** %MEMORY
  %loadMem_466437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %EAX.i599 = bitcast %union.anon* %443 to i32*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 15
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RBP.i600
  %448 = sub i64 %447, 72
  %449 = load i32, i32* %EAX.i599
  %450 = zext i32 %449 to i64
  %451 = load i64, i64* %PC.i598
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i598
  %453 = inttoptr i64 %448 to i32*
  store i32 %449, i32* %453
  store %struct.Memory* %loadMem_466437, %struct.Memory** %MEMORY
  %loadMem_46643a = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 9
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RSI.i596 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 15
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %RBP.i597
  %464 = sub i64 %463, 48
  %465 = load i64, i64* %PC.i595
  %466 = add i64 %465, 4
  store i64 %466, i64* %PC.i595
  %467 = inttoptr i64 %464 to i32*
  %468 = load i32, i32* %467
  %469 = sext i32 %468 to i64
  store i64 %469, i64* %RSI.i596, align 8
  store %struct.Memory* %loadMem_46643a, %struct.Memory** %MEMORY
  %loadMem_46643e = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 9
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RSI.i594 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RSI.i594
  %480 = add i64 %479, 12099168
  %481 = load i64, i64* %PC.i592
  %482 = add i64 %481, 8
  store i64 %482, i64* %PC.i592
  %483 = inttoptr i64 %480 to i8*
  %484 = load i8, i8* %483
  %485 = zext i8 %484 to i64
  store i64 %485, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_46643e, %struct.Memory** %MEMORY
  %loadMem_466446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %EAX.i591 = bitcast %union.anon* %491 to i32*
  %492 = load i32, i32* %EAX.i591
  %493 = zext i32 %492 to i64
  %494 = load i64, i64* %PC.i590
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC.i590
  %496 = sub i32 %492, 1
  %497 = icmp ult i32 %492, 1
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %498, i8* %499, align 1
  %500 = and i32 %496, 255
  %501 = call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %504, i8* %505, align 1
  %506 = xor i64 1, %493
  %507 = trunc i64 %506 to i32
  %508 = xor i32 %507, %496
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %511, i8* %512, align 1
  %513 = icmp eq i32 %496, 0
  %514 = zext i1 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %514, i8* %515, align 1
  %516 = lshr i32 %496, 31
  %517 = trunc i32 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %517, i8* %518, align 1
  %519 = lshr i32 %492, 31
  %520 = xor i32 %516, %519
  %521 = add i32 %520, %519
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %523, i8* %524, align 1
  store %struct.Memory* %loadMem_466446, %struct.Memory** %MEMORY
  %loadMem_466449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %PC.i589
  %529 = add i64 %528, 27
  %530 = load i64, i64* %PC.i589
  %531 = add i64 %530, 6
  %532 = load i64, i64* %PC.i589
  %533 = add i64 %532, 6
  store i64 %533, i64* %PC.i589
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %535 = load i8, i8* %534, align 1
  store i8 %535, i8* %BRANCH_TAKEN, align 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %537 = icmp ne i8 %535, 0
  %538 = select i1 %537, i64 %529, i64 %531
  store i64 %538, i64* %536, align 8
  store %struct.Memory* %loadMem_466449, %struct.Memory** %MEMORY
  %loadBr_466449 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466449 = icmp eq i8 %loadBr_466449, 1
  br i1 %cmpBr_466449, label %block_.L_466464, label %block_46644f

block_46644f:                                     ; preds = %entry
  %loadMem_46644f = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 15
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %RBP.i588
  %549 = sub i64 %548, 48
  %550 = load i64, i64* %PC.i586
  %551 = add i64 %550, 4
  store i64 %551, i64* %PC.i586
  %552 = inttoptr i64 %549 to i32*
  %553 = load i32, i32* %552
  %554 = sext i32 %553 to i64
  store i64 %554, i64* %RAX.i587, align 8
  store %struct.Memory* %loadMem_46644f, %struct.Memory** %MEMORY
  %loadMem_466453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 5
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RAX.i584
  %565 = add i64 %564, 12099168
  %566 = load i64, i64* %PC.i583
  %567 = add i64 %566, 8
  store i64 %567, i64* %PC.i583
  %568 = inttoptr i64 %565 to i8*
  %569 = load i8, i8* %568
  %570 = zext i8 %569 to i64
  store i64 %570, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_466453, %struct.Memory** %MEMORY
  %loadMem_46645b = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 5
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %ECX.i582 = bitcast %union.anon* %576 to i32*
  %577 = load i32, i32* %ECX.i582
  %578 = zext i32 %577 to i64
  %579 = load i64, i64* %PC.i581
  %580 = add i64 %579, 3
  store i64 %580, i64* %PC.i581
  %581 = sub i32 %577, 2
  %582 = icmp ult i32 %577, 2
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %583, i8* %584, align 1
  %585 = and i32 %581, 255
  %586 = call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %589, i8* %590, align 1
  %591 = xor i64 2, %578
  %592 = trunc i64 %591 to i32
  %593 = xor i32 %592, %581
  %594 = lshr i32 %593, 4
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %596, i8* %597, align 1
  %598 = icmp eq i32 %581, 0
  %599 = zext i1 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %599, i8* %600, align 1
  %601 = lshr i32 %581, 31
  %602 = trunc i32 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %602, i8* %603, align 1
  %604 = lshr i32 %577, 31
  %605 = xor i32 %601, %604
  %606 = add i32 %605, %604
  %607 = icmp eq i32 %606, 2
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %608, i8* %609, align 1
  store %struct.Memory* %loadMem_46645b, %struct.Memory** %MEMORY
  %loadMem_46645e = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %PC.i580
  %614 = add i64 %613, 11
  %615 = load i64, i64* %PC.i580
  %616 = add i64 %615, 6
  %617 = load i64, i64* %PC.i580
  %618 = add i64 %617, 6
  store i64 %618, i64* %PC.i580
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %620 = load i8, i8* %619, align 1
  %621 = icmp eq i8 %620, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %BRANCH_TAKEN, align 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %624 = select i1 %621, i64 %614, i64 %616
  store i64 %624, i64* %623, align 8
  store %struct.Memory* %loadMem_46645e, %struct.Memory** %MEMORY
  %loadBr_46645e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46645e = icmp eq i8 %loadBr_46645e, 1
  br i1 %cmpBr_46645e, label %block_.L_466469, label %block_.L_466464

block_.L_466464:                                  ; preds = %block_46644f, %entry
  %loadMem_466464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %PC.i579
  %629 = add i64 %628, 45
  %630 = load i64, i64* %PC.i579
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC.i579
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %629, i64* %632, align 8
  store %struct.Memory* %loadMem_466464, %struct.Memory** %MEMORY
  br label %block_.L_466491

block_.L_466469:                                  ; preds = %block_46644f
  %loadMem_466469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 11
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RDI.i578 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %PC.i577
  %640 = add i64 %639, 10
  store i64 %640, i64* %PC.i577
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i578, align 8
  store %struct.Memory* %loadMem_466469, %struct.Memory** %MEMORY
  %loadMem_466473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 9
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RSI.i576 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %PC.i575
  %648 = add i64 %647, 5
  store i64 %648, i64* %PC.i575
  store i64 1611, i64* %RSI.i576, align 8
  store %struct.Memory* %loadMem_466473, %struct.Memory** %MEMORY
  %loadMem_466478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 7
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RDX.i574 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %PC.i573
  %656 = add i64 %655, 10
  store i64 %656, i64* %PC.i573
  store i64 ptrtoint (%G__0x57fbff_type* @G__0x57fbff to i64), i64* %RDX.i574, align 8
  store %struct.Memory* %loadMem_466478, %struct.Memory** %MEMORY
  %loadMem_466482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i571
  %664 = add i64 %663, 5
  store i64 %664, i64* %PC.i571
  store i64 4294967295, i64* %RAX.i572, align 8
  store %struct.Memory* %loadMem_466482, %struct.Memory** %MEMORY
  %loadMem_466487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 1
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %EAX.i569 = bitcast %union.anon* %670 to i32*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 5
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %673 to i64*
  %674 = load i32, i32* %EAX.i569
  %675 = zext i32 %674 to i64
  %676 = load i64, i64* %PC.i568
  %677 = add i64 %676, 2
  store i64 %677, i64* %PC.i568
  %678 = and i64 %675, 4294967295
  store i64 %678, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_466487, %struct.Memory** %MEMORY
  %loadMem_466489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %EAX.i566 = bitcast %union.anon* %684 to i32*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 17
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %R8D.i567 = bitcast %union.anon* %687 to i32*
  %688 = bitcast i32* %R8D.i567 to i64*
  %689 = load i32, i32* %EAX.i566
  %690 = zext i32 %689 to i64
  %691 = load i64, i64* %PC.i565
  %692 = add i64 %691, 3
  store i64 %692, i64* %PC.i565
  %693 = and i64 %690, 4294967295
  store i64 %693, i64* %688, align 8
  store %struct.Memory* %loadMem_466489, %struct.Memory** %MEMORY
  %loadMem1_46648c = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %PC.i564
  %698 = add i64 %697, -82940
  %699 = load i64, i64* %PC.i564
  %700 = add i64 %699, 5
  %701 = load i64, i64* %PC.i564
  %702 = add i64 %701, 5
  store i64 %702, i64* %PC.i564
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %704 = load i64, i64* %703, align 8
  %705 = add i64 %704, -8
  %706 = inttoptr i64 %705 to i64*
  store i64 %700, i64* %706
  store i64 %705, i64* %703, align 8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %698, i64* %707, align 8
  store %struct.Memory* %loadMem1_46648c, %struct.Memory** %MEMORY
  %loadMem2_46648c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46648c = load i64, i64* %3
  %call2_46648c = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_46648c, %struct.Memory* %loadMem2_46648c)
  store %struct.Memory* %call2_46648c, %struct.Memory** %MEMORY
  br label %block_.L_466491

block_.L_466491:                                  ; preds = %block_.L_466469, %block_.L_466464
  %loadMem_466491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 11
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RDI.i562 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 15
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RBP.i563
  %718 = sub i64 %717, 48
  %719 = load i64, i64* %PC.i561
  %720 = add i64 %719, 3
  store i64 %720, i64* %PC.i561
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDI.i562, align 8
  store %struct.Memory* %loadMem_466491, %struct.Memory** %MEMORY
  %loadMem1_466494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %PC.i560
  %728 = add i64 %727, -355604
  %729 = load i64, i64* %PC.i560
  %730 = add i64 %729, 5
  %731 = load i64, i64* %PC.i560
  %732 = add i64 %731, 5
  store i64 %732, i64* %PC.i560
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = add i64 %734, -8
  %736 = inttoptr i64 %735 to i64*
  store i64 %730, i64* %736
  store i64 %735, i64* %733, align 8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %728, i64* %737, align 8
  store %struct.Memory* %loadMem1_466494, %struct.Memory** %MEMORY
  %loadMem2_466494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466494 = load i64, i64* %3
  %call2_466494 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_466494, %struct.Memory* %loadMem2_466494)
  store %struct.Memory* %call2_466494, %struct.Memory** %MEMORY
  %loadMem_466499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %EAX.i559 = bitcast %union.anon* %743 to i32*
  %744 = load i32, i32* %EAX.i559
  %745 = zext i32 %744 to i64
  %746 = load i64, i64* %PC.i558
  %747 = add i64 %746, 3
  store i64 %747, i64* %PC.i558
  %748 = sub i32 %744, 4
  %749 = icmp ult i32 %744, 4
  %750 = zext i1 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %750, i8* %751, align 1
  %752 = and i32 %748, 255
  %753 = call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %756, i8* %757, align 1
  %758 = xor i64 4, %745
  %759 = trunc i64 %758 to i32
  %760 = xor i32 %759, %748
  %761 = lshr i32 %760, 4
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %763, i8* %764, align 1
  %765 = icmp eq i32 %748, 0
  %766 = zext i1 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %766, i8* %767, align 1
  %768 = lshr i32 %748, 31
  %769 = trunc i32 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %769, i8* %770, align 1
  %771 = lshr i32 %744, 31
  %772 = xor i32 %768, %771
  %773 = add i32 %772, %771
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %775, i8* %776, align 1
  store %struct.Memory* %loadMem_466499, %struct.Memory** %MEMORY
  %loadMem_46649c = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %PC.i557
  %781 = add i64 %780, 11
  %782 = load i64, i64* %PC.i557
  %783 = add i64 %782, 6
  %784 = load i64, i64* %PC.i557
  %785 = add i64 %784, 6
  store i64 %785, i64* %PC.i557
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %787 = load i8, i8* %786, align 1
  %788 = icmp eq i8 %787, 0
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %BRANCH_TAKEN, align 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %791 = select i1 %788, i64 %781, i64 %783
  store i64 %791, i64* %790, align 8
  store %struct.Memory* %loadMem_46649c, %struct.Memory** %MEMORY
  %loadBr_46649c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46649c = icmp eq i8 %loadBr_46649c, 1
  br i1 %cmpBr_46649c, label %block_.L_4664a7, label %block_4664a2

block_4664a2:                                     ; preds = %block_.L_466491
  %loadMem_4664a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %PC.i556
  %796 = add i64 %795, 45
  %797 = load i64, i64* %PC.i556
  %798 = add i64 %797, 5
  store i64 %798, i64* %PC.i556
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %796, i64* %799, align 8
  store %struct.Memory* %loadMem_4664a2, %struct.Memory** %MEMORY
  br label %block_.L_4664cf

block_.L_4664a7:                                  ; preds = %block_.L_466491
  %loadMem_4664a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 11
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RDI.i555 = bitcast %union.anon* %805 to i64*
  %806 = load i64, i64* %PC.i554
  %807 = add i64 %806, 10
  store i64 %807, i64* %PC.i554
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i555, align 8
  store %struct.Memory* %loadMem_4664a7, %struct.Memory** %MEMORY
  %loadMem_4664b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 9
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RSI.i553 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %PC.i552
  %815 = add i64 %814, 5
  store i64 %815, i64* %PC.i552
  store i64 1612, i64* %RSI.i553, align 8
  store %struct.Memory* %loadMem_4664b1, %struct.Memory** %MEMORY
  %loadMem_4664b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 7
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %PC.i550
  %823 = add i64 %822, 10
  store i64 %823, i64* %PC.i550
  store i64 ptrtoint (%G__0x57fc6a_type* @G__0x57fc6a to i64), i64* %RDX.i551, align 8
  store %struct.Memory* %loadMem_4664b6, %struct.Memory** %MEMORY
  %loadMem_4664c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %PC.i548
  %831 = add i64 %830, 5
  store i64 %831, i64* %PC.i548
  store i64 4294967295, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_4664c0, %struct.Memory** %MEMORY
  %loadMem_4664c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %EAX.i546 = bitcast %union.anon* %837 to i32*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 5
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %840 to i64*
  %841 = load i32, i32* %EAX.i546
  %842 = zext i32 %841 to i64
  %843 = load i64, i64* %PC.i545
  %844 = add i64 %843, 2
  store i64 %844, i64* %PC.i545
  %845 = and i64 %842, 4294967295
  store i64 %845, i64* %RCX.i547, align 8
  store %struct.Memory* %loadMem_4664c5, %struct.Memory** %MEMORY
  %loadMem_4664c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %EAX.i543 = bitcast %union.anon* %851 to i32*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 17
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %R8D.i544 = bitcast %union.anon* %854 to i32*
  %855 = bitcast i32* %R8D.i544 to i64*
  %856 = load i32, i32* %EAX.i543
  %857 = zext i32 %856 to i64
  %858 = load i64, i64* %PC.i542
  %859 = add i64 %858, 3
  store i64 %859, i64* %PC.i542
  %860 = and i64 %857, 4294967295
  store i64 %860, i64* %855, align 8
  store %struct.Memory* %loadMem_4664c7, %struct.Memory** %MEMORY
  %loadMem1_4664ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %PC.i541
  %865 = add i64 %864, -83002
  %866 = load i64, i64* %PC.i541
  %867 = add i64 %866, 5
  %868 = load i64, i64* %PC.i541
  %869 = add i64 %868, 5
  store i64 %869, i64* %PC.i541
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %871 = load i64, i64* %870, align 8
  %872 = add i64 %871, -8
  %873 = inttoptr i64 %872 to i64*
  store i64 %867, i64* %873
  store i64 %872, i64* %870, align 8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %865, i64* %874, align 8
  store %struct.Memory* %loadMem1_4664ca, %struct.Memory** %MEMORY
  %loadMem2_4664ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4664ca = load i64, i64* %3
  %call2_4664ca = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_4664ca, %struct.Memory* %loadMem2_4664ca)
  store %struct.Memory* %call2_4664ca, %struct.Memory** %MEMORY
  br label %block_.L_4664cf

block_.L_4664cf:                                  ; preds = %block_.L_4664a7, %block_4664a2
  %loadMem_4664cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 9
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RSI.i540 = bitcast %union.anon* %880 to i64*
  %881 = load i64, i64* %PC.i539
  %882 = add i64 %881, 5
  store i64 %882, i64* %PC.i539
  store i64 4, i64* %RSI.i540, align 8
  store %struct.Memory* %loadMem_4664cf, %struct.Memory** %MEMORY
  %loadMem_4664d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 7
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RDX.i537 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i538
  %893 = sub i64 %892, 96
  %894 = load i64, i64* %PC.i536
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i536
  store i64 %893, i64* %RDX.i537, align 8
  store %struct.Memory* %loadMem_4664d4, %struct.Memory** %MEMORY
  %loadMem_4664d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 33
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 11
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RDI.i534 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 15
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %RBP.i535
  %906 = sub i64 %905, 48
  %907 = load i64, i64* %PC.i533
  %908 = add i64 %907, 3
  store i64 %908, i64* %PC.i533
  %909 = inttoptr i64 %906 to i32*
  %910 = load i32, i32* %909
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RDI.i534, align 8
  store %struct.Memory* %loadMem_4664d8, %struct.Memory** %MEMORY
  %loadMem1_4664db = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %PC.i532
  %916 = add i64 %915, -355483
  %917 = load i64, i64* %PC.i532
  %918 = add i64 %917, 5
  %919 = load i64, i64* %PC.i532
  %920 = add i64 %919, 5
  store i64 %920, i64* %PC.i532
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %922 = load i64, i64* %921, align 8
  %923 = add i64 %922, -8
  %924 = inttoptr i64 %923 to i64*
  store i64 %918, i64* %924
  store i64 %923, i64* %921, align 8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %916, i64* %925, align 8
  store %struct.Memory* %loadMem1_4664db, %struct.Memory** %MEMORY
  %loadMem2_4664db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4664db = load i64, i64* %3
  %call2_4664db = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_4664db, %struct.Memory* %loadMem2_4664db)
  store %struct.Memory* %call2_4664db, %struct.Memory** %MEMORY
  %loadMem_4664e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 1
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %EAX.i530 = bitcast %union.anon* %931 to i32*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 15
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RBP.i531
  %936 = sub i64 %935, 80
  %937 = load i32, i32* %EAX.i530
  %938 = zext i32 %937 to i64
  %939 = load i64, i64* %PC.i529
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC.i529
  %941 = inttoptr i64 %936 to i32*
  store i32 %937, i32* %941
  store %struct.Memory* %loadMem_4664e0, %struct.Memory** %MEMORY
  %loadMem_4664e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i528
  %949 = sub i64 %948, 80
  %950 = load i64, i64* %PC.i527
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC.i527
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952
  %954 = sub i32 %953, 4
  %955 = icmp ult i32 %953, 4
  %956 = zext i1 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %956, i8* %957, align 1
  %958 = and i32 %954, 255
  %959 = call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %962, i8* %963, align 1
  %964 = xor i32 %953, 4
  %965 = xor i32 %964, %954
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %968, i8* %969, align 1
  %970 = icmp eq i32 %954, 0
  %971 = zext i1 %970 to i8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %971, i8* %972, align 1
  %973 = lshr i32 %954, 31
  %974 = trunc i32 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %974, i8* %975, align 1
  %976 = lshr i32 %953, 31
  %977 = xor i32 %973, %976
  %978 = add i32 %977, %976
  %979 = icmp eq i32 %978, 2
  %980 = zext i1 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %980, i8* %981, align 1
  store %struct.Memory* %loadMem_4664e3, %struct.Memory** %MEMORY
  %loadMem_4664e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %PC.i526
  %986 = add i64 %985, 11
  %987 = load i64, i64* %PC.i526
  %988 = add i64 %987, 6
  %989 = load i64, i64* %PC.i526
  %990 = add i64 %989, 6
  store i64 %990, i64* %PC.i526
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %992 = load i8, i8* %991, align 1
  %993 = icmp eq i8 %992, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %BRANCH_TAKEN, align 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %996 = select i1 %993, i64 %986, i64 %988
  store i64 %996, i64* %995, align 8
  store %struct.Memory* %loadMem_4664e7, %struct.Memory** %MEMORY
  %loadBr_4664e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4664e7 = icmp eq i8 %loadBr_4664e7, 1
  br i1 %cmpBr_4664e7, label %block_.L_4664f2, label %block_4664ed

block_4664ed:                                     ; preds = %block_.L_4664cf
  %loadMem_4664ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %PC.i525
  %1001 = add i64 %1000, 118
  %1002 = load i64, i64* %PC.i525
  %1003 = add i64 %1002, 5
  store i64 %1003, i64* %PC.i525
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1001, i64* %1004, align 8
  store %struct.Memory* %loadMem_4664ed, %struct.Memory** %MEMORY
  br label %block_.L_466563

block_.L_4664f2:                                  ; preds = %block_.L_4664cf
  %loadMem_4664f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 11
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RDI.i524 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %PC.i523
  %1012 = add i64 %1011, 10
  store i64 %1012, i64* %PC.i523
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i524, align 8
  store %struct.Memory* %loadMem_4664f2, %struct.Memory** %MEMORY
  %loadMem_4664fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 9
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RSI.i522 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %PC.i521
  %1020 = add i64 %1019, 5
  store i64 %1020, i64* %PC.i521
  store i64 1615, i64* %RSI.i522, align 8
  store %struct.Memory* %loadMem_4664fc, %struct.Memory** %MEMORY
  %loadMem_466501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 7
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RDX.i520 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %PC.i519
  %1028 = add i64 %1027, 10
  store i64 %1028, i64* %PC.i519
  store i64 ptrtoint (%G__0x57fce9_type* @G__0x57fce9 to i64), i64* %RDX.i520, align 8
  store %struct.Memory* %loadMem_466501, %struct.Memory** %MEMORY
  %loadMem_46650b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %PC.i517
  %1036 = add i64 %1035, 5
  store i64 %1036, i64* %PC.i517
  store i64 20, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_46650b, %struct.Memory** %MEMORY
  %loadMem_466510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 5
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 15
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RBP.i516
  %1047 = sub i64 %1046, 48
  %1048 = load i64, i64* %PC.i514
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %PC.i514
  %1050 = inttoptr i64 %1047 to i32*
  %1051 = load i32, i32* %1050
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_466510, %struct.Memory** %MEMORY
  %loadMem_466513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 1
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %EAX.i512 = bitcast %union.anon* %1058 to i32*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %RBP.i513
  %1063 = sub i64 %1062, 552
  %1064 = load i32, i32* %EAX.i512
  %1065 = zext i32 %1064 to i64
  %1066 = load i64, i64* %PC.i511
  %1067 = add i64 %1066, 6
  store i64 %1067, i64* %PC.i511
  %1068 = inttoptr i64 %1063 to i32*
  store i32 %1064, i32* %1068
  store %struct.Memory* %loadMem_466513, %struct.Memory** %MEMORY
  %loadMem_466519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 5
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %ECX.i509 = bitcast %union.anon* %1074 to i32*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %1077 to i64*
  %1078 = load i32, i32* %ECX.i509
  %1079 = zext i32 %1078 to i64
  %1080 = load i64, i64* %PC.i508
  %1081 = add i64 %1080, 2
  store i64 %1081, i64* %PC.i508
  %1082 = and i64 %1079, 4294967295
  store i64 %1082, i64* %RAX.i510, align 8
  store %struct.Memory* %loadMem_466519, %struct.Memory** %MEMORY
  %loadMem_46651b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 7
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RDX.i506 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 15
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RBP.i507
  %1093 = sub i64 %1092, 560
  %1094 = load i64, i64* %RDX.i506
  %1095 = load i64, i64* %PC.i505
  %1096 = add i64 %1095, 7
  store i64 %1096, i64* %PC.i505
  %1097 = inttoptr i64 %1093 to i64*
  store i64 %1094, i64* %1097
  store %struct.Memory* %loadMem_46651b, %struct.Memory** %MEMORY
  %loadMem_466522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %PC.i504
  %1102 = add i64 %1101, 1
  store i64 %1102, i64* %PC.i504
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1105 = bitcast %union.anon* %1104 to i32*
  %1106 = load i32, i32* %1105, align 8
  %1107 = sext i32 %1106 to i64
  %1108 = lshr i64 %1107, 32
  store i64 %1108, i64* %1103, align 8
  store %struct.Memory* %loadMem_466522, %struct.Memory** %MEMORY
  %loadMem_466523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 5
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 15
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RBP.i503
  %1119 = sub i64 %1118, 552
  %1120 = load i64, i64* %PC.i501
  %1121 = add i64 %1120, 6
  store i64 %1121, i64* %PC.i501
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i502, align 8
  store %struct.Memory* %loadMem_466523, %struct.Memory** %MEMORY
  %loadMem_466529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 5
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %ECX.i497 = bitcast %union.anon* %1130 to i32*
  %1131 = load i32, i32* %ECX.i497
  %1132 = zext i32 %1131 to i64
  %1133 = load i64, i64* %PC.i496
  %1134 = add i64 %1133, 2
  store i64 %1134, i64* %PC.i496
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1136 = bitcast %union.anon* %1135 to i32*
  %1137 = load i32, i32* %1136, align 8
  %1138 = zext i32 %1137 to i64
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1140 = bitcast %union.anon* %1139 to i32*
  %1141 = load i32, i32* %1140, align 8
  %1142 = zext i32 %1141 to i64
  %1143 = shl i64 %1132, 32
  %1144 = ashr exact i64 %1143, 32
  %1145 = shl i64 %1142, 32
  %1146 = or i64 %1145, %1138
  %1147 = sdiv i64 %1146, %1144
  %1148 = shl i64 %1147, 32
  %1149 = ashr exact i64 %1148, 32
  %1150 = icmp eq i64 %1147, %1149
  br i1 %1150, label %1155, label %1151

; <label>:1151:                                   ; preds = %block_.L_4664f2
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1153 = load i64, i64* %1152, align 8
  %1154 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1153, %struct.Memory* %loadMem_466529)
  br label %routine_idivl__ecx.exit498

; <label>:1155:                                   ; preds = %block_.L_4664f2
  %1156 = srem i64 %1146, %1144
  %1157 = getelementptr inbounds %union.anon, %union.anon* %1135, i64 0, i32 0
  %1158 = and i64 %1147, 4294967295
  store i64 %1158, i64* %1157, align 8
  %1159 = getelementptr inbounds %union.anon, %union.anon* %1139, i64 0, i32 0
  %1160 = and i64 %1156, 4294967295
  store i64 %1160, i64* %1159, align 8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1161, align 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1162, align 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1163, align 1
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1164, align 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1165, align 1
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1166, align 1
  br label %routine_idivl__ecx.exit498

routine_idivl__ecx.exit498:                       ; preds = %1151, %1155
  %1167 = phi %struct.Memory* [ %1154, %1151 ], [ %loadMem_466529, %1155 ]
  store %struct.Memory* %1167, %struct.Memory** %MEMORY
  %loadMem_46652b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %1173 to i64*
  %1174 = load i64, i64* %RAX.i495
  %1175 = load i64, i64* %PC.i494
  %1176 = add i64 %1175, 3
  store i64 %1176, i64* %PC.i494
  %1177 = trunc i64 %1174 to i32
  %1178 = sub i32 %1177, 1
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RAX.i495, align 8
  %1180 = icmp ult i32 %1177, 1
  %1181 = zext i1 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1181, i8* %1182, align 1
  %1183 = and i32 %1178, 255
  %1184 = call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1187, i8* %1188, align 1
  %1189 = xor i64 1, %1174
  %1190 = trunc i64 %1189 to i32
  %1191 = xor i32 %1190, %1178
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1194, i8* %1195, align 1
  %1196 = icmp eq i32 %1178, 0
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1197, i8* %1198, align 1
  %1199 = lshr i32 %1178, 31
  %1200 = trunc i32 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1200, i8* %1201, align 1
  %1202 = lshr i32 %1177, 31
  %1203 = xor i32 %1199, %1202
  %1204 = add i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1206, i8* %1207, align 1
  store %struct.Memory* %loadMem_46652b, %struct.Memory** %MEMORY
  %loadMem_46652e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 17
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %R8D.i492 = bitcast %union.anon* %1213 to i32*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %1216 to i64*
  %1217 = bitcast i32* %R8D.i492 to i64*
  %1218 = load i64, i64* %RBP.i493
  %1219 = sub i64 %1218, 48
  %1220 = load i64, i64* %PC.i491
  %1221 = add i64 %1220, 4
  store i64 %1221, i64* %PC.i491
  %1222 = inttoptr i64 %1219 to i32*
  %1223 = load i32, i32* %1222
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %1217, align 8
  store %struct.Memory* %loadMem_46652e, %struct.Memory** %MEMORY
  %loadMem_466532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 1
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %EAX.i489 = bitcast %union.anon* %1230 to i32*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RBP.i490
  %1235 = sub i64 %1234, 564
  %1236 = load i32, i32* %EAX.i489
  %1237 = zext i32 %1236 to i64
  %1238 = load i64, i64* %PC.i488
  %1239 = add i64 %1238, 6
  store i64 %1239, i64* %PC.i488
  %1240 = inttoptr i64 %1235 to i32*
  store i32 %1236, i32* %1240
  store %struct.Memory* %loadMem_466532, %struct.Memory** %MEMORY
  %loadMem_466538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 17
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %R8D.i486 = bitcast %union.anon* %1246 to i32*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 1
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %1249 to i64*
  %1250 = load i32, i32* %R8D.i486
  %1251 = zext i32 %1250 to i64
  %1252 = load i64, i64* %PC.i485
  %1253 = add i64 %1252, 3
  store i64 %1253, i64* %PC.i485
  %1254 = and i64 %1251, 4294967295
  store i64 %1254, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_466538, %struct.Memory** %MEMORY
  %loadMem_46653b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %PC.i484
  %1259 = add i64 %1258, 1
  store i64 %1259, i64* %PC.i484
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1262 = bitcast %union.anon* %1261 to i32*
  %1263 = load i32, i32* %1262, align 8
  %1264 = sext i32 %1263 to i64
  %1265 = lshr i64 %1264, 32
  store i64 %1265, i64* %1260, align 8
  store %struct.Memory* %loadMem_46653b, %struct.Memory** %MEMORY
  %loadMem_46653c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 5
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %ECX.i480 = bitcast %union.anon* %1271 to i32*
  %1272 = load i32, i32* %ECX.i480
  %1273 = zext i32 %1272 to i64
  %1274 = load i64, i64* %PC.i479
  %1275 = add i64 %1274, 2
  store i64 %1275, i64* %PC.i479
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1277 = bitcast %union.anon* %1276 to i32*
  %1278 = load i32, i32* %1277, align 8
  %1279 = zext i32 %1278 to i64
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1281 = bitcast %union.anon* %1280 to i32*
  %1282 = load i32, i32* %1281, align 8
  %1283 = zext i32 %1282 to i64
  %1284 = shl i64 %1273, 32
  %1285 = ashr exact i64 %1284, 32
  %1286 = shl i64 %1283, 32
  %1287 = or i64 %1286, %1279
  %1288 = sdiv i64 %1287, %1285
  %1289 = shl i64 %1288, 32
  %1290 = ashr exact i64 %1289, 32
  %1291 = icmp eq i64 %1288, %1290
  br i1 %1291, label %1296, label %1292

; <label>:1292:                                   ; preds = %routine_idivl__ecx.exit498
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1294 = load i64, i64* %1293, align 8
  %1295 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1294, %struct.Memory* %loadMem_46653c)
  br label %routine_idivl__ecx.exit

; <label>:1296:                                   ; preds = %routine_idivl__ecx.exit498
  %1297 = srem i64 %1287, %1285
  %1298 = getelementptr inbounds %union.anon, %union.anon* %1276, i64 0, i32 0
  %1299 = and i64 %1288, 4294967295
  store i64 %1299, i64* %1298, align 8
  %1300 = getelementptr inbounds %union.anon, %union.anon* %1280, i64 0, i32 0
  %1301 = and i64 %1297, 4294967295
  store i64 %1301, i64* %1300, align 8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1302, align 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1303, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1304, align 1
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1305, align 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1306, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1307, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1292, %1296
  %1308 = phi %struct.Memory* [ %1295, %1292 ], [ %loadMem_46653c, %1296 ]
  store %struct.Memory* %1308, %struct.Memory** %MEMORY
  %loadMem_46653e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 7
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RDX.i478
  %1316 = load i64, i64* %PC.i477
  %1317 = add i64 %1316, 3
  store i64 %1317, i64* %PC.i477
  %1318 = trunc i64 %1315 to i32
  %1319 = sub i32 %1318, 1
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RDX.i478, align 8
  %1321 = icmp ult i32 %1318, 1
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1322, i8* %1323, align 1
  %1324 = and i32 %1319, 255
  %1325 = call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1329, align 1
  %1330 = xor i64 1, %1315
  %1331 = trunc i64 %1330 to i32
  %1332 = xor i32 %1331, %1319
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1335, i8* %1336, align 1
  %1337 = icmp eq i32 %1319, 0
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1319, 31
  %1341 = trunc i32 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1341, i8* %1342, align 1
  %1343 = lshr i32 %1318, 31
  %1344 = xor i32 %1340, %1343
  %1345 = add i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1347, i8* %1348, align 1
  store %struct.Memory* %loadMem_46653e, %struct.Memory** %MEMORY
  %loadMem_466541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 19
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %R9.i476 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RBP.i475
  %1359 = sub i64 %1358, 560
  %1360 = load i64, i64* %PC.i474
  %1361 = add i64 %1360, 7
  store i64 %1361, i64* %PC.i474
  %1362 = inttoptr i64 %1359 to i64*
  %1363 = load i64, i64* %1362
  store i64 %1363, i64* %R9.i476, align 8
  store %struct.Memory* %loadMem_466541, %struct.Memory** %MEMORY
  %loadMem_466548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 7
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1369 to i32*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RBP.i473
  %1374 = sub i64 %1373, 568
  %1375 = load i32, i32* %EDX.i
  %1376 = zext i32 %1375 to i64
  %1377 = load i64, i64* %PC.i472
  %1378 = add i64 %1377, 6
  store i64 %1378, i64* %PC.i472
  %1379 = inttoptr i64 %1374 to i32*
  store i32 %1375, i32* %1379
  store %struct.Memory* %loadMem_466548, %struct.Memory** %MEMORY
  %loadMem_46654e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 7
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 19
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1388 to i64*
  %1389 = load i64, i64* %R9.i
  %1390 = load i64, i64* %PC.i470
  %1391 = add i64 %1390, 3
  store i64 %1391, i64* %PC.i470
  store i64 %1389, i64* %RDX.i471, align 8
  store %struct.Memory* %loadMem_46654e, %struct.Memory** %MEMORY
  %loadMem_466551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i469
  %1402 = sub i64 %1401, 564
  %1403 = load i64, i64* %PC.i467
  %1404 = add i64 %1403, 6
  store i64 %1404, i64* %PC.i467
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i468, align 8
  store %struct.Memory* %loadMem_466551, %struct.Memory** %MEMORY
  %loadMem_466557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 17
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %R8D.i465 = bitcast %union.anon* %1413 to i32*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 15
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %1416 to i64*
  %1417 = bitcast i32* %R8D.i465 to i64*
  %1418 = load i64, i64* %RBP.i466
  %1419 = sub i64 %1418, 568
  %1420 = load i64, i64* %PC.i464
  %1421 = add i64 %1420, 7
  store i64 %1421, i64* %PC.i464
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %1417, align 8
  store %struct.Memory* %loadMem_466557, %struct.Memory** %MEMORY
  %loadMem1_46655e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1427 to i64*
  %1428 = load i64, i64* %PC.i463
  %1429 = add i64 %1428, -83150
  %1430 = load i64, i64* %PC.i463
  %1431 = add i64 %1430, 5
  %1432 = load i64, i64* %PC.i463
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC.i463
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1435 = load i64, i64* %1434, align 8
  %1436 = add i64 %1435, -8
  %1437 = inttoptr i64 %1436 to i64*
  store i64 %1431, i64* %1437
  store i64 %1436, i64* %1434, align 8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1429, i64* %1438, align 8
  store %struct.Memory* %loadMem1_46655e, %struct.Memory** %MEMORY
  %loadMem2_46655e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46655e = load i64, i64* %3
  %call2_46655e = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_46655e, %struct.Memory* %loadMem2_46655e)
  store %struct.Memory* %call2_46655e, %struct.Memory** %MEMORY
  br label %block_.L_466563

block_.L_466563:                                  ; preds = %routine_idivl__ecx.exit, %block_4664ed
  %loadMem_466563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i462
  %1446 = sub i64 %1445, 516
  %1447 = load i64, i64* %PC.i461
  %1448 = add i64 %1447, 10
  store i64 %1448, i64* %PC.i461
  %1449 = inttoptr i64 %1446 to i32*
  store i32 0, i32* %1449
  store %struct.Memory* %loadMem_466563, %struct.Memory** %MEMORY
  br label %block_.L_46656d

block_.L_46656d:                                  ; preds = %block_46657c, %block_.L_466563
  %loadMem_46656d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 1
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i460
  %1460 = sub i64 %1459, 516
  %1461 = load i64, i64* %PC.i458
  %1462 = add i64 %1461, 6
  store i64 %1462, i64* %PC.i458
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_46656d, %struct.Memory** %MEMORY
  %loadMem_466573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %EAX.i456 = bitcast %union.anon* %1471 to i32*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 15
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1474 to i64*
  %1475 = load i32, i32* %EAX.i456
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %RBP.i457
  %1478 = sub i64 %1477, 80
  %1479 = load i64, i64* %PC.i455
  %1480 = add i64 %1479, 3
  store i64 %1480, i64* %PC.i455
  %1481 = inttoptr i64 %1478 to i32*
  %1482 = load i32, i32* %1481
  %1483 = sub i32 %1475, %1482
  %1484 = icmp ult i32 %1475, %1482
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1485, i8* %1486, align 1
  %1487 = and i32 %1483, 255
  %1488 = call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1491, i8* %1492, align 1
  %1493 = xor i32 %1482, %1475
  %1494 = xor i32 %1493, %1483
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1497, i8* %1498, align 1
  %1499 = icmp eq i32 %1483, 0
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1500, i8* %1501, align 1
  %1502 = lshr i32 %1483, 31
  %1503 = trunc i32 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1503, i8* %1504, align 1
  %1505 = lshr i32 %1475, 31
  %1506 = lshr i32 %1482, 31
  %1507 = xor i32 %1506, %1505
  %1508 = xor i32 %1502, %1505
  %1509 = add i32 %1508, %1507
  %1510 = icmp eq i32 %1509, 2
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1511, i8* %1512, align 1
  store %struct.Memory* %loadMem_466573, %struct.Memory** %MEMORY
  %loadMem_466576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %PC.i454
  %1517 = add i64 %1516, 69
  %1518 = load i64, i64* %PC.i454
  %1519 = add i64 %1518, 6
  %1520 = load i64, i64* %PC.i454
  %1521 = add i64 %1520, 6
  store i64 %1521, i64* %PC.i454
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1523 = load i8, i8* %1522, align 1
  %1524 = icmp ne i8 %1523, 0
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1526 = load i8, i8* %1525, align 1
  %1527 = icmp ne i8 %1526, 0
  %1528 = xor i1 %1524, %1527
  %1529 = xor i1 %1528, true
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %BRANCH_TAKEN, align 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1532 = select i1 %1528, i64 %1519, i64 %1517
  store i64 %1532, i64* %1531, align 8
  store %struct.Memory* %loadMem_466576, %struct.Memory** %MEMORY
  %loadBr_466576 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466576 = icmp eq i8 %loadBr_466576, 1
  br i1 %cmpBr_466576, label %block_.L_4665bb, label %block_46657c

block_46657c:                                     ; preds = %block_.L_46656d
  %loadMem_46657c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 1
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 15
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %1541 to i64*
  %1542 = load i64, i64* %RBP.i453
  %1543 = sub i64 %1542, 516
  %1544 = load i64, i64* %PC.i451
  %1545 = add i64 %1544, 7
  store i64 %1545, i64* %PC.i451
  %1546 = inttoptr i64 %1543 to i32*
  %1547 = load i32, i32* %1546
  %1548 = sext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_46657c, %struct.Memory** %MEMORY
  %loadMem_466583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 1
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 5
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RBP.i450
  %1562 = load i64, i64* %RAX.i448
  %1563 = mul i64 %1562, 4
  %1564 = add i64 %1561, -96
  %1565 = add i64 %1564, %1563
  %1566 = load i64, i64* %PC.i447
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %PC.i447
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_466583, %struct.Memory** %MEMORY
  %loadMem_466587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 15
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RBP.i446
  %1581 = sub i64 %1580, 516
  %1582 = load i64, i64* %PC.i444
  %1583 = add i64 %1582, 7
  store i64 %1583, i64* %PC.i444
  %1584 = inttoptr i64 %1581 to i32*
  %1585 = load i32, i32* %1584
  %1586 = sext i32 %1585 to i64
  store i64 %1586, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_466587, %struct.Memory** %MEMORY
  %loadMem_46658e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 5
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %ECX.i441 = bitcast %union.anon* %1592 to i32*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 15
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1598 to i64*
  %1599 = load i64, i64* %RBP.i443
  %1600 = load i64, i64* %RAX.i442
  %1601 = mul i64 %1600, 4
  %1602 = add i64 %1599, -504
  %1603 = add i64 %1602, %1601
  %1604 = load i32, i32* %ECX.i441
  %1605 = zext i32 %1604 to i64
  %1606 = load i64, i64* %PC.i440
  %1607 = add i64 %1606, 7
  store i64 %1607, i64* %PC.i440
  %1608 = inttoptr i64 %1603 to i32*
  store i32 %1604, i32* %1608
  store %struct.Memory* %loadMem_46658e, %struct.Memory** %MEMORY
  %loadMem_466595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 1
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 15
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %1617 to i64*
  %1618 = load i64, i64* %RBP.i439
  %1619 = sub i64 %1618, 516
  %1620 = load i64, i64* %PC.i437
  %1621 = add i64 %1620, 7
  store i64 %1621, i64* %PC.i437
  %1622 = inttoptr i64 %1619 to i32*
  %1623 = load i32, i32* %1622
  %1624 = sext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_466595, %struct.Memory** %MEMORY
  %loadMem_46659c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i436
  %1635 = load i64, i64* %RAX.i435
  %1636 = mul i64 %1635, 4
  %1637 = add i64 %1634, -304
  %1638 = add i64 %1637, %1636
  %1639 = load i64, i64* %PC.i434
  %1640 = add i64 %1639, 11
  store i64 %1640, i64* %PC.i434
  %1641 = inttoptr i64 %1638 to i32*
  store i32 0, i32* %1641
  store %struct.Memory* %loadMem_46659c, %struct.Memory** %MEMORY
  %loadMem_4665a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i433
  %1652 = sub i64 %1651, 516
  %1653 = load i64, i64* %PC.i431
  %1654 = add i64 %1653, 6
  store i64 %1654, i64* %PC.i431
  %1655 = inttoptr i64 %1652 to i32*
  %1656 = load i32, i32* %1655
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_4665a7, %struct.Memory** %MEMORY
  %loadMem_4665ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 1
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %1663 to i64*
  %1664 = load i64, i64* %RAX.i430
  %1665 = load i64, i64* %PC.i429
  %1666 = add i64 %1665, 3
  store i64 %1666, i64* %PC.i429
  %1667 = trunc i64 %1664 to i32
  %1668 = add i32 1, %1667
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RAX.i430, align 8
  %1670 = icmp ult i32 %1668, %1667
  %1671 = icmp ult i32 %1668, 1
  %1672 = or i1 %1670, %1671
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1673, i8* %1674, align 1
  %1675 = and i32 %1668, 255
  %1676 = call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1679, i8* %1680, align 1
  %1681 = xor i64 1, %1664
  %1682 = trunc i64 %1681 to i32
  %1683 = xor i32 %1682, %1668
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1686, i8* %1687, align 1
  %1688 = icmp eq i32 %1668, 0
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1689, i8* %1690, align 1
  %1691 = lshr i32 %1668, 31
  %1692 = trunc i32 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1692, i8* %1693, align 1
  %1694 = lshr i32 %1667, 31
  %1695 = xor i32 %1691, %1694
  %1696 = add i32 %1695, %1691
  %1697 = icmp eq i32 %1696, 2
  %1698 = zext i1 %1697 to i8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1698, i8* %1699, align 1
  store %struct.Memory* %loadMem_4665ad, %struct.Memory** %MEMORY
  %loadMem_4665b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 1
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %EAX.i427 = bitcast %union.anon* %1705 to i32*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 15
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1708 to i64*
  %1709 = load i64, i64* %RBP.i428
  %1710 = sub i64 %1709, 516
  %1711 = load i32, i32* %EAX.i427
  %1712 = zext i32 %1711 to i64
  %1713 = load i64, i64* %PC.i426
  %1714 = add i64 %1713, 6
  store i64 %1714, i64* %PC.i426
  %1715 = inttoptr i64 %1710 to i32*
  store i32 %1711, i32* %1715
  store %struct.Memory* %loadMem_4665b0, %struct.Memory** %MEMORY
  %loadMem_4665b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %PC.i425
  %1720 = add i64 %1719, -73
  %1721 = load i64, i64* %PC.i425
  %1722 = add i64 %1721, 5
  store i64 %1722, i64* %PC.i425
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1720, i64* %1723, align 8
  store %struct.Memory* %loadMem_4665b6, %struct.Memory** %MEMORY
  br label %block_.L_46656d

block_.L_4665bb:                                  ; preds = %block_.L_46656d
  %loadMem_4665bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 9
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RSI.i423 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 15
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %RBP.i424
  %1734 = sub i64 %1733, 504
  %1735 = load i64, i64* %PC.i422
  %1736 = add i64 %1735, 7
  store i64 %1736, i64* %PC.i422
  store i64 %1734, i64* %RSI.i423, align 8
  store %struct.Memory* %loadMem_4665bb, %struct.Memory** %MEMORY
  %loadMem_4665c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 1
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 15
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %RBP.i421
  %1747 = sub i64 %1746, 80
  %1748 = load i64, i64* %PC.i419
  %1749 = add i64 %1748, 3
  store i64 %1749, i64* %PC.i419
  %1750 = inttoptr i64 %1747 to i32*
  %1751 = load i32, i32* %1750
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_4665c2, %struct.Memory** %MEMORY
  %loadMem_4665c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 1
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %1758 to i32*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i418
  %1763 = sub i64 %1762, 104
  %1764 = load i32, i32* %EAX.i417
  %1765 = zext i32 %1764 to i64
  %1766 = load i64, i64* %PC.i416
  %1767 = add i64 %1766, 3
  store i64 %1767, i64* %PC.i416
  %1768 = inttoptr i64 %1763 to i32*
  store i32 %1764, i32* %1768
  store %struct.Memory* %loadMem_4665c5, %struct.Memory** %MEMORY
  %loadMem_4665c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 11
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RDI.i414 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 15
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RBP.i415
  %1779 = sub i64 %1778, 48
  %1780 = load i64, i64* %PC.i413
  %1781 = add i64 %1780, 3
  store i64 %1781, i64* %PC.i413
  %1782 = inttoptr i64 %1779 to i32*
  %1783 = load i32, i32* %1782
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RDI.i414, align 8
  store %struct.Memory* %loadMem_4665c8, %struct.Memory** %MEMORY
  %loadMem1_4665cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 33
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1787 to i64*
  %1788 = load i64, i64* %PC.i412
  %1789 = add i64 %1788, -18491
  %1790 = load i64, i64* %PC.i412
  %1791 = add i64 %1790, 5
  %1792 = load i64, i64* %PC.i412
  %1793 = add i64 %1792, 5
  store i64 %1793, i64* %PC.i412
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1795 = load i64, i64* %1794, align 8
  %1796 = add i64 %1795, -8
  %1797 = inttoptr i64 %1796 to i64*
  store i64 %1791, i64* %1797
  store i64 %1796, i64* %1794, align 8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1789, i64* %1798, align 8
  store %struct.Memory* %loadMem1_4665cb, %struct.Memory** %MEMORY
  %loadMem2_4665cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4665cb = load i64, i64* %3
  %call2_4665cb = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64 %loadPC_4665cb, %struct.Memory* %loadMem2_4665cb)
  store %struct.Memory* %call2_4665cb, %struct.Memory** %MEMORY
  %loadMem_4665d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 9
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RSI.i410 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RBP.i411
  %1809 = sub i64 %1808, 504
  %1810 = load i64, i64* %PC.i409
  %1811 = add i64 %1810, 7
  store i64 %1811, i64* %PC.i409
  store i64 %1809, i64* %RSI.i410, align 8
  store %struct.Memory* %loadMem_4665d0, %struct.Memory** %MEMORY
  %loadMem_4665d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 11
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RDI.i407 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i408
  %1822 = sub i64 %1821, 48
  %1823 = load i64, i64* %PC.i406
  %1824 = add i64 %1823, 3
  store i64 %1824, i64* %PC.i406
  %1825 = inttoptr i64 %1822 to i32*
  %1826 = load i32, i32* %1825
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RDI.i407, align 8
  store %struct.Memory* %loadMem_4665d7, %struct.Memory** %MEMORY
  %loadMem1_4665da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %PC.i405
  %1832 = add i64 %1831, 982
  %1833 = load i64, i64* %PC.i405
  %1834 = add i64 %1833, 5
  %1835 = load i64, i64* %PC.i405
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i405
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1838 = load i64, i64* %1837, align 8
  %1839 = add i64 %1838, -8
  %1840 = inttoptr i64 %1839 to i64*
  store i64 %1834, i64* %1840
  store i64 %1839, i64* %1837, align 8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1832, i64* %1841, align 8
  store %struct.Memory* %loadMem1_4665da, %struct.Memory** %MEMORY
  %loadMem2_4665da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4665da = load i64, i64* %3
  %call2_4665da = call %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* %0, i64 %loadPC_4665da, %struct.Memory* %loadMem2_4665da)
  store %struct.Memory* %call2_4665da, %struct.Memory** %MEMORY
  %loadMem_4665df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 1
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %1847 to i64*
  %1848 = load i64, i64* %PC.i403
  %1849 = add i64 %1848, 7
  store i64 %1849, i64* %PC.i403
  %1850 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_4665df, %struct.Memory** %MEMORY
  %loadMem_4665e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %1857 to i32*
  %1858 = load i32, i32* %EAX.i402
  %1859 = zext i32 %1858 to i64
  %1860 = load i64, i64* %PC.i401
  %1861 = add i64 %1860, 7
  store i64 %1861, i64* %PC.i401
  %1862 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*)
  %1863 = sub i32 %1858, %1862
  %1864 = icmp ult i32 %1858, %1862
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1865, i8* %1866, align 1
  %1867 = and i32 %1863, 255
  %1868 = call i32 @llvm.ctpop.i32(i32 %1867)
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = xor i8 %1870, 1
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1871, i8* %1872, align 1
  %1873 = xor i32 %1862, %1858
  %1874 = xor i32 %1873, %1863
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1877, i8* %1878, align 1
  %1879 = icmp eq i32 %1863, 0
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1863, 31
  %1883 = trunc i32 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1883, i8* %1884, align 1
  %1885 = lshr i32 %1858, 31
  %1886 = lshr i32 %1862, 31
  %1887 = xor i32 %1886, %1885
  %1888 = xor i32 %1882, %1885
  %1889 = add i32 %1888, %1887
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1891, i8* %1892, align 1
  store %struct.Memory* %loadMem_4665e6, %struct.Memory** %MEMORY
  %loadMem_4665ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %PC.i400
  %1897 = add i64 %1896, 21
  %1898 = load i64, i64* %PC.i400
  %1899 = add i64 %1898, 6
  %1900 = load i64, i64* %PC.i400
  %1901 = add i64 %1900, 6
  store i64 %1901, i64* %PC.i400
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1903 = load i8, i8* %1902, align 1
  %1904 = icmp eq i8 %1903, 0
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1906 = load i8, i8* %1905, align 1
  %1907 = icmp ne i8 %1906, 0
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1909 = load i8, i8* %1908, align 1
  %1910 = icmp ne i8 %1909, 0
  %1911 = xor i1 %1907, %1910
  %1912 = xor i1 %1911, true
  %1913 = and i1 %1904, %1912
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %BRANCH_TAKEN, align 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1916 = select i1 %1913, i64 %1897, i64 %1899
  store i64 %1916, i64* %1915, align 8
  store %struct.Memory* %loadMem_4665ed, %struct.Memory** %MEMORY
  %loadBr_4665ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4665ed = icmp eq i8 %loadBr_4665ed, 1
  br i1 %cmpBr_4665ed, label %block_.L_466602, label %block_4665f3

block_4665f3:                                     ; preds = %block_.L_4665bb
  %loadMem_4665f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 9
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RSI.i398 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i399
  %1927 = sub i64 %1926, 504
  %1928 = load i64, i64* %PC.i397
  %1929 = add i64 %1928, 7
  store i64 %1929, i64* %PC.i397
  store i64 %1927, i64* %RSI.i398, align 8
  store %struct.Memory* %loadMem_4665f3, %struct.Memory** %MEMORY
  %loadMem_4665fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 11
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RDI.i395 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 15
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %1938 to i64*
  %1939 = load i64, i64* %RBP.i396
  %1940 = sub i64 %1939, 48
  %1941 = load i64, i64* %PC.i394
  %1942 = add i64 %1941, 3
  store i64 %1942, i64* %PC.i394
  %1943 = inttoptr i64 %1940 to i32*
  %1944 = load i32, i32* %1943
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RDI.i395, align 8
  store %struct.Memory* %loadMem_4665fa, %struct.Memory** %MEMORY
  %loadMem1_4665fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %PC.i393
  %1950 = add i64 %1949, 1059
  %1951 = load i64, i64* %PC.i393
  %1952 = add i64 %1951, 5
  %1953 = load i64, i64* %PC.i393
  %1954 = add i64 %1953, 5
  store i64 %1954, i64* %PC.i393
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1956 = load i64, i64* %1955, align 8
  %1957 = add i64 %1956, -8
  %1958 = inttoptr i64 %1957 to i64*
  store i64 %1952, i64* %1958
  store i64 %1957, i64* %1955, align 8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1950, i64* %1959, align 8
  store %struct.Memory* %loadMem1_4665fd, %struct.Memory** %MEMORY
  %loadMem2_4665fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4665fd = load i64, i64* %3
  %call2_4665fd = call %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* %0, i64 %loadPC_4665fd, %struct.Memory* %loadMem2_4665fd)
  store %struct.Memory* %call2_4665fd, %struct.Memory** %MEMORY
  br label %block_.L_466602

block_.L_466602:                                  ; preds = %block_4665f3, %block_.L_4665bb
  %loadMem_466602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 9
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RSI.i391 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 15
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1968 to i64*
  %1969 = load i64, i64* %RBP.i392
  %1970 = sub i64 %1969, 504
  %1971 = load i64, i64* %PC.i390
  %1972 = add i64 %1971, 7
  store i64 %1972, i64* %PC.i390
  store i64 %1970, i64* %RSI.i391, align 8
  store %struct.Memory* %loadMem_466602, %struct.Memory** %MEMORY
  %loadMem_466609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 17
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %R8D.i389 = bitcast %union.anon* %1978 to i32*
  %1979 = bitcast i32* %R8D.i389 to i64*
  %1980 = load i32, i32* %R8D.i389
  %1981 = zext i32 %1980 to i64
  %1982 = load i32, i32* %R8D.i389
  %1983 = zext i32 %1982 to i64
  %1984 = load i64, i64* %PC.i388
  %1985 = add i64 %1984, 3
  store i64 %1985, i64* %PC.i388
  %1986 = xor i64 %1983, %1981
  %1987 = trunc i64 %1986 to i32
  %1988 = and i64 %1986, 4294967295
  store i64 %1988, i64* %1979, align 8
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1989, align 1
  %1990 = and i32 %1987, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = icmp eq i32 %1987, 0
  %1997 = zext i1 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1997, i8* %1998, align 1
  %1999 = lshr i32 %1987, 31
  %2000 = trunc i32 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2000, i8* %2001, align 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2002, align 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2003, align 1
  store %struct.Memory* %loadMem_466609, %struct.Memory** %MEMORY
  %loadMem_46660c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 11
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RDI.i386 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 15
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %RBP.i387
  %2014 = sub i64 %2013, 48
  %2015 = load i64, i64* %PC.i385
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC.i385
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RDI.i386, align 8
  store %struct.Memory* %loadMem_46660c, %struct.Memory** %MEMORY
  %loadMem_46660f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 7
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 15
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %RBP.i384
  %2030 = sub i64 %2029, 68
  %2031 = load i64, i64* %PC.i382
  %2032 = add i64 %2031, 3
  store i64 %2032, i64* %PC.i382
  %2033 = inttoptr i64 %2030 to i32*
  %2034 = load i32, i32* %2033
  %2035 = zext i32 %2034 to i64
  store i64 %2035, i64* %RDX.i383, align 8
  store %struct.Memory* %loadMem_46660f, %struct.Memory** %MEMORY
  %loadMem_466612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 33
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 5
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 15
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %RBP.i381
  %2046 = sub i64 %2045, 528
  %2047 = load i64, i64* %PC.i379
  %2048 = add i64 %2047, 7
  store i64 %2048, i64* %PC.i379
  %2049 = inttoptr i64 %2046 to i64*
  %2050 = load i64, i64* %2049
  store i64 %2050, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_466612, %struct.Memory** %MEMORY
  %loadMem1_466619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %PC.i378
  %2055 = add i64 %2054, -14729
  %2056 = load i64, i64* %PC.i378
  %2057 = add i64 %2056, 5
  %2058 = load i64, i64* %PC.i378
  %2059 = add i64 %2058, 5
  store i64 %2059, i64* %PC.i378
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2061 = load i64, i64* %2060, align 8
  %2062 = add i64 %2061, -8
  %2063 = inttoptr i64 %2062 to i64*
  store i64 %2057, i64* %2063
  store i64 %2062, i64* %2060, align 8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2055, i64* %2064, align 8
  store %struct.Memory* %loadMem1_466619, %struct.Memory** %MEMORY
  %loadMem2_466619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466619 = load i64, i64* %3
  %call2_466619 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64 %loadPC_466619, %struct.Memory* %loadMem2_466619)
  store %struct.Memory* %call2_466619, %struct.Memory** %MEMORY
  %loadMem_46661e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 33
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 15
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %2070 to i64*
  %2071 = load i64, i64* %RBP.i377
  %2072 = sub i64 %2071, 516
  %2073 = load i64, i64* %PC.i376
  %2074 = add i64 %2073, 10
  store i64 %2074, i64* %PC.i376
  %2075 = inttoptr i64 %2072 to i32*
  store i32 0, i32* %2075
  store %struct.Memory* %loadMem_46661e, %struct.Memory** %MEMORY
  br label %block_.L_466628

block_.L_466628:                                  ; preds = %block_.L_466894, %block_.L_466602
  %loadMem_466628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 1
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 15
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %RBP.i375
  %2086 = sub i64 %2085, 516
  %2087 = load i64, i64* %PC.i373
  %2088 = add i64 %2087, 6
  store i64 %2088, i64* %PC.i373
  %2089 = inttoptr i64 %2086 to i32*
  %2090 = load i32, i32* %2089
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_466628, %struct.Memory** %MEMORY
  %loadMem_46662e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 1
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %2097 to i32*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 15
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %2100 to i64*
  %2101 = load i32, i32* %EAX.i371
  %2102 = zext i32 %2101 to i64
  %2103 = load i64, i64* %RBP.i372
  %2104 = sub i64 %2103, 104
  %2105 = load i64, i64* %PC.i370
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC.i370
  %2107 = inttoptr i64 %2104 to i32*
  %2108 = load i32, i32* %2107
  %2109 = sub i32 %2101, %2108
  %2110 = icmp ult i32 %2101, %2108
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2111, i8* %2112, align 1
  %2113 = and i32 %2109, 255
  %2114 = call i32 @llvm.ctpop.i32(i32 %2113)
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  %2117 = xor i8 %2116, 1
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2117, i8* %2118, align 1
  %2119 = xor i32 %2108, %2101
  %2120 = xor i32 %2119, %2109
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2123, i8* %2124, align 1
  %2125 = icmp eq i32 %2109, 0
  %2126 = zext i1 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2126, i8* %2127, align 1
  %2128 = lshr i32 %2109, 31
  %2129 = trunc i32 %2128 to i8
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2129, i8* %2130, align 1
  %2131 = lshr i32 %2101, 31
  %2132 = lshr i32 %2108, 31
  %2133 = xor i32 %2132, %2131
  %2134 = xor i32 %2128, %2131
  %2135 = add i32 %2134, %2133
  %2136 = icmp eq i32 %2135, 2
  %2137 = zext i1 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2137, i8* %2138, align 1
  store %struct.Memory* %loadMem_46662e, %struct.Memory** %MEMORY
  %loadMem_466631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %PC.i369
  %2143 = add i64 %2142, 631
  %2144 = load i64, i64* %PC.i369
  %2145 = add i64 %2144, 6
  %2146 = load i64, i64* %PC.i369
  %2147 = add i64 %2146, 6
  store i64 %2147, i64* %PC.i369
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2149 = load i8, i8* %2148, align 1
  %2150 = icmp ne i8 %2149, 0
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2152 = load i8, i8* %2151, align 1
  %2153 = icmp ne i8 %2152, 0
  %2154 = xor i1 %2150, %2153
  %2155 = xor i1 %2154, true
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %BRANCH_TAKEN, align 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2158 = select i1 %2154, i64 %2145, i64 %2143
  store i64 %2158, i64* %2157, align 8
  store %struct.Memory* %loadMem_466631, %struct.Memory** %MEMORY
  %loadBr_466631 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466631 = icmp eq i8 %loadBr_466631, 1
  br i1 %cmpBr_466631, label %block_.L_4668a8, label %block_466637

block_466637:                                     ; preds = %block_.L_466628
  %loadMem_466637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 1
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %PC.i367
  %2166 = add i64 %2165, 7
  store i64 %2166, i64* %PC.i367
  %2167 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_466637, %struct.Memory** %MEMORY
  %loadMem_46663e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 1
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %EAX.i366 = bitcast %union.anon* %2174 to i32*
  %2175 = load i32, i32* %EAX.i366
  %2176 = zext i32 %2175 to i64
  %2177 = load i64, i64* %PC.i365
  %2178 = add i64 %2177, 7
  store i64 %2178, i64* %PC.i365
  %2179 = load i32, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*)
  %2180 = sub i32 %2175, %2179
  %2181 = icmp ult i32 %2175, %2179
  %2182 = zext i1 %2181 to i8
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2182, i8* %2183, align 1
  %2184 = and i32 %2180, 255
  %2185 = call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2188, i8* %2189, align 1
  %2190 = xor i32 %2179, %2175
  %2191 = xor i32 %2190, %2180
  %2192 = lshr i32 %2191, 4
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2194, i8* %2195, align 1
  %2196 = icmp eq i32 %2180, 0
  %2197 = zext i1 %2196 to i8
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2197, i8* %2198, align 1
  %2199 = lshr i32 %2180, 31
  %2200 = trunc i32 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2200, i8* %2201, align 1
  %2202 = lshr i32 %2175, 31
  %2203 = lshr i32 %2179, 31
  %2204 = xor i32 %2203, %2202
  %2205 = xor i32 %2199, %2202
  %2206 = add i32 %2205, %2204
  %2207 = icmp eq i32 %2206, 2
  %2208 = zext i1 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2208, i8* %2209, align 1
  store %struct.Memory* %loadMem_46663e, %struct.Memory** %MEMORY
  %loadMem_466645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %PC.i364
  %2214 = add i64 %2213, 24
  %2215 = load i64, i64* %PC.i364
  %2216 = add i64 %2215, 6
  %2217 = load i64, i64* %PC.i364
  %2218 = add i64 %2217, 6
  store i64 %2218, i64* %PC.i364
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2220 = load i8, i8* %2219, align 1
  %2221 = icmp ne i8 %2220, 0
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2223 = load i8, i8* %2222, align 1
  %2224 = icmp ne i8 %2223, 0
  %2225 = xor i1 %2221, %2224
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %BRANCH_TAKEN, align 1
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2228 = select i1 %2225, i64 %2214, i64 %2216
  store i64 %2228, i64* %2227, align 8
  store %struct.Memory* %loadMem_466645, %struct.Memory** %MEMORY
  %loadBr_466645 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466645 = icmp eq i8 %loadBr_466645, 1
  br i1 %cmpBr_466645, label %block_.L_46665d, label %block_46664b

block_46664b:                                     ; preds = %block_466637
  %loadMem_46664b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 33
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 15
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RBP.i363
  %2236 = sub i64 %2235, 516
  %2237 = load i64, i64* %PC.i362
  %2238 = add i64 %2237, 7
  store i64 %2238, i64* %PC.i362
  %2239 = inttoptr i64 %2236 to i32*
  %2240 = load i32, i32* %2239
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2241, align 1
  %2242 = and i32 %2240, 255
  %2243 = call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2246, i8* %2247, align 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2248, align 1
  %2249 = icmp eq i32 %2240, 0
  %2250 = zext i1 %2249 to i8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2250, i8* %2251, align 1
  %2252 = lshr i32 %2240, 31
  %2253 = trunc i32 %2252 to i8
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2253, i8* %2254, align 1
  %2255 = lshr i32 %2240, 31
  %2256 = xor i32 %2252, %2255
  %2257 = add i32 %2256, %2255
  %2258 = icmp eq i32 %2257, 2
  %2259 = zext i1 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2259, i8* %2260, align 1
  store %struct.Memory* %loadMem_46664b, %struct.Memory** %MEMORY
  %loadMem_466652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2263 to i64*
  %2264 = load i64, i64* %PC.i361
  %2265 = add i64 %2264, 11
  %2266 = load i64, i64* %PC.i361
  %2267 = add i64 %2266, 6
  %2268 = load i64, i64* %PC.i361
  %2269 = add i64 %2268, 6
  store i64 %2269, i64* %PC.i361
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2271 = load i8, i8* %2270, align 1
  %2272 = icmp ne i8 %2271, 0
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2274 = load i8, i8* %2273, align 1
  %2275 = icmp ne i8 %2274, 0
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2277 = load i8, i8* %2276, align 1
  %2278 = icmp ne i8 %2277, 0
  %2279 = xor i1 %2275, %2278
  %2280 = or i1 %2272, %2279
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %BRANCH_TAKEN, align 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2283 = select i1 %2280, i64 %2265, i64 %2267
  store i64 %2283, i64* %2282, align 8
  store %struct.Memory* %loadMem_466652, %struct.Memory** %MEMORY
  %loadBr_466652 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466652 = icmp eq i8 %loadBr_466652, 1
  br i1 %cmpBr_466652, label %block_.L_46665d, label %block_466658

block_466658:                                     ; preds = %block_46664b
  %loadMem_466658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %PC.i360
  %2288 = add i64 %2287, 592
  %2289 = load i64, i64* %PC.i360
  %2290 = add i64 %2289, 5
  store i64 %2290, i64* %PC.i360
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2288, i64* %2291, align 8
  store %struct.Memory* %loadMem_466658, %struct.Memory** %MEMORY
  br label %block_.L_4668a8

block_.L_46665d:                                  ; preds = %block_46664b, %block_466637
  %loadMem_46665d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 1
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %2297 to i32*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 1
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %2300 to i64*
  %2301 = load i64, i64* %RAX.i359
  %2302 = load i32, i32* %EAX.i358
  %2303 = zext i32 %2302 to i64
  %2304 = load i64, i64* %PC.i357
  %2305 = add i64 %2304, 2
  store i64 %2305, i64* %PC.i357
  %2306 = xor i64 %2303, %2301
  %2307 = trunc i64 %2306 to i32
  %2308 = and i64 %2306, 4294967295
  store i64 %2308, i64* %RAX.i359, align 8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2309, align 1
  %2310 = and i32 %2307, 255
  %2311 = call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2314, i8* %2315, align 1
  %2316 = icmp eq i32 %2307, 0
  %2317 = zext i1 %2316 to i8
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2317, i8* %2318, align 1
  %2319 = lshr i32 %2307, 31
  %2320 = trunc i32 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2320, i8* %2321, align 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2322, align 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2323, align 1
  store %struct.Memory* %loadMem_46665d, %struct.Memory** %MEMORY
  %loadMem_46665f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 1
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %2330 = bitcast %union.anon* %2329 to %struct.anon.2*
  %AL.i355 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2330, i32 0, i32 0
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 5
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %2334 = bitcast %union.anon* %2333 to %struct.anon.2*
  %CL.i356 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2334, i32 0, i32 0
  %2335 = load i8, i8* %AL.i355
  %2336 = zext i8 %2335 to i64
  %2337 = load i64, i64* %PC.i354
  %2338 = add i64 %2337, 2
  store i64 %2338, i64* %PC.i354
  store i8 %2335, i8* %CL.i356, align 1
  store %struct.Memory* %loadMem_46665f, %struct.Memory** %MEMORY
  %loadMem_466661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 7
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RBP.i353
  %2349 = sub i64 %2348, 516
  %2350 = load i64, i64* %PC.i351
  %2351 = add i64 %2350, 7
  store i64 %2351, i64* %PC.i351
  %2352 = inttoptr i64 %2349 to i32*
  %2353 = load i32, i32* %2352
  %2354 = sext i32 %2353 to i64
  store i64 %2354, i64* %RDX.i352, align 8
  store %struct.Memory* %loadMem_466661, %struct.Memory** %MEMORY
  %loadMem_466668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 1
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 7
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RDX.i349 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 15
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2366 to i64*
  %2367 = load i64, i64* %RBP.i350
  %2368 = load i64, i64* %RDX.i349
  %2369 = mul i64 %2368, 4
  %2370 = add i64 %2367, -504
  %2371 = add i64 %2370, %2369
  %2372 = load i64, i64* %PC.i347
  %2373 = add i64 %2372, 7
  store i64 %2373, i64* %PC.i347
  %2374 = inttoptr i64 %2371 to i32*
  %2375 = load i32, i32* %2374
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_466668, %struct.Memory** %MEMORY
  %loadMem_46666f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %EAX.i345 = bitcast %union.anon* %2382 to i32*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RBP.i346
  %2387 = sub i64 %2386, 76
  %2388 = load i32, i32* %EAX.i345
  %2389 = zext i32 %2388 to i64
  %2390 = load i64, i64* %PC.i344
  %2391 = add i64 %2390, 3
  store i64 %2391, i64* %PC.i344
  %2392 = inttoptr i64 %2387 to i32*
  store i32 %2388, i32* %2392
  store %struct.Memory* %loadMem_46666f, %struct.Memory** %MEMORY
  %loadMem_466672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 11
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RDI.i342 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 15
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2401 to i64*
  %2402 = load i64, i64* %RBP.i343
  %2403 = sub i64 %2402, 76
  %2404 = load i64, i64* %PC.i341
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i341
  %2406 = inttoptr i64 %2403 to i32*
  %2407 = load i32, i32* %2406
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RDI.i342, align 8
  store %struct.Memory* %loadMem_466672, %struct.Memory** %MEMORY
  %loadMem_466675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 9
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RSI.i339 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 15
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RBP.i340
  %2419 = sub i64 %2418, 68
  %2420 = load i64, i64* %PC.i338
  %2421 = add i64 %2420, 3
  store i64 %2421, i64* %PC.i338
  %2422 = inttoptr i64 %2419 to i32*
  %2423 = load i32, i32* %2422
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RSI.i339, align 8
  store %struct.Memory* %loadMem_466675, %struct.Memory** %MEMORY
  %loadMem_466678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 1
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 15
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %2433 to i64*
  %2434 = load i64, i64* %RBP.i337
  %2435 = sub i64 %2434, 48
  %2436 = load i64, i64* %PC.i335
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %PC.i335
  %2438 = inttoptr i64 %2435 to i32*
  %2439 = load i32, i32* %2438
  %2440 = zext i32 %2439 to i64
  store i64 %2440, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_466678, %struct.Memory** %MEMORY
  %loadMem_46667b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 17
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %R8D.i333 = bitcast %union.anon* %2446 to i32*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 15
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2449 to i64*
  %2450 = bitcast i32* %R8D.i333 to i64*
  %2451 = load i64, i64* %RBP.i334
  %2452 = sub i64 %2451, 60
  %2453 = load i64, i64* %PC.i332
  %2454 = add i64 %2453, 4
  store i64 %2454, i64* %PC.i332
  %2455 = inttoptr i64 %2452 to i32*
  %2456 = load i32, i32* %2455
  %2457 = zext i32 %2456 to i64
  store i64 %2457, i64* %2450, align 8
  store %struct.Memory* %loadMem_46667b, %struct.Memory** %MEMORY
  %loadMem_46667f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 19
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %R9D.i330 = bitcast %union.anon* %2463 to i32*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 15
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2466 to i64*
  %2467 = bitcast i32* %R9D.i330 to i64*
  %2468 = load i64, i64* %RBP.i331
  %2469 = sub i64 %2468, 64
  %2470 = load i64, i64* %PC.i329
  %2471 = add i64 %2470, 4
  store i64 %2471, i64* %PC.i329
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %2467, align 8
  store %struct.Memory* %loadMem_46667f, %struct.Memory** %MEMORY
  %loadMem_466683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 21
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %R10D.i328 = bitcast %union.anon* %2480 to i32*
  %2481 = bitcast i32* %R10D.i328 to i64*
  %2482 = load i64, i64* %PC.i327
  %2483 = add i64 %2482, 8
  store i64 %2483, i64* %PC.i327
  %2484 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %2481, align 8
  store %struct.Memory* %loadMem_466683, %struct.Memory** %MEMORY
  %loadMem_46668b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 33
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2488 to i64*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 21
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %R10D.i326 = bitcast %union.anon* %2491 to i32*
  %2492 = load i32, i32* %R10D.i326
  %2493 = zext i32 %2492 to i64
  %2494 = load i64, i64* %PC.i325
  %2495 = add i64 %2494, 8
  store i64 %2495, i64* %PC.i325
  %2496 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  %2497 = sub i32 %2492, %2496
  %2498 = icmp ult i32 %2492, %2496
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2499, i8* %2500, align 1
  %2501 = and i32 %2497, 255
  %2502 = call i32 @llvm.ctpop.i32(i32 %2501)
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  %2505 = xor i8 %2504, 1
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2505, i8* %2506, align 1
  %2507 = xor i32 %2496, %2492
  %2508 = xor i32 %2507, %2497
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2511, i8* %2512, align 1
  %2513 = icmp eq i32 %2497, 0
  %2514 = zext i1 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2514, i8* %2515, align 1
  %2516 = lshr i32 %2497, 31
  %2517 = trunc i32 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2517, i8* %2518, align 1
  %2519 = lshr i32 %2492, 31
  %2520 = lshr i32 %2496, 31
  %2521 = xor i32 %2520, %2519
  %2522 = xor i32 %2516, %2519
  %2523 = add i32 %2522, %2521
  %2524 = icmp eq i32 %2523, 2
  %2525 = zext i1 %2524 to i8
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2525, i8* %2526, align 1
  store %struct.Memory* %loadMem_46668b, %struct.Memory** %MEMORY
  %loadMem_466693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 19
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %R9D.i323 = bitcast %union.anon* %2532 to i32*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 15
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %RBP.i324
  %2537 = sub i64 %2536, 572
  %2538 = load i32, i32* %R9D.i323
  %2539 = zext i32 %2538 to i64
  %2540 = load i64, i64* %PC.i322
  %2541 = add i64 %2540, 7
  store i64 %2541, i64* %PC.i322
  %2542 = inttoptr i64 %2537 to i32*
  store i32 %2538, i32* %2542
  store %struct.Memory* %loadMem_466693, %struct.Memory** %MEMORY
  %loadMem_46669a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 11
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2548 to i32*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 15
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %RBP.i321
  %2553 = sub i64 %2552, 576
  %2554 = load i32, i32* %EDI.i
  %2555 = zext i32 %2554 to i64
  %2556 = load i64, i64* %PC.i320
  %2557 = add i64 %2556, 6
  store i64 %2557, i64* %PC.i320
  %2558 = inttoptr i64 %2553 to i32*
  store i32 %2554, i32* %2558
  store %struct.Memory* %loadMem_46669a, %struct.Memory** %MEMORY
  %loadMem_4666a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 9
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2564 to i32*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RBP.i319
  %2569 = sub i64 %2568, 580
  %2570 = load i32, i32* %ESI.i
  %2571 = zext i32 %2570 to i64
  %2572 = load i64, i64* %PC.i318
  %2573 = add i64 %2572, 6
  store i64 %2573, i64* %PC.i318
  %2574 = inttoptr i64 %2569 to i32*
  store i32 %2570, i32* %2574
  store %struct.Memory* %loadMem_4666a0, %struct.Memory** %MEMORY
  %loadMem_4666a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 1
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %2580 to i32*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 15
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2583 to i64*
  %2584 = load i64, i64* %RBP.i317
  %2585 = sub i64 %2584, 584
  %2586 = load i32, i32* %EAX.i316
  %2587 = zext i32 %2586 to i64
  %2588 = load i64, i64* %PC.i315
  %2589 = add i64 %2588, 6
  store i64 %2589, i64* %PC.i315
  %2590 = inttoptr i64 %2585 to i32*
  store i32 %2586, i32* %2590
  store %struct.Memory* %loadMem_4666a6, %struct.Memory** %MEMORY
  %loadMem_4666ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 17
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %R8D.i313 = bitcast %union.anon* %2596 to i32*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 15
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RBP.i314
  %2601 = sub i64 %2600, 588
  %2602 = load i32, i32* %R8D.i313
  %2603 = zext i32 %2602 to i64
  %2604 = load i64, i64* %PC.i312
  %2605 = add i64 %2604, 7
  store i64 %2605, i64* %PC.i312
  %2606 = inttoptr i64 %2601 to i32*
  store i32 %2602, i32* %2606
  store %struct.Memory* %loadMem_4666ac, %struct.Memory** %MEMORY
  %loadMem_4666b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 5
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %2613 = bitcast %union.anon* %2612 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2613, i32 0, i32 0
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 15
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %RBP.i311
  %2618 = sub i64 %2617, 589
  %2619 = load i8, i8* %CL.i
  %2620 = zext i8 %2619 to i64
  %2621 = load i64, i64* %PC.i310
  %2622 = add i64 %2621, 6
  store i64 %2622, i64* %PC.i310
  %2623 = inttoptr i64 %2618 to i8*
  store i8 %2619, i8* %2623
  store %struct.Memory* %loadMem_4666b3, %struct.Memory** %MEMORY
  %loadMem_4666b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %PC.i309
  %2628 = add i64 %2627, 22
  %2629 = load i64, i64* %PC.i309
  %2630 = add i64 %2629, 6
  %2631 = load i64, i64* %PC.i309
  %2632 = add i64 %2631, 6
  store i64 %2632, i64* %PC.i309
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2634 = load i8, i8* %2633, align 1
  %2635 = icmp eq i8 %2634, 0
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2637 = load i8, i8* %2636, align 1
  %2638 = icmp ne i8 %2637, 0
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2640 = load i8, i8* %2639, align 1
  %2641 = icmp ne i8 %2640, 0
  %2642 = xor i1 %2638, %2641
  %2643 = xor i1 %2642, true
  %2644 = and i1 %2635, %2643
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %BRANCH_TAKEN, align 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2647 = select i1 %2644, i64 %2628, i64 %2630
  store i64 %2647, i64* %2646, align 8
  store %struct.Memory* %loadMem_4666b9, %struct.Memory** %MEMORY
  %loadBr_4666b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4666b9 = icmp eq i8 %loadBr_4666b9, 1
  br i1 %cmpBr_4666b9, label %block_.L_4666cf, label %block_4666bf

block_4666bf:                                     ; preds = %block_.L_46665d
  %loadMem_4666bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 15
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RBP.i308
  %2655 = sub i64 %2654, 512
  %2656 = load i64, i64* %PC.i307
  %2657 = add i64 %2656, 7
  store i64 %2657, i64* %PC.i307
  %2658 = inttoptr i64 %2655 to i32*
  %2659 = load i32, i32* %2658
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2660, align 1
  %2661 = and i32 %2659, 255
  %2662 = call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2665, i8* %2666, align 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2667, align 1
  %2668 = icmp eq i32 %2659, 0
  %2669 = zext i1 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2669, i8* %2670, align 1
  %2671 = lshr i32 %2659, 31
  %2672 = trunc i32 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2672, i8* %2673, align 1
  %2674 = lshr i32 %2659, 31
  %2675 = xor i32 %2671, %2674
  %2676 = add i32 %2675, %2674
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2678, i8* %2679, align 1
  store %struct.Memory* %loadMem_4666bf, %struct.Memory** %MEMORY
  %loadMem_4666c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 1
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %2686 = bitcast %union.anon* %2685 to %struct.anon.2*
  %AL.i306 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2686, i32 0, i32 0
  %2687 = load i64, i64* %PC.i305
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC.i305
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2690 = load i8, i8* %2689, align 1
  store i8 %2690, i8* %AL.i306, align 1
  store %struct.Memory* %loadMem_4666c6, %struct.Memory** %MEMORY
  %loadMem_4666c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 1
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %2697 = bitcast %union.anon* %2696 to %struct.anon.2*
  %AL.i303 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2697, i32 0, i32 0
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 15
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %RBP.i304
  %2702 = sub i64 %2701, 589
  %2703 = load i8, i8* %AL.i303
  %2704 = zext i8 %2703 to i64
  %2705 = load i64, i64* %PC.i302
  %2706 = add i64 %2705, 6
  store i64 %2706, i64* %PC.i302
  %2707 = inttoptr i64 %2702 to i8*
  store i8 %2703, i8* %2707
  store %struct.Memory* %loadMem_4666c9, %struct.Memory** %MEMORY
  br label %block_.L_4666cf

block_.L_4666cf:                                  ; preds = %block_4666bf, %block_.L_46665d
  %loadMem_4666cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 1
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %2714 = bitcast %union.anon* %2713 to %struct.anon.2*
  %AL.i300 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2714, i32 0, i32 0
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 15
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %RBP.i301
  %2719 = sub i64 %2718, 589
  %2720 = load i64, i64* %PC.i299
  %2721 = add i64 %2720, 6
  store i64 %2721, i64* %PC.i299
  %2722 = inttoptr i64 %2719 to i8*
  %2723 = load i8, i8* %2722
  store i8 %2723, i8* %AL.i300, align 1
  store %struct.Memory* %loadMem_4666cf, %struct.Memory** %MEMORY
  %loadMem_4666d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 7
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %2729 to i64*
  %2730 = load i64, i64* %PC.i297
  %2731 = add i64 %2730, 10
  store i64 %2731, i64* %PC.i297
  store i64 ptrtoint (%G__0x57fc7d_type* @G__0x57fc7d to i64), i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_4666d5, %struct.Memory** %MEMORY
  %loadMem_4666df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 5
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 15
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RBP.i296
  %2742 = sub i64 %2741, 536
  %2743 = load i64, i64* %PC.i294
  %2744 = add i64 %2743, 7
  store i64 %2744, i64* %PC.i294
  store i64 %2742, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4666df, %struct.Memory** %MEMORY
  %loadMem_4666e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 9
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RSI.i292 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 15
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %RBP.i293
  %2755 = sub i64 %2754, 540
  %2756 = load i64, i64* %PC.i291
  %2757 = add i64 %2756, 7
  store i64 %2757, i64* %PC.i291
  store i64 %2755, i64* %RSI.i292, align 8
  store %struct.Memory* %loadMem_4666e6, %struct.Memory** %MEMORY
  %loadMem_4666ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 11
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RDI.i289 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 15
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %2766 to i64*
  %2767 = load i64, i64* %RBP.i290
  %2768 = sub i64 %2767, 544
  %2769 = load i64, i64* %PC.i288
  %2770 = add i64 %2769, 7
  store i64 %2770, i64* %PC.i288
  store i64 %2768, i64* %RDI.i289, align 8
  store %struct.Memory* %loadMem_4666ed, %struct.Memory** %MEMORY
  %loadMem_4666f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 1
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %2777 = bitcast %union.anon* %2776 to %struct.anon.2*
  %AL.i287 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2777, i32 0, i32 0
  %2778 = load i8, i8* %AL.i287
  %2779 = zext i8 %2778 to i64
  %2780 = load i64, i64* %PC.i286
  %2781 = add i64 %2780, 2
  store i64 %2781, i64* %PC.i286
  %2782 = and i64 1, %2779
  %2783 = trunc i64 %2782 to i8
  store i8 %2783, i8* %AL.i287, align 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2784, align 1
  %2785 = trunc i64 %2782 to i32
  %2786 = and i32 %2785, 255
  %2787 = call i32 @llvm.ctpop.i32(i32 %2786)
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = xor i8 %2789, 1
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2790, i8* %2791, align 1
  %2792 = icmp eq i8 %2783, 0
  %2793 = zext i1 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2793, i8* %2794, align 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2795, align 1
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2796, align 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2797, align 1
  store %struct.Memory* %loadMem_4666f4, %struct.Memory** %MEMORY
  %loadMem_4666f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 1
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %2804 = bitcast %union.anon* %2803 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2804, i32 0, i32 0
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 17
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %R8D.i285 = bitcast %union.anon* %2807 to i32*
  %2808 = bitcast i32* %R8D.i285 to i64*
  %2809 = load i8, i8* %AL.i
  %2810 = zext i8 %2809 to i64
  %2811 = load i64, i64* %PC.i284
  %2812 = add i64 %2811, 4
  store i64 %2812, i64* %PC.i284
  %2813 = and i64 %2810, 255
  store i64 %2813, i64* %2808, align 8
  store %struct.Memory* %loadMem_4666f6, %struct.Memory** %MEMORY
  %loadMem_4666fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 33
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 19
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %R9D.i282 = bitcast %union.anon* %2819 to i32*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 15
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2822 to i64*
  %2823 = bitcast i32* %R9D.i282 to i64*
  %2824 = load i64, i64* %RBP.i283
  %2825 = sub i64 %2824, 576
  %2826 = load i64, i64* %PC.i281
  %2827 = add i64 %2826, 7
  store i64 %2827, i64* %PC.i281
  %2828 = inttoptr i64 %2825 to i32*
  %2829 = load i32, i32* %2828
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %2823, align 8
  store %struct.Memory* %loadMem_4666fa, %struct.Memory** %MEMORY
  %loadMem_466701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 11
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RDI.i279 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 15
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2839 to i64*
  %2840 = load i64, i64* %RBP.i280
  %2841 = sub i64 %2840, 600
  %2842 = load i64, i64* %RDI.i279
  %2843 = load i64, i64* %PC.i278
  %2844 = add i64 %2843, 7
  store i64 %2844, i64* %PC.i278
  %2845 = inttoptr i64 %2841 to i64*
  store i64 %2842, i64* %2845
  store %struct.Memory* %loadMem_466701, %struct.Memory** %MEMORY
  %loadMem_466708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 19
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %R9D.i276 = bitcast %union.anon* %2851 to i32*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 11
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %2854 to i64*
  %2855 = load i32, i32* %R9D.i276
  %2856 = zext i32 %2855 to i64
  %2857 = load i64, i64* %PC.i275
  %2858 = add i64 %2857, 3
  store i64 %2858, i64* %PC.i275
  %2859 = and i64 %2856, 4294967295
  store i64 %2859, i64* %RDI.i277, align 8
  store %struct.Memory* %loadMem_466708, %struct.Memory** %MEMORY
  %loadMem_46670b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 21
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %R10D.i273 = bitcast %union.anon* %2865 to i32*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 15
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2868 to i64*
  %2869 = bitcast i32* %R10D.i273 to i64*
  %2870 = load i64, i64* %RBP.i274
  %2871 = sub i64 %2870, 580
  %2872 = load i64, i64* %PC.i272
  %2873 = add i64 %2872, 7
  store i64 %2873, i64* %PC.i272
  %2874 = inttoptr i64 %2871 to i32*
  %2875 = load i32, i32* %2874
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %2869, align 8
  store %struct.Memory* %loadMem_46670b, %struct.Memory** %MEMORY
  %loadMem_466712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 9
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RSI.i270 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 15
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %RBP.i271
  %2887 = sub i64 %2886, 608
  %2888 = load i64, i64* %RSI.i270
  %2889 = load i64, i64* %PC.i269
  %2890 = add i64 %2889, 7
  store i64 %2890, i64* %PC.i269
  %2891 = inttoptr i64 %2887 to i64*
  store i64 %2888, i64* %2891
  store %struct.Memory* %loadMem_466712, %struct.Memory** %MEMORY
  %loadMem_466719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 21
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %2897 to i32*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 9
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RSI.i268 = bitcast %union.anon* %2900 to i64*
  %2901 = load i32, i32* %R10D.i
  %2902 = zext i32 %2901 to i64
  %2903 = load i64, i64* %PC.i267
  %2904 = add i64 %2903, 3
  store i64 %2904, i64* %PC.i267
  %2905 = and i64 %2902, 4294967295
  store i64 %2905, i64* %RSI.i268, align 8
  store %struct.Memory* %loadMem_466719, %struct.Memory** %MEMORY
  %loadMem_46671c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 23
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %R11D.i265 = bitcast %union.anon* %2911 to i32*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 15
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %2914 to i64*
  %2915 = bitcast i32* %R11D.i265 to i64*
  %2916 = load i64, i64* %RBP.i266
  %2917 = sub i64 %2916, 584
  %2918 = load i64, i64* %PC.i264
  %2919 = add i64 %2918, 7
  store i64 %2919, i64* %PC.i264
  %2920 = inttoptr i64 %2917 to i32*
  %2921 = load i32, i32* %2920
  %2922 = zext i32 %2921 to i64
  store i64 %2922, i64* %2915, align 8
  store %struct.Memory* %loadMem_46671c, %struct.Memory** %MEMORY
  %loadMem_466723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 5
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 15
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RBP.i263
  %2933 = sub i64 %2932, 616
  %2934 = load i64, i64* %RCX.i262
  %2935 = load i64, i64* %PC.i261
  %2936 = add i64 %2935, 7
  store i64 %2936, i64* %PC.i261
  %2937 = inttoptr i64 %2933 to i64*
  store i64 %2934, i64* %2937
  store %struct.Memory* %loadMem_466723, %struct.Memory** %MEMORY
  %loadMem_46672a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 23
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %2943 to i32*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 5
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %2946 to i64*
  %2947 = load i32, i32* %R11D.i
  %2948 = zext i32 %2947 to i64
  %2949 = load i64, i64* %PC.i259
  %2950 = add i64 %2949, 3
  store i64 %2950, i64* %PC.i259
  %2951 = and i64 %2948, 4294967295
  store i64 %2951, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_46672a, %struct.Memory** %MEMORY
  %loadMem_46672d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 3
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RBX.i257 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 15
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2960 to i64*
  %2961 = load i64, i64* %RBP.i258
  %2962 = sub i64 %2961, 588
  %2963 = load i64, i64* %PC.i256
  %2964 = add i64 %2963, 6
  store i64 %2964, i64* %PC.i256
  %2965 = inttoptr i64 %2962 to i32*
  %2966 = load i32, i32* %2965
  %2967 = zext i32 %2966 to i64
  store i64 %2967, i64* %RBX.i257, align 8
  store %struct.Memory* %loadMem_46672d, %struct.Memory** %MEMORY
  %loadMem_466733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 17
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %R8D.i254 = bitcast %union.anon* %2973 to i32*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 15
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RBP.i255
  %2978 = sub i64 %2977, 620
  %2979 = load i32, i32* %R8D.i254
  %2980 = zext i32 %2979 to i64
  %2981 = load i64, i64* %PC.i253
  %2982 = add i64 %2981, 7
  store i64 %2982, i64* %PC.i253
  %2983 = inttoptr i64 %2978 to i32*
  store i32 %2979, i32* %2983
  store %struct.Memory* %loadMem_466733, %struct.Memory** %MEMORY
  %loadMem_46673a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 3
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %2989 to i32*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 17
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %R8D.i252 = bitcast %union.anon* %2992 to i32*
  %2993 = bitcast i32* %R8D.i252 to i64*
  %2994 = load i32, i32* %EBX.i
  %2995 = zext i32 %2994 to i64
  %2996 = load i64, i64* %PC.i251
  %2997 = add i64 %2996, 3
  store i64 %2997, i64* %PC.i251
  %2998 = and i64 %2995, 4294967295
  store i64 %2998, i64* %2993, align 8
  store %struct.Memory* %loadMem_46673a, %struct.Memory** %MEMORY
  %loadMem_46673d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 19
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3004 to i32*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 15
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %3007 to i64*
  %3008 = bitcast i32* %R9D.i to i64*
  %3009 = load i64, i64* %RBP.i250
  %3010 = sub i64 %3009, 572
  %3011 = load i64, i64* %PC.i249
  %3012 = add i64 %3011, 7
  store i64 %3012, i64* %PC.i249
  %3013 = inttoptr i64 %3010 to i32*
  %3014 = load i32, i32* %3013
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %3008, align 8
  store %struct.Memory* %loadMem_46673d, %struct.Memory** %MEMORY
  %loadMem_466744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 15
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 29
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %R14.i248 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RBP.i247
  %3026 = sub i64 %3025, 616
  %3027 = load i64, i64* %PC.i246
  %3028 = add i64 %3027, 7
  store i64 %3028, i64* %PC.i246
  %3029 = inttoptr i64 %3026 to i64*
  %3030 = load i64, i64* %3029
  store i64 %3030, i64* %R14.i248, align 8
  store %struct.Memory* %loadMem_466744, %struct.Memory** %MEMORY
  %loadMem_46674b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 13
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RSP.i244 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 29
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %R14.i245 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RSP.i244
  %3041 = load i64, i64* %R14.i245
  %3042 = load i64, i64* %PC.i243
  %3043 = add i64 %3042, 4
  store i64 %3043, i64* %PC.i243
  %3044 = inttoptr i64 %3040 to i64*
  store i64 %3041, i64* %3044
  store %struct.Memory* %loadMem_46674b, %struct.Memory** %MEMORY
  %loadMem_46674f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 31
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %R15.i242 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i241
  %3055 = sub i64 %3054, 608
  %3056 = load i64, i64* %PC.i240
  %3057 = add i64 %3056, 7
  store i64 %3057, i64* %PC.i240
  %3058 = inttoptr i64 %3055 to i64*
  %3059 = load i64, i64* %3058
  store i64 %3059, i64* %R15.i242, align 8
  store %struct.Memory* %loadMem_46674f, %struct.Memory** %MEMORY
  %loadMem_466756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 13
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RSP.i238 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 31
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %R15.i239 = bitcast %union.anon* %3068 to i64*
  %3069 = load i64, i64* %RSP.i238
  %3070 = add i64 %3069, 8
  %3071 = load i64, i64* %R15.i239
  %3072 = load i64, i64* %PC.i237
  %3073 = add i64 %3072, 5
  store i64 %3073, i64* %PC.i237
  %3074 = inttoptr i64 %3070 to i64*
  store i64 %3071, i64* %3074
  store %struct.Memory* %loadMem_466756, %struct.Memory** %MEMORY
  %loadMem_46675b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 33
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 15
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 25
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %R12.i236 = bitcast %union.anon* %3083 to i64*
  %3084 = load i64, i64* %RBP.i235
  %3085 = sub i64 %3084, 600
  %3086 = load i64, i64* %PC.i234
  %3087 = add i64 %3086, 7
  store i64 %3087, i64* %PC.i234
  %3088 = inttoptr i64 %3085 to i64*
  %3089 = load i64, i64* %3088
  store i64 %3089, i64* %R12.i236, align 8
  store %struct.Memory* %loadMem_46675b, %struct.Memory** %MEMORY
  %loadMem_466762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 13
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RSP.i232 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 25
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %R12.i233 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RSP.i232
  %3100 = add i64 %3099, 16
  %3101 = load i64, i64* %R12.i233
  %3102 = load i64, i64* %PC.i231
  %3103 = add i64 %3102, 5
  store i64 %3103, i64* %PC.i231
  %3104 = inttoptr i64 %3100 to i64*
  store i64 %3101, i64* %3104
  store %struct.Memory* %loadMem_466762, %struct.Memory** %MEMORY
  %loadMem_466767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 33
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 27
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %R13D.i229 = bitcast %union.anon* %3110 to i32*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 15
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3113 to i64*
  %3114 = bitcast i32* %R13D.i229 to i64*
  %3115 = load i64, i64* %RBP.i230
  %3116 = sub i64 %3115, 620
  %3117 = load i64, i64* %PC.i228
  %3118 = add i64 %3117, 7
  store i64 %3118, i64* %PC.i228
  %3119 = inttoptr i64 %3116 to i32*
  %3120 = load i32, i32* %3119
  %3121 = zext i32 %3120 to i64
  store i64 %3121, i64* %3114, align 8
  store %struct.Memory* %loadMem_466767, %struct.Memory** %MEMORY
  %loadMem_46676e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 27
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %3127 to i32*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 13
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RSP.i227 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %RSP.i227
  %3132 = add i64 %3131, 24
  %3133 = load i32, i32* %R13D.i
  %3134 = zext i32 %3133 to i64
  %3135 = load i64, i64* %PC.i226
  %3136 = add i64 %3135, 5
  store i64 %3136, i64* %PC.i226
  %3137 = inttoptr i64 %3132 to i32*
  store i32 %3133, i32* %3137
  store %struct.Memory* %loadMem_46676e, %struct.Memory** %MEMORY
  %loadMem1_466773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3140 to i64*
  %3141 = load i64, i64* %PC.i225
  %3142 = add i64 %3141, -358787
  %3143 = load i64, i64* %PC.i225
  %3144 = add i64 %3143, 5
  %3145 = load i64, i64* %PC.i225
  %3146 = add i64 %3145, 5
  store i64 %3146, i64* %PC.i225
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3148 = load i64, i64* %3147, align 8
  %3149 = add i64 %3148, -8
  %3150 = inttoptr i64 %3149 to i64*
  store i64 %3144, i64* %3150
  store i64 %3149, i64* %3147, align 8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3142, i64* %3151, align 8
  store %struct.Memory* %loadMem1_466773, %struct.Memory** %MEMORY
  %loadMem2_466773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466773 = load i64, i64* %3
  %call2_466773 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64 %loadPC_466773, %struct.Memory* %loadMem2_466773)
  store %struct.Memory* %call2_466773, %struct.Memory** %MEMORY
  %loadMem_466778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 1
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %3157 to i32*
  %3158 = load i32, i32* %EAX.i224
  %3159 = zext i32 %3158 to i64
  %3160 = load i64, i64* %PC.i223
  %3161 = add i64 %3160, 3
  store i64 %3161, i64* %PC.i223
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3162, align 1
  %3163 = and i32 %3158, 255
  %3164 = call i32 @llvm.ctpop.i32(i32 %3163)
  %3165 = trunc i32 %3164 to i8
  %3166 = and i8 %3165, 1
  %3167 = xor i8 %3166, 1
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3167, i8* %3168, align 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3169, align 1
  %3170 = icmp eq i32 %3158, 0
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3171, i8* %3172, align 1
  %3173 = lshr i32 %3158, 31
  %3174 = trunc i32 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3158, 31
  %3177 = xor i32 %3173, %3176
  %3178 = add i32 %3177, %3176
  %3179 = icmp eq i32 %3178, 2
  %3180 = zext i1 %3179 to i8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3180, i8* %3181, align 1
  store %struct.Memory* %loadMem_466778, %struct.Memory** %MEMORY
  %loadMem_46677b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3184 to i64*
  %3185 = load i64, i64* %PC.i222
  %3186 = add i64 %3185, 276
  %3187 = load i64, i64* %PC.i222
  %3188 = add i64 %3187, 6
  %3189 = load i64, i64* %PC.i222
  %3190 = add i64 %3189, 6
  store i64 %3190, i64* %PC.i222
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3192 = load i8, i8* %3191, align 1
  store i8 %3192, i8* %BRANCH_TAKEN, align 1
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3194 = icmp ne i8 %3192, 0
  %3195 = select i1 %3194, i64 %3186, i64 %3188
  store i64 %3195, i64* %3193, align 8
  store %struct.Memory* %loadMem_46677b, %struct.Memory** %MEMORY
  %loadBr_46677b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46677b = icmp eq i8 %loadBr_46677b, 1
  br i1 %cmpBr_46677b, label %block_.L_46688f, label %block_466781

block_466781:                                     ; preds = %block_.L_4666cf
  %loadMem_466781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 15
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3201 to i64*
  %3202 = load i64, i64* %RBP.i221
  %3203 = sub i64 %3202, 544
  %3204 = load i64, i64* %PC.i220
  %3205 = add i64 %3204, 7
  store i64 %3205, i64* %PC.i220
  %3206 = inttoptr i64 %3203 to i32*
  %3207 = load i32, i32* %3206
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3208, align 1
  %3209 = and i32 %3207, 255
  %3210 = call i32 @llvm.ctpop.i32(i32 %3209)
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = xor i8 %3212, 1
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3213, i8* %3214, align 1
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3215, align 1
  %3216 = icmp eq i32 %3207, 0
  %3217 = zext i1 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3207, 31
  %3220 = trunc i32 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3220, i8* %3221, align 1
  %3222 = lshr i32 %3207, 31
  %3223 = xor i32 %3219, %3222
  %3224 = add i32 %3223, %3222
  %3225 = icmp eq i32 %3224, 2
  %3226 = zext i1 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3226, i8* %3227, align 1
  store %struct.Memory* %loadMem_466781, %struct.Memory** %MEMORY
  %loadMem_466788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %PC.i219
  %3232 = add i64 %3231, 201
  %3233 = load i64, i64* %PC.i219
  %3234 = add i64 %3233, 6
  %3235 = load i64, i64* %PC.i219
  %3236 = add i64 %3235, 6
  store i64 %3236, i64* %PC.i219
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3238 = load i8, i8* %3237, align 1
  %3239 = icmp eq i8 %3238, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %BRANCH_TAKEN, align 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3242 = select i1 %3239, i64 %3232, i64 %3234
  store i64 %3242, i64* %3241, align 8
  store %struct.Memory* %loadMem_466788, %struct.Memory** %MEMORY
  %loadBr_466788 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466788 = icmp eq i8 %loadBr_466788, 1
  br i1 %cmpBr_466788, label %block_.L_466851, label %block_46678e

block_46678e:                                     ; preds = %block_466781
  %loadMem_46678e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 33
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 1
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %EAX.i217 = bitcast %union.anon* %3248 to i32*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 1
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %RAX.i218
  %3253 = load i32, i32* %EAX.i217
  %3254 = zext i32 %3253 to i64
  %3255 = load i64, i64* %PC.i216
  %3256 = add i64 %3255, 2
  store i64 %3256, i64* %PC.i216
  %3257 = xor i64 %3254, %3252
  %3258 = trunc i64 %3257 to i32
  %3259 = and i64 %3257, 4294967295
  store i64 %3259, i64* %RAX.i218, align 8
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3260, align 1
  %3261 = and i32 %3258, 255
  %3262 = call i32 @llvm.ctpop.i32(i32 %3261)
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3265, i8* %3266, align 1
  %3267 = icmp eq i32 %3258, 0
  %3268 = zext i1 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3268, i8* %3269, align 1
  %3270 = lshr i32 %3258, 31
  %3271 = trunc i32 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3271, i8* %3272, align 1
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3273, align 1
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3274, align 1
  store %struct.Memory* %loadMem_46678e, %struct.Memory** %MEMORY
  %loadMem_466790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 1
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %3280 to i32*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 9
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %3283 to i64*
  %3284 = load i32, i32* %EAX.i214
  %3285 = zext i32 %3284 to i64
  %3286 = load i64, i64* %PC.i213
  %3287 = add i64 %3286, 2
  store i64 %3287, i64* %PC.i213
  %3288 = and i64 %3285, 4294967295
  store i64 %3288, i64* %RSI.i215, align 8
  store %struct.Memory* %loadMem_466790, %struct.Memory** %MEMORY
  %loadMem_466792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 11
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RDI.i211 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 15
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RBP.i212
  %3299 = sub i64 %3298, 48
  %3300 = load i64, i64* %PC.i210
  %3301 = add i64 %3300, 3
  store i64 %3301, i64* %PC.i210
  %3302 = inttoptr i64 %3299 to i32*
  %3303 = load i32, i32* %3302
  %3304 = zext i32 %3303 to i64
  store i64 %3304, i64* %RDI.i211, align 8
  store %struct.Memory* %loadMem_466792, %struct.Memory** %MEMORY
  %loadMem_466795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 7
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i209
  %3315 = sub i64 %3314, 536
  %3316 = load i64, i64* %PC.i207
  %3317 = add i64 %3316, 6
  store i64 %3317, i64* %PC.i207
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = zext i32 %3319 to i64
  store i64 %3320, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_466795, %struct.Memory** %MEMORY
  %loadMem_46679b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 5
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 15
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RBP.i206
  %3331 = sub i64 %3330, 540
  %3332 = load i64, i64* %PC.i204
  %3333 = add i64 %3332, 6
  store i64 %3333, i64* %PC.i204
  %3334 = inttoptr i64 %3331 to i32*
  %3335 = load i32, i32* %3334
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_46679b, %struct.Memory** %MEMORY
  %loadMem1_4667a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %PC.i203
  %3341 = add i64 %3340, -35521
  %3342 = load i64, i64* %PC.i203
  %3343 = add i64 %3342, 5
  %3344 = load i64, i64* %PC.i203
  %3345 = add i64 %3344, 5
  store i64 %3345, i64* %PC.i203
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3347 = load i64, i64* %3346, align 8
  %3348 = add i64 %3347, -8
  %3349 = inttoptr i64 %3348 to i64*
  store i64 %3343, i64* %3349
  store i64 %3348, i64* %3346, align 8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3341, i64* %3350, align 8
  store %struct.Memory* %loadMem1_4667a1, %struct.Memory** %MEMORY
  %loadMem2_4667a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4667a1 = load i64, i64* %3
  %call2_4667a1 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_4667a1, %struct.Memory* %loadMem2_4667a1)
  store %struct.Memory* %call2_4667a1, %struct.Memory** %MEMORY
  %loadMem_4667a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 1
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %3356 to i32*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 15
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RBP.i202
  %3361 = sub i64 %3360, 548
  %3362 = load i32, i32* %EAX.i201
  %3363 = zext i32 %3362 to i64
  %3364 = load i64, i64* %PC.i200
  %3365 = add i64 %3364, 6
  store i64 %3365, i64* %PC.i200
  %3366 = inttoptr i64 %3361 to i32*
  store i32 %3362, i32* %3366
  store %struct.Memory* %loadMem_4667a6, %struct.Memory** %MEMORY
  %loadMem1_4667ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %PC.i199
  %3371 = add i64 %3370, -363084
  %3372 = load i64, i64* %PC.i199
  %3373 = add i64 %3372, 5
  %3374 = load i64, i64* %PC.i199
  %3375 = add i64 %3374, 5
  store i64 %3375, i64* %PC.i199
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3377 = load i64, i64* %3376, align 8
  %3378 = add i64 %3377, -8
  %3379 = inttoptr i64 %3378 to i64*
  store i64 %3373, i64* %3379
  store i64 %3378, i64* %3376, align 8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3371, i64* %3380, align 8
  store %struct.Memory* %loadMem1_4667ac, %struct.Memory** %MEMORY
  %loadMem2_4667ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4667ac = load i64, i64* %3
  %call2_4667ac = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_4667ac, %struct.Memory* %loadMem2_4667ac)
  store %struct.Memory* %call2_4667ac, %struct.Memory** %MEMORY
  %loadMem_4667b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 15
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3386 to i64*
  %3387 = load i64, i64* %RBP.i198
  %3388 = sub i64 %3387, 548
  %3389 = load i64, i64* %PC.i197
  %3390 = add i64 %3389, 7
  store i64 %3390, i64* %PC.i197
  %3391 = inttoptr i64 %3388 to i32*
  %3392 = load i32, i32* %3391
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3393, align 1
  %3394 = and i32 %3392, 255
  %3395 = call i32 @llvm.ctpop.i32(i32 %3394)
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  %3398 = xor i8 %3397, 1
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3398, i8* %3399, align 1
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3400, align 1
  %3401 = icmp eq i32 %3392, 0
  %3402 = zext i1 %3401 to i8
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3402, i8* %3403, align 1
  %3404 = lshr i32 %3392, 31
  %3405 = trunc i32 %3404 to i8
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3405, i8* %3406, align 1
  %3407 = lshr i32 %3392, 31
  %3408 = xor i32 %3404, %3407
  %3409 = add i32 %3408, %3407
  %3410 = icmp eq i32 %3409, 2
  %3411 = zext i1 %3410 to i8
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3411, i8* %3412, align 1
  store %struct.Memory* %loadMem_4667b1, %struct.Memory** %MEMORY
  %loadMem_4667b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %PC.i196
  %3417 = add i64 %3416, 89
  %3418 = load i64, i64* %PC.i196
  %3419 = add i64 %3418, 6
  %3420 = load i64, i64* %PC.i196
  %3421 = add i64 %3420, 6
  store i64 %3421, i64* %PC.i196
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3423 = load i8, i8* %3422, align 1
  %3424 = icmp eq i8 %3423, 0
  %3425 = zext i1 %3424 to i8
  store i8 %3425, i8* %BRANCH_TAKEN, align 1
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3427 = select i1 %3424, i64 %3417, i64 %3419
  store i64 %3427, i64* %3426, align 8
  store %struct.Memory* %loadMem_4667b8, %struct.Memory** %MEMORY
  %loadBr_4667b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4667b8 = icmp eq i8 %loadBr_4667b8, 1
  br i1 %cmpBr_4667b8, label %block_.L_466811, label %block_4667be

block_4667be:                                     ; preds = %block_46678e
  %loadMem_4667be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 15
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %RBP.i195
  %3435 = sub i64 %3434, 56
  %3436 = load i64, i64* %PC.i194
  %3437 = add i64 %3436, 5
  store i64 %3437, i64* %PC.i194
  %3438 = inttoptr i64 %3435 to i64*
  %3439 = load i64, i64* %3438
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3440, align 1
  %3441 = trunc i64 %3439 to i32
  %3442 = and i32 %3441, 255
  %3443 = call i32 @llvm.ctpop.i32(i32 %3442)
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  %3446 = xor i8 %3445, 1
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3446, i8* %3447, align 1
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3448, align 1
  %3449 = icmp eq i64 %3439, 0
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i64 %3439, 63
  %3453 = trunc i64 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3453, i8* %3454, align 1
  %3455 = lshr i64 %3439, 63
  %3456 = xor i64 %3452, %3455
  %3457 = add i64 %3456, %3455
  %3458 = icmp eq i64 %3457, 2
  %3459 = zext i1 %3458 to i8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3459, i8* %3460, align 1
  store %struct.Memory* %loadMem_4667be, %struct.Memory** %MEMORY
  %loadMem_4667c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3463 to i64*
  %3464 = load i64, i64* %PC.i193
  %3465 = add i64 %3464, 15
  %3466 = load i64, i64* %PC.i193
  %3467 = add i64 %3466, 6
  %3468 = load i64, i64* %PC.i193
  %3469 = add i64 %3468, 6
  store i64 %3469, i64* %PC.i193
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3471 = load i8, i8* %3470, align 1
  store i8 %3471, i8* %BRANCH_TAKEN, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3473 = icmp ne i8 %3471, 0
  %3474 = select i1 %3473, i64 %3465, i64 %3467
  store i64 %3474, i64* %3472, align 8
  store %struct.Memory* %loadMem_4667c3, %struct.Memory** %MEMORY
  %loadBr_4667c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4667c3 = icmp eq i8 %loadBr_4667c3, 1
  br i1 %cmpBr_4667c3, label %block_.L_4667d2, label %block_4667c9

block_4667c9:                                     ; preds = %block_4667be
  %loadMem_4667c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i192
  %3485 = sub i64 %3484, 76
  %3486 = load i64, i64* %PC.i190
  %3487 = add i64 %3486, 3
  store i64 %3487, i64* %PC.i190
  %3488 = inttoptr i64 %3485 to i32*
  %3489 = load i32, i32* %3488
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_4667c9, %struct.Memory** %MEMORY
  %loadMem_4667cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 5
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 15
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RBP.i189
  %3501 = sub i64 %3500, 56
  %3502 = load i64, i64* %PC.i187
  %3503 = add i64 %3502, 4
  store i64 %3503, i64* %PC.i187
  %3504 = inttoptr i64 %3501 to i64*
  %3505 = load i64, i64* %3504
  store i64 %3505, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_4667cc, %struct.Memory** %MEMORY
  %loadMem_4667d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %3511 to i32*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %RCX.i186
  %3516 = load i32, i32* %EAX.i185
  %3517 = zext i32 %3516 to i64
  %3518 = load i64, i64* %PC.i184
  %3519 = add i64 %3518, 2
  store i64 %3519, i64* %PC.i184
  %3520 = inttoptr i64 %3515 to i32*
  store i32 %3516, i32* %3520
  store %struct.Memory* %loadMem_4667d0, %struct.Memory** %MEMORY
  br label %block_.L_4667d2

block_.L_4667d2:                                  ; preds = %block_4667c9, %block_4667be
  %loadMem_4667d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 33
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3523 to i64*
  %3524 = load i64, i64* %PC.i183
  %3525 = add i64 %3524, 9
  store i64 %3525, i64* %PC.i183
  %3526 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3527, align 1
  %3528 = trunc i64 %3526 to i32
  %3529 = and i32 %3528, 255
  %3530 = call i32 @llvm.ctpop.i32(i32 %3529)
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = xor i8 %3532, 1
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3533, i8* %3534, align 1
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3535, align 1
  %3536 = icmp eq i64 %3526, 0
  %3537 = zext i1 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3537, i8* %3538, align 1
  %3539 = lshr i64 %3526, 63
  %3540 = trunc i64 %3539 to i8
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3540, i8* %3541, align 1
  %3542 = lshr i64 %3526, 63
  %3543 = xor i64 %3539, %3542
  %3544 = add i64 %3543, %3542
  %3545 = icmp eq i64 %3544, 2
  %3546 = zext i1 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3546, i8* %3547, align 1
  store %struct.Memory* %loadMem_4667d2, %struct.Memory** %MEMORY
  %loadMem_4667db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3550 to i64*
  %3551 = load i64, i64* %PC.i182
  %3552 = add i64 %3551, 42
  %3553 = load i64, i64* %PC.i182
  %3554 = add i64 %3553, 6
  %3555 = load i64, i64* %PC.i182
  %3556 = add i64 %3555, 6
  store i64 %3556, i64* %PC.i182
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3558 = load i8, i8* %3557, align 1
  store i8 %3558, i8* %BRANCH_TAKEN, align 1
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3560 = icmp ne i8 %3558, 0
  %3561 = select i1 %3560, i64 %3552, i64 %3554
  store i64 %3561, i64* %3559, align 8
  store %struct.Memory* %loadMem_4667db, %struct.Memory** %MEMORY
  %loadBr_4667db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4667db = icmp eq i8 %loadBr_4667db, 1
  br i1 %cmpBr_4667db, label %block_.L_466805, label %block_4667e1

block_4667e1:                                     ; preds = %block_.L_4667d2
  %loadMem_4667e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 5
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %PC.i180
  %3569 = add i64 %3568, 5
  store i64 %3569, i64* %PC.i180
  store i64 5, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_4667e1, %struct.Memory** %MEMORY
  %loadMem_4667e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 17
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %R8.i179 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %PC.i178
  %3577 = add i64 %3576, 10
  store i64 %3577, i64* %PC.i178
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i179, align 8
  store %struct.Memory* %loadMem_4667e6, %struct.Memory** %MEMORY
  %loadMem_4667f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 33
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 11
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RDI.i176 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 15
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RBP.i177
  %3588 = sub i64 %3587, 528
  %3589 = load i64, i64* %PC.i175
  %3590 = add i64 %3589, 7
  store i64 %3590, i64* %PC.i175
  %3591 = inttoptr i64 %3588 to i64*
  %3592 = load i64, i64* %3591
  store i64 %3592, i64* %RDI.i176, align 8
  store %struct.Memory* %loadMem_4667f0, %struct.Memory** %MEMORY
  %loadMem_4667f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 9
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RSI.i173 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 15
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3601 to i64*
  %3602 = load i64, i64* %RBP.i174
  %3603 = sub i64 %3602, 532
  %3604 = load i64, i64* %PC.i172
  %3605 = add i64 %3604, 6
  store i64 %3605, i64* %PC.i172
  %3606 = inttoptr i64 %3603 to i32*
  %3607 = load i32, i32* %3606
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RSI.i173, align 8
  store %struct.Memory* %loadMem_4667f7, %struct.Memory** %MEMORY
  %loadMem_4667fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 7
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 15
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3617 to i64*
  %3618 = load i64, i64* %RBP.i171
  %3619 = sub i64 %3618, 76
  %3620 = load i64, i64* %PC.i169
  %3621 = add i64 %3620, 3
  store i64 %3621, i64* %PC.i169
  %3622 = inttoptr i64 %3619 to i32*
  %3623 = load i32, i32* %3622
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_4667fd, %struct.Memory** %MEMORY
  %loadMem1_466800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3627 to i64*
  %3628 = load i64, i64* %PC.i168
  %3629 = add i64 %3628, -321600
  %3630 = load i64, i64* %PC.i168
  %3631 = add i64 %3630, 5
  %3632 = load i64, i64* %PC.i168
  %3633 = add i64 %3632, 5
  store i64 %3633, i64* %PC.i168
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3635 = load i64, i64* %3634, align 8
  %3636 = add i64 %3635, -8
  %3637 = inttoptr i64 %3636 to i64*
  store i64 %3631, i64* %3637
  store i64 %3636, i64* %3634, align 8
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3629, i64* %3638, align 8
  store %struct.Memory* %loadMem1_466800, %struct.Memory** %MEMORY
  %loadMem2_466800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466800 = load i64, i64* %3
  %call2_466800 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_466800, %struct.Memory* %loadMem2_466800)
  store %struct.Memory* %call2_466800, %struct.Memory** %MEMORY
  br label %block_.L_466805

block_.L_466805:                                  ; preds = %block_4667e1, %block_.L_4667d2
  %loadMem_466805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 33
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3641 to i64*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 15
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %3644 to i64*
  %3645 = load i64, i64* %RBP.i167
  %3646 = sub i64 %3645, 44
  %3647 = load i64, i64* %PC.i166
  %3648 = add i64 %3647, 7
  store i64 %3648, i64* %PC.i166
  %3649 = inttoptr i64 %3646 to i32*
  store i32 5, i32* %3649
  store %struct.Memory* %loadMem_466805, %struct.Memory** %MEMORY
  %loadMem_46680c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %PC.i165
  %3654 = add i64 %3653, 389
  %3655 = load i64, i64* %PC.i165
  %3656 = add i64 %3655, 5
  store i64 %3656, i64* %PC.i165
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3654, i64* %3657, align 8
  store %struct.Memory* %loadMem_46680c, %struct.Memory** %MEMORY
  br label %block_.L_466991

block_.L_466811:                                  ; preds = %block_46678e
  %loadMem_466811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 1
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %PC.i163
  %3665 = add i64 %3664, 5
  store i64 %3665, i64* %PC.i163
  store i64 5, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_466811, %struct.Memory** %MEMORY
  %loadMem_466816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 1
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 15
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3674 to i64*
  %3675 = load i64, i64* %RAX.i161
  %3676 = load i64, i64* %RBP.i162
  %3677 = sub i64 %3676, 548
  %3678 = load i64, i64* %PC.i160
  %3679 = add i64 %3678, 6
  store i64 %3679, i64* %PC.i160
  %3680 = trunc i64 %3675 to i32
  %3681 = inttoptr i64 %3677 to i32*
  %3682 = load i32, i32* %3681
  %3683 = sub i32 %3680, %3682
  %3684 = zext i32 %3683 to i64
  store i64 %3684, i64* %RAX.i161, align 8
  %3685 = icmp ult i32 %3680, %3682
  %3686 = zext i1 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3686, i8* %3687, align 1
  %3688 = and i32 %3683, 255
  %3689 = call i32 @llvm.ctpop.i32(i32 %3688)
  %3690 = trunc i32 %3689 to i8
  %3691 = and i8 %3690, 1
  %3692 = xor i8 %3691, 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3692, i8* %3693, align 1
  %3694 = xor i32 %3682, %3680
  %3695 = xor i32 %3694, %3683
  %3696 = lshr i32 %3695, 4
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3698, i8* %3699, align 1
  %3700 = icmp eq i32 %3683, 0
  %3701 = zext i1 %3700 to i8
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3701, i8* %3702, align 1
  %3703 = lshr i32 %3683, 31
  %3704 = trunc i32 %3703 to i8
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3704, i8* %3705, align 1
  %3706 = lshr i32 %3680, 31
  %3707 = lshr i32 %3682, 31
  %3708 = xor i32 %3707, %3706
  %3709 = xor i32 %3703, %3706
  %3710 = add i32 %3709, %3708
  %3711 = icmp eq i32 %3710, 2
  %3712 = zext i1 %3711 to i8
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3712, i8* %3713, align 1
  store %struct.Memory* %loadMem_466816, %struct.Memory** %MEMORY
  %loadMem_46681c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 1
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %3719 to i32*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 15
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3722 to i64*
  %3723 = load i32, i32* %EAX.i158
  %3724 = zext i32 %3723 to i64
  %3725 = load i64, i64* %RBP.i159
  %3726 = sub i64 %3725, 512
  %3727 = load i64, i64* %PC.i157
  %3728 = add i64 %3727, 6
  store i64 %3728, i64* %PC.i157
  %3729 = inttoptr i64 %3726 to i32*
  %3730 = load i32, i32* %3729
  %3731 = sub i32 %3723, %3730
  %3732 = icmp ult i32 %3723, %3730
  %3733 = zext i1 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3733, i8* %3734, align 1
  %3735 = and i32 %3731, 255
  %3736 = call i32 @llvm.ctpop.i32(i32 %3735)
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  %3739 = xor i8 %3738, 1
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3739, i8* %3740, align 1
  %3741 = xor i32 %3730, %3723
  %3742 = xor i32 %3741, %3731
  %3743 = lshr i32 %3742, 4
  %3744 = trunc i32 %3743 to i8
  %3745 = and i8 %3744, 1
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3745, i8* %3746, align 1
  %3747 = icmp eq i32 %3731, 0
  %3748 = zext i1 %3747 to i8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3748, i8* %3749, align 1
  %3750 = lshr i32 %3731, 31
  %3751 = trunc i32 %3750 to i8
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3751, i8* %3752, align 1
  %3753 = lshr i32 %3723, 31
  %3754 = lshr i32 %3730, 31
  %3755 = xor i32 %3754, %3753
  %3756 = xor i32 %3750, %3753
  %3757 = add i32 %3756, %3755
  %3758 = icmp eq i32 %3757, 2
  %3759 = zext i1 %3758 to i8
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3759, i8* %3760, align 1
  store %struct.Memory* %loadMem_46681c, %struct.Memory** %MEMORY
  %loadMem_466822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %PC.i156
  %3765 = add i64 %3764, 32
  %3766 = load i64, i64* %PC.i156
  %3767 = add i64 %3766, 6
  %3768 = load i64, i64* %PC.i156
  %3769 = add i64 %3768, 6
  store i64 %3769, i64* %PC.i156
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3771 = load i8, i8* %3770, align 1
  %3772 = icmp ne i8 %3771, 0
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3774 = load i8, i8* %3773, align 1
  %3775 = icmp ne i8 %3774, 0
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3777 = load i8, i8* %3776, align 1
  %3778 = icmp ne i8 %3777, 0
  %3779 = xor i1 %3775, %3778
  %3780 = or i1 %3772, %3779
  %3781 = zext i1 %3780 to i8
  store i8 %3781, i8* %BRANCH_TAKEN, align 1
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3783 = select i1 %3780, i64 %3765, i64 %3767
  store i64 %3783, i64* %3782, align 8
  store %struct.Memory* %loadMem_466822, %struct.Memory** %MEMORY
  %loadBr_466822 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466822 = icmp eq i8 %loadBr_466822, 1
  br i1 %cmpBr_466822, label %block_.L_466842, label %block_466828

block_466828:                                     ; preds = %block_.L_466811
  %loadMem_466828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 1
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %PC.i154
  %3791 = add i64 %3790, 5
  store i64 %3791, i64* %PC.i154
  store i64 5, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_466828, %struct.Memory** %MEMORY
  %loadMem_46682d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 5
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 15
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %3800 to i64*
  %3801 = load i64, i64* %RBP.i153
  %3802 = sub i64 %3801, 76
  %3803 = load i64, i64* %PC.i151
  %3804 = add i64 %3803, 3
  store i64 %3804, i64* %PC.i151
  %3805 = inttoptr i64 %3802 to i32*
  %3806 = load i32, i32* %3805
  %3807 = zext i32 %3806 to i64
  store i64 %3807, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_46682d, %struct.Memory** %MEMORY
  %loadMem_466830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 5
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %ECX.i149 = bitcast %union.anon* %3813 to i32*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 15
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %RBP.i150
  %3818 = sub i64 %3817, 508
  %3819 = load i32, i32* %ECX.i149
  %3820 = zext i32 %3819 to i64
  %3821 = load i64, i64* %PC.i148
  %3822 = add i64 %3821, 6
  store i64 %3822, i64* %PC.i148
  %3823 = inttoptr i64 %3818 to i32*
  store i32 %3819, i32* %3823
  store %struct.Memory* %loadMem_466830, %struct.Memory** %MEMORY
  %loadMem_466836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 1
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 15
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %RAX.i146
  %3834 = load i64, i64* %RBP.i147
  %3835 = sub i64 %3834, 548
  %3836 = load i64, i64* %PC.i145
  %3837 = add i64 %3836, 6
  store i64 %3837, i64* %PC.i145
  %3838 = trunc i64 %3833 to i32
  %3839 = inttoptr i64 %3835 to i32*
  %3840 = load i32, i32* %3839
  %3841 = sub i32 %3838, %3840
  %3842 = zext i32 %3841 to i64
  store i64 %3842, i64* %RAX.i146, align 8
  %3843 = icmp ult i32 %3838, %3840
  %3844 = zext i1 %3843 to i8
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3844, i8* %3845, align 1
  %3846 = and i32 %3841, 255
  %3847 = call i32 @llvm.ctpop.i32(i32 %3846)
  %3848 = trunc i32 %3847 to i8
  %3849 = and i8 %3848, 1
  %3850 = xor i8 %3849, 1
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3850, i8* %3851, align 1
  %3852 = xor i32 %3840, %3838
  %3853 = xor i32 %3852, %3841
  %3854 = lshr i32 %3853, 4
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3856, i8* %3857, align 1
  %3858 = icmp eq i32 %3841, 0
  %3859 = zext i1 %3858 to i8
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3859, i8* %3860, align 1
  %3861 = lshr i32 %3841, 31
  %3862 = trunc i32 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3862, i8* %3863, align 1
  %3864 = lshr i32 %3838, 31
  %3865 = lshr i32 %3840, 31
  %3866 = xor i32 %3865, %3864
  %3867 = xor i32 %3861, %3864
  %3868 = add i32 %3867, %3866
  %3869 = icmp eq i32 %3868, 2
  %3870 = zext i1 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3870, i8* %3871, align 1
  store %struct.Memory* %loadMem_466836, %struct.Memory** %MEMORY
  %loadMem_46683c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3874 to i64*
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 1
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %3877 to i32*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 15
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %RBP.i144
  %3882 = sub i64 %3881, 512
  %3883 = load i32, i32* %EAX.i143
  %3884 = zext i32 %3883 to i64
  %3885 = load i64, i64* %PC.i142
  %3886 = add i64 %3885, 6
  store i64 %3886, i64* %PC.i142
  %3887 = inttoptr i64 %3882 to i32*
  store i32 %3883, i32* %3887
  store %struct.Memory* %loadMem_46683c, %struct.Memory** %MEMORY
  br label %block_.L_466842

block_.L_466842:                                  ; preds = %block_466828, %block_.L_466811
  %loadMem_466842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3890 to i64*
  %3891 = load i64, i64* %PC.i141
  %3892 = add i64 %3891, 5
  %3893 = load i64, i64* %PC.i141
  %3894 = add i64 %3893, 5
  store i64 %3894, i64* %PC.i141
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3892, i64* %3895, align 8
  store %struct.Memory* %loadMem_466842, %struct.Memory** %MEMORY
  br label %block_.L_466847

block_.L_466847:                                  ; preds = %block_.L_466842
  %loadMem_466847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %PC.i140
  %3900 = add i64 %3899, 5
  %3901 = load i64, i64* %PC.i140
  %3902 = add i64 %3901, 5
  store i64 %3902, i64* %PC.i140
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3900, i64* %3903, align 8
  store %struct.Memory* %loadMem_466847, %struct.Memory** %MEMORY
  br label %block_.L_46684c

block_.L_46684c:                                  ; preds = %block_.L_466847
  %loadMem_46684c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3906 to i64*
  %3907 = load i64, i64* %PC.i139
  %3908 = add i64 %3907, 62
  %3909 = load i64, i64* %PC.i139
  %3910 = add i64 %3909, 5
  store i64 %3910, i64* %PC.i139
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3908, i64* %3911, align 8
  store %struct.Memory* %loadMem_46684c, %struct.Memory** %MEMORY
  br label %block_.L_46688a

block_.L_466851:                                  ; preds = %block_466781
  %loadMem_466851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %3917 to i32*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 1
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %RAX.i138
  %3922 = load i32, i32* %EAX.i137
  %3923 = zext i32 %3922 to i64
  %3924 = load i64, i64* %PC.i136
  %3925 = add i64 %3924, 2
  store i64 %3925, i64* %PC.i136
  %3926 = xor i64 %3923, %3921
  %3927 = trunc i64 %3926 to i32
  %3928 = and i64 %3926, 4294967295
  store i64 %3928, i64* %RAX.i138, align 8
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3929, align 1
  %3930 = and i32 %3927, 255
  %3931 = call i32 @llvm.ctpop.i32(i32 %3930)
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = xor i8 %3933, 1
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3934, i8* %3935, align 1
  %3936 = icmp eq i32 %3927, 0
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3937, i8* %3938, align 1
  %3939 = lshr i32 %3927, 31
  %3940 = trunc i32 %3939 to i8
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3940, i8* %3941, align 1
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3942, align 1
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3943, align 1
  store %struct.Memory* %loadMem_466851, %struct.Memory** %MEMORY
  %loadMem_466853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 1
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %3949 to i32*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 9
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %3952 to i64*
  %3953 = load i32, i32* %EAX.i134
  %3954 = zext i32 %3953 to i64
  %3955 = load i64, i64* %PC.i133
  %3956 = add i64 %3955, 2
  store i64 %3956, i64* %PC.i133
  %3957 = and i64 %3954, 4294967295
  store i64 %3957, i64* %RSI.i135, align 8
  store %struct.Memory* %loadMem_466853, %struct.Memory** %MEMORY
  %loadMem_466855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 11
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RDI.i131 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 15
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %RBP.i132
  %3968 = sub i64 %3967, 48
  %3969 = load i64, i64* %PC.i130
  %3970 = add i64 %3969, 3
  store i64 %3970, i64* %PC.i130
  %3971 = inttoptr i64 %3968 to i32*
  %3972 = load i32, i32* %3971
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RDI.i131, align 8
  store %struct.Memory* %loadMem_466855, %struct.Memory** %MEMORY
  %loadMem_466858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 7
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 15
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RBP.i129
  %3984 = sub i64 %3983, 536
  %3985 = load i64, i64* %PC.i127
  %3986 = add i64 %3985, 6
  store i64 %3986, i64* %PC.i127
  %3987 = inttoptr i64 %3984 to i32*
  %3988 = load i32, i32* %3987
  %3989 = zext i32 %3988 to i64
  store i64 %3989, i64* %RDX.i128, align 8
  store %struct.Memory* %loadMem_466858, %struct.Memory** %MEMORY
  %loadMem_46685e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 5
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 15
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3998 to i64*
  %3999 = load i64, i64* %RBP.i126
  %4000 = sub i64 %3999, 540
  %4001 = load i64, i64* %PC.i124
  %4002 = add i64 %4001, 6
  store i64 %4002, i64* %PC.i124
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_46685e, %struct.Memory** %MEMORY
  %loadMem1_466864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4008 to i64*
  %4009 = load i64, i64* %PC.i123
  %4010 = add i64 %4009, -35716
  %4011 = load i64, i64* %PC.i123
  %4012 = add i64 %4011, 5
  %4013 = load i64, i64* %PC.i123
  %4014 = add i64 %4013, 5
  store i64 %4014, i64* %PC.i123
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4016 = load i64, i64* %4015, align 8
  %4017 = add i64 %4016, -8
  %4018 = inttoptr i64 %4017 to i64*
  store i64 %4012, i64* %4018
  store i64 %4017, i64* %4015, align 8
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4010, i64* %4019, align 8
  store %struct.Memory* %loadMem1_466864, %struct.Memory** %MEMORY
  %loadMem2_466864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466864 = load i64, i64* %3
  %call2_466864 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_466864, %struct.Memory* %loadMem2_466864)
  store %struct.Memory* %call2_466864, %struct.Memory** %MEMORY
  %loadMem_466869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 1
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %EAX.i122 = bitcast %union.anon* %4025 to i32*
  %4026 = load i32, i32* %EAX.i122
  %4027 = zext i32 %4026 to i64
  %4028 = load i64, i64* %PC.i121
  %4029 = add i64 %4028, 3
  store i64 %4029, i64* %PC.i121
  %4030 = sub i32 %4026, 5
  %4031 = icmp ult i32 %4026, 5
  %4032 = zext i1 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4032, i8* %4033, align 1
  %4034 = and i32 %4030, 255
  %4035 = call i32 @llvm.ctpop.i32(i32 %4034)
  %4036 = trunc i32 %4035 to i8
  %4037 = and i8 %4036, 1
  %4038 = xor i8 %4037, 1
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4038, i8* %4039, align 1
  %4040 = xor i64 5, %4027
  %4041 = trunc i64 %4040 to i32
  %4042 = xor i32 %4041, %4030
  %4043 = lshr i32 %4042, 4
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4045, i8* %4046, align 1
  %4047 = icmp eq i32 %4030, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1
  %4050 = lshr i32 %4030, 31
  %4051 = trunc i32 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i32 %4026, 31
  %4054 = xor i32 %4050, %4053
  %4055 = add i32 %4054, %4053
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4057, i8* %4058, align 1
  store %struct.Memory* %loadMem_466869, %struct.Memory** %MEMORY
  %loadMem_46686c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %PC.i120
  %4063 = add i64 %4062, 25
  %4064 = load i64, i64* %PC.i120
  %4065 = add i64 %4064, 6
  %4066 = load i64, i64* %PC.i120
  %4067 = add i64 %4066, 6
  store i64 %4067, i64* %PC.i120
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4069 = load i8, i8* %4068, align 1
  store i8 %4069, i8* %BRANCH_TAKEN, align 1
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4071 = icmp ne i8 %4069, 0
  %4072 = select i1 %4071, i64 %4063, i64 %4065
  store i64 %4072, i64* %4070, align 8
  store %struct.Memory* %loadMem_46686c, %struct.Memory** %MEMORY
  %loadBr_46686c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46686c = icmp eq i8 %loadBr_46686c, 1
  br i1 %cmpBr_46686c, label %block_.L_466885, label %block_466872

block_466872:                                     ; preds = %block_.L_466851
  %loadMem_466872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 1
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4078 to i64*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 15
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4081 to i64*
  %4082 = load i64, i64* %RBP.i119
  %4083 = sub i64 %4082, 76
  %4084 = load i64, i64* %PC.i117
  %4085 = add i64 %4084, 3
  store i64 %4085, i64* %PC.i117
  %4086 = inttoptr i64 %4083 to i32*
  %4087 = load i32, i32* %4086
  %4088 = zext i32 %4087 to i64
  store i64 %4088, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_466872, %struct.Memory** %MEMORY
  %loadMem_466875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 1
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %4094 to i32*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 15
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4097 to i64*
  %4098 = load i64, i64* %RBP.i116
  %4099 = sub i64 %4098, 508
  %4100 = load i32, i32* %EAX.i115
  %4101 = zext i32 %4100 to i64
  %4102 = load i64, i64* %PC.i114
  %4103 = add i64 %4102, 6
  store i64 %4103, i64* %PC.i114
  %4104 = inttoptr i64 %4099 to i32*
  store i32 %4100, i32* %4104
  store %struct.Memory* %loadMem_466875, %struct.Memory** %MEMORY
  %loadMem_46687b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 15
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %RBP.i113
  %4112 = sub i64 %4111, 512
  %4113 = load i64, i64* %PC.i112
  %4114 = add i64 %4113, 10
  store i64 %4114, i64* %PC.i112
  %4115 = inttoptr i64 %4112 to i32*
  store i32 1, i32* %4115
  store %struct.Memory* %loadMem_46687b, %struct.Memory** %MEMORY
  br label %block_.L_466885

block_.L_466885:                                  ; preds = %block_466872, %block_.L_466851
  %loadMem1_466885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4118 to i64*
  %4119 = load i64, i64* %PC.i111
  %4120 = add i64 %4119, -363301
  %4121 = load i64, i64* %PC.i111
  %4122 = add i64 %4121, 5
  %4123 = load i64, i64* %PC.i111
  %4124 = add i64 %4123, 5
  store i64 %4124, i64* %PC.i111
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4126 = load i64, i64* %4125, align 8
  %4127 = add i64 %4126, -8
  %4128 = inttoptr i64 %4127 to i64*
  store i64 %4122, i64* %4128
  store i64 %4127, i64* %4125, align 8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4120, i64* %4129, align 8
  store %struct.Memory* %loadMem1_466885, %struct.Memory** %MEMORY
  %loadMem2_466885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466885 = load i64, i64* %3
  %call2_466885 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_466885, %struct.Memory* %loadMem2_466885)
  store %struct.Memory* %call2_466885, %struct.Memory** %MEMORY
  br label %block_.L_46688a

block_.L_46688a:                                  ; preds = %block_.L_466885, %block_.L_46684c
  %loadMem_46688a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4132 to i64*
  %4133 = load i64, i64* %PC.i110
  %4134 = add i64 %4133, 5
  %4135 = load i64, i64* %PC.i110
  %4136 = add i64 %4135, 5
  store i64 %4136, i64* %PC.i110
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4134, i64* %4137, align 8
  store %struct.Memory* %loadMem_46688a, %struct.Memory** %MEMORY
  br label %block_.L_46688f

block_.L_46688f:                                  ; preds = %block_.L_46688a, %block_.L_4666cf
  %loadMem_46688f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 33
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %PC.i109
  %4142 = add i64 %4141, 5
  %4143 = load i64, i64* %PC.i109
  %4144 = add i64 %4143, 5
  store i64 %4144, i64* %PC.i109
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4142, i64* %4145, align 8
  store %struct.Memory* %loadMem_46688f, %struct.Memory** %MEMORY
  br label %block_.L_466894

block_.L_466894:                                  ; preds = %block_.L_46688f
  %loadMem_466894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 33
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 1
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 15
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %RBP.i108
  %4156 = sub i64 %4155, 516
  %4157 = load i64, i64* %PC.i106
  %4158 = add i64 %4157, 6
  store i64 %4158, i64* %PC.i106
  %4159 = inttoptr i64 %4156 to i32*
  %4160 = load i32, i32* %4159
  %4161 = zext i32 %4160 to i64
  store i64 %4161, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_466894, %struct.Memory** %MEMORY
  %loadMem_46689a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 33
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 1
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RAX.i105
  %4169 = load i64, i64* %PC.i104
  %4170 = add i64 %4169, 3
  store i64 %4170, i64* %PC.i104
  %4171 = trunc i64 %4168 to i32
  %4172 = add i32 1, %4171
  %4173 = zext i32 %4172 to i64
  store i64 %4173, i64* %RAX.i105, align 8
  %4174 = icmp ult i32 %4172, %4171
  %4175 = icmp ult i32 %4172, 1
  %4176 = or i1 %4174, %4175
  %4177 = zext i1 %4176 to i8
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4177, i8* %4178, align 1
  %4179 = and i32 %4172, 255
  %4180 = call i32 @llvm.ctpop.i32(i32 %4179)
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  %4183 = xor i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4183, i8* %4184, align 1
  %4185 = xor i64 1, %4168
  %4186 = trunc i64 %4185 to i32
  %4187 = xor i32 %4186, %4172
  %4188 = lshr i32 %4187, 4
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4190, i8* %4191, align 1
  %4192 = icmp eq i32 %4172, 0
  %4193 = zext i1 %4192 to i8
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4193, i8* %4194, align 1
  %4195 = lshr i32 %4172, 31
  %4196 = trunc i32 %4195 to i8
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4196, i8* %4197, align 1
  %4198 = lshr i32 %4171, 31
  %4199 = xor i32 %4195, %4198
  %4200 = add i32 %4199, %4195
  %4201 = icmp eq i32 %4200, 2
  %4202 = zext i1 %4201 to i8
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4202, i8* %4203, align 1
  store %struct.Memory* %loadMem_46689a, %struct.Memory** %MEMORY
  %loadMem_46689d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 1
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %4209 to i32*
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 15
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4212 to i64*
  %4213 = load i64, i64* %RBP.i103
  %4214 = sub i64 %4213, 516
  %4215 = load i32, i32* %EAX.i102
  %4216 = zext i32 %4215 to i64
  %4217 = load i64, i64* %PC.i101
  %4218 = add i64 %4217, 6
  store i64 %4218, i64* %PC.i101
  %4219 = inttoptr i64 %4214 to i32*
  store i32 %4215, i32* %4219
  store %struct.Memory* %loadMem_46689d, %struct.Memory** %MEMORY
  %loadMem_4668a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %PC.i100
  %4224 = add i64 %4223, -635
  %4225 = load i64, i64* %PC.i100
  %4226 = add i64 %4225, 5
  store i64 %4226, i64* %PC.i100
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4224, i64* %4227, align 8
  store %struct.Memory* %loadMem_4668a3, %struct.Memory** %MEMORY
  br label %block_.L_466628

block_.L_4668a8:                                  ; preds = %block_466658, %block_.L_466628
  %loadMem_4668a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 33
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 15
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %RBP.i99
  %4235 = sub i64 %4234, 512
  %4236 = load i64, i64* %PC.i98
  %4237 = add i64 %4236, 7
  store i64 %4237, i64* %PC.i98
  %4238 = inttoptr i64 %4235 to i32*
  %4239 = load i32, i32* %4238
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4240, align 1
  %4241 = and i32 %4239, 255
  %4242 = call i32 @llvm.ctpop.i32(i32 %4241)
  %4243 = trunc i32 %4242 to i8
  %4244 = and i8 %4243, 1
  %4245 = xor i8 %4244, 1
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4245, i8* %4246, align 1
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4247, align 1
  %4248 = icmp eq i32 %4239, 0
  %4249 = zext i1 %4248 to i8
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4249, i8* %4250, align 1
  %4251 = lshr i32 %4239, 31
  %4252 = trunc i32 %4251 to i8
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4252, i8* %4253, align 1
  %4254 = lshr i32 %4239, 31
  %4255 = xor i32 %4251, %4254
  %4256 = add i32 %4255, %4254
  %4257 = icmp eq i32 %4256, 2
  %4258 = zext i1 %4257 to i8
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4258, i8* %4259, align 1
  store %struct.Memory* %loadMem_4668a8, %struct.Memory** %MEMORY
  %loadMem_4668af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4262 to i64*
  %4263 = load i64, i64* %PC.i97
  %4264 = add i64 %4263, 170
  %4265 = load i64, i64* %PC.i97
  %4266 = add i64 %4265, 6
  %4267 = load i64, i64* %PC.i97
  %4268 = add i64 %4267, 6
  store i64 %4268, i64* %PC.i97
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4270 = load i8, i8* %4269, align 1
  store i8 %4270, i8* %BRANCH_TAKEN, align 1
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4272 = icmp ne i8 %4270, 0
  %4273 = select i1 %4272, i64 %4264, i64 %4266
  store i64 %4273, i64* %4271, align 8
  store %struct.Memory* %loadMem_4668af, %struct.Memory** %MEMORY
  %loadBr_4668af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4668af = icmp eq i8 %loadBr_4668af, 1
  br i1 %cmpBr_4668af, label %block_.L_466959, label %block_4668b5

block_4668b5:                                     ; preds = %block_.L_4668a8
  %loadMem_4668b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 33
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %PC.i96
  %4278 = add i64 %4277, 5
  %4279 = load i64, i64* %PC.i96
  %4280 = add i64 %4279, 5
  store i64 %4280, i64* %PC.i96
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4278, i64* %4281, align 8
  store %struct.Memory* %loadMem_4668b5, %struct.Memory** %MEMORY
  br label %block_.L_4668ba

block_.L_4668ba:                                  ; preds = %block_4668b5
  %loadMem_4668ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 33
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 15
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %RBP.i95
  %4289 = sub i64 %4288, 512
  %4290 = load i64, i64* %PC.i94
  %4291 = add i64 %4290, 7
  store i64 %4291, i64* %PC.i94
  %4292 = inttoptr i64 %4289 to i32*
  %4293 = load i32, i32* %4292
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4294, align 1
  %4295 = and i32 %4293, 255
  %4296 = call i32 @llvm.ctpop.i32(i32 %4295)
  %4297 = trunc i32 %4296 to i8
  %4298 = and i8 %4297, 1
  %4299 = xor i8 %4298, 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4299, i8* %4300, align 1
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4301, align 1
  %4302 = icmp eq i32 %4293, 0
  %4303 = zext i1 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4303, i8* %4304, align 1
  %4305 = lshr i32 %4293, 31
  %4306 = trunc i32 %4305 to i8
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4306, i8* %4307, align 1
  %4308 = lshr i32 %4293, 31
  %4309 = xor i32 %4305, %4308
  %4310 = add i32 %4309, %4308
  %4311 = icmp eq i32 %4310, 2
  %4312 = zext i1 %4311 to i8
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4312, i8* %4313, align 1
  store %struct.Memory* %loadMem_4668ba, %struct.Memory** %MEMORY
  %loadMem_4668c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4316 to i64*
  %4317 = load i64, i64* %PC.i93
  %4318 = add i64 %4317, 89
  %4319 = load i64, i64* %PC.i93
  %4320 = add i64 %4319, 6
  %4321 = load i64, i64* %PC.i93
  %4322 = add i64 %4321, 6
  store i64 %4322, i64* %PC.i93
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4324 = load i8, i8* %4323, align 1
  store i8 %4324, i8* %BRANCH_TAKEN, align 1
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4326 = icmp ne i8 %4324, 0
  %4327 = select i1 %4326, i64 %4318, i64 %4320
  store i64 %4327, i64* %4325, align 8
  store %struct.Memory* %loadMem_4668c1, %struct.Memory** %MEMORY
  %loadBr_4668c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4668c1 = icmp eq i8 %loadBr_4668c1, 1
  br i1 %cmpBr_4668c1, label %block_.L_46691a, label %block_4668c7

block_4668c7:                                     ; preds = %block_.L_4668ba
  %loadMem_4668c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 15
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %RBP.i92
  %4335 = sub i64 %4334, 56
  %4336 = load i64, i64* %PC.i91
  %4337 = add i64 %4336, 5
  store i64 %4337, i64* %PC.i91
  %4338 = inttoptr i64 %4335 to i64*
  %4339 = load i64, i64* %4338
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4340, align 1
  %4341 = trunc i64 %4339 to i32
  %4342 = and i32 %4341, 255
  %4343 = call i32 @llvm.ctpop.i32(i32 %4342)
  %4344 = trunc i32 %4343 to i8
  %4345 = and i8 %4344, 1
  %4346 = xor i8 %4345, 1
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4346, i8* %4347, align 1
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4348, align 1
  %4349 = icmp eq i64 %4339, 0
  %4350 = zext i1 %4349 to i8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4350, i8* %4351, align 1
  %4352 = lshr i64 %4339, 63
  %4353 = trunc i64 %4352 to i8
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4353, i8* %4354, align 1
  %4355 = lshr i64 %4339, 63
  %4356 = xor i64 %4352, %4355
  %4357 = add i64 %4356, %4355
  %4358 = icmp eq i64 %4357, 2
  %4359 = zext i1 %4358 to i8
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4359, i8* %4360, align 1
  store %struct.Memory* %loadMem_4668c7, %struct.Memory** %MEMORY
  %loadMem_4668cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4363 to i64*
  %4364 = load i64, i64* %PC.i90
  %4365 = add i64 %4364, 18
  %4366 = load i64, i64* %PC.i90
  %4367 = add i64 %4366, 6
  %4368 = load i64, i64* %PC.i90
  %4369 = add i64 %4368, 6
  store i64 %4369, i64* %PC.i90
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4371 = load i8, i8* %4370, align 1
  store i8 %4371, i8* %BRANCH_TAKEN, align 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4373 = icmp ne i8 %4371, 0
  %4374 = select i1 %4373, i64 %4365, i64 %4367
  store i64 %4374, i64* %4372, align 8
  store %struct.Memory* %loadMem_4668cc, %struct.Memory** %MEMORY
  %loadBr_4668cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4668cc = icmp eq i8 %loadBr_4668cc, 1
  br i1 %cmpBr_4668cc, label %block_.L_4668de, label %block_4668d2

block_4668d2:                                     ; preds = %block_4668c7
  %loadMem_4668d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 1
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 15
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RBP.i89
  %4385 = sub i64 %4384, 508
  %4386 = load i64, i64* %PC.i87
  %4387 = add i64 %4386, 6
  store i64 %4387, i64* %PC.i87
  %4388 = inttoptr i64 %4385 to i32*
  %4389 = load i32, i32* %4388
  %4390 = zext i32 %4389 to i64
  store i64 %4390, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_4668d2, %struct.Memory** %MEMORY
  %loadMem_4668d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 33
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 5
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4396 to i64*
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 15
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4399 to i64*
  %4400 = load i64, i64* %RBP.i86
  %4401 = sub i64 %4400, 56
  %4402 = load i64, i64* %PC.i84
  %4403 = add i64 %4402, 4
  store i64 %4403, i64* %PC.i84
  %4404 = inttoptr i64 %4401 to i64*
  %4405 = load i64, i64* %4404
  store i64 %4405, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_4668d8, %struct.Memory** %MEMORY
  %loadMem_4668dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 33
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 1
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %4411 to i32*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 5
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %4414 to i64*
  %4415 = load i64, i64* %RCX.i83
  %4416 = load i32, i32* %EAX.i82
  %4417 = zext i32 %4416 to i64
  %4418 = load i64, i64* %PC.i81
  %4419 = add i64 %4418, 2
  store i64 %4419, i64* %PC.i81
  %4420 = inttoptr i64 %4415 to i32*
  store i32 %4416, i32* %4420
  store %struct.Memory* %loadMem_4668dc, %struct.Memory** %MEMORY
  br label %block_.L_4668de

block_.L_4668de:                                  ; preds = %block_4668d2, %block_4668c7
  %loadMem_4668de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4423 to i64*
  %4424 = load i64, i64* %PC.i80
  %4425 = add i64 %4424, 9
  store i64 %4425, i64* %PC.i80
  %4426 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4427, align 1
  %4428 = trunc i64 %4426 to i32
  %4429 = and i32 %4428, 255
  %4430 = call i32 @llvm.ctpop.i32(i32 %4429)
  %4431 = trunc i32 %4430 to i8
  %4432 = and i8 %4431, 1
  %4433 = xor i8 %4432, 1
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4433, i8* %4434, align 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4435, align 1
  %4436 = icmp eq i64 %4426, 0
  %4437 = zext i1 %4436 to i8
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4437, i8* %4438, align 1
  %4439 = lshr i64 %4426, 63
  %4440 = trunc i64 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4440, i8* %4441, align 1
  %4442 = lshr i64 %4426, 63
  %4443 = xor i64 %4439, %4442
  %4444 = add i64 %4443, %4442
  %4445 = icmp eq i64 %4444, 2
  %4446 = zext i1 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4446, i8* %4447, align 1
  store %struct.Memory* %loadMem_4668de, %struct.Memory** %MEMORY
  %loadMem_4668e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %PC.i79
  %4452 = add i64 %4451, 46
  %4453 = load i64, i64* %PC.i79
  %4454 = add i64 %4453, 6
  %4455 = load i64, i64* %PC.i79
  %4456 = add i64 %4455, 6
  store i64 %4456, i64* %PC.i79
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4458 = load i8, i8* %4457, align 1
  store i8 %4458, i8* %BRANCH_TAKEN, align 1
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4460 = icmp ne i8 %4458, 0
  %4461 = select i1 %4460, i64 %4452, i64 %4454
  store i64 %4461, i64* %4459, align 8
  store %struct.Memory* %loadMem_4668e7, %struct.Memory** %MEMORY
  %loadBr_4668e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4668e7 = icmp eq i8 %loadBr_4668e7, 1
  br i1 %cmpBr_4668e7, label %block_.L_466915, label %block_4668ed

block_4668ed:                                     ; preds = %block_.L_4668de
  %loadMem_4668ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 17
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %PC.i78
  %4469 = add i64 %4468, 10
  store i64 %4469, i64* %PC.i78
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8.i, align 8
  store %struct.Memory* %loadMem_4668ed, %struct.Memory** %MEMORY
  %loadMem_4668f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 11
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 15
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RBP.i77
  %4480 = sub i64 %4479, 528
  %4481 = load i64, i64* %PC.i75
  %4482 = add i64 %4481, 7
  store i64 %4482, i64* %PC.i75
  %4483 = inttoptr i64 %4480 to i64*
  %4484 = load i64, i64* %4483
  store i64 %4484, i64* %RDI.i76, align 8
  store %struct.Memory* %loadMem_4668f7, %struct.Memory** %MEMORY
  %loadMem_4668fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 33
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 9
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RSI.i73 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 15
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %4493 to i64*
  %4494 = load i64, i64* %RBP.i74
  %4495 = sub i64 %4494, 532
  %4496 = load i64, i64* %PC.i72
  %4497 = add i64 %4496, 6
  store i64 %4497, i64* %PC.i72
  %4498 = inttoptr i64 %4495 to i32*
  %4499 = load i32, i32* %4498
  %4500 = zext i32 %4499 to i64
  store i64 %4500, i64* %RSI.i73, align 8
  store %struct.Memory* %loadMem_4668fe, %struct.Memory** %MEMORY
  %loadMem_466904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4503 to i64*
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 7
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 15
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %RBP.i71
  %4511 = sub i64 %4510, 508
  %4512 = load i64, i64* %PC.i69
  %4513 = add i64 %4512, 6
  store i64 %4513, i64* %PC.i69
  %4514 = inttoptr i64 %4511 to i32*
  %4515 = load i32, i32* %4514
  %4516 = zext i32 %4515 to i64
  store i64 %4516, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_466904, %struct.Memory** %MEMORY
  %loadMem_46690a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 5
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 15
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %RBP.i68
  %4527 = sub i64 %4526, 512
  %4528 = load i64, i64* %PC.i66
  %4529 = add i64 %4528, 6
  store i64 %4529, i64* %PC.i66
  %4530 = inttoptr i64 %4527 to i32*
  %4531 = load i32, i32* %4530
  %4532 = zext i32 %4531 to i64
  store i64 %4532, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_46690a, %struct.Memory** %MEMORY
  %loadMem1_466910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %PC.i65
  %4537 = add i64 %4536, -321872
  %4538 = load i64, i64* %PC.i65
  %4539 = add i64 %4538, 5
  %4540 = load i64, i64* %PC.i65
  %4541 = add i64 %4540, 5
  store i64 %4541, i64* %PC.i65
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4543 = load i64, i64* %4542, align 8
  %4544 = add i64 %4543, -8
  %4545 = inttoptr i64 %4544 to i64*
  store i64 %4539, i64* %4545
  store i64 %4544, i64* %4542, align 8
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4537, i64* %4546, align 8
  store %struct.Memory* %loadMem1_466910, %struct.Memory** %MEMORY
  %loadMem2_466910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466910 = load i64, i64* %3
  %call2_466910 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_466910, %struct.Memory* %loadMem2_466910)
  store %struct.Memory* %call2_466910, %struct.Memory** %MEMORY
  br label %block_.L_466915

block_.L_466915:                                  ; preds = %block_4668ed, %block_.L_4668de
  %loadMem_466915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 33
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %PC.i64
  %4551 = add i64 %4550, 54
  %4552 = load i64, i64* %PC.i64
  %4553 = add i64 %4552, 5
  store i64 %4553, i64* %PC.i64
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4551, i64* %4554, align 8
  store %struct.Memory* %loadMem_466915, %struct.Memory** %MEMORY
  br label %block_.L_46694b

block_.L_46691a:                                  ; preds = %block_.L_4668ba
  %loadMem_46691a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %PC.i63
  %4559 = add i64 %4558, 9
  store i64 %4559, i64* %PC.i63
  %4560 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4561, align 1
  %4562 = trunc i64 %4560 to i32
  %4563 = and i32 %4562, 255
  %4564 = call i32 @llvm.ctpop.i32(i32 %4563)
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  %4567 = xor i8 %4566, 1
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4567, i8* %4568, align 1
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4569, align 1
  %4570 = icmp eq i64 %4560, 0
  %4571 = zext i1 %4570 to i8
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4571, i8* %4572, align 1
  %4573 = lshr i64 %4560, 63
  %4574 = trunc i64 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4574, i8* %4575, align 1
  %4576 = lshr i64 %4560, 63
  %4577 = xor i64 %4573, %4576
  %4578 = add i64 %4577, %4576
  %4579 = icmp eq i64 %4578, 2
  %4580 = zext i1 %4579 to i8
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4580, i8* %4581, align 1
  store %struct.Memory* %loadMem_46691a, %struct.Memory** %MEMORY
  %loadMem_466923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 33
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4584 to i64*
  %4585 = load i64, i64* %PC.i62
  %4586 = add i64 %4585, 35
  %4587 = load i64, i64* %PC.i62
  %4588 = add i64 %4587, 6
  %4589 = load i64, i64* %PC.i62
  %4590 = add i64 %4589, 6
  store i64 %4590, i64* %PC.i62
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4592 = load i8, i8* %4591, align 1
  store i8 %4592, i8* %BRANCH_TAKEN, align 1
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4594 = icmp ne i8 %4592, 0
  %4595 = select i1 %4594, i64 %4586, i64 %4588
  store i64 %4595, i64* %4593, align 8
  store %struct.Memory* %loadMem_466923, %struct.Memory** %MEMORY
  %loadBr_466923 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466923 = icmp eq i8 %loadBr_466923, 1
  br i1 %cmpBr_466923, label %block_.L_466946, label %block_466929

block_466929:                                     ; preds = %block_.L_46691a
  %loadMem_466929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 33
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4598 to i64*
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 1
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %EAX.i60 = bitcast %union.anon* %4601 to i32*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 1
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %4604 to i64*
  %4605 = load i64, i64* %RAX.i61
  %4606 = load i32, i32* %EAX.i60
  %4607 = zext i32 %4606 to i64
  %4608 = load i64, i64* %PC.i59
  %4609 = add i64 %4608, 2
  store i64 %4609, i64* %PC.i59
  %4610 = xor i64 %4607, %4605
  %4611 = trunc i64 %4610 to i32
  %4612 = and i64 %4610, 4294967295
  store i64 %4612, i64* %RAX.i61, align 8
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4613, align 1
  %4614 = and i32 %4611, 255
  %4615 = call i32 @llvm.ctpop.i32(i32 %4614)
  %4616 = trunc i32 %4615 to i8
  %4617 = and i8 %4616, 1
  %4618 = xor i8 %4617, 1
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4618, i8* %4619, align 1
  %4620 = icmp eq i32 %4611, 0
  %4621 = zext i1 %4620 to i8
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4621, i8* %4622, align 1
  %4623 = lshr i32 %4611, 31
  %4624 = trunc i32 %4623 to i8
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4624, i8* %4625, align 1
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4626, align 1
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4627, align 1
  store %struct.Memory* %loadMem_466929, %struct.Memory** %MEMORY
  %loadMem_46692b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 5
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %ECX.i57 = bitcast %union.anon* %4633 to i32*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 5
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %RCX.i58
  %4638 = load i32, i32* %ECX.i57
  %4639 = zext i32 %4638 to i64
  %4640 = load i64, i64* %PC.i56
  %4641 = add i64 %4640, 2
  store i64 %4641, i64* %PC.i56
  %4642 = xor i64 %4639, %4637
  %4643 = trunc i64 %4642 to i32
  %4644 = and i64 %4642, 4294967295
  store i64 %4644, i64* %RCX.i58, align 8
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4645, align 1
  %4646 = and i32 %4643, 255
  %4647 = call i32 @llvm.ctpop.i32(i32 %4646)
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  %4650 = xor i8 %4649, 1
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4650, i8* %4651, align 1
  %4652 = icmp eq i32 %4643, 0
  %4653 = zext i1 %4652 to i8
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4653, i8* %4654, align 1
  %4655 = lshr i32 %4643, 31
  %4656 = trunc i32 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4656, i8* %4657, align 1
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4658, align 1
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4659, align 1
  store %struct.Memory* %loadMem_46692b, %struct.Memory** %MEMORY
  %loadMem_46692d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 5
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %ECX.i54 = bitcast %union.anon* %4665 to i32*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 17
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %R8D.i55 = bitcast %union.anon* %4668 to i32*
  %4669 = bitcast i32* %R8D.i55 to i64*
  %4670 = load i32, i32* %ECX.i54
  %4671 = zext i32 %4670 to i64
  %4672 = load i64, i64* %PC.i53
  %4673 = add i64 %4672, 3
  store i64 %4673, i64* %PC.i53
  %4674 = and i64 %4671, 4294967295
  store i64 %4674, i64* %4669, align 8
  store %struct.Memory* %loadMem_46692d, %struct.Memory** %MEMORY
  %loadMem_466930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 11
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RDI.i51 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 15
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RBP.i52
  %4685 = sub i64 %4684, 528
  %4686 = load i64, i64* %PC.i50
  %4687 = add i64 %4686, 7
  store i64 %4687, i64* %PC.i50
  %4688 = inttoptr i64 %4685 to i64*
  %4689 = load i64, i64* %4688
  store i64 %4689, i64* %RDI.i51, align 8
  store %struct.Memory* %loadMem_466930, %struct.Memory** %MEMORY
  %loadMem_466937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 9
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RSI.i48 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 15
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %RBP.i49
  %4700 = sub i64 %4699, 532
  %4701 = load i64, i64* %PC.i47
  %4702 = add i64 %4701, 6
  store i64 %4702, i64* %PC.i47
  %4703 = inttoptr i64 %4700 to i32*
  %4704 = load i32, i32* %4703
  %4705 = zext i32 %4704 to i64
  store i64 %4705, i64* %RSI.i48, align 8
  store %struct.Memory* %loadMem_466937, %struct.Memory** %MEMORY
  %loadMem_46693d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 1
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %4711 to i32*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 7
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %4714 to i64*
  %4715 = load i32, i32* %EAX.i45
  %4716 = zext i32 %4715 to i64
  %4717 = load i64, i64* %PC.i44
  %4718 = add i64 %4717, 2
  store i64 %4718, i64* %PC.i44
  %4719 = and i64 %4716, 4294967295
  store i64 %4719, i64* %RDX.i46, align 8
  store %struct.Memory* %loadMem_46693d, %struct.Memory** %MEMORY
  %loadMem_46693f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 33
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 1
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %EAX.i42 = bitcast %union.anon* %4725 to i32*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 5
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %4728 to i64*
  %4729 = load i32, i32* %EAX.i42
  %4730 = zext i32 %4729 to i64
  %4731 = load i64, i64* %PC.i41
  %4732 = add i64 %4731, 2
  store i64 %4732, i64* %PC.i41
  %4733 = and i64 %4730, 4294967295
  store i64 %4733, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_46693f, %struct.Memory** %MEMORY
  %loadMem1_466941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 33
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4736 to i64*
  %4737 = load i64, i64* %PC.i40
  %4738 = add i64 %4737, -321921
  %4739 = load i64, i64* %PC.i40
  %4740 = add i64 %4739, 5
  %4741 = load i64, i64* %PC.i40
  %4742 = add i64 %4741, 5
  store i64 %4742, i64* %PC.i40
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4744 = load i64, i64* %4743, align 8
  %4745 = add i64 %4744, -8
  %4746 = inttoptr i64 %4745 to i64*
  store i64 %4740, i64* %4746
  store i64 %4745, i64* %4743, align 8
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4738, i64* %4747, align 8
  store %struct.Memory* %loadMem1_466941, %struct.Memory** %MEMORY
  %loadMem2_466941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466941 = load i64, i64* %3
  %call2_466941 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_466941, %struct.Memory* %loadMem2_466941)
  store %struct.Memory* %call2_466941, %struct.Memory** %MEMORY
  br label %block_.L_466946

block_.L_466946:                                  ; preds = %block_466929, %block_.L_46691a
  %loadMem_466946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 33
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %PC.i39
  %4752 = add i64 %4751, 5
  %4753 = load i64, i64* %PC.i39
  %4754 = add i64 %4753, 5
  store i64 %4754, i64* %PC.i39
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4752, i64* %4755, align 8
  store %struct.Memory* %loadMem_466946, %struct.Memory** %MEMORY
  br label %block_.L_46694b

block_.L_46694b:                                  ; preds = %block_.L_466946, %block_.L_466915
  %loadMem_46694b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 33
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 1
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4761 to i64*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 15
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %RBP.i38
  %4766 = sub i64 %4765, 512
  %4767 = load i64, i64* %PC.i36
  %4768 = add i64 %4767, 6
  store i64 %4768, i64* %PC.i36
  %4769 = inttoptr i64 %4766 to i32*
  %4770 = load i32, i32* %4769
  %4771 = zext i32 %4770 to i64
  store i64 %4771, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_46694b, %struct.Memory** %MEMORY
  %loadMem_466951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 1
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %4777 to i32*
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 15
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4780 to i64*
  %4781 = load i64, i64* %RBP.i35
  %4782 = sub i64 %4781, 44
  %4783 = load i32, i32* %EAX.i34
  %4784 = zext i32 %4783 to i64
  %4785 = load i64, i64* %PC.i33
  %4786 = add i64 %4785, 3
  store i64 %4786, i64* %PC.i33
  %4787 = inttoptr i64 %4782 to i32*
  store i32 %4783, i32* %4787
  store %struct.Memory* %loadMem_466951, %struct.Memory** %MEMORY
  %loadMem_466954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %PC.i32
  %4792 = add i64 %4791, 61
  %4793 = load i64, i64* %PC.i32
  %4794 = add i64 %4793, 5
  store i64 %4794, i64* %PC.i32
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4792, i64* %4795, align 8
  store %struct.Memory* %loadMem_466954, %struct.Memory** %MEMORY
  br label %block_.L_466991

block_.L_466959:                                  ; preds = %block_.L_4668a8
  %loadMem_466959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 33
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4798 to i64*
  %4799 = load i64, i64* %PC.i31
  %4800 = add i64 %4799, 5
  %4801 = load i64, i64* %PC.i31
  %4802 = add i64 %4801, 5
  store i64 %4802, i64* %PC.i31
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4800, i64* %4803, align 8
  store %struct.Memory* %loadMem_466959, %struct.Memory** %MEMORY
  br label %block_.L_46695e

block_.L_46695e:                                  ; preds = %block_.L_466959
  %loadMem_46695e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 33
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4806 to i64*
  %4807 = load i64, i64* %PC.i30
  %4808 = add i64 %4807, 9
  store i64 %4808, i64* %PC.i30
  %4809 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4810, align 1
  %4811 = trunc i64 %4809 to i32
  %4812 = and i32 %4811, 255
  %4813 = call i32 @llvm.ctpop.i32(i32 %4812)
  %4814 = trunc i32 %4813 to i8
  %4815 = and i8 %4814, 1
  %4816 = xor i8 %4815, 1
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4816, i8* %4817, align 1
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4818, align 1
  %4819 = icmp eq i64 %4809, 0
  %4820 = zext i1 %4819 to i8
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4820, i8* %4821, align 1
  %4822 = lshr i64 %4809, 63
  %4823 = trunc i64 %4822 to i8
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4823, i8* %4824, align 1
  %4825 = lshr i64 %4809, 63
  %4826 = xor i64 %4822, %4825
  %4827 = add i64 %4826, %4825
  %4828 = icmp eq i64 %4827, 2
  %4829 = zext i1 %4828 to i8
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4829, i8* %4830, align 1
  store %struct.Memory* %loadMem_46695e, %struct.Memory** %MEMORY
  %loadMem_466967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 33
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4833 to i64*
  %4834 = load i64, i64* %PC.i29
  %4835 = add i64 %4834, 35
  %4836 = load i64, i64* %PC.i29
  %4837 = add i64 %4836, 6
  %4838 = load i64, i64* %PC.i29
  %4839 = add i64 %4838, 6
  store i64 %4839, i64* %PC.i29
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4841 = load i8, i8* %4840, align 1
  store i8 %4841, i8* %BRANCH_TAKEN, align 1
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4843 = icmp ne i8 %4841, 0
  %4844 = select i1 %4843, i64 %4835, i64 %4837
  store i64 %4844, i64* %4842, align 8
  store %struct.Memory* %loadMem_466967, %struct.Memory** %MEMORY
  %loadBr_466967 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466967 = icmp eq i8 %loadBr_466967, 1
  br i1 %cmpBr_466967, label %block_.L_46698a, label %block_46696d

block_46696d:                                     ; preds = %block_.L_46695e
  %loadMem_46696d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 1
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %4850 to i32*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 1
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %4853 to i64*
  %4854 = load i64, i64* %RAX.i28
  %4855 = load i32, i32* %EAX.i27
  %4856 = zext i32 %4855 to i64
  %4857 = load i64, i64* %PC.i26
  %4858 = add i64 %4857, 2
  store i64 %4858, i64* %PC.i26
  %4859 = xor i64 %4856, %4854
  %4860 = trunc i64 %4859 to i32
  %4861 = and i64 %4859, 4294967295
  store i64 %4861, i64* %RAX.i28, align 8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4862, align 1
  %4863 = and i32 %4860, 255
  %4864 = call i32 @llvm.ctpop.i32(i32 %4863)
  %4865 = trunc i32 %4864 to i8
  %4866 = and i8 %4865, 1
  %4867 = xor i8 %4866, 1
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4867, i8* %4868, align 1
  %4869 = icmp eq i32 %4860, 0
  %4870 = zext i1 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4870, i8* %4871, align 1
  %4872 = lshr i32 %4860, 31
  %4873 = trunc i32 %4872 to i8
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4873, i8* %4874, align 1
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4875, align 1
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4876, align 1
  store %struct.Memory* %loadMem_46696d, %struct.Memory** %MEMORY
  %loadMem_46696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 5
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %ECX.i24 = bitcast %union.anon* %4882 to i32*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 5
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %RCX.i25
  %4887 = load i32, i32* %ECX.i24
  %4888 = zext i32 %4887 to i64
  %4889 = load i64, i64* %PC.i23
  %4890 = add i64 %4889, 2
  store i64 %4890, i64* %PC.i23
  %4891 = xor i64 %4888, %4886
  %4892 = trunc i64 %4891 to i32
  %4893 = and i64 %4891, 4294967295
  store i64 %4893, i64* %RCX.i25, align 8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4894, align 1
  %4895 = and i32 %4892, 255
  %4896 = call i32 @llvm.ctpop.i32(i32 %4895)
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = xor i8 %4898, 1
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4899, i8* %4900, align 1
  %4901 = icmp eq i32 %4892, 0
  %4902 = zext i1 %4901 to i8
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4902, i8* %4903, align 1
  %4904 = lshr i32 %4892, 31
  %4905 = trunc i32 %4904 to i8
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4905, i8* %4906, align 1
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4907, align 1
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4908, align 1
  store %struct.Memory* %loadMem_46696f, %struct.Memory** %MEMORY
  %loadMem_466971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 33
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 5
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4914 to i32*
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 17
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4917 to i32*
  %4918 = bitcast i32* %R8D.i to i64*
  %4919 = load i32, i32* %ECX.i
  %4920 = zext i32 %4919 to i64
  %4921 = load i64, i64* %PC.i22
  %4922 = add i64 %4921, 3
  store i64 %4922, i64* %PC.i22
  %4923 = and i64 %4920, 4294967295
  store i64 %4923, i64* %4918, align 8
  store %struct.Memory* %loadMem_466971, %struct.Memory** %MEMORY
  %loadMem_466974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 33
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4926 to i64*
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 11
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 15
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4932 to i64*
  %4933 = load i64, i64* %RBP.i21
  %4934 = sub i64 %4933, 528
  %4935 = load i64, i64* %PC.i20
  %4936 = add i64 %4935, 7
  store i64 %4936, i64* %PC.i20
  %4937 = inttoptr i64 %4934 to i64*
  %4938 = load i64, i64* %4937
  store i64 %4938, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_466974, %struct.Memory** %MEMORY
  %loadMem_46697b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 9
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 15
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %RBP.i19
  %4949 = sub i64 %4948, 532
  %4950 = load i64, i64* %PC.i18
  %4951 = add i64 %4950, 6
  store i64 %4951, i64* %PC.i18
  %4952 = inttoptr i64 %4949 to i32*
  %4953 = load i32, i32* %4952
  %4954 = zext i32 %4953 to i64
  store i64 %4954, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_46697b, %struct.Memory** %MEMORY
  %loadMem_466981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 1
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %4960 to i32*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 7
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4963 to i64*
  %4964 = load i32, i32* %EAX.i17
  %4965 = zext i32 %4964 to i64
  %4966 = load i64, i64* %PC.i16
  %4967 = add i64 %4966, 2
  store i64 %4967, i64* %PC.i16
  %4968 = and i64 %4965, 4294967295
  store i64 %4968, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_466981, %struct.Memory** %MEMORY
  %loadMem_466983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 1
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4974 to i32*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 5
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4977 to i64*
  %4978 = load i32, i32* %EAX.i
  %4979 = zext i32 %4978 to i64
  %4980 = load i64, i64* %PC.i15
  %4981 = add i64 %4980, 2
  store i64 %4981, i64* %PC.i15
  %4982 = and i64 %4979, 4294967295
  store i64 %4982, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_466983, %struct.Memory** %MEMORY
  %loadMem1_466985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 33
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4985 to i64*
  %4986 = load i64, i64* %PC.i14
  %4987 = add i64 %4986, -321989
  %4988 = load i64, i64* %PC.i14
  %4989 = add i64 %4988, 5
  %4990 = load i64, i64* %PC.i14
  %4991 = add i64 %4990, 5
  store i64 %4991, i64* %PC.i14
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4993 = load i64, i64* %4992, align 8
  %4994 = add i64 %4993, -8
  %4995 = inttoptr i64 %4994 to i64*
  store i64 %4989, i64* %4995
  store i64 %4994, i64* %4992, align 8
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4987, i64* %4996, align 8
  store %struct.Memory* %loadMem1_466985, %struct.Memory** %MEMORY
  %loadMem2_466985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466985 = load i64, i64* %3
  %call2_466985 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_466985, %struct.Memory* %loadMem2_466985)
  store %struct.Memory* %call2_466985, %struct.Memory** %MEMORY
  br label %block_.L_46698a

block_.L_46698a:                                  ; preds = %block_46696d, %block_.L_46695e
  %loadMem_46698a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i13
  %5004 = sub i64 %5003, 44
  %5005 = load i64, i64* %PC.i12
  %5006 = add i64 %5005, 7
  store i64 %5006, i64* %PC.i12
  %5007 = inttoptr i64 %5004 to i32*
  store i32 0, i32* %5007
  store %struct.Memory* %loadMem_46698a, %struct.Memory** %MEMORY
  br label %block_.L_466991

block_.L_466991:                                  ; preds = %block_.L_46698a, %block_.L_46694b, %block_.L_466805
  %loadMem_466991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 1
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 15
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5016 to i64*
  %5017 = load i64, i64* %RBP.i11
  %5018 = sub i64 %5017, 44
  %5019 = load i64, i64* %PC.i10
  %5020 = add i64 %5019, 3
  store i64 %5020, i64* %PC.i10
  %5021 = inttoptr i64 %5018 to i32*
  %5022 = load i32, i32* %5021
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_466991, %struct.Memory** %MEMORY
  %loadMem_466994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 13
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5029 to i64*
  %5030 = load i64, i64* %RSP.i
  %5031 = load i64, i64* %PC.i9
  %5032 = add i64 %5031, 7
  store i64 %5032, i64* %PC.i9
  %5033 = add i64 616, %5030
  store i64 %5033, i64* %RSP.i, align 8
  %5034 = icmp ult i64 %5033, %5030
  %5035 = icmp ult i64 %5033, 616
  %5036 = or i1 %5034, %5035
  %5037 = zext i1 %5036 to i8
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5037, i8* %5038, align 1
  %5039 = trunc i64 %5033 to i32
  %5040 = and i32 %5039, 255
  %5041 = call i32 @llvm.ctpop.i32(i32 %5040)
  %5042 = trunc i32 %5041 to i8
  %5043 = and i8 %5042, 1
  %5044 = xor i8 %5043, 1
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5044, i8* %5045, align 1
  %5046 = xor i64 616, %5030
  %5047 = xor i64 %5046, %5033
  %5048 = lshr i64 %5047, 4
  %5049 = trunc i64 %5048 to i8
  %5050 = and i8 %5049, 1
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5050, i8* %5051, align 1
  %5052 = icmp eq i64 %5033, 0
  %5053 = zext i1 %5052 to i8
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5053, i8* %5054, align 1
  %5055 = lshr i64 %5033, 63
  %5056 = trunc i64 %5055 to i8
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5056, i8* %5057, align 1
  %5058 = lshr i64 %5030, 63
  %5059 = xor i64 %5055, %5058
  %5060 = add i64 %5059, %5055
  %5061 = icmp eq i64 %5060, 2
  %5062 = zext i1 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5062, i8* %5063, align 1
  store %struct.Memory* %loadMem_466994, %struct.Memory** %MEMORY
  %loadMem_46699b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 3
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %PC.i8
  %5071 = add i64 %5070, 1
  store i64 %5071, i64* %PC.i8
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5073 = load i64, i64* %5072, align 8
  %5074 = add i64 %5073, 8
  %5075 = inttoptr i64 %5073 to i64*
  %5076 = load i64, i64* %5075
  store i64 %5076, i64* %RBX.i, align 8
  store i64 %5074, i64* %5072, align 8
  store %struct.Memory* %loadMem_46699b, %struct.Memory** %MEMORY
  %loadMem_46699c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 25
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %R12.i = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %PC.i7
  %5084 = add i64 %5083, 2
  store i64 %5084, i64* %PC.i7
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5086 = load i64, i64* %5085, align 8
  %5087 = add i64 %5086, 8
  %5088 = inttoptr i64 %5086 to i64*
  %5089 = load i64, i64* %5088
  store i64 %5089, i64* %R12.i, align 8
  store i64 %5087, i64* %5085, align 8
  store %struct.Memory* %loadMem_46699c, %struct.Memory** %MEMORY
  %loadMem_46699e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 33
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 27
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %R13.i = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %PC.i6
  %5097 = add i64 %5096, 2
  store i64 %5097, i64* %PC.i6
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5099 = load i64, i64* %5098, align 8
  %5100 = add i64 %5099, 8
  %5101 = inttoptr i64 %5099 to i64*
  %5102 = load i64, i64* %5101
  store i64 %5102, i64* %R13.i, align 8
  store i64 %5100, i64* %5098, align 8
  store %struct.Memory* %loadMem_46699e, %struct.Memory** %MEMORY
  %loadMem_4669a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 29
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %R14.i = bitcast %union.anon* %5108 to i64*
  %5109 = load i64, i64* %PC.i5
  %5110 = add i64 %5109, 2
  store i64 %5110, i64* %PC.i5
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5112 = load i64, i64* %5111, align 8
  %5113 = add i64 %5112, 8
  %5114 = inttoptr i64 %5112 to i64*
  %5115 = load i64, i64* %5114
  store i64 %5115, i64* %R14.i, align 8
  store i64 %5113, i64* %5111, align 8
  store %struct.Memory* %loadMem_4669a0, %struct.Memory** %MEMORY
  %loadMem_4669a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 33
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 31
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %R15.i = bitcast %union.anon* %5121 to i64*
  %5122 = load i64, i64* %PC.i4
  %5123 = add i64 %5122, 2
  store i64 %5123, i64* %PC.i4
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5125 = load i64, i64* %5124, align 8
  %5126 = add i64 %5125, 8
  %5127 = inttoptr i64 %5125 to i64*
  %5128 = load i64, i64* %5127
  store i64 %5128, i64* %R15.i, align 8
  store i64 %5126, i64* %5124, align 8
  store %struct.Memory* %loadMem_4669a2, %struct.Memory** %MEMORY
  %loadMem_4669a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 15
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5134 to i64*
  %5135 = load i64, i64* %PC.i2
  %5136 = add i64 %5135, 1
  store i64 %5136, i64* %PC.i2
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5138 = load i64, i64* %5137, align 8
  %5139 = add i64 %5138, 8
  %5140 = inttoptr i64 %5138 to i64*
  %5141 = load i64, i64* %5140
  store i64 %5141, i64* %RBP.i3, align 8
  store i64 %5139, i64* %5137, align 8
  store %struct.Memory* %loadMem_4669a4, %struct.Memory** %MEMORY
  %loadMem_4669a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 33
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %PC.i1
  %5146 = add i64 %5145, 1
  store i64 %5146, i64* %PC.i1
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5149 = load i64, i64* %5148, align 8
  %5150 = inttoptr i64 %5149 to i64*
  %5151 = load i64, i64* %5150
  store i64 %5151, i64* %5147, align 8
  %5152 = add i64 %5149, 8
  store i64 %5152, i64* %5148, align 8
  store %struct.Memory* %loadMem_4669a5, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4669a5
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_subq__0x268___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 616
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 616
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
  %23 = xor i64 616, %9
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

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a749___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a749_type* @G__0x57a749 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 508
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 512
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x210__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__ecx__MINUS0x214__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 532
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %17, %19
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %19, %17
  %32 = xor i32 %31, %20
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %20, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %17, 31
  %44 = lshr i32 %19, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_466464(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_466469(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_466491(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1611, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fbff_type* @G__0x57fbff to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4664a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4664cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1612, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fc6a___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fc6a_type* @G__0x57fc6a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.findlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4664f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_466563(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1615, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fce9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fce9_type* @G__0x57fce9 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 552
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

define %struct.Memory* @routine_movq__rdx__MINUS0x230__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 560
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

define %struct.Memory* @routine_movl_MINUS0x228__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 552
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x234__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
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

define %struct.Memory* @routine_movq_MINUS0x230__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x238__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 568
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

define %struct.Memory* @routine_movl_MINUS0x234__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x238__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 568
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x204__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 516
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x204__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 80
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

define %struct.Memory* @routine_jge_.L_4665bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x204__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1f8__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -504
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x130__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -304
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
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

define %struct.Memory* @routine_movl__eax__MINUS0x204__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46656d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x1f8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.break_chain2_efficient_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*)
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

define %struct.Memory* @routine_jg_.L_466602(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.break_chain2_defense_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x210__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.order_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 104
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

define %struct.Memory* @routine_jge_.L_4668a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*)
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

define %struct.Memory* @routine_jl_.L_46665d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x204__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 516
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

define %struct.Memory* @routine_jle_.L_46665d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4668a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x204__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f8__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -504
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
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

define %struct.Memory* @routine_movl__r9d__MINUS0x23c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 572
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x240__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 576
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x244__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 580
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 584
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x24c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 588
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x24d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 589
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4666cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x200__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 512
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

define %struct.Memory* @routine_sete__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0x24d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 589
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x24d__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 589
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fc7d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fc7d_type* @G__0x57fc7d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x21c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 %15, i8* %AL, align 1
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

define %struct.Memory* @routine_movzbl__al___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R8D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R8D to i64*
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = and i64 %15, 255
  store i64 %18, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x240__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x258__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x244__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 580
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x260__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x248__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x268__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24c__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x26c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 620
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x23c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 572
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x268__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R14
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x260__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x258__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x26c__rbp____r13d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R13D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %R13D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_46688f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x220__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 544
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

define %struct.Memory* @routine_jne_.L_466851(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x218__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x21c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.do_attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.popgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 548
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

define %struct.Memory* @routine_jne_.L_466811(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4667d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_466805(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x5___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x210__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x214__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_466991(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x224__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 548
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %17, %19
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %19, %17
  %32 = xor i32 %31, %20
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %20, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %17, 31
  %44 = lshr i32 %19, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x200__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 512
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

define %struct.Memory* @routine_jle_.L_466842(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 512
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_466847(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46684c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46688a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 5
  %14 = icmp ult i32 %9, 5
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
  %23 = xor i64 5, %10
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

define %struct.Memory* @routine_je_.L_466885(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x200__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 512
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46688f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_466894(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_466628(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_466959(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4668ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46691a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4668de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_466915(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x200__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46694b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_466946(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
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

define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
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

define %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_46695e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46698a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x268___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 616, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 616
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
  %25 = xor i64 616, %9
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R12, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R13, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R14, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R15, align 8
  store i64 %13, i64* %11, align 8
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
